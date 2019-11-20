CREATE TABLE IF NOT EXISTS Beers (
  name varchar(255),
  manf varchar(255) NOT NULL,
  PRIMARY KEY(name)
);

CREATE TABLE IF NOT EXISTS Bars (
  name varchar(255),
  addr varchar(255) NOT NULL,
  license varchar(255) NOT NULL,
  PRIMARY KEY(name)
);

CREATE TABLE IF NOT EXISTS Drinkers (
  name varchar(255),
  addr varchar(255) NOT NULL,
  phone varchar(20) NOT NULL,
  PRIMARY KEY(name)
);

CREATE TABLE IF NOT EXISTS Likes (
  drinker varchar(255),
  beer varchar(255),
  PRIMARY KEY(drinker, beer),
  FOREIGN KEY (drinker) REFERENCES Drinkers(name),
  FOREIGN KEY (beer) REFERENCES Beers(name)
);

CREATE TABLE IF NOT EXISTS Sells (
  bar varchar(255),
  beer varchar(255),
  price REAL NOT NULL,
  PRIMARY KEY(bar, beer),
  FOREIGN KEY (bar) REFERENCES Bars(name),
  FOREIGN KEY (beer) REFERENCES Beers(name)
);

CREATE TABLE IF NOT EXISTS Frequents (
  drinker varchar(255),
  bar varchar(255),
  PRIMARY KEY(drinker, bar),
  FOREIGN KEY (bar) REFERENCES Bars(name),
  FOREIGN KEY (drinker) REFERENCES Drinkers(name)
);

INSERT INTO Beers VALUES ('Kingfisher','United Breweries Group');
INSERT INTO Beers VALUES ('Kingfisher Strong','United Breweries Group');
INSERT INTO Beers VALUES ('Kingfisher Premium','United Breweries Group');
INSERT INTO Beers VALUES ('Tuborg','Carlsberg Group');
INSERT INTO Beers VALUES ('Carlsberg','Carlsberg Group');
INSERT INTO Beers VALUES ('Bud Weiser','Anheuser-Busch');
INSERT INTO Beers VALUES ('Bud','Anheuser-Busch');
INSERT INTO Beers VALUES ('Bud Light','Anheuser-Busch');
INSERT INTO Beers VALUES ('Becks','Anheuser-Busch');
INSERT INTO Beers VALUES ('Heineken','Heineken International');
INSERT INTO Beers VALUES ('Corona','Cerveceria Modelo');
INSERT INTO Beers VALUES ('Corona Extra','Cerveceria Modelo');
INSERT INTO Beers VALUES ('Bira 91','B9 Beverages Pvt. Ltd');
INSERT INTO Beers VALUES ('Hoegaarden','Hoegaarden Brewery');
INSERT INTO Beers VALUES ('Miller High Life','Miller');
INSERT INTO Beers VALUES ('Miller','Miller');
INSERT INTO Beers VALUES ('Aguila','Miller');
INSERT INTO Beers VALUES ('Cristal','Miller');
INSERT INTO Beers VALUES ('Hamms','Miller');
INSERT INTO Beers VALUES ('Peroni','Peroni');
INSERT INTO Beers VALUES ('Peroni Leggera','Peroni');
INSERT INTO Beers VALUES ('Peroni Gran Riserva','Peroni');
INSERT INTO Beers VALUES ('Peroncino','Peroni');
INSERT INTO Beers VALUES ('Crystall','Peroni');
INSERT INTO Beers VALUES ('Daredevil','Daredevil Brewing Co');
INSERT INTO Beers VALUES ('The Black Mamba','MONYO Brewing Co');
INSERT INTO Beers VALUES ('White Owl','White Owl Brewery');
INSERT INTO Beers VALUES ('Guinness','Guinness & Co. Brewery');

