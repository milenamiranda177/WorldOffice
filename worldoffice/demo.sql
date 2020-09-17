--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2 (Ubuntu 12.2-2.pgdg18.04+1)
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-2.pgdg18.04+1)

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
-- Name: sequence_empleado; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.sequence_empleado
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sequence_empleado OWNER TO root;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: empleado; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.empleado (
    nombre character varying(50),
    cargo character varying(100),
    salario numeric,
    tiempo boolean,
    departamento character varying(50),
    idempleado integer DEFAULT nextval('public.sequence_empleado'::regclass) NOT NULL
);


ALTER TABLE public.empleado OWNER TO root;

--
-- Name: agrupacionsalario; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW public.agrupacionsalario AS
 SELECT 'nombre'::text AS nombre,
    'cargo'::text AS cargo,
    'false'::text AS tiempo,
    sum(e.salario) AS salario,
    e.departamento
   FROM public.empleado e
  GROUP BY e.departamento, e.nombre, e.cargo, e.tiempo;


ALTER TABLE public.agrupacionsalario OWNER TO root;

--
-- Name: sequence_departamento; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.sequence_departamento
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sequence_departamento OWNER TO root;

--
-- Name: departamento; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.departamento (
    iddepartamento integer DEFAULT nextval('public.sequence_departamento'::regclass) NOT NULL,
    nombredepartamento character varying(50)
);


ALTER TABLE public.departamento OWNER TO root;

--
-- Data for Name: departamento; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.departamento (iddepartamento, nombredepartamento) FROM stdin;
\.


--
-- Data for Name: empleado; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.empleado (nombre, cargo, salario, tiempo, departamento, idempleado) FROM stdin;
\.


--
-- Name: sequence_departamento; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.sequence_departamento', 1897, true);


--
-- Name: sequence_empleado; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.sequence_empleado', 65206, true);


--
-- Name: empleado empleado_nombre_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_nombre_key UNIQUE (nombre);


--
-- Name: empleado empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (idempleado);


--
-- Name: departamento nombre_unico; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT nombre_unico UNIQUE (nombredepartamento);


--
-- Name: departamento pk_departamento; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT pk_departamento PRIMARY KEY (iddepartamento);


--
-- Name: empleado foranea_empleado; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT foranea_empleado FOREIGN KEY (departamento) REFERENCES public.departamento(nombredepartamento);


--
-- PostgreSQL database dump complete
--

