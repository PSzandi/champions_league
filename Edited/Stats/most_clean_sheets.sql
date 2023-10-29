CREATE TABLE most_clean_sheets (
    rank INTEGER,
    player TEXT,
    club TEXT,
    clean_sheets INTEGER,
    CONSTRAINT comp_id_mcsp PRIMARY KEY (player, club)
);

INSERT INTO most_clean_sheets (rank,player,club,clean_sheets)
VALUES (1,'Andre Onana','Inter Milan',8),
(2,'Ederson','Manchester City',7),
(3,'Simon Mignolet','Club Brugge',5),
(4,'Thibaut Courtois','Real Madrid',5),
(5,'Alex Meret','Napoli',4),
(6,'Allison Becker','Liverpool',3),
(7,'Hugo Lloris','Tottenham Hotspur',3),
(8,'Ciprian Tatarusanu','AC Milan',3);