--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.0

-- Started on 2019-11-22 14:10:16 CET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 16508)
-- Name: Bars; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Bars" (
    name character varying(255) NOT NULL,
    addr character varying(255) NOT NULL,
    license character varying(255) NOT NULL
);


ALTER TABLE public."Bars" OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16500)
-- Name: Beers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Beers" (
    name character varying(255) NOT NULL,
    manf character varying(255) NOT NULL
);


ALTER TABLE public."Beers" OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16516)
-- Name: Drinkers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Drinkers" (
    name character varying(255) NOT NULL,
    addr character varying(255) NOT NULL,
    phone character varying(20) NOT NULL
);


ALTER TABLE public."Drinkers" OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16560)
-- Name: Frequents; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Frequents" (
    drinker character varying(255) NOT NULL,
    bar character varying(255) NOT NULL
);


ALTER TABLE public."Frequents" OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16524)
-- Name: Likes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Likes" (
    drinker character varying(255) NOT NULL,
    beer character varying(255) NOT NULL
);


ALTER TABLE public."Likes" OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16542)
-- Name: Sells; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Sells" (
    bar character varying(255) NOT NULL,
    beer character varying(255) NOT NULL,
    price real NOT NULL
);


ALTER TABLE public."Sells" OWNER TO postgres;

--
-- TOC entry 3175 (class 0 OID 16508)
-- Dependencies: 203
-- Data for Name: Bars; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Bars" (name, addr, license) VALUES ('Bar1', 'address1', 'license201982');
INSERT INTO public."Bars" (name, addr, license) VALUES ('Bar2', 'address2', 'license201983');
INSERT INTO public."Bars" (name, addr, license) VALUES ('Bar3', 'address3', 'license201984');
INSERT INTO public."Bars" (name, addr, license) VALUES ('Bar4', 'address4', 'license201985');
INSERT INTO public."Bars" (name, addr, license) VALUES ('Bar5', 'address5', 'license201986');
INSERT INTO public."Bars" (name, addr, license) VALUES ('Bar6', 'address6', 'license201987');
INSERT INTO public."Bars" (name, addr, license) VALUES ('Bar7', 'address7', 'license201988');
INSERT INTO public."Bars" (name, addr, license) VALUES ('Bar8', 'address8', 'license201989');
INSERT INTO public."Bars" (name, addr, license) VALUES ('Bar9', 'address9', 'license201990');
INSERT INTO public."Bars" (name, addr, license) VALUES ('Bar10', 'address10', 'license201991');
INSERT INTO public."Bars" (name, addr, license) VALUES ('Bar11', 'address11', 'license201992');
INSERT INTO public."Bars" (name, addr, license) VALUES ('Bar12', 'address12', 'license201993');
INSERT INTO public."Bars" (name, addr, license) VALUES ('Bar13', 'address13', 'license201994');
INSERT INTO public."Bars" (name, addr, license) VALUES ('Bar14', 'address14', 'license201995');
INSERT INTO public."Bars" (name, addr, license) VALUES ('Bar15', 'address15', 'license201996');
INSERT INTO public."Bars" (name, addr, license) VALUES ('Bar16', 'address16', 'license201997');
INSERT INTO public."Bars" (name, addr, license) VALUES ('Bar17', 'address17', 'license201998');
INSERT INTO public."Bars" (name, addr, license) VALUES ('Bar18', 'address18', 'license201999');
INSERT INTO public."Bars" (name, addr, license) VALUES ('Bar19', 'address19', 'license202000');
INSERT INTO public."Bars" (name, addr, license) VALUES ('Bar20', 'address20', 'license202001');


