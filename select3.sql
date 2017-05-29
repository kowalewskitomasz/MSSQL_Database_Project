--zapytanie wyœwietlaj¹ce wyniki badania x które odby³o siê w okresie czasu od x do y + grupowanie

SELECT Termin, Wynik FROM Badania 
	WHERE id_listy_badan IN
		(SELECT id FROM Lista_badan WHERE Spis_badan = 'Badanie 5') 
		 AND Termin BETWEEN '2016-01-15' AND '2016-03-19'
GROUP BY Termin, Wynik

