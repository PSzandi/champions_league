CREATE TABLE semi_finals (
    team1 TEXT,
    agg_score TEXT,
    team2 TEXT,
    home_game TEXT,
    away_game TEXT,
    team1_xg1 REAL,
    team2_xg1 REAL,
    team1_xg2 REAL,
    team2_xg2 REAL,
    stadium1 TEXT,
    stadium2 TEXT,
    CONSTRAINT fk_team1 FOREIGN KEY (team1) REFERENCES club_stats(club),
    CONSTRAINT fk_team2 FOREIGN KEY (team2) REFERENCES club_stats(club)
);

INSERT INTO semi_finals (team1,agg_score,team2,home_game,away_game,team1_xg1,team2_xg1,team1_xg2,team2_xg2,stadium1,stadium2)
VALUES ('AC Milan','0-3','Inter Milan','0-2','0-1',0.9,2,0.5,1,'San Siro','San Siro'),
('Real Madrid','1-5','Manchester City','1-1','0-4',0.7,0.5,0.5,2.8,'Santiago Bernabeu','Etihad');
