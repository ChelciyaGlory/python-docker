# app.py
from flask import Flask

app = Flask(__name__)
file_name = "reuwirmenst.txt"

@app.route("/")
def home():
    try:
        with open(file_name, "r") as file:
            content = file.read()
            return f"<pre>{content}</pre>"  # shows text nicely in browser
    except FileNotFoundError:
        return f"Error: {file_name} not found!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