--
-- TOC entry 3174 (class 0 OID 16500)
-- Dependencies: 202
-- Data for Name: Beers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Beers" (name, manf) VALUES ('Kingfisher', 'United Breweries Group');
INSERT INTO public."Beers" (name, manf) VALUES ('Kingfisher Strong', 'United Breweries Group');
INSERT INTO public."Beers" (name, manf) VALUES ('Kingfisher Premium', 'United Breweries Group');
INSERT INTO public."Beers" (name, manf) VALUES ('Tuborg', 'Carlsberg Group');
INSERT INTO public."Beers" (name, manf) VALUES ('Carlsberg', 'Carlsberg Group');
INSERT INTO public."Beers" (name, manf) VALUES ('Bud Weiser', 'Anheuser-Busch');
INSERT INTO public."Beers" (name, manf) VALUES ('Bud', 'Anheuser-Busch');
INSERT INTO public."Beers" (name, manf) VALUES ('Bud Light', 'Anheuser-Busch');
INSERT INTO public."Beers" (name, manf) VALUES ('Becks', 'Anheuser-Busch');
INSERT INTO public."Beers" (name, manf) VALUES ('Heineken', 'Heineken International');
INSERT INTO public."Beers" (name, manf) VALUES ('Corona', 'Cerveceria Modelo');
INSERT INTO public."Beers" (name, manf) VALUES ('Corona Extra', 'Cerveceria Modelo');
INSERT INTO public."Beers" (name, manf) VALUES ('Bira 91', 'B9 Beverages Pvt. Ltd');
INSERT INTO public."Beers" (name, manf) VALUES ('Hoegaarden', 'Hoegaarden Brewery');
INSERT INTO public."Beers" (name, manf) VALUES ('Miller High Life', 'Miller');
INSERT INTO public."Beers" (name, manf) VALUES ('Miller', 'Miller');
INSERT INTO public."Beers" (name, manf) VALUES ('Aguila', 'Miller');
INSERT INTO public."Beers" (name, manf) VALUES ('Cristal', 'Miller');
INSERT INTO public."Beers" (name, manf) VALUES ('Hamms', 'Miller');
INSERT INTO public."Beers" (name, manf) VALUES ('Peroni', 'Peroni');
INSERT INTO public."Beers" (name, manf) VALUES ('Peroni Leggera', 'Peroni');
INSERT INTO public."Beers" (name, manf) VALUES ('Peroni Gran Riserva', 'Peroni');
INSERT INTO public."Beers" (name, manf) VALUES ('Peroncino', 'Peroni');
INSERT INTO public."Beers" (name, manf) VALUES ('Crystall', 'Peroni');
INSERT INTO public."Beers" (name, manf) VALUES ('Daredevil', 'Daredevil Brewing Co');
INSERT INTO public."Beers" (name, manf) VALUES ('The Black Mamba', 'MONYO Brewing Co');
INSERT INTO public."Beers" (name, manf) VALUES ('White Owl', 'White Owl Brewery');
INSERT INTO public."Beers" (name, manf) VALUES ('Guinness', 'Guinness & Co. Brewery');


--
-- TOC entry 3176 (class 0 OID 16516)
-- Dependencies: 204
-- Data for Name: Drinkers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Drinkers" (name, addr, phone) VALUES ('Alehhandro', 'address91', '4417409488');
INSERT INTO public."Drinkers" (name, addr, phone) VALUES ('Diego', 'address92', '4424551711');
INSERT INTO public."Drinkers" (name, addr, phone) VALUES ('Michael', 'address93', '4452761423');
INSERT INTO public."Drinkers" (name, addr, phone) VALUES ('Matthias', 'address94', '4422168576');
INSERT INTO public."Drinkers" (name, addr, phone) VALUES ('Julie', 'address95', '4418927954');
INSERT INTO public."Drinkers" (name, addr, phone) VALUES ('Stefania', 'address96', '4431233411');
INSERT INTO public."Drinkers" (name, addr, phone) VALUES ('Francesco', 'address97', '4438742779');
INSERT INTO public."Drinkers" (name, addr, phone) VALUES ('Renato', 'address98', '4431986502');
INSERT INTO public."Drinkers" (name, addr, phone) VALUES ('Vanda', 'address99', '4486024865');
INSERT INTO public."Drinkers" (name, addr, phone) VALUES ('Emanuele', 'address910', '4409006138');
INSERT INTO public."Drinkers" (name, addr, phone) VALUES ('Andrea', 'address911', '4493446066');
INSERT INTO public."Drinkers" (name, addr, phone) VALUES ('Lovie', 'address912', '4418496378');
INSERT INTO public."Drinkers" (name, addr, phone) VALUES ('Jaymie', 'address913', '4482913598');
INSERT INTO public."Drinkers" (name, addr, phone) VALUES ('Christiana', 'address914', '4440763615');
INSERT INTO public."Drinkers" (name, addr, phone) VALUES ('Natacha', 'address915', '4442097372');
INSERT INTO public."Drinkers" (name, addr, phone) VALUES ('Florene', 'address916', '4460165754');
INSERT INTO public."Drinkers" (name, addr, phone) VALUES ('Jolie', 'address917', '4412001460');
INSERT INTO public."Drinkers" (name, addr, phone) VALUES ('Dian', 'address918', '4471777733');
INSERT INTO public."Drinkers" (name, addr, phone) VALUES ('Fred', 'address919', '4459981826');
INSERT INTO public."Drinkers" (name, addr, phone) VALUES ('Joe', 'address920', '4460380125');


