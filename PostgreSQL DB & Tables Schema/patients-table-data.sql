--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

-- Started on 2022-06-28 21:54:46

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
-- TOC entry 3310 (class 0 OID 17338)
-- Dependencies: 212
-- Data for Name: patients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.patients (id, date_of_birth, disease, name, doctor_id) FROM stdin;
3	2002-09-08 20:00:00	New Disease	Mikey	\N
2	2002-09-08 20:00:00	Cough and Cold	Bob	1
9	2002-09-08 20:00:00	Fever and Cold	Victor	\N
\.


--
-- TOC entry 3316 (class 0 OID 0)
-- Dependencies: 211
-- Name: patients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.patients_id_seq', 9, true);


-- Completed on 2022-06-28 21:54:46

--
-- PostgreSQL database dump complete
--

