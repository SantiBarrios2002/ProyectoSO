DROP DATABASE IF EXISTS geometry_wars;
CREATE DATABASE geometry_wars;

USE geometry_wars;

CREATE TABLE jugador (
	id INT NOT NULL,
	username VARCHAR(60) NOT NULL,
	password VARCHAR(60) NOT NULL,
	edad INT NOT NULL,
	
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE partida (
	id INT NOT NULL,
	nombre VARCHAR(60) NOT NULL,
	fecha_fin TIMESTAMP, -- Este campo se actualizará al acabar la partida
	duracion INT, -- Este campo se actualizará al acabar la partida
	ganador INT, -- Este campo se actualizará al acabar la partida
	modo INT NOT NULL,
	
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE partidas_jugadas (
	partida_id INT NOT NULL,
	jugador_id INT NOT NULL,
	puntos INT NOT NULL,
	
	FOREIGN KEY (partida_id) REFERENCES partida (id),
	FOREIGN KEY (jugador_id) REFERENCES jugador (id)
) ENGINE=InnoDB;
