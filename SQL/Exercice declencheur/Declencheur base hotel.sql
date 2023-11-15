-- 1.modif_reservation : interdire la modification des réservations (on autorise l'ajout et la suppression).modif_reservation : interdire la modification des réservations (on autorise l'ajout et la suppression).

DELIMITER |

CREATE TRIGGER modif_reservation BEFORE UPDATE ON reservation
FOR EACH ROW 
BEGIN 
SIGNAL SQLSTATE '40000' SET MESSAGE_TEXT = "Un probléme est survenu. Modification impossible";
END;
|
DELIMITER ;

-- 2.insert_reservation : interdire l'ajout de réservation pour les hôtels possédant déjà 10 réservations.

