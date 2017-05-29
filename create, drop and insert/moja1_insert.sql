INSERT INTO Pacjenci VALUES
	('Marian','Nowak','69021353735','P�k. D�bka 35','Gdynia','645247467','47'),
	('Damian','Cie�lak','75022379425','Boh. Monte Cassino 54','Grudzi�dz','856423757','41'),
	('Mariusz','Trucik','89102069493','Fiszera 12','Gda�sk','898464225','27'),
	('Anna','Dali�ska','93063079153','Lirowa 123','Gda�sk','471797537','23'),
	('Maria','Nowacka','85010428414','Grudniowa 32','Gdynia','836912251','31'),
	('Arek','Jurek','66112275293','Galaktyczna 12','Gda�sk','125857375','50'),
	('Patryk','Bierut','72071294810','Warszawska 99','Gdynia','648248274','44'),
	('Jerzy','Weber','00021964285','Fio�kowa 94','Gda�sk','273281731','47'),
	('Natalia','Stenicka','91042211255','Gradowa 31','Gda�sk','527825457','25'),
	('Andrzej','Jab�o�ski','95122158295','Miszewskiego 89','Gda�sk','147938217','21'),
	('Marlena','Cicha','99020584168','Powsta�c�w Wielkopolskich 129','Gdynia','982757129','17');
	
INSERT INTO Lekarze VALUES
	('Marian','Migo�','Ginekolog'),
	('Edyta','Cicho�','Urolog'),
	('Andrzej','Ple�niak','Pediatra'),
	('Agata','Szajda','Dermatolog'),
	('Iwona','Sowi�ska','Pulmonolog'),
	('Patrycja','Dudzi�ska','Alergolog'),
	('Adam','Wojsz','Lekarz og�lny'),
	('Marcin','Drasak','Endokrynolog');
	
INSERT INTO Poradnie VALUES
	('Ginekologiczna'),
	('Urologiczna'),
	('Dermatologiczna'),
	('Pulmonologiczna'),
	('Alergologiczna'),
	('Endokrynologiczna'),
	('Og�lna'),
	('Pediatryczna');

INSERT INTO Lista_diagnoz VALUES
	('Diagnoza 1'),
	('Diagnoza 2'),
	('Diagnoza 3'),
	('Diagnoza 4'),
	('Diagnoza 5');	
	
INSERT INTO Lista_recept VALUES
	('Recepta na lek 1'),
	('Recepta na lek 2'),
	('Recepta na lek 3'),
	('Recepta na lek 4'),
	('Recepta na lek 5'),
	('Recepta na lek 6');
	
INSERT INTO Lista_badan VALUES
	('Badanie 1'),
	('Badanie 2'),
	('Badanie 3'),
	('Badanie 4'),
	('Badanie 5'),
	('Badanie 6');		