--
-- TOC entry 3179 (class 0 OID 16560)
-- Dependencies: 207
-- Data for Name: Frequents; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Frequents" (drinker, bar) VALUES ('Jolie', 'Bar11');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Diego', 'Bar16');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Christiana', 'Bar17');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Jaymie', 'Bar15');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Stefania', 'Bar9');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Vanda', 'Bar12');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Jaymie', 'Bar12');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Natacha', 'Bar20');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Fred', 'Bar3');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Julie', 'Bar16');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Jaymie', 'Bar10');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Joe', 'Bar19');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Matthias', 'Bar19');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Francesco', 'Bar20');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Fred', 'Bar7');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Jolie', 'Bar3');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Christiana', 'Bar19');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Michael', 'Bar7');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Jaymie', 'Bar18');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Stefania', 'Bar8');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Renato', 'Bar19');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Alehhandro', 'Bar19');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Joe', 'Bar13');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Vanda', 'Bar3');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Alehhandro', 'Bar16');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Florene', 'Bar3');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Renato', 'Bar17');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Dian', 'Bar19');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Dian', 'Bar9');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Lovie', 'Bar17');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Stefania', 'Bar19');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Emanuele', 'Bar1');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Renato', 'Bar3');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Florene', 'Bar16');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Jaymie', 'Bar2');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Natacha', 'Bar19');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Francesco', 'Bar15');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Francesco', 'Bar9');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Emanuele', 'Bar19');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Matthias', 'Bar16');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Florene', 'Bar2');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Vanda', 'Bar15');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Andrea', 'Bar6');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Julie', 'Bar18');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Michael', 'Bar2');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Julie', 'Bar10');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Emanuele', 'Bar11');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Matthias', 'Bar11');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Christiana', 'Bar6');
INSERT INTO public."Frequents" (drinker, bar) VALUES ('Andrea', 'Bar10');


