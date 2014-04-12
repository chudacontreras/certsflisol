--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: certificados; Type: TABLE; Schema: public; Owner: manuel; Tablespace: 
--

CREATE TABLE certificados (
    id integer NOT NULL,
    nombre character varying
);


ALTER TABLE public.certificados OWNER TO manuel;

--
-- Name: certificados_id_seq; Type: SEQUENCE; Schema: public; Owner: manuel
--

CREATE SEQUENCE certificados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.certificados_id_seq OWNER TO manuel;

--
-- Name: certificados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: manuel
--

ALTER SEQUENCE certificados_id_seq OWNED BY certificados.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: manuel
--

ALTER TABLE ONLY certificados ALTER COLUMN id SET DEFAULT nextval('certificados_id_seq'::regclass);


--
-- Data for Name: certificados; Type: TABLE DATA; Schema: public; Owner: manuel
--

COPY certificados (id, nombre) FROM stdin;
1	Manuel
\.


--
-- Name: certificados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: manuel
--

SELECT pg_catalog.setval('certificados_id_seq', 1, true);


--
-- Name: certificados_pkey; Type: CONSTRAINT; Schema: public; Owner: manuel; Tablespace: 
--

ALTER TABLE ONLY certificados
    ADD CONSTRAINT certificados_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

