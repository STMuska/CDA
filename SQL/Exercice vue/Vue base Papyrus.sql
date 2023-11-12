-- 1.v_GlobalCde correspondant à la requête : A partir de la table Ligcom, afficher par code produit, la somme des quantités commandées et le prix total correspondant : on nommera la colonne correspondant à la somme des quantités commandées, QteTot et le prix total, PrixTot.

CREATE VIEW v_GlobalCde
AS
SELECT codart, SUM(qtecde) AS QteTot,  qtecde*priuni AS PrixTot
FROM ligcom
GROUP BY codart;

SELECT * FROM v_GlobalCde;

-- 2.v_VentesI100 correspondant à la requête : Afficher les ventes dont le code produit est le I100 (affichage de toutes les colonnes de la table Vente).

CREATE VIEW v_ventesI100
AS
SELECT distinct codart, numfou
FROM vente
WHERE codart="I100";

SELECT * FROM v_ventesI100;

-- 3.A partir de la vue précédente, créez v_VentesI100Grobrigan remontant toutes les ventes concernant le produit I100 et le fournisseur 00120.

CREATE VIEW v_ventesI100Grobrigan
AS
SELECT distinct codart, numfou
FROM vente
WHERE codart="I100" or numfou="00120";

SELECT * FROM v_ventesI100Grobrigan