CREATE TABLE top_assisters (
    rank INTEGER,
    player TEXT,
    club TEXT,
    assists INTEGER,
    CONSTRAINT comp_id_tap PRIMARY KEY (player, club)
);

INSERT INTO top_assisters (rank,player,club,assists)
VALUES (1,'Kevin De Bruyne','Manchester City',7),
(2,'Vinicius Junior','Real Madrid',6),
(3,'Joao Cancelo','Manchester City',5),
(3,'Joao Cancelo','Bayern Munich',5),
(4,'Federico Dimarco','Inter Milan',5),
(5,'Diogo Jota','Liverpool',4),
(6,'Leon Goretzka','Bayern Munich',4),
(7,'Lionel Messi','PSG',4),
(8,'Khvicha Kvaratskhelia','Napoli',4),
(9,'Alex Grimaldo','Benfica',4),
(10,'Rafael Leao','Milan',4);
