toc.dat                                                                                             0000600 0004000 0002000 00000032716 14516712257 0014462 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP   :    ,            	    {            quiz     16.0 (Ubuntu 16.0-1.pgdg22.04+1)     16.0 (Ubuntu 16.0-1.pgdg22.04+1) 4               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    16388    quiz    DATABASE     p   CREATE DATABASE quiz WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE quiz;
                postgres    false         �            1259    24663    admin    TABLE     -   CREATE TABLE public.admin (
    name text
);
    DROP TABLE public.admin;
       public         heap    postgres    false         �            1259    24668    appointments    TABLE     E   CREATE TABLE public.appointments (
    "time" text,
    name text
);
     DROP TABLE public.appointments;
       public         heap    postgres    false         �            1259    16619    british_history    TABLE     �   CREATE TABLE public.british_history (
    question text,
    choice_1 text,
    choice_2 text,
    choice_3 text,
    choice_4 text,
    correct_answer text
);
 #   DROP TABLE public.british_history;
       public         heap    postgres    false         �            1259    16433    comparingsize    TABLE     x   CREATE TABLE public.comparingsize (
    question text,
    choice_1 text,
    choice_2 text,
    correct_answer text
);
 !   DROP TABLE public.comparingsize;
       public         heap    postgres    false         �            1259    16604    demographics    TABLE     �   CREATE TABLE public.demographics (
    question text,
    choice_1 text,
    choice_2 text,
    choice_3 text,
    choice_4 text,
    correct_answer text
);
     DROP TABLE public.demographics;
       public         heap    postgres    false         �            1259    16589    generalknowledge1    TABLE     �   CREATE TABLE public.generalknowledge1 (
    question text,
    choice_1 text,
    choice_2 text,
    choice_3 text,
    choice_4 text,
    correct_answer text
);
 %   DROP TABLE public.generalknowledge1;
       public         heap    postgres    false         �            1259    16584 
   geography1    TABLE     �   CREATE TABLE public.geography1 (
    question text,
    choice_1 text,
    choice_2 text,
    choice_3 text,
    choice_4 text,
    correct_answer text
);
    DROP TABLE public.geography1;
       public         heap    postgres    false         �            1259    16594 
   geography2    TABLE     �   CREATE TABLE public.geography2 (
    question text,
    choice_1 text,
    choice_2 text,
    choice_3 text,
    choice_4 text,
    correct_answer text
);
    DROP TABLE public.geography2;
       public         heap    postgres    false         �            1259    16394    history    TABLE     �   CREATE TABLE public.history (
    question text,
    choice_1 text,
    choice_2 text,
    choice_3 text,
    choice_4 text,
    correct_answer text
);
    DROP TABLE public.history;
       public         heap    postgres    false         �            1259    16410    knex_migrations    TABLE     �   CREATE TABLE public.knex_migrations (
    id integer NOT NULL,
    name character varying(255),
    batch integer,
    migration_time timestamp with time zone
);
 #   DROP TABLE public.knex_migrations;
       public         heap    postgres    false         �            1259    16409    knex_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.knex_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.knex_migrations_id_seq;
       public          postgres    false    217                    0    0    knex_migrations_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.knex_migrations_id_seq OWNED BY public.knex_migrations.id;
          public          postgres    false    216         �            1259    16417    knex_migrations_lock    TABLE     `   CREATE TABLE public.knex_migrations_lock (
    index integer NOT NULL,
    is_locked integer
);
 (   DROP TABLE public.knex_migrations_lock;
       public         heap    postgres    false         �            1259    16416    knex_migrations_lock_index_seq    SEQUENCE     �   CREATE SEQUENCE public.knex_migrations_lock_index_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.knex_migrations_lock_index_seq;
       public          postgres    false    219                    0    0    knex_migrations_lock_index_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.knex_migrations_lock_index_seq OWNED BY public.knex_migrations_lock.index;
          public          postgres    false    218         �            1259    16599    numbers    TABLE     �   CREATE TABLE public.numbers (
    question text,
    choice_1 text,
    choice_2 text,
    choice_3 text,
    choice_4 text,
    correct_answer text
);
    DROP TABLE public.numbers;
       public         heap    postgres    false         �            1259    16614    planets    TABLE     �   CREATE TABLE public.planets (
    question text,
    choice_1 text,
    choice_2 text,
    choice_3 text,
    choice_4 text,
    correct_answer text
);
    DROP TABLE public.planets;
       public         heap    postgres    false         �            1259    24643    questionsets    TABLE     h   CREATE TABLE public.questionsets (
    setname text,
    number_of_questions integer,
    topic text
);
     DROP TABLE public.questionsets;
       public         heap    postgres    false         �            1259    16609    science    TABLE     �   CREATE TABLE public.science (
    question text,
    choice_1 text,
    choice_2 text,
    choice_3 text,
    choice_4 text,
    correct_answer text
);
    DROP TABLE public.science;
       public         heap    postgres    false         �            1259    16443    session    TABLE     �   CREATE TABLE public.session (
    sid character varying NOT NULL,
    sess json NOT NULL,
    expire timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.session;
       public         heap    postgres    false         �            1259    24658    student    TABLE     /   CREATE TABLE public.student (
    name text
);
    DROP TABLE public.student;
       public         heap    postgres    false         �            1259    16438    users    TABLE     S   CREATE TABLE public.users (
    role text,
    username text,
    password text
);
    DROP TABLE public.users;
       public         heap    postgres    false         U           2604    16413    knex_migrations id    DEFAULT     x   ALTER TABLE ONLY public.knex_migrations ALTER COLUMN id SET DEFAULT nextval('public.knex_migrations_id_seq'::regclass);
 A   ALTER TABLE public.knex_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217         V           2604    16420    knex_migrations_lock index    DEFAULT     �   ALTER TABLE ONLY public.knex_migrations_lock ALTER COLUMN index SET DEFAULT nextval('public.knex_migrations_lock_index_seq'::regclass);
 I   ALTER TABLE public.knex_migrations_lock ALTER COLUMN index DROP DEFAULT;
       public          postgres    false    219    218    219         �          0    24663    admin 
   TABLE DATA           %   COPY public.admin (name) FROM stdin;
    public          postgres    false    233       3583.dat            0    24668    appointments 
   TABLE DATA           4   COPY public.appointments ("time", name) FROM stdin;
    public          postgres    false    234       3584.dat �          0    16619    british_history 
   TABLE DATA           k   COPY public.british_history (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM stdin;
    public          postgres    false    230       3580.dat �          0    16433    comparingsize 
   TABLE DATA           U   COPY public.comparingsize (question, choice_1, choice_2, correct_answer) FROM stdin;
    public          postgres    false    220       3570.dat �          0    16604    demographics 
   TABLE DATA           h   COPY public.demographics (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM stdin;
    public          postgres    false    227       3577.dat �          0    16589    generalknowledge1 
   TABLE DATA           m   COPY public.generalknowledge1 (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM stdin;
    public          postgres    false    224       3574.dat �          0    16584 
   geography1 
   TABLE DATA           f   COPY public.geography1 (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM stdin;
    public          postgres    false    223       3573.dat �          0    16594 
   geography2 
   TABLE DATA           f   COPY public.geography2 (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM stdin;
    public          postgres    false    225       3575.dat �          0    16394    history 
   TABLE DATA           c   COPY public.history (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM stdin;
    public          postgres    false    215       3565.dat �          0    16410    knex_migrations 
   TABLE DATA           J   COPY public.knex_migrations (id, name, batch, migration_time) FROM stdin;
    public          postgres    false    217       3567.dat �          0    16417    knex_migrations_lock 
   TABLE DATA           @   COPY public.knex_migrations_lock (index, is_locked) FROM stdin;
    public          postgres    false    219       3569.dat �          0    16599    numbers 
   TABLE DATA           c   COPY public.numbers (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM stdin;
    public          postgres    false    226       3576.dat �          0    16614    planets 
   TABLE DATA           c   COPY public.planets (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM stdin;
    public          postgres    false    229       3579.dat �          0    24643    questionsets 
   TABLE DATA           K   COPY public.questionsets (setname, number_of_questions, topic) FROM stdin;
    public          postgres    false    231       3581.dat �          0    16609    science 
   TABLE DATA           c   COPY public.science (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM stdin;
    public          postgres    false    228       3578.dat �          0    16443    session 
   TABLE DATA           4   COPY public.session (sid, sess, expire) FROM stdin;
    public          postgres    false    222       3572.dat �          0    24658    student 
   TABLE DATA           '   COPY public.student (name) FROM stdin;
    public          postgres    false    232       3582.dat �          0    16438    users 
   TABLE DATA           9   COPY public.users (role, username, password) FROM stdin;
    public          postgres    false    221       3571.dat 	           0    0    knex_migrations_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.knex_migrations_id_seq', 21, true);
          public          postgres    false    216         
           0    0    knex_migrations_lock_index_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.knex_migrations_lock_index_seq', 1, true);
          public          postgres    false    218         Z           2606    16422 .   knex_migrations_lock knex_migrations_lock_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.knex_migrations_lock
    ADD CONSTRAINT knex_migrations_lock_pkey PRIMARY KEY (index);
 X   ALTER TABLE ONLY public.knex_migrations_lock DROP CONSTRAINT knex_migrations_lock_pkey;
       public            postgres    false    219         X           2606    16415 $   knex_migrations knex_migrations_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.knex_migrations
    ADD CONSTRAINT knex_migrations_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.knex_migrations DROP CONSTRAINT knex_migrations_pkey;
       public            postgres    false    217         ]           2606    16449    session session_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_pkey PRIMARY KEY (sid);
 >   ALTER TABLE ONLY public.session DROP CONSTRAINT session_pkey;
       public            postgres    false    222         [           1259    16450    IDX_session_expire    INDEX     J   CREATE INDEX "IDX_session_expire" ON public.session USING btree (expire);
 (   DROP INDEX public."IDX_session_expire";
       public            postgres    false    222                                                          3583.dat                                                                                            0000600 0004000 0002000 00000000015 14516712257 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        steffan
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   3584.dat                                                                                            0000600 0004000 0002000 00000000063 14516712257 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2023-10-27 07:30	ellis
2023-10-27 07:30	ellis
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                             3580.dat                                                                                            0000600 0004000 0002000 00000001140 14516712257 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        What group of people formed the priestly class in ancient Celtic society?	Druids	Gurkhas	Haruspices	Jesults	Druids
What type of flower is a symbol of remembrance for World War One?	Orchid	Poppy	Rose	Tulip	Poppy
Which monarch holds the record for the longest reign in British history?	Elizabeth II	Henry VIII	Victoria	\N	Elizabeth II
What physical description is often associated with Richard III?	Blackbearded	Gigantic	Hunchbacked	Toothless	Hunchbacked
What holiday did Parliamentary Puritans ban in 1647, replacing it with a day of fasting?	Christmas	Halloween	New Year's Day	Valentine's Day	Christmas
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                3570.dat                                                                                            0000600 0004000 0002000 00000000542 14516712257 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Earth or Mars	Earth	Mars	Earth
 The Old Testament or the New Testament, by length	Old Testament	New Testament	Old Testament
The heaviest human ever or the heaviest pumpkin ever	Human	Pumpkin	Pumpkin
 The annual budget of the French government or the annual revenue of Google.	France	Google	France
Africa or South America	Africa	South America	Africa
\.


                                                                                                                                                              3577.dat                                                                                            0000600 0004000 0002000 00000001067 14516712257 0014275 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Which of these places has the greatest population?	New Zealand	Belgium	texas	Hong Kong	Texas
What percent of the population of Turkey is registered as Muslim by the Turkish government?	50%	80%	99.8%	\N	99.8%
Which of these countries has the highest population density?	Netherlands	Papua New Guinea	Peru	\N	Netherland
As of March 2021, what is the approximate population of the world?	4.93 billion	7.85 billion	9.12 billion	\N	7.85 billion
Approximately what year is Nigeria projected to pass the United States in population?	It already has	2055	2300	Never	Never
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                         3574.dat                                                                                            0000600 0004000 0002000 00000000763 14516712257 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        What is the longest that an elephant has ever lived? (That we know of)	17 years	49 years	86 years	142 years	86 years
How many rings are on the Olympic flag?	None	4	5	7	5
What is a tarsier?	A bird	A lizard	A primate	\N	A primate
How did Spider-Man get his powers?	Bitten by a radio-active spider	Born with them	Military experiment gone wrong	Woke up with them after a long dream	Bitten by a radio-active spider
In darts, what's the most points you can score with a single throw?	20	50	60	100	60
\.


             3573.dat                                                                                            0000600 0004000 0002000 00000000737 14516712257 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Which of these countries has the largest population?	Brazil	Russia	Germany	Iran	Brazil
Which of these mountain ranges has the highest maximum elevation?	Andes	Alps	Rockies	Urals	Andes
Which of these rivers flows past the most countries?	Amazon	Euphrates	Mississippi	Danube	Danube
Which of these cities has the highest population?	San Francisco	Santiago	Singapore	Shanghai	Shanghai
Which of these islands has the largest area	Iceland	Cuba	Great Britain	Madagascar	Madagascar
\.


                                 3575.dat                                                                                            0000600 0004000 0002000 00000000747 14516712257 0014277 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Which of these U.S. states does NOT border Canada?	Alaska	Indiana	Maine	Minnesota	Indiana
Which of these countries was NOT a part of the Soviet Union?	Belarus	Georgia	Poland	Ukraine	Poland
Which of these cities is NOT a national capital?	Bangkok	Cairo	Prague	Sydney	Sydney
Which of these cities DOESN'T border the Mediterranean Sea?	Alexandria	Barcelona	Lisbon	Monaco	Lisbon
Which of these countries was NEVER part of the British Empire?	Ireland	Kenya	New Zealand	Thailand	Thailand
\.


                         3565.dat                                                                                            0000600 0004000 0002000 00000001127 14516712257 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Did the Germans ever capture Moscow	Yes	No	\N	\N	No
How did Hitler die?	Suicide	Shot by the Russians	Hanged after the trials of Nuremberg	No one knows	Suicide
Which of these countries did not fight in WWII?	Finland	Greece	Ireland	Italy	Ireland
What was the name of the American effort to build an atomic bomb?	The Baltimore Project	The chicago project	The Manhattan Project	The Philadelphia project	The Philadelphia project
About 70 million people died as a result of WWII. What percent of these people were from the United States?	0.6 percent	5.6 percent	15.6 percent	30.6 percent	0.6 percent
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                         3567.dat                                                                                            0000600 0004000 0002000 00000000673 14516712257 0014276 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        4	20231022170142_sizetable.js	1	2023-10-23 01:02:17.013+08
5	20231023114729_moretables.js	2	2023-10-23 19:54:04.615+08
6	20231023115546_createtables.js.js	3	2023-10-23 19:56:23.645+08
16	20231023115728_createmoretables.js	4	2023-10-23 21:09:41.987+08
19	20231024152846_studenttable.js	5	2023-10-24 23:32:40.709+08
20	20231024152827_admintable.js	6	2023-10-24 23:32:43.395+08
21	20231026080302_appointments.js	7	2023-10-26 16:04:18.188+08
\.


                                                                     3569.dat                                                                                            0000600 0004000 0002000 00000000011 14516712257 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	0
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       3576.dat                                                                                            0000600 0004000 0002000 00000000603 14516712257 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Number of countries in the world, according to JetPunk	47	94	196	\N	196
Players per team on the field in international football	7	9	11	13	11
Age at which Jimi Hendrix, Janis Joplin, Jim Morrison, and Amy Winehouse died	17	27	37	\N	27
Unlucky number in China	4	8	13	\N	4
Stars in the Milky Way	1000 - 4000	1 million - 4 million	100 billion - 400 billion	\N	100 billion - 400 billion
\.


                                                                                                                             3579.dat                                                                                            0000600 0004000 0002000 00000000773 14516712257 0014302 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        What is the smallest planet in the solar system?	Earth	Mars	Mercury	Venus	Mercury
What is the largest planet in the solar system?	Earth	Jupiter	Neptune	Saturn	Jupiter
Which planet is closest to the sun?	Jupiter	Mercury	Venus	Different planets at different times	Mercury
Which planet is furthest from the sun?	Neptune	Saturn	Uranus	Different planets at different times	Neptune
Which planet is closest to Earth?	Mars	Saturn	Venus	Different planets at different times	Different planets at different times
\.


     3581.dat                                                                                            0000600 0004000 0002000 00000000357 14516712257 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        british_history	5	history
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


                                                                                                                                                                                                                                                                                 3578.dat                                                                                            0000600 0004000 0002000 00000001266 14516712257 0014277 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Which of these planets is the largest?	Earth	Mars	Mercury	Venus	Earth
About what percent of the Earth's atmosphere is made up of Oxygen?	0.4%	21%	90%	\N	21%
What is the name of the current geological epoch, which began about 11,650 years ago?	Cretaceous	Holocene	Pleistocene	\N	Holocene
What has been the primary cause of the increase in the temperature of the Earth's atmosphere in recent decades?	Emission of carbon dioxide from the burning of fossil fuels	Increased brightness of the sun	Pertubations in the Earth's orbit	Volcanic activity	Volcanic activity
Which of these animals is most closely related to homo sapiens?	Humpback whale	Iguana	Monarch butterfly	Screech owl	Screech owl
\.


                                                                                                                                                                                                                                                                                                                                          3572.dat                                                                                            0000600 0004000 0002000 00000000754 14516712257 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        XXPpO7cmGYdtCzCbDECtBICbkulzznee	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"flash":{}}	2023-10-26 20:13:44
CR1xLx1m1tPGoD0iLr-Onxt88jwj7jA1	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":{"username":"steffan"}}}	2023-10-27 19:40:23
BuV2i08LSMjbvmT7KyHvjvnGzl_26okF	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":{"username":"steffan"}}}	2023-10-28 17:51:43
\.


                    3582.dat                                                                                            0000600 0004000 0002000 00000000015 14516712257 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        steffan
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   3571.dat                                                                                            0000600 0004000 0002000 00000000345 14516712257 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        admin	steffan	$2b$10$1m.RgNALWNjzWffoxuU1h.sLtu/Rcg7jEbEXnuJgJWXUVodVH6eJG
student	ellis	$2b$10$V5BQhoikVcNRBpeSCuBitel81ZCDXMT4F6M.5aCr8Dts0gMvtcZkC
student	user	$2b$10$NCwPoyCMT564CSr8hmS0..tTleVne6fj7i92UTSsL4QOkDFmab5k6
\.


                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000031677 14516712257 0015414 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
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

DROP DATABASE quiz;
--
-- Name: quiz; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE quiz WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE quiz OWNER TO postgres;

\connect quiz

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
-- Name: appointments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.appointments (
    "time" text,
    name text
);


ALTER TABLE public.appointments OWNER TO postgres;

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
\.
COPY public.admin (name) FROM '$$PATH$$/3583.dat';

--
-- Data for Name: appointments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.appointments ("time", name) FROM stdin;
\.
COPY public.appointments ("time", name) FROM '$$PATH$$/3584.dat';

--
-- Data for Name: british_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.british_history (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM stdin;
\.
COPY public.british_history (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM '$$PATH$$/3580.dat';

--
-- Data for Name: comparingsize; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comparingsize (question, choice_1, choice_2, correct_answer) FROM stdin;
\.
COPY public.comparingsize (question, choice_1, choice_2, correct_answer) FROM '$$PATH$$/3570.dat';

--
-- Data for Name: demographics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.demographics (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM stdin;
\.
COPY public.demographics (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM '$$PATH$$/3577.dat';

--
-- Data for Name: generalknowledge1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.generalknowledge1 (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM stdin;
\.
COPY public.generalknowledge1 (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM '$$PATH$$/3574.dat';

--
-- Data for Name: geography1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.geography1 (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM stdin;
\.
COPY public.geography1 (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM '$$PATH$$/3573.dat';

--
-- Data for Name: geography2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.geography2 (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM stdin;
\.
COPY public.geography2 (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM '$$PATH$$/3575.dat';

--
-- Data for Name: history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.history (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM stdin;
\.
COPY public.history (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM '$$PATH$$/3565.dat';

--
-- Data for Name: knex_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.knex_migrations (id, name, batch, migration_time) FROM stdin;
\.
COPY public.knex_migrations (id, name, batch, migration_time) FROM '$$PATH$$/3567.dat';

--
-- Data for Name: knex_migrations_lock; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.knex_migrations_lock (index, is_locked) FROM stdin;
\.
COPY public.knex_migrations_lock (index, is_locked) FROM '$$PATH$$/3569.dat';

--
-- Data for Name: numbers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.numbers (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM stdin;
\.
COPY public.numbers (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM '$$PATH$$/3576.dat';

--
-- Data for Name: planets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.planets (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM stdin;
\.
COPY public.planets (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM '$$PATH$$/3579.dat';

--
-- Data for Name: questionsets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.questionsets (setname, number_of_questions, topic) FROM stdin;
\.
COPY public.questionsets (setname, number_of_questions, topic) FROM '$$PATH$$/3581.dat';

--
-- Data for Name: science; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.science (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM stdin;
\.
COPY public.science (question, choice_1, choice_2, choice_3, choice_4, correct_answer) FROM '$$PATH$$/3578.dat';

--
-- Data for Name: session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.session (sid, sess, expire) FROM stdin;
\.
COPY public.session (sid, sess, expire) FROM '$$PATH$$/3572.dat';

--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student (name) FROM stdin;
\.
COPY public.student (name) FROM '$$PATH$$/3582.dat';

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (role, username, password) FROM stdin;
\.
COPY public.users (role, username, password) FROM '$$PATH$$/3571.dat';

--
-- Name: knex_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.knex_migrations_id_seq', 21, true);


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

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 