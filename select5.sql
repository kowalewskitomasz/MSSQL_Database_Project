--zapytanie wyœwietlaj¹ce wizyty lekarzy których imiê zaczyna siê na literê A i wizyta odby³a siê pomiêdzy x a y

SELECT Imie, Nazwisko, Specjalizacja, Termin_wizyty FROM Lekarze
	JOIN Wizyty ON Lekarze.Id = Wizyty.id_lekarzy
		WHERE Imie LIKE 'A%' 
		AND Termin_wizyty BETWEEN '2015-10-11' AND '2016-11-26'