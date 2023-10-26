--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0 (Ubuntu 16.0-1.pgdg22.04+1)
-- Dumped by pg_dump version 16.0 (Ubuntu 16.0-1.pgdg22.04+1)

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
-- Name: admin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin (
    name text
);


ALTER TABLE public.admin OWNER TO postgres;

--
-- Name: british_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.british_history (
    question text,
    choice_1 text,
    choice_2 text,
    choice_3 text,
    choice_4 text,
    correct_answer text
);


ALTER TABLE public.british_history OWNER TO postgres;

--
-- Name: comparingsize; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comparingsize (
    question text,
    choice_1 text,
    choice_2 text,
    correct_answer text
);


ALTER TABLE public.comparingsize OWNER TO postgres;

--
-- Name: demographics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.demographics (
    question text,
    choice_1 text,
    choice_2 text,
    choice_3 text,
    choice_4 text,
    correct_answer text
);


ALTER TABLE public.demographics OWNER TO postgres;

--
-- Name: generalknowledge1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.generalknowledge1 (
    question text,
    choice_1 text,
    choice_2 text,
    choice_3 text,
    choice_4 text,
    correct_answer text
);


ALTER TABLE public.generalknowledge1 OWNER TO postgres;

--
-- Name: geography1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.geography1 (
    question text,
    choice_1 text,
    choice_2 text,
    choice_3 text,
    choice_4 text,
    correct_answer text
);


ALTER TABLE public.geography1 OWNER TO postgres;

--
-- Name: geography2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.geography2 (
    question text,
    choice_1 text,
    choice_2 text,
    choice_3 text,
    choice_4 text,
    correct_answer text
);


ALTER TABLE public.geography2 OWNER TO postgres;

--
-- Name: history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.history (
    question text,
    choice_1 text,
    choice_2 text,
    choice_3 text,
    choice_4 text,
    correct_answer text
);


ALTER TABLE public.history OWNER TO postgres;

--
-- Name: knex_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.knex_migrations (
    id integer NOT NULL,
    name character varying(255),
    batch integer,
    migration_time timestamp with time zone
);


ALTER TABLE public.knex_migrations OWNER TO postgres;

--
-- Name: knex_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.knex_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.knex_migrations_id_seq OWNER TO postgres;

--
-- Name: knex_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.knex_migrations_id_seq OWNED BY public.knex_migrations.id;


--
-- Name: knex_migrations_lock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.knex_migrations_lock (
    index integer NOT NULL,
    is_locked integer
);


ALTER TABLE public.knex_migrations_lock OWNER TO postgres;

--
-- Name: knex_migrations_lock_index_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.knex_migrations_lock_index_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.knex_migrations_lock_index_seq OWNER TO postgres;

--
-- Name: knex_migrations_lock_index_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.knex_migrations_lock_index_seq OWNED BY public.knex_migrations_lock.index;


--
-- Name: numbers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.numbers (
    question text,
    choice_1 text,
    choice_2 text,
    choice_3 text,
    choice_4 text,
    correct_answer text
);


ALTER TABLE public.numbers OWNER TO postgres;

--
-- Name: planets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.planets (
    question text,
    choice_1 text,
    choice_2 text,
    choice_3 text,
    choice_4 text,
    correct_answer text
);


ALTER TABLE public.planets OWNER TO postgres;

--
-- Name: questionsets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.questionsets (
    setname text,
    number_of_questions integer,
    topic text
);


ALTER TABLE public.questionsets OWNER TO postgres;

--
-- Name: science; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.science (
    question text,
    choice_1 text,
    choice_2 text,
    choice_3 text,
    choice_4 text,
    correct_answer text
);


ALTER TABLE public.science OWNER TO postgres;

