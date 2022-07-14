--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

-- Started on 2022-06-28 21:54:09

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
-- TOC entry 3311 (class 0 OID 17331)
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
-- TOC entry 3317 (class 0 OID 0)
-- Dependencies: 209
-- Name: doctors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.doctors_id_seq', 6, true);


-- Completed on 2022-06-28 21:54:09

--
-- PostgreSQL database dump complete
--

