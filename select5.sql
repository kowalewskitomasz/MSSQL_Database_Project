--zapytanie wy�wietlaj�ce wizyty lekarzy kt�rych imi� zaczyna si� na liter� A i wizyta odby�a si� pomi�dzy x a y

SELECT Imie, Nazwisko, Specjalizacja, Termin_wizyty FROM Lekarze
	JOIN Wizyty ON Lekarze.Id = Wizyty.id_lekarzy
		WHERE Imie LIKE 'A%' 
		AND Termin_wizyty BETWEEN '2015-10-11' AND '2016-11-26'