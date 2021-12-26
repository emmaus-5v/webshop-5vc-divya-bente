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

-- hoofdtabel met info over de producten
insert into products (name, description, code, price, categorie_id, materiaal_id, model_id, maat_id) values 
('Oui x Oui Baguette Tas - Koeienprint', 'De originele Oui x Oui Baguette Tas met koeienprint. Het eerste design dat is bedacht en uitgebracht in de Baguette tassen lijn. De tas heeft een zwarte band dat verstelbaar is. De tas is weer helemaal terug van weggeweest aangezien de Baguette Tas al in de jaren 90 en de vroege 2000. Nu kan je je eigen tas aanschaffen en hoef je niet de tas van je oma te lenen.', '816905633-0', 24.99, 1, 5, 3, 2);

insert into products (name, description, code, price, categorie_id, materiaal_id, model_id, maat_id) values 
('Dress Bente', 'Een korte jurk met een U-vormige halsopening met een opening dat is vastgenaaid met een touwtje dat een strik vormt op de borst. De jurk heeft korte pofmouwen met smal elastiek onderaan en een naad in de taille. Dit jurkje is perfect voor een mooie lente dag, of een zomerse dag. Zelfs kan je het jurkje combineren met een goeie legging/panty en kan je het dragen voor in de herst en winter met een jasje erover. Zoals je vaker ziet gebeuren komen trends terug, dit is het zelfde met de pofmouwen. Maak je trendt outfit compleet met dit jurkje!', '077030122-3', 24.95, 3, 1, 1, 1);

insert into products (name, description, code, price, categorie_id, materiaal_id, model_id, maat_id) values
 ('TankTop - Long Sleeve', 'Een TankTop met een ronde halslijn, lange mouwen. Het accentueerd het lichaam, doordat het gemaakt is van een strech stof. Het is heel zacht en beschadigt de huid niet zoals andere Long Sleeve TankTops van andere merken. Ook is het ideaal voor de wat koudere dagen, aangezien het warmhoudend is. Laat je niet misleiden doordat het strech is, dat het van een dunne materiaal gemaakt moet zijn.', '445924201-8', 19.50, 4, 2, 1, 1);

insert into products (name, description, code, price, categorie_id, materiaal_id, model_id, maat_id) values 
('Dress Divya', 'Een geweven jurk met een bloemen print. De jurk heeft spaghettibandjes en een scoop halslijn. Dit jurkje is perfect voor een mooie lente dag, of een zomerse dag. Perfect voor als je leuke activiteiten hebt met familie en/of vrienden of voor andere gelegenheden. Ook is het een prima jurkje voor in de herst, ik adviseer je wel om een jasje erover te dragen aangezien het spaghettibandjes heeft!', '693155505-7', 24.95, 2, 1, 1, 1);

insert into products (name, description, code, price, categorie_id, materiaal_id, model_id, maat_id) values 
('Broek en Vest - Butterfly', 'Zwart joggingspak met vlinder patroon op de linker broekspijp en op de mouwen. De broek heeft een elastische band en de vest heeft een capuchon. Dit setje is perfect voor als je zoekt naar een comfortabele en schattige broek en vest. Gezellig voor knus in huis of voor als je een slaapfeestje ergens hebt!', '686928463-6', 24.50, 3, 2, 2, 1);

insert into products (name, description, code, price, categorie_id, materiaal_id, model_id, maat_id) values 
('Hoodie New York multi color', 'Hoodie met New York als print op de voorkant. de mouwen zijn een beige kleur en de torso heeft een diep bruine kleur. De hoodie heeft touwtjes van katoen en een buidel. De binnenkant heeft een zachte voering van wol zodat je lekker warm blijft. Oversized kleding is een trend die voor een tijd blijft hangen, dus om deze hoodie te kopen weet je zeker dat je er  een lange tijd mee kan. Zelfs als je niet een trend volger bent is dit een perfecte keuze voor je. Omdat het een zachte binnenkant heeft ben je altijd comfortabel als je het draagt! ', '492662523-5', 19.99, 2, 3, 2, 1);

insert into products (name, description, code, price, categorie_id, materiaal_id, model_id, maat_id) values 
('Joggingspak - Baby Blue', 'Set van tanktop met jogginsbroek met elastische band. In dit setje heb je een zachte jogginspak met een tanktop. Dit is perfect voor als je een matchende joggingsbroek zoekt met een tanktop die precies in kleur overeenkomt, wat best moeilijk kan zijn om te vinden. Zowel de top als de broek zijn superzacht en voel je je er heel prettig in!', '492662523-3', 14.00, 3, 2, 1, 1);

insert into products (name, description, code, price, categorie_id, materiaal_id, model_id, maat_id) values 
('Joggingspak - Bliksem', 'Set van trui en jogginsbroek met een bliksem patroon over het gehele set. Zowel de trui als de joggingsbroek hebben een elastische band. Bij dit setje krijg je een broek en trui dat over het geheel bliksemschichten zijn. Het is een comfortabele set dat een zachte binnenkant heeft en je warm houdt. Perfect voor de koude winter dagen. Ook is het leuk om dit als cadeau te geven aan een vriend(in) te geven dat een Harry Potter fan is door de bliksemschichten!', '492662523-8', 24.50,  3, 2, 1, 1);