--
-- TOC entry 3177 (class 0 OID 16524)
-- Dependencies: 205
-- Data for Name: Likes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Likes" (drinker, beer) VALUES ('Fred', 'White Owl');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Florene', 'Kingfisher Strong');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Julie', 'Tuborg');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Jolie', 'Peroni');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Emanuele', 'Bud');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Diego', 'Hoegaarden');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Vanda', 'Peroncino');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Christiana', 'Miller High Life');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Alehhandro', 'White Owl');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Matthias', 'Crystall');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Emanuele', 'Miller High Life');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Joe', 'Daredevil');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Joe', 'Tuborg');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Matthias', 'Peroni Gran Riserva');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Diego', 'Aguila');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Jaymie', 'Heineken');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Christiana', 'Bud');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Emanuele', 'Corona');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Dian', 'The Black Mamba');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Andrea', 'Cristal');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Natacha', 'Peroni Leggera');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Diego', 'Corona Extra');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Christiana', 'Tuborg');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Emanuele', 'Cristal');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Emanuele', 'Kingfisher Premium');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Alehhandro', 'Guinness');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Julie', 'The Black Mamba');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Florene', 'Guinness');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Florene', 'Hamms');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Joe', 'Kingfisher');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Vanda', 'White Owl');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Natacha', 'Hoegaarden');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Andrea', 'Bira 91');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Natacha', 'Becks');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Florene', 'Crystall');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Diego', 'Guinness');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Joe', 'Kingfisher Premium');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Fred', 'Kingfisher Strong');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Vanda', 'Heineken');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Jaymie', 'Daredevil');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Vanda', 'Bud Weiser');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Andrea', 'Miller');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Matthias', 'Kingfisher');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Julie', 'White Owl');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Alehhandro', 'Tuborg');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Stefania', 'Peroncino');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Lovie', 'Peroni Gran Riserva');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Renato', 'Kingfisher Strong');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Florene', 'Daredevil');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Stefania', 'Aguila');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Fred', 'Bud Weiser');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Christiana', 'Corona');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Alehhandro', 'Becks');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Emanuele', 'Corona Extra');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Vanda', 'Crystall');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Julie', 'Peroni Gran Riserva');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Stefania', 'Bud');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Jolie', 'Bira 91');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Francesco', 'Peroncino');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Renato', 'Cristal');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Julie', 'Daredevil');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Francesco', 'Kingfisher Strong');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Michael', 'Peroni Gran Riserva');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Florene', 'Corona');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Christiana', 'Aguila');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Michael', 'Tuborg');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Lovie', 'Hamms');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Michael', 'Miller');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Andrea', 'Bud');
INSERT INTO public."Likes" (drinker, beer) VALUES ('Emanuele', 'Daredevil');


