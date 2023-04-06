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
    number_guesses integer NOT NULL,
    user_id integer
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
    username character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (1, 25, 8);
INSERT INTO public.games VALUES (2, 48, 9);
INSERT INTO public.games VALUES (3, 449, 9);
INSERT INTO public.games VALUES (4, 92, 10);
INSERT INTO public.games VALUES (5, 472, 10);
INSERT INTO public.games VALUES (6, 818, 9);
INSERT INTO public.games VALUES (7, 304, 9);
INSERT INTO public.games VALUES (8, 729, 9);
INSERT INTO public.games VALUES (9, 918, 11);
INSERT INTO public.games VALUES (10, 630, 11);
INSERT INTO public.games VALUES (11, 92, 12);
INSERT INTO public.games VALUES (12, 719, 12);
INSERT INTO public.games VALUES (13, 127, 11);
INSERT INTO public.games VALUES (14, 35, 11);
INSERT INTO public.games VALUES (15, 323, 11);
INSERT INTO public.games VALUES (16, 213, 13);
INSERT INTO public.games VALUES (17, 551, 13);
INSERT INTO public.games VALUES (18, 820, 14);
INSERT INTO public.games VALUES (19, 789, 14);
INSERT INTO public.games VALUES (20, 517, 13);
INSERT INTO public.games VALUES (21, 747, 13);
INSERT INTO public.games VALUES (22, 974, 13);
INSERT INTO public.games VALUES (23, 418, 15);
INSERT INTO public.games VALUES (24, 919, 15);
INSERT INTO public.games VALUES (25, 572, 16);
INSERT INTO public.games VALUES (26, 762, 16);
INSERT INTO public.games VALUES (27, 409, 15);
INSERT INTO public.games VALUES (28, 968, 15);
INSERT INTO public.games VALUES (29, 182, 15);
INSERT INTO public.games VALUES (30, 199, 17);
INSERT INTO public.games VALUES (31, 505, 17);
INSERT INTO public.games VALUES (32, 100, 18);
INSERT INTO public.games VALUES (33, 912, 18);
INSERT INTO public.games VALUES (34, 359, 17);
INSERT INTO public.games VALUES (35, 612, 17);
INSERT INTO public.games VALUES (36, 886, 17);
INSERT INTO public.games VALUES (37, 15, 19);
INSERT INTO public.games VALUES (38, 930, 20);
INSERT INTO public.games VALUES (39, 108, 20);
INSERT INTO public.games VALUES (40, 506, 21);
INSERT INTO public.games VALUES (41, 696, 21);
INSERT INTO public.games VALUES (42, 744, 20);
INSERT INTO public.games VALUES (43, 997, 20);
INSERT INTO public.games VALUES (44, 794, 20);
INSERT INTO public.games VALUES (45, 769, 22);
INSERT INTO public.games VALUES (46, 929, 22);
INSERT INTO public.games VALUES (47, 94, 23);
INSERT INTO public.games VALUES (48, 107, 23);
INSERT INTO public.games VALUES (49, 236, 22);
INSERT INTO public.games VALUES (50, 170, 22);
INSERT INTO public.games VALUES (51, 676, 22);
INSERT INTO public.games VALUES (52, 1, 24);
INSERT INTO public.games VALUES (53, 821, 24);
INSERT INTO public.games VALUES (54, 415, 25);
INSERT INTO public.games VALUES (55, 380, 25);
INSERT INTO public.games VALUES (56, 813, 24);
INSERT INTO public.games VALUES (57, 865, 24);
INSERT INTO public.games VALUES (58, 304, 24);
INSERT INTO public.games VALUES (59, 1, 26);
INSERT INTO public.games VALUES (60, 633, 26);
INSERT INTO public.games VALUES (61, 330, 27);
INSERT INTO public.games VALUES (62, 952, 27);
INSERT INTO public.games VALUES (63, 572, 26);
INSERT INTO public.games VALUES (64, 410, 26);
INSERT INTO public.games VALUES (65, 760, 26);
INSERT INTO public.games VALUES (66, 585, 28);
INSERT INTO public.games VALUES (67, 611, 28);
INSERT INTO public.games VALUES (68, 309, 29);
INSERT INTO public.games VALUES (69, 576, 29);
INSERT INTO public.games VALUES (70, 538, 28);
INSERT INTO public.games VALUES (71, 823, 28);
INSERT INTO public.games VALUES (72, 396, 28);
INSERT INTO public.games VALUES (73, 1, 30);
INSERT INTO public.games VALUES (74, 711, 30);
INSERT INTO public.games VALUES (75, 581, 31);
INSERT INTO public.games VALUES (76, 871, 31);
INSERT INTO public.games VALUES (77, 583, 30);
INSERT INTO public.games VALUES (78, 491, 30);
INSERT INTO public.games VALUES (79, 934, 30);
INSERT INTO public.games VALUES (80, 1, 33);
INSERT INTO public.games VALUES (81, 317, 33);
INSERT INTO public.games VALUES (82, 674, 34);
INSERT INTO public.games VALUES (83, 546, 34);
INSERT INTO public.games VALUES (84, 862, 33);
INSERT INTO public.games VALUES (85, 248, 33);
INSERT INTO public.games VALUES (86, 500, 33);
INSERT INTO public.games VALUES (87, 418, 35);
INSERT INTO public.games VALUES (88, 511, 35);
INSERT INTO public.games VALUES (89, 974, 36);
INSERT INTO public.games VALUES (90, 247, 36);
INSERT INTO public.games VALUES (91, 346, 35);
INSERT INTO public.games VALUES (92, 850, 35);
INSERT INTO public.games VALUES (93, 139, 35);
INSERT INTO public.games VALUES (94, 272, 37);
INSERT INTO public.games VALUES (95, 490, 37);
INSERT INTO public.games VALUES (96, 654, 38);
INSERT INTO public.games VALUES (97, 580, 38);
INSERT INTO public.games VALUES (98, 693, 37);
INSERT INTO public.games VALUES (99, 385, 37);
INSERT INTO public.games VALUES (100, 591, 37);
INSERT INTO public.games VALUES (101, 12, 32);
INSERT INTO public.games VALUES (102, 698, 39);
INSERT INTO public.games VALUES (103, 731, 39);
INSERT INTO public.games VALUES (104, 648, 40);
INSERT INTO public.games VALUES (105, 662, 40);
INSERT INTO public.games VALUES (106, 491, 39);
INSERT INTO public.games VALUES (107, 713, 39);
INSERT INTO public.games VALUES (108, 604, 39);
INSERT INTO public.games VALUES (109, 275, 41);
INSERT INTO public.games VALUES (110, 821, 41);
INSERT INTO public.games VALUES (111, 1, 42);
INSERT INTO public.games VALUES (112, 224, 42);
INSERT INTO public.games VALUES (113, 82, 41);
INSERT INTO public.games VALUES (114, 189, 41);
INSERT INTO public.games VALUES (115, 112, 41);
INSERT INTO public.games VALUES (116, 1, 44);
INSERT INTO public.games VALUES (117, 830, 44);
INSERT INTO public.games VALUES (118, 979, 45);
INSERT INTO public.games VALUES (119, 396, 45);
INSERT INTO public.games VALUES (120, 423, 44);
INSERT INTO public.games VALUES (121, 980, 44);
INSERT INTO public.games VALUES (122, 612, 44);
INSERT INTO public.games VALUES (123, 1, 46);
INSERT INTO public.games VALUES (124, 281, 46);
INSERT INTO public.games VALUES (125, 860, 47);
INSERT INTO public.games VALUES (126, 683, 47);
INSERT INTO public.games VALUES (127, 867, 46);
INSERT INTO public.games VALUES (128, 515, 46);
INSERT INTO public.games VALUES (129, 87, 46);
INSERT INTO public.games VALUES (130, 1, 48);
INSERT INTO public.games VALUES (131, 19, 48);
INSERT INTO public.games VALUES (132, 993, 49);
INSERT INTO public.games VALUES (133, 373, 49);
INSERT INTO public.games VALUES (134, 218, 48);
INSERT INTO public.games VALUES (135, 19, 48);
INSERT INTO public.games VALUES (136, 356, 48);
INSERT INTO public.games VALUES (137, 1, 50);
INSERT INTO public.games VALUES (138, 606, 50);
INSERT INTO public.games VALUES (139, 989, 51);
INSERT INTO public.games VALUES (140, 807, 51);
INSERT INTO public.games VALUES (141, 88, 50);
INSERT INTO public.games VALUES (142, 906, 50);
INSERT INTO public.games VALUES (143, 407, 50);
INSERT INTO public.games VALUES (144, 206, 53);
INSERT INTO public.games VALUES (145, 355, 53);
INSERT INTO public.games VALUES (146, 208, 54);
INSERT INTO public.games VALUES (147, 200, 54);
INSERT INTO public.games VALUES (148, 175, 53);
INSERT INTO public.games VALUES (149, 990, 53);
INSERT INTO public.games VALUES (150, 578, 53);
INSERT INTO public.games VALUES (151, 927, 55);
INSERT INTO public.games VALUES (152, 457, 55);
INSERT INTO public.games VALUES (153, 420, 56);
INSERT INTO public.games VALUES (154, 53, 56);
INSERT INTO public.games VALUES (155, 867, 55);
INSERT INTO public.games VALUES (156, 960, 55);
INSERT INTO public.games VALUES (157, 876, 55);
INSERT INTO public.games VALUES (158, 908, 57);
INSERT INTO public.games VALUES (159, 491, 57);
INSERT INTO public.games VALUES (160, 329, 58);
INSERT INTO public.games VALUES (161, 640, 58);
INSERT INTO public.games VALUES (162, 921, 57);
INSERT INTO public.games VALUES (163, 96, 57);
INSERT INTO public.games VALUES (164, 274, 57);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1680748847484');
INSERT INTO public.users VALUES (2, 'user_1680748847483');
INSERT INTO public.users VALUES (3, 'user_1680749340390');
INSERT INTO public.users VALUES (4, 'user_1680749340389');
INSERT INTO public.users VALUES (5, 'ERICA');
INSERT INTO public.users VALUES (6, 'user_1680750762234');
INSERT INTO public.users VALUES (7, 'user_1680750762233');
INSERT INTO public.users VALUES (8, 'DG');
INSERT INTO public.users VALUES (9, 'user_1680751586049');
INSERT INTO public.users VALUES (10, 'user_1680751586048');
INSERT INTO public.users VALUES (11, 'user_1680751625555');
INSERT INTO public.users VALUES (12, 'user_1680751625554');
INSERT INTO public.users VALUES (13, 'user_1680751802839');
INSERT INTO public.users VALUES (14, 'user_1680751802838');
INSERT INTO public.users VALUES (15, 'user_1680751864489');
INSERT INTO public.users VALUES (16, 'user_1680751864488');
INSERT INTO public.users VALUES (17, 'user_1680751903646');
INSERT INTO public.users VALUES (18, 'user_1680751903645');
INSERT INTO public.users VALUES (19, 'Erica');
INSERT INTO public.users VALUES (20, 'user_1680752019504');
INSERT INTO public.users VALUES (21, 'user_1680752019503');
INSERT INTO public.users VALUES (22, 'user_1680752030613');
INSERT INTO public.users VALUES (23, 'user_1680752030612');
INSERT INTO public.users VALUES (24, 'user_1680752043772');
INSERT INTO public.users VALUES (25, 'user_1680752043771');
INSERT INTO public.users VALUES (26, 'user_1680752058692');
INSERT INTO public.users VALUES (27, 'user_1680752058691');
INSERT INTO public.users VALUES (28, 'user_1680752079435');
INSERT INTO public.users VALUES (29, 'user_1680752079434');
INSERT INTO public.users VALUES (30, 'user_1680752535491');
INSERT INTO public.users VALUES (31, 'user_1680752535490');
INSERT INTO public.users VALUES (32, 'erica');
INSERT INTO public.users VALUES (33, 'user_1680752597332');
INSERT INTO public.users VALUES (34, 'user_1680752597331');
INSERT INTO public.users VALUES (35, 'user_1680752633954');
INSERT INTO public.users VALUES (36, 'user_1680752633953');
INSERT INTO public.users VALUES (37, 'user_1680752687056');
INSERT INTO public.users VALUES (38, 'user_1680752687055');
INSERT INTO public.users VALUES (39, 'user_1680752766880');
INSERT INTO public.users VALUES (40, 'user_1680752766879');
INSERT INTO public.users VALUES (41, 'user_1680752897432');
INSERT INTO public.users VALUES (42, 'user_1680752897431');
INSERT INTO public.users VALUES (43, 'wer');
INSERT INTO public.users VALUES (44, 'user_1680752927362');
INSERT INTO public.users VALUES (45, 'user_1680752927361');
INSERT INTO public.users VALUES (46, 'user_1680752959272');
INSERT INTO public.users VALUES (47, 'user_1680752959271');
INSERT INTO public.users VALUES (48, 'user_1680752979299');
INSERT INTO public.users VALUES (49, 'user_1680752979298');
INSERT INTO public.users VALUES (50, 'user_1680752999776');
INSERT INTO public.users VALUES (51, 'user_1680752999775');
INSERT INTO public.users VALUES (52, 'cvn');
INSERT INTO public.users VALUES (53, 'user_1680753033878');
INSERT INTO public.users VALUES (54, 'user_1680753033877');
INSERT INTO public.users VALUES (55, 'user_1680753043764');
INSERT INTO public.users VALUES (56, 'user_1680753043763');
INSERT INTO public.users VALUES (57, 'user_1680753075663');
INSERT INTO public.users VALUES (58, 'user_1680753075662');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 164, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 58, true);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

