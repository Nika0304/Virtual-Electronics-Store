-- Oracle APEX 22.2.2 SQL
-- Schema: BD_MagazinVirtual
-- Tanase Elena-Alexandra si Tirsina Nicoleta

DROP TABLE mListaCom CASCADE CONSTRAINTS;
DROP TABLE mProdus CASCADE CONSTRAINTS;
DROP TABLE mComanda CASCADE CONSTRAINTS;
DROP TABLE mProducator CASCADE CONSTRAINTS;
DROP TABLE mCategorie CASCADE CONSTRAINTS;


CREATE TABLE mComanda(
cid CHAR(7) NOT NULL,  --id comanda
cnp CHAR(13) NOT NULL,
nume VARCHAR2(40) NOT NULL,
datan DATE NOT NULL,

CONSTRAINT comanda_pk PRIMARY KEY(cid),
CONSTRAINT comanda_ck CHECK (REGEXP_LIKE(cid, '^C[0-9]{6}$'))
);


CREATE TABLE mProducator(
codPr CHAR(2) NOT NULL, --cod producator 
nume VARCHAR2(40) NOT NULL,   --NU STIM DACA POATE FI NULL SAU NU
adresa VARCHAR2(40),
tel VARCHAR2(12),

CONSTRAINT producator_pk PRIMARY KEY(codPr),
CONSTRAINT producator_ck CHECK (REGEXP_LIKE(codPr, '^[A-Za-z]{2}$'))
);


CREATE TABLE mCategorie(
tipCat CHAR(2),
categorie VARCHAR2(40) NOT NULL,
tva NUMBER(3) NOT NULL,

CONSTRAINT categorie_pk PRIMARY KEY(tipCat),
CONSTRAINT categorie_ck CHECK (REGEXP_LIKE(tipCat, '^[A-Za-z]{2}$'))
);


CREATE TABLE mProdus(
codP VARCHAR2 (10) NOT NULL,  --cod produs
tipCat CHAR (2) NOT NULL,     --tip categorie foreign key
denumire VARCHAR2 (40) NOT NULL,      --denumire produs
codPr CHAR (2) NOT NULL,      --cod producator foreign key
stoc NUMBER(3) DEFAULT 0,
pret NUMBER(7,2) NOT NULL,

CONSTRAINT produs_pk PRIMARY KEY(codP),
CONSTRAINT producator_fk FOREIGN KEY (codPr) REFERENCES mProducator(codPr) on delete cascade,
CONSTRAINT categorie_fk FOREIGN KEY(tipCat) REFERENCES mCategorie(tipCat) on delete cascade,
CONSTRAINT produs_ck CHECK (REGEXP_LIKE(codP, '^[A-Za-z]{2}-[A-Za-z0-9]{1,7}$'))

);

CREATE TABLE mListaCom(
cid CHAR(7),  --id comanda foreign key
poz NUMBER(2), 
codP VARCHAR2(10),  --cod produs foreign key
buc NUMBER(3) DEFAULT 1,  

CONSTRAINT lista_pk PRIMARY KEY(cid,poz),
CONSTRAINT comanda_fk FOREIGN KEY(cid) REFERENCES mComanda(cid) on delete cascade,
CONSTRAINT produs_fk FOREIGN KEY(codP) REFERENCES mProdus(codP) on delete cascade,

CONSTRAINT lista_ck CHECK (REGEXP_LIKE(cid, '^C[0-9]{6}$'))
);



