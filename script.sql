--
-- PostgreSQL database cluster dump
--

-- Started on 2024-03-16 14:42:26

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--



--
-- User Configurations
--






--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 16.1

-- Started on 2024-03-16 14:42:26

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

--
-- TOC entry 5 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: root
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO root;

--
-- TOC entry 3305 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: root
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2024-03-16 14:42:27

--
-- PostgreSQL database dump complete
--

--
-- Database "ecommerce" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 16.1

-- Started on 2024-03-16 14:42:27

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

--
-- TOC entry 3319 (class 1262 OID 16384)
-- Name: ecommerce; Type: DATABASE; Schema: -; Owner: root
--




ALTER DATABASE ecommerce OWNER TO root;

\connect ecommerce

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

--
-- TOC entry 5 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: root
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO root;

--
-- TOC entry 212 (class 1259 OID 16395)
-- Name: my_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.my_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.my_seq OWNER TO root;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 209 (class 1259 OID 16385)
-- Name: produit; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.produit (
    id integer NOT NULL,
    description character varying(1500),
    image character varying(500),
    prix real,
    titre character varying(255)
);


ALTER TABLE public.produit OWNER TO root;

--
-- TOC entry 210 (class 1259 OID 16390)
-- Name: produit_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.produit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.produit_id_seq OWNER TO root;

--
-- TOC entry 3321 (class 0 OID 0)
-- Dependencies: 210
-- Name: produit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.produit_id_seq OWNED BY public.produit.id;


--
-- TOC entry 211 (class 1259 OID 16394)
-- Name: produit_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.produit_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.produit_seq OWNER TO root;

--
-- TOC entry 3168 (class 2604 OID 16391)
-- Name: produit id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.produit ALTER COLUMN id SET DEFAULT nextval('public.produit_id_seq'::regclass);


--
-- TOC entry 3310 (class 0 OID 16385)
-- Dependencies: 209
-- Data for Name: produit; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.produit (id, description, image, prix, titre) FROM stdin;
1	 la PS5 propose des graphismes époustouflants et une vitesse de chargement ultra-rapide grâce à son SSD intégré. Elle est équipée d'un processeur AMD Ryzen Zen 2 avec 8 cœurs, capable de fournir des performances de jeu fluides et réactives	https://images.unsplash.com/photo-1606144042614-b2417e99c4e3?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D	429.99	Playstation 5
2	Les caractéristiques d'un costume de qualité incluent des tissus haut de gamme comme la laine, le coton ou le lin, offrant confort et durabilité. Les coupes et les finitions soignées assurent une silhouette élégante et une apparence soignée	https://images.unsplash.com/photo-1479064555552-3ef4979f8908?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D	149.99	Costume
3	Fabriquées avec des matériaux de haute qualité et une technologie innovante, les chaussures Nike offrent un ajustement précis, un amorti réactif et une adhérence supérieure pour une expérience de course ou d'entraînement optimale.	https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D	99.99	Basket Nike
4	Fabriquées avec des matériaux de haute qualité et une technologie innovante, les chaussures Nike offrent un ajustement précis, un amorti réactif et une adhérence supérieure pour une expérience de course ou d'entraînement optimale.	https://images.unsplash.com/photo-1549298916-b41d501d3772?q=80&w=2012&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D	149.99	Basket Nike Air
5	La Nintendo Switch est une console de jeu vidéo polyvalente et innovante qui offre une expérience de jeu unique. Grâce à son design novateur	https://images.unsplash.com/photo-1614925379183-3ce5e634a612?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D	145.99	Nintendo Switch
6	Découvrez le compagnon idéal pour conquérir les pistes enneigées - nos skis de haute performance vous offrent une expérience de glisse inégalée. Fabriqués avec les meilleurs matériaux et une technologie de pointe,	https://images.unsplash.com/photo-1557977398-18b39bf47159?q=80&w=1890&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D	145.99	Skis
\.


--
-- TOC entry 3322 (class 0 OID 0)
-- Dependencies: 212
-- Name: my_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.my_seq', 1, true);


--
-- TOC entry 3323 (class 0 OID 0)
-- Dependencies: 210
-- Name: produit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.produit_id_seq', 8, true);


--
-- TOC entry 3324 (class 0 OID 0)
-- Dependencies: 211
-- Name: produit_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.produit_seq', 601, true);


--
-- TOC entry 3170 (class 2606 OID 16393)
-- Name: produit produit_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.produit
    ADD CONSTRAINT produit_pkey PRIMARY KEY (id);


--
-- TOC entry 3320 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: root
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2024-03-16 14:42:27

--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 16.1

-- Started on 2024-03-16 14:42:28

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

--
-- TOC entry 5 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: root
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO root;

--
-- TOC entry 3305 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: root
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2024-03-16 14:42:28

--
-- PostgreSQL database dump complete
--

-- Completed on 2024-03-16 14:42:28

--
-- PostgreSQL database cluster dump complete
--

