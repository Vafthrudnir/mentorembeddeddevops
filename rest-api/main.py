import json
from flask import Flask, render_template, request

app = Flask(__name__)


def get_all_users():
    with open('data/users.json') as f:
        all_users = json.load(f)
    short_response = []
    for user in all_users:
        del user['access']
        short_response.append(user)
    return json.dumps(short_response)


def get_user(username):
    with open('data/users.json') as f:
        all_users = json.load(f)
    for user in all_users:
        if user['username'] == username:
            del user['name']
            return json.dumps(user)
    return None


@app.route('/')
def main():
    return render_template('main.html')


@app.route('/v1/users')
def api_user_list():
    return get_all_users()


@app.route('/v1/accesslevels')
def api_access_levels():
    username = request.args.get('username')
    if not username:
        return '"username" missing', 400
    user_data = get_user(username)
    if not user_data:
        return 'User not found', 400
    return user_data
