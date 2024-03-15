--
-- PostgreSQL database cluster dump
--

-- Started on 2024-03-15 12:01:32

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
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

-- Started on 2024-03-15 12:01:32

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: root
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO root;

--
-- TOC entry 3305 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: root
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2024-03-15 12:01:32

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

-- Started on 2024-03-15 12:01:33

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
-- TOC entry 3315 (class 1262 OID 16384)
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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: root
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO root;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 210 (class 1259 OID 16386)
-- Name: produit; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.produit (
    id integer NOT NULL,
    description character varying(255),
    image character varying(255),
    prix real,
    titre character varying(255)
);


ALTER TABLE public.produit OWNER TO root;

--
-- TOC entry 209 (class 1259 OID 16385)
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
-- TOC entry 3317 (class 0 OID 0)
-- Dependencies: 209
-- Name: produit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.produit_id_seq OWNED BY public.produit.id;


--
-- TOC entry 3166 (class 2604 OID 16389)
-- Name: produit id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.produit ALTER COLUMN id SET DEFAULT nextval('public.produit_id_seq'::regclass);


--
-- TOC entry 3309 (class 0 OID 16386)
-- Dependencies: 210
-- Data for Name: produit; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.produit (id, description, image, prix, titre) FROM stdin;
1	 la PS5 propose des graphismes époustouflants et une vitesse de chargement ultra-rapide grâce à son SSD intégré. Elle est équipée d'un processeur AMD Ryzen Zen 2 avec 8 cœurs, capable de fournir des performances de jeu fluides et réactives	https://images.unsplash.com/photo-1606144042614-b2417e99c4e3?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D	429.99	Playstation 5
2	Les caractéristiques d'un costume de qualité incluent des tissus haut de gamme comme la laine, le coton ou le lin, offrant confort et durabilité. Les coupes et les finitions soignées assurent une silhouette élégante et une apparence soignée	https://images.unsplash.com/photo-1479064555552-3ef4979f8908?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D	149.99	Costume
3	Fabriquées avec des matériaux de haute qualité et une technologie innovante, les chaussures Nike offrent un ajustement précis, un amorti réactif et une adhérence supérieure pour une expérience de course ou d'entraînement optimale.	https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D	99.99	Basket Nike
4	Fabriquées avec des matériaux de haute qualité et une technologie innovante, les chaussures Nike offrent un ajustement précis, un amorti réactif et une adhérence supérieure pour une expérience de course ou d'entraînement optimale.	https://images.unsplash.com/photo-1549298916-b41d501d3772?q=80&w=2012&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D	149.99	Basket Nike Air
\.


--
-- TOC entry 3318 (class 0 OID 0)
-- Dependencies: 209
-- Name: produit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.produit_id_seq', 1, false);


--
-- TOC entry 3168 (class 2606 OID 16393)
-- Name: produit produit_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.produit
    ADD CONSTRAINT produit_pkey PRIMARY KEY (id);


--
-- TOC entry 3316 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: root
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2024-03-15 12:01:33

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

-- Started on 2024-03-15 12:01:33

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: root
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO root;

--
-- TOC entry 3305 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: root
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2024-03-15 12:01:33

--
-- PostgreSQL database dump complete
--

-- Completed on 2024-03-15 12:01:33

--
-- PostgreSQL database cluster dump complete
--

