CREATE TABLE Accident(
	accident_id 		CHAR(10) NOT NULL,
	address_id		CHAR(50) NOT NULL,
	accident_date	        DATE NOT NULL,
	severity	        CHAR(250) NULL
);

CREATE TABLE Address(
	address_id		    CHAR(50) NOT NULL,
	zipcode			    CHAR(5) NOT NULL,
	lat			    NUMERIC(9, 6),
	lng			    NUMERIC(9, 6),
	street			    CHAR(25) NULL,
	side			    CHAR(5) NULL
);

CREATE TABLE USA_State(
	zipcode			    CHAR(5) NOT NULL,
	usa_state		    CHAR(25) NOT NULL	
);

ALTER TABLE Accident ADD PRIMARY KEY (accident_id);
ALTER TABLE USA_State ADD PRIMARY KEY (zipcode);
ALTER TABLE Address ADD PRIMARY KEY (address_id);

ALTER TABLE Accident ADD CONSTRAINT FK_Accident_Address FOREIGN KEY (address_id) REFERENCES Address (address_id);
ALTER TABLE Address ADD CONSTRAINT FK_Address_USA_State FOREIGN KEY (zipcode) REFERENCES USA_State (zipcode);
