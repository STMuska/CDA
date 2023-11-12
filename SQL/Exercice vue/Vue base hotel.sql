-- 1.Afficher la liste des hôtels avec leur station

CREATE VIEW v_hotel_station
AS
SELECT hot_nom, sta_nom
FROM hotel
JOIN station ON station.sta_id = hotel.hot_sta_id;

SELECT * FROM v_hotel_station;

-- 2.Afficher la liste des chambres et leur hôtel

CREATE VIEW v_chambre_hotel
AS
SELECT cha_numero, hot_nom
FROM chambre
JOIN hotel ON hotel.hot_id = chambre.cha_hot_id;

SELECT * FROM v_chambre_hotel;

-- 3.Afficher la liste des réservations avec le nom des clients

CREATE VIEW v_client_reservation
AS
SELECT cli_nom, res_id
FROM client
JOIN reservation ON client.cli_id = reservation.res_cli_id;

SELECT * FROM v_client_reservation;

--  4.Afficher la liste des chambres avec le nom de l’hôtel et le nom de la station

CREATE VIEW v_chambre_hotel_station
AS
SELECT cha_numero, hot_nom, sta_nom
FROM chambre
JOIN hotel ON hotel.hot_id = chambre.cha_hot_id
JOIN station ON station.sta_id = hotel.hot_sta_id;

SELECT * FROM v_chambre_hotel_station;

-- 5.Afficher les réservations avec le nom du client et le nom de l’hôtel

CREATE VIEW v_reservation_client_hotel
AS
SELECT res_id, cli_nom, hot_nom
FROM reservation
JOIN client ON client.cli_id = reservation.res_cli_id
JOIN chambre ON chambre.cha_id = reservation.res_cha_id
JOIN hotel ON hotel.hot_id = chambre.cha_hot_id;

SELECT * FROM v_reservation_client_hotel