INSERT INTO Drinkers VALUES('Alehhandro', 'address91', '4417409488');
INSERT INTO Drinkers VALUES('Diego', 'address92', '4424551711');
INSERT INTO Drinkers VALUES('Michael', 'address93', '4452761423');
INSERT INTO Drinkers VALUES('Matthias', 'address94', '4422168576');
INSERT INTO Drinkers VALUES('Julie', 'address95', '4418927954');
INSERT INTO Drinkers VALUES('Stefania', 'address96', '4431233411');
INSERT INTO Drinkers VALUES('Francesco', 'address97', '4438742779');
INSERT INTO Drinkers VALUES('Renato', 'address98', '4431986502');
INSERT INTO Drinkers VALUES('Vanda', 'address99', '4486024865');
INSERT INTO Drinkers VALUES('Emanuele', 'address910', '4409006138');
INSERT INTO Drinkers VALUES('Andrea', 'address911', '4493446066');
INSERT INTO Drinkers VALUES('Lovie', 'address912', '4418496378');
INSERT INTO Drinkers VALUES('Jaymie', 'address913', '4482913598');
INSERT INTO Drinkers VALUES('Christiana', 'address914', '4440763615');
INSERT INTO Drinkers VALUES('Natacha', 'address915', '4442097372');
INSERT INTO Drinkers VALUES('Florene', 'address916', '4460165754');
INSERT INTO Drinkers VALUES('Jolie', 'address917', '4412001460');
INSERT INTO Drinkers VALUES('Dian', 'address918', '4471777733');
INSERT INTO Drinkers VALUES('Fred', 'address919', '4459981826');
INSERT INTO Drinkers VALUES('Joe', 'address920', '4460380125');

INSERT INTO Bars VALUES ('Bar1','address1', 'license201982');
INSERT INTO Bars VALUES ('Bar2','address2', 'license201983');
INSERT INTO Bars VALUES ('Bar3','address3', 'license201984');
INSERT INTO Bars VALUES ('Bar4','address4', 'license201985');
INSERT INTO Bars VALUES ('Bar5','address5', 'license201986');
INSERT INTO Bars VALUES ('Bar6','address6', 'license201987');
INSERT INTO Bars VALUES ('Bar7','address7', 'license201988');
INSERT INTO Bars VALUES ('Bar8','address8', 'license201989');
INSERT INTO Bars VALUES ('Bar9','address9', 'license201990');
INSERT INTO Bars VALUES ('Bar10','address10', 'license201991');
INSERT INTO Bars VALUES ('Bar11','address11', 'license201992');
INSERT INTO Bars VALUES ('Bar12','address12', 'license201993');
INSERT INTO Bars VALUES ('Bar13','address13', 'license201994');
INSERT INTO Bars VALUES ('Bar14','address14', 'license201995');
INSERT INTO Bars VALUES ('Bar15','address15', 'license201996');
INSERT INTO Bars VALUES ('Bar16','address16', 'license201997');
INSERT INTO Bars VALUES ('Bar17','address17', 'license201998');
INSERT INTO Bars VALUES ('Bar18','address18', 'license201999');
INSERT INTO Bars VALUES ('Bar19','address19', 'license202000');
INSERT INTO Bars VALUES ('Bar20','address20', 'license202001');