--
-- TOC entry 3178 (class 0 OID 16542)
-- Dependencies: 206
-- Data for Name: Sells; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar11', 'Tuborg', 0.76);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar4', 'Miller', 1.4041);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar4', 'Bud', 1.4041);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar11', 'Miller', 1.4041);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar11', 'Bud', 1.4041);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar1', 'Carlsberg', 3.4021);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar20', 'Bira 91', 0.92);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar14', 'Corona Extra', 3.6418);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar1', 'Becks', 0.55);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar14', 'Becks', 0.74);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar11', 'Heineken', 3.2813);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar10', 'Kingfisher', 0.97);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar10', 'Guinness', 4.1556);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar4', 'Becks', 2.1008);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar10', 'Heineken', 0.84);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar14', 'Bud Light', 0.9);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar4', 'Kingfisher', 3.52);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar19', 'Kingfisher', 2.9796);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar2', 'Cristal', 0.75);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar13', 'Hamms', 2.8538);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar19', 'Miller', 0.52);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar12', 'Peroni', 3.2888);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar12', 'Hamms', 1.2634);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar16', 'Kingfisher', 3.2646);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar7', 'Tuborg', 0.98);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar5', 'Aguila', 3.1881);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar3', 'Tuborg', 0.88);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar17', 'Carlsberg', 0.52);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar1', 'Hamms', 0.61);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar9', 'Cristal', 0.51);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar3', 'Kingfisher Strong', 0.57);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar7', 'Kingfisher Strong', 3.3757);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar13', 'The Black Mamba', 0.52);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar17', 'The Black Mamba', 1.2368);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar6', 'Guinness', 0.96);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar13', 'Cristal', 2.806);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar4', 'Corona Extra', 0.84);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar10', 'Peroni Gran Riserva', 0.9);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar16', 'Peroni Gran Riserva', 3.0416);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar6', 'Aguila', 0.8);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar15', 'The Black Mamba', 0.73);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar4', 'Kingfisher Strong', 0.6);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar13', 'Kingfisher', 0.79);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar17', 'Hoegaarden', 2.9558);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar3', 'Bud Weiser', 1.4144);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar3', 'Cristal', 1);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar14', 'Peroncino', 0.77);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar20', 'Bud Weiser', 3.0024);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar11', 'Hoegaarden', 3.0649);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar3', 'Bira 91', 0.61);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar19', 'Guinness', 0.58);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar15', 'Hamms', 3.5824);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar15', 'Bira 91', 0.7);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar8', 'Cristal', 0.75);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar11', 'Guinness', 1.2668);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar6', 'Peroncino', 0.78);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar3', 'Corona Extra', 0.63);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar5', 'Peroni', 0.53);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar4', 'Peroni Leggera', 0.8);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar12', 'Becks', 1.0142);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar7', 'Aguila', 0.97);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar14', 'Bud', 2.427);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar16', 'Bud Weiser', 2.9711);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar17', 'Peroni', 1.7285);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar1', 'Kingfisher Premium', 1.2695);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar20', 'The Black Mamba', 3.6576);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar19', 'Corona', 2.7371);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar19', 'The Black Mamba', 3.3851);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar19', 'Aguila', 3.1119);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar1', 'Guinness', 4.106);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar11', 'The Black Mamba', 0.89);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar8', 'Tuborg', 3.2758);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar10', 'Miller High Life', 0.69);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar18', 'White Owl', 0.69);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar9', 'Guinness', 3.852);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar2', 'Tuborg', 4.2525);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar1', 'Miller High Life', 1.8116);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar12', 'Guinness', 0.99);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar11', 'Kingfisher', 0.94);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar12', 'Miller High Life', 2.3829);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar14', 'Kingfisher Premium', 0.52);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar18', 'Daredevil', 0.58);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar1', 'Heineken', 0.58);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar14', 'Peroni', 2.9801);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar1', 'Kingfisher', 2.2993);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar12', 'Carlsberg', 2.2835);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar13', 'Bud', 0.53);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar17', 'Kingfisher Premium', 1.9357);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar18', 'Peroni Gran Riserva', 0.86);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar18', 'Carlsberg', 2.2717);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar6', 'Cristal', 0.54);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar6', 'Bud Light', 1.8932);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar16', 'Hoegaarden', 2.6962);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar13', 'Heineken', 2.4369);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar4', 'Tuborg', 0.57);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar8', 'Kingfisher', 1.4675);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar4', 'Peroncino', 0.96);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar16', 'Corona Extra', 0.7);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar7', 'Miller High Life', 0.83);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar19', 'Peroni', 0.85);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar18', 'Hamms', 0.77);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar6', 'Hamms', 0.95);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar14', 'Heineken', 0.85);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar18', 'Bira 91', 4.2678);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar4', 'Aguila', 2.2673);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar13', 'Peroncino', 0.9);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar13', 'Bud Light', 0.98);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar9', 'Hoegaarden', 0.89);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar12', 'Kingfisher', 3.2044);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar16', 'Crystall', 0.69);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar2', 'Guinness', 0.54);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar13', 'Bud Weiser', 2.7549);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar2', 'Miller', 0.67);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar15', 'Peroni Gran Riserva', 0.63);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar14', 'Daredevil', 0.84);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar20', 'Corona', 0.54);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar16', 'White Owl', 2.5498);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar8', 'Peroni', 0.55);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar12', 'Peroni Gran Riserva', 2.824);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar14', 'Tuborg', 1.6704);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar6', 'Peroni', 0.99);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar5', 'Bira 91', 1.2971);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar14', 'Miller', 3.1545);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar7', 'Kingfisher Premium', 1.1769);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar20', 'Hoegaarden', 3.8289);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar6', 'Carlsberg', 3.3245);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar13', 'Guinness', 0.65);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar8', 'Becks', 0.56);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar9', 'Corona Extra', 3.5347);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar4', 'Heineken', 0.5);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar2', 'Peroni Leggera', 2.1342);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar1', 'The Black Mamba', 1.1758);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar9', 'Bud', 0.92);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar9', 'Peroni', 0.82);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar7', 'Heineken', 0.77);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar4', 'Guinness', 4.2257);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar5', 'Tuborg', 3.3318);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar12', 'The Black Mamba', 0.57);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar17', 'Peroni Leggera', 1.9515);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar14', 'Miller High Life', 4.1196);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar13', 'Miller High Life', 0.5);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar5', 'Hoegaarden', 3.0626);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar6', 'Peroni Leggera', 0.6);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar15', 'Daredevil', 1.6652);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar19', 'Miller High Life', 0.59);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar11', 'Bud Weiser', 0.98);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar7', 'Bud', 1.165);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar15', 'Kingfisher Strong', 2.0353);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar13', 'Becks', 0.98);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar4', 'Kingfisher Premium', 3.6303);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar9', 'Becks', 0.78);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar9', 'Daredevil', 3.108);
INSERT INTO public."Sells" (bar, beer, price) VALUES ('Bar18', 'Corona Extra', 4.2678);


