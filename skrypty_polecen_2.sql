INSERT INTO Osoba (Id, Imie, Nazwisko, Pesel, Data_Urodzenia, Plec)
VALUES
    (0001, 'Adam', 'Kowalski', '16010512345', '2016-01-05', 'M');

INSERT INTO Osoba (Id, Imie, Nazwisko, Pesel, Data_Urodzenia, Plec)
VALUES
    (0002, 'Zuzanna', 'Nowak', '16031223456', '2016-03-12', 'K');

INSERT INTO Osoba (Id, Imie, Nazwisko, Pesel, Data_Urodzenia, Plec)
VALUES
    (0003, 'Jakub', 'Wisniewski', '16041834567', '2016-04-18', 'M');

INSERT INTO Osoba (Id, Imie, Nazwisko, Pesel, Data_Urodzenia, Plec)
VALUES
    (0004, 'Lena', 'Kaczmarek', '16070745678', '2016-07-07', 'K');

INSERT INTO Osoba (Id, Imie, Nazwisko, Pesel, Data_Urodzenia, Plec)
VALUES
    (1001, 'Piotr', 'Kowalski', '75010112345', '1975-01-01', 'M');

INSERT INTO Osoba (Id, Imie, Nazwisko, Pesel, Data_Urodzenia, Plec)
VALUES
    (1002, 'Anna', 'Kowalska', '78020223456', '1978-02-02', 'K');

INSERT INTO Osoba (Id, Imie, Nazwisko, Pesel, Data_Urodzenia, Plec)
VALUES
    (1003, 'Pawel', 'Nowak', '80030334567', '1980-03-03', 'M');

INSERT INTO Osoba (Id, Imie, Nazwisko, Pesel, Data_Urodzenia, Plec)
VALUES
    (1004, 'Katarzyna', 'Nowak', '82040445678', '1982-04-04', 'K');

INSERT INTO Osoba (Id, Imie, Nazwisko, Pesel, Data_Urodzenia, Plec)
VALUES
    (1005, 'Tomasz', 'Wisniewski', '79050556789', '1979-05-05', 'M');

INSERT INTO Osoba (Id, Imie, Nazwisko, Pesel, Data_Urodzenia, Plec)
VALUES
    (1006, 'Magdalena', 'Wisniewska', '81060667890', '1981-06-06', 'K');

INSERT INTO Osoba (Id, Imie, Nazwisko, Pesel, Data_Urodzenia, Plec)
VALUES
    (1007, 'Grzegorz', 'Kaczmarek', '76070778901', '1976-07-07', 'M');

INSERT INTO Osoba (Id, Imie, Nazwisko, Pesel, Data_Urodzenia, Plec)
VALUES
    (1008, 'Marta', 'Kaczmarek', '79080889012', '1979-08-08', 'K');

INSERT INTO Osoba (Id, Imie, Nazwisko, Pesel, Data_Urodzenia, Plec)
VALUES
    (2001, 'Anna', 'Michalska', '84010112345', '1984-01-01', 'K');

INSERT INTO Osoba (Id, Imie, Nazwisko, Pesel, Data_Urodzenia, Plec)
VALUES
    (2002, 'Piotr', 'Nowicki', '83020223456', '1983-02-02', 'M');


INSERT INTO Rodzic (Id, Osoba_Id)
VALUES
    (3001, 1001);

INSERT INTO Rodzic (Id, Osoba_Id)
VALUES
    (3002, 1002);

INSERT INTO Rodzic (Id, Osoba_Id)
VALUES
    (3003, 1003);

INSERT INTO Rodzic (Id, Osoba_Id)
VALUES
    (3004, 1004);

INSERT INTO Rodzic (Id, Osoba_Id)
VALUES
    (3005, 1005);

INSERT INTO Rodzic (Id, Osoba_Id)
VALUES
    (3006, 1006);

INSERT INTO Rodzic (Id, Osoba_Id)
VALUES
    (3007, 1007);

INSERT INTO Rodzic (Id, Osoba_Id)
VALUES
    (3008, 1008);

INSERT INTO Przedszkolak (Id, Osoba_Id, Data_Rozpoczecia, Data_Zakonczenia, Matka, Ojciec)
VALUES
    (4001, 0001, '2022-09-01', null, 3002, 3001);

INSERT INTO Przedszkolak (Id, Osoba_Id, Data_Rozpoczecia, Data_Zakonczenia, Matka, Ojciec)
VALUES
    (4002, 0002, '2022-09-01', null, 3004, 3003);

INSERT INTO Przedszkolak (Id, Osoba_Id, Data_Rozpoczecia, Data_Zakonczenia, Matka, Ojciec)
VALUES
    (4003, 0003, '2022-09-01', null, 3006, 3005);

