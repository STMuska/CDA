-- 1 - Afficher la liste des hôtels. Le résultat doit faire apparaître le nom de l’hôtel et la ville

SELECT hot_nom, hothotelhotel_ville
FROM hotel

-- 2 - Afficher la ville de résidence de Mr White Le résultat doit faire apparaître le nom, le prénom, et l'adresse du client

SELECT cli_nom, cli_prenom, cli_adresse, cli_ville
FROM client
WHERE cli_nom = "White"

-- 3 - Afficher la liste des stations dont l’altitude < 1000 Le résultat doit faire apparaître le nom de la station et l'altitude

SELECT sta_nom, sta_altitude
FROM station
WHERE sta_altitude < 1000;

-- 4 - Afficher la liste des chambres ayant une capacité > 1 Le résultat doit faire apparaître le numéro de la chambre ainsi que la capacité

SELECT cha_numero, cha_capacite
FROM chambre
WHERE cha_capacite > 1;

-- 5 - Afficher les clients n’habitant pas à Londre Le résultat doit faire apparaître le nom du client et la ville

SELECT cli_nom, cli_ville
FROM client
WHERE cli_ville != "Londre";

-- 6 - Afficher la liste des hôtels située sur la ville de Bretou et possédant une catégorie>3 Le résultat doit faire apparaître le nom de l'hôtel, ville et la catégorie

SELECT hot_nom, hot_ville, hot_categorie
FROM hotel
WHERE hot_ville = "Bretou" AND hot_categorie > 3;

-- 7 - Afficher la liste des hôtels avec leur station Le résultat doit faire apparaître le nom de la station, le nom de l’hôtel, la catégorie, la ville)

SELECT sta_nom, hot_nom, hot_categorie, hot_ville
FROM station
JOIN hotel ON station.sta_id = hotel.hot_sta_id;

-- 8 - Afficher la liste des chambres et leur hôtel Le résultat doit faire apparaître le nom de l’hôtel, la catégorie, la ville, le numéro de la chambre)

SELECT hot_nom, hot_categorie, hot_ville, cha_numero
FROM hotel
JOIN chambre ON hotel.hot_id = chambre.cha_hot_id;

-- 9 - Afficher la liste des chambres de plus d'une place dans des hôtels situés sur la ville de Bretou Le résultat doit faire apparaître le nom de l’hôtel, la catégorie, la ville, le numéro de la chambre et sa capacité)

SELECT hot_nom, hot_categorie, hot_ville, cha_numero, cha_capacite
FROM hotel
JOIN chambre ON hotel.hot_id = chambre.cha_hot_id
WHERE cha_capacite > 1;

-- 10 - Afficher la liste des réservations avec le nom des clients Le résultat doit faire apparaître le nom du client, le nom de l’hôtel, la date de réservation

SELECT cli_nom, hot_nom, res_date
FROM client
JOIN reservation ON client.cli_id = reservation.res_cli_id
JOIN chambre ON chambre.cha_id = reservation.res_cha_id
JOIN hotel ON hotel.hot_id = chambre.cha_hot_id;

-- 11 - Afficher la liste des chambres avec le nom de l’hôtel et le nom de la station Le résultat doit faire apparaître le nom de la station, le nom de l’hôtel, le numéro de la chambre et sa capacité)

SELECT cha_numero,cha_capacite, hot_nom, sta_nom
FROM  station
JOIN hotel ON station.sta_id = hotel.hot_sta_id
JOIN chambre ON hotel.hot_id = chambre.cha_hot_id;

-- 12 - Afficher les réservations avec le nom du client et le nom de l’hôtel Le résultat doit faire apparaître le nom du client, le nom de l’hôtel, la date de début du séjour et la durée du séjour

SELECT cli_nom, hot_nom, res_date_debut, DATEDIFF(res_date_fin, res_date_debut) AS "durée séjour"
FROM client
JOIN reservation ON client.cli_id = reservation.res_cli_id
JOIN chambre ON chambre.cha_id = reservation.res_cha_id
JOIN hotel ON hotel.hot_id = chambre.cha_hot_id;

-- 13 - Compter le nombre d’hôtel par station

SELECT sta_nom, COUNT(hot_id)
FROM station 
JOIN hotel ON station.sta_id = hotel.hot_sta_id
GROUP BY sta_nom;

-- 14 - Compter le nombre de chambre par station

SELECT sta_nom, COUNT(cha_numero)
FROM station
JOIN hotel ON station.sta_id = hotel.hot_sta_id
JOIN chambre ON hotel.hot_id = chambre.cha_hot_id
GROUP BY sta_nom;

-- 15 - Compter le nombre de chambre par station ayant une capacité > 1

SELECT sta_nom, COUNT(cha_numero)
FROM station
JOIN hotel ON station.sta_id = hotel.hot_sta_id
JOIN chambre ON hotel.hot_id = chambre.cha_hot_id
WHERE cha_capacite > 1
GROUP BY sta_nom;

-- 16 - Afficher la liste des hôtels pour lesquels Mr Squire a effectué une réservation

SELECT hot_nom
FROM hotel
JOIN chambre ON hotel.hot_id = chambre.cha_hot_id
JOIN reservation ON chambre.cha_id = reservation.res_cha_id
JOIN client ON client.cli_id = reservation.res_cli_id
WHERE cli_id = 4;

-- 17 - Afficher la durée moyenne des réservations par station

SELECT hot_sta_id,avg(DATEDIFF(res_date_fin, res_date_debut)) 
FROM reservation
JOIN client ON client.cli_id = reservation.res_cli_id  
JOIN chambre ON chambre.cha_id = reservation.res_cha_id
JOIN hotel ON hotel.hot_id = chambre.cha_hot_id  
GROUP BY hot_sta_id;
