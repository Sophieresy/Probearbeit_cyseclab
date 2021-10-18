from flask import Flask, render_template, make_response

app = Flask(__name__)


@app.route('/', methods=['GET', 'POST'])
def index():
    # The flag should be presented to the user if he was able to solve the challenge.
    # Try to find a way that it is not possible to read the flag from the code without solving the challenge first.
    return make_response(render_template('index.html', vars={"flag": "CISPA{5ac633b91eb3f63ca1812174b80a78ad}"}))


if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0")
