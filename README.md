### Setup (Part 1)
```
# https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-i-hello-world
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py --user
pip install virtualenv --user

# create virtual environment
cd $BASE_FOLDER
mkdir project
virtualenv .env

# alternatively (virtual environment with python 3)
virtualenv -p python3 .env
python3 -m venv .env

# activate the environment
source .env/bin/activate

# install flask
pip install flask
mkdir app
cd app

vi __init__.py

--
from flask import Flask

app = Flask(__name__)

from app import routes
--

vi routes.py

--
from app import app

@app.route('/')
@app.route('/index')
def index():
    return "Hello, World!"
--

cd ..

vi myapp.py

--
from app import app
--

pip install python-dotenv

vi .flaskenv

--
FLASK_APP=myapp.py
FLASK_ENV=development
--

# export FLASK_APP=myapp.py

flask run

```

### Setup (Part 2)
```
vi app/routes.py

--
# constants
TITLE = "My App Title"

@app.route('/ex1')
def index():
    user = {'username': 'Jimmy'}
    posts = [
        {
            'author': {'username': 'Rambo'},
            'body': 'Beautiful day in Geneva!'
        },
        {
            'author': {'username': 'Susan'},
            'body': 'The Avengers movie was so cool!'
        }
    ]
    return render_template('index.html', title=TITLE, user=user, posts=posts)
--

mkdir app/templates
vi app/templates/base.html

--
<html>
    <head>
        <title>{{ title }}</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet" media="screen">
    </head>
    <body>
        <div>My App: <a href="/index">Home</a></div>
        <hr>
        {% block content %}{% endblock %}
    </body>
</html>
--

vi app/templates/ex1.html

--
{% extends "base.html" %}

{% block content %}
    <h1>Hi, {{ user.username }}!</h1>
    {% for post in posts %}
    <div><p>{{ post.author.username }} wrote: <b>{{ post.body }}</b></p></div>
    {% endfor %}
{% endblock %}
--

```

### Setup (Part 3)
```
# reinitialize the database with SQL file conf/schema.sql
rm database.db
python app/init_db.py

# test queries
source .env/bin/activate
python
> import app.db as db
> db = db.db_handler()
> db.query("SELECT * from user")
> db.get_user_password("jimmy")

vi app/routes.py

---
...
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
def index():
    return render_template('index.html')

@app.route('/users')
def users():
    db = get_db()
    users = db.query("SELECT * from user")
    return render_template('users.html', users=users)

@app.route('/login', methods=['POST', 'GET'])
def login():
    error = None
    if request.method=='POST':
        username = request.form['username']
        password = request.form['password']
        hashed_password = hash_sha1(password) 
        db = get_db()
        stored_password = db.get_user_password(username)
        if stored_password != hashed_password:
            error = 'Invalid Credentials. Please try again.'
        else:
            session['username'] = username
            return redirect(url_for('index'))
    return render_template('login.html', error=error)

@app.route('/logout')
def logout():
    g.username = None
    session['username'] = None
    return render_template('logout.html')
---

vi app/templates/login.html

---
{% extends "base.html" %}

{% block content %}
	<div class="container">
		<h1>Login</h1>
      		<br>
      		<form action="" method="post">
		<input type="text" placeholder="Username" name="username" value="{{
			request.form.username }}">
		<input type="password" placeholder="Password" name="password" value="{{
			request.form.password }}">
		<input class="btn btn-default" type="submit" value="Login">
		</form>
		{% if error %}
		<p class="error"><strong>Error:</strong> {{ error }}
		{% endif %}
	</div>
{% endblock %}
---

vi app/templates/logout.html

---
{% extends "base.html" %}

{% block content %}
	<div class="container">
		<h1>Logout</h1>
      		<br>
		You were successfully logged out.
	</div>
{% endblock %}
---

```

# Query database
```
source .env/bin/activate

# optional
# edit conf/schema.sql and run
python app/init_db.py

python
import app.db as db
db = db.db_handler()
db.query("select * from user")

# 
```

### application de référence

https://bitbucket.org/jimbotonic/m3/src/master
