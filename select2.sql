--Wyœwietl dane i numery telefonów wszystkich pacjentów którym do 30 dni przed podanym przedzialem czasowym zosta³ przepisany lek x.

SELECT  Imie, Nazwisko, PESEL, Numer_telefonu, Termin_wizyty
	FROM Wizyty 
	JOIN Pacjenci ON  Wizyty.id_pacjentow = Pacjenci.id 
	JOIN Recepty ON Wizyty.id = Recepty.id_wizyt
WHERE id_listy_recept IN (SELECT id FROM Lista_recept WHERE Spis_recept = 'Recepta na lek 2') 
	AND DATEDIFF(day,Termin_wizyty,'2017-01-10') < 30
	AND DATEDIFF(day,Termin_wizyty,'2017-01-10') > 0
	