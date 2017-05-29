--widok do zapytania nr 4
--zapytanie wyœwietlaj¹ce tabelê zawieraj¹c¹ listê iloœci badañ u wszystkich pacjentów (w porz¹dku malej¹cym) z uwzglêdnieniem ¿e pacjent musi mieæ wykonane co najmniej jedno badanie

CREATE VIEW [Badania_i_ich_lista] AS
	SELECT Termin, id_wizyt, Spis_badan FROM Badania
		JOIN Lista_badan ON Badania.id_listy_badan = Lista_badan.id 
