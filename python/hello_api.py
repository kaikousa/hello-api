from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello World!"

# End-point for ELB to query
@app.route("/status")
def status():
    return "ok"

if __name__ == "__main__":
    app.run()
