-- MagazinDate.sql
-- BD_MagazinVirtual
-- Tanase Elena-Alexandra si Tirsina Nicoleta

-- Inserare categorii
DELETE FROM mCategorie;
INSERT INTO mCategorie  VALUES ('EC', 'Electronice', 10);
INSERT INTO mCategorie  VALUES ('EL', 'Electrocasnice', 19);
INSERT INTO mCategorie  VALUES ('AI', 'Accesorii', 8);

-- Inserare producatori
DELETE FROM mProducator;
INSERT INTO mProducator  VALUES ('sg', 'Samsung', 'Str. Electronica 5', '0212233445');
INSERT INTO mProducator  VALUES ('lg', 'LG', 'Bd. Tehnologiei 12', '0212233555');
INSERT INTO mProducator  VALUES ('ae', 'Apple', 'Str. Inovatiei 7', '0212233666');
INSERT INTO mProducator  VALUES ('ps', 'Philips', 'Str. Luminilor 9', '0212233777');

-- Inserare produse
DELETE FROM mProdus;
INSERT INTO mProdus  VALUES ('PR-001', 'EC', 'Televizor Samsung 4K', 'sg', 10, 2500.00);
INSERT INTO mProdus  VALUES ('PR-002', 'EL', 'Frigider LG', 'lg', 5, 3200.00);
INSERT INTO mProdus  VALUES ('PR-003', 'EC', 'Laptop Apple', 'ae', 8, 7200.00);
INSERT INTO mProdus  VALUES ('PR-004', 'AI', 'Mouse Apple', 'ae', 20, 400.00);
INSERT INTO mProdus  VALUES ('PR-005', 'AI', 'Boxe Bluetooth', 'ps', 15, 300.00);
INSERT INTO mProdus  VALUES ('PR-006', 'EC', 'Smartphone Samsung S23', 'sg', 12, 4500.00);
INSERT INTO mProdus  VALUES ('PR-007', 'EL', 'Cuptor cu microunde LG', 'lg', 7, 700.00);
INSERT INTO mProdus  VALUES ('PR-008', 'EL', 'Masina de spalat LG', 'lg', 6, 2700.00);
INSERT INTO mProdus  VALUES ('PR-009', 'AI', 'Casti Wireless', 'ps', 25, 500.00);
INSERT INTO mProdus  VALUES ('PR-010', 'EC', 'Tableta Samsung Tab A8', 'sg', 10, 1800.00);
INSERT INTO mProdus  VALUES ('PR-011', 'AI', 'Suport Telefon', 'ps', 30, 100.00);
INSERT INTO mProdus  VALUES ('PR-012', 'EC', 'Monitor Philips', 'ps', 8, 1300.00);

-- Inserare comenzi
DELETE FROM mComanda;
INSERT INTO mComanda  VALUES ('C000001', '1960501123456', 'Ion Ionescu', TO_DATE('2025-04-20','YYYY-MM-DD'));
INSERT INTO mComanda  VALUES ('C000002', '2970101123456', 'Ana Popescu', TO_DATE('2025-04-21','YYYY-MM-DD'));
INSERT INTO mComanda  VALUES ('C000003', '1980305123456', 'Mihai Georgescu', TO_DATE('2025-04-22','YYYY-MM-DD'));
INSERT INTO mComanda  VALUES ('C000004', '2950601123456', 'Elena Tanase', TO_DATE('2025-04-23','YYYY-MM-DD'));
INSERT INTO mComanda  VALUES ('C000005', '2960701123456', 'Nicoleta Tirsina', TO_DATE('2025-04-24','YYYY-MM-DD'));
INSERT INTO mComanda  VALUES ('C000006', '1970801123456', 'Cristina Marinescu', TO_DATE('2025-04-25','YYYY-MM-DD'));
INSERT INTO mComanda  VALUES ('C000007', '1940901123456', 'Andrei Stoica', TO_DATE('2025-04-26','YYYY-MM-DD'));
INSERT INTO mComanda  VALUES ('C000008', '1991001123456', 'Diana Neagu', TO_DATE('2025-04-27','YYYY-MM-DD'));

-- Inserare produse pe comanda
DELETE FROM mListaCom;
-- Comanda 1
INSERT INTO mListaCom  VALUES ('C000001', 1, 'PR-001', 1);
INSERT INTO mListaCom  VALUES ('C000001', 2, 'PR-005', 2);
INSERT INTO mListaCom  VALUES ('C000001', 3, 'PR-009', 1);

-- Comanda 2
INSERT INTO mListaCom  VALUES ('C000002', 1, 'PR-002', 1);
INSERT INTO mListaCom  VALUES ('C000002', 2, 'PR-006', 1);
INSERT INTO mListaCom  VALUES ('C000002', 3, 'PR-004', 1);

-- Comanda 3
INSERT INTO mListaCom  VALUES ('C000003', 1, 'PR-003', 1);
INSERT INTO mListaCom  VALUES ('C000003', 2, 'PR-007', 2);
INSERT INTO mListaCom  VALUES ('C000003', 3, 'PR-011', 1);

-- Comanda 4
INSERT INTO mListaCom  VALUES ('C000004', 1, 'PR-008', 1);
INSERT INTO mListaCom  VALUES ('C000004', 2, 'PR-010', 1);
INSERT INTO mListaCom  VALUES ('C000004', 3, 'PR-009', 2);

-- Comanda 5
INSERT INTO mListaCom  VALUES ('C000005', 1, 'PR-001', 2);
INSERT INTO mListaCom  VALUES ('C000005', 2, 'PR-012', 1);
INSERT INTO mListaCom  VALUES ('C000005', 3, 'PR-005', 1);

-- Comanda 6
INSERT INTO mListaCom  VALUES ('C000006', 1, 'PR-002', 1);
INSERT INTO mListaCom  VALUES ('C000006', 2, 'PR-004', 2);
INSERT INTO mListaCom  VALUES ('C000006', 3, 'PR-006', 1);

-- Comanda 7
INSERT INTO mListaCom  VALUES ('C000007', 1, 'PR-003', 1);
INSERT INTO mListaCom  VALUES ('C000007', 2, 'PR-007', 1);
INSERT INTO mListaCom  VALUES ('C000007', 3, 'PR-011', 2);

-- Comanda 8
INSERT INTO mListaCom  VALUES ('C000008', 1, 'PR-008', 2);
INSERT INTO mListaCom  VALUES ('C000008', 2, 'PR-010', 1);
INSERT INTO mListaCom  VALUES ('C000008', 3, 'PR-012', 1);
