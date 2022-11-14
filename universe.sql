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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(20),
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer NOT NULL,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    name character varying(20),
    galaxy_types_id integer NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(20),
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(20),
    planet_id integer NOT NULL,
    age_in_millions_of_years integer,
    has_life boolean,
    distance_from_earth numeric(8,2),
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(20),
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milkway', 1, NULL, 100, NULL);
INSERT INTO public.galaxy VALUES ('Andromeda', 2, NULL, 100, NULL);
INSERT INTO public.galaxy VALUES ('GN-z11', 3, NULL, 100, NULL);
INSERT INTO public.galaxy VALUES ('IC 1101', 4, NULL, 100, NULL);
INSERT INTO public.galaxy VALUES ('HD 1', 5, NULL, 100, NULL);
INSERT INTO public.galaxy VALUES ('Messier 83', 6, NULL, 100, NULL);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES ('elliptical', 1, 'far from earth');
INSERT INTO public.galaxy_types VALUES ('spiral', 2, 'far from earth');
INSERT INTO public.galaxy_types VALUES ('irregular', 3, 'far from earth');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Ganymede', 2, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Titan', 3, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Europa', 4, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Io', 5, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Callisto', 6, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Callisto', 7, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Callisto', 8, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Callisto', 9, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Callisto', 10, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Callisto', 11, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Callisto', 12, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Callisto', 13, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Io', 14, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Io', 15, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Io', 16, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Io', 17, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Io', 18, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Io', 19, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Io', 20, 1, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 1, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Venus', 2, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Earth', 3, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Mars', 4, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Jupiter', 5, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Saturn', 6, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Uranus', 7, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Neptune', 8, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Pluto', 9, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Ceres', 10, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Eris', 11, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Hauea', 12, NULL, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, 1, NULL, NULL);
INSERT INTO public.star VALUES ('Stephenson', 2, 1, NULL, NULL);
INSERT INTO public.star VALUES ('HD', 3, 1, NULL, NULL);
INSERT INTO public.star VALUES ('Majoris', 4, 1, NULL, NULL);
INSERT INTO public.star VALUES ('Scuti', 5, 1, NULL, NULL);
INSERT INTO public.star VALUES ('Betel', 6, 1, NULL, NULL);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_galaxy_types_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_galaxy_types_id_key UNIQUE (galaxy_types_id);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

