from flask import Flask, render_template, request, redirect, url_for
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
    return render_template('main.html')

# Route for player statistics
@app.route('/player_stats')
def player_stats():
    try:
        conn = connect_db()
        cursor = conn.cursor()
        cursor.execute('SELECT * FROM player_stats')
        player_stats = cursor.fetchall()
        
    except sqlite3.Error as e:
        # Handle the error or log it
        print("Error:", e)

    finally:
        conn.close()

    subpage = request.args.get('subpage', default='player_stats')

    #Route for team of the year
    if subpage == 'team_of_yr':
        conn = connect_db()
        cursor = conn.cursor()
        cursor.execute('SELECT * FROM team_of_yr')
        team_of_yr = cursor.fetchall()
        conn.close()
        return render_template('team_of_yr.html', team_of_yr_db=team_of_yr)
    
    # Route for the top scorers
    elif subpage == 'top_scorers':
        conn = connect_db()
        cursor = conn.cursor()
        cursor.execute('SELECT * FROM top_scorers')
        top_scorers = cursor.fetchall()
        conn.close()
        return render_template('top_scorers.html', top_scorers_db=top_scorers)
     
    # Route for the top assisters
    elif subpage == 'top_assisters':
        conn = connect_db()
        cursor = conn.cursor()
        cursor.execute('SELECT * FROM top_assisters')
        top_assisters = cursor.fetchall()
        conn.close()
        return render_template('top_assisters.html', top_assisters_db=top_assisters)

    # Route for the most clean sheets
    elif subpage == 'most_clean_sheets':
        conn = connect_db()
        cursor = conn.cursor()
        cursor.execute('SELECT * FROM most_clean_sheets')
        most_clean_sheets = cursor.fetchall()
        conn.close()
        return render_template('most_clean_sheets.html', most_clean_sheets_db=most_clean_sheets)

    # Route for the player of the tournament
    elif subpage == 'player_of_trnmnt':
        conn = connect_db()
        cursor = conn.cursor()
        cursor.execute('SELECT * FROM player_of_trnmnt')
        player_of_trnmnt = cursor.fetchall()
        conn.close()
        return render_template('player_of_trnmnt.html', player_of_trnmnt_db=player_of_trnmnt)

    else:
        return render_template('player_stats.html', player_stats_db=player_stats)

# Route for club statistics
@app.route('/club_stats')
def club_stats():
    conn = connect_db()
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM club_stats')
    club_stats = cursor.fetchall()
    conn.close()
    return render_template('club_stats.html', club_stats_db=club_stats)

# Route for the bracket
@app.route('/bracket')
def bracket():
    subpage = request.args.get('subpage', default='bracket')

    # Route for the group stage stats
    if subpage == 'group_stage_stats':
        conn = connect_db()
        cursor = conn.cursor()
        cursor.execute('SELECT * FROM group_stage_stats')
        group_stage_stats = cursor.fetchall()
        conn.close()
        return render_template('group_stage_stats.html', group_stage_stats_db=group_stage_stats)

    # Route for the group stage matches
    elif subpage == 'group_stage_matches':
        conn = connect_db()
        cursor = conn.cursor()
        cursor.execute('SELECT * FROM group_stage_matches')
        group_stage_matches = cursor.fetchall()
        conn.close()
        return render_template('group_stage_matches.html', group_stage_matches_db=group_stage_matches)

    # Route for the round of 16
    elif subpage == 'round_of_16':
        conn = connect_db()
        cursor = conn.cursor()
        cursor.execute('SELECT * FROM round_of_16')
        round_of_16 = cursor.fetchall()
        conn.close()
        return render_template('round_of_16.html', round_of_16_db=round_of_16)

    # Route for the quarter finals
    elif subpage == 'quarter_finals':
        conn = connect_db()
        cursor = conn.cursor()
        cursor.execute('SELECT * FROM quarter_finals')
        quarter_finals = cursor.fetchall()
        conn.close()
        return render_template('quarter_finals.html', quarter_finals_db=quarter_finals)

    # Route for the semi finals
    elif subpage == 'semi_finals':
        conn = connect_db()
        cursor = conn.cursor()
        cursor.execute('SELECT * FROM semi_finals')
        semi_finals = cursor.fetchall()
        conn.close()
        return render_template('semi_finals.html', semi_finals_db=semi_finals)

    # Route for the finals
    elif subpage == 'finals':
        conn = connect_db()
        cursor = conn.cursor()
        cursor.execute('SELECT * FROM finals')
        finals = cursor.fetchall()
        conn.close()
        return render_template('finals.html', finals_db=finals)

    else:
        return render_template('bracket.html')



if __name__ == '__main__':
    app.run(debug=True)