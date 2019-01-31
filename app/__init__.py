from flask import Flask
app = Flask(__name__)

app.config['SECRET_KEY'] = 'zdsbz'

from app import routes
