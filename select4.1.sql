--wlasciwe zapytanie
--zapytanie wyœwietlaj¹ce tabelê zawieraj¹c¹ listê iloœci badañ u wszystkich pacjentów (w porz¹dku malej¹cym) z uwzglêdnieniem ¿e pacjent musi mieæ wykonane co najmniej jedno badanie

SELECT Nazwisko, COUNT(Spis_badan) FROM Wizyty
	JOIN Pacjenci ON Wizyty.id_pacjentow = Pacjenci.Id
	JOIN [Badania_i_ich_lista] ON Wizyty.Termin_wizyty = [Badania_i_ich_lista].Termin
GROUP BY Nazwisko
HAVING COUNT(Spis_badan) >= 1
ORDER BY COUNT(Spis_badan) DESC