INSERT INTO Sells VALUES ('Bar11','Tuborg',0.76);
INSERT INTO Sells VALUES ('Bar4','Miller',1.4041);
INSERT INTO Sells VALUES ('Bar4','Bud',1.4041);
INSERT INTO Sells VALUES ('Bar11','Miller',1.4041);
INSERT INTO Sells VALUES ('Bar11','Bud',1.4041);
INSERT INTO Sells VALUES ('Bar1','Carlsberg',3.4021);
INSERT INTO Sells VALUES ('Bar20','Bira 91',0.92);
INSERT INTO Sells VALUES ('Bar14','Corona Extra',3.6418);
INSERT INTO Sells VALUES ('Bar1','Becks',0.55);
INSERT INTO Sells VALUES ('Bar14','Becks',0.74);
INSERT INTO Sells VALUES ('Bar11','Heineken',3.2813);
INSERT INTO Sells VALUES ('Bar10','Kingfisher',0.97);
INSERT INTO Sells VALUES ('Bar10','Guinness',4.1556);
INSERT INTO Sells VALUES ('Bar4','Becks',2.1008);
INSERT INTO Sells VALUES ('Bar10','Heineken',0.84);
INSERT INTO Sells VALUES ('Bar14','Bud Light',0.9);
INSERT INTO Sells VALUES ('Bar4','Kingfisher',3.52);
INSERT INTO Sells VALUES ('Bar19','Kingfisher',2.9796);
INSERT INTO Sells VALUES ('Bar2','Cristal',0.75);
INSERT INTO Sells VALUES ('Bar13','Hamms',2.8538);
INSERT INTO Sells VALUES ('Bar19','Miller',0.52);
INSERT INTO Sells VALUES ('Bar12','Peroni',3.2888);
INSERT INTO Sells VALUES ('Bar12','Hamms',1.2634);
INSERT INTO Sells VALUES ('Bar16','Kingfisher',3.2646);
INSERT INTO Sells VALUES ('Bar7','Tuborg',0.98);
INSERT INTO Sells VALUES ('Bar5','Aguila',3.1881);
INSERT INTO Sells VALUES ('Bar3','Tuborg',0.88);
INSERT INTO Sells VALUES ('Bar17','Carlsberg',0.52);
INSERT INTO Sells VALUES ('Bar1','Hamms',0.61);
INSERT INTO Sells VALUES ('Bar9','Cristal',0.51);
INSERT INTO Sells VALUES ('Bar3','Kingfisher Strong',0.57);
INSERT INTO Sells VALUES ('Bar7','Kingfisher Strong',3.3757);
INSERT INTO Sells VALUES ('Bar13','The Black Mamba',0.52);
INSERT INTO Sells VALUES ('Bar17','The Black Mamba',1.2368);
INSERT INTO Sells VALUES ('Bar6','Guinness',0.96);
INSERT INTO Sells VALUES ('Bar13','Cristal',2.806);
INSERT INTO Sells VALUES ('Bar4','Corona Extra',0.84);
INSERT INTO Sells VALUES ('Bar10','Peroni Gran Riserva',0.9);
INSERT INTO Sells VALUES ('Bar16','Peroni Gran Riserva',3.0416);
INSERT INTO Sells VALUES ('Bar6','Aguila',0.8);
INSERT INTO Sells VALUES ('Bar15','The Black Mamba',0.73);
INSERT INTO Sells VALUES ('Bar4','Kingfisher Strong',0.6);
INSERT INTO Sells VALUES ('Bar13','Kingfisher',0.79);
INSERT INTO Sells VALUES ('Bar17','Hoegaarden',2.9558);
INSERT INTO Sells VALUES ('Bar3','Bud Weiser',1.4144);
INSERT INTO Sells VALUES ('Bar3','Cristal',1);
INSERT INTO Sells VALUES ('Bar14','Peroncino',0.77);
INSERT INTO Sells VALUES ('Bar20','Bud Weiser',3.0024);
INSERT INTO Sells VALUES ('Bar11','Hoegaarden',3.0649);
INSERT INTO Sells VALUES ('Bar3','Bira 91',0.61);
INSERT INTO Sells VALUES ('Bar19','Guinness',0.58);
INSERT INTO Sells VALUES ('Bar15','Hamms',3.5824);
INSERT INTO Sells VALUES ('Bar15','Bira 91',0.7);
INSERT INTO Sells VALUES ('Bar8','Cristal',0.75);
INSERT INTO Sells VALUES ('Bar11','Guinness',1.2668);
INSERT INTO Sells VALUES ('Bar6','Peroncino',0.78);
INSERT INTO Sells VALUES ('Bar3','Corona Extra',0.63);
INSERT INTO Sells VALUES ('Bar5','Peroni',0.53);
INSERT INTO Sells VALUES ('Bar4','Peroni Leggera',0.8);
INSERT INTO Sells VALUES ('Bar12','Becks',1.0142);
INSERT INTO Sells VALUES ('Bar7','Aguila',0.97);
INSERT INTO Sells VALUES ('Bar14','Bud',2.427);
INSERT INTO Sells VALUES ('Bar16','Bud Weiser',2.9711);
INSERT INTO Sells VALUES ('Bar17','Peroni',1.7285);
INSERT INTO Sells VALUES ('Bar1','Kingfisher Premium',1.2695);
INSERT INTO Sells VALUES ('Bar20','The Black Mamba',3.6576);
INSERT INTO Sells VALUES ('Bar19','Corona',2.7371);
INSERT INTO Sells VALUES ('Bar19','The Black Mamba',3.3851);
INSERT INTO Sells VALUES ('Bar19','Aguila',3.1119);
INSERT INTO Sells VALUES ('Bar1','Guinness',4.106);
INSERT INTO Sells VALUES ('Bar11','The Black Mamba',0.89);
INSERT INTO Sells VALUES ('Bar8','Tuborg',3.2758);
INSERT INTO Sells VALUES ('Bar10','Miller High Life',0.69);
INSERT INTO Sells VALUES ('Bar18','White Owl',0.69);
INSERT INTO Sells VALUES ('Bar9','Guinness',3.852);
INSERT INTO Sells VALUES ('Bar2','Tuborg',4.2525);
INSERT INTO Sells VALUES ('Bar1','Miller High Life',1.8116);
INSERT INTO Sells VALUES ('Bar12','Guinness',0.99);
INSERT INTO Sells VALUES ('Bar11','Kingfisher',0.94);
INSERT INTO Sells VALUES ('Bar12','Miller High Life',2.3829);
INSERT INTO Sells VALUES ('Bar14','Kingfisher Premium',0.52);
INSERT INTO Sells VALUES ('Bar18','Daredevil',0.58);
INSERT INTO Sells VALUES ('Bar1','Heineken',0.58);
INSERT INTO Sells VALUES ('Bar14','Peroni',2.9801);
INSERT INTO Sells VALUES ('Bar1','Kingfisher',2.2993);
INSERT INTO Sells VALUES ('Bar12','Carlsberg',2.2835);
INSERT INTO Sells VALUES ('Bar13','Bud',0.53);
INSERT INTO Sells VALUES ('Bar17','Kingfisher Premium',1.9357);
INSERT INTO Sells VALUES ('Bar18','Peroni Gran Riserva',0.86);
INSERT INTO Sells VALUES ('Bar18','Carlsberg',2.2717);
INSERT INTO Sells VALUES ('Bar6','Cristal',0.54);
INSERT INTO Sells VALUES ('Bar6','Bud Light',1.8932);
INSERT INTO Sells VALUES ('Bar16','Hoegaarden',2.6962);
INSERT INTO Sells VALUES ('Bar13','Heineken',2.4369);
INSERT INTO Sells VALUES ('Bar4','Tuborg',0.57);
INSERT INTO Sells VALUES ('Bar8','Kingfisher',1.4675);
INSERT INTO Sells VALUES ('Bar4','Peroncino',0.96);
INSERT INTO Sells VALUES ('Bar16','Corona Extra',0.7);
INSERT INTO Sells VALUES ('Bar7','Miller High Life',0.83);
INSERT INTO Sells VALUES ('Bar19','Peroni',0.85);
INSERT INTO Sells VALUES ('Bar18','Hamms',0.77);
INSERT INTO Sells VALUES ('Bar6','Hamms',0.95);
INSERT INTO Sells VALUES ('Bar14','Heineken',0.85);
INSERT INTO Sells VALUES ('Bar18','Bira 91',4.2678);
INSERT INTO Sells VALUES ('Bar4','Aguila',2.2673);
INSERT INTO Sells VALUES ('Bar13','Peroncino',0.9);
INSERT INTO Sells VALUES ('Bar13','Bud Light',0.98);
INSERT INTO Sells VALUES ('Bar9','Hoegaarden',0.89);
INSERT INTO Sells VALUES ('Bar12','Kingfisher',3.2044);
INSERT INTO Sells VALUES ('Bar16','Crystall',0.69);
INSERT INTO Sells VALUES ('Bar2','Guinness',0.54);
INSERT INTO Sells VALUES ('Bar13','Bud Weiser',2.7549);
INSERT INTO Sells VALUES ('Bar2','Miller',0.67);
INSERT INTO Sells VALUES ('Bar15','Peroni Gran Riserva',0.63);
INSERT INTO Sells VALUES ('Bar14','Daredevil',0.84);
INSERT INTO Sells VALUES ('Bar20','Corona',0.54);
INSERT INTO Sells VALUES ('Bar16','White Owl',2.5498);
INSERT INTO Sells VALUES ('Bar8','Peroni',0.55);
INSERT INTO Sells VALUES ('Bar12','Peroni Gran Riserva',2.824);
INSERT INTO Sells VALUES ('Bar14','Tuborg',1.6704);
INSERT INTO Sells VALUES ('Bar6','Peroni',0.99);
INSERT INTO Sells VALUES ('Bar5','Bira 91',1.2971);
INSERT INTO Sells VALUES ('Bar14','Miller',3.1545);
INSERT INTO Sells VALUES ('Bar7','Kingfisher Premium',1.1769);
INSERT INTO Sells VALUES ('Bar20','Hoegaarden',3.8289);
INSERT INTO Sells VALUES ('Bar6','Carlsberg',3.3245);
INSERT INTO Sells VALUES ('Bar13','Guinness',0.65);
INSERT INTO Sells VALUES ('Bar8','Becks',0.56);
INSERT INTO Sells VALUES ('Bar9','Corona Extra',3.5347);
INSERT INTO Sells VALUES ('Bar4','Heineken',0.5);
INSERT INTO Sells VALUES ('Bar2','Peroni Leggera',2.1342);
INSERT INTO Sells VALUES ('Bar1','The Black Mamba',1.1758);
INSERT INTO Sells VALUES ('Bar9','Bud',0.92);
INSERT INTO Sells VALUES ('Bar9','Peroni',0.82);
INSERT INTO Sells VALUES ('Bar7','Heineken',0.77);
INSERT INTO Sells VALUES ('Bar4','Guinness',4.2257);
INSERT INTO Sells VALUES ('Bar5','Tuborg',3.3318);
INSERT INTO Sells VALUES ('Bar12','The Black Mamba',0.57);
INSERT INTO Sells VALUES ('Bar17','Peroni Leggera',1.9515);
INSERT INTO Sells VALUES ('Bar14','Miller High Life',4.1196);
INSERT INTO Sells VALUES ('Bar13','Miller High Life',0.5);
INSERT INTO Sells VALUES ('Bar5','Hoegaarden',3.0626);
INSERT INTO Sells VALUES ('Bar6','Peroni Leggera',0.6);
INSERT INTO Sells VALUES ('Bar15','Daredevil',1.6652);
INSERT INTO Sells VALUES ('Bar19','Miller High Life',0.59);
INSERT INTO Sells VALUES ('Bar11','Bud Weiser',0.98);
INSERT INTO Sells VALUES ('Bar7','Bud',1.165);
INSERT INTO Sells VALUES ('Bar15','Kingfisher Strong',2.0353);
INSERT INTO Sells VALUES ('Bar13','Becks',0.98);
INSERT INTO Sells VALUES ('Bar4','Kingfisher Premium',3.6303);
INSERT INTO Sells VALUES ('Bar9','Becks',0.78);
INSERT INTO Sells VALUES ('Bar9','Daredevil',3.108);

