-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-05-23 13:02:49.105

-- tables
-- Table: Grupa
CREATE TABLE Grupa (
    Id integer  NOT NULL,
    Nazwa varchar2(30)  NOT NULL,
    Data_Rozp date  NOT NULL,
    Data_Zakon date  NULL,
    Sala_Id integer  NOT NULL,
    CONSTRAINT Grupa_pk PRIMARY KEY (Id)
) ;

-- Table: Historia_Grup
CREATE TABLE Historia_Grup (
    Przedszkolak_Id integer  NOT NULL,
    Grupa_Id integer  NOT NULL,
    Data_Startu date  NOT NULL,
    Data_Konca date  NULL,
    CONSTRAINT Historia_Grup_pk PRIMARY KEY (Przedszkolak_Id,Grupa_Id)
) ;

-- Table: Historia_Opiek_w_Grupie
CREATE TABLE Historia_Opiek_w_Grupie (
    Grupa_Id integer  NOT NULL,
    Opiekun_Przedszkola_Id integer  NOT NULL,
    Data_Poczatku date  NOT NULL,
    Data_Zakoncz date  NULL,
    CONSTRAINT Historia_Opiek_w_Grupie_pk PRIMARY KEY (Grupa_Id,Opiekun_Przedszkola_Id)
) ;

-- Table: Ocena
CREATE TABLE Ocena (
    Przedszkolak_Id integer  NOT NULL,
    Opiekun_Przedszkola_Id integer  NOT NULL,
    Ocena integer  NOT NULL,
    Data_Wstaw date  NOT NULL,
    Zajecia_Id integer  NOT NULL,
    CONSTRAINT Ocena_pk PRIMARY KEY (Przedszkolak_Id,Opiekun_Przedszkola_Id,Ocena,Data_Wstaw)
) ;

-- Table: Odbior
CREATE TABLE Odbior (
    Rodzic_Id integer  NOT NULL,
    Przedszkolak_Id integer  NOT NULL,
    Data_Odbioru date  NOT NULL,
    CONSTRAINT Odbior_pk PRIMARY KEY (Rodzic_Id,Przedszkolak_Id,Data_Odbioru)
) ;

-- Table: Opiekun_Przedszkola
CREATE TABLE Opiekun_Przedszkola (
    Id integer  NOT NULL,
    Osoba_Id integer  NOT NULL,
    Stopien_Naukowy varchar2(255)  NOT NULL,
    Data_Rozp_Pracy date  NOT NULL,
    Data_Zakon_Pracy date  NULL,
    CONSTRAINT Opiekun_Przedszkola_pk PRIMARY KEY (Id)
) ;

-- Table: Osoba
CREATE TABLE Osoba (
    Id integer  NOT NULL,
    Imie varchar2(20)  NOT NULL,
    Nazwisko varchar2(30)  NOT NULL,
    Pesel char(11)  NOT NULL,
    Data_Urodzenia date  NOT NULL,
    Plec char(1)  NOT NULL,
    CONSTRAINT Osoba_pk PRIMARY KEY (Id)
) ;

-- Table: Przedszkolak
CREATE TABLE Przedszkolak (
    Id integer  NOT NULL,
    Osoba_Id integer  NOT NULL,
    Data_Rozpoczecia date  NOT NULL,
    Data_Zakonczenia date  NULL,
    Matka integer  NULL,
    Ojciec integer  NULL,
    CONSTRAINT Przedszkolak_pk PRIMARY KEY (Id)
) ;

-- Table: Rodzic
CREATE TABLE Rodzic (
    Id integer  NOT NULL,
    Osoba_Id integer  NOT NULL,
    CONSTRAINT Rodzic_pk PRIMARY KEY (Id)
) ;

-- Table: Sala
CREATE TABLE Sala (
    Id integer  NOT NULL,
    Numer integer  NOT NULL,
    Pojemnosc integer  NOT NULL,
    CONSTRAINT Sala_pk PRIMARY KEY (Id)
) ;

-- Table: Typ_Zajec
CREATE TABLE Typ_Zajec (
    Id integer  NOT NULL,
    Nazwa varchar2(255)  NOT NULL,
    CONSTRAINT Typ_Zajec_pk PRIMARY KEY (Id)
) ;

-- Table: Zajecia
CREATE TABLE Zajecia (
    Id integer  NOT NULL,
    Grupa_Id integer  NOT NULL,
    Typ_Zajec_Id integer  NOT NULL,
    Data_Zajec date  NOT NULL,
    CONSTRAINT Zajecia_pk PRIMARY KEY (Id)
) ;

