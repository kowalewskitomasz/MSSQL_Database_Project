--widok do zapytania nr 4
--zapytanie wy�wietlaj�ce tabel� zawieraj�c� list� ilo�ci bada� u wszystkich pacjent�w (w porz�dku malej�cym) z uwzgl�dnieniem �e pacjent musi mie� wykonane co najmniej jedno badanie

CREATE VIEW [Badania_i_ich_lista] AS
	SELECT Termin, id_wizyt, Spis_badan FROM Badania
		JOIN Lista_badan ON Badania.id_listy_badan = Lista_badan.id 
