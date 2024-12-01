--
-- PostgreSQL database dump
--

-- Dumped from database version 14.11 (Homebrew)
-- Dumped by pg_dump version 14.11 (Homebrew)

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
-- Name: learning_paths; Type: TABLE; Schema: public; Owner: manik
--

CREATE TABLE public.learning_paths (
    id integer NOT NULL,
    name text NOT NULL,
    level public.learning_path_level NOT NULL,
    description text NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    estimated_duration integer
);


ALTER TABLE public.learning_paths OWNER TO manik;

--
-- Name: learning_paths_id_seq; Type: SEQUENCE; Schema: public; Owner: manik
--

CREATE SEQUENCE public.learning_paths_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.learning_paths_id_seq OWNER TO manik;

--
-- Name: learning_paths_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: manik
--

ALTER SEQUENCE public.learning_paths_id_seq OWNED BY public.learning_paths.id;


--
-- Name: learning_paths id; Type: DEFAULT; Schema: public; Owner: manik
--

ALTER TABLE ONLY public.learning_paths ALTER COLUMN id SET DEFAULT nextval('public.learning_paths_id_seq'::regclass);


--
-- Data for Name: learning_paths; Type: TABLE DATA; Schema: public; Owner: manik
--

COPY public.learning_paths (id, name, level, description, created_at, updated_at, estimated_duration) FROM stdin;
2	DevOps Engineering Mastery	advanced	description	2024-11-27 17:07:55.492343+08	2024-11-27 17:07:55.492343+08	3600
3	Mobile Development - Beginner	beginner	Introduction to mobile app development.	2024-11-28 23:58:16.4629+08	2024-11-28 23:58:16.4629+08	1440
4	Mobile Development - Intermediate	intermediate	Advance your mobile app development skills.	2024-11-28 23:58:16.4629+08	2024-11-28 23:58:16.4629+08	1440
5	Mobile Development - Advanced	advanced	Master mobile app development.	2024-11-28 23:58:16.4629+08	2024-11-28 23:58:16.4629+08	1440
6	DevOps - Beginner	beginner	Introduction to DevOps principles and practices.	2024-11-29 00:00:32.581295+08	2024-11-29 00:00:32.581295+08	1440
7	DevOps - Intermediate	intermediate	Deep dive into DevOps tools and workflows.	2024-11-29 00:00:32.581295+08	2024-11-29 00:00:32.581295+08	1440
8	DevOps - Advanced	advanced	Master advanced DevOps practices and cloud automation.	2024-11-29 00:00:32.581295+08	2024-11-29 00:00:32.581295+08	1440
9	Machine Learning - Beginner	beginner	Learn the basics of Machine Learning, including concepts and tools.	2024-11-29 00:01:19.478015+08	2024-11-29 00:01:19.478015+08	1440
10	Machine Learning - Intermediate	intermediate	Explore advanced Machine Learning models and techniques.	2024-11-29 00:02:27.941173+08	2024-11-29 00:02:27.941173+08	1440
11	Machine Learning - Advanced	advanced	Master advanced Machine Learning techniques and deep learning.	2024-11-29 00:02:27.941173+08	2024-11-29 00:02:27.941173+08	1440
\.


--
-- Name: learning_paths_id_seq; Type: SEQUENCE SET; Schema: public; Owner: manik
--

SELECT pg_catalog.setval('public.learning_paths_id_seq', 11, true);


--
-- Name: learning_paths learning_paths_pkey; Type: CONSTRAINT; Schema: public; Owner: manik
--

ALTER TABLE ONLY public.learning_paths
    ADD CONSTRAINT learning_paths_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

