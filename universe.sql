--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: dweller; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dweller (
    dweller_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.dweller OWNER TO freecodecamp;

--
-- Name: dweller_dweller_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dweller_dweller_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dweller_dweller_id_seq OWNER TO freecodecamp;

--
-- Name: dweller_dweller_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dweller_dweller_id_seq OWNED BY public.dweller.dweller_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(7,2),
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
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
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth_myl numeric(12,9),
    population integer,
    atmosphere_color text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
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
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth_myl numeric(12,9),
    population bigint,
    atmosphere_color text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
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
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(7,2),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
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
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: dweller dweller_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dweller ALTER COLUMN dweller_id SET DEFAULT nextval('public.dweller_dweller_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: dweller; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dweller VALUES (1, 'Terra Sapien', 1);
INSERT INTO public.dweller VALUES (2, 'Luna Inhabitant', 1);
INSERT INTO public.dweller VALUES (3, 'Mars Wanderer', 1);
INSERT INTO public.dweller VALUES (4, 'Venus Voyager', 1);
INSERT INTO public.dweller VALUES (5, 'Mercury Nomad', 1);
INSERT INTO public.dweller VALUES (6, 'Androsynth', 2);
INSERT INTO public.dweller VALUES (7, 'Delta Denizen', 3);
INSERT INTO public.dweller VALUES (8, 'Triangulite', 3);
INSERT INTO public.dweller VALUES (9, 'Vertex Voyager', 3);
INSERT INTO public.dweller VALUES (10, 'Isosceles Inhabitant', 3);
INSERT INTO public.dweller VALUES (11, 'Scalar Sapien', 3);
INSERT INTO public.dweller VALUES (12, 'Virgostarian', 6);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13510, NULL, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 2.54, true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 13000, 31.10, false);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 13000, 53.50, true);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 14000, 23.00, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 7000, 2.73, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', false, 4500, 0.000000038, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', false, 4600, 0.000000142, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', false, 4600, 0.000000142, NULL, NULL, 2);
INSERT INTO public.moon VALUES (4, 'Andromoon', false, 5000, 2.500000000, NULL, 'Blue', 3);
INSERT INTO public.moon VALUES (5, 'Nebulight', false, 4800, 2.500000000, NULL, 'Purple', 3);
INSERT INTO public.moon VALUES (6, 'Starshadow', false, 5200, 2.500000000, NULL, 'Black', 4);
INSERT INTO public.moon VALUES (7, 'Galaxymoon', false, 5000, 2.500000000, NULL, 'Silver', 4);
INSERT INTO public.moon VALUES (8, 'Vertexa', false, 4900, 3.000000000, NULL, 'Green', 5);
INSERT INTO public.moon VALUES (9, 'Triamoon', false, 5000, 3.000000000, NULL, 'Yellow', 5);
INSERT INTO public.moon VALUES (10, 'Deltalight', true, 5100, 3.000000000, 5, 'Red', 6);
INSERT INTO public.moon VALUES (11, 'Majora Moon', false, 4900, 3.000000000, NULL, 'White', 6);
INSERT INTO public.moon VALUES (12, 'Vortexa Moon', false, 5300, 53.000000000, NULL, 'Violet', 8);
INSERT INTO public.moon VALUES (13, 'Spiralight', false, 5400, 53.000000000, NULL, 'Indigo', 8);
INSERT INTO public.moon VALUES (14, 'Event Horizon', false, 5500, 53.000000000, NULL, 'Black', 9);
INSERT INTO public.moon VALUES (15, 'Jetstream Moon', false, 5200, 53.000000000, NULL, 'Grey', 9);
INSERT INTO public.moon VALUES (16, 'Vortexa', false, 5300, 23.000000000, NULL, 'Brown', 10);
INSERT INTO public.moon VALUES (17, 'Spiral Moon', false, 5400, 23.000000000, NULL, 'Orange', 10);
INSERT INTO public.moon VALUES (18, 'Cyclona', false, 5200, 23.000000000, NULL, 'Cyan', 11);
INSERT INTO public.moon VALUES (19, 'Turbulentia', false, 5100, 23.000000000, NULL, 'Turquoise', 11);
INSERT INTO public.moon VALUES (20, 'Shadowlight', false, 5200, 29.000000000, NULL, 'Black', 12);
INSERT INTO public.moon VALUES (21, 'Ringmoon', false, 5300, 29.000000000, NULL, 'Gold', 12);
INSERT INTO public.moon VALUES (22, 'Hatmoon', false, 5400, 29.000000000, NULL, 'Silver', 13);
INSERT INTO public.moon VALUES (23, 'Corona Moon', false, 5500, 29.000000000, NULL, 'Corona', 13);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 4500, NULL, 7800000000, 'Blue', 1);
INSERT INTO public.planet VALUES (2, 'Mars', false, 4600, 0.000000142, NULL, 'Red', 1);
INSERT INTO public.planet VALUES (3, 'Androterra', true, 6000, 2.537000000, 1, 'Purple', 2);
INSERT INTO public.planet VALUES (4, 'Celestara', false, 5500, 2.537000000, NULL, 'Green', 2);
INSERT INTO public.planet VALUES (5, 'Triangularis', false, 5000, 2.730000000, NULL, 'Orange', 3);
INSERT INTO public.planet VALUES (6, 'Delta Majoris', false, 4800, 2.730000000, NULL, 'Yellow', 3);
INSERT INTO public.planet VALUES (8, 'Virgoplanet', false, 7000, 53.500000000, NULL, 'Grey', 4);
INSERT INTO public.planet VALUES (9, 'Singularitya', true, 6800, 53.500000000, 1, 'Black', 4);
INSERT INTO public.planet VALUES (10, 'Spiralica', false, 5600, 23.000000000, NULL, 'Violet', 5);
INSERT INTO public.planet VALUES (11, 'Whirlworld', false, 5400, 23.000000000, NULL, 'White', 5);
INSERT INTO public.planet VALUES (12, 'Brimworld', false, 6200, 31.100000000, NULL, 'Brown', 6);
INSERT INTO public.planet VALUES (13, 'Crown Majoris', false, 6000, 31.100000000, NULL, 'Gold', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, NULL, 1);
INSERT INTO public.star VALUES (2, 'Androsun', 4500, 2.50, 2);
INSERT INTO public.star VALUES (3, 'Triastar', 3150, 3.79, 3);
INSERT INTO public.star VALUES (4, 'Virgostar', 6000, 53500.00, 6);
INSERT INTO public.star VALUES (5, 'Vortexsun', 5000, 23000.00, 4);
INSERT INTO public.star VALUES (6, 'Hatstar', 4000, 31100.00, 5);


--
-- Name: dweller_dweller_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dweller_dweller_id_seq', 12, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: dweller dweller_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dweller
    ADD CONSTRAINT dweller_name_key UNIQUE (name);


--
-- Name: dweller dweller_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dweller
    ADD CONSTRAINT dweller_pkey PRIMARY KEY (dweller_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

