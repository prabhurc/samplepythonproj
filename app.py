from flask import Flask

app= Flask(__name)

@app.route('/')
def hello():
  return 'Welcome to GDG Workshop'
if __name__ = '__main__'
