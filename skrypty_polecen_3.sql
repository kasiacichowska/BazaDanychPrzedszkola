--WHERE

--Znajdź wszystkich przedszkolaków, którzy mają ojca:
SELECT p.Id, o.Imie||' '||o.Nazwisko || ' ma ojca' AS DZIECI_Z_OJCEM
FROM Przedszkolak p
JOIN Osoba o ON p.Osoba_Id = o.Id
WHERE p.Ojciec IS NOT NULL;

--Znajdź wszystkie grupy, które mają przypisanego opiekuna przedszkola o określonym stopniu naukowym:
SELECT g.Id, g.Nazwa
FROM Grupa g
JOIN Historia_Opiek_w_Grupie h ON g.Id = h.Grupa_Id
JOIN Opiekun_Przedszkola o ON h.Opiekun_Przedszkola_Id = o.Id
WHERE o.Stopien_Naukowy = 'Magister';

--Znajdź wszystkie grupy, które mają zajęcia 23.05.2023
SELECT g.Id, g.Nazwa
FROM Grupa g
JOIN Zajecia z ON g.Id = z.Grupa_Id
JOIN Typ_Zajec t ON z.Typ_Zajec_Id = t.Id
WHERE z.Data_Zajec = '2023-05-23';

--Znajdź wszystkie oceny dla konkretnego przedszkolaka:
SELECT o.Przedszkolak_Id, o.Opiekun_Przedszkola_Id, o.Ocena, o.Data_Wstaw
FROM Ocena o
WHERE o.PRZEDSZKOLAK_ID = 4001;

--Znajdź wszystkie grupy, które mają salę o numerze 1 i pojemności większej niż 5:
SELECT g.Id, g.Nazwa
FROM Grupa g
JOIN Sala s ON g.Sala_Id = s.Id
WHERE s.Numer = 1 AND s.Pojemnosc > 5;


--SELECT

--Złączenie tabeli "Grupa" z tabelą "Sala" na podstawie id sali, aby wyświetlić nazwę grupy i numer sali:
SELECT g.Nazwa AS Grupa_Nazwa, s.Numer AS Sala_Numer
FROM Grupa g
JOIN Sala s ON g.Sala_Id = s.Id;

--Złączenie tabeli "Ocena" z tabelą "Opiekun_Przedszkola" na podstawie id opiekuna przedszkola, aby wyświetlić ocenę oraz stopień naukowy opiekuna:
SELECT o.Ocena, op.Stopien_Naukowy
FROM Ocena o
JOIN Opiekun_Przedszkola op ON o.Opiekun_Przedszkola_Id = op.Id;

--Złączenie tabeli "Zajecia" z tabelą "Typ_Zajec" na podstawie identyfikatora typu zajęć, aby wyświetlić nazwę typu zajęć oraz datę zajęć:
SELECT z.Data_Zajec, t.Nazwa AS Typ_Zajec_Nazwa
FROM Zajecia z
JOIN Typ_Zajec t ON z.Typ_Zajec_Id = t.Id;

--Złączenie tabeli "Historia_Opiek_w_Grupie" z tabelą "Grupa" na podstawie identyfikatora grupy, aby wyświetlić datę początku, datę zakończenia oraz nazwę grupy:
SELECT h.Data_Poczatku, h.Data_Zakoncz, g.Nazwa AS Grupa_Nazwa
FROM Historia_Opiek_w_Grupie h
JOIN Grupa g ON h.Grupa_Id = g.Id;

--Złączenie tabeli "Odbior" z tabelą "Przedszkolak" na podstawie identyfikatora przedszkolaka, aby wyświetlić datę odbioru i imię przedszkolaka:
SELECT o.Data_Odbioru, os.Imie
FROM Odbior o
JOIN Przedszkolak p ON o.Przedszkolak_Id = p.Id
JOIN Osoba os ON p.Osoba_Id = os.Id;


--SELECT z klauzulą GROUP BY, w tym co najmniej 2 z klauzulą HAVING

--Zliczanie liczby przedszkolaków w każdej grupie i wyświetlanie tylko tych grup, które mają co najmniej 1 przedszkolaka:
SELECT Grupa_Id, COUNT(Przedszkolak_Id) AS Liczba_Przedszkolakow
FROM Historia_Grup
GROUP BY Grupa_Id
HAVING COUNT(Przedszkolak_Id) >= 1;

--Obliczanie średniej oceny dla każdego przedszkolaka i wyświetlanie tylko tych przedszkolaków, których średnia ocena jest większa lub równa 4:
SELECT Przedszkolak_Id, AVG(Ocena) AS Srednia_Ocena
FROM Ocena
GROUP BY Przedszkolak_Id
HAVING AVG(Ocena) >= 4;

--Wyświetlanie informacji o grupach, których data rozpoczęcia jest wcześniejsza niż 2024-01-01 i mają co najmniej 1 przedszkolaka:
SELECT Grupa_Id, COUNT(Przedszkolak_Id) AS Liczba_Przedszkolakow
FROM Historia_Grup
WHERE Data_Startu < '2024-01-01'
GROUP BY Grupa_Id
HAVING COUNT(Przedszkolak_Id) >= 1;

--Zliczanie liczby zajęć dla każdej grupy:
SELECT Grupa_Id, COUNT(*) AS Liczba_Zajec
FROM Zajecia
GROUP BY Grupa_Id;

--Obliczanie sumy ocen dla każdego przedszkolaka:
SELECT Przedszkolak_Id, SUM(Ocena) AS Suma_Ocen
FROM Ocena
GROUP BY Przedszkolak_Id;
