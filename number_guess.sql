--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL,
    number_guesses integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 0, 20);
INSERT INTO public.games VALUES (2, 5, 0, 409);
INSERT INTO public.games VALUES (3, 5, 0, 921);
INSERT INTO public.games VALUES (4, 6, 0, 391);
INSERT INTO public.games VALUES (5, 6, 0, 882);
INSERT INTO public.games VALUES (6, 5, 0, 342);
INSERT INTO public.games VALUES (7, 5, 0, 840);
INSERT INTO public.games VALUES (8, 5, 0, 519);
INSERT INTO public.games VALUES (9, 7, 0, 846);
INSERT INTO public.games VALUES (10, 7, 0, 332);
INSERT INTO public.games VALUES (11, 8, 0, 959);
INSERT INTO public.games VALUES (12, 8, 0, 398);
INSERT INTO public.games VALUES (13, 7, 0, 821);
INSERT INTO public.games VALUES (14, 7, 0, 780);
INSERT INTO public.games VALUES (15, 7, 0, 598);
INSERT INTO public.games VALUES (16, 9, 0, 776);
INSERT INTO public.games VALUES (17, 9, 0, 358);
INSERT INTO public.games VALUES (18, 10, 0, 11);
INSERT INTO public.games VALUES (19, 10, 0, 679);
INSERT INTO public.games VALUES (20, 9, 0, 484);
INSERT INTO public.games VALUES (21, 9, 0, 481);
INSERT INTO public.games VALUES (22, 9, 0, 448);
INSERT INTO public.games VALUES (23, 11, 0, 654);
INSERT INTO public.games VALUES (24, 11, 0, 732);
INSERT INTO public.games VALUES (25, 12, 0, 437);
INSERT INTO public.games VALUES (26, 12, 0, 104);
INSERT INTO public.games VALUES (27, 11, 0, 227);
INSERT INTO public.games VALUES (28, 11, 0, 412);
INSERT INTO public.games VALUES (29, 11, 0, 224);
INSERT INTO public.games VALUES (30, 13, 0, 755);
INSERT INTO public.games VALUES (31, 13, 0, 585);
INSERT INTO public.games VALUES (32, 14, 0, 104);
INSERT INTO public.games VALUES (33, 14, 0, 366);
INSERT INTO public.games VALUES (34, 13, 0, 984);
INSERT INTO public.games VALUES (35, 13, 0, 685);
INSERT INTO public.games VALUES (36, 13, 0, 279);
INSERT INTO public.games VALUES (37, 15, 0, 248);
INSERT INTO public.games VALUES (38, 15, 0, 386);
INSERT INTO public.games VALUES (39, 16, 0, 282);
INSERT INTO public.games VALUES (40, 16, 0, 198);
INSERT INTO public.games VALUES (41, 15, 0, 307);
INSERT INTO public.games VALUES (42, 15, 0, 710);
INSERT INTO public.games VALUES (43, 15, 0, 98);
INSERT INTO public.games VALUES (44, 17, 0, 780);
INSERT INTO public.games VALUES (45, 17, 0, 639);
INSERT INTO public.games VALUES (46, 18, 0, 44);
INSERT INTO public.games VALUES (47, 18, 0, 557);
INSERT INTO public.games VALUES (48, 17, 0, 784);
INSERT INTO public.games VALUES (49, 17, 0, 904);
INSERT INTO public.games VALUES (50, 17, 0, 210);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'G');
INSERT INTO public.users VALUES (2, 'user_1738536632366');
INSERT INTO public.users VALUES (3, 'user_1738536632365');
INSERT INTO public.users VALUES (4, 'g');
INSERT INTO public.users VALUES (5, 'user_1738537999632');
INSERT INTO public.users VALUES (6, 'user_1738537999631');
INSERT INTO public.users VALUES (7, 'user_1738538340588');
INSERT INTO public.users VALUES (8, 'user_1738538340587');
INSERT INTO public.users VALUES (9, 'user_1738538629657');
INSERT INTO public.users VALUES (10, 'user_1738538629656');
INSERT INTO public.users VALUES (11, 'user_1738539038842');
INSERT INTO public.users VALUES (12, 'user_1738539038841');
INSERT INTO public.users VALUES (13, 'user_1738539084998');
INSERT INTO public.users VALUES (14, 'user_1738539084997');
INSERT INTO public.users VALUES (15, 'user_1738539271359');
INSERT INTO public.users VALUES (16, 'user_1738539271358');
INSERT INTO public.users VALUES (17, 'user_1738539408566');
INSERT INTO public.users VALUES (18, 'user_1738539408565');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 50, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 18, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--