-- foreign keys
-- Reference: Grupa_Sala (table: Grupa)
ALTER TABLE Grupa ADD CONSTRAINT Grupa_Sala
    FOREIGN KEY (Sala_Id)
    REFERENCES Sala (Id);

-- Reference: Historia_Grup_Grupa (table: Historia_Grup)
ALTER TABLE Historia_Grup ADD CONSTRAINT Historia_Grup_Grupa
    FOREIGN KEY (Grupa_Id)
    REFERENCES Grupa (Id);

-- Reference: Historia_Grup_Przedszkolak (table: Historia_Grup)
ALTER TABLE Historia_Grup ADD CONSTRAINT Historia_Grup_Przedszkolak
    FOREIGN KEY (Przedszkolak_Id)
    REFERENCES Przedszkolak (Id);

-- Reference: Ocena_Opiekun_Przedszkola (table: Ocena)
ALTER TABLE Ocena ADD CONSTRAINT Ocena_Opiekun_Przedszkola
    FOREIGN KEY (Opiekun_Przedszkola_Id)
    REFERENCES Opiekun_Przedszkola (Id);

-- Reference: Ocena_Przedszkolak (table: Ocena)
ALTER TABLE Ocena ADD CONSTRAINT Ocena_Przedszkolak
    FOREIGN KEY (Przedszkolak_Id)
    REFERENCES Przedszkolak (Id);

-- Reference: Ocena_Zajecia (table: Ocena)
ALTER TABLE Ocena ADD CONSTRAINT Ocena_Zajecia
    FOREIGN KEY (Zajecia_Id)
    REFERENCES Zajecia (Id);

-- Reference: Odbior_Przedszkolak (table: Odbior)
ALTER TABLE Odbior ADD CONSTRAINT Odbior_Przedszkolak
    FOREIGN KEY (Przedszkolak_Id)
    REFERENCES Przedszkolak (Id);

-- Reference: Odbior_Rodzic (table: Odbior)
ALTER TABLE Odbior ADD CONSTRAINT Odbior_Rodzic
    FOREIGN KEY (Rodzic_Id)
    REFERENCES Rodzic (Id);

-- Reference: Opiekun_Przedszkola_Osoba (table: Opiekun_Przedszkola)
ALTER TABLE Opiekun_Przedszkola ADD CONSTRAINT Opiekun_Przedszkola_Osoba
    FOREIGN KEY (Osoba_Id)
    REFERENCES Osoba (Id);

-- Reference: Przedszkolak_Osoba (table: Przedszkolak)
ALTER TABLE Przedszkolak ADD CONSTRAINT Przedszkolak_Osoba
    FOREIGN KEY (Osoba_Id)
    REFERENCES Osoba (Id);

-- Reference: Przedszkolak_Rodzic (table: Przedszkolak)
ALTER TABLE Przedszkolak ADD CONSTRAINT Przedszkolak_Rodzic
    FOREIGN KEY (Matka)
    REFERENCES Rodzic (Id);

-- Reference: Przedszkolak_Rodzic_2 (table: Przedszkolak)
ALTER TABLE Przedszkolak ADD CONSTRAINT Przedszkolak_Rodzic_2
    FOREIGN KEY (Ojciec)
    REFERENCES Rodzic (Id);

-- Reference: Rodzic_Osoba (table: Rodzic)
ALTER TABLE Rodzic ADD CONSTRAINT Rodzic_Osoba
    FOREIGN KEY (Osoba_Id)
    REFERENCES Osoba (Id);

-- Reference: Table_12_Grupa (table: Historia_Opiek_w_Grupie)
ALTER TABLE Historia_Opiek_w_Grupie ADD CONSTRAINT Table_12_Grupa
    FOREIGN KEY (Grupa_Id)
    REFERENCES Grupa (Id);

-- Reference: Table_12_Opiekun_Przedszkola (table: Historia_Opiek_w_Grupie)
ALTER TABLE Historia_Opiek_w_Grupie ADD CONSTRAINT Table_12_Opiekun_Przedszkola
    FOREIGN KEY (Opiekun_Przedszkola_Id)
    REFERENCES Opiekun_Przedszkola (Id);

-- Reference: Zajecia_Grupa (table: Zajecia)
ALTER TABLE Zajecia ADD CONSTRAINT Zajecia_Grupa
    FOREIGN KEY (Grupa_Id)
    REFERENCES Grupa (Id);

-- Reference: Zajecia_Typ_Zajec (table: Zajecia)
ALTER TABLE Zajecia ADD CONSTRAINT Zajecia_Typ_Zajec
    FOREIGN KEY (Typ_Zajec_Id)
    REFERENCES Typ_Zajec (Id);

-- End of file.