INSERT INTO Likes VALUES ('Fred','White Owl');
INSERT INTO Likes VALUES ('Florene','Kingfisher Strong');
INSERT INTO Likes VALUES ('Julie','Tuborg');
INSERT INTO Likes VALUES ('Jolie','Peroni');
INSERT INTO Likes VALUES ('Emanuele','Bud');
INSERT INTO Likes VALUES ('Diego','Hoegaarden');
INSERT INTO Likes VALUES ('Vanda','Peroncino');
INSERT INTO Likes VALUES ('Christiana','Miller High Life');
INSERT INTO Likes VALUES ('Alehhandro','White Owl');
INSERT INTO Likes VALUES ('Matthias','Crystall');
INSERT INTO Likes VALUES ('Emanuele','Miller High Life');
INSERT INTO Likes VALUES ('Joe','Daredevil');
INSERT INTO Likes VALUES ('Joe','Tuborg');
INSERT INTO Likes VALUES ('Matthias','Peroni Gran Riserva');
INSERT INTO Likes VALUES ('Diego','Aguila');
INSERT INTO Likes VALUES ('Jaymie','Heineken');
INSERT INTO Likes VALUES ('Christiana','Bud');
INSERT INTO Likes VALUES ('Emanuele','Corona');
INSERT INTO Likes VALUES ('Dian','The Black Mamba');
INSERT INTO Likes VALUES ('Andrea','Cristal');
INSERT INTO Likes VALUES ('Natacha','Peroni Leggera');
INSERT INTO Likes VALUES ('Diego','Corona Extra');
INSERT INTO Likes VALUES ('Christiana','Tuborg');
INSERT INTO Likes VALUES ('Emanuele','Cristal');
INSERT INTO Likes VALUES ('Emanuele','Kingfisher Premium');
INSERT INTO Likes VALUES ('Alehhandro','Guinness');
INSERT INTO Likes VALUES ('Julie','The Black Mamba');
INSERT INTO Likes VALUES ('Florene','Guinness');
INSERT INTO Likes VALUES ('Florene','Hamms');
INSERT INTO Likes VALUES ('Joe','Kingfisher');
INSERT INTO Likes VALUES ('Vanda','White Owl');
INSERT INTO Likes VALUES ('Natacha','Hoegaarden');
INSERT INTO Likes VALUES ('Andrea','Bira 91');
INSERT INTO Likes VALUES ('Natacha','Becks');
INSERT INTO Likes VALUES ('Florene','Crystall');
INSERT INTO Likes VALUES ('Diego','Guinness');
INSERT INTO Likes VALUES ('Joe','Kingfisher Premium');
INSERT INTO Likes VALUES ('Fred','Kingfisher Strong');
INSERT INTO Likes VALUES ('Vanda','Heineken');
INSERT INTO Likes VALUES ('Jaymie','Daredevil');
INSERT INTO Likes VALUES ('Vanda','Bud Weiser');
INSERT INTO Likes VALUES ('Andrea','Miller');
INSERT INTO Likes VALUES ('Matthias','Kingfisher');
INSERT INTO Likes VALUES ('Julie','White Owl');
INSERT INTO Likes VALUES ('Alehhandro','Tuborg');
INSERT INTO Likes VALUES ('Stefania','Peroncino');
INSERT INTO Likes VALUES ('Lovie','Peroni Gran Riserva');
INSERT INTO Likes VALUES ('Renato','Kingfisher Strong');
INSERT INTO Likes VALUES ('Florene','Daredevil');
INSERT INTO Likes VALUES ('Stefania','Aguila');
INSERT INTO Likes VALUES ('Fred','Bud Weiser');
INSERT INTO Likes VALUES ('Christiana','Corona');
INSERT INTO Likes VALUES ('Alehhandro','Becks');
INSERT INTO Likes VALUES ('Emanuele','Corona Extra');
INSERT INTO Likes VALUES ('Vanda','Crystall');
INSERT INTO Likes VALUES ('Julie','Peroni Gran Riserva');
INSERT INTO Likes VALUES ('Stefania','Bud');
INSERT INTO Likes VALUES ('Jolie','Bira 91');
INSERT INTO Likes VALUES ('Francesco','Peroncino');
INSERT INTO Likes VALUES ('Renato','Cristal');
INSERT INTO Likes VALUES ('Julie','Daredevil');
INSERT INTO Likes VALUES ('Francesco','Kingfisher Strong');
INSERT INTO Likes VALUES ('Michael','Peroni Gran Riserva');
INSERT INTO Likes VALUES ('Florene','Corona');
INSERT INTO Likes VALUES ('Christiana','Aguila');
INSERT INTO Likes VALUES ('Michael','Tuborg');
INSERT INTO Likes VALUES ('Lovie','Hamms');
INSERT INTO Likes VALUES ('Michael','Miller');
INSERT INTO Likes VALUES ('Andrea','Bud');
INSERT INTO Likes VALUES ('Emanuele','Daredevil');

