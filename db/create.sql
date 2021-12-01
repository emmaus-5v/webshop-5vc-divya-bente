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
  name VARCHAR(25),
  
);

DROP TABLE IF EXISTS catergorie; 
CREATE TABLE categorie (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(25),
  
);



--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values 
('Oui x Oui Baquette Tas', 'leuke tas met koeien print', '816905633-0', 15.00);

insert into products (name, description, code, price) values 
('Dress Bente', 'mooie rode jurk', '077030122-3', 19.95);

insert into products (name, description, code, price) values
 ('TankTop With Long Sleeves', 'beautiful tanktop sagegreen ', '445924201-X', 13.5);

insert into products (name, description, code, price) values 
('Dress Divya', 'just as beautiful as divya', '693155505-7', 13.5);

insert into products (name, description, code, price) values ('Kiss for Corliss, A (Almost a Bride)', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14);
insert into products (name, description, code, price) values ('Velvet Goldmine', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 14);