--
-- TOC entry 3033 (class 2606 OID 16515)
-- Name: Bars bars_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Bars"
    ADD CONSTRAINT bars_pkey PRIMARY KEY (name);


--
-- TOC entry 3031 (class 2606 OID 16507)
-- Name: Beers beers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Beers"
    ADD CONSTRAINT beers_pkey PRIMARY KEY (name);


--
-- TOC entry 3035 (class 2606 OID 16523)
-- Name: Drinkers drinkers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Drinkers"
    ADD CONSTRAINT drinkers_pkey PRIMARY KEY (name);


--
-- TOC entry 3041 (class 2606 OID 16567)
-- Name: Frequents frequents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Frequents"
    ADD CONSTRAINT frequents_pkey PRIMARY KEY (drinker, bar);


--
-- TOC entry 3037 (class 2606 OID 16531)
-- Name: Likes likes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Likes"
    ADD CONSTRAINT likes_pkey PRIMARY KEY (drinker, beer);


--
-- TOC entry 3039 (class 2606 OID 16549)
-- Name: Sells sells_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sells"
    ADD CONSTRAINT sells_pkey PRIMARY KEY (bar, beer);


--
-- TOC entry 3046 (class 2606 OID 16568)
-- Name: Frequents frequents_bar_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Frequents"
    ADD CONSTRAINT frequents_bar_fkey FOREIGN KEY (bar) REFERENCES public."Bars"(name);


--
-- TOC entry 3047 (class 2606 OID 16573)
-- Name: Frequents frequents_drinker_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Frequents"
    ADD CONSTRAINT frequents_drinker_fkey FOREIGN KEY (drinker) REFERENCES public."Drinkers"(name);


--
-- TOC entry 3043 (class 2606 OID 16537)
-- Name: Likes likes_beer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Likes"
    ADD CONSTRAINT likes_beer_fkey FOREIGN KEY (beer) REFERENCES public."Beers"(name);


--
-- TOC entry 3042 (class 2606 OID 16532)
-- Name: Likes likes_drinker_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Likes"
    ADD CONSTRAINT likes_drinker_fkey FOREIGN KEY (drinker) REFERENCES public."Drinkers"(name);


--
-- TOC entry 3044 (class 2606 OID 16550)
-- Name: Sells sells_bar_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sells"
    ADD CONSTRAINT sells_bar_fkey FOREIGN KEY (bar) REFERENCES public."Bars"(name);


--
-- TOC entry 3045 (class 2606 OID 16555)
-- Name: Sells sells_beer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sells"
    ADD CONSTRAINT sells_beer_fkey FOREIGN KEY (beer) REFERENCES public."Beers"(name);


-- Completed on 2019-11-22 14:10:16 CET

--
-- PostgreSQL database dump complete
--

