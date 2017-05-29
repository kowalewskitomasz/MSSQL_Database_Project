--zapytanie pokazuj¹ce wszystkie informacje o badaniu nr x wykonywanym na pacjencie y które nie przekroczy³o 30 dni od wykonania

SELECT *
	FROM Badania JOIN Lista_badan ON (id_listy_badan = Lista_badan.id)
	WHERE Spis_badan='Badanie 3' 
	AND id_wizyt IN 
		(SELECT id FROM Wizyty WHERE id_pacjentow IN 
			(SELECT id FROM Pacjenci WHERE PESEL='89102069493')) 
	AND DATEDIFF(day,termin,(SELECT cast (GETDATE() as DATE))) < 30