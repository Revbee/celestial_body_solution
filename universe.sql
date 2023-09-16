--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name universe; Type DATABASE; Schema -; Owner freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

connect universe

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
-- Name blackhole; Type TABLE; Schema public; Owner freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter_in_meters numeric(5,2)
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name blackhole_blackhole_id_seq; Type SEQUENCE; Schema public; Owner freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name blackhole_blackhole_id_seq; Type SEQUENCE OWNED BY; Schema public; Owner freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name galaxy; Type TABLE; Schema public; Owner freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    blackhole_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name galaxy_galaxy_id_seq; Type SEQUENCE; Schema public; Owner freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name galaxy_galaxy_id_seq; Type SEQUENCE OWNED BY; Schema public; Owner freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name moon; Type TABLE; Schema public; Owner freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    mass integer,
    close_to_life boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name moon_moon_id_seq; Type SEQUENCE; Schema public; Owner freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name moon_moon_id_seq; Type SEQUENCE OWNED BY; Schema public; Owner freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name planet; Type TABLE; Schema public; Owner freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer,
    name character varying(30) NOT NULL,
    number_of_people_in_million numeric(10,1),
    has_water boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name planet_planet_id_seq; Type SEQUENCE; Schema public; Owner freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name planet_planet_id_seq; Type SEQUENCE OWNED BY; Schema public; Owner freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name star; Type TABLE; Schema public; Owner freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    mass_in_kg integer,
    close_to_life boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name star_star_id_seq; Type SEQUENCE; Schema public; Owner freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name star_star_id_seq; Type SEQUENCE OWNED BY; Schema public; Owner freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name blackhole blackhole_id; Type DEFAULT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'regclass);


--
-- Name galaxy galaxy_id; Type DEFAULT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'regclass);


--
-- Name moon moon_id; Type DEFAULT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'regclass);


--
-- Name planet planet_id; Type DEFAULT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'regclass);


--
-- Name star star_id; Type DEFAULT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'regclass);


--
-- Data for Name blackhole; Type TABLE DATA; Schema public; Owner freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'green', 212.23);
INSERT INTO public.blackhole VALUES (2, 'yellow', 412.23);
INSERT INTO public.blackhole VALUES (3, 'red', 612.23);


--
-- Data for Name galaxy; Type TABLE DATA; Schema public; Owner freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'red', 'dagerous galaxy', false, 3);
INSERT INTO public.galaxy VALUES (2, 'orange', 'bad galaxy', false, 3);
INSERT INTO public.galaxy VALUES (3, 'yellow', 'not good galaxy', false, 2);
INSERT INTO public.galaxy VALUES (4, 'blue', ' very good galaxy', true, 1);
INSERT INTO public.galaxy VALUES (5, 'violent', 'for alians', true, 2);
INSERT INTO public.galaxy VALUES (8, 'green', 'Excellent galaxy', true, 1);


--
-- Data for Name moon; Type TABLE DATA; Schema public; Owner freecodecamp
--

INSERT INTO public.moon VALUES (1, 'mary', 1, 3121, false);
INSERT INTO public.moon VALUES (2, 'SIMI', 1, 312, false);
INSERT INTO public.moon VALUES (4, 'mercy', 2, 312, false);
INSERT INTO public.moon VALUES (5, 'grace', 2, 343, false);
INSERT INTO public.moon VALUES (6, 'john', 3, 312, false);
INSERT INTO public.moon VALUES (7, 'david', 3, 343, false);
INSERT INTO public.moon VALUES (8, 'lamin', 4, 3123, false);
INSERT INTO public.moon VALUES (9, 'yomi', 4, 343, false);
INSERT INTO public.moon VALUES (10, 'sandal', 5, 312233, true);
INSERT INTO public.moon VALUES (11, 'yomin', 5, 3443, true);
INSERT INTO public.moon VALUES (12, 'sandaly', 6, 33, true);
INSERT INTO public.moon VALUES (13, 'yomina', 6, 3443, true);
INSERT INTO public.moon VALUES (14, 'sandalyy', 7, 33, true);
INSERT INTO public.moon VALUES (15, 'yominan', 7, 3443, true);
INSERT INTO public.moon VALUES (16, 'paul', 8, 33, true);
INSERT INTO public.moon VALUES (17, 'mat', 8, 43, true);
INSERT INTO public.moon VALUES (18, 'sam', 9, 333, true);
INSERT INTO public.moon VALUES (19, 'joseph', 9, 43322, true);
INSERT INTO public.moon VALUES (22, 'samantha', 12, 333, true);
INSERT INTO public.moon VALUES (23, 'josepho', 12, 4352, true);


--
-- Data for Name planet; Type TABLE DATA; Schema public; Owner freecodecamp
--

INSERT INTO public.planet VALUES (1, 2, 'mars', 0.0, false);
INSERT INTO public.planet VALUES (2, 2, 'venus', 3.0, false);
INSERT INTO public.planet VALUES (3, 5, 'earth', 1232342.0, true);
INSERT INTO public.planet VALUES (4, 3, 'must', 0.0, false);
INSERT INTO public.planet VALUES (5, 4, 'jupiter', 12.0, true);
INSERT INTO public.planet VALUES (6, 7, 'see', 0.0, false);
INSERT INTO public.planet VALUES (7, 6, 'under', 12.0, true);
INSERT INTO public.planet VALUES (8, 5, 'uranium', 0.0, false);
INSERT INTO public.planet VALUES (9, 2, 'planet', 12.0, true);
INSERT INTO public.planet VALUES (12, 3, 'tatanium', 0.0, false);
INSERT INTO public.planet VALUES (13, 2, 'pluto', 12.0, true);
INSERT INTO public.planet VALUES (14, 3, 'diamon', 0.0, false);
INSERT INTO public.planet VALUES (15, 2, 'gold', 12.0, true);


--
-- Data for Name star; Type TABLE DATA; Schema public; Owner freecodecamp
--

INSERT INTO public.star VALUES (2, 'red_camp', 1, 323, NULL);
INSERT INTO public.star VALUES (3, 'orange_camp', 2, 323, NULL);
INSERT INTO public.star VALUES (4, 'yello_camp', 3, 323, NULL);
INSERT INTO public.star VALUES (5, 'green__camp', 4, 323, NULL);
INSERT INTO public.star VALUES (6, 'blue__camp', 5, 523, NULL);
INSERT INTO public.star VALUES (7, 'violent__camp', 8, 533, NULL);


--
-- Name blackhole_blackhole_id_seq; Type SEQUENCE SET; Schema public; Owner freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 3, true);


--
-- Name galaxy_galaxy_id_seq; Type SEQUENCE SET; Schema public; Owner freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name moon_moon_id_seq; Type SEQUENCE SET; Schema public; Owner freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name planet_planet_id_seq; Type SEQUENCE SET; Schema public; Owner freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name star_star_id_seq; Type SEQUENCE SET; Schema public; Owner freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name blackhole blackhole_pkey; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name galaxy galaxy_pkey; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name moon moon_pkey; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name blackhole name; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name planet planet_pkey; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name star star_pkey; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name blackhole unique_blackhole_name; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT unique_blackhole_name UNIQUE (name);


--
-- Name galaxy unique_galaxy_name; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name moon unique_moon_name; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name planet unique_planet_name; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name star unique_star_id; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


--
-- Name galaxy galaxy_blackhole_id_fkey; Type FK CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_blackhole_id_fkey FOREIGN KEY (blackhole_id) REFERENCES public.blackhole(blackhole_id);


--
-- Name star galaxy_id; Type FK CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name moon planet_id; Type FK CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name planet star_id; Type FK CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

