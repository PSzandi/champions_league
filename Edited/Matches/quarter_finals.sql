CREATE TABLE quarter_finals (
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

INSERT INTO quarter_finals (team1,agg_score,team2,home_game,away_game,team1_xg1,team2_xg1,team1_xg2,team2_xg2,stadium1,stadium2)
VALUES ('Real Madrid','4-0','Chelsea','2-0','2-0',2.3,0.7,1.8,1.9,'Santiago Bernabeu','Stanford Bridge'),
('Benfica','3-5','Inter Milan','0-2','3-3',1.6,1.4,0.7,1.3,'Estadio do Sport Lisboa e Benfica','San Siro'),
('Manchester City','4-1','Bayern Munich','3-0','1-1',1.8,0.9,1.3,2.2,'Etihad','Allianz Arena'),
('AC Milan','2-1','Napoli','1-0','1-1',1.1,1.3,2,2.2,'San Siro','Diego Armando Maradona Stadium');
