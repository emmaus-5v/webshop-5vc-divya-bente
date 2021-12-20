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
  kleur_id INTEGER
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

DROP TABLE IF EXISTS categorie;
CREATE TABLE categorie (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR (100)
);

DROP TABLE IF EXISTS product_categorie;
CREATE TABLE product_categorie (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
 product_id INTEGER,
 categorie_id INTEGER
);



--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price,kleur_id) values 
('Oui x Oui Baquette Tas', 'leuke tas met koeien print', '816905633-0', 15.00, 1);

insert into products (name, description, code, price, kleur_id) values 
('Dress Bente', 'mooie rode jurk', '077030122-3', 19.95,2);

insert into products (name, description, code, price, kleur_id) values
 ('TankTop With Long Sleeves', 'beautiful tanktop sagegreen ', '445924201-X', 13.5, 3);

insert into products (name, description, code, price, kleur_id) values 
('Dress Divya', 'just as beautiful as divya', '693155505-7', 13.5,4);

insert into products (name, description, code, price, kleur_id) values 
('Butterfly broek en trui', 'zwart joggingspak met vlinders', '686928463-6', 14, 3);

insert into products (name, description, code, price, kleur_id) values 
('Hoodie New York multi color', 'comfortabele hoodie boyfriend material', '492662523-7', 14, 6);

insert into products (name, description, code, price, kleur_id) values 
('joggingspak baby blue', 'zachte stof joggingspak met tanktop', '492662523-7', 14, 5);

insert into products (name, description, code, price, kleur_id) values 
('bliksem joggingspak ', 'zwart joggingspak bliksem', '492662523-7', 14, 3);


INSERT INTO kleur (name, id) values ('zwart-wit', 1);
INSERT INTO kleur (name, id) values ('rood', 2);
INSERT INTO kleur (name, id) values ('zwart', 3);
INSERT INTO kleur (name, id) values ('paars', 4);
INSERT INTO kleur (name, id) values ('baby-blauw', 5);
INSERT INTO kleur (name, id) values ('bruin-beige', 6);

INSERT INTO kledingstuk_kleur (kledingstuk_id, kleur_id) values (1, 1);
INSERT INTO kledingstuk_kleur (kledingstuk_id, kleur_id) values (2, 2);
INSERT INTO kledingstuk_kleur (kledingstuk_id, kleur_id) values (3, 3);
INSERT INTO kledingstuk_kleur (kledingstuk_id, kleur_id) values (4, 4);
INSERT INTO kledingstuk_kleur (kledingstuk_id, kleur_id) values (5, 3);
INSERT INTO kledingstuk_kleur (kledingstuk_id, kleur_id) values (6, 6);
INSERT INTO kledingstuk_kleur (kledingstuk_id, kleur_id) values (7, 5);
INSERT INTO kledingstuk_kleur (kledingstuk_id, kleur_id) values (8, 3);

INSERT INTO categorie (name) values ('tas');
INSERT INTO categorie (name) values ('jurk');
INSERT INTO categorie (name) values ('hoodie');
INSERT INTO categorie (name) values ('joggingsbroek');

