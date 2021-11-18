from flask import Flask, render_template

app = Flask(__name__,template_folder='templates')

@app.route('/', methods=['GET'])
def login():
    return render_template("login.html")

if __name__=='__main__':
    app.run(host="0.0.0.0", port=4040)