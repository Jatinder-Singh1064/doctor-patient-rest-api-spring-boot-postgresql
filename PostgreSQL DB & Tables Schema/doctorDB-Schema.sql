--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

-- Started on 2022-06-28 21:55:30

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
-- TOC entry 210 (class 1259 OID 17331)
-- Name: doctors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doctors (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.doctors OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 17330)
-- Name: doctors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.doctors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.doctors_id_seq OWNER TO postgres;

--
-- TOC entry 3326 (class 0 OID 0)
-- Dependencies: 209
-- Name: doctors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.doctors_id_seq OWNED BY public.doctors.id;


--
-- TOC entry 212 (class 1259 OID 17338)
-- Name: patients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.patients (
    id integer NOT NULL,
    date_of_birth timestamp without time zone,
    disease character varying(255),
    name character varying(255),
    doctor_id integer
);


ALTER TABLE public.patients OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 17337)
-- Name: patients_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.patients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.patients_id_seq OWNER TO postgres;

--
-- TOC entry 3327 (class 0 OID 0)
-- Dependencies: 211
-- Name: patients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.patients_id_seq OWNED BY public.patients.id;


--
-- TOC entry 3169 (class 2604 OID 17334)
-- Name: doctors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctors ALTER COLUMN id SET DEFAULT nextval('public.doctors_id_seq'::regclass);


--
-- TOC entry 3170 (class 2604 OID 17341)
-- Name: patients id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patients ALTER COLUMN id SET DEFAULT nextval('public.patients_id_seq'::regclass);


--
-- TOC entry 3318 (class 0 OID 17331)
-- Dependencies: 210
-- Data for Name: doctors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.doctors (id, name) FROM stdin;
1	Dr. Emily
3	Dr. Emma
2	Dr. Peter
5	Dr. Chris
\.


--
-- TOC entry 3320 (class 0 OID 17338)
-- Dependencies: 212
-- Data for Name: patients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.patients (id, date_of_birth, disease, name, doctor_id) FROM stdin;
3	2002-09-08 20:00:00	New Disease	Mikey	\N
2	2002-09-08 20:00:00	Cough and Cold	Bob	1
9	2002-09-08 20:00:00	Fever and Cold	Victor	\N
\.


--
-- TOC entry 3328 (class 0 OID 0)
-- Dependencies: 209
-- Name: doctors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.doctors_id_seq', 6, true);


--
-- TOC entry 3329 (class 0 OID 0)
-- Dependencies: 211
-- Name: patients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.patients_id_seq', 9, true);


--
-- TOC entry 3172 (class 2606 OID 17336)
-- Name: doctors doctors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_pkey PRIMARY KEY (id);


--
-- TOC entry 3176 (class 2606 OID 17345)
-- Name: patients patients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patients
    ADD CONSTRAINT patients_pkey PRIMARY KEY (id);


--
-- TOC entry 3174 (class 2606 OID 17347)
-- Name: doctors uk_89gv7kfdoia7qdkilwkbndfoc; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT uk_89gv7kfdoia7qdkilwkbndfoc UNIQUE (name);


--
-- TOC entry 3177 (class 2606 OID 17348)
-- Name: patients fkperqpk72jxd90l8yq7qf5fsx0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patients
    ADD CONSTRAINT fkperqpk72jxd90l8yq7qf5fsx0 FOREIGN KEY (doctor_id) REFERENCES public.doctors(id);


-- Completed on 2022-06-28 21:55:31

--
-- PostgreSQL database dump complete
--

