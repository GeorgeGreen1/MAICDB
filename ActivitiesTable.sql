CREATE TABLE Activities (
    id INT NOT NULL IDENTITY,
    abbrev VARCHAR(5) NOT NULL,
	name VARCHAR(255) NOT NULL,
	category VARCHAR(100) NOT NULL,
	PRIMARY KEY(id)
);