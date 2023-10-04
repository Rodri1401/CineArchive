import tkinter as tk
from PIL import Image, ImageTk

def open_file():
    print("Open file")

root = tk.Tk()
root.title("Menu Example")

# Create a file menu
file_menu = tk.Menu(root)

# Load and resize the image
image = Image.open("cinemex.png")
image = image.resize((16, 16))  # Adjust the size as needed

# Convert the image to PhotoImage
photo = ImageTk.PhotoImage(image)

# Add a command to the file menu with the image
file_menu.add_command(label="Open", image=photo, compound=tk.LEFT, command=open_file)

# Add the file menu to the root window
root.config(menu=file_menu)

root.mainloop()