INSERT INTO Frequents VALUES ('Jolie','Bar11');
INSERT INTO Frequents VALUES ('Diego','Bar16');
INSERT INTO Frequents VALUES ('Christiana','Bar17');
INSERT INTO Frequents VALUES ('Jaymie','Bar15');
INSERT INTO Frequents VALUES ('Stefania','Bar9');
INSERT INTO Frequents VALUES ('Vanda','Bar12');
INSERT INTO Frequents VALUES ('Jaymie','Bar12');
INSERT INTO Frequents VALUES ('Natacha','Bar20');
INSERT INTO Frequents VALUES ('Fred','Bar3');
INSERT INTO Frequents VALUES ('Julie','Bar16');
INSERT INTO Frequents VALUES ('Jaymie','Bar10');
INSERT INTO Frequents VALUES ('Joe','Bar19');
INSERT INTO Frequents VALUES ('Matthias','Bar19');
INSERT INTO Frequents VALUES ('Francesco','Bar20');
INSERT INTO Frequents VALUES ('Fred','Bar7');
INSERT INTO Frequents VALUES ('Jolie','Bar3');
INSERT INTO Frequents VALUES ('Christiana','Bar19');
INSERT INTO Frequents VALUES ('Michael','Bar7');
INSERT INTO Frequents VALUES ('Jaymie','Bar18');
INSERT INTO Frequents VALUES ('Stefania','Bar8');
INSERT INTO Frequents VALUES ('Renato','Bar19');
INSERT INTO Frequents VALUES ('Alehhandro','Bar19');
INSERT INTO Frequents VALUES ('Joe','Bar13');
INSERT INTO Frequents VALUES ('Vanda','Bar3');
INSERT INTO Frequents VALUES ('Alehhandro','Bar16');
INSERT INTO Frequents VALUES ('Florene','Bar3');
INSERT INTO Frequents VALUES ('Renato','Bar17');
INSERT INTO Frequents VALUES ('Dian','Bar19');
INSERT INTO Frequents VALUES ('Dian','Bar9');
INSERT INTO Frequents VALUES ('Lovie','Bar17');
INSERT INTO Frequents VALUES ('Andrea','Bar10');
INSERT INTO Frequents VALUES ('Stefania','Bar19');
INSERT INTO Frequents VALUES ('Emanuele','Bar1');
INSERT INTO Frequents VALUES ('Renato','Bar3');
INSERT INTO Frequents VALUES ('Florene','Bar16');
INSERT INTO Frequents VALUES ('Jaymie','Bar2');
INSERT INTO Frequents VALUES ('Natacha','Bar19');
INSERT INTO Frequents VALUES ('Francesco','Bar15');
INSERT INTO Frequents VALUES ('Francesco','Bar9');
INSERT INTO Frequents VALUES ('Emanuele','Bar19');
INSERT INTO Frequents VALUES ('Matthias','Bar16');
INSERT INTO Frequents VALUES ('Florene','Bar2');
INSERT INTO Frequents VALUES ('Vanda','Bar15');
INSERT INTO Frequents VALUES ('Andrea','Bar6');
INSERT INTO Frequents VALUES ('Julie','Bar18');
INSERT INTO Frequents VALUES ('Michael','Bar2');
INSERT INTO Frequents VALUES ('Julie','Bar10');
INSERT INTO Frequents VALUES ('Emanuele','Bar11');
INSERT INTO Frequents VALUES ('Matthias','Bar11');
INSERT INTO Frequents VALUES ('Christiana','Bar6');