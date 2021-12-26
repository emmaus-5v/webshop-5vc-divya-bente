--
-- create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  kleur_id INTEGER,
  product_kleur_id INTEGER,
  maat_id INTEGER,
  product_maat_id INTEGER,
  categorie_id INTEGER,
  materiaal_id INTEGER,
  model_id INTEGER
);


DROP TABLE IF EXISTS kleur; 
CREATE TABLE kleur (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(25)
  
);

DROP TABLE IF EXISTS product_kleur; 
CREATE TABLE product_kleur (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  product_id INTEGER,
  kleur_id INTEGER
);

DROP TABLE IF EXISTS materiaal; 
CREATE TABLE materiaal (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(25)
);

DROP TABLE IF EXISTS categorie;
CREATE TABLE categorie (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR (100)
);

DROP TABLE IF EXISTS maat;
CREATE TABLE maat (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(25)
);

DROP TABLE IF EXISTS product_maat;
CREATE TABLE product_maat (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  maat_id INTEGER,
  product_id INTEGER
);

DROP TABLE IF EXISTS model;
CREATE TABLE model (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(100)
);




--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, categorie_id, materiaal_id, model_id, maat_id) values 
('Oui x Oui Baquette Tas - Koeienprint', 'De originele Oui x Oui Baguette Tas met koeienprint. De tas heeft een zwarte band dat verstelbaar is.', '816905633-0', 24.99, 1, 5, 3, 6);

insert into products (name, description, code, price, categorie_id, materiaal_id, model_id, maat_id) values 
('Dress Bente', 'Een korte jurk met een vierkante halsopening met smal elastiek en smokwerk onder de borst. De jurk heeft korte pofmouwen met smal elastiek onderaan en een naad in de taille.', '077030122-3', 24.95, 2, 1, 1, 2);

insert into products (name, description, code, price, categorie_id, materiaal_id, model_id, maat_id) values
('TankTop - Long Sleeve', 'Een TankTop met een ronde halslijn, lange mouwen. Het accentueerd het lichaam, doordat het strech is.', '445924201-8', 19.50, 4, 2, 1, 2);

insert into products (name, description, code, price, categorie_id, materiaal_id, model_id, maat_id) values 
('Dress Divya', 'Een geweven jurk met een bloemen print. De jurk heeft spaghettibandjes en een scoop halslijn.', '693155505-7', 24.95, 2, 1, 1, 2);

insert into products (name, description, code, price, categorie_id, materiaal_id, model_id, maat_id) values 
('Broek en Trui - Butterfly', 'Zwart joggingspak met vlinder patroon op de linker broekspijp en op de mouwen. De broek heeft een elastische band en de trui heeft een capuchon.', '686928463-6', 24.50, 3, 2, 2, 3);

insert into products (name, description, code, price, categorie_id, materiaal_id, model_id, maat_id) values 
('Hoodie New York multi color', 'Hoodie met New York als print op de voorkant. de mouwen zijn een beige kleur en de torso heeft een diep bruine kleur. De hoodie heeft touwtjes van katoen en een buidel.', '492662523-5', 19.99, 5, 3, 2, 3);

insert into products (name, description, code, price, categorie_id, materiaal_id, model_id, maat_id) values 
('Joggingspak - Baby Blue', 'Set van tanktop met jogginsbroek met elastische band. ', '492662523-3', 14.00, 3, 2, 1, 3);

insert into products (name, description, code, price, categorie_id, materiaal_id, model_id, maat_id) values 
('Joggingspak - Bliksem', 'Set van trui en jogginsbroek met een bliksem patroon over het gehele set. Zowel de trui als de joggingsbroek hebben een elastische band. ', '492662523-8', 24.50,  3, 2, 1, 3);

insert into products (name, description, code, price, categorie_id, materiaal_id, model_id, maat_id) values 
('Oui x Oui Baquette Tas - Zebraprint', 'De Oui x Oui Baguette Tas met zebraprint. De tas heeft een bijpassende zebraprint band dat verstelbaar is.', '036829013-7', 14.99, 1, 5, 3, 6);

insert into products (name, description, code, price, categorie_id, materiaal_id, model_id, maat_id) values 
('Oui x Oui Baquette Tas - Bloemenprint', 'De Oui x Oui Baguette Tas met bloemenprint. De tas heeft een Madelief print over de gehele tas. De band is niet verstelbaar, wel afneembaar.', '176036297-2', 14.99, 1, 5, 3, 6);

insert into products (name, description, code, price, categorie_id, materiaal_id, model_id, maat_id) values
('CropTop - Butterfly', 'CropTop met licht blauwe strepen op de uiteinde van de mouwen en onderaan de Top. Vlinder midden op de Top met blauwe details.', '418206971-9', 19.50, 4, 2, 1, 2);

insert into products (name, description, code, price, categorie_id, materiaal_id, model_id, maat_id) values
('CropTop - Daisy', 'CropTop met een bloemenprint over de hele Top. De bloem is een blauwe Dahlia.', '321069441-2', 19.50, 4, 2, 1, 2);

INSERT INTO kleur (name, id) values ('zwart', 1);
INSERT INTO kleur (name, id) values ('wit', 2);
INSERT INTO kleur (name, id) values ('rood', 3);
INSERT INTO kleur (name, id) values ('zwart', 4);
INSERT INTO kleur (name, id) values ('paars', 5);
INSERT INTO kleur (name, id) values ('baby-blauw', 6);
INSERT INTO kleur (name, id) values ('bruin', 7);
INSERT INTO kleur (name, id) values ('beige', 8);

