# app.py
# Reads reuwirmenst.txt and prints its content

file_name = "reuwirmenst.txt"

try:
    with open(file_name, "r") as file:
        content = file.read()
        print("Content of the file:")
        print(content)
except FileNotFoundError:
    print(f"Error: {file_name} not found!")
