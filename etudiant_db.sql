-- Etudiant(id, nom, prenom, date de naissance, adresse email)
CREATE TABLE etudiant (
  idEtudiant          INTEGER PRIMARY KEY ,
  nom                 VARCHAR(30) NOT NULL ,
  prenom              VARCHAR(30) NOT NULL ,
  date_de_naissance   DATE NOT NULL ,
  email               VARCHAR(50) NOT NULL 
);
CREATE TABLE Personne (
  id      INTEGER PRIMARY KEY,
  nom     VARCHAR(50),
  prenom  VARCHAR(50)
);
CREATE TABLE Mobile (
  id          INTEGER PRIMARY KEY,
  numero      CHAR(10),
  idPersonne  INTEGER,
  FOREIGN KEY (idPersonne) REFERENCES Personne(id)
);
CREATE TABLE Produit (
  id        INTEGER PRIMARY KEY,
  name      VARCHAR(128) UNIQUE,
  price     DECIMAL(6,2) NOT NULL,
  produced  DATE,
  available BOOLEAN DEFAULT TRUE,
  weight    FLOAT,
  producer  INTEGER
);
-- Insertion d'un nouvel élément
INSERT INTO Produit VALUES (0, 'Bière', 3.99, '2018-10-31', TRUE, 3.5, 2);
-- Insertion d'un nouvel élément avec information manquante
INSERT INTO Produit 
  (id, name, price, produced, weight, producer)
VALUES 
  (1, 'Rhum', 5.99, '2015-12-31', 1.25, 3);
  
  CREATE TABLE Produit (
  id        INTEGER PRIMARY KEY,
  name      VARCHAR(128) UNIQUE,
  price     DECIMAL(6,2) NOT NULL,
  produced  DATE,
  available BOOLEAN DEFAULT TRUE,
  weight    FLOAT,
  producer  INTEGER
);
-- Utilisation basique de la fonction UPDATE
UPDATE Produit SET price = 1.99 WHERE name = 'Bière';
-- Utilisation plus avancée
UPDATE Produit SET price = 0.9 * price WHERE produced < '2016-01-01';

CREATE TABLE Produit (
  id        INTEGER PRIMARY KEY,
  name      VARCHAR(128) UNIQUE,
  price     DECIMAL(6,2) NOT NULL,
  produced  DATE,
  available BOOLEAN DEFAULT TRUE,
  weight    FLOAT,
  producer  INTEGER
);
-- Utilisation simple de la fonction DELETE
DELETE FROM Produit WHERE id = 1;
-- Utilisation de fonction d'aggrégation plus complexe
DELETE FROM Produit WHERE produced < '2010-01-01';