insert into products (name, description, code, price, categorie_id, materiaal_id, model_id, maat_id) values 
('Oui x Oui Baguette Tas - Zebraprint', 'De Oui x Oui Baguette Tas met zebraprint. De tas heeft een bijpassende zebraprint band dat verstelbaar is. De tas is weer helemaal terug van weggeweest aangezien de Baguette Tas al in de jaren 90 en de vroege 2000. Nu kan je je eigen tas aanschaffen en hoef je niet de tas van je oma te lenen.', '036829013-7', 14.99, 1, 5, 3, 2);

insert into products (name, description, code, price, categorie_id, materiaal_id, model_id, maat_id) values 
('Oui x Oui Baguette Tas - Bloemenprint', 'De Oui x Oui Baguette Tas met bloemenprint. De tas heeft een Madelief print over de gehele tas. De band is niet verstelbaar, wel afneembaar. De tas is weer helemaal terug van weggeweest aangezien de Baguette Tas al in de jaren 90 en de vroege 2000. Nu kan je je eigen tas aanschaffen en hoef je niet de tas van je oma te lenen.', '176036297-2', 14.99, 1, 5, 3, 2);

insert into products (name, description, code, price, categorie_id, materiaal_id, model_id, maat_id) values
('CropTop - Butterfly', 'CropTop met licht blauwe strepen op de uiteinde van de mouwen en onderaan de Top. Vlinder midden op de Top met blauwe details. Aangezien het een CropTop is komt de Top boven de navel te zitten, het is niet verstelbaar in hoogte. Het is gemaakt van katoen, dat Fairtrade is en duurzaam geproduceerd wordt. Dit is een hele leuke top doordat het heel simpel is gehouden, maar toch genoeg detail heeft dat je er goed naar moet kijken. De vlinder op de voorkant en de blauwe randen zorgen voor een leuke look!', '418206971-9', 12.50, 4, 1, 1, 1);

insert into products (name, description, code, price, categorie_id, materiaal_id, model_id, maat_id) values
('CropTop - Dahlia', 'CropTop met een bloemenprint over de hele Top. De bloem is een blauwe Dahlia. De top is verstelbaar door middel van een koort in het midden van de CropTop. Het kan korter of juist langer worden gemaakt, dat is helemaal over aan de persoon zelf. Op deze manier kan je helemaal zelf bepalen hoe je je top draagt en kan je verschillende looks maken. het heeft een V-hals dat niet te diep is uitgesneden. Perfect voor allerlei gelegenheden!', '321069441-2', 14.50, 4, 2, 1, 1);

-- kleuren tabel
INSERT INTO kleur (name, id) values ('zwart', 1);
INSERT INTO kleur (name, id) values ('wit', 2);
INSERT INTO kleur (name, id) values ('rood', 3);
INSERT INTO kleur (name, id) values ('zwart', 4);
INSERT INTO kleur (name, id) values ('paars', 5);
INSERT INTO kleur (name, id) values ('baby-blauw', 6);
INSERT INTO kleur (name, id) values ('bruin', 7);
INSERT INTO kleur (name, id) values ('beige', 8);

-- de kleuren die bij producten horen tabel
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

-- materiaal die de producten hebben tabel
INSERT INTO materiaal (name, id) values ('katoen', 1);
INSERT INTO materiaal (name, id) values ('polyester', 2);
INSERT INTO materiaal (name, id) values ('satijn', 3);
INSERT INTO materiaal (name, id) values ('wol', 4);
INSERT INTO materiaal (name, id) values ('nep leer', 5);

-- categorie tabel waar de producten bij horen
INSERT INTO categorie (name, id) values ('tas', 1);
INSERT INTO categorie (name, id) values ('jurk', 2);
INSERT INTO categorie (name, id) values ('joggingspak', 3);
INSERT INTO categorie (name, id) values ('longsleeve', 4);
INSERT INTO categorie (name, id) values ('hoodie', 5);

-- maten die beschikbaar zijn voor elk product
INSERT INTO maat (name, id) values ('XS/S/M/L/XL', 1);
INSERT INTO maat (name, id) values ('One Size', 2);

-- we hebben geprobeerd met de onderstaande gegevens geprobeerd die in een n:m relatie te brengen, maar het ging fout in de api.
--INSERT INTO maat (name, id) values ('S', 2);
--INSERT INTO maat (name, id) values ('M', 3);
--INSERT INTO maat (name, id) values ('L', 4);
--INSERT INTO maat (name, id) values ('XL', 5);
--INSERT INTO maat (name, id) values ('One Size', 6);

-- dit is voor de n:m relatie je hebt meerdere producten die meerdere maten kunnen hebben (niet af is moeilijk)
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

-- de maten die de model aanhebben op de foto
INSERT INTO model (name, id) values ('Small', 1);
INSERT INTO model (name, id) values ('Medium', 2);
INSERT INTO model (name, id) values ('One Size', 3);