INSERT INTO product_kleur (product_id, kleur_id) values (1, 1);
INSERT INTO product_kleur (product_id, kleur_id) values (1, 2);
INSERT INTO product_kleur (product_id, kleur_id) values (2, 3);
INSERT INTO product_kleur (product_id, kleur_id) values (3, 4);
INSERT INTO product_kleur (product_id, kleur_id) values (4, 5);
INSERT INTO product_kleur (product_id, kleur_id) values (5, 3);
INSERT INTO product_kleur (product_id, kleur_id) values (5, 1);
INSERT INTO product_kleur (product_id, kleur_id) values (6, 7);
INSERT INTO product_kleur (product_id, kleur_id) values (6, 8);
INSERT INTO product_kleur (product_id, kleur_id) values (7, 6);
INSERT INTO product_kleur (product_id, kleur_id) values (8, 1);
INSERT INTO product_kleur (product_id, kleur_id) values (8, 2);

INSERT INTO materiaal (name, id) values ('katoen', 1);
INSERT INTO materiaal (name, id) values ('polyester', 2);
INSERT INTO materiaal (name, id) values ('satijn', 3);
INSERT INTO materiaal (name, id) values ('wol', 4);
INSERT INTO materiaal (name, id) values ('nep leer', 5);

INSERT INTO categorie (name, id) values ('tas', 1);
INSERT INTO categorie (name, id) values ('jurk', 2);
INSERT INTO categorie (name, id) values ('joggingspak', 3);
INSERT INTO categorie (name, id) values ('longsleeve', 4);
INSERT INTO categorie (name, id) values ('hoodie', 5);

INSERT INTO maat (name, id) values ('XS', 1);
INSERT INTO maat (name, id) values ('S', 2);
INSERT INTO maat (name, id) values ('M', 3);
INSERT INTO maat (name, id) values ('L', 4);
INSERT INTO maat (name, id) values ('XL', 5);
INSERT INTO maat (name, id) values ('One Size', 6);

INSERT INTO product_maat (product_id, maat_id) values (1, 1);
INSERT INTO product_maat (product_id, maat_id) values (1, 2);
INSERT INTO product_maat (product_id, maat_id) values (1, 3);
INSERT INTO product_maat (product_id, maat_id) values (1, 4);
INSERT INTO product_maat (product_id, maat_id) values (1, 5);
INSERT INTO product_maat (product_id, maat_id) values (2, 1);
INSERT INTO product_maat (product_id, maat_id) values (2, 2);
INSERT INTO product_maat (product_id, maat_id) values (2, 3);
INSERT INTO product_maat (product_id, maat_id) values (2, 4);
INSERT INTO product_maat (product_id, maat_id) values (2, 5);
INSERT INTO product_maat (product_id, maat_id) values (3, 1);
INSERT INTO product_maat (product_id, maat_id) values (3, 2);
INSERT INTO product_maat (product_id, maat_id) values (3, 3);
INSERT INTO product_maat (product_id, maat_id) values (3, 4);
INSERT INTO product_maat (product_id, maat_id) values (3, 5);
INSERT INTO product_maat (product_id, maat_id) values (4, 1);
INSERT INTO product_maat (product_id, maat_id) values (4, 2);
INSERT INTO product_maat (product_id, maat_id) values (4, 3);
INSERT INTO product_maat (product_id, maat_id) values (4, 4);
INSERT INTO product_maat (product_id, maat_id) values (4, 5);
INSERT INTO product_maat (product_id, maat_id) values (5, 1);
INSERT INTO product_maat (product_id, maat_id) values (5, 2);
INSERT INTO product_maat (product_id, maat_id) values (5, 3);
INSERT INTO product_maat (product_id, maat_id) values (5, 4);
INSERT INTO product_maat (product_id, maat_id) values (5, 5);
INSERT INTO product_maat (product_id, maat_id) values (6, 1);
INSERT INTO product_maat (product_id, maat_id) values (6, 2);
INSERT INTO product_maat (product_id, maat_id) values (6, 3);
INSERT INTO product_maat (product_id, maat_id) values (6, 4);
INSERT INTO product_maat (product_id, maat_id) values (6, 5);
INSERT INTO product_maat (product_id, maat_id) values (7, 1);
INSERT INTO product_maat (product_id, maat_id) values (7, 2);
INSERT INTO product_maat (product_id, maat_id) values (7, 3);
INSERT INTO product_maat (product_id, maat_id) values (7, 4);
INSERT INTO product_maat (product_id, maat_id) values (7, 5);
INSERT INTO product_maat (product_id, maat_id) values (8, 1);
INSERT INTO product_maat (product_id, maat_id) values (8, 2);
INSERT INTO product_maat (product_id, maat_id) values (8, 3);
INSERT INTO product_maat (product_id, maat_id) values (8, 4);
INSERT INTO product_maat (product_id, maat_id) values (8, 5);

INSERT INTO model (name, id) values ('Small', 1);
INSERT INTO model (name, id) values ('Medium', 2);
INSERT INTO model (name, id) values ('One Size', 3);

