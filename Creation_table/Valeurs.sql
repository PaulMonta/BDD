
INSERT INTO compte (compte_mail) VALUES
('compte1@mail.com'),
('compte2@mail.com'),
('compte3@mail.com');

INSERT INTO profil (compte_mail) VALUES
('compte1@mail.com'),
('compte2@mail.com'),
('compte3@mail.com');

INSERT INTO prendre_RDV (C_id, rdv_id) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO RDV (rdv_id, date) VALUES
(1, '2023-04-10'),
(2, '2023-04-15'),
(3, '2023-04-20');

INSERT INTO En_cours (id_ad) VALUES
(1),
(2),
(3);

INSERT INTO Termines (fin) VALUES
('2023-04-10'),
('2023-04-15'),
('2023-04-20');

INSERT INTO Adresse (pays, ville, rue, num) VALUES
('France', 'Paris', 'Rue de Rivoli', 10),
('Belgique', 'Bruxelles', 'Avenue Louise', 20),
('Canada', 'Montréal', 'Rue Sainte-Catherine', 30);

INSERT INTO Album (c_id, album_date) VALUES
(1, '2023-04-01'),
(2, '2023-04-02'),
(3, '2023-04-03');

INSERT INTO Photo (album_id, share_date) VALUES
(1, '2023-04-01'),
(2, '2023-04-02'),
(3, '2023-04-03');

INSERT INTO Premium (c_id, fin_abonnement) VALUES
(1, '2024-04-01'),
(2, '2024-04-02'),
(3, '2024-04-03');

INSERT INTO Fracture (date) VALUES
('2023-04-01'),
('2023-04-02'),
('2023-04-03');

INSERT INTO Femme (f_id) VALUES
(1),
(2),
(3);

INSERT INTO Homme (h_id) VALUES
(1),
(2),
(3);

INSERT INTO conversation (h_id) VALUES
(1),
(2),
(3);
