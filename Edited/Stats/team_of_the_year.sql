CREATE TABLE team_of_yr (
    player TEXT,
    club TEXT,
    CONSTRAINT comp_id_toyp PRIMARY KEY (player, club)
);

INSERT INTO team_of_yr (player,club)
VALUES ('Thibaut Courtois','Real Madrid'),
('Kyle Walker','Manchester City'),
('Ruben Dias','Manchester City'),
('Alessandro Bastoni','Inter Milan'),
('Frederico Dimarco','Inter Milan'),
('John Stones','Manchester City'),
('Rodri','Manchester City'),
('Kevin De Bruyne','Manchester City'),
('Bernardo Silva','Manchester City'),
('Vinicius Junior','Real Madrid'),
('Erling Haaland','Manchester City');