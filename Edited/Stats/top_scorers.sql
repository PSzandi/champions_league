CREATE TABLE top_scorers (
    rank INTEGER,
    player TEXT,
    club TEXT,
    goals_scored INTEGER,
    CONSTRAINT comp_id_tsp PRIMARY KEY (player, club)
);

INSERT INTO top_scorers (rank,player,club,goals_scored)
VALUES (1,'Erling Haaland','Manchester City',12),
(2,'Mohamed Salah','Liverpool',8),
(3,'Kylian Mbappe','PSG',7),
(4,'Vinicius Junior','Real Madrid',7),
(5,'Joao Mario','Benfica',6),
(6,'Victor Osimhen','Napoli',5),
(7,'Robert Lewandowski','Barcelona',5),
(8,'Mehdi Taremi','Porto',5),
(9,'Rodrygo','Real Madrid',5),
(10,'Rafa Silva','Benfica',5),
(11,'Olivier Giroud','AC Milan',5);