--
-- Name: session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.session (
    sid character varying NOT NULL,
    sess json NOT NULL,
    expire timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.session OWNER TO postgres;

--
-- Name: student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student (
    name text
);


ALTER TABLE public.student OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    role text,
    username text,
    password text
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: knex_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knex_migrations ALTER COLUMN id SET DEFAULT nextval('public.knex_migrations_id_seq'::regclass);


--
-- Name: knex_migrations_lock index; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knex_migrations_lock ALTER COLUMN index SET DEFAULT nextval('public.knex_migrations_lock_index_seq'::regclass);


--
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin (name) FROM stdin;
steffan
\.


--
-- Data for Name: british_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.british_history (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM stdin;
What group of people formed the priestly class in ancient Celtic society?	Druids	Gurkhas	Haruspices	Jesults	Druids
What type of flower is a symbol of remembrance for World War One?	Orchid	Poppy	Rose	Tulip	Poppy
Which monarch holds the record for the longest reign in British history?	Elizabeth II	Henry VIII	Victoria	\N	Elizabeth II
What physical description is often associated with Richard III?	Blackbearded	Gigantic	Hunchbacked	Toothless	Hunchbacked
What holiday did Parliamentary Puritans ban in 1647, replacing it with a day of fasting?	Christmas	Halloween	New Year's Day	Valentine's Day	Christmas
\.


--
-- Data for Name: comparingsize; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comparingsize (question, choice_1, choice_2, correct_answer) FROM stdin;
Earth or Mars	Earth	Mars	Earth
 The Old Testament or the New Testament, by length	Old Testament	New Testament	Old Testament
The heaviest human ever or the heaviest pumpkin ever	Human	Pumpkin	Pumpkin
 The annual budget of the French government or the annual revenue of Google.	France	Google	France
Africa or South America	Africa	South America	Africa
\.


--
-- Data for Name: demographics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.demographics (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM stdin;
Which of these places has the greatest population?	New Zealand	Belgium	texas	Hong Kong	Texas
What percent of the population of Turkey is registered as Muslim by the Turkish government?	50%	80%	99.8%	\N	99.8%
Which of these countries has the highest population density?	Netherlands	Papua New Guinea	Peru	\N	Netherland
As of March 2021, what is the approximate population of the world?	4.93 billion	7.85 billion	9.12 billion	\N	7.85 billion
Approximately what year is Nigeria projected to pass the United States in population?	It already has	2055	2300	Never	Never
\.


--
-- Data for Name: generalknowledge1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.generalknowledge1 (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM stdin;
What is the longest that an elephant has ever lived? (That we know of)	17 years	49 years	86 years	142 years	86 years
How many rings are on the Olympic flag?	None	4	5	7	5
What is a tarsier?	A bird	A lizard	A primate	\N	A primate
How did Spider-Man get his powers?	Bitten by a radio-active spider	Born with them	Military experiment gone wrong	Woke up with them after a long dream	Bitten by a radio-active spider
In darts, what's the most points you can score with a single throw?	20	50	60	100	60
\.


--
-- Data for Name: geography1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.geography1 (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM stdin;
Which of these countries has the largest population?	Brazil	Russia	Germany	Iran	Brazil
Which of these mountain ranges has the highest maximum elevation?	Andes	Alps	Rockies	Urals	Andes
Which of these rivers flows past the most countries?	Amazon	Euphrates	Mississippi	Danube	Danube
Which of these cities has the highest population?	San Francisco	Santiago	Singapore	Shanghai	Shanghai
Which of these islands has the largest area	Iceland	Cuba	Great Britain	Madagascar	Madagascar
\.


--
-- Data for Name: geography2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.geography2 (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM stdin;
Which of these U.S. states does NOT border Canada?	Alaska	Indiana	Maine	Minnesota	Indiana
Which of these countries was NOT a part of the Soviet Union?	Belarus	Georgia	Poland	Ukraine	Poland
Which of these cities is NOT a national capital?	Bangkok	Cairo	Prague	Sydney	Sydney
Which of these cities DOESN'T border the Mediterranean Sea?	Alexandria	Barcelona	Lisbon	Monaco	Lisbon
Which of these countries was NEVER part of the British Empire?	Ireland	Kenya	New Zealand	Thailand	Thailand
\.


--
-- Data for Name: history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.history (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM stdin;
Did the Germans ever capture Moscow?	Yes	No	\N	\N	No
How did Hitler die?	Hanged after the trials of Nuremberg	Shot by the Russians	Suicide	No one knows	Suicide
Which of these countries did not fight in WWII	Finland	Greece	Ireland	Italy	Ireland
 What was the name of the American effort to build an atomic bomb?	The Baltimore Project	The chicago project	The Manhattan Project	The Philadelphia project	The Manhattan Project
About 70 million people died as a result of WWII. What percent of these people were from the United States?	0.6%	5.6%	15.6%	30.6%	0.6%
\.


--
-- Data for Name: knex_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.knex_migrations (id, name, batch, migration_time) FROM stdin;
4	20231022170142_sizetable.js	1	2023-10-23 01:02:17.013+08
5	20231023114729_moretables.js	2	2023-10-23 19:54:04.615+08
6	20231023115546_createtables.js.js	3	2023-10-23 19:56:23.645+08
16	20231023115728_createmoretables.js	4	2023-10-23 21:09:41.987+08
19	20231024152846_studenttable.js	5	2023-10-24 23:32:40.709+08
20	20231024152827_admintable.js	6	2023-10-24 23:32:43.395+08
\.


--
-- Data for Name: knex_migrations_lock; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.knex_migrations_lock (index, is_locked) FROM stdin;
1	0
\.


--
-- Data for Name: numbers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.numbers (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM stdin;
Number of countries in the world, according to JetPunk	47	94	196	\N	196
Players per team on the field in international football	7	9	11	13	11
Age at which Jimi Hendrix, Janis Joplin, Jim Morrison, and Amy Winehouse died	17	27	37	\N	27
Unlucky number in China	4	8	13	\N	4
Stars in the Milky Way	1000 - 4000	1 million - 4 million	100 billion - 400 billion	\N	100 billion - 400 billion
\.


--
-- Data for Name: planets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.planets (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM stdin;
What is the smallest planet in the solar system?	Earth	Mars	Mercury	Venus	Mercury
What is the largest planet in the solar system?	Earth	Jupiter	Neptune	Saturn	Jupiter
Which planet is closest to the sun?	Jupiter	Mercury	Venus	Different planets at different times	Mercury
Which planet is furthest from the sun?	Neptune	Saturn	Uranus	Different planets at different times	Neptune
Which planet is closest to Earth?	Mars	Saturn	Venus	Different planets at different times	Different planets at different times
\.


--
-- Data for Name: questionsets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.questionsets (setname, number_of_questions, topic) FROM stdin;
british_history	5	history
comparingsize	5	comparing
demographics	5	statistics
generalknowledge1	5	general knowledge
geography1	5	geography
geography2	5	geography
history	5	history
numbers	5	numbers
planets	5	planets
science	5	science
\.


--
-- Data for Name: science; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.science (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM stdin;
Which of these planets is the largest?	Earth	Mars	Mercury	Venus	Earth
About what percent of the Earth's atmosphere is made up of Oxygen?	0.4%	21%	90%	\N	21%
What is the name of the current geological epoch, which began about 11,650 years ago?	Cretaceous	Holocene	Pleistocene	\N	Holocene
What has been the primary cause of the increase in the temperature of the Earth's atmosphere in recent decades?	Emission of carbon dioxide from the burning of fossil fuels	Increased brightness of the sun	Pertubations in the Earth's orbit	Volcanic activity	Volcanic activity
Which of these animals is most closely related to homo sapiens?	Humpback whale	Iguana	Monarch butterfly	Screech owl	Screech owl
\.


--
-- Data for Name: session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.session (sid, sess, expire) FROM stdin;
j3HI2GgGX-J6UEP33DdVY_lSjLK_vIKF	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":{"username":"steffan"}},"flash":{}}	2023-10-26 19:42:23
uN00ge9I5KCGorJN7wOz4p82_CfrrDF-	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"flash":{}}	2023-10-26 13:44:08
QZDFkGAlaWkX_RISxDotJcACEwQYNZ21	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"flash":{}}	2023-10-26 19:38:35
\.


--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student (name) FROM stdin;
steffan
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (role, username, password) FROM stdin;
admin	steffan	$2b$10$1m.RgNALWNjzWffoxuU1h.sLtu/Rcg7jEbEXnuJgJWXUVodVH6eJG
\.


--
-- Name: knex_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.knex_migrations_id_seq', 20, true);


--
-- Name: knex_migrations_lock_index_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.knex_migrations_lock_index_seq', 1, true);


--
-- Name: knex_migrations_lock knex_migrations_lock_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knex_migrations_lock
    ADD CONSTRAINT knex_migrations_lock_pkey PRIMARY KEY (index);


--
-- Name: knex_migrations knex_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knex_migrations
    ADD CONSTRAINT knex_migrations_pkey PRIMARY KEY (id);


--
-- Name: session session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_pkey PRIMARY KEY (sid);


--
-- Name: IDX_session_expire; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_session_expire" ON public.session USING btree (expire);


--
-- PostgreSQL database dump complete
--

