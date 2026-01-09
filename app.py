from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Hello, Glory! This is your Dockerized Python app."

if __name__ == "__main__":
    # Run the app on all network interfaces
    app.run(host='0.0.0.0', port=5000)