INSERT INTO Wizyty VALUES
	('2015-01-15', '13:45',
	(SELECT Id FROM Pacjenci WHERE PESEL='89102069493'),
	(SELECT Id FROM Lekarze WHERE Specjalizacja='Endokrynolog'),	
	(SELECT Id FROM Poradnie WHERE Rodzaj='Endokrynologiczna')),
	('2015-02-25', '13:45',
	(SELECT Id FROM Pacjenci WHERE PESEL='89102069493'),
	(SELECT Id FROM Lekarze WHERE Specjalizacja='Endokrynolog'),	
	(SELECT Id FROM Poradnie WHERE Rodzaj='Endokrynologiczna')),
	('2015-04-11', '14:10',
	(SELECT Id FROM Pacjenci WHERE PESEL='85010428414'),
	(SELECT Id FROM Lekarze WHERE Specjalizacja='Ginekolog'),	
	(SELECT Id FROM Poradnie WHERE Rodzaj='Ginekologiczna')),
	('2015-05-03', '12:00',
	(SELECT Id FROM Pacjenci WHERE PESEL='99020584168'),
	(SELECT Id FROM Lekarze WHERE Specjalizacja='Pulmonolog'),	
	(SELECT Id FROM Poradnie WHERE Rodzaj='Pulmonologiczna')),
	('2015-06-25', '12:15',
	(SELECT Id FROM Pacjenci WHERE PESEL='66112275293'),
	(SELECT Id FROM Lekarze WHERE Specjalizacja='Lekarz og�lny'),	
	(SELECT Id FROM Poradnie WHERE Rodzaj='Og�lna')),
	('2015-11-12', '9:35',
	(SELECT Id FROM Pacjenci WHERE PESEL='00021964285'),
	(SELECT Id FROM Lekarze WHERE Specjalizacja='Pediatra'),	
	(SELECT Id FROM Poradnie WHERE Rodzaj='Pediatryczna')),
	('2016-01-15', '10:30',
	(SELECT Id FROM Pacjenci WHERE PESEL='93063079153'),
	(SELECT Id FROM Lekarze WHERE Specjalizacja='Dermatolog'),	
	(SELECT Id FROM Poradnie WHERE Rodzaj='Dermatologiczna')),
	('2016-02-01', '10:45',
	(SELECT Id FROM Pacjenci WHERE PESEL='75022379425'),
	(SELECT Id FROM Lekarze WHERE Specjalizacja='Urolog'),	
	(SELECT Id FROM Poradnie WHERE Rodzaj='Urologiczna')),
	('2016-03-19', '13:50',
	(SELECT Id FROM Pacjenci WHERE PESEL='89102069493'),
	(SELECT Id FROM Lekarze WHERE Specjalizacja='Endokrynolog'),	
	(SELECT Id FROM Poradnie WHERE Rodzaj='Endokrynologiczna')),
	('2016-03-20', '14:00',
	(SELECT Id FROM Pacjenci WHERE PESEL='91042211255'),
	(SELECT Id FROM Lekarze WHERE Specjalizacja='Pulmonolog'),	
	(SELECT Id FROM Poradnie WHERE Rodzaj='Pulmonologiczna')),
	('2016-06-01', '9:00',
	(SELECT Id FROM Pacjenci WHERE PESEL='89102069493'),
	(SELECT Id FROM Lekarze WHERE Specjalizacja='Endokrynolog'),	
	(SELECT Id FROM Poradnie WHERE Rodzaj='Endokrynologiczna')),
	('2016-08-16', '9:30',
	(SELECT Id FROM Pacjenci WHERE PESEL='99020584168'),
	(SELECT Id FROM Lekarze WHERE Specjalizacja='Ginekolog'),	
	(SELECT Id FROM Poradnie WHERE Rodzaj='Ginekologiczna')),
	('2016-11-25', '13:30',
	(SELECT Id FROM Pacjenci WHERE PESEL='93063079153'),
	(SELECT Id FROM Lekarze WHERE Specjalizacja='Dermatolog'),	
	(SELECT Id FROM Poradnie WHERE Rodzaj='Dermatologiczna')),
	('2016-12-15', '11:30',
	(SELECT Id FROM Pacjenci WHERE PESEL='93063079153'),
	(SELECT Id FROM Lekarze WHERE Specjalizacja='Dermatolog'),	
	(SELECT Id FROM Poradnie WHERE Rodzaj='Dermatologiczna')),
	('2017-01-05', '12:00',
	(SELECT Id FROM Pacjenci WHERE PESEL='89102069493'),
	(SELECT Id FROM Lekarze WHERE Specjalizacja='Endokrynolog'),	
	(SELECT Id FROM Poradnie WHERE Rodzaj='Endokrynologiczna')),
	('2017-02-11', '10:45',
	(SELECT Id FROM Pacjenci WHERE PESEL='75022379425'),
	(SELECT Id FROM Lekarze WHERE Specjalizacja='Alergolog'),	
	(SELECT Id FROM Poradnie WHERE Rodzaj='Alergologiczna'));
	
INSERT INTO Diagnoza VALUES
	('2016-01-15', '2016-03-15', 
	(SELECT Id FROM Wizyty WHERE Termin_wizyty='2015-01-15'),
	(SELECT Id FROM Lista_diagnoz WHERE Spis_diagnoz='Diagnoza 2')),
	('2015-04-11', '2015-06-11', 
	(SELECT Id FROM Wizyty WHERE Termin_wizyty='2015-04-11'),
	(SELECT Id FROM Lista_diagnoz WHERE Spis_diagnoz='Diagnoza 1')),
	('2015-05-03', '2015-07-03', 
	(SELECT Id FROM Wizyty WHERE Termin_wizyty='2015-05-03'),
	(SELECT Id FROM Lista_diagnoz WHERE Spis_diagnoz='Diagnoza 3')),
	('2015-06-25', '2015-08-25', 
	(SELECT Id FROM Wizyty WHERE Termin_wizyty='2015-06-25'),
	(SELECT Id FROM Lista_diagnoz WHERE Spis_diagnoz='Diagnoza 4')),
	('2015-11-12', '2016-01-12', 
	(SELECT Id FROM Wizyty WHERE Termin_wizyty='2015-11-12'),
	(SELECT Id FROM Lista_diagnoz WHERE Spis_diagnoz='Diagnoza 3')),
	('2016-01-15', '2016-03-15', 
	(SELECT Id FROM Wizyty WHERE Termin_wizyty='2016-01-15'),
	(SELECT Id FROM Lista_diagnoz WHERE Spis_diagnoz='Diagnoza 4')),
	('2016-02-01', '2016-04-01', 
	(SELECT Id FROM Wizyty WHERE Termin_wizyty='2016-02-01'),
	(SELECT Id FROM Lista_diagnoz WHERE Spis_diagnoz='Diagnoza 1')),
	('2016-03-19', '2016-05-19', 
	(SELECT Id FROM Wizyty WHERE Termin_wizyty='2016-03-19'),
	(SELECT Id FROM Lista_diagnoz WHERE Spis_diagnoz='Diagnoza 2')),
	('2016-03-20', '2016-05-20', 
	(SELECT Id FROM Wizyty WHERE Termin_wizyty='2016-03-20'),
	(SELECT Id FROM Lista_diagnoz WHERE Spis_diagnoz='Diagnoza 4')),
	('2016-06-01', '2016-06-05', 
	(SELECT Id FROM Wizyty WHERE Termin_wizyty='2016-06-01'),
	(SELECT Id FROM Lista_diagnoz WHERE Spis_diagnoz='Diagnoza 4')),
	('2017-02-11', '2017-04-11', 
	(SELECT Id FROM Wizyty WHERE Termin_wizyty='2017-02-11'),
	(SELECT Id FROM Lista_diagnoz WHERE Spis_diagnoz='Diagnoza 2'));
	
