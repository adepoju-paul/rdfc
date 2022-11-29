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
-- Name: continent; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.continent (
    continent_id integer NOT NULL,
    name character varying(40) NOT NULL,
    distace_to_space bigint NOT NULL,
    population integer NOT NULL
);


ALTER TABLE public.continent OWNER TO freecodecamp;

--
-- Name: continent_continent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.continent_continent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.continent_continent_id_seq OWNER TO freecodecamp;

--
-- Name: continent_continent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.continent_continent_id_seq OWNED BY public.continent.continent_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40),
    location integer,
    distance integer,
    visible_earth boolean NOT NULL,
    heat boolean NOT NULL,
    latitude numeric
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
    name character varying(40),
    distance integer,
    location integer,
    visible_earth boolean NOT NULL,
    heat boolean NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40),
    location integer,
    distance integer,
    description text NOT NULL,
    age_in_millions_of_years bigint NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    distance integer,
    location integer,
    heat boolean NOT NULL,
    visible_earth boolean NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: continent continent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent ALTER COLUMN continent_id SET DEFAULT nextval('public.continent_continent_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: continent; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.continent VALUES (1, 'Africa', 100000, 1800000000);
INSERT INTO public.continent VALUES (4, 'south america', 90000, 10000101);
INSERT INTO public.continent VALUES (5, 'North America', 80000, 9191828);
INSERT INTO public.continent VALUES (6, 'Antartica', 1000929, 1000);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 25000, 2500, true, false, 5000.91821);
INSERT INTO public.galaxy VALUES (2, 'Milky way', 50000, 500009, true, true, 8000.91821);
INSERT INTO public.galaxy VALUES (3, 'Black Eye Galaxy', 70000, 80000, false, false, 6000.98);
INSERT INTO public.galaxy VALUES (4, 'Pinwheel galaxy', 90000, 75000, true, false, 90182828.90);
INSERT INTO public.galaxy VALUES (5, 'Cigar galaxy', 100000, 75000, true, false, 40182828.90);
INSERT INTO public.galaxy VALUES (6, 'RED EYES GALAXY', 9000000, 20000000, true, true, 8999191.90);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'europa', 10000000, 1000, true, false, NULL);
INSERT INTO public.moon VALUES (4, 'titan', 10000, 92828291, true, false, NULL);
INSERT INTO public.moon VALUES (5, 'mimas', 10000, 92828291, true, false, NULL);
INSERT INTO public.moon VALUES (6, 'himalia', 2283373, 91910, true, true, NULL);
INSERT INTO public.moon VALUES (9, 'elara', 10000, 92828291, true, false, NULL);
INSERT INTO public.moon VALUES (10, 'elaran', 10000, 92828291, true, false, NULL);
INSERT INTO public.moon VALUES (11, 'Pan', 1000, 81818, true, true, NULL);
INSERT INTO public.moon VALUES (12, 'Pandora', 9000, 81898, true, false, NULL);
INSERT INTO public.moon VALUES (13, 'Daphnis', 6000, 81898, false, false, NULL);
INSERT INTO public.moon VALUES (16, 'Tethys', 6000, 81898, false, false, NULL);
INSERT INTO public.moon VALUES (17, 'Carpo', 6000, 81898, false, false, NULL);
INSERT INTO public.moon VALUES (18, 'methis', 91002, 1818181, true, true, NULL);
INSERT INTO public.moon VALUES (19, 'Pasiphae', 6000, 81898, false, false, NULL);
INSERT INTO public.moon VALUES (20, 'Leda', 91002, 1818181, true, true, NULL);
INSERT INTO public.moon VALUES (21, 'Megaclite', 6000, 81898, false, false, NULL);
INSERT INTO public.moon VALUES (22, 'Callisto', 91002, 1818181, true, true, NULL);
INSERT INTO public.moon VALUES (25, 'phobos', 6000, 81898, false, false, NULL);
INSERT INTO public.moon VALUES (26, 'beimos', 91002, 1818181, true, true, NULL);
INSERT INTO public.moon VALUES (27, 'Naliad', 6000, 81898, false, false, NULL);
INSERT INTO public.moon VALUES (28, 'Neried', 91002, 1818181, true, true, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 9000, 100000, 'Our earth', 1000000000, NULL);
INSERT INTO public.planet VALUES (2, 'venus', 80000, 10000, 'Venus planet', 900000, NULL);
INSERT INTO public.planet VALUES (3, 'Jupiter', 10000, 10000, 'Jupiter planet', 400000, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 10000, 10000, 'Jupiter planet', 400000, NULL);
INSERT INTO public.planet VALUES (5, 'Mecury', 20000, 80000, 'Mecury  planet', 900000, NULL);
INSERT INTO public.planet VALUES (6, 'Santurn', 30000, 90000, 'Santurn  planet', 600000, NULL);
INSERT INTO public.planet VALUES (8, 'sedna', 1000, 90199191, 'dwarf plannet', 90000000000000, NULL);
INSERT INTO public.planet VALUES (9, 'salacia', 1000, 90199191, 'dwarf plannet', 90000000000000, NULL);
INSERT INTO public.planet VALUES (10, 'pluto', 1000, 90199191, 'pluto plannet', 90000000000000, NULL);
INSERT INTO public.planet VALUES (11, 'elon', 1000, 90199191, 'elon planet', 90000000000000, NULL);
INSERT INTO public.planet VALUES (12, 'paul', 1000, 90199191, 'paul planet', 90000000000000, NULL);
INSERT INTO public.planet VALUES (13, 'Jenny', 100000, 90199191, 'jenny planet', 90000000000000, NULL);
INSERT INTO public.planet VALUES (14, 'Sabturb', 81818, 192882, 'Random planet name', 828282888, NULL);
INSERT INTO public.planet VALUES (15, 'Sabturby', 81818, 192882, 'Random planet name', 828282888, NULL);
INSERT INTO public.planet VALUES (16, 'ean', 81819, 76677, 'Random', 1991919, NULL);
INSERT INTO public.planet VALUES (17, 'caan', 81818, 192882, 'Random planet name', 828282888, NULL);
INSERT INTO public.planet VALUES (18, 'xxan', 81819, 76677, 'Random', 1991919, NULL);
INSERT INTO public.planet VALUES (19, 'plural', 81818, 192882, 'Random planet name', 828282888, NULL);
INSERT INTO public.planet VALUES (20, 'yoko', 81819, 76677, 'Random', 1991919, NULL);
INSERT INTO public.planet VALUES (21, 'lido', 81818, 192882, 'Random planet name', 828282888, NULL);
INSERT INTO public.planet VALUES (22, 'moko', 81819, 76677, 'Random', 1991919, NULL);
INSERT INTO public.planet VALUES (23, 'tesco', 81818, 192882, 'Random planet name', 828282888, NULL);
INSERT INTO public.planet VALUES (24, 'london', 81819, 76677, 'Random', 1991919, NULL);
INSERT INTO public.planet VALUES (25, 'lidl', 81818, 192882, 'Random planet name', 828282888, NULL);
INSERT INTO public.planet VALUES (26, 'asos', 81819, 76677, 'Random', 1991919, NULL);
INSERT INTO public.planet VALUES (27, 'M&S', 81818, 192882, 'Random planet name', 828282888, NULL);
INSERT INTO public.planet VALUES (28, 'Asda', 81819, 76677, 'Random', 1991919, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Polaris', 1000000, 999999, true, false, NULL);
INSERT INTO public.star VALUES (2, 'Castor', 2000000, 881727, false, false, NULL);
INSERT INTO public.star VALUES (3, 'Sun', 199191, 991991, true, true, NULL);
INSERT INTO public.star VALUES (4, 'Orion', 1000000, 999999, true, false, NULL);
INSERT INTO public.star VALUES (5, 'Poluux', 2000000, 881727, false, false, NULL);
INSERT INTO public.star VALUES (6, 'Antares', 199191, 991991, true, true, NULL);


--
-- Name: continent_continent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.continent_continent_id_seq', 6, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 28, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 28, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: continent continent_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_pkey PRIMARY KEY (continent_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: continent name_uni; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT name_uni UNIQUE (name);


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
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


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

