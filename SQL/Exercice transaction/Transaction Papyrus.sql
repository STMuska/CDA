START TRANSACTION;
SELECT numfou FROM fournis WHERE numfou=120;
UPDATE fournis SET nomfou= 'GROSBRIGAND' WHERE numfou=120;
SELECT nomfou FROM fournis WHERE numfou=120;
COMMIT 