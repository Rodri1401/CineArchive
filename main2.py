import tkinter as tk
import mysql.connector


def open_file():
    print("Open file")


def save_file():
    print("Save file")


def exit_app():
    root.destroy()


def ask_cinema_preference():
    preference = tk.StringVar()

    def set_preference(value):
        preference.set(value)
        print("Preferencia de cadenas:", value)
        save_preference(value)
        question_window.destroy()  # Close the question window
        cinema_pref_button.configure(state=tk.DISABLED)  # Disable the cinema preference button
        ask_screen_type(preference.get())  # Pass the preference to ask_screen_type

    question_window = tk.Toplevel(root)
    question_window.title("Preferencia de cadenas")

    question_label = tk.Label(question_window, text="¿Qué cadena de cine prefieres?")
    question_label.pack()

    cinepolis_button = tk.Button(question_window, text="Cinépolis", command=lambda: set_preference("Cinépolis"))
    cinepolis_button.pack()

    cinemex_button = tk.Button(question_window, text="Cinemex", command=lambda: set_preference("Cinemex"))
    cinemex_button.pack()

    ambos_button = tk.Button(question_window, text="Ambas", command=lambda: set_preference("Ambas"))
    ambos_button.pack()


def save_preference(preference):
    # Modify the code to save preference to the MySQL database
    connection = mysql.connector.connect(
        host="localhost",
        user="root",
        password="root",
        database="CineArchive"
    )
    cursor = connection.cursor()
    # Perform the necessary operations to save the preference
    # cursor.execute("INSERT INTO preferences (preference) VALUES (%s)", (preference,))
    connection.commit()
    connection.close()


def ask_screen_type(preference):
    screen_type = tk.StringVar()

    def set_screen_type(value):
        screen_type.set(value)
        print("Formato de sala de preferencia", value)
        ask_postal_code(screen_type.get(), preference)  # Pass the screen type and preference to ask_postal_code
        question_window.destroy()  # Close the question window
        screen_type_button.configure(state=tk.DISABLED)  # Disable the screen type button
        postal_code_button.configure(state=tk.NORMAL)  # Enable the postal code button

    question_window = tk.Toplevel(root)
    question_window.title("Elige tu formato de sala de preferencia")

    question_label = tk.Label(question_window, text="Elige tu formato de sala de preferencia")
    question_label.pack()

    if preference == "Cinépolis":
        macroxe_button = tk.Button(question_window, text="MACROXE", command=lambda: set_screen_type("MACROXE"))
        macroxe_button.pack()

        dx4_button = tk.Button(question_window, text="4DX", command=lambda: set_screen_type("4DX"))
        dx4_button.pack()

        imax_button = tk.Button(question_window, text="IMAX", command=lambda: set_screen_type("IMAX"))
        imax_button.pack()

        junior_button = tk.Button(question_window, text="JUNIOR", command=lambda: set_screen_type("JUNIOR"))
        junior_button.pack()

        vip_button = tk.Button(question_window, text="VIP", command=lambda: set_screen_type("VIP"))
        vip_button.pack()

        screenx_button = tk.Button(question_window, text="SCREEN X", command=lambda: set_screen_type("SCREEN X"))
        screenx_button.pack()

    elif preference == "Cinemex":
        dolby_button = tk.Button(question_window, text="Dolby Atmos", command=lambda: set_screen_type("Dolby Atmos"))
        dolby_button.pack()

        premium_button = tk.Button(question_window, text="Premium", command=lambda: set_screen_type("Premium"))
        premium_button.pack()

        platino_button = tk.Button(question_window, text="Platino", command=lambda: set_screen_type("Platino"))
        platino_button.pack()

        casa_arte_button = tk.Button(question_window, text="Casa de Arte", command=lambda: set_screen_type("Casa de Arte"))
        casa_arte_button.pack()

    else:
        macroxe_button = tk.Button(question_window, text="MACROXE", command=lambda: set_screen_type("MACROXE"))
        macroxe_button.pack()

        dx4_button = tk.Button(question_window, text="4DX", command=lambda: set_screen_type("4DX"))
        dx4_button.pack()

        imax_button = tk.Button(question_window, text="IMAX", command=lambda: set_screen_type("IMAX"))
        imax_button.pack()

        junior_button = tk.Button(question_window, text="JUNIOR", command=lambda: set_screen_type("JUNIOR"))
        junior_button.pack()

        vip_button = tk.Button(question_window, text="VIP", command=lambda: set_screen_type("VIP"))
        vip_button.pack()

        screenx_button = tk.Button(question_window, text="SCREEN X", command=lambda: set_screen_type("SCREEN X"))
        screenx_button.pack()

        dolby_button = tk.Button(question_window, text="Dolby Atmos", command=lambda: set_screen_type("Dolby Atmos"))
        dolby_button.pack()

        premium_button = tk.Button(question_window, text="Premium", command=lambda: set_screen_type("Premium"))
        premium_button.pack()

        platino_button = tk.Button(question_window, text="Platino", command=lambda: set_screen_type("Platino"))
        platino_button.pack()

        casa_arte_button = tk.Button(question_window, text="Casa de Arte", command=lambda: set_screen_type("Casa de Arte"))
        casa_arte_button.pack()


