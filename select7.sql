--ile by³o wizyt w danej poradni i przy ilu z nich wydano diagnoze

SELECT  Rodzaj, COUNT(Rodzaj) as ilosc_wizyt, COUNT(Diagnoza.Id) as ilosc_diagnoz FROM Wizyty 
	JOIN Poradnie ON Wizyty.id_poradni=Poradnie.Id
	LEFT JOIN Diagnoza ON Wizyty.id = Diagnoza.id_wizyt
	GROUP BY Rodzaj
	ORDER BY ilosc_wizyt DESC