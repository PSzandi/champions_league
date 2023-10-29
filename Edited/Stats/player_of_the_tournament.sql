CREATE TABLE player_of_trnmnt (
    player TEXT,
    nationality TEXT,
    club TEXT,
    CONSTRAINT comp_id_pot PRIMARY KEY (player, club)
);

INSERT INTO player_of_trnmnt (player,nationality,club)
VALUES ('Rodri','ESP','Manchester City');
