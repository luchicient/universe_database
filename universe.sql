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
-- Name: extra_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra_table (
    name character varying(30),
    extra_table_id integer NOT NULL,
    planets_around integer NOT NULL
);


ALTER TABLE public.extra_table OWNER TO freecodecamp;

--
-- Name: extra_table_extra_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_table_extra_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_table_extra_table_id_seq OWNER TO freecodecamp;

--
-- Name: extra_table_extra_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_table_extra_table_id_seq OWNED BY public.extra_table.extra_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy_name character varying(30) NOT NULL,
    galaxy_description text,
    size_in_mkm2 integer,
    type_of_galaxy character varying(30),
    discovered_in character varying(30),
    mayor boolean,
    name character varying(2)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    moon_name character varying(30) NOT NULL,
    planet_name character varying(30),
    size_vs_earth numeric(4,1),
    es_mayor boolean,
    name character varying(2)
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
    planet_name character varying(30) NOT NULL,
    star_name character varying(30),
    size integer,
    nasa_register_date date,
    name character varying(2)
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
    star_name character varying(30) NOT NULL,
    galaxy_name character varying(30),
    age integer,
    color character varying(15),
    name character varying(2)
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
-- Name: extra_table extra_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_table ALTER COLUMN extra_table_id SET DEFAULT nextval('public.extra_table_extra_table_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


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
-- Data for Name: extra_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra_table VALUES ('holi', 1, 3);
INSERT INTO public.extra_table VALUES ('holu', 2, 5);
INSERT INTO public.extra_table VALUES ('chauchi', 3, 7);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (4, 'Hockey', 'Luminiscente', 200000, 'Mediana', '1956', true, NULL);
INSERT INTO public.galaxy VALUES (5, 'nube', 'nebulosa', 234234, 'Chica', '1990', true, NULL);
INSERT INTO public.galaxy VALUES (3, 'GalaxiaTres', 'ligera', 2234234, 'Mediana', '1935', true, NULL);
INSERT INTO public.galaxy VALUES (2, 'GalaxiaDos', 'compacta', 22342, 'Chica', '1945', true, NULL);
INSERT INTO public.galaxy VALUES (1, 'Via_Lactea', 'habitable_y_nuestra', 1291, 'Grande', '1857', false, NULL);
INSERT INTO public.galaxy VALUES (6, 'Andromeda', 'densa', 4344442, 'Grande', '1989', true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ganymede', 'marte', 123.4, true, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 'saturno', 45.5, false, NULL);
INSERT INTO public.moon VALUES (3, 'Miranda', 'marte', 678.2, true, NULL);
INSERT INTO public.moon VALUES (4, 'Callisto', 'urano', 0.3, false, NULL);
INSERT INTO public.moon VALUES (5, 'Triton', 'jupiter', 987.6, true, NULL);
INSERT INTO public.moon VALUES (6, 'Titan', 'venus', 12.9, false, NULL);
INSERT INTO public.moon VALUES (7, 'Io', 'Venus', 54.4, false, NULL);
INSERT INTO public.moon VALUES (8, 'Charon', 'saturno', 321.7, true, NULL);
INSERT INTO public.moon VALUES (9, 'Oberon', 'urano', 65.8, false, NULL);
INSERT INTO public.moon VALUES (10, 'Enceladus', 'jupiter', 876.5, true, NULL);
INSERT INTO public.moon VALUES (11, 'Europa', 'venus', 23.6, false, NULL);
INSERT INTO public.moon VALUES (12, 'Deimos', 'marte', 45.0, false, NULL);
INSERT INTO public.moon VALUES (13, 'Rhea', 'kepler', 789.4, true, NULL);
INSERT INTO public.moon VALUES (14, 'Dione', 'cancri', 1.2, false, NULL);
INSERT INTO public.moon VALUES (15, 'Iapetus', 'ogle', 34.9, false, NULL);
INSERT INTO public.moon VALUES (16, 'Titania', 'hdet', 234.3, true, NULL);
INSERT INTO public.moon VALUES (17, 'Umbriel', 'gliese', 0.1, false, NULL);
INSERT INTO public.moon VALUES (18, 'Ariel', 'trappist', 67.0, false, NULL);
INSERT INTO public.moon VALUES (19, 'Nereid', 'trieju', 876.0, true, NULL);
INSERT INTO public.moon VALUES (20, 'Proteus', 'marte', 432.5, true, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'SecondEarth', 'Altair', 23872487, '2000-09-09', NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 'Rigel', 234780, '1970-05-06', NULL);
INSERT INTO public.planet VALUES (3, 'saturno', 'Canopus', 234984, '1940-07-06', NULL);
INSERT INTO public.planet VALUES (4, 'urano', 'Sirius', 1000912, '1987-08-09', NULL);
INSERT INTO public.planet VALUES (5, 'jupiter', 'Antares', 239823, '1908-09-08', NULL);
INSERT INTO public.planet VALUES (6, 'venus', 'Adhara', 19474, '1364-10-03', NULL);
INSERT INTO public.planet VALUES (7, 'marte', 'Canopus', 123782, '1858-11-30', NULL);
INSERT INTO public.planet VALUES (8, 'kepler', 'Rigel', 214878, '1887-12-30', NULL);
INSERT INTO public.planet VALUES (9, 'cancri', 'Canopus', 576497, '1990-02-23', NULL);
INSERT INTO public.planet VALUES (10, 'ogle', 'Sirius', 23974, '1987-04-25', NULL);
INSERT INTO public.planet VALUES (11, 'hdet', 'Antares', 23475, '1967-05-17', NULL);
INSERT INTO public.planet VALUES (12, 'gliese', 'Adhara', 287238742, '1935-01-15', NULL);
INSERT INTO public.planet VALUES (13, 'trappist', 'Canopus', 23497, '1746-03-19', NULL);
INSERT INTO public.planet VALUES (14, 'trieju', 'Rigel', 3888, '1746-02-19', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Altair', 'GalaxiaDos', 199938, 'Green', NULL);
INSERT INTO public.star VALUES (2, 'Adhara', 'Andromeda', 193487, 'Yellow', NULL);
INSERT INTO public.star VALUES (3, 'Rigel', 'nube', 355546, 'Pink', NULL);
INSERT INTO public.star VALUES (4, 'Antares', 'Andromeda', 1349728, 'Orange', NULL);
INSERT INTO public.star VALUES (5, 'Canopus', 'Hockey', 2232377, 'Blue', NULL);
INSERT INTO public.star VALUES (6, 'Sirius', 'GalaxiaTres', 237777, 'Blue', NULL);


--
-- Name: extra_table_extra_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_table_extra_table_id_seq', 1, false);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: extra_table extra_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_table
    ADD CONSTRAINT extra_table_pkey PRIMARY KEY (extra_table_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (galaxy_name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (moon_name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (planet_name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unica; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unica UNIQUE (galaxy_name);


--
-- Name: extra_table unica_extra; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_table
    ADD CONSTRAINT unica_extra UNIQUE (name);


--
-- Name: star unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name UNIQUE (star_name);


--
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_name) REFERENCES public.planet(planet_name);


--
-- Name: planet planet_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fkey FOREIGN KEY (star_name) REFERENCES public.star(star_name);


--
-- Name: star star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fkey FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- PostgreSQL database dump complete
--

