DROP TABLE Players;
DROP TABLE Matches;


CREATE TABLE players (
  id serial4 PRIMARY KEY,
  name varchar(255)
);

CREATE TABLE matches (
  id serial4 PRIMARY KEY,
  player_winner int4 REFERENCES players(id),
  player_looser int4 REFERENCES players(id), 
  winner_points int4,
  looser_points int4
);


