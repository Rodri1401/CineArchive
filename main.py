import mysql.connector
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
import re

# Set up the connection parameters
host = 'localhost'
database = 'CineArchive'
user = 'root'
password = 'root'

# Connect to the database
conn = mysql.connector.connect(
    host=host,
    database=database,
    user=user,
    password=password
)

if conn.is_connected():
    print('Connected to MySQL database')

# Create a cursor object to interact with the database
cursor = conn.cursor()

# Execute a SQL query to retrieve MovieTheater records
query = 'SELECT MovieTheater.MovieTheaterID, MovieTheater.Name, Franchise.FranchiseName AS Replaced_FranchiseName FROM MovieTheater LEFT JOIN Franchise ON MovieTheater.FranchiseID = Franchise.FranchiseID'
cursor.execute(query)

# Fetch all rows from the query result
rows = cursor.fetchall()

# Initialize the Selenium webdriver
driver = webdriver.Chrome("C:/Users/rodja/Desktop")  # Change to the appropriate driver for your browser

# Iterate over the rows and process each one
for row in rows:
    theater_id = row[0]
    name = row[1]
    Replaced_FranchiseName = row[2]
    search_query = f'{Replaced_FranchiseName} {name} Dirección'

    # Search on Google
    driver.get('https://www.google.com')
    search_box = driver.find_element(By.NAME, 'q')
    search_box.send_keys(search_query)
    search_box.send_keys(Keys.RETURN)

    # Retrieve and process the search results
    main_result = driver.find_element(By.CSS_SELECTOR, '#main .g')
    result_text = main_result.text

    # Extract the address and ZIP code
    address = result_text.split('\n')[0]
    zip_code = re.findall(r'\b\d{5}\b', result_text)

    # Consume any unread results from the previous query
    while cursor.nextset():
        pass

    # Update the MovieTheater table with address and ZIP code if found
    if zip_code:
        zip_code = zip_code[0]
        update_query = 'UPDATE MovieTheater SET Location = %s, ZIP = %s WHERE MovieTheaterID = %s'
        update_values = (address, zip_code, theater_id)
        cursor.execute(update_query, update_values)
        conn.commit()

    print(f"{Replaced_FranchiseName} {name}")
    print(f"Dirección: {address}")
    if zip_code:
        print(f"Código Postal: {zip_code}")
    print()

# Close the Selenium webdriver and the cursor/connection
driver.quit()
cursor.close()
conn.close()
