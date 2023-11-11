-- 1. Calculer le nombre d'employés de chaque titre.

SELECT titre, COUNT(noemp) AS "nombre d'employé"
FROM employe 
GROUP BY titre;

-- 2. Calculer la moyenne des salaires et leur somme, par région.

SELECT SUM(salaire) AS "somme salaire", AVG(salaire) AS "moyenne salaire", noregion
FROM employe
JOIN dept ON employe.nodep = dept.nodept
GROUP by noregion;

-- 3. Afficher les numéros des départements ayant au moins 3 employés.

SELECT nodep
FROM employe
GROUP BY nodep
HAVING COUNT(noemp)>2;

-- 4. Afficher les lettres qui sont l'initiale d'au moins trois employés.

SELECT distinct SUBSTR(nom,1,1), count(noemp)
FROM employe
GROUP BY SUBSTR(nom,1,1)
HAVING COUNT(noemp)>2;

-- 5. Rechercher le salaire maximum et le salaire minimum parmi tous les salariés et l'écart entre les deux.

SELECT MAX(salaire), MIN(salaire), MAX(salaire)-MIN(salaire) AS "difference"
FROM employe;

-- 6. Rechercher le nombre de titres différents.

SELECT COUNT(DISTINCT titre)
FROM employe;

-- 7. Pour chaque titre, compter le nombre d'employés possédant ce titre.

SELECT DISTINCT titre, count(noemp)
FROM employe
GROUP BY  titre;

-- 8. Pour chaque nom de département, afficher le nom du département et le nombre d'employés.


SELECT DISTINCT dept.nom, COUNT(noemp)
FROM dept
JOIN employe ON dept.nodept = employe.nodep
GROUP BY dept.nom;

-- 9. Rechercher les titres et la moyenne des salaires par titre dont la moyenne est supérieure à la moyenne des salaires des Représentants.

SELECT titre, AVG(salaire)
FROM employe
GROUP BY titre
HAVING AVG(salaire) > (
	SELECT AVG(salaire)
	WHERE titre = "representants");

-- 10.Rechercher le nombre de salaires renseignés et le nombre de taux decommission renseignés. 

SELECT COUNT(salaire), count(tauxcom)
from employe;