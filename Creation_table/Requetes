SELECT compte.C_id, compte.compte_mail, profil.C_id
FROM compte
INNER JOIN profil ON compte.C_id = profil.C_id;

SELECT compte.C_id, compte.compte_mail, prendre_RDV.rdv_id
FROM compte
LEFT JOIN prendre_RDV ON compte.C_id = prendre_RDV.C_id;

SELECT prendre_RDV.C_id, prendre_RDV.rdv_id, RDV.date
FROM prendre_RDV
RIGHT JOIN RDV ON prendre_RDV.rdv_id = RDV.rdv_id;

SELECT compte.C_id, compte.compte_mail, prendre_RDV.rdv_id, RDV.date
FROM compte
FULL OUTER JOIN prendre_RDV ON compte.C_id = prendre_RDV.C_id
FULL OUTER JOIN RDV ON prendre_RDV.rdv_id = RDV.rdv_id;

SELECT a.ad_id, a.rue, b.ad_id, b.rue
FROM Adresse a
INNER JOIN Adresse b ON a.ad_id <> b.ad_id
WHERE a.rue = b.rue;


CREATE VIEW vue_persistante AS
SELECT compte.C_id, compte.compte_mail, profil.C_id AS profil_id
FROM compte
INNER JOIN profil ON compte.C_id = profil.C_id;

CREATE OR REPLACE TEMP VIEW vue_temporaire AS
SELECT compte.C_id, compte.compte_mail, prendre_RDV.rdv_id, RDV.date
FROM compte
FULL OUTER JOIN prendre_RDV ON compte.C_id = prendre_RDV.C_id
FULL OUTER JOIN RDV ON prendre_RDV.rdv_id = RDV.rdv_id;


SELECT compte_mail, COUNT(profil_id) AS nb_profil
FROM vue_persistante
GROUP BY compte_mail;

SELECT compte_mail, rdv_id, date
FROM vue_temporaire
WHERE rdv_id IS NOT NULL;

SELECT compte_mail, 'compte' AS type
FROM compte
UNION
SELECT compte_mail, 'profil' AS type
FROM profil;
