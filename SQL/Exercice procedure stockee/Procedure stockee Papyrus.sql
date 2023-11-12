-- 1. Créez la procédure stockée Lst_fournis correspondant à la requête n°2 afficher le code des fournisseurs pour lesquels une commande a été passée.

DELIMITER |

CREATE PROCEDURE Lst_fournis()
BEGIN
	SELECT DISTINCT numfou
   FROM entcom;
END |

DELIMITER |

CALL Lst_fournis;

-- 2.  Créer la procédure stockée Lst_Commandes, qui liste les commandes ayant un libellé particulier dans le champ obscom (cette requête sera construite à partir de la requête n°11).

DELIMITER |

CREATE PROCEDURE Lst_Commandes(IN observation VARCHAR(50))
BEGIN
	SELECT entcom.numcom, nomfou, libart, priuni * qtecde AS Prix
	FROM entcom 
	JOIN fournis ON entcom.numfou = fournis.numfou
	JOIN ligcom ON ligcom.numcom = entcom.numcom
	JOIN produit ON produit.codart = ligcom.codart
	WHERE obscom = observation;
END |

DELIMITER |

CALL Lst_Commandes("");

    DELIMITER |


-- 3.Créer la procédure stockée CA_ Fournisseur, qui pour un code fournisseur et une année entrée en paramètre, calcule et restitue le CA potentiel de ce fournisseur pour l'année souhaitée (cette requête sera construite à partir de la requête n°19).

    DELIMITER |

CREATE PROCEDURE CA_Fournisseur(IN code_fournisseur INT(11), IN annee_commande INT(4))
BEGIN
	SELECT nomfou, sum(qteliv * priuni) * 1.2
	FROM fournis 
	JOIN vente ON vente.numfou = fournis.numfou
	JOIN ligcom ON ligcom.codart = vente.codart
	JOIN entcom ON entcom.numfou = fournis.numfou
	WHERE fournis.numfou = code_fournisseur AND YEAR(datcom) = annee_commande;
END |

DELIMITER |

CALL CA_Fournisseur('120','2018')