INSERT INTO Przedszkolak (Id, Osoba_Id, Data_Rozpoczecia, Data_Zakonczenia, Matka, Ojciec)
VALUES
    (4004, 0004, '2022-09-01', null, 3008, 3007);

INSERT INTO Opiekun_Przedszkola (Id, Osoba_Id, Stopien_Naukowy, Data_Rozp_Pracy, Data_Zakon_Pracy)
VALUES
    (5001, 2001, 'Magister', '2021-09-01', null);

INSERT INTO Opiekun_Przedszkola (Id, Osoba_Id, Stopien_Naukowy, Data_Rozp_Pracy, Data_Zakon_Pracy)
VALUES
    (5002, 2002, 'Licencjat', '2021-09-01', '2023-06-24');

INSERT INTO Odbior (Rodzic_Id, Przedszkolak_Id, Data_Odbioru)
VALUES
    (3001, 4001, '2023-05-23');

INSERT INTO Odbior (Rodzic_Id, Przedszkolak_Id, Data_Odbioru)
VALUES
    (3003, 4002, '2023-05-23');

INSERT INTO Odbior (Rodzic_Id, Przedszkolak_Id, Data_Odbioru)
VALUES
    (3006, 4003, '2023-05-23');

INSERT INTO Odbior (Rodzic_Id, Przedszkolak_Id, Data_Odbioru)
VALUES
    (3008, 4004, '2023-05-23');


INSERT INTO Typ_Zajec (Id, Nazwa)
VALUES
    (6001, 'Ruchowe');

INSERT INTO Typ_Zajec (Id, Nazwa)
VALUES
    (6002, 'Poznawcze');

INSERT INTO Typ_Zajec (Id, Nazwa)
VALUES
    (6003, 'Artystyczne');

INSERT INTO Sala (Id, Numer, Pojemnosc)
VALUES
    (7001, 1, 15);

INSERT INTO Sala (Id, Numer, Pojemnosc)
VALUES
    (7002, 2, 15);


INSERT INTO Grupa (Id, Nazwa, Data_Rozp, Data_Zakon, Sala_Id)
VALUES
    (8001, 'Muchomorki', '2022-09-01', null, 7001);

INSERT INTO Grupa (Id, Nazwa, Data_Rozp, Data_Zakon, Sala_Id)
VALUES
    (8002, 'Motylki', '2022-09-01', '2023-06-24', 7002);

INSERT INTO Historia_Opiek_w_Grupie (Grupa_Id, Opiekun_Przedszkola_Id, Data_Poczatku, Data_Zakoncz)
VALUES
    (8001, 5001, '2022-09-01', '2023-06-24');

INSERT INTO Historia_Opiek_w_Grupie (Grupa_Id, Opiekun_Przedszkola_Id, Data_Poczatku, Data_Zakoncz)
VALUES
    (8002, 5002, '2022-09-01', null);


INSERT INTO Historia_Grup (Przedszkolak_Id, Grupa_Id, Data_Startu, Data_Konca)
VALUES
    (4001, 8001, '2022-09-01', '2023-06-24');

INSERT INTO Historia_Grup (Przedszkolak_Id, Grupa_Id, Data_Startu, Data_Konca)
VALUES
    (4002, 8001, '2022-09-01', null);

INSERT INTO Historia_Grup (Przedszkolak_Id, Grupa_Id, Data_Startu, Data_Konca)
VALUES
    (4003, 8002, '2022-09-01', null);

INSERT INTO Historia_Grup (Przedszkolak_Id, Grupa_Id, Data_Startu, Data_Konca)
VALUES
    (4004, 8002, '2022-09-01', null);

INSERT INTO Zajecia (Id, Grupa_Id, Typ_Zajec_Id, Data_Zajec)
VALUES
    (9001, 8001, 6001, '2023-05-23');

INSERT INTO Zajecia (Id, Grupa_Id, Typ_Zajec_Id, Data_Zajec)
VALUES
    (9002, 8001, 6002, '2023-05-23');

INSERT INTO Zajecia (Id, Grupa_Id, Typ_Zajec_Id, Data_Zajec)
VALUES
    (9003,8002, 6002, '2023-05-23');

INSERT INTO Zajecia (Id, Grupa_Id, Typ_Zajec_Id, Data_Zajec)
VALUES
    (9004, 8002, 6003, '2023-05-23');

INSERT INTO Ocena (Zajecia_Id, Przedszkolak_Id, Opiekun_Przedszkola_Id, Ocena, Data_Wstaw)
VALUES
    (9001, 4001, 5001, 5, '2023-05-23');

INSERT INTO Ocena (Zajecia_Id, Przedszkolak_Id, Opiekun_Przedszkola_Id, Ocena, Data_Wstaw)
VALUES
    (9004, 4004, 5002, 6, '2023-05-23');
