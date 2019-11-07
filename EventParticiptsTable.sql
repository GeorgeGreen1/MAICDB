USE MAIC
CREATE TABLE EventParticipts(
	Event_Key INT NOT NULL,
	Particip_Key INT NOT NULL,
	FOREIGN KEY (Event_Key) REFERENCES Events(Event_Key),
	FOREIGN KEY (Particip_Key) REFERENCES Participants(Particip_Key)
);