INSERT INTO Recepty VALUES
	('20mg', '2015-04-15', 
	(SELECT Id FROM Wizyty WHERE Termin_wizyty='2015-01-15'),
	(SELECT Id FROM Lista_recept WHERE Spis_recept='Recepta na lek 3')),
	('50mg', '2016-09-01', 
	(SELECT Id FROM Wizyty WHERE Termin_wizyty='2016-06-01'),
	(SELECT Id FROM Lista_recept WHERE Spis_recept='Recepta na lek 5')),
	('3 pastylki dziennie', '2016-07-20', 
	(SELECT Id FROM Wizyty WHERE Termin_wizyty='2016-03-20'),
	(SELECT Id FROM Lista_recept WHERE Spis_recept='Recepta na lek 4')),
	('50mg', '2016-08-01', 
	(SELECT Id FROM Wizyty WHERE Termin_wizyty='2016-06-01'),
	(SELECT Id FROM Lista_recept WHERE Spis_recept='Recepta na lek 2')),
	('150mg', '2016-10-16', 
	(SELECT Id FROM Wizyty WHERE Termin_wizyty='2016-08-16'),
	(SELECT Id FROM Lista_recept WHERE Spis_recept='Recepta na lek 2')),
	('150mg', '2017-02-15', 
	(SELECT Id FROM Wizyty WHERE Termin_wizyty='2016-12-15'),
	(SELECT Id FROM Lista_recept WHERE Spis_recept='Recepta na lek 2')),
	('100mg', '2017-03-05', 
	(SELECT Id FROM Wizyty WHERE Termin_wizyty='2017-01-05'),
	(SELECT Id FROM Lista_recept WHERE Spis_recept='Recepta na lek 2'));
	
INSERT INTO Badania VALUES
	('2015-01-15', 'Pozytywny', 
	(SELECT Id FROM Wizyty WHERE Termin_wizyty='2015-01-15'),
	(SELECT Id FROM Lista_badan WHERE Spis_badan='Badanie 3')),
	('2016-02-01', 'Negatywny - pacjent si� nie stawi�', 
	(SELECT Id FROM Wizyty WHERE Termin_wizyty='2016-02-01'),
	(SELECT Id FROM Lista_badan WHERE Spis_badan='Badanie 5')),
	('2016-03-19', 'Pozytywny', 
	(SELECT Id FROM Wizyty WHERE Termin_wizyty='2016-03-19'),
	(SELECT Id FROM Lista_badan WHERE Spis_badan='Badanie 5')),		
	('2016-03-20', 'Pozytywny', 
	(SELECT Id FROM Wizyty WHERE Termin_wizyty='2016-03-20'),
	(SELECT Id FROM Lista_badan WHERE Spis_badan='Badanie 5')),
	('2016-06-01', 'Pozytywny', 
	(SELECT Id FROM Wizyty WHERE Termin_wizyty='2016-06-01'),
	(SELECT Id FROM Lista_badan WHERE Spis_badan='Badanie 6')),	
	('2016-08-16', 'Negatywny - odmowa pacjenta w trakcie badania', 
	(SELECT Id FROM Wizyty WHERE Termin_wizyty='2016-08-16'),
	(SELECT Id FROM Lista_badan WHERE Spis_badan='Badanie 6')),	
	('2016-11-25', 'Pozytywny', 
	(SELECT Id FROM Wizyty WHERE Termin_wizyty='2016-11-25'),
	(SELECT Id FROM Lista_badan WHERE Spis_badan='Badanie 1')),	
	('2016-12-15', 'Pozytywny', 
	(SELECT Id FROM Wizyty WHERE Termin_wizyty='2016-12-15'),
	(SELECT Id FROM Lista_badan WHERE Spis_badan='Badanie 6')),	
	('2017-01-05', 'Pozytywny', 
	(SELECT Id FROM Wizyty WHERE Termin_wizyty='2017-01-05'),
	(SELECT Id FROM Lista_badan WHERE Spis_badan='Badanie 3'));	;	
	
