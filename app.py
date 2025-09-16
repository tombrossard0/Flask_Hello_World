from flask import Flask
from flask_ngrok import run_with_ngrok

app = Flask(__name__)
run_with_ngrok(app)  # Démarre ngrok lors du lancement de l'application

@app.route("/")
def hello():
    return "Hello World!"

if __name__ == '__main__':
    app.run()
