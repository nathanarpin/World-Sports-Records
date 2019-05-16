from app import app
from flask import g, render_template, redirect, url_for, request, session
from app.db import db_handler
from app.utils import hash_sha1

def get_db():
    if 'db' not in g:
        g.db = db_handler()
    return g.db

@app.teardown_appcontext
def teardown_db(exception):
    db = g.pop('db', None)
    if db is not None:
        db.close()

@app.route('/')
@app.route('/index')
def index():
    title="MyApp - Welcome!"
    return render_template('index.html', title=title)

@app.route('/users')
def users():
    title="MyApp - List users"
    if session['username']:
        db = get_db()
        users = db.query("SELECT * from user")
        return render_template('users.html', title=title, users=users)
    else:
        return redirect(url_for('login'))

@app.route('/adduser', methods=['POST', 'GET'])
def add_user():
    title="MyApp - Add a new user"
    error = None
    msg = None
    if session['username']:
        if request.method=='POST':
            firstname = request.form['firstname']
            lastname = request.form['lastname']
            email = request.form['email']
            username = request.form['username']
            passwd = request.form['password']
            if firstname is None or lastname is None or email is None or username is None or passwd is None:
                error = 'All fields are mandatory.'
            else:
                passwd_hash = hash_sha1(passwd) 
                db = get_db()
                db.add_user(username, passwd_hash, firstname, lastname, email)
                msg = 'User was successfully added!'
        return render_template('adduser.html', title=title, msg=msg, error=error)
    else:
        return redirect(url_for('login'))

@app.route('/login', methods=['POST', 'GET'])
def login():
    title="MyApp - Login"
    error = None
    if request.method=='POST':
        username = request.form['username']
        password = request.form['password']
        hashed_password = hash_sha1(password) 
        db = get_db()
	# custom query
        stored_password = db.get_user_password(username)
        if stored_password != hashed_password:
            error = 'Invalid Credentials. Please try again.'
        else:
            session['username'] = username
            return redirect(url_for('index'))
    return render_template('login.html', title=title, error=error)

@app.route('/logout')
def logout():
    title="MyApp - Logout"
    g.username = None
    session['username'] = None
    return render_template('logout.html', title=title)

@app.route('/ex1')
def ex1():
    title = "My App - Example 1"
    user = {'username': 'Test'}
    posts = [
        {
            'body': 'Welcome to World Sports Records!'
        },
        {
            'author': {'username': 'Susan'},
            'body': 'The Avengers movie was so cool!'
        }
    ]
    return render_template('ex1.html', title=title, user=user, posts=posts)

@app.route('/sports')
def sports():
    title="MyApp - List of sports"
    db = get_db()
    sports = db.query("SELECT * from sport")
    return render_template('sports.html', title=title, sports=sports)

@app.route('/addsport', methods=['POST', 'GET'])
def add_sport():
    title="MyApp - Add a new sport"
    error = None
    msg = None
    if session['username']:
        if request.method=='POST':
            name = request.form['name']
            description = request.form['description']
            if name is None or description is None:
                error = 'All fields are mandatory.'
            else:
                db = get_db()
                db.add_user(username, passwd_hash, firstname, lastname, email)
                msg = 'Sport was successfully added!'
        return render_template('addsport.html', title=title, msg=msg, error=error)
    else:
        return redirect(url_for('login'))

@app.route('/metrics')
def metrics():
    title="MyApp - List of metrics"
    db = get_db()
    metrics = db.query("SELECT * from metric")
    return render_template('metrics.html', title=title, metrics=metrics)

@app.route('/addmetric', methods=['POST', 'GET'])
def add_metric():
    title="MyApp - Add a new metric"
    error = None
    msg = None
    if session['username']:
        if request.method=='POST':
            name = request.form['name']
            description = request.form['description']
            if name is None or description is None:
                error = 'All fields are mandatory.'
            else:
                db = get_db()
                db.add_user(username, passwd_hash, firstname, lastname, email)
                msg = 'Metric was successfully added!'
        return render_template('addmetric.html', title=title, msg=msg, error=error)
    else:
        return redirect(url_for('login'))

@app.route('/sportsmen')
def sportsmen():
    title="MyApp - List of sportsmen"
    db = get_db()
    sportsmen = db.query("SELECT * from sportman")
    return render_template('sportsmen.html', title=title, sportsmen=sportsmen)

@app.route('/addsportman', methods=['POST', 'GET'])
def add_sportman():
    title="MyApp - Add a new sportman"
    error = None
    msg = None
    if session['username']:
        if request.method=='POST':
            name = request.form['name']
            nationality = request.form['nationality']
            birth_year = request.form['birth year']
            gender = request.form['gender']
	    if name is None or description is None:
                error = 'All fields are mandatory.'
            else:
                db = get_db()
                db.add_user(username, passwd_hash, firstname, lastname, email)
                msg = 'Sportman was successfully added!'
        return render_template('addsportman.html', title=title, msg=msg, error=error)
    else:
        return redirect(url_for('login'))

