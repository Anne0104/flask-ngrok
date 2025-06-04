from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "Bienvenue sur mon serveur Flask en CI/CD avec Docker et Ngrok !"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
