--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

-- Started on 2022-09-30 16:02:48

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
-- TOC entry 5 (class 2615 OID 32768)
-- Name: lab1; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA lab1;


ALTER SCHEMA lab1 OWNER TO postgres;

--
-- TOC entry 8 (class 2615 OID 32769)
-- Name: lab2; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA lab2;


ALTER SCHEMA lab2 OWNER TO postgres;

--
-- TOC entry 2 (class 3079 OID 16384)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 3346 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 214 (class 1259 OID 24589)
-- Name: Baker; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Baker" (
    id integer NOT NULL,
    bakeryid integer NOT NULL,
    name character varying(30) NOT NULL,
    salary integer NOT NULL
);


ALTER TABLE public."Baker" OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 24584)
-- Name: Bakery; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Bakery" (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    address character varying(30) NOT NULL,
    ownerid integer NOT NULL
);


ALTER TABLE public."Bakery" OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 24579)
-- Name: Owner; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Owner" (
    id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public."Owner" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24599)
-- Name: Product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Product" (
    id integer NOT NULL,
    bakerid integer NOT NULL,
    recipeid integer NOT NULL
);


ALTER TABLE public."Product" OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 24594)
-- Name: Recipe; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Recipe" (
    id integer NOT NULL,
    bakeryid integer NOT NULL,
    name character varying(30) NOT NULL,
    "time" integer NOT NULL
);


ALTER TABLE public."Recipe" OWNER TO postgres;

--
-- TOC entry 3191 (class 2606 OID 24609)
-- Name: Baker Baker_Id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Baker"
    ADD CONSTRAINT "Baker_Id_key" UNIQUE (id);


--
-- TOC entry 3193 (class 2606 OID 24593)
-- Name: Baker Baker_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Baker"
    ADD CONSTRAINT "Baker_pkey" PRIMARY KEY (id);


--
-- TOC entry 3187 (class 2606 OID 24607)
-- Name: Bakery Bakery_Id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Bakery"
    ADD CONSTRAINT "Bakery_Id_key" UNIQUE (id);


--
-- TOC entry 3189 (class 2606 OID 24588)
-- Name: Bakery Bakery_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Bakery"
    ADD CONSTRAINT "Bakery_pkey" PRIMARY KEY (id);


--
-- TOC entry 3183 (class 2606 OID 24605)
-- Name: Owner Owner_Id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Owner"
    ADD CONSTRAINT "Owner_Id_key" UNIQUE (id);


--
-- TOC entry 3185 (class 2606 OID 24583)
-- Name: Owner Owner_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Owner"
    ADD CONSTRAINT "Owner_pkey" PRIMARY KEY (id);


--
-- TOC entry 3199 (class 2606 OID 24613)
-- Name: Product Product_Id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "Product_Id_key" UNIQUE (id);


--
-- TOC entry 3201 (class 2606 OID 24603)
-- Name: Product Product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "Product_pkey" PRIMARY KEY (id);


--
-- TOC entry 3195 (class 2606 OID 24611)
-- Name: Recipe Recipe_Id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Recipe"
    ADD CONSTRAINT "Recipe_Id_key" UNIQUE (id);


--
-- TOC entry 3197 (class 2606 OID 24598)
-- Name: Recipe Recipe_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Recipe"
    ADD CONSTRAINT "Recipe_pkey" PRIMARY KEY (id);


-- Completed on 2022-09-30 16:02:49

--
-- PostgreSQL database dump complete
--

