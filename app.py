from flask import Flask, render_template, redirect, url_for
import sqlite3

app = Flask(__name__)

# Database configuration
DATABASE = 'database/champions_league_data.db'

# Helper function to connect to the database
def connect_db():
    return sqlite3.connect(DATABASE)

# Route for the main page
@app.route('/')
def main():
    return redirect(url_for('player_stats'))

# Route for player statistics
@app.route('/player_stats')
def player_stats():
    conn = connect_db()
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM player_stats')
    player_stats = cursor.fetchall()
    conn.close()
    return render_template('player_stats.html', player_stats=player_stats)

# Route for club statistics
@app.route('/club_stats')
def club_stats():
    conn = connect_db()
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM club_stats')
    club_stats = cursor.fetchall()
    conn.close()
    return render_template('club_stats.html', club_stats=club_stats)

# Route for the bracket page
@app.route('/bracket')
def bracket():
    conn = connect_db()
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM bracket_data')
    bracket_data = cursor.fetchall()
    conn.close()
    return render_template('bracket.html', bracket_data=bracket_data)

if __name__ == '__main__':
    app.run(debug=True)