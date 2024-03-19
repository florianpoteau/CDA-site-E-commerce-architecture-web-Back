--
-- PostgreSQL database cluster dump
--

-- Started on 2024-03-19 14:54:31

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

-- Started on 2024-03-19 14:54:32

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


-- Completed on 2024-03-19 14:54:32

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

-- Started on 2024-03-19 14:54:32

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
-- TOC entry 209 (class 1259 OID 16385)
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
-- TOC entry 210 (class 1259 OID 16386)
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
-- TOC entry 211 (class 1259 OID 16391)
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
-- Dependencies: 211
-- Name: produit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.produit_id_seq OWNED BY public.produit.id;


--
-- TOC entry 212 (class 1259 OID 16392)
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
-- TOC entry 3168 (class 2604 OID 16393)
-- Name: produit id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.produit ALTER COLUMN id SET DEFAULT nextval('public.produit_id_seq'::regclass);


--
-- TOC entry 3311 (class 0 OID 16386)
-- Dependencies: 210
-- Data for Name: produit; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.produit (id, description, image, prix, titre) FROM stdin;
6	Découvrez le compagnon idéal pour conquérir les pistes enneigées - nos skis de haute performance vous offrent une expérience de glisse inégalée. Fabriqués avec les meilleurs matériaux et une technologie de pointe,	https://images.unsplash.com/photo-1557977398-18b39bf47159?q=80&w=1890&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D	145.99	Skis
2	Découvrez notre sélection d'équipements de ski dernier cri pour des descentes sans pareil. De la pointe de la technologie à la performance inégalée, notre gamme vous garantit confort, sécurité et style sur les pistes. Transformez chaque virage en une expérience inoubliable avec nos produits de haute qualité, conçus pour les passionnés de glisse. Prêt à dévaler les pentes avec confiance ? Rejoignez-nous et laissez votre aventure commencer dès aujourd'hui.	https://cdn.pixabay.com/photo/2015/09/09/17/57/ski-932188_1280.jpg	439.99	Equipement de skis
651	Imaginez un skieur intrépide, chevauchant les pentes en quête d'adrénaline. Soudain, une cascade de neige, un bruissement, et voilà qu'il dégringole dans un tourbillon de poudreuse. Mais pas de panique ! Avec notre paire d'équipements de ski haut de gamme, chutes comme celle-ci se transforment en moments mémorables. Conçue pour résister aux défis des pistes les plus exigeantes, notre paire vous assure stabilité et sécurité à chaque descente. Prêt à vous relever avec style et détermination ? Optez pour notre paire et domptez les montagnes avec confiance.	https://cdn.pixabay.com/photo/2017/12/29/20/25/snow-3048590_960_720.jpg	199.99	Tombeur de ski
701	\nPlongez dans l'hiver avec nos gants de ski conçus pour défier les éléments les plus rigoureux. Fabriqués avec des matériaux haut de gamme, ils offrent une combinaison parfaite de chaleur, de confort et de protection contre le froid glacial. Leurs caractéristiques techniques avancées garantissent une adhérence optimale sur les bâtons et une imperméabilité à toute épreuve, vous permettant de rester concentré sur vos performances. Affrontez les descentes les plus difficiles avec confiance grâce à nos gants de ski, votre partenaire indispensable sur les pistes enneigées.	https://cdn.pixabay.com/photo/2022/01/12/16/35/ski-glove-6933354_1280.jpg	69.99	Gants de ski
\.


--
-- TOC entry 3322 (class 0 OID 0)
-- Dependencies: 209
-- Name: my_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.my_seq', 1, true);


--
-- TOC entry 3323 (class 0 OID 0)
-- Dependencies: 211
-- Name: produit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.produit_id_seq', 8, true);


--
-- TOC entry 3324 (class 0 OID 0)
-- Dependencies: 212
-- Name: produit_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.produit_seq', 701, true);


--
-- TOC entry 3170 (class 2606 OID 16395)
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


-- Completed on 2024-03-19 14:54:32

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

-- Started on 2024-03-19 14:54:32

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


-- Completed on 2024-03-19 14:54:32

--
-- PostgreSQL database dump complete
--

-- Completed on 2024-03-19 14:54:33

--
-- PostgreSQL database cluster dump complete
--