def ask_postal_code(screen_type, preference):
    postal_code = tk.StringVar()

    def save_postal_code():
        code = postal_code.get()
        print("Código Postal:", code)
        theater_zip = get_theater_with_smallest_difference(code, preference, screen_type)  # Pass the preference and screen type to get_theater_with_smallest_difference
        print("Te recomiendo ir a:", theater_zip)
        # save_code(code)
        postal_code_window.destroy()  # Close the postal code window

    postal_code_window = tk.Toplevel(root)
    postal_code_window.title("Código Postal")

    postal_code_label = tk.Label(postal_code_window, text="Ingresa tu Código Postal:")
    postal_code_label.pack()

    postal_code_entry = tk.Entry(postal_code_window, textvariable=postal_code)
    postal_code_entry.pack()

    save_button = tk.Button(postal_code_window, text="Guardar", command=save_postal_code)
    save_button.pack()


def get_theater_with_smallest_difference(postal_code, preference, screen_type):
    connection = mysql.connector.connect(
        host="localhost",
        user="root",
        password="root",
        database="CineArchive"
    )
    cursor = connection.cursor()

    # Modify the query to include the screen type and preference filters
    query = "SELECT Franchise.FranchiseName AS Replaced_FranchiseName, MovieTheater.Name, MovieTheater.ZIP " \
            "FROM MovieTheater " \
            "LEFT JOIN Franchise ON MovieTheater.FranchiseID = Franchise.FranchiseID " \
            "JOIN MovieTheaterScreen ON MovieTheater.MovieTheaterID = MovieTheaterScreen.MovieTheaterID " \
            "JOIN ScreenType ON MovieTheaterScreen.ScreenTypeID = ScreenType.ScreenTypeID " \
            "WHERE ScreenType.TypeName = %s"

    # Add the preference filter based on the selected cinema preference
    if preference == "Cinépolis":
        query += " AND MovieTheater.FranchiseID = 1"
    elif preference == "Cinemex":
        query += " AND MovieTheater.FranchiseID = 2"

    cursor.execute(query, (screen_type,))
    theaters = cursor.fetchall()

    smallest_difference = float("inf")
    theater_name_with_smallest_difference = None

    for franchise_name, theater_name, theater_zip in theaters:
        difference = abs(int(postal_code) - int(theater_zip))
        if difference < smallest_difference:
            smallest_difference = difference
            theater_name_with_smallest_difference = franchise_name + " " + theater_name

    connection.close()

    return theater_name_with_smallest_difference


root = tk.Tk()
root.title("CineArchive")

# Create a file menu
file_menu = tk.Menu(root)
file_menu.add_command(label="Open", command=open_file)
file_menu.add_command(label="Save", command=save_file)
file_menu.add_separator()
file_menu.add_command(label="Exit", command=exit_app)

# Add the file menu to the root window
root.config(menu=file_menu)

# Add cinema preference question as a button
cinema_pref_button = tk.Button(root, text="¿Qué cadena de cine prefieres?", command=ask_cinema_preference)
cinema_pref_button.pack()

# Add screen type question as a button
screen_type_button = tk.Button(root, text="Elige tu formato de sala de preferencia", command=ask_screen_type,
                               state=tk.DISABLED)
screen_type_button.pack()

# Add postal code question as a button
postal_code_button = tk.Button(root, text="Ingresa tu Código Postal", command=ask_postal_code, state=tk.DISABLED)
postal_code_button.pack()

root.mainloop()
