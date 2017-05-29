--wlasciwe zapytanie
--zapytanie wy�wietlaj�ce tabel� zawieraj�c� list� ilo�ci bada� u wszystkich pacjent�w (w porz�dku malej�cym) z uwzgl�dnieniem �e pacjent musi mie� wykonane co najmniej jedno badanie

SELECT Nazwisko, COUNT(Spis_badan) FROM Wizyty
	JOIN Pacjenci ON Wizyty.id_pacjentow = Pacjenci.Id
	JOIN [Badania_i_ich_lista] ON Wizyty.Termin_wizyty = [Badania_i_ich_lista].Termin
GROUP BY Nazwisko
HAVING COUNT(Spis_badan) >= 1
ORDER BY COUNT(Spis_badan) DESC