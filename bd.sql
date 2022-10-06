DROP DATABASE IF EXISTS geometry_wars;
CREATE DATABASE geometry_wars;

USE geometry_wars;

CREATE TABLE jugador (
	id INT NOT NULL,
	nombre VARCHAR(60) NOT NULL,
	edad INT NOT NULL,
	
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE partida (
	id INT NOT NULL,
	nombre VARCHAR(60) NOT NULL,
	modo INT NOT NULL,
	
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE partidas_jugadas (
	partida_id INT NOT NULL,
	jugador_id INT NOT NULL,
	puntos INT NOT NULL,
	ganador INT NOT NULL,
	
	FOREIGN KEY (partida_id) REFERENCES partida (id),
	FOREIGN KEY (jugador_id) REFERENCES jugador (id)
) ENGINE=InnoDB;
