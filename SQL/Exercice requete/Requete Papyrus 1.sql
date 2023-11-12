-- 1. Quelles sont les commandes du fournisseur 09120 ?

SELECT NUMCOM
FROM entcom
WHERE NUMFOU = 09120;


-- 2. Afficher le code des fournisseurs pour lesquels des commandes ont étépassées.

SELECT DISTINCT numfou
FROM entcom;

-- 3. Afficher le nombre de commandes fournisseurs passées, et le nombre de fournisseur concernés.

SELECT COUNT(fournis.numfou), COUNT(numcom)
FROM fournis
JOIN entcom ON entcom.numfou = fournis.numfou;


-- 4. Editer les produits ayant un stock inférieur ou égal au stock d'alerte et dont la quantité annuelle est inférieur est inférieure à 1000 (informations à fournir : n° produit, libellé produit, stock, stock actuel d'alerte, quantité annuelle)

SELECT codart, libart, stkale, stkphy, qteann
FROM produit
WHERE stkphy <= stkale AND qteann < 1000;

-- 5. Quels sont les fournisseurs situés dans les départements 75 78 92 77 ? L’affichage (département, nom fournisseur) sera effectué par département décroissant, puis par ordre alphabétique

SELECT nomfou, posfou
FROM fournis
WHERE LEFT(posfou, 2) = "75" OR LEFT(posfou, 2) = "78" OR LEFT(posfou, 2) = "92" OR LEFT(posfou, 2) = "77"
ORDER BY posfou DESC, nomfou ASC;

-- 6. Quelles sont les commandes passées au mois de mars et avril ?

SELECT numcom
FROM entcom
WHERE datcom LIKE("____-03-%") OR datcom LIKE("____-04-%");

-- 7. Quelles sont les commandes du jour qui ont des observations particulières ? (Affichage numéro de commande, date de commande)

SELECT numcom, obscom
FROM entcom 
WHERE DATE(datcom) = (
    SELECT cast(NOW() AS DATE)) 
AND obscom != "";

-- 8. Lister le total de chaque commande par total décroissant (Affichage numéro de commande et total)

SELECT numcom, sum(priuni * qteliv) AS total
FROM ligcom 
GROUP BY numcom
ORDER BY total DESC;

-- 9. Lister les commandes dont le total est supérieur à 10 000€ ; on exclura dans le calcul du total les articles commandés en quantité supérieure ou égale à 1000. (Affichage numéro de commande et total)

SELECT numcom, sum(priuni * qteliv) AS total
FROM ligcom 
WHERE qtecde >= 1000
GROUP BY numcom
	HAVING total > 10000
ORDER BY total DESC;

-- 10. Lister les commandes par nom fournisseur (Afficher le nom du fournisseur, le numéro de commande et la date)

SELECT nomfou, numcom, datcom
FROM entcom
JOIN fournis ON fournis.numfou = entcom.numfou;

-- 11. Sortir les produits des commandes ayant le mot "urgent' en observation? (Afficher le numéro de commande, le nom du fournisseur, le libellé duproduit et le sous total = quantité commandée * Prix unitaire)

SELECT entcom.numcom, nomfou, libart, priuni * qtecde AS Prix
FROM entcom 
JOIN fournis ON entcom.numfou = fournis.numfou
JOIN ligcom ON ligcom.numcom = entcom.numcom
JOIN produit ON produit.codart = ligcom.codart
WHERE obscom = "Commande urgente";

-- 12. Coder de 2 manières différentes la requête suivante : Lister le nom des fournisseurs susceptibles de livrer au moins un article

SELECT DISTINCT fournis.nomfou
FROM fournis
JOIN entcom ON fournis.numfou = entcom.numfou
JOIN ligcom ON ligcom.numcom = entcom.numcom
WHERE ligcom.qteliv > 0;

-- 13. Coder de 2 manières différentes la requête suivante Lister les commandes (Numéro et date) dont le fournisseur est celui de la commande 70210 :

SELECT numcom, datcom
FROM entcom 
WHERE numfou = (
	SELECT numfou
	FROM entcom 
	WHERE numcom = 70210);

-- 14. Dans les articles susceptibles d’être vendus, lister les articles moins chers (basés sur Prix1) que le moins cher des rubans (article dont le premier caractère commence par R). On affichera le libellé de l’article et prix1

SELECT libart, prix1
FROM vente 
JOIN produit ON produit.codart = vente.codart
WHERE prix1 < ALL (
	SELECT prix1
	FROM vente 
	WHERE codart LIKE "R%");

-- 15. Editer la liste des fournisseurs susceptibles de livrer les produits dont le stock est inférieur ou égal à 150 % du stock d'alerte. La liste es triée par produit puis fournisseur

SELECT DISTINCT nomfou, libart
FROM fournis 
JOIN vente ON vente.numfou = fournis.numfou
JOIN produit ON produit.codart = vente.codart
WHERE stkphy >= (stkale * 1.5)
ORDER BY libart, nomfou;

-- 16. Éditer la liste des fournisseurs susceptibles de livrer les produit dont le stock est inférieur ou égal à 150 % du stock d'alerte et un délai de livraison d'au plus 30 jours. La liste est triée par fournisseur puis produit

SELECT DISTINCT nomfou, libart
FROM fournis 
JOIN vente ON vente.numfou = fournis.numfou
JOIN produit ON produit.codart = vente.codart
WHERE stkphy >= (stkale * 1.5) AND delliv < 31
ORDER BY nomfou, libart;

-- 17. Avec le même type de sélection que ci-dessus, sortir un total des stocks par fournisseur trié par total décroissant

SELECT nomfou, COUNT(libart)
FROM fournis
JOIN vente ON vente.numfou = fournis.numfou
JOIN produit ON produit.codart = vente.codart
GROUP BY nomfou
ORDER BY COUNT(libart) DESC

-- 18. En fin d'année, sortir la liste des produits dont la quantité réellement commandée dépasse 90% de la quantité annuelle prévue.

SELECT libart
FROM produit 
JOIN ligcom ON produit.codart = ligcom.codar
WHERE (qteann * 0.9) < qtecde
GROUP BY codart;

-- 19. Calculer le chiffre d'affaire par fournisseur pour l'année 93 sachant que les prix indiqués sont hors taxes et que le taux de TVA est 20%.

SELECT nomfou, sum(qteliv * priuni) * 1.2
FROM fournis 
JOIN vente ON vente.numfou = fournis.numfou
JOIN ligcom ON ligcom.codart = vente.codart
GROUP BY nomfou;
