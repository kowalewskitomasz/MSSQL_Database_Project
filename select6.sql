--zapytanie wy�wietlaj�ce ile diagnoz wyda� kt�ry lekarz i na ile bada� skierowa� swoich pacjent�w

SELECT  Nazwisko, COUNT(Badania.Id) AS Ilosc_badan, COUNT(Diagnoza.Id) AS Ilosc_diagnoz--,COUNT(WYNIK) 
	FROM Wizyty 
	LEFT JOIN Diagnoza ON Wizyty.Id = Diagnoza.id_wizyt
	JOIN Lekarze ON Wizyty.id_lekarzy = Lekarze.Id
	LEFT JOIN Badania ON Wizyty.Id = Badania.id_wizyt
GROUP BY Nazwisko