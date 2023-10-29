CREATE TABLE finals (
    team1 TEXT,
    score TEXT,
    team2 TEXT,
    team1_xg REAL,
    team2_xg REAL,
    stadium TEXT,
    CONSTRAINT fk_team1 FOREIGN KEY (team1) REFERENCES club_stats(club),
    CONSTRAINT fk_team2 FOREIGN KEY (team2) REFERENCES club_stats(club)
);

INSERT INTO finals (team1,score,team2,team1_xg,team2_xg,stadium)
VALUES ('Manchester City','1-0','Inter Milan',1,1.7,'Ataturk Olympic Stadium');
