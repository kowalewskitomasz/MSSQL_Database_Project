CREATE TABLE Pacjenci  (
	Id INT IDENTITY(1,1) primary key,
	Imie VARCHAR(20), 
	Nazwisko VARCHAR(30),
	PESEL CHAR(11) CHECK (PESEL LIKE '%[0-9]%'), 	 
	Adres VARCHAR(40) not null, 
	Miasto VARCHAR(30) not null, 
	Numer_telefonu CHAR(9) CHECK (Numer_telefonu LIKE '%[0-9]%'), 
	);
ALTER TABLE Pacjenci ADD Wiek INT not null;
	
CREATE TABLE Poradnie  (
	Id INT IDENTITY(1,1) primary key,
	Rodzaj CHAR(30) UNIQUE not null
	);
	
CREATE TABLE Lekarze  (
	Id INT IDENTITY(1,1) primary key,
	Imie VARCHAR(20), 
	Nazwisko VARCHAR(30),
	Specjalizacja VARCHAR(30),
	);	
	
CREATE TABLE Wizyty  (
	Id INT IDENTITY(1,1) primary key,
	Termin_wizyty DATE not null, 
	Godzina_wizyty CHAR(5) not null,
	id_pacjentow int REFERENCES Pacjenci(Id) ON DELETE CASCADE not null,
	id_lekarzy int REFERENCES Lekarze(Id) not null,
	id_poradni int REFERENCES Poradnie(Id) not null
	);

CREATE TABLE Lista_diagnoz(
	Id INT IDENTITY(1,1) primary key,
	Spis_diagnoz VARCHAR(100) not null,
	);	
	
CREATE TABLE Lista_recept(
	Id INT IDENTITY(1,1) primary key,
	Spis_recept VARCHAR(100) not null,
	);
	
CREATE TABLE Lista_badan(
	Id INT IDENTITY(1,1) primary key,
	Spis_badan VARCHAR(100) not null,
	);				
	
CREATE TABLE Diagnoza (
	Id INT IDENTITY(1,1) primary key,
	Data_wydania DATE not null, 
	Data_waznosci DATE not null, 
	id_wizyt int REFERENCES Wizyty(Id), 
	id_listy_diagnoz int REFERENCES Lista_diagnoz(Id) not null,
	CONSTRAINT data_check CHECK (Data_wydania < Data_waznosci)
	);
	
CREATE TABLE Recepty (
	Id INT IDENTITY(1,1) primary key,
	Dawka VARCHAR(20) not null, 
	Data_waznosci DATE not null, 
	id_wizyt int REFERENCES Wizyty(Id) ON DELETE CASCADE, 
	id_listy_recept int REFERENCES Lista_recept(Id) not null, 
	);

CREATE TABLE Badania (
	Id INT IDENTITY(1,1) primary key,
	Termin DATE not null, 
	Wynik VARCHAR(100) not null,
	id_wizyt int REFERENCES Wizyty(Id) ON DELETE CASCADE, 
	id_listy_badan int REFERENCES Lista_badan(Id) not null
	);