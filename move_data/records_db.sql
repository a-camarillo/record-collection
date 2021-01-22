--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 13.1 (Debian 13.1-1.pgdg100+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'LATIN1';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: artists; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.artists (
    artist_id integer NOT NULL,
    artist_name text,
    artist_uri text
);


ALTER TABLE public.artists OWNER TO pguser;

--
-- Name: artists_artist_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.artists_artist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artists_artist_id_seq OWNER TO pguser;

--
-- Name: artists_artist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.artists_artist_id_seq OWNED BY public.artists.artist_id;


--
-- Name: labels; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.labels (
    label_id integer NOT NULL,
    label_name text
);


ALTER TABLE public.labels OWNER TO pguser;

--
-- Name: labels_label_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.labels_label_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.labels_label_id_seq OWNER TO pguser;

--
-- Name: labels_label_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.labels_label_id_seq OWNED BY public.labels.label_id;


--
-- Name: records; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.records (
    record_id integer NOT NULL,
    record_title text,
    artist_id integer,
    total_tracks integer,
    year integer,
    label_id integer,
    record_uri text
);


ALTER TABLE public.records OWNER TO pguser;

--
-- Name: records_record_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.records_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.records_record_id_seq OWNER TO pguser;

--
-- Name: records_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.records_record_id_seq OWNED BY public.records.record_id;


--
-- Name: tracks; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.tracks (
    track_id integer NOT NULL,
    track_title text,
    record_id integer,
    duration_ms integer,
    track_number integer,
    track_uri text
);


ALTER TABLE public.tracks OWNER TO pguser;

--
-- Name: tracks_track_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.tracks_track_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tracks_track_id_seq OWNER TO pguser;

--
-- Name: tracks_track_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.tracks_track_id_seq OWNED BY public.tracks.track_id;


--
-- Name: artists artist_id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.artists ALTER COLUMN artist_id SET DEFAULT nextval('public.artists_artist_id_seq'::regclass);


--
-- Name: labels label_id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.labels ALTER COLUMN label_id SET DEFAULT nextval('public.labels_label_id_seq'::regclass);


--
-- Name: records record_id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.records ALTER COLUMN record_id SET DEFAULT nextval('public.records_record_id_seq'::regclass);


--
-- Name: tracks track_id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.tracks ALTER COLUMN track_id SET DEFAULT nextval('public.tracks_track_id_seq'::regclass);


--
-- Data for Name: artists; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.artists (artist_id, artist_name, artist_uri) FROM stdin;
1	Rebelution	spotify:artist:2WjvvwAX0mdWwq3aFuUdtc
7	Ms. Lauryn Hill	spotify:artist:2Mu5NfyYm8n5iTomuKAEHl
8	The Doors	spotify:artist:22WZ7M8sxp5THdruNY3gXt
9	Third World	spotify:artist:6qfKnsgz1CwyqA7lTdieRJ
10	Quicksilver Messenger Service	spotify:artist:7DCnwoFMqGN6eZULdcLZeL
13	Aretha Franklin	spotify:artist:7nwUJBm0HE4ZxD3f5cy5ok
14	Fleetwood Mac	spotify:artist:08GQAI4eElDnROBrJRGE0X
15	Santana	spotify:artist:6GI52t8N5F02MxU0g5U69P
16	Red Hot Chili Peppers	spotify:artist:0L8ExT028jH3ddEcZwqJJ5
17	Led Zeppelin	spotify:artist:36QJpDe2go2KgaRleHCDTp
18	The Avalanches	spotify:artist:3C8RpaI3Go0yFF9whvKoED
19	Al Green	spotify:artist:3dkbV4qihUeMsqN4vBGg93
20	The Gap Band	spotify:artist:4TwHRCIu3Xg9fjS3l7owkp
21	The Rolling Stones	spotify:artist:22bE4uQ6baNwSHPVcDxLCe
22	Kool & The Gang	spotify:artist:3VNITwohbvU5Wuy5PC6dsI
23	Commodores	spotify:artist:6twIAGnYuIT1pncMAsXnEm
24	Stray Cats	spotify:artist:2ibPkysx2PXqWLmxFD7jSg
25	Willie Henderson And The Soul Explosions	spotify:artist:0Wv3XjkXdPTv4kzRIenuRr
26	Chase	spotify:artist:3MZzBXBiCadVucO7AAdQUC
27	Mandrill	spotify:artist:6RWnslEkqboHbDg0OUabe5
28	Isaac Hayes	spotify:artist:3IKV7o6WPphDB7cCWXaG3E
29	Rare Earth	spotify:artist:6eEsIl4wosvhuWI0mfXxAF
30	John Mayall	spotify:artist:5s4z3mRAE7nxE3jjft8J3h
31	Captain & Tennille	spotify:artist:7BEfMxbaqx6dOpbtlEqScm
32	Patrice Rushen	spotify:artist:1mNnxxnPfHQDOkFjnZmdkc
33	Norman Connors	spotify:artist:54bbmw5qZiMf23TTmm6ojR
34	Heatwave	spotify:artist:6D7h7R79IZjqJC2GM2wzyY
35	Patti Austin	spotify:artist:0JxChc2w5fwTGbXKfc4cRd
36	George Duke	spotify:artist:3EB0uKE2lGw6BB1UFJrONl
37	Bill Cosby	spotify:artist:4JeqRr8Upw5uxLEu6jgIRm
38	Grand Funk Railroad	spotify:artist:0qEcf3SFlpRcb3lK3f2GZI
40	Taco	spotify:artist:6Dxf1ZaJBrpbumiqTTnlIH
41	Lionel Richie	spotify:artist:3gMaNLQm7D9MornNILzdSl
43	lighthouse	spotify:artist:2DVh4uQED1GHWuBAvj98Br
44	Chicago	spotify:artist:3iDD7bnsjL9J4fO298r0L0
45	Barry White	spotify:artist:3rfgbfpPSfXY40lzRK7Syt
46	The Detroit Emeralds	spotify:artist:51hRQLOySCpDBsBL6C03IZ
47	The Beatles	spotify:artist:3WrFJ7ztbogyGnTHbHJFl2
48	Al Di Meola	spotify:artist:3bBWKHfpepPOychRNFzg4q
49	Ohio Players	spotify:artist:6m30rs1IQqnWqV5nKMpU7U
50	Roberta Flack & Donny Hathaway	spotify:artist:4SMAMPGnHmiXnIjEtwb2Qt
51	Neil Young	spotify:artist:6v8FB84lnmJs434UJf2Mrm
52	Ray Charles	spotify:artist:1eYhYunlNJlDoQhtYBvPsi
53	The Gibson Brothers	spotify:artist:0pRXhFeDRaYQgCp0lj2X9r
54	Al Stewart	spotify:artist:0DW7boyjvbaSP3OJ72sXgC
55	Eagles	spotify:artist:0ECwFtbIWEVNwjlrfc6xoL
56	Bobby Sherman	spotify:artist:5Rsz3E1aovbqsmLQOxgK2y
57	Rufus & Chaka Khan	spotify:artist:1YLsqPcFg1rj7VvhfwnDWm
58	Aalon	spotify:artist:4RZ2pQ8xYiXmL3qb4vefDx
59	Jethro Tull	spotify:artist:6w6z8m4WXX7Tub4Rb6Lu7R
60	Michael Jackson	spotify:artist:3fMbdgg4jU18AjLCKBhRSm
61	Vanilla Fudge	spotify:artist:0vIMq3W8V63uR4Ymgm2pF1
62	Love	spotify:artist:3Q6OOkfssqoMSTtl11J5Uk
63	Gábor Szabó	spotify:artist:38CPjAAqYV8lTYi6clzbjG
64	Van Morrison	spotify:artist:44NX2ffIYHr6D4n7RaZF7A
66	Eloise Laws	spotify:artist:4RJjnfYCmudnzG5AyMVnte
67	Slave	spotify:artist:5mtKpqeeaFavW15yIX4h5e
68	Leon Russell	spotify:artist:6r1Xmz7YUD4z0VRUoGm8XN
69	Carole King	spotify:artist:319yZVtYM9MBGqmSQnMyY6
70	Dr. Lonnie Smith	spotify:artist:1ZpPJRe9erwiWi548SKVyn
71	Héctor Lavoe	spotify:artist:7opp16lU7VM3l2WBdGMYHP
73	Donna Summer	spotify:artist:2eogQKWWoohI3BSnoG7E2U
74	Albert King	spotify:artist:5aygfDCEaX5KTZOxSCpT9o
75	Emerson, Lake & Palmer	spotify:artist:0nCiidE5GgDrc5kWN3NZgZ
76	Allman Brothers Band	spotify:artist:4wQ3PyMz3WwJGI5uEqHUVR
77	Lakeside	spotify:artist:74lTWE4DqbFU3Vn8z4uH72
78	Steely Dan	spotify:artist:6P7H3ai06vU1sGvdpBwDmE
79	Rose Royce	spotify:artist:1OxJzMLmR9l5zPLap9OxuO
80	Jimmy Reed	spotify:artist:41ZMMuFFLPTVPkUsSI5KlV
82	War	spotify:artist:3ICyfoySNDZqtBVmaBT84I
83	Yusuf / Cat Stevens	spotify:artist:08F3Y3SctIlsOEmKd6dnH8
84	Donny Osmond	spotify:artist:5ZEAzHE2TzAwUcOj6jMIgf
86	Evelyn "Champagne" King	spotify:artist:4JCt4xrbbBB9blkKwNlcJ7
87	Curtis Mayfield	spotify:artist:2AV6XDIs32ofIJhkkDevjm
88	The Pattons	spotify:artist:2j8PVOurBYjTHa1udFV8ng
89	Tito Puente	spotify:artist:6SPpCqM8gOzrtICAxN5NuX
90	GQ	spotify:artist:3kefj9iDPpS1kQtzFSSfvb
91	The Sylvers	spotify:artist:0efkWb9xKhT6H0E7kgSjFK
92	Eddie Harris	spotify:artist:0bcDOCWIbvWApEIB7l1uZ4
93	John Handy Quintet	spotify:artist:1b6VBX54uaLZ1OVeXBNlPq
94	The B-52's	spotify:artist:3gdbcIdNypBsYNu3iiCjtN
95	Cerrone	spotify:artist:5SE2sfwTpxL2vXRdG6H5PM
96	The Isley Brothers	spotify:artist:53QzNeFpzAaXYnrDBbDrIp
97	Boz Scaggs	spotify:artist:46njgd2Rq9tZc4ZjeQMgbh
98	Donny Hathaway	spotify:artist:0HU0U9kdXEHZVxUNbuQe8S
99	Stephen Stills	spotify:artist:4WlSvDKaq1PA2Nr7cCIPxX
100	Crosby, Stills, Nash & Young	spotify:artist:1CYsQCypByMVgnv17qsSbQ
101	Yusef Lateef	spotify:artist:33XkS6h90eeK7e6OJHw0mq
103	Norman Connors and The Starship Orchestra	spotify:artist:5Ks3hDMH0o099tTEV5LVyx
104	Village People	spotify:artist:0dCKce6tJJdHvlWnDMwzPW
105	Rubicon	spotify:artist:4k3iS4bsVsTi9dIq2ybtWK
107	ZZ Top	spotify:artist:2AM4ilv6UzW0uMRuqKtDgN
108	Phil Collins	spotify:artist:4lxfqrEsLX6N1N4OCSkILp
110	Eydie Gormé	spotify:artist:6HnHBbeScFiQKXt3sUQA3Z
111	Vicki Sue Robinson	spotify:artist:25pwh5JrKHzLv2FTPSvoqa
112	Sly & The Family Stone	spotify:artist:5m8H6zSadhu1j9Yi04VLqD
113	Jefferson Airplane	spotify:artist:2qFr8w5sWUITRlzZ9kZotF
114	Buddy Miles	spotify:artist:2E9nO9Zav9FjjlFVVtMWdw
115	Dynasty	spotify:artist:3S2xC9uaQjpfuXxp7SyKzD
116	Traffic	spotify:artist:1CD77o9fbdyQFrHnUPUEsF
117	Graham Nash	spotify:artist:2E6Roj0oQnJIm2BeXwDica
118	James Taylor	spotify:artist:0vn7UBvSQECKJm2817Yf1P
119	Cheryl Lynn	spotify:artist:6UfoTQXaV3DuqtDVjZIxwZ
120	Joe Cocker	spotify:artist:3pFCERyEiP5xeN2EsPXhjI
121	Bill Withers	spotify:artist:1ThoqLcyIYvZn7iWbj8fsj
122	Jimmy Smith	spotify:artist:5GXruybcLmXPjR9rKKFyS6
124	Ben E. King	spotify:artist:3plJVWt88EqjvtuB4ZDRV3
125	Joe Houston	spotify:artist:7FX6rdAqcY6iHyTEpCvcHu
126	The Whispers	spotify:artist:2XzHxDFTNywDd5ReMhgxkg
127	Betty Wright	spotify:artist:0PDqlUGugF5Jt6DZyATvfz
128	Def Leppard	spotify:artist:6H1RjVyNruCmrBEWRbD0VZ
129	Stevie Wonder	spotify:artist:7guDJrEfX3qb6FEbdPA5qi
130	Willie Bobo	spotify:artist:74Dnr5flGLfLeyV85l0NUr
131	The J. Geils Band	spotify:artist:69Mj3u4FTUrpyeGNSIaU6F
132	John Lennon	spotify:artist:4x1nvY2FN8jxqAFA0DA02H
134	Blood, Sweat & Tears	spotify:artist:24GaH9tRBgZjlvOhpFuKi2
135	Little River Band	spotify:artist:6clbbhnIqpHnqxwtOWcilg
136	The Spinners	spotify:artist:5fbhwqYYh4YwUoEs582mq5
137	Dr. John	spotify:artist:320TrJub4arztwXRm7kqVO
138	Dolly Parton	spotify:artist:32vWCbZh0xZ4o9gkz4PsEU
140	Malo	spotify:artist:2vmTJisPQCD5ThbxbFehAB
141	Gato Barbieri	spotify:artist:7dXBi98p0mN5JCpBnU0XEm
142	Roy Ayers	spotify:artist:6R9Mv0bgGE4Tqxna1q5Mrj
143	Rick James	spotify:artist:0FrpdcVlJQqibaz5HfBUrL
145	El Chicano	spotify:artist:3vkhZMoCdp5lBgrk9l2nCL
146	The O'Jays	spotify:artist:38h03gA85YYPeDPd9ER9rT
147	Kenny Rogers	spotify:artist:4tw2Lmn9tTPUv7Gy7mVPI4
148	Mongo Santamaria	spotify:artist:2oVwztjpHpJlAvlVVuqVa0
149	Brass Construction	spotify:artist:5jWuVnPLmjABrgCGianzs9
150	Vicente Fernández	spotify:artist:4PPoI9LuYeFX8V674Z1R6l
151	Ashford & Simpson	spotify:artist:2EURsXo9qlt1aMWlviGCRi
152	James Brown	spotify:artist:7GaxyUddsPok8BuhxN6OUW
153	Maze	spotify:artist:3DvdryKH4O95ZnsUZJKXpt
155	Mary Jane Girls	spotify:artist:7vRMMs8yrKf4PKUpUllMkr
156	George Benson	spotify:artist:4N8BwYTEC6XqykGvXXlmfv
157	Mark-Almond	spotify:artist:2maMYZSaIPKyRRq5nXuXCN
158	Sade	spotify:artist:47zz7sob9NUcODy0BTDvKx
159	B.B. King	spotify:artist:5xLSa7l4IV1gsQfhAMvl0U
160	DEVO	spotify:artist:0UKfenbZb15sqhfPC6zbt3
161	Fat Boys	spotify:artist:3537Phr9t8GWkY2GtxDpnt
162	Midnight Star	spotify:artist:0KMLfCXYb3Dhf1hLpu8cVd
163	Fania All Stars	spotify:artist:1OdyhpUABf8avaZ9r8nI1u
164	CHIC	spotify:artist:0Xf8oDAJYd2D0k3NLI19OV
166	Anthrax	spotify:artist:3JysSUOyfVs1UQ0UaESheP
167	Eric Burdon	spotify:artist:3miNucraVWk4hdVsIxn7id
168	The Rascals	spotify:artist:5g2n2H9ndqvejERtwZ1rHh
170	Siouxsie and the Banshees	spotify:artist:1n65zfwYIj5kKEtNgxUlWb
171	Junkyard	spotify:artist:102IW5khntjPJsSvbFI7eF
172	Marvin Gaye	spotify:artist:3koiLjNrgRTNbOwViDipeA
173	Gary Wright	spotify:artist:3z6Uf5IZkN4TogRpRpgD84
174	John Williams	spotify:artist:3dRfiJ2650SZu6GbydcHNb
176	Humble Pie	spotify:artist:2CxLP749mup3ncPrXgCnvU
349	Cheap Trick	spotify:artist:1LB8qB5BPb3MHQrfkvifXU
350	Iron Butterfly	spotify:artist:3cdvlbCYf4WoBdy89RWkNS
351	Don Ellis	spotify:artist:6sPeUcMcOc2n0M7m1qHAer
352	Peter Frampton	spotify:artist:0543y7yrvny4KymoaneT4W
353	Run D.M.C.	spotify:artist:3CQIn7N5CuRDP8wEI7FiDA
354	Shalamar	spotify:artist:3REpOYo13YkVj1dFzda12A
355	Jeffrey Osborne	spotify:artist:5qUHCOUsvVKUpVrMMmztMK
356	The Watts 103rd St. Rhythm Band	spotify:artist:1UQti9y3uaL3Uusyg6CI9i
359	Carlos Santana	spotify:artist:7yGQgQiiKpg2k00JXf8hJk
360	A Taste Of Honey	spotify:artist:1ii6e2pv8VIRwnTER71rMl
361	Grover Washington, Jr.	spotify:artist:05YVYeV4HxYp5rrWalvuE1
362	Blind Faith	spotify:artist:5GUVj2b1lJ4DolQyHlzyaO
363	Dean Martin	spotify:artist:49e4v89VmlDcFCMyDv9wQ9
364	Quincy Jones	spotify:artist:3rxIQc9kWT6Ueg4BhnOwRK
365	Horace Silver	spotify:artist:5ZATfKurLqflrBhv2FLht5
366	Earth, Wind & Fire	spotify:artist:4QQgXkCYTt3BlENzhyNETg
368	Carly Simon	spotify:artist:4FtSnMlCVxCswABUmdhwpm
370	Love and Rockets	spotify:artist:09mvgMBvJkxarNIDGdwPWg
371	Whodini	spotify:artist:4dBOV77d0Fy9KcTZkieXcu
372	Madness	spotify:artist:4AYkFtEBnNnGuoo8HaHErd
376	Gladys Knight & The Pips	spotify:artist:0TF2NxkJZPQoX1H53rEFM1
\.


--
-- Data for Name: labels; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.labels (label_id, label_name) FROM stdin;
1	87 Music
7	Ruffhouse/Columbia
8	Rhino/Elektra
9	Island Records
10	Capitol Records
13	Rhino Atlantic
14	Warner Records
15	Columbia/Legacy
18	Universal Music Australia Pty. Ltd.
19	Fat Possum
20	Mercury Records
21	Polydor Records
22	Island Def Jam
23	Motown
24	EMI/EMI Records (USA)
25	Brunswick Records
26	Legacy Recordings
27	Polydor
28	Stax
29	UNI/MOTOWN
30	UMC (Universal Music Catalogue)
31	A&M
32	Strut
34	Epic
37	Rhino/Warner Records
40	Peer Southern Productions
43	Anthem Legacy
44	Rhino
45	Universal/Island Def Jam
46	Ace Records
47	EMI Catalogue
51	Reprise
53	Zagora
56	K-Tel
57	Geffen*
58	Arista/Legacy
59	Parlophone UK
63	Verve Reissues
66	Avenue Records
68	The Right Stuff
70	Masterworks Jazz
71	Fania
75	BMG Rights Management (UK) Ltd.
77	UNIDISC MUSIC INC.
80	Audio Fidelity
83	Universal Music Group International
84	Universal Records
86	RCA/Legacy
88	Tropical Unicorn Records - 1002
90	GQ
91	Mr Bongo
93	Sony Special Products
95	Malligator Préférence
96	Epic/Legacy
99	Columbia
100	Atlantic Records
105	Rdeg
116	Universal-Island Records Ltd.
125	Brownbeats Records
126	Unidisc
141	A&M JAZZ
145	Geffen
147	Capitol Nashville
149	CAPITOL CATALOG MKT (C92)
150	Sony Music Entertainment
155	Budget (MT)
158	Sony Music CG
161	Tin Pan Apple
174	Decca Music Group Ltd.
353	Arista
359	Legacy/Columbia
365	EMI MUSIC JAPAN INC.
367	Blue Note Records
370	Beggars Banquet
371	Sony Music UK
\.


--
-- Data for Name: records; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.records (record_id, record_title, artist_id, total_tracks, year, label_id, record_uri) FROM stdin;
1	Courage to Grow	1	12	2007	1	spotify:album:581TFVtaXAO5GeU5Ry324y
7	The Miseducation of Lauryn Hill	7	16	1998	7	spotify:album:1BZoqf8Zje5nGdwZhOjAtD
8	Strange Days	8	10	1967	8	spotify:album:6v5IVMmY1IvWtbfnQoiFSf
9	Journey To Addis	9	8	1978	9	spotify:album:6iitCyUiVGThiwhveK0I6E
10	Just For Love	10	9	1970	10	spotify:album:0jebR4BSBCxMAXezJcDC1m
11	What About Me	10	10	1970	10	spotify:album:2rsN4oAkX8UBTSPr9BRpuK
12	The Doors	8	11	1967	8	spotify:album:1jWmEhn3ggaL6isoyLfwBn
13	Young, Gifted and Black	13	12	1972	13	spotify:album:0k5C3Z7w7uQpyGFQEzl7yB
14	Fleetwood Mac	14	11	1975	14	spotify:album:5VIQ3VaAoRKOEpJ0fewdvo
15	Abraxas	15	9	1970	15	spotify:album:1CHUXwuge9A7L2KiA3vnR6
16	Californication (Deluxe Edition)	16	18	1999	14	spotify:album:2Y9IRtehByVkegoD7TcLfi
17	Led Zeppelin IV	17	8	1971	13	spotify:album:1Ugdi2OTxKopVVqsprp5pb
18	Since I Left You	18	18	2000	18	spotify:album:3GBnNRYsxBfEeMSMmTpJ25
19	Gets Next to You	19	10	1971	19	spotify:album:6A2T77SSF5TUglshWSQAiC
20	Gap Band V - Jammin' (Expanded Edition)	20	17	1983	20	spotify:album:3E6AUc5IEz4eNsigP61EQV
21	Tattoo You (2009 Re-Mastered)	21	11	1981	21	spotify:album:15XNBzVWARPMlu0sEbfBjJ
22	Ladies' Night	22	6	1979	22	spotify:album:0zK7P6PLhBU02U9Tc98VSK
23	Commodores	23	9	1977	23	spotify:album:2tzbNCAUTmW4MIM2Ulvrwl
24	Built For Speed	24	12	1982	24	spotify:album:65PptxxbOFNvpAK9oBeVV1
25	Funky Chicken	25	11	1970	25	spotify:album:1tSadTu3v9RgIC6gSJwjfL
26	Chase	26	7	1971	26	spotify:album:6PQmF84P2jOaqKLAeZj1yO
27	Mandrill	27	10	1970	27	spotify:album:4bD8UUx1VGPsWbSAtfEWgX
28	Shaft (Deluxe Edition)	28	16	1971	28	spotify:album:5HAXYSqdNjjbvoFrXwtrBw
29	Get Ready	29	6	1969	29	spotify:album:1u4inTVbO6QnP8xmBXj8HV
30	The Turning Point	30	10	1969	30	spotify:album:34v3S47RZaaG3Sg1Y6Ma9Y
31	Song Of Joy	31	11	1976	31	spotify:album:2LyvhqPwqD0fxMAaZLVZ43
32	Pizzazz	32	8	1979	32	spotify:album:3PgLKHkINPRRRA76eT6QJY
33	Invitation (Expanded)	33	11	2014	26	spotify:album:1SWfHL6kbNpwYqOJ8om8aX
34	Too Hot To Handle	34	9	1976	34	spotify:album:3OjfTt27HmGpVd45IuMAT6
35	Body Language	35	10	1980	34	spotify:album:3IyHk2GoKKFxlxuyIbL2nO
36	Master of the Game (Expanded Edition)	36	11	1979	34	spotify:album:6H0jM12J3OL8uPFHQEJESX
37	The Best Of Bill Cosby	37	12	1969	37	spotify:album:4580pvPQI69NWHwTewabDm
38	Closer To Home (Remastered)	38	12	1970	10	spotify:album:3Ah9Sg04kPeBdGfFz5UIy2
39	Survival (Remastered 2002 / Expanded Edition)	38	12	2002	10	spotify:album:00Zqw26JKfBotMSXnBiAVC
40	Puttin' on the Ritz	40	3	1982	40	spotify:album:2nQgbJROHKexGSdcL8ezy0
41	Lionel Richie	41	11	1982	29	spotify:album:5R8J87WpdqO4t4pB4F4LNJ
42	Black Moses	28	14	2016	28	spotify:album:0zYfUaLDEeWVYkohFTVLmd
43	One Fine Morning	43	10	1971	43	spotify:album:792ecuAu0yqw6GMYRKdXpL
44	Chicago VII (Expanded & Remastered)	44	16	1974	44	spotify:album:4O8dmYS0wfxvY56LJdp280
45	Barry White's Greatest Hits	45	10	1975	45	spotify:album:6N6jG28QRHnZ7Cd2ihsmmO
46	I'm in Love With You / Feel the Need in Me	46	15	2014	46	spotify:album:1t1VVFhq7HXZIJeO8PxLQ8
47	Sgt. Pepper's Lonely Hearts Club Band (Remastered)	47	13	1967	47	spotify:album:6QaVfG1pHYl1z15ZxkvVDW
48	Casino	48	6	1978	26	spotify:album:2n8DcbmSTtN7Gda05GXQqe
49	Skin Tight	49	6	1974	20	spotify:album:4Oc8uPfUH5RIdcMpDjZY1Q
50	Roberta Flack & Donny Hathaway	50	10	1972	13	spotify:album:3t3Ql46lQfRm2Co3SFXkrp
51	Everybody Knows This Is Nowhere	51	7	1969	51	spotify:album:70Yl2w1p00whfnC7fj94ox
52	Ray Charles In Person	52	7	2005	13	spotify:album:3KcP7U9J48T2R3zQTteY0C
53	Cuba	53	6	2011	53	spotify:album:25vmAewZSAbF7zDfuPSQBn
54	Year of the Cat	54	12	1991	44	spotify:album:2qRVGjXrKt3rg5MsunltX9
55	Hotel California (2013 Remaster)	55	9	1976	8	spotify:album:2widuo17g5CEC66IbzveRu
56	Getting Together	56	12	1995	56	spotify:album:64tXQ6AJUraNGa0LCAfbkN
57	Rufusized	57	10	1974	57	spotify:album:603zOEkZnV5xw6DbXqAI12
58	Cream City	58	8	1977	58	spotify:album:4hyygz4gIbIeBJq9BsG964
59	War Child (2002 Remaster)	59	17	1974	59	spotify:album:3at9gYnaLCS2XvM0e6xd4y
60	Thriller	60	9	1982	34	spotify:album:2ANVost0y2y52ema1E9xAZ
61	Vanilla Fudge	61	7	1967	8	spotify:album:4rvXyAx9phjxiU4cQS1AJh
62	Da Capo	62	7	1966	8	spotify:album:47inaDdXEosHHrQc2nT7aK
63	Nightflight	63	7	1976	63	spotify:album:1bfMUEXAF0cTEh75jdVB7k
64	Moondance	64	10	1970	14	spotify:album:5PfnCqRbdfIDMb1x3MPQam
65	Something Special	22	9	1981	22	spotify:album:1kNUVRC3LbnhjrBruBwvUN
66	Eloise	66	9	1977	66	spotify:album:3TKvFAXrxPPUKfZ90BxGAi
67	Just A Touch Of Love	67	8	1979	13	spotify:album:1KGJvJwBNbDpMW29QdW7qg
68	Leon Russell	68	12	1970	68	spotify:album:2Lm0Ezvry1UO3kehAAVDha
69	Writer	69	12	1970	34	spotify:album:6sy9uYbSfuhH1HCv2e6269
70	Mama Wailer (CTI Records 40th Anniversary Edition)	70	4	1971	70	spotify:album:4ue5vttkVMxm3T2zpAgafa
71	Cosa Nuestra	71	8	1968	71	spotify:album:2ta1doHAXdTOtLLoc02fZf
72	Chicago II	44	25	1970	44	spotify:album:0PRgsdDXQ8QPaDUetVF7yN
73	Four Seasons Of Love (Reissue)	73	5	1976	20	spotify:album:7K5qRyPS0glYiCzgqJdEjt
74	Live Wire/Blues Power	74	6	1968	28	spotify:album:4XiOamak5GIoK9IxSexS7Z
75	Tarkus	75	7	1971	75	spotify:album:3OtFsLLaUZWN6AyeBIzNCj
76	At Fillmore East	76	7	1971	22	spotify:album:0Y5Wlv2OJKaW0uDJ5HnUfy
77	Fantastic Voyage	77	8	1980	77	spotify:album:4bRmuhsGOdor3O2Ry38A9q
78	Aja	78	7	1977	57	spotify:album:51XjnQQ9SR8VSEpxPO9vrW
79	Car Wash	79	19	1976	57	spotify:album:1lUemDpotxT7p1aCGSvWDz
80	Jimmy Reed at Carnegie Hall	80	10	2004	80	spotify:album:4EqgUz5G7KTGDhJ9gG71ny
81	Chicago Transit Authority (50th Anniversary Remix)	44	12	1969	44	spotify:album:6D8HdQA7GXRUj3jFFraDGD
82	Platinum Jazz	82	12	1977	66	spotify:album:1WdNLr4DXpsN9BDL7iqUMK
83	Teaser and the Firecat	83	20	1971	83	spotify:album:6HjN95BNdPgvttct0RdmUA
84	To You With Love, Donny	84	10	1971	84	spotify:album:5tJ017TTNhv4VTe39P2e4e
85	His Band and the Street Choir	64	12	1970	37	spotify:album:3YdFToTF5Mr2HLx7zRUIQA
86	Smooth Talk (Expanded Edition)	86	12	1977	86	spotify:album:36L8r12QGHalhbtn6wdtSa
87	Superfly	87	9	1972	44	spotify:album:295ykF5lEp4sZseuob1qTu
88	Homesteading	88	12	1973	88	spotify:album:3ZXxEaGyB5qu4zgH8tz6mp
89	Pa' Lante / Straight	89	10	1970	71	spotify:album:0Muu1CfaVWUcyTwgRQHI15
90	Two	90	9	2011	90	spotify:album:2qfQRoXlcGkkexMvqTQjcd
91	The Sylvers	91	10	1972	91	spotify:album:2dzGa0lxl4kehLx388Nf8t
92	The Electrifying Eddie Harris	92	6	1999	13	spotify:album:5uzAo3rQNi1PJUZQMbMDQN
93	New View!	93	3	1967	93	spotify:album:5YuzzmRkqgrVBs2ZFRKtPB
94	The B-52's	94	9	1979	51	spotify:album:3eXETk1esvZPRluDCWH3GN
95	III - Supernature	95	6	1977	95	spotify:album:32apoWgzplX4qKdC9PgjYR
96	Showdown	96	13	1978	96	spotify:album:0OjhMNDKYZMioHpVYRWLNz
97	Silk Degrees	97	13	1976	15	spotify:album:7DysI4j6UqK00RTfETKXqs
98	Everything Is Everything	98	10	1970	13	spotify:album:7k89fD1BB2xQCibsPtSYyh
99	Illegal Stills	99	10	1976	99	spotify:album:6ORFpZF8HGZ63FXKFreU4B
100	4 Way Street	100	21	1971	100	spotify:album:0T0iwwI0nHiFcF0HDW59UO
101	The Gentle Giant	101	8	1972	13	spotify:album:6o8ySihO7d7MAmhX4NvmLR
102	Your Wish Is My Command	77	11	1981	77	spotify:album:7oUPgnLGmhvkGxTlOS9WaQ
103	This Is Your Life	103	10	1977	58	spotify:album:1GyTKftnmdHIXvjQXFEnxO
104	Cruisin'	104	6	1978	20	spotify:album:3kdp1PnxkKlshMP3qG2CUG
105	Rubicon	105	9	1978	105	spotify:album:2Be7RJy9EY4tQhkpfwanLF
106	Santana	15	9	1969	15	spotify:album:0hfFLQzo3OwgYFFFvTQYhT
107	Fandango! (Expanded 2006 Remaster)	107	12	1975	37	spotify:album:4krv5xmTGdK9LhWINUkVgO
108	Hello, I Must Be Going (2016 Remaster)	108	10	1982	44	spotify:album:3aeLqENnhYFdDuK9d3yHrv
109	Portrait Of Donny	84	11	1972	84	spotify:album:6quP8dKzcKp5JON8hWKkeD
110	Canta En Español Con Los Panchos	110	12	1964	99	spotify:album:09bB3v1b09ROK8YZkRd87w
111	Vicki Sue Robinson (Expanded Edition)	111	10	1976	86	spotify:album:1z8epOjfiOcJId6tVBrk6O
112	Greatest Hits	112	12	1970	96	spotify:album:0UM9SydcBtsklCTFgGLvcT
113	Bark (Bonus Tracks)	113	13	1971	86	spotify:album:2EfxMn257hfbgbbAaGdQ8t
114	Them Changes	114	8	1970	83	spotify:album:6Kr0V00FNt8Xn3Dk3opAVb
115	Adventures in the Land of Music	115	9	1980	77	spotify:album:7soN64t2qWYk1Bu9BYDI7c
116	The Best Of Traffic	116	11	1969	116	spotify:album:6rYEvBuPA1pmc2Q6GE84DM
117	Songs For Beginners	117	11	1971	13	spotify:album:3Lh1KbeS801PtOeojquUPk
118	Mud Slide Slim and the Blue Horizon (2019 Remaster)	118	13	1971	37	spotify:album:3ahHxtwRwMIdHcAo0MEXxX
119	Cheryl Lynn (Expanded Edition)	119	11	1978	26	spotify:album:059jmsqbxhu2n78LMS0H3P
120	With A Little Help From My Friends	120	12	1969	31	spotify:album:74sIm8QdXqFwYeDS7OfYVw
121	Menagerie	121	9	1977	15	spotify:album:3QjPTUI6UcPr5m9RujkO3c
122	Respect	122	5	1967	63	spotify:album:2NFXkfCoZhHD6b23CerA7f
123	All Day Music	82	7	1972	66	spotify:album:1XHgFYxf1sZeBGfgbJB3ai
124	Supernatural Thing	124	10	2005	13	spotify:album:69MJXfjEtAf2xpyNe4KIfD
125	Surf Rockin'	125	10	2011	125	spotify:album:0eN3igpusFZ18TKoX9AVB8
126	Love for Love	126	9	1983	126	spotify:album:1o1QIPcHjUEqzAtVWubyZN
127	Betty Wright Live	127	6	1978	44	spotify:album:1jssvEYMHpe5sR0PwRhUTu
128	Pyromania (Deluxe)	128	25	1983	30	spotify:album:3MJoDIkQxY0MTXE8fqzmPu
129	The 12 Year Old Genius - Recorded Live	129	7	1963	23	spotify:album:301mSh9KqO3WWCiPP3beZ1
130	Hell Of An Act To Follow	130	8	1978	26	spotify:album:7EEeK9GUnNVGmGokokSvjH
131	The J. Geils Band	131	11	1970	100	spotify:album:2ulfWDj479yEuGbvVh0Fvz
132	Imagine	132	10	1971	47	spotify:album:0xzaemKucrJpYhyl7TltAk
133	Fantasy	69	13	1973	34	spotify:album:04C5gSGZHzAlVsngSkqFtZ
134	Blood, Sweat & Tears (Expanded Edition)	134	12	1968	15	spotify:album:7qFad1a6Q3kUJ1oAz6fT9m
135	Time Exposure (Remastered)	135	12	1981	10	spotify:album:76BubGTTioRfDDSyzPpnVM
136	Spinners	136	10	1973	13	spotify:album:6QVemXFGMR4OLvlXvtQVjg
137	In The Right Place	137	11	1973	8	spotify:album:1b1ljTXAkcugOLAHkIi7Eq
138	Here You Come Again	138	10	1977	86	spotify:album:64yIGFoYJVg66fRXIxIYJr
139	It's Our Thing	96	19	1969	96	spotify:album:2tMcirhdFUp4hS2eJwsHvF
140	Malo	140	6	1972	14	spotify:album:0idohj8jELOTtI3sUdGWUo
141	Tropico	141	7	1989	141	spotify:album:5TsZomOvqNVL2nLiWcfBjJ
142	Vibrations	142	11	1976	63	spotify:album:44FVaRWkEXn4DaDv9fD23z
143	Street Songs	143	10	1981	29	spotify:album:4tLH19xspKRioBIxUqfiPx
144	Santana (III)	15	9	1971	15	spotify:album:3iE6Jik24CBE0uv1lyyplI
145	Revolución	145	10	1971	145	spotify:album:3F8b7LBhlewYqU1MQrKTus
146	Identify Yourself	146	8	1979	26	spotify:album:1R14S4kaq7WEkkRewJyPfd
147	The Gambler	147	11	1978	147	spotify:album:3XdvQjIMjdwxRivZrg1ziJ
148	Mongo's Way	148	10	2005	13	spotify:album:3Yl7Qlu3oljtWxGXFYWYRU
149	Brass Construction II	149	8	1976	149	spotify:album:0c8782gtKBLYzPls3Wtat6
150	Ni En Defensa Propia	150	11	1967	150	spotify:album:5MjQ6gStH8eWochAk1NbAr
151	Stay Free	151	7	1979	37	spotify:album:0deJgBEQc6s9ljcW2My2uV
152	Get On The Good Foot	152	14	1972	84	spotify:album:49ibE9W9vxZBPBV7wtZKFi
153	Live In New Orleans	153	13	1981	24	spotify:album:22A6N52pYOMO0a7SV5aGcz
154	Ship Ahoy (Expanded Edition)	146	9	1973	96	spotify:album:0prtrB4HNL9tiEeAv57Bz8
155	Mary Jane Girls	155	8	1983	155	spotify:album:1CHUsg2g2nY9Qi35DiMOM6
156	Bad Benson	156	9	1974	96	spotify:album:4eMzBRipkToMt5xYEbFrsE
157	Mark-Almond (Bonus Track Edition)	157	7	1971	63	spotify:album:78DJUutDWgf82rtSfKo3hF
158	Diamond Life	158	9	1984	158	spotify:album:3JcNnjMVSKiNpqhErZarW0
159	Live In Cook County Jail	159	8	1971	57	spotify:album:3mCS3cMduOlki845XA4gDZ
160	Freedom Of Choice	160	12	1980	14	spotify:album:6UsP4NQ9K4L4Nqxj0Qis41
161	Crushin'	161	10	1987	161	spotify:album:1oV5NdneU8g6spOiDFtbUB
162	No Parking on the Dance Floor	162	13	1983	77	spotify:album:67v1yz3SGvFEnQeTO8H6jP
163	Live At The Cheetah, Vol. 1	163	4	1971	71	spotify:album:1XfrZU7zjQT9obvRbk1x0e
164	Chic (2018 Remaster)	164	7	1977	13	spotify:album:388S3dsftPqG1nwgauItcx
165	Deja Vu	100	10	1970	13	spotify:album:5bHkK1X4WEOzNvRhehvOcb
166	Among The Living	166	9	1987	9	spotify:album:4Y2jEzU70sLpTCMCl6JE0t
167	Eric Burdon Declares War	167	5	1970	66	spotify:album:3pk9jPRbqSTAvGWRtkVbcq
168	Time Peace: The Rascals' Greatest Hits	168	14	1990	13	spotify:album:6S6RXg18OaPgkuhO7brqkf
169	A Love Trilogy	73	5	1976	20	spotify:album:1PvqIQwJDmGRElkPMQtbTr
170	Through The Looking Glass (Remastered And Expanded)	170	14	1987	30	spotify:album:7kEqVGkLoruahp34YW16oe
171	Junkyard	171	10	1989	145	spotify:album:6q5z97YwTgxlxu4aMFDZyT
172	I Want You	172	11	1976	23	spotify:album:0EM4Q0JUVZ8FNqmT5CI2E7
173	The Right Place	173	10	1981	44	spotify:album:6LI9WwNLFhfWWPj4PfTZPv
174	Jaws	174	20	2000	174	spotify:album:6qUytVWmtw4xh2tjCv39GE
175	Mad Dogs & Englishmen (Deluxe Edition)	120	26	1970	31	spotify:album:7kXPAQK9SXrGuvvfjjsEjN
346	Performance: Rockin The Filmore	176	7	1971	31	spotify:album:296vi5ECGeFqcl7PODtR6L
347	Outlaw	82	8	1995	66	spotify:album:7j1H0kuwKmotSTmzLMsnVN
348	Dream Police	349	9	1979	34	spotify:album:66sGbldg4VPdY70IcPdxtE
349	In-A-Gadda-Da-Vida	350	6	1968	13	spotify:album:4L1Qw49gKwFuQwQovBxsKI
350	Shock Treatment	351	14	1968	15	spotify:album:5teEwGNoIILP3FeBNOzLyj
351	Frampton	352	10	1975	31	spotify:album:0mRXKbepKXO0Il8H1uMaaX
352	RUN DMC	353	9	1984	353	spotify:album:05n0d2kfwGPhKpTonLHRpY
353	Three for Love	354	11	1980	77	spotify:album:62jHAFPLTBs0u6McU9DV4X
354	Stay With Me Tonight	355	10	1983	31	spotify:album:1SmEARBy2tOkIV804nqzkj
355	In The Jungle, Babe (Remastered & Expanded)	356	18	2007	37	spotify:album:2dmNC2Hfgt8QNnk54rQZFn
356	After the Gold Rush (2009 Remaster)	51	11	1970	51	spotify:album:5EVlXlHbRQI8ybuNt4ArXI
357	The World is a Ghetto	82	6	1972	66	spotify:album:4UZmpGH8kpAgyZ2yqQ8sP9
358	Carlos Santana & Buddy Miles! Live!	359	6	1972	359	spotify:album:6CKDrpQgDvXkCHcqOzugcC
359	A Taste Of Honey	360	12	1978	10	spotify:album:4QJA3YXQdpLhuIztkSgrpo
360	Winelight	361	6	1980	8	spotify:album:50gtvo0hufJj06ipbOjAiU
361	Blind Faith	362	6	1969	27	spotify:album:6xmPL0CddWADJTJkJZkrl2
362	For the Good Times	363	10	1971	26	spotify:album:3TZfynoRNJ1YKtDNFLWu8M
363	The Dude	364	9	1981	31	spotify:album:2GD9TjWG3Tu4JygAZniBY0
364	Silver 'N Brass	365	6	1975	365	spotify:album:5ldUPXu3D1G2A3Tgn39mZY
365	Head To The Sky	366	6	1973	99	spotify:album:01c1PLpIdfwy47yid7GqKB
366	Song For My Father	365	10	1999	367	spotify:album:4LEnATSqKeANOJ0mLUAuCE
367	Boys in the Trees	368	11	1978	8	spotify:album:6TUPBFLSBxRwHDXV0y3AHs
368	I'm The Man	166	6	1987	9	spotify:album:0zKH2esoOmwa8gNH5ZXCce
369	Earth Sun Moon	370	13	1987	370	spotify:album:4ZDVF5xwOHht1pKux8nn5M
370	Escape (Expanded Edition)	371	17	2017	371	spotify:album:0wXylkn9taeEjiiac1S2zU
371	Madness	372	12	1983	145	spotify:album:2P1bkVHSonLBBSKvrBbdbw
372	Family Reunion (Expanded Edition)	146	8	1975	96	spotify:album:2Q3cf5aSlA9Da2269Ai8fD
373	Ball	350	9	1969	13	spotify:album:1bN4ZGUSstaxa7pUKBBtxC
374	Straight From The Heart	32	14	1982	32	spotify:album:73TPk27H5MBU6flqQ1lr09
375	Visions (Expanded Edition)	376	33	1983	26	spotify:album:7tcWk8cEeldaK1l1durZ6Z
376	At Fillmore East	76	7	1971	22	spotify:album:5Fk98C255zupZ17srJxary
\.


--
-- Data for Name: tracks; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.tracks (track_id, track_title, record_id, duration_ms, track_number, track_uri) FROM stdin;
1	Courage to Grow	1	255586	1	spotify:track:33Ib9wPVhh2MWHhmS7Yne9
2	Heart Like a Lion	1	338413	2	spotify:track:3Z1Kc1G2FIDIKvY5wTFAO1
3	Safe and Sound	1	229493	3	spotify:track:5GQaLen4w5m5YiJmzYfegN
4	Feeling Alright	1	266400	4	spotify:track:2EDRUNdur7CGV2W2mwIRoS
5	R Way	1	419973	5	spotify:track:0AmkrjMDff4ICVNxQhppZA
6	Attention Span	1	322760	6	spotify:track:7z3EXUkDIgi6y3L46JSklf
7	Green to Black	1	261946	7	spotify:track:40laV0uGcLaObXHVExb51u
8	On My Mind	1	219760	8	spotify:track:794mYd1O3ZGTXeEOKbtnzX
9	Running	1	343320	9	spotify:track:4UZmQ42GmxNSrQS74wunHl
10	Nightcrawler	1	286400	10	spotify:track:6YwHYGjHZqqVnTe1ADkhlq
11	Other Side	1	224000	11	spotify:track:5N2TafHm5CuREjeK17sSF5
12	Safe and Sound Dub	1	238800	12	spotify:track:1zJCUqbJBEy1CFRmD7k3ck
13	Intro	7	47293	1	spotify:track:34QTgJPSf9Nvpw3NrlX8pu
14	Lost Ones	7	333906	2	spotify:track:71XhXay6rKPZCVAaDtFlSR
15	Ex-Factor	7	326533	3	spotify:track:2VjXGuPVVxyhMgER3Uz2Fe
16	To Zion (feat. Carlos Santana)	7	369293	4	spotify:track:7x6hO9VMAee9x1iWaeNkL6
17	Doo Wop (That Thing)	7	320266	5	spotify:track:0uEp9E98JB5awlA084uaIg
18	Superstar	7	297106	6	spotify:track:4zSmsHur194jO2hGCTt6Hn
19	Final Hour	7	256000	7	spotify:track:7nY3NA1AvORewLU3BU7GNX
20	When It Hurts so Bad	7	342200	8	spotify:track:3CNSWn2mISh7Ll3yJQbVEw
21	I Used to Love Him (feat. Mary J. Blige)	7	339866	9	spotify:track:3IRdgbdqDcmJBIa6TY2mKX
22	Forgive Them Father	7	315293	10	spotify:track:2RPhXg9D4JOkryUznL0aaB
23	Every Ghetto, Every City	7	314706	11	spotify:track:6ioEEcJzOpLyIO6Dgn1RYS
24	Nothing Even Matters (feat. D'Angelo)	7	350533	12	spotify:track:1Q0lOGB52skgfzdcq233vs
25	Everything Is Everything	7	293266	13	spotify:track:7t86fVeDAd63ThaR0ZkxXS
26	The Miseducation of Lauryn Hill	7	235466	14	spotify:track:12Y1GaS44vga0G3rUtjFAY
27	Can't Take My Eyes Off of You - (I Love You Baby)	7	221466	15	spotify:track:2GFExyKXf9383tSRSrEHEt
28	Tell Him	7	280760	16	spotify:track:7iCs98iS5n6KCI4q3H7zp9
29	Strange Days	8	186560	1	spotify:track:4WFVX3E568hdAixIj3U222
30	You're Lost Little Girl	8	180573	2	spotify:track:5onlaW8X1ps8VS4DhxpFom
31	Love Me Two Times	8	195106	3	spotify:track:67HxeUADW4H3ERfaPW59ma
32	Unhappy Girl	8	117066	4	spotify:track:7MW3s6XnZua7CNQAfmdGe8
33	Horse Latitudes	8	95226	5	spotify:track:6vcqR6rCL2k4EDhqH8gzeO
34	Moonlight Drive	8	181346	6	spotify:track:0ja1dJM5gBTjk5U9wsMP9r
35	People Are Strange	8	130173	7	spotify:track:1Jmqubf9kGkWeYQXQKImL5
36	My Eyes Have Seen You	8	147200	8	spotify:track:6HSQ5z5afdLjhphHWfPiEG
37	I Can't See Your Face in My Mind	8	203293	9	spotify:track:6wov6IWJkisFG6rUZIESsB
38	When the Music's Over	8	659266	10	spotify:track:42dsUTJpzMWUJfEkzsbKWl
39	One Cold Vibe (Couldn't Stop Dis Ya Boogie)	9	267693	1	spotify:track:1rhrH5fNevQqgGQhWcA8C8
40	Cold Sweat	9	230973	2	spotify:track:7BSClhNQNKKZ7BwO34HMWD
41	Cool Meditation	9	214760	3	spotify:track:3IXLfuD99oWZ2nDBhWjtPx
42	African Woman	9	386440	4	spotify:track:1C0jKZbXMFJBdwJ5OqGcjI
43	Now That We've Found Love	9	459600	5	spotify:track:04E1J0D07gVhOTTyrztkgJ
44	Journey To Addis	9	403980	6	spotify:track:4kODFSstc7KUGau8By2ADk
45	Fret Not Thyself	9	255400	7	spotify:track:766hl1uh93ptDwRxz85lN4
46	Rejoice	9	230933	8	spotify:track:5wAO8LSD1fsWGzLZUut1dA
47	Wolf Run - Pt. 1	10	72360	1	spotify:track:6ehjxKP5f0EDreiw5tiZZY
48	Just For Love - Pt. 1	10	180106	2	spotify:track:39MIbGjOVHGwsAQSCwI4ol
49	Cobra	10	263626	3	spotify:track:217t1Sb45FwpFw8paHYvkm
50	The Hat	10	636800	4	spotify:track:1mUH0d5XfXL42tdgL2Oqza
51	Freeway Flyer	10	229533	5	spotify:track:78lZFRefSo4ZCFZIC37KOO
52	Gone Again	10	437666	6	spotify:track:3A8YWZ2yB1kWcCHVc9oNrP
53	Fresh Air	10	321933	7	spotify:track:54uiTEd1MOB7ExqqKCj1HX
54	Just For Love - Pt. 2	10	98773	8	spotify:track:6dvqHfGk678XioTOyAvcLb
55	Wolf Run - Pt. 2	10	130733	9	spotify:track:4snJ3bruCQ3kInBpk15hYm
56	What About Me?	11	401453	1	spotify:track:3sLOV0GZxECi1xcRVzSwaS
57	Local Color	11	178693	2	spotify:track:7sY7ZvVbRav3bTBXUrerda
58	Baby Baby	11	280786	3	spotify:track:6YbruO69mp3QYHXALF3xgF
59	Won't Kill Me	11	149680	4	spotify:track:2ceAzf0DGwHK9wu9Sj6tB4
60	Long Haired Lady	11	352253	5	spotify:track:0Le5FsFXfv3oB6KBGjBvgi
61	Subway	11	265306	6	spotify:track:7pAers6BOw29h4zI9qPNUf
62	Spindrifter	11	275306	7	spotify:track:6busJ5UjXp5W2LhG3oL9xl
63	Good Old Rock And Roll	11	149493	8	spotify:track:32NUvxep1st89ZiYbD8JrA
64	All In My Mind	11	224266	9	spotify:track:2HnJJCkdmKI9cYOtzFrtWQ
65	Call On Me	11	455573	10	spotify:track:4Ls7s7YJSuwkDlxkUetS3B
66	Break on Through (To the Other Side)	12	145866	1	spotify:track:6ToM0uwxtPKo9CMpbPGYvM
67	Soul Kitchen	12	213000	2	spotify:track:2Xdc6qyaFBJZ8QW1KhpVci
68	The Crystal Ship	12	152000	3	spotify:track:0gWvVB4bGvADocoPMEDy3K
69	Twentieth Century Fox	12	151666	4	spotify:track:7mc2TP4Vzuyw2vNf1bLW9f
70	Alabama Song (Whisky Bar)	12	197400	5	spotify:track:0JNZGIavoUrdup1NsgJOQs
71	Light My Fire	12	429760	6	spotify:track:5uvosCdMlFdTXhoazkTI5R
72	Back Door Man	12	212426	7	spotify:track:03By6gD02qhtvIQiK8KidK
73	I Looked at You	12	140160	8	spotify:track:6vCLIvOIabRk1XQfMb6RXi
74	End of the Night	12	170693	9	spotify:track:09ezgACZuwWZt6CtQSSLRG
75	Take It as It Comes	12	134933	10	spotify:track:4pxHVL0syMQwYK3BxDaTIs
76	The End	12	703373	11	spotify:track:5UgT7w6zVZjP3oyawMzbiK
77	Oh Me Oh My (I'm a Fool for You Baby)	13	222173	1	spotify:track:58yfJguiaxtLeYV3ly5nmR
78	Day Dreaming	13	239960	2	spotify:track:7L4G39PVgMfaeHRyi1ML7y
79	Rock Steady	13	193573	3	spotify:track:7rvGZDlfqCjY9EWEUg3Xs6
80	Young, Gifted and Black	13	214226	4	spotify:track:5dcm217docwRMX29EbAhxl
81	All the King's Horses	13	236000	5	spotify:track:4scnR2BdymYpgLzM9vH6Ra
82	A Brand New Me	13	266266	6	spotify:track:0YZkPseskG14g0etqdZjqA
83	April Fools	13	209866	7	spotify:track:7mcRAPSkGRRD5pvrzhhL7V
84	I've Been Loving You Too Long	13	216466	8	spotify:track:0o4gU2wkqrM9C9DNE50xgs
85	First Snow in Kokomo	13	244200	9	spotify:track:3eTwIIekod6vK1D9PEFQ42
86	The Long and Winding Road	13	218666	10	spotify:track:7lHxAH2rr20F5KO9yz2aNt
87	Didn't I (Blow Your Mind This Time)	13	222733	11	spotify:track:2LhpgzYwWLLzTDYLfTQC7Q
88	Border Song (Holy Moses)	13	199466	12	spotify:track:2rtv1DsLKFGDm5tXNPnjc6
89	Monday Morning	14	167840	1	spotify:track:0qjfjKFoP7LaqLI2KI9M1Q
90	Warm Ways	14	234826	2	spotify:track:4SysnIGNcHQlaz9jJVnIxX
91	Blue Letter	14	161066	3	spotify:track:2P5jgK6L6NeOIKOs6JdDV5
92	Rhiannon	14	252773	4	spotify:track:05oETzWbd4SI33qK2gbJfR
93	Over My Head	14	214666	5	spotify:track:4rBnrnqnI0tcjcNAFO6RZO
94	Crystal	14	314266	6	spotify:track:6h0s5FUtc6HV3smc8naDPI
95	Say You Love Me	14	249946	7	spotify:track:6lrQo6KAYvb92MGk6ZuZlt
96	Landslide	14	199493	8	spotify:track:5ihS6UUlyQAfmp48eSkxuQ
97	World Turning	14	265933	9	spotify:track:6QvgyZ8xG2OFGjZsH3s8d3
98	Sugar Daddy	14	250973	10	spotify:track:29IWmqmyYyA1LylPAd2fxh
99	I'm so Afraid	14	262533	11	spotify:track:1fXvxcQdz9OEe5IeNHQh72
100	Singing Winds, Crying Beasts	15	290666	1	spotify:track:0vBCQeiEKRy6eJmrf5zz4H
101	Black Magic Woman / Gypsy Queen	15	319773	2	spotify:track:7cDxjUnMitNKQC5c8RQUko
102	Oye Como Va	15	256933	3	spotify:track:5u6y4u5EgDv0peILf60H5t
103	Incident at Neshabur	15	297506	4	spotify:track:1vcmEqKQAHlnV2fcNdJjEt
104	Se a Cabo	15	170106	5	spotify:track:5JPXVcoVUZd3JYTQEFf9ug
105	Mother's Daughter	15	265466	6	spotify:track:1Ag8YqvKOcwapkaRJG66p8
106	Samba Pa Ti	15	284800	7	spotify:track:35fC3Wq3slX4OBfyvBVmHm
107	Hope You're Feeling Better	15	250506	8	spotify:track:3lysbLRK4bGbQRmYfN5S0o
108	El Nicoya	15	89066	9	spotify:track:0vAtUwwCnfrMKExDsPC0Lt
109	Around the World	16	238733	1	spotify:track:0aGQHMr7bc23Y9Ts84ffop
110	Parallel Universe	16	269360	2	spotify:track:1Se0r96r0gnqg67kJPmESc
111	Scar Tissue	16	215906	3	spotify:track:1G391cbiT3v3Cywg8T7DM1
112	Otherside	16	255373	4	spotify:track:64BbK9SFKH2jk86U3dGj2P
113	Get on Top	16	198066	5	spotify:track:0GcWf1Cc4ixN35D3O9VdcP
114	Californication	16	329733	6	spotify:track:48UPSzbZjgc449aqz8bxox
115	Easily	16	231333	7	spotify:track:3QJnjJH53Ocg22MaLutrgJ
116	Porcelain	16	163706	8	spotify:track:6WUjz18yIeTGDR1E69WHtf
117	Emit Remmus	16	240200	9	spotify:track:2xDHUsWEsH33sKbFqDZPFj
118	I Like Dirt	16	157626	10	spotify:track:2bo1tTjK87OHKKUDFthqHx
119	This Velvet Glove	16	225200	11	spotify:track:49colNVoLFcMszng9O8w4h
120	Savior	16	292400	12	spotify:track:0O8RjwNco465s5o9Ix9IYj
121	Purple Stain	16	253373	13	spotify:track:0tGkxA0oybkQ3iR6LLXPjZ
122	Right on Time	16	112533	14	spotify:track:66wnTJJ7Vo0GW02CMP3etR
123	Road Trippin'	16	204973	15	spotify:track:1XxCiPw07rd1ytYnE7SoJI
124	Fat Dance - 2006 Remaster	16	220499	16	spotify:track:3BW34zpQNgRUwuQ4eUyzMN
125	Over Funk - 2006 Remaster	16	178360	17	spotify:track:0809RpHic1xrZzh9CT4wXo
126	Quixoticelixer - 2006 Remaster	16	288226	18	spotify:track:28w7CPWQCqQxt0YCzDN75b
127	Black Dog - 1990 Remaster	17	294000	1	spotify:track:0NSeXLBOh16zjbENkAu0P6
128	Rock and Roll - 1990 Remaster	17	219800	2	spotify:track:3w2GGz0HjIu9OcWXINRFJR
129	The Battle of Evermore - 1990 Remaster	17	351666	3	spotify:track:6rfvuWLzWCHZD2HCsmapSk
130	Stairway to Heaven - 1990 Remaster	17	478173	4	spotify:track:51pQ7vY7WXzxskwloaeqyj
131	Misty Mountain Hop - 1990 Remaster	17	278720	5	spotify:track:4kOCN0SaJiIlMYn0Qgdr8m
132	Four Sticks - 1993 Remaster	17	284960	6	spotify:track:3ugy4UZMgDleeBReUjtqP9
133	Going to California - 1990 Remaster	17	211466	7	spotify:track:55sjCMeQM26VxbNHhMtj2b
134	When the Levee Breaks - 1990 Remaster	17	427800	8	spotify:track:5yM7n12a0w0ZIxgwoobENF
135	Since I Left You	18	261000	1	spotify:track:516V4vS25xnGdVgkBWO6Wf
136	Stay Another Season	18	139946	2	spotify:track:7kp0pGc7BjSe6aTyWUUQvT
137	Radio	18	261959	3	spotify:track:027CQkZSId1SGW3h7xeOTC
138	Two Hearts In 3/4 Time	18	202293	4	spotify:track:7obAv6wop4HzavH2eNU6SH
139	Avalanche Rock	18	23013	5	spotify:track:1pbGbkTAJQTO5tjANIH8xd
140	Flight Tonight	18	233213	6	spotify:track:3OgzinZ8bjv07duHLrYgmV
141	Close To You	18	235333	7	spotify:track:7bCmSFlmcCBXeLWgfFP02W
142	Diner's Only	18	94466	8	spotify:track:7qvTEOKnwUq8OfYqUNZPwB
143	A Different Feeling	18	262853	9	spotify:track:0gf5aDrh0wyGy5vQo0HlIK
144	Electricity	18	210080	10	spotify:track:0Mg6Z3OP9fwIEPWHXsnufL
145	Tonight May Have To Last Me All My Life	18	139986	11	spotify:track:63grpdfs3XAgbsTiYAGOI8
146	Pablo's Cruise	18	52120	12	spotify:track:7ckIEFqK5dNlhdu6FWjA2w
147	Frontier Psychiatrist	18	288346	13	spotify:track:0E2UdlzNQP9I70MYumYlFo
148	ETOH	18	302946	14	spotify:track:7mZ6HkP9xEh1c63qPMdCUt
149	Summer Crane	18	279106	15	spotify:track:0KS0UD7DUNOTrPEu0fe0bh
150	Little Journey	18	95853	16	spotify:track:6mIMcm0qEvKmFlSy9zFTGE
151	Live At Dominoes	18	338840	17	spotify:track:2z2pL8GzZMo3wWW0lE8ERX
152	Extra Kings	18	226813	18	spotify:track:3UeKLLqEWk7VTDVzmXhdqm
153	I Can't Get Next to You	19	228813	1	spotify:track:2UclV6Lu93Ssh1spktn0Fp
154	Are You Lonely for Me, Baby	19	238586	2	spotify:track:1oX2F2w07GFaLsa99DD5q0
155	God Is Standing By	19	194613	3	spotify:track:2kMt4n51cJzAQkwa5X8zYT
156	Tired of Being Alone	19	172320	4	spotify:track:10vkYRKw6Jjr7try1ir50G
157	I'm a Ram	19	227480	5	spotify:track:6QbcnA5zCrjiZIUBzAP4nY
158	Driving Wheel	19	179720	6	spotify:track:57t3RPV7rxBHtb6Qp2DhA9
159	Light My Fire	19	235186	7	spotify:track:5eIx02KMwP6qMG8tcZxKhG
160	You Say It	19	172760	8	spotify:track:4KAkdpQ03txYI8j55NjR8j
161	Right Now, Right Now	19	172586	9	spotify:track:1u8cDSraOvD9MaQbE7RO0J
162	All Because	19	170306	10	spotify:track:5JcBaxxrCErCUDDsNtBf8A
163	Introduction - Where Are We Going	20	96213	1	spotify:track:43vgVmSkxmdWS81ux555qp
164	Shake A Leg	20	240680	2	spotify:track:2Y4avOgPNv7OiUf1LccXpt
165	I'm Ready (If You're Ready)	20	314946	3	spotify:track:10wTzcfZtJz3d3duubRIuR
166	You're My Everything	20	254333	4	spotify:track:4mlT3EqajnawNQAS5sGjfe
167	Jammin' In America	20	301066	5	spotify:track:0Zvb3uBuVfsqBOydFBAS2W
168	Smile	20	184746	6	spotify:track:7wkTO8iGTmt4DqBDOtMJY4
169	Party Train	20	347253	7	spotify:track:2ULLfb35Xp05d8QbbKXlXw
170	Jam The Motha'	20	257973	8	spotify:track:2XMa6110WeA1TeMGpiIzyy
171	I Expect More	20	236920	9	spotify:track:7r32SE17sUUPHLl6Hlbcrn
172	You're Something Special	20	321746	10	spotify:track:4QXDt2NsJTuLQDRRTOg8cB
173	Someday	20	278040	11	spotify:track:5P0ZmzUMebYDljW9b6IRa1
174	Party Train - Bonus Track (12" Special Dance Mix)	20	370826	12	spotify:track:2p2C7oWaBOqtbdr8Ydpkpy
175	Jam The Motha' - Party Mix	20	351253	13	spotify:track:4cFLR6YhOkd3d0g1AspiD2
176	I'm Ready (If You're Ready) - Extended Remix	20	353240	14	spotify:track:0JEntuxI3KuceKv4urBAoP
177	Shake A Leg - Dub Version	20	241226	15	spotify:track:1F0TnXtjcA0v2nFNUx0qjx
178	Party Train - Bonus Track (Single Version)	20	243080	16	spotify:track:0grlvSkX2iLSDXLtSKMv9m
179	Jam The Motha' - Munchkin People	20	327426	17	spotify:track:2P1Mc8JBsdCyeqc2d9Y2xP
180	Start Me Up - Remastered	21	213066	1	spotify:track:7HKez549fwJQDzx3zLjHKC
181	Hang Fire - Remastered	21	141093	2	spotify:track:5HcTLesmMaPr0CkwdbtK0o
182	Slave - Remastered	21	392800	3	spotify:track:0oM5Z3MGSOieWT6ObRQ2Uj
183	Little T&A - Remastered	21	203173	4	spotify:track:7K3rmA4f6NEElsxKEOOt8H
184	Black Limousine - Remastered	21	212026	5	spotify:track:0SpNlEAUqNsuij5xi7Z7cQ
185	Neighbours - Remastered	21	211466	6	spotify:track:1nBufEoW7UXvQWgqmNl6Kx
186	Worried About You - Remastered	21	317560	7	spotify:track:02Y7UtZLh7SbhYsYG5N7Rr
187	Tops - Remastered	21	226773	8	spotify:track:0kesmP5jKuavoUDwuoMG3l
188	Heaven - Remastered	21	262400	9	spotify:track:0QVJsWtmgj9SWZaLYiX2i3
189	No Use In Crying - Remastered	21	205173	10	spotify:track:4wa7EsaCIc31OoedVvkVz6
190	Waiting On A Friend - Remastered 2009	21	274226	11	spotify:track:4Wd9pEtEnZNDjgiswGOpJb
191	Ladies Night	22	385506	1	spotify:track:2uKJxjqcFu2Pr2CEsGGYJa
192	Got You Into My Life	22	267360	2	spotify:track:2k30U4aX4OHpOnmJiNSvjx
193	If You Feel Like Dancin	22	306973	3	spotify:track:0KvEhsbI5xrHoKzftKm8NU
194	Hangin' Out	22	326960	4	spotify:track:7tt7kijVVgpt1M8GIcGx5F
195	Tonight's The Night	22	429440	5	spotify:track:5vzQ2Eju6KlvB2iGRH7iwi
196	Too Hot	22	295160	6	spotify:track:0jNTJSaktLVy8iAi7KY2zB
197	Squeeze The Fruit	23	179493	1	spotify:track:6BzGdlhn2KQjIAhsqGvBHn
198	Funny Feelings	23	291466	2	spotify:track:3sUGSc0A6pvWZBv17WZvti
199	Heaven Knows	23	285266	3	spotify:track:2d6k6RYjTedahRbDTz87aT
200	Zoom	23	404133	4	spotify:track:14Tj6yYXItEhy466a0yeR0
201	Won't You Come Dance WIth Me	23	228973	5	spotify:track:3a0GKgO31l0VXJhI8Ti6PG
202	Brick House	23	208893	6	spotify:track:5VJjhHyG8NZ5xdgG6uTb3P
203	Funky Situation	23	221640	7	spotify:track:0bBVLnMBDfMKiJQsB3eWBy
204	Patch It Up	23	239600	8	spotify:track:0P526lWlFhpL5qLBqZ6f1U
205	Easy	23	256426	9	spotify:track:1JQ6Xm1JrvHfvAqhl5pwaA
206	Rock This Town	24	207000	1	spotify:track:2SknHmwY6GiOv6aK7YRahd
207	Built For Speed	24	178000	2	spotify:track:63WGqx77lFVgigZ5CAEAow
208	Rev It Up And Go	24	151000	3	spotify:track:6JMEPCrZqn7XjbBLEglOpL
209	Stray Cat Strut	24	198000	4	spotify:track:5yogRsv5ggT6iCnFgvdpho
210	Little Miss Prissy	24	184000	5	spotify:track:42hFrsbDc6VMcTl4anrK1x
211	Rumble In Brighton	24	197000	6	spotify:track:5Ov4AC7S27PG7YyiemE9X2
212	Runaway Boys	24	182973	7	spotify:track:1G9CoqXAYqagyOaNlIK4s1
213	Lonely Summer Nights	24	200991	8	spotify:track:1ZndmQtUklM8TP0RVtBcpU
214	Double Talkin' Baby	24	186000	9	spotify:track:3c2VaHIWDmKxnCCZUyvJ2S
215	You Don't Believe Me	24	179000	10	spotify:track:3Luz0pMHDE9rK656HDnJts
216	Jeanie, Jeanie, Jeanie	24	143963	11	spotify:track:04cy1fNy6msAI5sDcmxkwu
217	Baby Blue Eyes	24	168000	12	spotify:track:4nwAHhkEYnjWnlZfA85AT3
218	Soulful Football	25	228520	1	spotify:track:14S7k4Ye8fq6L40WmnvDkF
219	Oo Wee Baby, I Love You	25	222453	2	spotify:track:2kKKnBtbTVFWoTAnb4Eoo2
220	Can I Change My Mind	25	169493	3	spotify:track:1udqKwPVgMKYduRn1eDlra
221	Funky Chicken, Part 1	25	133640	4	spotify:track:0e7Yx4UFoJ7jzx8l7XotMK
222	Sugar Sugar	25	158626	5	spotify:track:5AT9C6r8sC0mOknFCUmQ8t
223	Off Into A Black Thing	25	193080	6	spotify:track:3gqfBfEr40P3L85GcLG5Vs
224	Is It Something That You've Got	25	168653	7	spotify:track:6PkinQHJH1PnAby9GeJBFC
225	Funky Chicken, Part 2	25	120493	8	spotify:track:5iJG7bGor5lPRR3D2fmQSb
226	Harlem - Bonus Track	25	179986	9	spotify:track:5Pop6Y82gJk0HQ8shywT3x
227	Loose Booty - Bonus Track	25	180266	10	spotify:track:1AVGcG18USbKGWtNtiWZkE
228	Break Your Back - Bonus Track	25	182600	11	spotify:track:3HXycNMDG0io299dyjPbv4
229	Open Up Wide	26	228253	1	spotify:track:4gwJW2ppceiKyuSxVfbOb2
230	Livin' In Heat	26	174053	2	spotify:track:2EcGXirQclKbQ8BNoByT6j
231	Hello Groceries	26	176893	3	spotify:track:3uTotVl33hNMpBG4B8JBbC
232	Handbags And Gladrags	26	203760	4	spotify:track:5rhWL3cAyyD0huYAQcWcrW
233	Get It On	26	179146	5	spotify:track:006yvCdaWUS79qp2Ip3Hdl
234	Boys And Girls Together	26	171386	6	spotify:track:174ifUOYMmOiwVQwK9Pg2W
235	Invitation To A River	26	851866	7	spotify:track:7qc5PpU2Mb7w0wiRN5fq6z
236	Mandrill	27	260360	1	spotify:track:1xI62yXrvcXuLTzUmkmlje
237	Warning Blues	27	271760	2	spotify:track:1JoWDVhwuj1rJV259PGGQF
238	Symphonic Revolutions	27	315666	3	spotify:track:12yV7gTBLaTK3NchxxGFjR
239	Rollin' On	27	459706	4	spotify:track:1WzIDhXrSVtVmPkw9tsfYh
240	Peace And Love (Amani Na Mapenzi) - Movement I (Birth)	27	110000	5	spotify:track:7xrLZk6YEsF90ipTNTcIqj
241	Peace And Love (Amani Na Mapenzi) - Movement II (Now)	27	106106	6	spotify:track:4bI75kjE3A7ReRLnKfHTWH
242	Peace And Love (Amani Na Mapenzi) - Movement III (Time)	27	134160	7	spotify:track:2qmx1VhwkNwUydnMfektiD
243	Peace And Love (Amani Na Mapenzi) - Movement IV (Encounter)	27	363440	8	spotify:track:5BiFP4yiF2yFSCui1N0fUy
244	Peace And Love (Amani Na Mapenzi) - Movement V (Beginning)	27	125666	9	spotify:track:0Gq8OHe4JPClbjWUTEmVLZ
245	Chutney	27	185960	10	spotify:track:66wVaiPKHWIx2g4oMQ7ic1
246	Theme From Shaft - Album - Remastered	28	279200	1	spotify:track:7KMILVTQdVS4zQ8ilTcpRO
247	Bumpy's Lament - Album - Remastered	28	111786	2	spotify:track:6cwESJ9VBETp2n0yZPOo6Q
248	Walk From Regio's - Remastered	28	143853	3	spotify:track:6hfCnZXkRBneixasZAQh53
249	Ellie's Love Theme - Album - Remastered	28	198080	4	spotify:track:7FaewmxbN68w4BbEWkQMJe
250	Shaft's Cab Ride - Album - Remastered	28	67773	5	spotify:track:0Fjq4fB5P0fvjXotqJFipP
251	Café Regio's - Album - Remastered	28	369786	6	spotify:track:38TjGLRAXPOcrQZzBATY6O
252	Early Sunday Morning - Album - Remastered	28	229293	7	spotify:track:0EkhPnzXOYsBPIpcJK9niV
253	Be Yourself - Album - Remastered	28	270533	8	spotify:track:7iu7jugiH3od2qrtVBwbu0
254	A Friend's Place - Album - Remastered	28	200440	9	spotify:track:4XxIU8bNbHETXxFT3l3rew
255	Soulsville - Album - Remastered	28	228413	10	spotify:track:752f5RLmGg7mSpPx0yUPnk
256	No Name Bar - Album - Remastered	28	370840	11	spotify:track:37HLYFkO7p8iBiR8WM3TMQ
257	Bumpy's Blues - Album - Remastered	28	243866	12	spotify:track:5mpkvrsA4sB4mgWYN9B8pJ
258	Shaft Strikes Again - Album - Remastered	28	183386	13	spotify:track:3kIdUDZBRFto9ojukdLLRD
259	Do Your Thing - Album - Remastered	28	1167653	14	spotify:track:0uy3Hosy67vfoFGKpoBBg6
260	The End Theme - Album - Remastered	28	116520	15	spotify:track:6PzQq38iyw0IrJe0TuwcOf
261	Theme From Shaft - 2009 Mix	28	284373	16	spotify:track:05NFVnibayA2VRyc7bOZl8
262	Magic Key	29	237373	1	spotify:track:5RIyBMJfM8nLY5FRIQGg5e
263	Tobacco Road	29	432146	2	spotify:track:6Y0wwUbIwy0aI6keEbv60a
264	Feelin' Alright	29	303386	3	spotify:track:2dz3vdnxYhwEp8VO7tvQQ3
265	In Bed	29	183026	4	spotify:track:4jcdtokyGxxCGotVfjOSwc
266	Train To Nowhere	29	204120	5	spotify:track:4qukjz1kIDsUIfLitqz4V2
267	Get Ready	29	1292293	6	spotify:track:6pN3ra1mEPtjFsdCvDDHW3
268	The Laws Must Change	30	442000	1	spotify:track:4yfZ2hbaZko97HW0g7JGIO
269	Saw Mill Gulch Road	30	279813	2	spotify:track:5ELpOAzHjbP2jwnQhsViaw
270	I'm Gonna Fight For You J.B.	30	327853	3	spotify:track:6vds8lHE6x1obVeHTwVXxI
271	So Hard To Share	30	423720	4	spotify:track:3Ht3ffJa58su4AUhbVCRMY
272	California	30	571080	5	spotify:track:4hv2Pkp66pnIrUBuS95Snw
273	Thoughts About Roxanne	30	500733	6	spotify:track:1XHatL5GRxiV7jYvnfdaTc
274	Room To Move	30	302053	7	spotify:track:53kWBpTaAPrE3BC0d22y3i
275	Sleeping By Her Side	30	310146	8	spotify:track:5O4C9TpeIhkxum7lhCX0B1
276	Don't Waste My Time	30	294760	9	spotify:track:5kytQwmrbViv4f1twPs8BI
277	Can't Sleep This Night	30	381493	10	spotify:track:6fdwvUnKiLv3IIAWaLtol0
278	Song Of Joy	31	196266	1	spotify:track:0g7avRdGifbSDjjOSRKwl5
279	Lonely Night (Angel Face)	31	198200	2	spotify:track:0qgsctXeEVnUwgGESn3vW4
280	Mind Your Love	31	181333	3	spotify:track:3rpVo6G9e0lPan887GjO4o
281	Smile For Me One More Time	31	199360	4	spotify:track:0SM8V5t6lRTmTErOFrWZwj
282	Shop Around	31	210240	5	spotify:track:3maAFCOtAdJElV8gdU5GG4
283	Going Bananas	31	131533	6	spotify:track:4ialofdjKbZsweSi9juwl6
284	Butterscotch Castle	31	200866	7	spotify:track:3tSQpOWsf3kdQaqQH1zq6z
285	Muskrat Love	31	228160	8	spotify:track:3NRiJ7XFMALvrXXB1oRBFO
286	Thank You, Baby	31	219466	9	spotify:track:1NYPjHSNZ7X3vMSqrtuN98
287	Wedding Song (There Is Love)	31	200200	10	spotify:track:7AkbGqTCUe4EdJnnVtodnU
288	1954 Boogie Blues	31	295426	11	spotify:track:5EbfxT61aTKnuHdUrnAdzn
289	Let The Music Take Me	32	411200	1	spotify:track:6uCiWpq0zynO48E2zzHSCg
290	Keeping Faith In Love	32	248693	2	spotify:track:7L1zdKs8WnXHYR7xDOUYmr
291	Settle For My Love	32	315440	3	spotify:track:2xRgzDEtR2eBz5dTgMvIpx
292	Message In The Music	32	181626	4	spotify:track:75jek18k3dUIMAyWoGZR0A
293	Haven't You Heard	32	405293	5	spotify:track:0rgGwEybYIQvqHf5qEkFOB
294	Givin' It Up Is Givin' Up	32	299693	6	spotify:track:0St4uNqxLDY5GHm7PtBTJS
295	Call On Me	32	408893	7	spotify:track:5cXwbea6eeAMP774qNiKwX
296	Message In The Music (Reprise)	32	57266	8	spotify:track:0ynJOE3L6kRQpapdamS8Q5
297	Your Love	33	304720	1	spotify:track:5NxfdAEPSjEFJB9EDOPmwI
298	Handle Me Gently	33	227826	2	spotify:track:0Rwq4VbfQmOPdriYLdMfbU
299	Be There in the Morning	33	255506	3	spotify:track:3KutAiQ698975DL3JoQ7gF
300	Invitation	33	246280	4	spotify:track:4dNUbZOgL8gg34dtHuLmJ6
301	Together	33	195320	5	spotify:track:7LwcPV2Rm4GvLEVpYL2NYZ
302	Disco Land	33	275226	6	spotify:track:7u5SDe2MDZO2FoDIARBE2k
303	I Have a Dream	33	378906	7	spotify:track:0LpZTrwyJbNauEc2JPUvum
304	Beijo Patrido	33	362560	8	spotify:track:1EGKSrydiSLeEr2paQFPZ7
305	Kigston	33	265306	9	spotify:track:04SvotjurLAGiVaZPH3f6g
306	Your Love - 7" Version	33	216666	10	spotify:track:7Ek1dytFpzQBzy8dGzDlcM
307	She's Gone - 7" Version	33	222053	11	spotify:track:0c6i7MJxWycSuoJcqvT4YD
308	Too Hot to Handle	34	223360	1	spotify:track:2bEMh5V7tB17krsfrigGyS
309	Boogie Nights	34	303533	2	spotify:track:20zOIoex7YchUh87d8tlvg
310	Ain't No Half Steppin'	34	309440	3	spotify:track:5fR3MHtRauZ3TCgCKuNLZi
311	Always and Forever	34	374826	4	spotify:track:31fzVAmqx899uxIPomTYtO
312	Super Soul Sister	34	236560	5	spotify:track:7yZsqZ9AsLulJePOrdk82F
313	All You Do Is Dial	34	250066	6	spotify:track:799DAkjpBvb5hbJmgDYVBp
314	Lay It on Me	34	195626	7	spotify:track:04qA0pMQwP0Q8WbKO0ZKU2
315	Sho'Nuff Must be Luv	34	243733	8	spotify:track:4iOFTgr1IMDFo7CZ22KmTc
316	I'll Beat Your Booty	34	180000	9	spotify:track:13bgAmrqCJS2q3tHZWu24R
317	Body Language	35	305893	1	spotify:track:15ZZSg1sARFTQ39TWtFiL9
318	Another Nail for My Heart	35	193666	2	spotify:track:4ZloPzQWdmjbBlZOZ08DS7
319	S.O.S.	35	237040	3	spotify:track:1uqX1T2qP3QIJk8uLX8C5c
320	We've Got Tonight	35	258133	4	spotify:track:5ndk2hHPWtA2PjX7LlAMXL
321	(Ooh-Wee) He's Killing Me	35	207560	5	spotify:track:0diC4xkQtSASZUGjud12P7
322	I Can't Stop	35	209440	6	spotify:track:6VQk8qxOIglmKrGalVFpKA
323	Love Me Again	35	224066	7	spotify:track:0YMo89H24xaIh2zYPme8zN
324	Soar Me Like an Eagle Flies	35	215066	8	spotify:track:4R1cNOBUCT15DpytoN9YXJ
325	People in Love (Do the Strangest Things)	35	170800	9	spotify:track:1Bp4DBjHrCsvKXsxmva9iN
326	I Want You Tonight	35	222666	10	spotify:track:5pR1Ares0249ezToii4GRC
327	Look What You Find	36	284760	1	spotify:track:3gNvGzRFVNxgBT5ICD69hz
328	Every Little Step I Take	36	229493	2	spotify:track:2PM8qgLtBnmFMsrlvP1HsT
329	Games	36	193653	3	spotify:track:7d98e5q4okSJO7AJAtxuPi
330	I Want You for Myself	36	396960	4	spotify:track:3tAawZ4CeNujAAP5t0kijg
331	In the Distance	36	138666	5	spotify:track:1bBbMtI0cWyjHnMN88s1oP
332	I Love You More	36	186306	6	spotify:track:5LYkSMSgRRaxRUecVb9re9
333	Dog-Man	36	277893	7	spotify:track:1J3B0zEWTpjDEgGu4EuBDD
334	Everybody's Talkin'	36	257733	8	spotify:track:2veiPuGLVnieMK8NeQlqWP
335	Part 1-The Alien Challenges The Stick/Part 2-The Alien Succumbs To The Macho Intergalactic Funkativity Of The Funkblasters	36	560520	9	spotify:track:5QTz1si2jOdGVf5CKObpPr
336	I Want You for Myself - U.S. Single Edit	36	232373	10	spotify:track:4LYLi3OVArrK5d1HMNLMjD
337	Every Little Step I Take - U.S. Single Edit	36	220773	11	spotify:track:016KJVNiXpRzsSiSBKz0w7
338	Noah: Right!	37	214386	1	spotify:track:46KcXNtjugiVJCe292K785
339	Noah: And the Neighbor	37	71920	2	spotify:track:79giZMGeNs9wQRcnTSOQja
340	Noah: Me and You, Lord	37	180266	3	spotify:track:3qTed4YRrzcSzGkSwlZpj2
341	Revenge	37	364640	4	spotify:track:0C0y4nnmblLN13HAPVapvK
342	The Lone Ranger	37	57346	5	spotify:track:1gmLnqPwz2WlbmoXOV7r9x
343	Old Weird Harold (9th Street Bridge)	37	314320	6	spotify:track:4aj7uppudfYmVugWwxiCEK
344	Driving in San Francisco	37	228186	7	spotify:track:1X7RUrFyors5BVb1q7vI0N
345	The Apple	37	106733	8	spotify:track:4mXfpzcLiplUv0ew2GCmPs
346	Babies	37	230640	9	spotify:track:0wtxVCF4blSTnNYRC0ASWU
347	The Water Bottle	37	54546	10	spotify:track:4wCXFfP5ZMhEn95VIjP03h
348	Street Football	37	80640	11	spotify:track:1ufOwfTiSMe2WZpWrpOqwZ
349	Fat Albert (Buck, Buck)	37	554320	12	spotify:track:54cw0FqNtpB7u1qu34aywN
350	Sin's A Good Man's Brother - Remastered	38	291178	1	spotify:track:6pWvauh3ksqTynfxV2WyIb
351	Aimless Lady - Remastered	38	209493	2	spotify:track:0FFIleakWHp8j90BxTtF0D
352	Nothing Is The Same - Remastered	38	314533	3	spotify:track:7cm9Mr6OeMENmwNumYxOdR
353	Mean Mistreater - Remastered	38	267866	4	spotify:track:1qKSrG553yLwxUVR4el9Vs
354	Get It Together - Remastered	38	310000	5	spotify:track:6dklUDGs7MXGnW6yFCb3nN
355	I Don't Have To Sing The Blues - Remastered	38	277466	6	spotify:track:5g3TwV5DZE1IiL9meh59Wd
356	Hooked On Love - Remastered	38	433066	7	spotify:track:35VYDl05b9mlqVUaIXCfBw
357	Closer To Home (I'm Your Captain) - Remastered	38	608933	8	spotify:track:168aH14F9ef3ymWlk9vWHp
358	Mean Mistreater - Alternate Mix	38	273040	9	spotify:track:0AeTOCp998swO3dvtBByxF
359	In Need	38	690200	10	spotify:track:1341zyLZjurJwGYNLswQ8g
360	Heartbreaker	38	437138	11	spotify:track:0ibNbJysTUZ7NZA7hJhbik
361	Mean Mistreater	38	322973	12	spotify:track:21ufFFZXpG1XMNEXTouNvw
362	Country Road - Remastered 2002	39	262733	1	spotify:track:2talazQ0YPid0qzloEI9n7
363	All You've Got Is Money - Remastered 2002	39	316466	2	spotify:track:7x2YStTSqYtrnKkHPgeHnO
364	Comfort Me - Remastered 2002	39	408293	3	spotify:track:60xGcvyTlFs34uC00chtkO
365	Feelin' Alright - Remastered 2002	39	267800	4	spotify:track:4YCuFnUwj0yBL0jQrmJ14u
366	I Want Freedom - Remastered 2002	39	379266	5	spotify:track:1y8JPlT1ZFKI7eAM0XJDcF
367	I Can Feel Him In The Morning - Remastered 2002	39	435706	6	spotify:track:71DZKIK3YiwLPnubY210XG
368	Gimme Shelter - Remastered 2002	39	389026	7	spotify:track:5WqEP1YckYLZPPvJYKBsu3
369	I Can't Get Along With Society - Remastered 2002	39	341440	8	spotify:track:5kkboR8sZL7ztjQS5ZqFh9
370	Jam (Footstompin' Music) - Remastered 2002	39	280866	9	spotify:track:4LqTNUZQF9lrqPOgrUvVuR
371	Country Road - Extended Version	39	458493	10	spotify:track:5S3f0vh5A0j2CNzCiWpjZe
372	All You've Got Is Money - Extended Version	39	499440	11	spotify:track:3kOWuEPaTwYZ3TIteSWkbK
373	Feelin' Alright - Extended Version	39	357093	12	spotify:track:775t8btetv0zqbfbrqefas
374	Puttin' on the Ritz	40	276500	1	spotify:track:7JgxTJ7AIJbXRgGANCj6U6
375	Puttin' on the Ritz - Long Single Mix	40	277060	2	spotify:track:3mGzjGfilbMmePo6YCyTA5
376	Livin' in My Dreamworld	40	188500	3	spotify:track:0QhaJRYyVL6VN5qkqWRwLR
377	Serves You Right	41	308106	1	spotify:track:3RgHXXCS8mCRvhOaqMV1s0
378	Wandering Stranger	41	332400	2	spotify:track:26nHCk4xOLC3RnWrfchfw2
379	Tell Me	41	327733	3	spotify:track:15lbNa4vfc9snSsWq5HSt7
380	My Love	41	244973	4	spotify:track:6l9fOwFZ2pZzGUAVnPM76l
381	Round And Round	41	294226	5	spotify:track:0KUtxmWijNo3clJmSsKjaw
382	Truly	41	200506	6	spotify:track:7AslBsiVLQAGrmFmi79ZeK
383	You Are	41	300880	7	spotify:track:2SQkCUj5rYrFCRKnaTbYYr
384	You Mean More To Me	41	182786	8	spotify:track:5mT09voM755XlPjYQERiV2
385	Just Put Some Love In Your Heart	41	83853	9	spotify:track:4kGBozHJBZ7o4rbCaWi5mf
386	Endless Love - Solo Demo	41	236506	10	spotify:track:3Qil95ZXAjuCQAdvNiulbA
387	You Are - Instrumental	41	305533	11	spotify:track:1iV2WMmXmwqOxuXRNhMqyy
388	Never Can Say Goodbye	42	309647	1	spotify:track:7huWsflUViqN7KktlH8wc5
389	(They Long To Be) Close To You	42	544570	2	spotify:track:72BforHtvsuWLnEO7ufbX8
390	Nothing Takes The Place Of You	42	331322	3	spotify:track:6wyp0r5aarDMG4ZjQJtjc6
391	Man's Temptation	42	301188	4	spotify:track:4xu6MRysXVZjLGsCzw4SYc
392	Part-Time Love	42	514068	5	spotify:track:0mY9AoyBi33QED2hRkeMtT
393	Medley: Ike's Rap IV / A Brand New Me	42	582943	6	spotify:track:4whRRZkYmhBY0xBkB2Ukyj
394	Going In Circles	42	420961	7	spotify:track:6vKVnfVoDKoHWKRpM0tvaz
395	Never Gonna Give You Up	42	349839	1	spotify:track:2SeCEifXBjzN1J7UGFapQ8
396	Medley: Ike's Rap II / Help Me Love	42	453405	2	spotify:track:2JOQ5uf96YYnc3dhW6cZtX
397	Need To Belong To Someone	42	316019	3	spotify:track:79sBuyB5xoVIy4DeAn2XEO
398	Good Love 6-9-9-6-9	42	317924	4	spotify:track:0XoWFQSIvFZ0lhzYE7HWLx
399	Medley: Ike's Rap III / Your Love Is So Doggone Good	42	559244	5	spotify:track:5LN57HqOm9RFGno4NHLPHh
400	For The Good Times	42	322362	6	spotify:track:73J9wxoTAxY91rOXtYHOeA
401	I'll Never Fall In Love Again	42	296506	7	spotify:track:4RTnOmFmpVtP4Np1agvPxQ
402	Love of a Woman	43	356693	1	spotify:track:1DmfVmdDKM9enJLtPrfMnC
403	Little Kind Words	43	255280	2	spotify:track:6n1y1MUq4IRYiPzONgJqoz
404	Old Man	43	337133	3	spotify:track:4jtfXUHPb39NePMdO0ryiF
405	Sing, Sing, Sing	43	204480	4	spotify:track:6WnoegvguYO3i6Po7hiNv8
406	1849	43	374013	5	spotify:track:6n4dvCg5pOHcdOslwennR1
407	One Fine Morning	43	319320	6	spotify:track:5pT1UzzwpzFpRJGJI4z0qi
408	Hats off to the Stranger	43	215920	7	spotify:track:1wnKM1VQqMO3dDGYaSC3IK
409	Show Me the Way	43	150146	8	spotify:track:1L4qp865CTvN3KBhcswVBI
410	Step out on the Sea	43	307506	9	spotify:track:3xyUYyPY0spI5GAaaT9Tp8
411	Sweet Lullabye	43	348413	10	spotify:track:5YhN7ZghImu4f9k2fGmAZp
412	Prelude to Aire	44	167106	1	spotify:track:02R78WnUZesqURMtDtAlAw
413	Aire	44	386853	2	spotify:track:5U9jQdWycmPDDEzlZv1CQK
414	Devil's Sweet - 2002 Remaster	44	607066	3	spotify:track:3HdZuXwny0d7zgmRVijJNF
415	Italian from New York	44	254026	4	spotify:track:7ChQYMe8sVngP0Ihu6C3FR
416	Hanky Panky	44	113266	5	spotify:track:4BNfmD5td9EKTbhxFRM8p0
417	Life Saver	44	318213	6	spotify:track:4u8iqyHvoMdgqjZZs1mSjk
418	Happy Man	44	195760	7	spotify:track:5f53FRJzkiXliPOv4iiXKe
419	(I've Been) Searchin' So Long - 2002 Remaster	44	268426	8	spotify:track:3z9pBucv2HHp1gYaTcQwiI
420	Mongonucleosis	44	205733	9	spotify:track:7H0DeUv9YHAQ23yq8iVKat
421	Song of the Evergreens	44	319866	10	spotify:track:0IEgQg9jYySSpfrb4NMC8e
422	Byblos	44	378200	11	spotify:track:0VGNpPrGlnmJymxscQrgHo
423	Wishing You Were Here - 2002 Remaster	44	275253	12	spotify:track:3apndFiT1MCYS9qSy4NJCP
424	Call on Me - 2002 Remaster	44	242653	13	spotify:track:5BCPL5mWm6UqI4atl18kVm
425	Women Don't Want To Love me	44	275266	14	spotify:track:4eauWdStQpxCdf7YxqmIJk
426	Skinny Boy	44	312333	15	spotify:track:36mId5BAvdpdVLIbx1ZINE
427	Byblos - Rehearsal	44	340533	16	spotify:track:5YWFXHifA2NbB5hPIUz4Qn
428	What Am I Gonna Do With You	45	215333	1	spotify:track:6VJZL38AyilSCBlqylwSRL
429	You're The First, The Last, My Everything	45	274266	2	spotify:track:1oxUiD6kR2UWYnIutS33pF
430	Can't Get Enough Of Your Love, Babe	45	270333	3	spotify:track:3ky8x7UQb6XGpD8CC4xAnu
431	Honey Please, Can't Ya See - Single Version	45	194173	4	spotify:track:6NJFJRuabiv5IDwxWXGqzE
432	Love Serenade	45	425826	5	spotify:track:2PXtRrGKGknY76h6Q521nT
433	Never Never Gonna Give Ya Up	45	290666	6	spotify:track:3LxMs3DBirmev8OFkSNuBA
434	I'm Gonna Love You Just A Little More Baby - Single Version	45	253840	7	spotify:track:29XAF3CXAN2LqHIGRNmnc1
435	I've Found Someone	45	220493	8	spotify:track:7fYKLD4kgJfdZpl4CqVmOJ
436	I've Got So Much To Give	45	190333	9	spotify:track:6aPVSLPaFzTzjj345PMf98
437	Standing In The Shadows Of Love	45	323000	10	spotify:track:4evI6RZNBvD2AiEDyR8BU4
438	Shake Your Head	46	185800	1	spotify:track:4jN6w0VRuqxlW87aidGAXh
439	So Long	46	368333	2	spotify:track:3CGeeXDNLWgwFVbHsHptS3
440	You're Gettin' a Little Too Smart	46	222373	3	spotify:track:5L6m6QbwOZPocch6y3EKZB
441	Medley - I Think of You / You Control Me	46	477493	4	spotify:track:6NEMc1CMOfSXadQU7bQGz2
442	What'cha Gonna Wear Tomorrow	46	258333	5	spotify:track:2Uz0h8Y2y8Mc6AHjNJmClP
443	Medley - Heaven Couldn't Be Like This / Without You Baby	46	618600	6	spotify:track:7bRQQ4UmpAdpI51ZKZIk8H
444	My Dreams Have Got the Best of Me	46	171266	7	spotify:track:1qKm8JMEdHapzVWP6zYqNg
445	Set It Out	46	303773	8	spotify:track:5nluMGccLCvzfQbh1qZ5K9
446	Take It or Leave Me	46	366426	9	spotify:track:0U3uqh1KZfXPXFngbPVio2
447	Feel the Need	46	425866	10	spotify:track:70Dbzlzeu1du4U1HJMz3Xl
448	Wednesday	46	214306	11	spotify:track:7EY2ASQBnupnDyRBZJSzfr
449	Love for You	46	318493	12	spotify:track:1hVqu80cJgLSQF5uN8jF8d
450	Look What's Happened to Our Love	46	194000	13	spotify:track:4t4Xtj3RAUPZnbLDJFKAA1
451	Sexy Ways	46	133306	14	spotify:track:1alS0u0SSnmrkE6jT5jhrG
452	Love Has Come to Me	46	304760	15	spotify:track:2poq3nUDnlCudmoTQ1Dx2X
453	Sgt. Pepper's Lonely Hearts Club Band - Remastered 2009	47	122893	1	spotify:track:4fUKE8EULjQdHF4zb0M8FO
454	With A Little Help From My Friends - Remastered 2009	47	164106	2	spotify:track:2RnPATK99oGOZygnD2GTO6
455	Lucy In The Sky With Diamonds - Remastered 2009	47	208466	3	spotify:track:25yQPHgC35WNnnOUqFhgVR
456	Getting Better - Remastered 2009	47	168120	4	spotify:track:3LtOmWpTXLhilL5odoKysR
457	Fixing A Hole - Remastered 2009	47	156826	5	spotify:track:3pKKxkeB1pOUMHwWBmKc3Y
458	She's Leaving Home - Remastered 2009	47	215160	6	spotify:track:3PjMtNzwhDHqxoKudm6GvF
459	Being For The Benefit Of Mr. Kite! - Remastered 2009	47	157533	7	spotify:track:6W35n1UlkvqhfMZstB4BXs
460	Within You Without You - Remastered 2009	47	304666	8	spotify:track:3Umg8CDhO8dOSj7yBTInYb
461	When I'm Sixty Four - Remastered 2009	47	157666	9	spotify:track:1NrbnHlR2BFREcyWXHIHip
462	Lovely Rita - Remastered 2009	47	162093	10	spotify:track:6h9W5FxX4E9lUFsyq8j1AD
463	Good Morning Good Morning - Remastered 2009	47	161226	11	spotify:track:0xIuNHHcKI1JDuBPlSwzb1
464	Sgt. Pepper's Lonely Hearts Club Band - Reprise / Remastered 2009	47	79066	12	spotify:track:42ocGQCOT0xYtV3f5kJDsD
465	A Day In The Life - Remastered 2009	47	337413	13	spotify:track:0hKRSZhUGEhKU6aNSPBACZ
466	Egyptian Danza	48	356226	1	spotify:track:7GDk0u3NXBZvjCyh4ihsHF
467	Chasin' the Voodoo	48	304960	2	spotify:track:5sVBbnxQSdsiHmQzhChE0y
468	Dark Eye Tango	48	322973	3	spotify:track:2dhUHZRP0Wh84fm7jZy7bO
469	Señor Mouse	48	440826	4	spotify:track:5l6zJJ4i3lm5uig1dIHgTC
470	Fantasia Suite for Two Guitars	48	311360	5	spotify:track:4dl7ujLpPt4Y5AZ548g5YT
471	Casino	48	569866	6	spotify:track:4zUuBmTmMYyjYHqNQzYADM
472	Skin Tight	49	474266	1	spotify:track:3iRcwzyx4g9uue2PeG8hql
473	Streakin' Cheek To Cheek	49	342400	2	spotify:track:3y7UGj9If1Ddv4uOiRGixT
474	It's Your Night / Words Of Love	49	480706	3	spotify:track:7pdFV27RbmKpEHemGUHjaQ
475	Jive Turkey	49	429466	4	spotify:track:5Uh45W2nIIEbp2hvvbsvcz
476	Heaven Must Be Like This	49	438133	5	spotify:track:4hpND9dmZg39rDm0c47rjv
477	Is Anybody Gonna Be Saved?	49	300666	6	spotify:track:6I3jIPKdBs8kHSX6lBLuL0
478	I (Who Have Nothing)	50	303333	1	spotify:track:2gd06mQH4bk07b7klXpkyV
479	You've Got a Friend	50	203733	2	spotify:track:5UHpNbocPg0TdGOkf6QX8Z
480	Baby I Love You	50	207506	3	spotify:track:3Uo0oh5YHyDrffcpsl30FG
481	Be Real Black for Me	50	214253	4	spotify:track:7JTSRQ7WBhrX5MXYVYbNrB
482	You've Lost That Lovin' Feelin'	50	398373	5	spotify:track:7ACfCLEx4LTXfxvefM1tqb
483	For All We Know	50	220773	6	spotify:track:1J93LI2FVb7nmseDjZr1S8
484	Where Is the Love	50	163453	7	spotify:track:65ADTP6Q8mratfOIeKHp7e
485	When Love Has Grown	50	206826	8	spotify:track:1rLxzZLWG5IqAtWr4fnRA0
486	Come Ye Disconsolate	50	292840	9	spotify:track:53hI2E4KnHEwrn4laNVeEw
487	Mood	50	422226	10	spotify:track:5U3S5XsV4aEBhiOfApVRg3
488	Cinnamon Girl - 2009 Remaster	51	180360	1	spotify:track:4gRfV6SEd0cTqeR9ksrbIs
489	Everybody Knows This Is Nowhere - 2009 Remaster	51	149146	2	spotify:track:1vVsBCkVMYdLhgiC4F54G4
490	Round & Round (It Won't Be Long) - 2009 Remaster	51	354106	3	spotify:track:7DqciTNjmNRabBBXGK2mqC
491	Down by the River - 2009 Remaster	51	558186	4	spotify:track:2EFtUP7BmsjHzhQqI6A4rp
492	The Losing End (When You're On) - 2009 Remaster	51	246560	5	spotify:track:2cLQVZ7nv5thdNX6mEAVC0
493	Running Dry (Requiem for the Rockets) - 2009 Remaster	51	336933	6	spotify:track:0RsjnRihXCrpQXHEk64Kcp
494	Cowgirl in the Sand - 2009 Remaster	51	606680	7	spotify:track:6geu2q04nElk0lLv5YwU9M
495	The Right Time - Live at Alonzo Herndon Stadium, Atlanta, GA, 5/28/1959	52	221653	1	spotify:track:0c7BYXFNbQxa6Z1SUP5wQa
496	What'd I Say - Live at Alonzo Herndon Stadium, Atlanta, GA, 5/28/1959	52	261226	2	spotify:track:3Dz8CdccDjRcpO6SzhOyJY
497	Yes Indeed! - Live at Alonzo Herndon Stadium, Atlanta, GA, 5/28/1959	52	153106	3	spotify:track:3qyjkJg6e0azx9VxTNlplA
498	The Spirit-Feel - Live at Alonzo Herndon Stadium, Atlanta, GA, 5/28/1959	52	254160	4	spotify:track:1acJiJ8s9o5tQbEeUMmwJB
499	Frenesi - Live at Alonzo Herndon Stadium, Atlanta, GA, 5/28/1959	52	301840	5	spotify:track:4Qn5Yi6KShLxp3f4u3lFfn
500	Drown in My Own Tears - Live at Alonzo Herndon Stadium, Atlanta, GA, 5/28/1959	52	371040	6	spotify:track:1YhkVLhIb3CSs48yUjwtaN
501	Tell the Truth - Live at Alonzo Herndon Stadium, Atlanta, GA, 5/28/1959	52	191400	7	spotify:track:78uCUYjdYGhViaWPfIz72U
502	Cuba	53	453893	1	spotify:track:7yHXA5njI6eEkPkXoikVfl
503	Ooh what a life	53	343773	2	spotify:track:03Cofh35oLbMDSqu1Zhy7Q
504	West Indies	53	302000	3	spotify:track:4j07PQOJtkSPUFPrHv40Nj
505	Better Do It Salsa	53	398000	4	spotify:track:5cijni7f2inZcVUUGyYzvu
506	You	53	267400	5	spotify:track:6fKuhcUyzI7RL4XXRanGLK
507	Que Sera Mi Vida	53	352533	6	spotify:track:7vqAcdNAp2pmE4nSSEbnnQ
508	Lord Grenville - 2001 Remaster	54	302600	1	spotify:track:0g80UQYNUAyoNJHeB5c9Dd
509	On the Border - 2001 Remaster	54	202293	2	spotify:track:6GXl3ADX2Lw5JaOSk620j2
510	Midas Shadow - 2001 Remaster	54	190933	3	spotify:track:48BTINdoIwwrHymXPdAQ0O
511	Sand in Your Shoes - 2001 Remaster	54	184506	4	spotify:track:60d1VK2qyWQb10pVr9Wu6R
512	If It Doesn't Come Naturally Leave It - 2001 Remaster	54	271826	5	spotify:track:0Dyja5GxdxI41uow2mb0Nd
513	Flying Sorcery - 2001 Remaster	54	262373	6	spotify:track:2rVfc9Ds1SBvUqKco72gDl
514	Broadway Hotel - 2001 Remaster	54	238426	7	spotify:track:7eEaCEt1Rkp0p8HNzSf923
515	One Stage Before - 2001 Remaster	54	281173	8	spotify:track:3WXBpwHQG5srplCx08g4ff
516	Year of the Cat - 2001 Remaster	54	401400	9	spotify:track:5jYYumalS1qELrcChOCZrK
733	Eveready Man	77	279306	6	spotify:track:1dkmvpJTNjEAzhawMJyBK0
517	On the Border - Live; 2001 Remaster	54	228893	10	spotify:track:4BLzgzPXRcwnfAjDzhGu4A
518	Belsize Blues - 2001 Remaster	54	210000	11	spotify:track:7igBuzyJ8F8uwBNfn1w5sv
519	Song on the Radio - 2001 Remaster	54	582600	12	spotify:track:67azRPkNl8MNM98kQ4rezT
520	Hotel California - 2013 Remaster	55	391376	1	spotify:track:40riOy7x9W7GXjyGp4pjAv
521	New Kid in Town - 2013 Remaster	55	304925	2	spotify:track:6Zyz8lsnMFpIrCTuvGurCB
522	Life in the Fast Lane - 2013 Remaster	55	286219	3	spotify:track:6gXrEUzibufX9xYPk3HD5p
523	Wasted Time - 2013 Remaster	55	296172	4	spotify:track:0Q5YtY85lz5n7rQkeMNpoe
524	Wasted Time - 2013 Remaster	55	83426	5	spotify:track:7soAdgnUJFcVYA4fiTjFwh
525	Victim of Love - 2013 Remaster	55	250089	6	spotify:track:1tKha6Q0lYlW1qsWYbZB2N
526	Pretty Maids All in a Row - 2013 Remaster	55	239493	7	spotify:track:1LWDDpoVNF6YAFt95ETAS2
527	Try and Love Again - 2013 Remaster	55	311068	8	spotify:track:3ULgE72PnMaeV6lzA0G6Jv
528	The Last Resort - 2013 Remaster	55	444911	9	spotify:track:0MrZG1nTNQVzeSJKi6gFVF
529	Getting Together	56	112493	1	spotify:track:7doMkID8osBWCErEVLsBTo
530	Waiting At The Bus Stop	56	120640	2	spotify:track:6BUNQzhqCBP09pg8jFR50z
531	Where Did That Little Girl Go?	56	125053	3	spotify:track:2LzeZS2L9HKt0Q7n22RhHL
532	Blame It On The Pony Express	56	165213	4	spotify:track:4goMTcpl9WHZpJeeAT7jn6
533	Tired Soul	56	141213	5	spotify:track:45RV5Mm9wnArxdnlL0mHgR
534	Goodtime Song	56	133040	6	spotify:track:7b0SH2OTIB2bu2ILKib712
535	Jennifer	56	153120	7	spotify:track:4WDzcoVyEGqkZzEoVOU5Jh
536	Oh, It Must Be Love	56	143386	8	spotify:track:1D18Ywcywe2YRn0pEqGawF
537	It Boggles The Mind	56	103920	9	spotify:track:7g1aRmhvdQgMrHTJC1KQPG
538	Run Away	56	144520	10	spotify:track:2562zGj81OWeS2xyChpLHo
539	Marching To The Music	56	143746	11	spotify:track:0mMcCyoHf9NM73XlTic1JR
540	Getting Together - Reprise	56	42560	12	spotify:track:2xyANwm3lc3ghk1wa0eXxN
541	Once You Get Started	57	268200	1	spotify:track:500wW2RUTmBjDelZ7OhdDJ
542	Somebody's Watching You	57	190186	2	spotify:track:10NON1fkWC4yJSclOcwoC8
543	Pack'd My Bags	57	303186	3	spotify:track:2K7VnwwD3cEhlIoT0qjLhA
544	Your Smile	57	200200	4	spotify:track:4xEUmLU22V0c7h6tk03cM3
545	Rufusized	57	192640	5	spotify:track:1nkON0JYKJlROxZIeuIELl
546	I'm A Woman (I'm A Backbone)	57	195893	6	spotify:track:1KTD3iV8jOQy3KxT4p5OaQ
547	Right Is Right	57	192653	7	spotify:track:4OPiQScaVO7z0i3az7peQi
548	Half Moon	57	193666	8	spotify:track:49sojhyROzPVeFhbHNb1Gb
549	Please Pardon Me (You Remind Me Of A Friend)	57	179666	9	spotify:track:1iFeX1db8QxNimp5LIlqRY
550	Stop On By	57	293600	10	spotify:track:3ywjn8ObFZZslAGmfpWS2U
551	Cream City	58	205000	1	spotify:track:3k5RdmexU7MQBZjOz7z2lh
552	Rock 'N' Roll Gangster	58	325200	2	spotify:track:61s4aBlBfF0M7VG8kffOEB
553	Midnight Man	58	279893	3	spotify:track:6q0SDyCOgbHsMe77gJR4Fh
554	Summer Love	58	301160	4	spotify:track:1vkU2hMj2shRUTGUteJTxX
555	Steven Baine's Electric Train	58	243266	5	spotify:track:3xhbc9AWr3LmiklHaxmNt4
556	Lonely Princess	58	347666	6	spotify:track:7clJyIoAXvXRO0Q7hhl3Jp
557	Magic Night	58	439773	7	spotify:track:6jUsAwuSDegL10PrcCYuA7
558	Jungle Desire	58	447986	8	spotify:track:7j6xuqdOOGC7g7aT3MzL51
559	War Child - 2002 Remaster	59	276893	1	spotify:track:24nRgRJRT1xOZwfrQR0MYw
560	Queen and Country - 2002 Remaster	59	180840	2	spotify:track:1yJP3b4HDcK2EYHIDzAfmN
561	Ladies - 2002 Remaster	59	198760	3	spotify:track:5KhnhWLgmdfGy6zYQZC2oB
562	Back-Door Angels - 2002 Remaster	59	326973	4	spotify:track:6G6LCOc83GILacKZ818W08
563	Sealion - 2002 Remaster	59	220533	5	spotify:track:4mJhKfyM0nDOPuzJ68NgNN
564	Skating Away On the Thin Ice of the New Day - 2002 Remaster	59	251146	6	spotify:track:2r8BRLagIPflfcLPfCHakp
565	Bungle in the Jungle - 2002 Remaster	59	216213	7	spotify:track:1IQAsCKoXsEJ7tdI0dxTqT
566	Only Solitaire - 2002 Remaster	59	99360	8	spotify:track:3V3v64twJoCVnRAJSZ011V
567	The Third Hoorah - 2002 Remaster	59	291666	9	spotify:track:5u1q70eaS4HYTIUj4DjQi0
568	Two Fingers - 2002 Remaster	59	319506	10	spotify:track:0iEz8W79xEGnn5i7fHan5a
569	War Child Waltz - 2002 Remaster	59	261026	11	spotify:track:6zhd876x8odEmilyaLkFTy
570	Quartet - 2002 Remaster	59	164466	12	spotify:track:6TlGlEXbdfGEctipvt7alP
571	Paradise Steakhouse - 2002 Remaster	59	243840	13	spotify:track:5skyeZMM3Uc2lXWCASVEfN
572	Sealion II - 2002 Remaster	59	200866	14	spotify:track:32SL2yPV3Fc7Ovy266S2sm
573	Rainbow Blues - 2002 Remaster	59	220093	15	spotify:track:77P83RUizdMjx9VtM54jsh
574	Glory Row - 2002 Remaster	59	215306	16	spotify:track:5GrbVRqjTECBX7jJOiCK71
575	Saturation - 2002 Remaster	59	261560	17	spotify:track:1BLDEEudRb4AUYP3JGSjDX
576	Wanna Be Startin' Somethin'	60	363400	1	spotify:track:1hu2s7qkm5bo03eODpRQO3
577	Baby Be Mine	60	260666	2	spotify:track:6XYbMGvtl6tlPoGWaiH7EY
578	The Girl Is Mine (with Paul McCartney)	60	222333	3	spotify:track:4IT6vDuKprKl6jyVndlY8V
579	Thriller	60	357800	4	spotify:track:2LlQb7Uoj1kKyGhlkBf9aC
580	Beat It	60	258399	5	spotify:track:3BovdzfaX4jb5KFQwoPfAw
581	Billie Jean	60	294226	6	spotify:track:7J1uxwnxfQLu4APicE5Rnj
582	Human Nature	60	246040	7	spotify:track:4cgjA7B4fJBHyB9Ya2bu0t
583	P.Y.T. (Pretty Young Thing)	60	239026	8	spotify:track:1CgmY8fVN7kstVDZmsdM5k
584	The Lady in My Life	60	300106	9	spotify:track:07L1pzoVerhRSSaDGZHrKy
585	Ticket to Ride	61	356866	1	spotify:track:0FjjFFPpvzC9sK3mdUenr2
586	People Get Ready	61	393026	2	spotify:track:4ALsGEHT3sucCvJtd8oqkJ
587	She's Not There	61	298000	3	spotify:track:4k4tOrEj9F9pzgbzoC66Ym
588	Bang Bang	61	316133	4	spotify:track:3PmuVZTxoAU1aQwp5eB9zD
664	Sweet Sweetheart	69	163093	11	spotify:track:333YdlIdHL2ZpWoMDGuEKd
589	a) STRA (Illusions Of My Childhood-Part One) b)You Keep Me Hanging On c) WBER (Illusions Of My Childhood-Part Two)	61	445693	5	spotify:track:4mTBTy1SAnJKoHxnbAcMeT
590	a) Take Me For A Little While b) RYFI (Illusions Of My Childhood-Part Three)	61	235133	6	spotify:track:2AXigUpz4ycfVS550RH8wI
591	a) Eleanor Rigby b) ELDS	61	491440	7	spotify:track:0F4b7Oguzn0hRlb5czVkXq
592	Stephanie Knows Who - LP / Stereo Version	62	152266	1	spotify:track:4xv7nI8Z7QYuw6aaTa0WA8
593	Orange Skies	62	170120	2	spotify:track:4hWZL24iK0C7s7Oacbq46q
594	¡Que Vida!	62	221533	3	spotify:track:1zhH2vZ9cvvvvEMOrrCTet
595	Seven and Seven Is (LP) - Version	62	139160	4	spotify:track:6LbOC2J8ojSTwE6qIS4Eyh
596	The Castle	62	180706	5	spotify:track:3a2NDOVkheojfSi48hA77a
597	She Comes in Colors	62	166826	6	spotify:track:0Gc8I3AVUJgGG3bZasGgzm
598	Revelation	62	1138533	7	spotify:track:0ootl0oL4FuZGbm9oEw1UH
599	Concorde (Nightflight)	63	409840	1	spotify:track:2ZxlGnZPT8MPu63YOO7MIC
600	Funny Face	63	187960	2	spotify:track:57EhMopqf5yzO1HmwAlnqB
601	Baby Rattle Snake	63	413200	3	spotify:track:2jOPC4LX566X7Xf5rkC01s
602	Theme For Gabor	63	275933	4	spotify:track:1ystqYOfUkcZyPkfWtoAUU
603	Keep Smilin'	63	450320	5	spotify:track:3XUmfIhvnX1crrvuqB118p
604	Every Minute Counts	63	417706	6	spotify:track:6JmdxKZw9lySMUK8MIOwl1
605	Smooth Sailin'	63	437520	7	spotify:track:71LNA0muA3zEdhMLvhZVTA
606	And It Stoned Me - 2013 Remaster	64	272160	1	spotify:track:0pLt4z90EzbN7lY9lky1Z9
607	Moondance - 2013 Remaster	64	274040	2	spotify:track:6KHNMPZTSif1zFbFKErpNU
608	Crazy Love - 2013 Remaster	64	155453	3	spotify:track:5aN9SeqAtly2NriV7tMjrI
609	Caravan - 2013 Remaster	64	300800	4	spotify:track:53DfWyh0C0rJUGpsmtdRc1
610	Into the Mystic - 2013 Remaster	64	205613	5	spotify:track:3lh3iiiJeiBXHSZw6u0kh6
611	Come Running - 2013 Remaster	64	151333	6	spotify:track:340k3JIT2OD06pNNpH38KW
612	These Dreams of You - 2013 Remaster	64	231666	7	spotify:track:4eJqIAwc78N603UffIOc5A
613	Brand New Day - 2013 Remaster	64	310680	8	spotify:track:2D5bUcNHDDMvXcd0jKWhtk
614	Everyone - 2013 Remaster	64	212253	9	spotify:track:1NdpYN5GCJSnj3S3mrxOcS
615	Glad Tidings - 2013 Remaster	64	220066	10	spotify:track:1V3Eip6APhGPat25IFCqzB
616	Steppin' Out	65	285373	1	spotify:track:05NdLBmUVkXlBpel2QR07Y
617	Good Time Tonight	65	300000	2	spotify:track:6Wqo4NtO3Ep3QlB0VpK7D8
618	Take My Heart (You Can Have It If You Want It)	65	246426	3	spotify:track:7jHOi7ls5RjJaOtmMSxY8w
619	Be My Lady	65	255600	4	spotify:track:2E5I3d41LCqAJPWmSzrVXv
620	Get Down On It	65	293666	5	spotify:track:4Cv6ongCvJy9JfSkWVnb5D
621	Pass It On	65	273706	6	spotify:track:2PWHaX78k1i9YRaeoMQdPU
622	Stand Up And Sing	65	269760	7	spotify:track:1sq33WwNbr6Woif9ZVq582
623	No Show	65	260200	8	spotify:track:4zuNOFjR9UY9y5QGMkSuz3
624	Stop!	65	201733	9	spotify:track:4Gjxlyf03qjpeUD6VLB1ZU
625	Baby You Lied	66	305506	1	spotify:track:0pgULSoAey6OyzpZLKKlgc
626	His House and Me	66	251493	2	spotify:track:0H0dNoWbj3YJRo1FwZwORG
627	1,000 Laughs	66	208013	3	spotify:track:6u2vQNfgP0IDB9mWeoZaoO
628	Someone Who Still Needs Me	66	216466	4	spotify:track:0aHyHW0KSaBKfwZqrKzJw1
629	Love is Feeling	66	196266	5	spotify:track:4KkLEsyIDehskZ7xESXRtn
630	Number One	66	186333	6	spotify:track:5DVbPAtfcKe5otacOU1KWd
631	You're Incredible	66	268173	7	spotify:track:3TzSV52FUBLKXSjBVhwMAI
632	Love Comes Easy	66	287786	8	spotify:track:4z3Pqqq7MG1cYAfTk1kBbm
633	Forever Now	66	355466	9	spotify:track:4mivI12Dy2BmxUFY3Mjq2j
634	Just a Touch of Love	67	392733	1	spotify:track:1abbmCW62dP7ag10VjQBz4
635	Are You Ready for Love	67	365213	2	spotify:track:3hETdqjZeZrNHmUE2gX6L1
636	Funky Lady (Foxy Lady)	67	277146	3	spotify:track:4WlzOJi15uOOBLkMhHNhHL
637	Roots	67	300266	4	spotify:track:1lJxKXyvMkXnMsBi5hbExl
638	Painted Pictures	67	26080	5	spotify:track:7vS4gTKJ9tP4av5RbHCeAW
639	Thank You	67	345693	6	spotify:track:21xRHycoADXWlfng5CFdKG
640	Shine	67	305760	7	spotify:track:2np907i2oCGBopcF6K8UU1
641	Warning	67	206480	8	spotify:track:5aupKedhLTbYtuVBnF6Ipf
642	A Song For You	68	248600	1	spotify:track:2l9UM2IVGSulrohfekmKdr
643	Dixie Lullaby	68	155826	2	spotify:track:3uX83udhOWrqkZkX7R2FMr
644	I Put A Spell On You	68	252933	3	spotify:track:0UD5hGhgNOF2QJYVVFJt1E
645	Shoot Out On The Plantation	68	193973	4	spotify:track:25sVWC7F8HeAs7snfEj4S7
646	Hummingbird	68	242066	5	spotify:track:02UYBPv5ig1e7yZzEYP4G8
647	Delta Lady	68	245893	6	spotify:track:2H2YMpSXgjLcAeEKSAjrcJ
648	Prince Of Peace	68	185133	7	spotify:track:2DWYu1rOKv83ASATyH0LjL
649	Give Peace A Chance	68	143866	8	spotify:track:49oa9eioE1MQm3XpwhHVjl
650	Hurtsome Body	68	219973	9	spotify:track:2y6MsXeYaYPmfHtKsaNikr
651	Pisces Apple Lady	68	173066	10	spotify:track:29ptcPXfYVcxa2c4OZGe4P
652	Roll Away The Stone	68	190093	11	spotify:track:4B4v0VoK4kFEHVMoPD9TQV
653	Masters Of War	68	84266	12	spotify:track:3BYpqusDEtnYRnwQiboH3s
654	Spaceship Races	69	186400	1	spotify:track:2saV5owNXlCjz26RZ7R6pk
655	No Easy Way Down	69	273533	2	spotify:track:1mS0wLoYYHo18IZIcQ9lUV
656	Child of Mine	69	242466	3	spotify:track:4A7oANUhxquUpTCuu6GmoD
657	Goin' Back	69	196666	4	spotify:track:2gH2zT6DE3mXaBneNhnqXN
658	To Love	69	216400	5	spotify:track:15c2qpqoagc2GxNvCaYlte
659	What Have You Got to Lose	69	210466	6	spotify:track:75TZ0xBZiHI09OHm3fu9JR
660	Eventually	69	297800	7	spotify:track:6m1zAo4TJs7RqJfqzR7qYq
661	Raspberry Jam	69	274293	8	spotify:track:4MeARHhXvNJ2hhbkTSj7O3
662	Can't You Be Real	69	176973	9	spotify:track:2D9auftJn0Q6PmKzZDOyjE
663	I Can't Hear You No More	69	162933	10	spotify:track:1sRtesVRuMI9nHYVgFKMQl
665	Up On the Roof (with James Taylor)	69	216906	12	spotify:track:1nQ6m2FxsxjH8Qjmh1X0Oj
666	Mama Wailer	70	379013	1	spotify:track:7pfQKc88fSt2NMoX5dEaWi
667	Hola Muneca	70	390533	2	spotify:track:0q1VPhboBqjFDK8wB5D8k6
668	I Feel The Earth Move	70	304280	3	spotify:track:4speTayrEFUAjUhlguMoN5
669	Stand	70	1047173	4	spotify:track:0gW1tDZI0J30naa7U9RzVg
670	Ché Ché Colé	71	211400	1	spotify:track:1RkeHb7b24YbAZBM9VSb5w
671	No Me Llores Más	71	337680	2	spotify:track:74SLiN21pdSJEktbjyjO5I
672	Ausencia	71	306640	3	spotify:track:1r6oqZhRYStrYWSeGKuCFP
673	Te Conozco	71	295480	4	spotify:track:4QQSXJaG5mh3dGBHqXaft1
674	Juana Peña	71	338013	5	spotify:track:0SDxXtYkBMfxc9lYdXEaOf
675	Sonero Mayor	71	296160	6	spotify:track:6msnpJqCcwpwYyUU1tATV1
676	Sangrigorda	71	250920	7	spotify:track:3rEY2TDtvSyXV4KJ424lBT
677	Tu No Puedes Conmigo	71	205320	8	spotify:track:1Cva3BnPjMPPYuAsd2NHIo
678	Movin' In - 2002 Remaster	72	245893	1	spotify:track:2A8Unzb32VyxqgsbVS2fTp
679	The Road - 2002 Remaster	72	190226	2	spotify:track:3iwQr7BZxjLbG392OlsH7c
680	Poem for the People - 2002 Remaster	72	331093	3	spotify:track:5wCzOFjBHPukgN8urpmRrP
681	In the Country - 2002 Remaster	72	395160	4	spotify:track:5eJkszoTWVjtXKAzvbkAc1
682	Wake up Sunshine - 2002 Remaster	72	149133	5	spotify:track:1SbiV7CCoAtbeQYZo4gkxw
683	Make Me Smile - 2002 Remaster	72	195915	6	spotify:track:1fgQSrUXq0GJbvZuMXZ9bN
684	So Much to Say, so Much to Give - 2002 Remaster	72	71868	7	spotify:track:1V72rPGmEY7gVLmb3jaWFC
685	Anxiety's Moment - 2002 Remaster	72	60413	8	spotify:track:1qfYEHLPKIRCAzzT5Qevtj
686	West Virginia Fantasies - 2002 Remaster	72	93666	9	spotify:track:5vtOxzeHXgSVTscyX9s8TW
687	Colour My World - 2002 Remaster	72	182466	10	spotify:track:6auBCXbePPUsTJiPHs6hqm
688	To Be Free - 2002 Remaster	72	74766	11	spotify:track:2nOmVjYHHAC4hNGnHKSfMF
689	Now More Than Ever - 2002 Remaster	72	85933	12	spotify:track:0Fk7YbR7bE0lnU21QpZExr
690	Fancy Colours - 2002 Remaster	72	309800	13	spotify:track:4LN8tUUSY9zTlROie7Hnm5
691	25 or 6 to 4 - 2002 Remaster	72	289800	14	spotify:track:7GqIDx2QVGOpd4r1fZaUUW
692	Prelude - 2002 Remaster	72	69440	15	spotify:track:0OHniZHtoofmETcRRLnfQP
693	A.M. Mourning - 2002 Remaster	72	125837	16	spotify:track:3ZObUg7O8kaNGd3kNuHrnC
694	P.M. Mourning - 2002 Remaster	72	118031	17	spotify:track:2uTJL5OE3Eb6gNiqniNkBT
695	Memories of Love - 2002 Remaster	72	238865	18	spotify:track:4EFx9UED3uAy0q6kV2vQvG
696	It Better End Soon It Better End Soon (1st Movement) - 2002 Remaster	72	153391	19	spotify:track:3ijmh42GiqkAtA8NJ4bHo9
697	It Better End Soon (2nd Movement) - 2002 Remaster	72	220608	20	spotify:track:2JqpLTPcNT3vnBJq4h5jmX
698	It Better End Soon (3rd Movement) - 2002 Remaster	72	198426	21	spotify:track:4S2wchh5s7VLqUtTNNWAqT
699	It Better End Soon (4th Movement) - 2002 Remaster	72	51400	22	spotify:track:6CcYQOZ1wA31GxQUqxTx1h
700	Where Do We Go from Here - 2002 Remaster	72	169066	23	spotify:track:4tu91OT4kZFfgWRteAjqJk
701	Make Me Smile (Single Version) - 2002 Remaster	72	178933	24	spotify:track:14vDlv40PzpXKBo6qmht6M
702	25 or 6 to 4 (Single Version) - 2002 Remaster	72	171906	25	spotify:track:7qm1dz6BuJh07zJMBF5ZlU
703	Spring Affair	73	510666	1	spotify:track:2ldalh6d2MrsAFaZG9H3P4
704	Summer Fever	73	484533	2	spotify:track:28sjod0l8HylkyQDY0kyyc
705	Autumn Changes	73	329106	3	spotify:track:4LldsyhaiUL5tcP5uxDBkx
706	Winter Melody	73	388466	4	spotify:track:1zHOjqf8DqjNq6OB7Y5mrF
707	Spring Reprise	73	230293	5	spotify:track:5FK8Tp44wcITpig4G94YL8
708	Watermelon Man - Live	74	244266	1	spotify:track:3fl1MHcZFulLqBnwwjNzzO
709	Blues Power - Live	74	616800	2	spotify:track:3IWeSiU06w8cDXhyHpm98H
710	Night Stomp - Live	74	348226	3	spotify:track:5ijlFobRy9WFHP2U6tZPTT
711	Blues At Sunrise - Live	74	524333	4	spotify:track:4K4NurCpi5Z3eEpNVfeu3h
712	Please Love Me - Live	74	238026	5	spotify:track:3PlyoF5V5dsExVTFN0P7hl
713	Look Out - Live	74	322573	6	spotify:track:5eL0xM9jTrlDjFdH4Nq4m6
714	Tarkus (i. Eruption / ii. Stones of Years / iii. Iconoclast / iv. Mass / v. Manticore / vi. Battlefield / vii. Aquatarkus) [2012 Remastered Version]	75	1243626	1	spotify:track:21lhHDRMO5e7SWCJ0rza0M
715	Jeremy Bender - 2012 Remastered Version	75	110200	2	spotify:track:1To3HBqAbwO9w6aw8dzRgF
716	Bitches Crystal - 2012 Remastered Version	75	238013	3	spotify:track:1kIdwEkmJ6Chx94U2JWPpz
717	The Only Way (Hymn) - 2012 Remastered Version	75	226640	4	spotify:track:3HChtVLHyJnkLf6qL7IpLT
718	Infinite Space (Conclusion) - 2012 Remastered Version	75	202480	5	spotify:track:4vFFirV1TPTGQmQ9BNWN94
719	A Time and a Place - 2012 Remastered Version	75	181586	6	spotify:track:3EwHD4R9eARibxHQzs2KTO
720	Are You Ready Eddy? - 2012 Remastered Version	75	131533	7	spotify:track:7Mnu0ZwUR7CY5hUdbd88ij
721	Statesboro Blues - Live At Fillmore East, March 13, 1971	76	259444	1	spotify:track:1BnfAYVesByA18sA9EAGiI
722	Done Somebody Wrong - Live At The Fillmore East, March 1971	76	275303	2	spotify:track:0WDsLvL9DKjj3qjed4IBa0
723	Stormy Monday - Live At Fillmore East, March 13, 1971	76	529907	3	spotify:track:6k5IO1XwivnRu9d3ZF7Bgq
724	You Don't Love Me - Live At Fillmore East, March 12, 1971	76	1159912	4	spotify:track:04hwplKxASneVsFWzbSpCX
725	Hot 'Lanta - Live At Fillmore East, March 13, 1971	76	321658	5	spotify:track:6EydY3DiK1th0nE7TuxKco
726	In Memory Of Elizabeth Reed - Live At Fillmore East, March 12, 1971	76	787004	6	spotify:track:4c9FL7GiiiB3HB6XnLERws
727	Whipping Post - Live At The Fillmore East, March 1971	76	1389371	7	spotify:track:2FZv72gyxqvSr4AdQm6gzt
728	Fantastic Voyage	77	370893	1	spotify:track:0rc9Uwm4vmnQEfx5omLWWF
729	Your Love Is On the One	77	377240	2	spotify:track:7DPsxqKVr9EjSRgEhHK5li
730	I Need You	77	349560	3	spotify:track:6YaSxfQYitWzaEtnqMFr3m
731	Strung Out	77	302933	4	spotify:track:5gVUGsqLIVFp10la2212NH
732	Say Yes	77	317800	5	spotify:track:2FyA3DQpfM7I2iWZzYeaC3
734	I Love Everything You Do	77	271293	7	spotify:track:3d0fS6sN6NR5WzwM76Wybw
735	Say Yes - Reprise	77	29773	8	spotify:track:4bYpC1smjLUAwchDJmdNxT
736	Black Cow	78	310226	1	spotify:track:66e2KstOkIo6V9PyDXWo3w
737	Aja	78	480466	2	spotify:track:51AIqs0TqA4TI552nerCqa
738	Deacon Blues	78	456640	3	spotify:track:7Hx2EA4wGaxtsiZCVVLV1i
739	Peg	78	240293	4	spotify:track:5DQAHkO9U4IZIombHefcqK
740	Home At Last	78	335666	5	spotify:track:2beIrUqv4VIyqqYhnajOyT
741	I Got The News	78	307106	6	spotify:track:0gLMti4dRYx9McEatLlwBJ
742	Josie	78	270800	7	spotify:track:2P6eZ3eCyWVhEhGNqMFBLv
743	Car Wash	79	307573	1	spotify:track:2pbWkjtGtjkzBdZ95GFINm
744	6 O'Clock DJ (Let's Rock)	79	69866	2	spotify:track:708alHws0V61oT5fJ792C9
745	I Wanna Get Next To You	79	238200	3	spotify:track:1rff5WJrSljfCLYFoXkDiT
746	Put Your Money Where Your Mouth Is	79	205160	4	spotify:track:6RhdsaIgl7bC4fSy7ljPOz
747	Zig Zag	79	150093	5	spotify:track:4amYbZ3Khs1KT4kW4qizxU
748	You're On My Mind	79	207160	6	spotify:track:1Rh6CdJh2OeFfKFG2dDWuE
749	Mid Day DJ Theme	79	103800	7	spotify:track:0F2rsM5iTqKCjOUOCh0o98
750	Born To Love You	79	186360	8	spotify:track:0ROwVXfnMoJ7BoAtvg7Na8
751	Daddy Rich	79	204040	9	spotify:track:4UfWlpn7trSw5Kzuq0N4W0
752	Richard Pryor Dialogue	79	305293	10	spotify:track:1dHrfIf7erTAinyVEF5049
753	You Gotta Believe	79	171333	11	spotify:track:50mQ8Vef5jQDLmwytu4f6m
754	I'm Going Down	79	216773	12	spotify:track:3C2B1j4sOXOw1uoADrBiRH
755	Yo Yo	79	257093	13	spotify:track:7pWKTOtU9adfAuip8IPYXp
756	Sunrise	79	646760	14	spotify:track:6yJaSYyo5Mrcef2tVS96Cp
757	Righteous Rhythm	79	150960	15	spotify:track:7xs8mJ63YyDRxUWRhDlhoD
758	Water	79	212026	16	spotify:track:1naXQ4v4vTlG67dLuVNWEp
759	Crying	79	177733	17	spotify:track:2fnFS8jJJqCfYTdwohOHGT
760	Doin' What Comes Naturally	79	190400	18	spotify:track:7rC55BSF3G5zXzHZVRbgEs
761	Keep On Keepin' On	79	399306	19	spotify:track:3OHJlmnqRCChrggvgN7TNX
762	Bright Lights Big City - Live	80	168040	1	spotify:track:0O6fVjTTejTNoS5Bbacw5x
763	I'm Mr. Luck - Live	80	212213	2	spotify:track:2is8HoxViwZVq9DMogQpyg
764	Baby What's Wrong - Live	80	202333	3	spotify:track:7huzNRuejOSnPncpLJxt1p
765	Kind of Lonesome - Live	80	170133	4	spotify:track:6OdLaiDM6SZmb5CKX4gBkt
766	Aw Shucks Hush Your Mouth - Live	80	151480	5	spotify:track:6VvvneLNepX2JC6rxPMveV
767	Tell Me You Love Me - Live	80	172866	6	spotify:track:1z8D2UQ79FNjqqQtc8H3k9
768	Blue Carnegie - Live	80	171746	7	spotify:track:2K2IEs8xdBajy9VD7HxnZD
769	I'm a Love You - Live	80	125853	8	spotify:track:6oWaCWin9n1Q3RBDWdRzvx
770	Hold Me Close - Live	80	156200	9	spotify:track:03RRcpi8CscYIVM7OsApys
771	Blue Blue Water - Live	80	163906	10	spotify:track:5zGQN6sg7pTtnovww0qxYu
772	Introduction - 50th Anniversary Remix	81	395613	1	spotify:track:0hlFtria3bl5YNjvtoAMFB
773	Does Anybody Really Know What Time It Is? - 50th Anniversary Remix	81	280706	2	spotify:track:05Lh3Pqc8PCNarTKT4sCmi
774	Beginnings - 50th Anniversary Remix	81	474320	3	spotify:track:5mRORS1vOFZhCGZOOTjtJ2
775	Questions 67 And 68 - 50th Anniversary Remix	81	309493	4	spotify:track:03ic2Qt6rhjryZJPeTdyhb
776	Listen - 50th Anniversary Remix	81	204226	5	spotify:track:5H93pZqc3Oa4Yurm3NFypL
777	Poem 58 - 50th Anniversary Remix	81	520333	6	spotify:track:3NnmzFe9uIQv3mJ01143JJ
778	Free Form Guitar - 50th Anniversary Remix	81	416293	7	spotify:track:6QXh6nruQ9K46xGog8t0OP
779	South California Purples - 50th Anniversary Remix	81	374146	8	spotify:track:5rorZNRrqZ8SRHJw3wI3iK
780	I'm A Man - 50th Anniversary Remix	81	463506	9	spotify:track:5E8t0QBEOsbgskjLF6IMop
781	Prologue, August 29, 1968 (Live At The Democratic National Convention, Chicago, IL, 8/29/1968) - 50th Anniversary Remix	81	56984	10	spotify:track:7x1PG1zUhKSJshsPDoKnnZ
782	Someday (August 29, 1968) - 50th Anniversary Remix	81	257068	11	spotify:track:5z8W1VobCiBrXUWC9psRQF
783	Liberation - 50th Anniversary Remix	81	880518	12	spotify:track:3X44pM2CGOdP3i904JiAa2
784	War Is Coming! War Is Coming!	82	425933	1	spotify:track:43GnxyTO8BO10yQfiu4LMa
785	Slowly We Walk Together	82	355533	2	spotify:track:51h7Q7PzCfjnkCOFQJlEiu
786	Platinum Jazz	82	435440	3	spotify:track:2gbAuW6oZ37bcrooVhhyP9
787	I Got You	82	365360	4	spotify:track:7G0On3QoS44cWVbK5bny3w
788	L.A. Sunshine	82	596440	5	spotify:track:7cg8GyxqxyvM6OhdPhYxOO
789	River Niger	82	512066	6	spotify:track:2Qr54dHehuQfgpC6iOZHs8
790	H2Overture	82	240640	7	spotify:track:6m83TTJJKTqGMZvDICy8aP
791	City, Country, City	82	444733	8	spotify:track:2xThjwk0OF7RzPE2cYSuTW
792	Smile Happy	82	242160	9	spotify:track:7Iz9lhrtXdlfNasCvfa5AB
793	Deliver The Word	82	473160	10	spotify:track:3aBM5sGSMtCNapIJZKThdm
794	Nappy Head (Theme From "Ghetto Man")	82	249226	11	spotify:track:2vQl3nggEY8mP41Lub9y5o
795	Four Cornered Room	82	435773	12	spotify:track:5c7GgMVw9q0tWWOMGTLmFc
796	The Wind	83	102200	1	spotify:track:0YvRqDQvZiGrNWiOtr67XH
797	Rubylove	83	157706	2	spotify:track:70AbN7hxAkukvGyoShVOEy
798	If I Laugh	83	200266	3	spotify:track:6v2LpciqqTldECm5zNoydr
799	Changes IV	83	212666	4	spotify:track:5PUP1Qicfa9rMgxAkUahIC
800	How Can I Tell You	83	267666	5	spotify:track:22FMbZyZdi4cCXFrXfjPvj
801	Tuesday's Dead	83	216933	6	spotify:track:02Wa7i8razPvXdTw38524O
802	Morning Has Broken	83	200000	7	spotify:track:6Fac88zhkwXfePhe3tm1ZJ
803	Bitterblue	83	192293	8	spotify:track:7i216wR1pfG6f54i9KEuqm
804	Moonshadow	83	172533	9	spotify:track:5e0KeDCircO5uOvActi05U
805	Peace Train	83	251333	10	spotify:track:3QMnmarOSPwIPzUgu3T6TP
806	Moonshadow - Live at the Troubadour	83	186440	1	spotify:track:7G4HkTNiPnHZO9YMBRPlSl
807	Rubylove - Demo Version	83	173013	2	spotify:track:29YB2Wc4Bd39mgeOAFx00X
808	If I Laugh - Demo Version	83	244680	3	spotify:track:1hrWwRsUjbSs2LJOsoItCo
809	Changes IV - Demo Version	83	216493	4	spotify:track:1JeFKzosNYTVkoeRNoMRDj
810	How Can I Tell You - Demo Version	83	243920	5	spotify:track:7twybW6jQQLqLpfJ1g18qy
811	Morning Has Broken - Demo Version	83	169946	6	spotify:track:01KG0rkd62AO3rlhvATKSt
812	Bitterblue - Royal Albert Hall 1972	83	218320	7	spotify:track:1KCMXTuGpr8hrH1QiHtFFs
813	Tuesday's Dead - Majikat Earth Tour 1976	83	249066	8	spotify:track:3o2INmR6ClzTb9DdGh56vg
814	Peace Train - Royal Albert Hall	83	252866	9	spotify:track:4UOzmKpjfbdaQHTC1YWJY1
815	The Wind - Yusuf's Café	83	119520	10	spotify:track:7am7g4tP5KsUDr9hVHu3Rm
816	I Knew You When	84	168840	1	spotify:track:35dtkKEsO4ZiYBtxuZqu8q
817	Little Bit	84	170466	2	spotify:track:4TegMENxBVAwaa7rvdtUcW
818	Go Away Little Girl	84	150600	3	spotify:track:6SvOdNsEfi7EDB0oFtH3YG
819	Hey Little Johnny	84	154626	4	spotify:track:3dF9hgYR3iOfbN00cmdQGy
820	Sit Down, I Think I Love You	84	184733	5	spotify:track:4LCuFSvdZjHD7vVDCYD0eC
821	A Little Bit Me, A Little Bit You	84	182520	6	spotify:track:1DfVAPb8StmCCWyW7BaK8z
822	Do You Want Me	84	162880	7	spotify:track:28lygOJivUJ59vFbpSfZLN
823	Bye Bye Love	84	143893	8	spotify:track:7wHsfkN5fOWhoBuU7jRrSG
824	I'm Into Something Good	84	161506	9	spotify:track:7daIo1ytZeDRPSMTaKMs8h
825	Standing In The Need Of Love	84	133440	10	spotify:track:5LReO5pffpzI3l1Ip42jva
826	Domino - 1999 Remaster	85	189426	1	spotify:track:0eti3iRdEgUxwcIcN2N9DY
827	Crazy Face - 1999 Remaster	85	180106	2	spotify:track:0mzxa4FU8jAdSGrFvefq63
828	Give Me a Kiss - 1999 Remaster	85	160506	3	spotify:track:6Ee73QbJJPs5h2yXMkdXNm
829	I've Been Working - 1999 Remaster	85	209733	4	spotify:track:3y8N3R6a2SbcrFXbXA77PS
830	Call Me Up in Dreamland - 1999 Remaster	85	235040	5	spotify:track:2HEuKwtgWSM9G8cQwAGDvy
831	I'll Be Your Lover, Too - 1999 Remaster	85	233653	6	spotify:track:4ZLCgL87SsunLPzK2TuShg
832	Blue Money - 1999 Remaster	85	228106	7	spotify:track:7xl2NWfTiZzTycHhDwws7u
833	Virgo Clowns - 1999 Remaster	85	254106	8	spotify:track:0c75cmBocBwDJCJfu8LU84
834	Gypsy Queen - 1999 Remaster	85	198293	9	spotify:track:26mUJTxSkxfEoC4ZLjZYBh
835	Sweet Jannie - 1999 Remaster	85	132080	10	spotify:track:6ggBcNS6NrFvEjrHdD7amm
836	If I Ever Needed Someone - 1999 Remaster	85	227760	11	spotify:track:0FvVEEFe7CBy06SLn04Sw7
837	Street Choir - 1999 Remaster	85	289066	12	spotify:track:5bN6TFQg9MbH63lAaLp3Ve
838	Smooth Talk	86	328826	1	spotify:track:0hew14Ld2fU3xeUUUtdsVS
839	I Don't Know If It's Right	86	257839	2	spotify:track:4FZzrRJtNB1Y4uO8ZgfgWf
840	Till I Come off the Road	86	164773	3	spotify:track:67Q7z3gnXSvRfqfaqyS0Pk
841	Dancin', Dancin', Dancin'	86	251866	4	spotify:track:6iRWh06x3MDrI2RmY8q4qn
842	Shame	86	278480	5	spotify:track:2wMdIr7z1Htiei9NR6XuO6
843	Nobody Knows	86	273400	6	spotify:track:14l4M9jYeuNpgWfKRYx99g
844	We're Going to a Party	86	200720	7	spotify:track:5JU6JDGk2GoFmaO4IRqIE6
845	The Show Is Over	86	342400	8	spotify:track:1PmD9ADS3MP75aUlgEj6YP
846	I Don't Know If It's Right - 12" Mix	86	393733	9	spotify:track:3dC78JWse1i269aJURgGZr
847	Shame	86	499253	10	spotify:track:0mvhxY8mngQRg2ZU44SNWV
848	I Don't Know If It's Right	86	174813	11	spotify:track:2zEV4hXcpQkf2Bj2TPJw43
849	Shame - 12" Mix	86	226186	12	spotify:track:7tZAmNAFSpMPwPzdy8pLvq
850	Little Child Runnin' Wild	87	326906	1	spotify:track:7ueLs9KrHvrGIydo6IjyPV
851	Pusherman	87	300693	2	spotify:track:0WFUAv1zBYlyu3SgoY8VQm
852	Freddie's Dead	87	328333	3	spotify:track:1Ll3h8nTJKRjaYaQyAcCZs
853	Junkie Chase - Instrumental	87	100533	4	spotify:track:2S1INdGaCyTgxYOVmT0Go6
854	Give Me Your Love (Love Song)	87	260333	5	spotify:track:0OwvI1eDY8T8lDkd2PbKMi
855	Eddie You Should Know Better	87	140640	6	spotify:track:6WGNKKvCYcM0J7J9Yq8IVj
856	No Thing on Me (Cocaine Song)	87	298026	7	spotify:track:6JjUkfoKBxAQwkLFXSw4l0
857	Think - Instrumental	87	228666	8	spotify:track:4bNZixsjETcSVB3MoYevDq
858	Superfly	87	233600	9	spotify:track:2PemGQvxBjEwmrfwVtvTkX
859	Wounded Tune	88	141182	1	spotify:track:1FFQ63xFQ1eEi7FHiEKiL8
860	People Need God	88	158405	2	spotify:track:6eyqrrWPhqKPeb36HEPDZv
861	Anytime	88	132517	3	spotify:track:0oACumUnRLqZsjWkDNkfWc
862	The Way It's Always Been	88	167490	4	spotify:track:5Yd7w7WjbS6tgkZbJakkLZ
863	'Til He Comes Back Home	88	122629	5	spotify:track:1aFEFijSb9fDDaxVzH46hy
864	It's Your Birthday	88	167747	6	spotify:track:6l3jxdY21Qo9492U3b4uXf
865	Fruit Above Root Below	88	166765	7	spotify:track:1Q5tegHn4RUmwXjUJsD0Yb
866	Last Daze Waltz	88	160989	8	spotify:track:0Nx0ztduZhl5tKHYPfNJfE
867	Glorious Prince	88	158346	9	spotify:track:6J8A7awDcb7fYhRZedmZt4
868	Father of Lights	88	204920	10	spotify:track:1onvSeB5Wkf2MSp7NC7p88
869	How Could You Love Me So	88	180013	11	spotify:track:0ARf81QsesRMDgWdB0calB
870	Heartache	88	173751	12	spotify:track:5I7aNaQugO41OAWQpj4Dkl
871	Pa Lante	89	230473	1	spotify:track:6owrwtc0O1CLlcOJpk7Hgq
872	No Voy A La Luna	89	282295	2	spotify:track:5aOyeaNCTpavYUnZJSArDy
873	No Puedo Ser Feliz	89	242952	3	spotify:track:0oG0VKa3mNhgipo4JeXA1U
874	Hit The Bongo	89	217916	4	spotify:track:3RH8XjwwgjVCmeduIfxZPd
875	Araguita	89	185390	5	spotify:track:7JbnUwzx5Aq6jHVEnxL2fc
876	Lindo Palomar	89	311640	6	spotify:track:5I7Ag8emrICzQK4zm5dSSi
877	Mi Jevita	89	204939	7	spotify:track:75g85WOU1yhtpznp9aXtr6
878	Nuestra Cancion	89	247642	8	spotify:track:0eYSEhZcBKjConnVBw8K5h
879	Observalo	89	195991	9	spotify:track:1rKj5J0IrU5XcILuNGe41y
880	Cuero	89	227673	10	spotify:track:6PDQGZZ8ToKfZZe1arDUam
881	Standing Ovation	90	332560	1	spotify:track:4duDVSxGXXBf9KI8nozbI1
882	Is It Cool	90	249493	2	spotify:track:2ql5n716CDSekwhwLYEmTK
883	Someday (In Your Life)	90	296560	3	spotify:track:4eaUTzcljYga3LCnOIRZdF
884	Lies	90	319573	4	spotify:track:3RdQhXKAgHPpQ6fLVj2nGt
885	GQ Down	90	235720	5	spotify:track:2Ljs0yxTfJXpdIFVDNaycj
886	Don't Stop This Feeling	90	298426	6	spotify:track:0WR0jo1I8Qv51XzDrUnKMU
887	Reason for the Season	90	222946	7	spotify:track:6UqbA8McJrw3ZnGLgmtOYp
888	Sitting in the Park	90	199440	8	spotify:track:2ErgktjJ5TTiGgOq8EQpL4
889	It's Like That	90	260346	9	spotify:track:54t702A340w3QaKJoyWgeG
890	Wish That I Could Talk to You	91	176093	1	spotify:track:2n5BCKChXCrv9QoIbkUADA
891	Fool's Paradise	91	149226	2	spotify:track:6tKZbih1sT2ouzr8Atkbrv
892	Only One Can Win	91	184746	3	spotify:track:4BLqx84IpussVxrUGOMLOX
893	I'm Truly Happy	91	171253	4	spotify:track:7zDdrQIYZEQdYDVq3E7ry2
894	Touch Me Jesus	91	218040	5	spotify:track:2IOPB8zS9rwTst4q8lF0A1
895	I Know Myself	91	217600	6	spotify:track:6BnQETIdEsVkiR8u3slj9D
896	Chaos	91	198440	7	spotify:track:1novm6u9E6hIppqldA9rK0
897	So Close	91	179133	8	spotify:track:3MbORAeavotrLCt6xsLx8y
898	I'll Never Be Ashamed	91	193266	9	spotify:track:6eMOtmM9Oay34EhE0cvQ0G
899	How Love Hurts	91	214626	10	spotify:track:5iUNkaWIL2uz1JcTYeDVfy
900	Theme in Search of a Movie	92	247906	1	spotify:track:6u1CQ9PmWGNyvZ2ZiAaHbE
901	Listen Here	92	463000	2	spotify:track:6tg2cXZiQRZgBJJWZ484Of
902	Judie's Theme	92	280773	3	spotify:track:084Ky3umk77aaDXCBVxSEr
903	Sham Time	92	412426	4	spotify:track:6bajHX16WMk2mTpKniQGnH
904	Spanish Bull	92	497733	5	spotify:track:5AhVhTnPItG6nSVeMEVtm4
905	I Don't Want No One but You	92	220800	6	spotify:track:3ic1HYR0z0266feHZuck2v
906	NAIMA - In Memory of John Coltrane	93	575693	1	spotify:track:3RuPAyCxtIHMpQ9cRo46R0
907	A LITTLE QUIET	93	808293	2	spotify:track:1lqlGdpVNwwrLI96WUrqkx
908	Tears of Ole Miss	93	1869213	3	spotify:track:38k2GTEtawE5SCxxbs8br6
909	Planet Claire	94	277640	1	spotify:track:5aC0QmgjYGG8QYgAg06nTk
910	52 Girls	94	216333	2	spotify:track:0hV8cbzJubHKLSFIsBnYUo
911	Dance This Mess Around	94	276560	3	spotify:track:207qLd1ovrqfYVBBDrNMUM
912	Rock Lobster	94	409400	4	spotify:track:2Q5wSOwq6BDSu7sSVMNrtT
913	Lava	94	296506	5	spotify:track:2KXFIFGbqQBoaJFCzchoVt
914	There's a Moon in the Sky (Called the Moon)	94	298226	6	spotify:track:0emtLcWGDr3OaIJNFucyKh
915	Hero Worship	94	248026	7	spotify:track:2CLddd0XVgo7rSBXRNXSkO
916	6060-842	94	172640	8	spotify:track:2uVf0GK5oVAlhMpWl8DTj7
917	Downtown	94	177226	9	spotify:track:3vhgQ5Y8Y8NyHdwhLSNxxL
918	Supernature	95	585374	1	spotify:track:00RHrZB3i6B6PwX30ouZBK
919	Sweet Drums	95	160124	2	spotify:track:3vXiR11nl8WZm2ceSpZ9Vb
920	In The Smoke	95	332250	3	spotify:track:14eng7JPWqbZ3k9EYYcjP4
921	Give Me Love	95	462000	4	spotify:track:2ffCT6Pe2LYriwN2Y5ObIg
922	Love Is Here	95	144000	5	spotify:track:4a0HJgi0U8Fz7My37xfzGp
923	Love Is The Answer	95	351500	6	spotify:track:6Esm0uCiboPWXbCOxE1VFR
924	Showdown, Pts. 1 & 2	96	324880	1	spotify:track:3Pn1HWFDL5tgsF3v9AlHcn
925	Groove with You, Pts. 1 & 2	96	291880	2	spotify:track:5TywrBF82AUQ83pXuMXjXg
926	Ain't Givin' Up No Love	96	283346	3	spotify:track:7eCmOwZxxK5CQxjFvnHvTF
927	Rockin' with Fire, Pts. 1 & 2	96	356933	4	spotify:track:7IZCyphwBfsDSp3ledl6Uu
928	Take Me to the Next Phase, Pts. 1 & 2	96	310760	5	spotify:track:59H2TDkSrXVtQxjcldzpU1
929	Coolin' Me Out, Pts. 1 & 2	96	364160	6	spotify:track:6x0Hj4olOrkhvVQtGRZCRK
930	Fun and Games	96	281173	7	spotify:track:4FFd0kWSjwvsbAOoW4xX1o
931	Love Fever, Pts. 1 & 2	96	299973	8	spotify:track:0JiRxczxF5gtsC3Cm8UaOs
932	Showdown, Pt. 1 - Single Version	96	265080	9	spotify:track:1eVN4s7KUpW3LJaD7nP1yn
933	Groove with You, Pt. 1 - Single Version	96	245573	10	spotify:track:6bNijeKlIGmAinCwy9gBBO
934	Take Me to the Next Phase, Pt. 1 - Single Version	96	256320	11	spotify:track:4gnp7LJvEmzJ17NZjlo7Em
935	Take Me to the Next Phase, Pts. 1 & 2 - Alternate Performance	96	323786	12	spotify:track:3Ttdt2QvUycRe9LcQS04HM
936	Showdown - Rehearsal	96	363173	13	spotify:track:3ZyATCqLkBVTSnlNjEKL49
937	What Can I Say	97	180693	1	spotify:track:4WSbbEjRQ7uE3IT9crL10B
938	Georgia	97	234880	2	spotify:track:428IK8fDAscfRpmavVKJkN
939	Jump Street	97	311733	3	spotify:track:3yB55OOZRmdZ7vVfbMecvT
940	What Do You Want the Girl to Do	97	231386	4	spotify:track:0BlwpvDKimlRj9NRVOfVQb
941	Harbor Lights	97	357586	5	spotify:track:5eZPJFk9QBjBM1I2idumCM
942	Lowdown	97	315640	6	spotify:track:0nlZjTPzW6S9JIESuGfImT
943	It's Over	97	169760	7	spotify:track:290g7LaS5icnIywogzldul
944	Love Me Tomorrow	97	195240	8	spotify:track:0sn0aGPqfKWHjPkcVls0mu
945	Lido Shuffle	97	221613	9	spotify:track:2NtqZmfRIDkXJ2YvY2Kv1F
946	We're All Alone	97	252440	10	spotify:track:26ItBw3OZ9s9d51rNWCYhh
947	What Can I Say - Live Version	97	204560	11	spotify:track:1gPA4ofX3JL3dlHz72Aba1
948	Jump Street - Live Version	97	307000	12	spotify:track:7GcXo45UlKlpi3cRoLzYrp
949	It's Over - Live Version	97	217613	13	spotify:track:7uToHNpoAzWI8ugON9wuyi
950	Voices Inside (Everything Is Everything)	98	205813	1	spotify:track:2FyiqQgoxZYbpgAmQvooGv
951	Je Vous Aime (I Love You)	98	208653	2	spotify:track:36TK7iHHkxoGk4YOb2w7PC
952	I Believe to My Soul	98	228013	3	spotify:track:2USPHdk6yeyJ8K3QltMPka
953	Misty	98	216160	4	spotify:track:2M7XwmvmozYhXNWzth2Uyl
954	Sugar Lee	98	239533	5	spotify:track:4rMY23yxmYRoOAhEgGyEKG
955	Tryin' Times	98	192240	6	spotify:track:1P82RW9ZipnNmsQGmmp5PW
956	Thank You Master (For My Soul)	98	347586	7	spotify:track:7x1Bl4qpsiqa5HXNgM9K3g
957	The Ghetto	98	413773	8	spotify:track:1yeIxOEFmpQ3qlOb2R3g2m
958	To Be Young, Gifted and Black	98	401213	9	spotify:track:6B3H7aue15Ntp6sfQaH7wE
959	A Dream	98	250066	10	spotify:track:7bd5lvkaCsCelCVgVZnnma
960	Buyin' Time	99	215333	1	spotify:track:48jJOedj3eRjWG992syQwH
961	Midnight In Paris	99	239333	2	spotify:track:3Re6yUx3Yt1q9VNQMR0vM5
962	Different Tongues	99	189573	3	spotify:track:7CFjebu4Lpovh2kRIUu1t4
963	Soldier	99	179266	4	spotify:track:564wdeH1Qgnm6rglb5U4AB
964	The Loner	99	254026	5	spotify:track:1Jv5A7JiB8pijVRBf2YpPX
965	Stateline Blues	99	119200	6	spotify:track:2jrqjUrVsz5Yckw8yvCDIt
966	Closer To You	99	214906	7	spotify:track:0MK1f8wYeifOC8QHRrYR39
967	No Me Niegas	99	211626	8	spotify:track:1KWEF5wfOUpzYbT5H1iuto
968	Ring Of Love	99	242266	9	spotify:track:0JLaMk0LCIr0zxoMhl4ClP
969	Circlin'	99	259640	10	spotify:track:0EpVJIKC8F2crm997xtIdl
970	Suite: Judy Blue Eyes - Live	100	33600	1	spotify:track:2gNtYudm4sbBRyWwTWwFVH
971	On the Way Home - Live	100	227800	2	spotify:track:4Nx9CLbcXGNmvZF7FzQJeJ
972	Teach Your Children - Live	100	182106	3	spotify:track:1qwqSlrqKxInbvu69BUaX6
973	Triad - Live	100	414960	4	spotify:track:0qG8bdGPohE6BlxkdUQLAs
974	The Lee Shore - Live	100	268706	5	spotify:track:616oo55F2rXPJobqPV2IjK
975	Chicago - Live	100	190826	6	spotify:track:3tS932CzD7Wv6BBCqXy5JP
976	Right Between the Eyes - Live	100	216666	7	spotify:track:2d0l1nUvvECLlQOCHTHHG8
977	Cowgirl in the Sand - Live	100	238706	8	spotify:track:2zdrfzrbZC7i0JM19QmGwj
978	Don't Let It Bring You Down - Live	100	210600	9	spotify:track:3oOPIrRUrCtBxnpLbxCSHY
979	49 Bye-Byes / America's Children - Live	100	395026	10	spotify:track:5mtXENaln3aSO35UoodBDs
980	Love the One You're With - Live	100	205000	11	spotify:track:5ygsTPV4LmiPMfeONhdcWx
981	King Midas in Reverse - Live	100	223266	12	spotify:track:41WDVYmXv6ybPR1RrIhFcs
982	Laughing - Live	100	216133	13	spotify:track:2KKDQoQmo6cOtAkYhof0lo
983	Black Queen - Live	100	405200	14	spotify:track:6lbiInIt9bUt7NQfmYqb5G
984	Medley: The Loner, Cinnamon Girl, Down by the River - Live	100	580666	15	spotify:track:2eOjdOOIajxsonr2arkfie
985	Pre-Road Downs - Live	100	184106	16	spotify:track:4O4AepGVUhNICPeiMWLHt4
986	Long Time Gone - Live	100	358466	17	spotify:track:13HTkVYbfuk9kcJ5TptxO5
987	Southern Man - Live	100	825026	18	spotify:track:0hssLSXpq33Uqb2YZRECcR
988	Ohio - Live	100	214133	19	spotify:track:4oC11US2tUMb9WaxoniIiR
989	Carry On - Live	100	859240	20	spotify:track:31tmZRzAOSOMj6FBYlDlVr
990	Find the Cost of Freedom - Live	100	141200	21	spotify:track:7t2teISdD7lzpVDu2IRKRM
991	Nubian Lady - 1972	101	398533	1	spotify:track:32I3HYvTbzDgGJlGCJ7WTM
992	Lowland Lullabye	101	143200	2	spotify:track:5QB5CPZPd2s9AotcwR9v6H
993	Hey Jude	101	541453	3	spotify:track:7hTV4bfDo7hHXySziDrLAS
994	Jungle Plum - 1972	101	273640	4	spotify:track:5KY89K6FUndwpoFTE5SKUL
995	Poor Fisherman - 1972	101	221226	5	spotify:track:7xNJN9MbWpqyCGHfQTehdt
996	African Song	101	230573	6	spotify:track:5dz3kbLRx6MXx27RqCBshU
997	Queen of the Night	101	133666	7	spotify:track:25dtXn0cnIioFKX0vDf9nZ
998	Bellow Yellow Bell	101	307760	8	spotify:track:1rhfK5ZLqyjrhmJCKqtiHu
999	Your Wish Is My Command	102	359933	1	spotify:track:3qvT0eslNuuOCO56vsgzhu
1000	Something About That Woman	102	304293	2	spotify:track:63H7c9CeBy1rNgeOLIaEMc
1001	I Want to Hold Your Hand	102	297346	3	spotify:track:4KXdq1eu3fv6n2rP6xfUHC
1002	Special	102	309973	4	spotify:track:5rXFCxoVOugFGKFA1CPMXq
1003	Magic Moments	102	352280	5	spotify:track:5WPa8X4pRJ1DvSiBcXQ94L
1004	The Urban Man	102	265493	6	spotify:track:6BuH8eTIGCRw1QNBA20hFc
1005	Ill Be Standing By	102	274653	7	spotify:track:1qoouQEA7eUx3iQOW1FplJ
1006	The Songwriter	102	270933	8	spotify:track:7HdpcJHptSp2oIADfDJOqT
1007	I Want to Hold Your Hand - Remix	102	294666	9	spotify:track:5mMSICbpclWrLRUgyzNID0
1008	I Want to Hold Your Hand - Radio Mix	102	236306	10	spotify:track:6aMNaB5O3qBUjq0C5ASRMm
1009	Your Wish Is My Command - Radio Mix	102	263040	11	spotify:track:4nJpEXkkW2RATRkMNE42Wo
1010	Stella	103	198786	1	spotify:track:0tpR1g83f8WauGkXzei57f
1011	This Is Your Life	103	253773	2	spotify:track:5mhFSK4vbY7h3E3il4va2c
1012	Wouldn't You Like to See	103	221613	3	spotify:track:1xMHQcdX9p6SRBpTrtHjy8
1013	Listen	103	240066	4	spotify:track:51H0q9yZYnze5CxqjvgmE1
1014	Say You Love Me	103	276320	5	spotify:track:70sNl1pNLgJErv3Dm1pGyw
1015	Captain Connors	103	197573	6	spotify:track:04qGyF32wJ4ISdaGQoHhE8
1016	You Make Me Feel Brand New	103	356613	7	spotify:track:6RXBbl9rbfoSqOcQMZIn4p
1017	Butterfly	103	299080	8	spotify:track:6xdi74FISt6WNJ0rJKQGVo
1018	The Creator Has a Master Plan	103	478520	9	spotify:track:2zWRN7UXCHAE4LAN4Fx5Ny
1019	Captain Connors - 12" Version	103	443400	10	spotify:track:0gMt0gzm8ywLBZfr8zXxFQ
1020	Y.M.C.A.	104	286666	1	spotify:track:4YOJFyjqh8eAcbKFfv88mV
1021	The Women	104	353800	2	spotify:track:6HKNhAJgqTMgHtA7NMtaBO
1022	I'm A Cruiser	104	423373	3	spotify:track:50sFeIzCZN7Ro7bqdMtYcI
1023	Hot Cop	104	379760	4	spotify:track:2ag3r6nfTxSN1Cot5i7hsz
1024	My Roomate	104	321426	5	spotify:track:7lQbkXrJOs1uXpmgx4e6tC
1025	Ups And Downs	104	380133	6	spotify:track:1CqVCIqhAtuQPwdv1cZVbS
1026	And the Moon's Out Tonight	105	201844	1	spotify:track:08uqoJs4xI68IqjmZprGEM
1027	Far Away	105	293960	2	spotify:track:1JoiGr2uER2mM08IAqmEct
1028	Closely	105	323266	3	spotify:track:5JhSeCpGck76MqYoD3ZesX
1029	Vanilla Gorilla	105	294416	4	spotify:track:6Doy8sPIFZOOenLVISzIVC
1030	I'm Gonna Take Care of Everything	105	209784	5	spotify:track:2oQrbdXoqN1nXxWNpMkLA9
1031	I Want to Love You	105	184626	6	spotify:track:4cIqCmUi3kHzs8FBjJFdbx
1032	Cheatin'	105	223625	7	spotify:track:0VH9aI3pqAkwYwowKeSS0a
1033	It's All for the Show	105	224917	8	spotify:track:5kkGAjWcbR7uZjjodaiPvg
1034	That's the Way Things Are	105	332809	9	spotify:track:4ty5VCikT8RPaPiPTwqqvb
1035	Waiting	106	243266	1	spotify:track:3jarONOz6PdAJ7OIMtF3Pu
1036	Evil Ways	106	237040	2	spotify:track:4JFG8RLpi8m0xhjYmstb38
1037	Shades of Time	106	193760	3	spotify:track:0e0rgt92kTiEsyrTQ4CaBU
1038	Savor	106	167266	4	spotify:track:74a4giRdx5noa4aDsRgSgC
1039	Jingo	106	260906	5	spotify:track:1LKrdF0qlUgHDix7cHqWQg
1040	Persuasion	106	152773	6	spotify:track:0mpoy1FtK8svn9jFPPtOwS
1041	Treat	106	283360	7	spotify:track:476iPKiGJEafkAR7l7JepP
1042	You Just Don't Care	106	274200	8	spotify:track:2Q14NZY6HOi9Cnx2D8vjUH
1043	Soul Sacrifice	106	397133	9	spotify:track:5iZcqTxUmsIjxBNek2Yzxt
1044	Thunderbird - 2005 Remaster	107	250186	1	spotify:track:3BMhtHTzh510RHekQ5YT3B
1045	Jailhouse Rock - 2005 Remaster	107	115973	2	spotify:track:1MRidycoVNBWpBTOkD84rX
1046	Backdoor Medley: Backdoor Love Affair / Mellow Down Easy / Backdoor Love Affair No. 2 / Long Distance Boogie - 2005 Remaster	107	591440	3	spotify:track:1fzYBywYk73PKafmLQk8tr
1047	Nasty Dogs and Funky Kings - 2005 Remaster	107	162346	4	spotify:track:2nOkKjTkLvKeebQEHUB3Hi
1048	Blue Jean Blues - 2005 Remaster	107	282626	5	spotify:track:6Gyk7ZHfFWo3d8U7poUEPs
1049	Balinese - 2005 Remaster	107	156733	6	spotify:track:1r6wqKNFYQbookhQtQz0uW
1050	Mexican Blackbird - 2005 Remaster	107	185626	7	spotify:track:7rbm9b3fLOKCCBqNFVdkWV
1051	Heard It on the X - 2005 Remaster	107	144813	8	spotify:track:4ik8VdladXfzpN1jPU7rDu
1052	Tush - 2006 Remaster	107	137933	9	spotify:track:6zGDIDjfDkPyNxrEERO3XG
1053	Heard It on the X - Live	107	156080	10	spotify:track:3dbkLFTM2Kp45gqzgV3nWH
1054	Jailhouse Rock - Live	107	112720	11	spotify:track:6iSYqSHzOu9GAfkgo03ADo
1055	Tush - Live	107	222866	12	spotify:track:1Q6abjMmJNuJIhBGTG4u9l
1056	I Don't Care Anymore - 2016 Remaster	108	303880	1	spotify:track:65aiZMNuOKvP34ZK5XQmV8
1057	I Cannot Believe It's True - 2016 Remaster	108	314733	2	spotify:track:5hz4dbCtCZSAbjuM31Fh28
1058	Like China - 2016 Remaster	108	308693	3	spotify:track:3iwy6SFYKp1g6HfVr9oEAI
1059	Do You Know, Do You Care? - 2016 Remaster	108	298213	4	spotify:track:5lByBSHBTVvhz6rAEkmrc6
1060	You Can't Hurry Love - 2016 Remaster	108	174080	5	spotify:track:0VGyBqMFAJFlSAikuqMUfa
1061	It Don't Matter to Me - 2016 Remaster	108	257320	6	spotify:track:4vsJDV7rgWdW71lPanDt2L
1062	Thru These Walls - 2016 Remaster	108	304986	7	spotify:track:071E5EnVXEXQTZLywihxXV
1063	Don't Let Him Steal Your Heart Away - 2016 Remaster	108	285320	8	spotify:track:5jzXPJKT7dbUXfjp4dowb6
1064	The West Side - 2016 Remaster	108	302253	9	spotify:track:5zp1WxYQYX2mHm9ZVPx1mz
1065	Why Can't It Wait 'Til Morning - 2016 Remaster	108	189706	10	spotify:track:0Y9Elwh7vvFS9UrBsYQ4D0
1066	Puppy Love	109	184973	1	spotify:track:7HWH4kGaHR3ZwKNFPT4dSW
1067	Hey Girl	109	191146	2	spotify:track:5FVoXrVOxYfoKYWK8C4rdA
1068	Going Going Gone	109	128773	3	spotify:track:095xUBdl9sBzpY6sIDZD3X
1069	I've Got Plans For You	109	135066	4	spotify:track:53edj5HZthJlMBuwLs50nU
1070	Promise Me	109	212293	5	spotify:track:3YEnjmNFFe2WOpjJCO3iRn
1071	Let My People Go	109	189426	6	spotify:track:5FmYUbl4Idqb0YihbnisRs
1072	All I Have To Do Is Dream	109	189826	7	spotify:track:56ykUSpGpZnGQLGStE3weF
1073	Hey There, Lonely Girl	109	209400	8	spotify:track:1PDQojW6QMbQUAtmg9BmpW
1074	Big Man	109	156453	9	spotify:track:2IlWfiHpHMgoNFMDfygKxV
1075	Love Me	109	163773	10	spotify:track:3zCsnj7PFGgAPqX8Ldep1P
1076	This Guy's In Love With You	109	196733	11	spotify:track:4YOxUFE2K5AYzBXnsYAbJh
1077	Amor	110	172760	1	spotify:track:0yzzbkMrWPfW5FcBWSdSMl
1078	Caminito	110	157973	2	spotify:track:2i9jUBJS6RWr1UhyR9mxft
1079	Cuando Vuelva a Tu Lado	110	159733	3	spotify:track:5j2tKp2lqR5a5V8ArWOEDe
1080	Di Que No Es Verdad	110	170733	4	spotify:track:4hcS1eJzODgZyKnVJlmtj4
1081	Historia de un Amor	110	150866	5	spotify:track:47haQcqBOue2RAsVXER52f
1082	La Última Noche	110	173600	6	spotify:track:0UZNlaEKmed6PbjOmTqsnf
1083	Media Vuelta	110	148293	7	spotify:track:0LVLuqyQrXViI9OzDIVxbw
1084	Noche de Ronda	110	198973	8	spotify:track:68wE8jzo7TjQVpuO0dovNR
1085	Nosotros	110	164000	9	spotify:track:5l2lkNFAnc1caHIuQLgvE7
1086	Piel Canela	110	137560	10	spotify:track:5NYQS0JkqRRfhlliy0P3Dv
1087	Sabor a Mí	110	168400	11	spotify:track:0Hja9zlVQHC768PsPjWscW
1088	Y...	110	166640	12	spotify:track:2BPPkdy7BJ2VQPrZMeaGkN
1089	Daylight	111	447680	1	spotify:track:4doXgewLPFbx3W5WAcDITC
1090	Should I Stay/I Won't Let You Go	111	304240	2	spotify:track:7ubFAre2Q11VBvgTWKLePm
1091	Something Like a Dream	111	236120	3	spotify:track:5mBqj0JPlRZem9aNrxGOEY
1092	Let Me Down Easy	111	231853	4	spotify:track:2k79bQrcrdmxH6V1ds0toN
1093	How About Me	111	200613	5	spotify:track:4xP0rflLIUsrDjGKvbzlPI
1094	Can't Find No Love	111	228413	6	spotify:track:1pR0Q6my05e5yl0Gv4ZuOY
1095	Falling In Love	111	210946	7	spotify:track:3IerxpYmrJlPEGKzHC5wYF
1096	After All This Time	111	226826	8	spotify:track:7lPPIR7SWaNcSU8e69h3hM
1097	Daylight - Single Version	111	232626	9	spotify:track:2PyuZZBH1Lmhz01lksdLfO
1098	Should I Stay - 7" Single	111	221386	10	spotify:track:0RagMAWjIalreJCmuBowmI
1099	I Want To Take You Higher	112	321386	1	spotify:track:4aX7pY8AV7oKCcCB5Sfqrs
1100	Everybody Is a Star - single master	112	184160	2	spotify:track:4NXNW4eqf9JXLhWFRjwFh9
1101	Stand!	112	186973	3	spotify:track:66W3GpbqpSD5xR4PGAvu0H
1102	Life	112	178360	4	spotify:track:0aI5KoqucjqXjPi7bFENFQ
1103	Fun	112	141346	5	spotify:track:70AM9U6VMFtSyjCYc34srx
1104	You Can Make It If You Try	112	218120	6	spotify:track:5lggRenRs2B0AygsiBYJPM
1105	Dance to the Music	112	177586	7	spotify:track:6q701mead1QEHZdRiTsGCe
1106	Everyday People	112	140213	8	spotify:track:7vwpuSzl2ME9NkpZUzw8Wj
1107	Hot Fun in the Summertime	112	157040	9	spotify:track:4t6NQkpUmvpvLDCkl3XuwA
1108	M'Lady	112	164533	10	spotify:track:3NQxA1W7mPHFZMvMPMao17
1109	Sing A Simple Song	112	234346	11	spotify:track:15kqdKUfkwL6Cug9TDHtGC
1110	Thank You (Falettinme Be Mice Elf Agin) - Single Version	112	291320	12	spotify:track:74iQ3gahRTOGc19bYadBE3
1111	When the Earth Moves Again	113	235413	1	spotify:track:6YhrDBmLhwAgnpAuTOv9qG
1112	Feel so Good	113	277106	2	spotify:track:0QdNHJoXVdzENkvYUiy2zm
1113	Crazy Miranda	113	204106	3	spotify:track:1fYio3yj4JWFg0cO5HH2i6
1114	Pretty As You Feel	113	269586	4	spotify:track:7Caz24hQ36zafY6U1HoOCZ
1115	Wild Turkey	113	285133	5	spotify:track:687DGqJ9sCftIsGdJf7UBe
1116	Law Man	113	161920	6	spotify:track:6gXis03CGDbixZauG6ADpY
1117	Rock and Roll Island	113	224733	7	spotify:track:1WrPm64dU8i0ZPbXU2hr0U
1118	Third Week in the Chelsea	113	275160	8	spotify:track:5t5bV1HLuULF0bX1F6MfCv
1119	Never Argue with a German If You're Tired or European Song	113	271880	9	spotify:track:76PkxH0BzrpZTO0Ot6GNKo
1120	Thunk	113	179306	10	spotify:track:2YeJkrGnnkvRQEJIWpYsR8
1121	War Movie	113	283040	11	spotify:track:5dVnZXj22fpqwSpThZKZyg
1122	Pretty as You Feel - Single Edit	113	189306	12	spotify:track:04tgOx1EJSNhRZg3G4wIrH
1123	Feel so Good - Extended Version	113	564653	13	spotify:track:40n9fanTXn2CJBR00IhNU7
1124	Them Changes	114	199933	1	spotify:track:0WoOHWp82bWaFBwrox1oGA
1125	I Still Love You, Anyway	114	252986	2	spotify:track:5idolehtcFFPTj9QtoMHCP
1126	Heart's Delight	114	247026	3	spotify:track:23qmtp3MGR0nAShznVNpaR
1127	Dreams	114	291426	4	spotify:track:1ovcNC9b3bnQOOLpAisZ7C
1128	Down By The River	114	380453	5	spotify:track:6zYQOQjcQlv5zIJ17q65LG
1129	Memphis Train	114	175413	6	spotify:track:0ILO4nAdxzfXiVgpWL68Gx
1130	Paul B. Allen, Omaha, Nebraska	114	331800	7	spotify:track:0kvjf7XlH03u8Pt3Mid9pT
1131	Your Feeling Is Mine	114	133706	8	spotify:track:7ty0RM90j9EvVh7vvFbgug
1132	I've Just Begun to Love You	115	395039	1	spotify:track:4uAmOz06dbppQuq4wyWd7g
1133	Groove Control	115	297959	2	spotify:track:1Q2jdTqrmhEecV0KUDvZJm
1134	Take Another Look At Love	115	266880	3	spotify:track:0gCoElfGzbK1ffSzshA6A9
1135	Day and Night	115	368373	4	spotify:track:4pvoqUGgQ1OcWLDOPqALOA
1136	Do Me Right	115	369012	5	spotify:track:3eXrVQcGHcDIEj7CiWl82y
1137	Something to Remember	115	287400	6	spotify:track:2UAp9LNsZHALZtCQapAA9d
1138	Adventures in the Land of Music	115	258892	7	spotify:track:2dq0kUm6b0JOBMvsu6N2j9
1139	Ice Breaker	115	317132	8	spotify:track:1lvcAbRFCNWhG6crM7tRFA
1140	I've Just Begun to Love You - Live	115	422052	9	spotify:track:2BUl1Pb8nwr7wuBxyTUUkW
1141	Paper Sun	116	255173	1	spotify:track:2KV3KWhOvBM8QTZtD4P30w
1142	Heaven Is In Your Mind	116	256666	2	spotify:track:4CTmAg0sDCV77DJOCYxOQJ
1143	No Face, No Name, No Number	116	212000	3	spotify:track:70RYz9ucCqZfF24p85UICM
1144	Coloured Rain	116	163506	4	spotify:track:3QSA1feDoRbsbnHkLUCIDT
1145	Smiling Phases	116	160506	5	spotify:track:6FRNHgk00YB55I89jHoicJ
1146	Hole In My Shoe	116	182160	6	spotify:track:1tlCqRUjsamtwBOF87veEv
1147	Medicated Goo	116	215000	7	spotify:track:1CVNulGvr9nZA0wnYHALJn
1148	Fourty Thousand Headman	116	195333	8	spotify:track:4YYo3TpZgIB0MkHkcbXvC4
1149	Feelin' Alright	116	258173	9	spotify:track:1yF2tJM1eeMlyTc1OoM48G
1150	Shanghai Noodle Factory	116	306000	10	spotify:track:5eN2AXd13RMd1vImaApn8e
1151	Dear Mr. Fantasy	116	340493	11	spotify:track:4bFEBUqX9DupWFW2ecZnoU
1152	Military Madness	117	176666	1	spotify:track:6n3Wk44F3ZZwts8OAyB2zK
1153	Better Days	117	230173	2	spotify:track:28s5iRbX62GZG2ReZTLKDa
1154	Wounded Bird	117	133066	3	spotify:track:128mmF3MICOnunXnvjTLow
1155	I Used to Be a King	117	281893	4	spotify:track:4GwREGuYf5RH8vfnk7ntZ9
1156	Be Yourself	117	189106	5	spotify:track:2lzfm9Ov5akVvr0vVgmQ1g
1157	Simple Man	117	138133	6	spotify:track:44eBSYvFSr1KGv4ZF5MahK
1158	Man in the Mirror	117	168960	7	spotify:track:7uErhJVpmdTGxZNI2xy2lS
1159	There's Only One	117	241373	8	spotify:track:7zBjkTKA30atLdFnKDZMGV
1160	Sleep Song	117	180160	9	spotify:track:0Z7XX7XRQ5VZm6aG6qmwcT
1161	Chicago	117	171440	10	spotify:track:4wBi9ogKThsbFUvVJxjhK2
1162	We Can Change the World	117	66560	11	spotify:track:4vGhqQ09rz7qWgNWBdoHZk
1163	Love Has Brought Me Around - 2019 Remaster	118	164933	1	spotify:track:3pBT9fBuv5xBPMS1itj6p9
1164	You've Got a Friend - 2019 Remaster	118	268866	2	spotify:track:6zV8IpLvw0tkRSVCFQJB1y
1165	Places in My Past - 2019 Remaster	118	121920	3	spotify:track:6LpSMfQTSQBxWSufEnxMgA
1166	Riding on a Railroad - 2019 Remaster	118	162986	4	spotify:track:4fzDRFNKcSsehwI85YS5pK
1167	Soldiers - 2019 Remaster	118	75240	5	spotify:track:3f3Nk2e5tLq3zCR55hNcfN
1168	Mud Slide Slim - 2019 Remaster	118	319213	6	spotify:track:65JIOfuq2c9GBH4kBY7BYF
1169	Hey Mister, That's Me up on the Jukebox - 2019 Remaster	118	228093	7	spotify:track:5ef8E6XIpIScVQ4OqjY40Q
1170	You Can Close Your Eyes - 2019 Remaster	118	149263	8	spotify:track:2cNELi1hzt3eWwYHYkJKub
1171	Machine Gun Kelly - 2019 Remaster	118	157163	9	spotify:track:0XMEFaM6o1Kzkm4ps2LnQU
1172	Long Ago and Far Away - 2019 Remaster	118	140973	10	spotify:track:59mPadX6sKWripbp54vDwk
1173	Let Me Ride - 2019 Remaster	118	164133	11	spotify:track:095LP9En9jWNJ9ETwUKnOP
1174	Highway Song - 2019 Remaster	118	233333	12	spotify:track:0t1pyyO6nXRkCyzekG5SkO
1175	Isn't It Nice to Be Home Again - 2019 Remaster	118	55186	13	spotify:track:3RkQm4ihyCPByfNC4RVtd1
1176	Got to Be Real	119	307946	1	spotify:track:58r4JuwHhXLAkttkaUZfLw
1177	All My Lovin'	119	291213	2	spotify:track:6IJogXnm7R8BEdwAnRN1Zk
1178	Star Love	119	444120	3	spotify:track:3Qf3MFEgl1laKe49NAXYKq
1179	Come in from the Rain	119	212400	4	spotify:track:77L0v6Id9JIylfAaukcA67
1180	You Saved My Day	119	267106	5	spotify:track:3U4hpMxbTtPaxwBIqFkjlG
1181	Give My Love to You	119	214173	6	spotify:track:71kpxQFRVQPa0LC2vpdDOG
1182	Nothing You Say	119	238946	7	spotify:track:0kt0vfJueyA91S8snItCwB
1183	You're the One	119	250186	8	spotify:track:34JCVaRxldqEkJUBJtsIte
1184	Daybreak (Storybook Children)	119	226320	9	spotify:track:5VgHd81t0v4XZBfhkd1UU6
1185	Got to Be Real - Single Version	119	223173	10	spotify:track:3eudp9ZxZAGaDBOuWGrW2D
1186	You Saved My Day - Special 12" Version	119	333333	11	spotify:track:7xHt8KRkw5NExtS2YGhYr6
1187	Feelin' Alright	120	250840	1	spotify:track:0Jl5bIEve3A4axcjY3EgDZ
1188	Bye Bye Blackbird	120	207560	2	spotify:track:7pmvMwKid6OwEB707Uy61a
1189	Change In Louise	120	202973	3	spotify:track:5plXVVsRnChDtVZNglAw0c
1190	Marjorine - Single Version	120	158386	4	spotify:track:7vZhz8guiUPEGwcNQEHuey
1191	Just Like A Woman	120	317800	5	spotify:track:63VYIOuzQjn8gWYQvVnzrs
1192	Do I Still Figure In Your Life?	120	239506	6	spotify:track:1krIydpftRXEKhxKBdl4uB
1193	Sandpaper Cadillac	120	196560	7	spotify:track:0pHoqYVtzpN7aKTj2QnccV
1194	Don't Let Me Be Misunderstood	120	281360	8	spotify:track:6iJubeWHEKFJUs8iVCYThj
1195	With A Little Help From My Friends	120	312173	9	spotify:track:0YZ3J8xzGwLOg4yEgST1YK
1196	I Shall Be Released	120	275960	10	spotify:track:6KSAUAVSEofmfVQyf81Lrp
1197	The New Age Of Lily - Single Version	120	135373	11	spotify:track:3qm4CQqeUTCYR0mPBTXNfg
1198	Something's Coming On - Single Version	120	135266	12	spotify:track:3NF8hBcFBk5uvxg2MUnpY1
1199	Lovely Day	121	254560	1	spotify:track:0bRXwKfigvpKZUurwqAlEh
1200	I Want to Spend the Night	121	221133	2	spotify:track:5O9oIsN5r0MKWuUrjWSa7W
1201	Lovely Night for Dancing	121	349800	3	spotify:track:6Zxubc85CUm7fFP9HDyAu3
1202	Then You Smile at Me	121	293666	4	spotify:track:1zM1PgepMQsQbyeHS6HJDC
1203	She Wants To (Get on Down)	121	195040	5	spotify:track:2JR9VREjq9ZWkKwqjHDaya
1204	It Ain't Because of Me Baby	121	210266	6	spotify:track:1byRaJhSlEM60CWYGxsATq
1205	Tender Things	121	300426	7	spotify:track:20t3Wchb3cqS4tYPmWumuB
1206	Wintertime	121	196666	8	spotify:track:2mLWmIuU2xLbH5CfFMHhzn
1207	Let Me Be the One You Need	121	284293	9	spotify:track:22beaVB5KBAffAVT6NhpJ2
1208	Mercy, Mercy, Mercy	122	396240	1	spotify:track:2tY1q8dNd5trWXWJy0YU9j
1209	Respect	122	136786	2	spotify:track:0bduvCwwkluLbFhnsHIcL1
1210	Funky Broadway	122	398533	3	spotify:track:5Q6qwv0GtGJJ1kxIoOy0KM
1211	T - Bone Steak	122	441933	4	spotify:track:5eg5HuRbKp0Nb8uFz9cnAp
1212	Get Out Of My Life	122	536000	5	spotify:track:65ctpkHMMXt7OQiKM7CVjt
1213	All Day Music	123	248200	1	spotify:track:1HdQSzMMb1AGOrYCOuvIEF
1214	Get Down	123	269013	2	spotify:track:5NevOssdpCsiwJOR016GLg
1215	That's What Love Will Do	123	435960	3	spotify:track:09KiSTosShYiOhg46Q8taE
1216	There Must Be A Reason	123	195040	4	spotify:track:1tPi7YplmgAbutX4OLcbBT
1217	Nappy Head (Theme From "Ghetto Man")	123	366226	5	spotify:track:2n4sCzwOlziA12FSTs2tRZ
1218	Slippin' Into Darkness	123	419466	6	spotify:track:1YeDoUncykU6ECk3LclRYM
1219	Baby Brother	123	460066	7	spotify:track:2Kgd6pRwEdRO3PUqyLe9HK
1220	Supernatural Thing, Pt. 1	124	251560	1	spotify:track:62dhSmROhppvuWyeCeC730
1221	Supernatural Thing, Pt. 2	124	194666	2	spotify:track:5ZvtC3XVHMJaKe9e4HSGTB
1222	You're Lovin' Ain't Good Enough	124	300440	3	spotify:track:00GTgXHoNvqeJ0xIAIx4cW
1223	Drop My Heart Off	124	257426	4	spotify:track:1p2lEkm7lntBT2fRB7LlxP
1224	Extra - Extra	124	228666	5	spotify:track:4WVFW4K3JWfvV8RW3eqk62
1225	Do It in the Name of Love	124	260666	6	spotify:track:6MMOlhXeLRkGOq1M2BH4tA
1226	Happiness Is Where You Find It	124	215506	7	spotify:track:0sCCbkmETW3d8f9EBiPKM7
1227	Do You Wanna Do a Thing	124	264560	8	spotify:track:7aWrN0RBQZyzAnW7zqrxGP
1228	Imagination	124	218240	9	spotify:track:1zElJsWDI8C6Ksi8NHikrM
1229	What Do You Want Me to Do	124	197826	10	spotify:track:0hK9bX6gtaeUzdZzjU2yyg
1230	Wipe Out	125	155653	1	spotify:track:1Nhrdk3uJ5ZoAHn7D5UKSf
1231	Gremmie	125	157053	2	spotify:track:1nnIFdhh46OIosaSQs4Zsm
1232	Night Lamp	125	144693	3	spotify:track:1kQk0328MRO9Ku7WWTn9n5
1233	Dig	125	193266	4	spotify:track:51qawHWmKUXw8FkLXwsS9G
1234	Ho Dads	125	153760	5	spotify:track:3WTtSWhn3UuOdqZZcsh62O
1235	Haleiwa	125	161253	6	spotify:track:3dJmyIQKzeWPhL0ZveQiq4
1236	Surf Rockin'	125	126053	7	spotify:track:7u5LCHOQh3JXN1uZhGfBmG
1237	Maile	125	142946	8	spotify:track:6M2oGlwed72SqJvbRvw7JI
1238	Hooked	125	146906	9	spotify:track:2ZCouKdmrQG07v6QDPHIqS
1239	Pupukea	125	159266	10	spotify:track:71mBwtqrTL4yMyVWsM5u2B
1240	Tonight	126	370026	1	spotify:track:5BmmCEPNTFmmJ8hsIByMGb
1241	Keep On Lovin' Me	126	349133	2	spotify:track:3SiUv5vf79EuP0VjIZJ9A2
1242	Love for Love	126	263160	3	spotify:track:5QhsSY5GDveLoz1zuAaf06
1243	This Time	126	327173	4	spotify:track:2wNCgKbz0PNDxu6pF89p8u
1244	Had It Not Been for You	126	251093	5	spotify:track:2UKutx2wihkUR60huuoodb
1245	Try It Again	126	227173	6	spotify:track:1THilC57m4PLya2gW8WZo7
1246	Do They Turn You On	126	318360	7	spotify:track:0HmLZ81wEiZll5vCzATIqg
1247	Keep Your Love Around	126	247106	8	spotify:track:32bDL81WoE9KCh7UjLvWhT
1248	Lay It On Me	126	234880	9	spotify:track:28XK9z09a5edi65eW81mse
1249	Lovin' Is Really My Game - Live	127	350133	1	spotify:track:07AquLuknA60N7ZTGunC6a
1250	Tonight Is the Night - Live	127	498866	2	spotify:track:4vzcQG9LnS00DR6s2fSS3j
1251	A Song for You - Live	127	457293	3	spotify:track:0TckoxlUfRkiDHLrLzZ3Aw
1252	Medley: Clean up Woman / Pillow Talk / You Got the Love / Mr. Melody / Midnight at the Oasis / Me and Mrs. Jones / You Are My Sunshine / Let's Get Married Today - Live	127	715573	4	spotify:track:3QfZmcvUqs68LczTglzIZ1
1253	You Can't See for Lookin' - Live	127	348733	5	spotify:track:1qM8NHToA1ObTPMEVI7Yy8
1254	Where Is the Love - Live	127	257600	6	spotify:track:7JsfB9CCfkqHo4FXRTpX5t
1255	Rock Rock (Till You Drop)	128	234753	1	spotify:track:6q6p7K0vN4aKm6kXL0MhnP
1256	Photograph	128	247962	2	spotify:track:6ZfnaOLNfOYRsGKoS2EWDO
1257	Stagefright	128	224848	3	spotify:track:03Iion9ZYM36Yj7ConDwSA
1258	Too Late For Love	128	266728	4	spotify:track:0oQV0kZorTu9fYURkuKYq8
1259	Die Hard The Hunter	128	375866	5	spotify:track:3KIZVtprnLV6ExPSB8ylVa
1260	Foolin'	128	274117	6	spotify:track:2ABEq4lPEzovuTH7lu3g2a
1261	Rock Of Ages	128	247828	7	spotify:track:2AmEv442DGwSxMGZ9XEvBA
1262	Comin' Under Fire	128	254501	8	spotify:track:1lfGdcQJ2GLJsPftChSBmZ
1263	Action Not Words	128	228592	9	spotify:track:2XIbNJT5bb1AgDcChFh4hc
1264	Billy's Got A Gun	128	356360	10	spotify:track:2BqRD65Ajw9QBAmlU2JC0d
1265	Rock Rock (Till You Drop) - Live At The LA Forum, USA / 1983	128	255305	1	spotify:track:3zeNwYx3IJL7P5UY5U1N1H
1266	Rock Brigade - Live At The LA Forum, USA / 1983	128	205413	2	spotify:track:1xsqduGdQy9sP06IZuw8fw
1267	High 'N' Dry (Saturday Night) - Live At The LA Forum, USA / 1983	128	202373	3	spotify:track:2afqHkUzWNimzqsCgjbaBv
1268	Another Hit And Run - Live At The LA Forum, USA / 1983	128	373560	4	spotify:track:5sUOjsdxg8gPxgTMUHPyNB
1269	Billy's Got A Gun - Live At The LA Forum, USA / 1983	128	283306	5	spotify:track:0hQOA69Kkbqgx4gmd70L8r
1270	Mirror Mirror (Look Into My Eyes) - Live At The LA Forum, USA / 1983	128	264173	6	spotify:track:2P9Z1oBOL2A60Oftw3JX3E
1271	Foolin' - Live At The LA Forum, USA / 1983	128	298773	7	spotify:track:1yNp6g93KNFd8MnYN8QBAh
1272	Photograph - Live At The LA Forum, USA / 1983	128	243160	8	spotify:track:3E9FvAWOuByxkatUiohvb3
1273	Rock Of Ages - Live At The LA Forum, USA / 1983	128	293266	9	spotify:track:0MBPCHbgKzAA12c3gZaFpG
1274	Bringin' On The Heartbreak - Live At The LA Forum, USA / 1983	128	245826	10	spotify:track:1y0urCvWjpyfdPwjiasKGn
1275	Switch 625 - Live At The LA Forum, USA / 1983	128	203240	11	spotify:track:1lo5pH6f6TLiYana5WtD1e
1276	Let It Go - Live At The LA Forum, USA / 1983	128	355520	12	spotify:track:2NYPzgCRQmtBO6p014spVp
1277	Wasted - Live At The LA Forum, USA / 1983	128	355413	13	spotify:track:6JkhHwQldLwWF3JO9XeW9X
1278	Stagefright - Live At The LA Forum, USA / 1983	128	295333	14	spotify:track:29yD4NVjbvaam9F1tpZo1p
1279	Travellin' Band - Live At The LA Forum, USA / 1983	128	367624	15	spotify:track:1KgpPZNPui3APcGOnxyBvA
1280	Fingertips Pts. 1 & 2 - Live At The Regal Theater, Chicago/1962	129	397560	1	spotify:track:5t2zRk2V4MiibvOfVEvycg
1281	Soul Bongo - Live At The Regal Theater, Chicago/1962	129	181653	2	spotify:track:20NKzLAZZDeywFXysSRc3m
1282	La La La La La - Live At The Regal Theater, Chicago/1962	129	151333	3	spotify:track:2Z9THVFj60Lbch7rBZ7CH9
1283	(I'm Afraid) The Masquerade Is Over - Live At The Regal Theater, Chicago/1962	129	313440	4	spotify:track:63MnFlg6MIxWYyUUxIBC5M
1284	Hallelujah (I Love Her So) - Live At The Regal Theater, Chicago/1962	129	168520	5	spotify:track:7A6hQocnBM7XmwSytog20X
1285	Drown In My Own Tears - Live At The Regal Theater, Chicago/1962	129	203813	6	spotify:track:3P5DUsN3G7jy90J8OYk7IS
1286	Don't You Know - Live At The Regal Theater, Chicago/1962	129	198680	7	spotify:track:5xSlmunw5GPjmiFtZfbUSv
1287	Always There	130	309933	1	spotify:track:58LtDMwWRMF7hML24Jc1ie
1288	Keep That Same Old Feeling	130	313160	2	spotify:track:3GJXK80eIzvmsmof5uwZN5
1289	Together	130	223973	3	spotify:track:7zQsfB8ERutAf32oVWqv9e
1290	Pisces	130	233306	4	spotify:track:7jwK70GIrQDqhLoyXlEvwr
1291	Dindi	130	380693	5	spotify:track:185PG2pHZ1C8bN2gAU2xDq
1292	Snort of Green	130	265120	6	spotify:track:1TY9vus3Bsz4bImHdIw0Yx
1293	Fairy Tales for Two	130	262506	7	spotify:track:1kN6Y8g8TomkObrQfhMGkf
1294	Sixty-Two Fifty	130	206706	8	spotify:track:4n0bOmnnYgleazywVimOmU
1295	Wait	131	207093	1	spotify:track:2DqpmJ1AOgdWe9zZsOUrg5
1296	Ice Breaker (For the Big "M")	131	137200	2	spotify:track:0UaCytrxRfopp1R7S3rGAP
1297	Crusin' for a Love	131	151280	3	spotify:track:2LPyQCZjxhtgHbn6mbJTtP
1298	Hard Drivin' Man	131	138626	4	spotify:track:3FxQ1GofQpnHtXAPgAWD5J
1299	Serves You Right to Suffer	131	299840	5	spotify:track:3GxUx9BLOfqytEO1GYAMI4
1300	Homework	131	162600	6	spotify:track:2RiAHLurDJZl0AOxIzOrRh
1301	First I Look at the Purse	131	233000	7	spotify:track:1N8ZfIA7pZGclmfd33pfkG
1302	What's Your Hurry?	131	164600	8	spotify:track:6ovEQuXV9lCaLULMdFcr1E
1303	On Borrowed Time	131	184373	9	spotify:track:71h5uf8iHNyDHIybyCTHQw
1304	Pack Fair and Square	131	120360	10	spotify:track:5eQxSqbKw89h9nkvD4j4Mm
1305	Sno-Cone	131	204640	11	spotify:track:0QFE5cYHHnoYqkCXbx50As
1306	Imagine - Remastered 2010	132	187866	1	spotify:track:7pKfPomDEeI4TPT6EOYjn9
1307	Crippled Inside - Remastered 2010	132	232626	2	spotify:track:5CG4RXjli90Zd1KDalPqeK
1308	Jealous Guy - Remastered 2010	132	257786	3	spotify:track:3D9iV6cYkYJRAPFO6DRKIE
1309	It's So Hard - Remastered 2010	132	149080	4	spotify:track:0YPyhXgtDks7BQozBSGCk4
1310	I Don't Wanna Be A Soldier Mama - Remastered 2010	132	368480	5	spotify:track:16euYyM9iFZqOk3p9bnsEW
1311	Gimme Some Truth - Remastered 2010	132	197813	6	spotify:track:3d2oiHuHm3rftzRDPeL5LU
1312	Oh My Love - Remastered 2010	132	168106	7	spotify:track:0gDyuX5rdHulQTUyrIdSR1
1313	How Do You Sleep? - Remastered 2010	132	339186	8	spotify:track:7xsr2OppItxPB4whucYr2G
1314	How? - Remastered 2010	132	226280	9	spotify:track:4k9pqSKBHYdTGjzNeRyQ0o
1315	Oh Yoko! - Remastered 2010	132	260746	10	spotify:track:2pNwQBjJppt8v3sZojH1aj
1316	Fantasy Beginning	133	62866	1	spotify:track:3yuC4fwlRLXTvFYIbhHmcV
1317	You've Been Around Too Long	133	222200	2	spotify:track:5HrDXOFttS0xDxslYCVQVd
1318	Being At War With Each Other	133	206693	3	spotify:track:2nziDfg2ZB07Nn3xrtaEll
1319	Directions	133	238933	4	spotify:track:2lIp5uEi8LrKDM4VzKMyLx
1320	That's How Things Go Down	133	181333	5	spotify:track:3YsaxpKhAVWZDPFCfXimo5
1321	Weekdays	133	164573	6	spotify:track:188S3CUlO4CMprDBzzXVPx
1322	Haywood	133	286640	7	spotify:track:3NPYWN846zefQLMgI98s3Y
1323	A Quiet Place to Live	133	115960	8	spotify:track:1E322wpemjkGKmBwlMgFu0
1324	Welfare Symphony	133	227040	9	spotify:track:7qlyXT9S2gbFNwLkdYpcTW
1325	You Light Up My Life	133	193800	10	spotify:track:0niWpRGYTyofCnblR3Jk1P
1326	Corazón	133	245666	11	spotify:track:0v1qlRKi0ZwlQn4zK3kM4N
1327	Believe In Humanity	133	199360	12	spotify:track:3IGVbtmyromoUCgHTQcToE
1328	Fantasy End	133	85306	13	spotify:track:5uGXIo7M8pfNuLjqFkfG2D
1329	Variations on a Theme by Erik Satie (1st and 2nd Movements - Adapted from "Trois Gymnopedies')	134	153560	1	spotify:track:0TtHkHE5fLeaRtpMP370HD
1330	Smiling Phases	134	309773	2	spotify:track:5zokXOTsHolr7juCZ3znZU
1331	Sometimes in Winter	134	188960	3	spotify:track:1vdEYqMaRGg0Wb4TFhOlyF
1332	More and More	134	183560	4	spotify:track:65YrayXlPcab99UT91W2Pj
1333	And When I Die	134	244973	5	spotify:track:7kDPwGDjxDBONlPpkc1p77
1334	God Bless the Child	134	353760	6	spotify:track:3RN7Bw1U61nzMbTvwibb8Q
1335	Spinning Wheel	134	247266	7	spotify:track:0spSRHFS4zF4Imvz9sJcfL
1336	You've Made Me So Very Happy	134	258733	8	spotify:track:76OUhpuAQSQ2orR5TUeeRc
1337	Blues, Pt. 2	134	704800	9	spotify:track:4CjNYJYpuoLRC61cdtvgA1
1338	Variation on a Theme by Erik Satie (1st Movement - Adapted from "Trois Gymnopedies")	134	99893	10	spotify:track:72FQWSM9tMe43X2UiZBFkj
1339	More and More - Live at the Cafe Au Go Go, New York, NY - August 1968	134	277866	11	spotify:track:7uGDssSlPe62l9Ybj3bLrE
1340	Smiling Phases - Live at the Cafe Au Go Go, New York, NY - August 1968	134	1123506	12	spotify:track:33jcXPWckOY33jzXFuHK75
1341	The Night Owls - Remastered	135	319733	1	spotify:track:5L27knWQkVObPY0FbpyHvy
1342	Man On Your Mind - Remastered	135	256839	2	spotify:track:4LzdgN6x9EHyE8MDjrq4lq
1343	Take It Easy On Me - Remastered	135	227080	3	spotify:track:5p0Et9J14mQUaqZsNiFlsY
1344	Ballerina - Remastered	135	243716	4	spotify:track:08Ib2XSvEGG61EHCjF7e4O
1345	Love Will Survive - Remastered	135	272226	5	spotify:track:1s8x9WMZq9QroHi3XKVod8
1346	Full Circle - Remastered	135	115746	6	spotify:track:5nJy0rjVKFTQV9VyLQUtS0
1347	Just Say That You Love Me - Remastered	135	239680	7	spotify:track:5O8GM9d4jD2Gh69RhOSgcg
1348	Suicide Boulevard - Remastered	135	203786	8	spotify:track:15e1l9FR4QShZ0KryA06qw
1349	Orbit Zero - Remastered	135	269773	9	spotify:track:4K0ifyDac7wNqZL60neotY
1350	Don't Let The Needle Win - Remastered	135	235653	10	spotify:track:12ciWsmStuIf9IUNnus9go
1351	Guiding Light - Remastered	135	213946	11	spotify:track:0fATGNyeyAFUH8mL1BCG3C
1352	Long Jumping Jeweller - Remastered	135	286053	12	spotify:track:1P9swQhE4G7igNY4JxUBEJ
1353	Just Can't Get You Out of My Mind	136	219493	1	spotify:track:35YX2yqLiqpx5QJG9UqLHF
1354	Just You and Me Baby	136	179680	2	spotify:track:4ow3xkO7rvPYGdEvX14w3f
1355	Don't Let the Green Grass Fool You	136	240413	3	spotify:track:38PU39Jj3sT1hBvIUabM8k
1356	I Could Never (Repay Your Love)	136	416306	4	spotify:track:6uFyfAlR5YhoCY73fquOX2
1357	I'll Be Around	136	188800	5	spotify:track:2vLaES21zwbX1Rnmj56Bbb
1358	One of a Kind (Love Affair)	136	214146	6	spotify:track:3LV2CK8sJiYjg1bV1aHQop
1359	We Belong Together	136	252186	7	spotify:track:6qLbFJTxgXEBFPjawBe08z
1360	Ghetto Child	136	230719	8	spotify:track:3qmyaJxqKaGkAioK3lEnFS
1361	How Could I Let You Get Away	136	229773	9	spotify:track:4jnPGIKO0aljX74CmUA2CH
1362	Could It Be I'm Falling in Love	136	249733	10	spotify:track:5i0urffBRKl09GSX2Jhdeh
1363	Right Place Wrong Time	137	175240	1	spotify:track:0I2ELF6uHlL4ABu9aFiou7
1364	Same Old Same Old	137	163066	2	spotify:track:3hySZXi0XGXapzLpni0BUq
1365	Just the Same	137	173026	3	spotify:track:5cib9HDrgbrzUyUcZa5cGW
1366	Qualified	137	290666	4	spotify:track:5SQKCi4FIW4mpi9pj1vJ3Y
1367	Traveling Mood	137	171973	5	spotify:track:4L3BtMlbcNciZ6k2ZTp72d
1368	Peace Brother Peace	137	170426	6	spotify:track:2cJVRnuicVUjLVwijDvCDF
1369	Life	137	151240	7	spotify:track:0zUa5w0YqDrTWHcJePUOIe
1370	Such a Night	137	177733	8	spotify:track:3GppcLIGlSlvujXgR0pPRt
1371	Shoo Fly Marches On	137	197253	9	spotify:track:2GUCu4slhRbYXweSEYPUld
1372	I Been Hoodood	137	194800	10	spotify:track:7wE0MkXKVhcBNBo3NcZHKy
1373	Cold Cold Cold	137	157000	11	spotify:track:7H3gr3Y006302HMoAVQHYQ
1374	Here You Come Again	138	179491	1	spotify:track:6H7nDglS6xWpRidbhMwI2L
1375	Baby Come Out Tonight	138	209045	2	spotify:track:35bQCKdQ7hqIWWjoeVHSRn
1376	It's All Wrong, but It's All Right	138	201354	3	spotify:track:2hVA5ueg3MuftreNk9AkXe
1377	Me and Little Andy	138	160914	4	spotify:track:6gwViarxQ24E7jK4tAxVaJ
1378	Lovin' You	138	145612	5	spotify:track:4TM0YBkfp65RnTD3GkijTQ
1379	Cowgirl & The Dandy	138	228902	6	spotify:track:6MnMdAYfUwedmW3SPVQiD8
1380	Two Doors Down	138	188871	7	spotify:track:0EWJ1KT2q3RdbdQIUYqZsp
1381	God's Coloring Book	138	194921	8	spotify:track:5BGeeVCSh8GPkBzDi0u5h2
1382	As Soon as I Touched Him	138	194482	9	spotify:track:1qcbUfh4hsYZyrfZEnjB5a
1383	Sweet Music Man	138	188751	10	spotify:track:0tiHQhYilIH8w5R3zxmTlZ
1384	I Know Who You Been Socking It To	139	163880	1	spotify:track:3NbPStpTH3aytylN8pV0KK
1385	Somebody Been Messin'	139	158640	2	spotify:track:7puJqB115Xly5LSTll7RNW
1386	Save Me	139	211066	3	spotify:track:45BRlginCQBnECQn9XEaSr
1387	I Must Be Losing My Touch	139	122626	4	spotify:track:1n6UklwBihkm8ut01QF1yL
1388	Feel Like the World	139	207586	5	spotify:track:7glho8Sq4TP7CzxKo29D4r
1389	It's Your Thing	139	169293	6	spotify:track:3ZxfehzRtB3oJcBuxWXFZQ
1390	Give the Women What They Want	139	139360	7	spotify:track:3oZT2rIYXEn3ySgrkDCKg4
1391	Love Is What You Make It	139	157013	8	spotify:track:4ENCCkkaaej2lZdj7u5ZJZ
1392	Don't Give It Away	139	162333	9	spotify:track:1pQY1BzmP3PvD7nep0aijS
1393	He's Got Your Love	139	119226	10	spotify:track:31EfEEiKHGSerI64BKUYk8
1394	I Know Who You Been Socking It To	139	161373	11	spotify:track:3SRgV12WmgCKaRKbvrBMAG
1395	Somebody Been Messin'	139	136653	12	spotify:track:1UvIyjaS75CrbWAa2K1NSS
1396	From the Beginning	139	131653	13	spotify:track:2WM72I23jZY9dSSC7rJaLq
1397	He's Got Your Love	139	116880	14	spotify:track:1Z5KGB9QObHkhfuvtIHbpf
1398	It's Your Thing - Mono Alternate Fade	139	176666	15	spotify:track:6pe0Q4A8bISCLm5RnsUvHE
1399	Somebody Been Messin' - Mono	139	143253	16	spotify:track:4SVLveYNivonQL8TLjs4DY
1400	Love Is What You Make It - Mono	139	174533	17	spotify:track:4fyWM16gk0vo0Htqj16ESP
1401	Don't Give It Away - Mono Alternate Mix	139	174373	18	spotify:track:1xFkdo4CJpULN5HzzBEiWg
1402	Somebody's Been Messin' - Mono Instrumental	139	141200	19	spotify:track:5qCyWFH2XOqvfpvYsP3tVe
1403	Pana	140	413640	1	spotify:track:4BdbFuAxHeGtVzajSo6yZm
1404	Just Say Goodbye	140	473493	2	spotify:track:1mZ9gqIwBDTb9A1BhEtxWX
1405	Cafe	140	439106	3	spotify:track:4JTzlqI7Jz9nk2bLJh6cKH
1406	Nena	140	389533	4	spotify:track:5HkvsZyaMPwhq38v0o8kAf
1407	Suavecito	140	395200	5	spotify:track:5QoFWpXoaUyT44VmR98wLl
1408	Peace	140	560626	6	spotify:track:6EPFJvZph6WC4TbydVly2D
1409	Poinciana (Song Of The Tree)	141	468266	1	spotify:track:6D7P1EfpQolu3WNmcKiJvm
1410	Latin Lady	141	505480	2	spotify:track:2g9qVyPFvVPKJw9VkKSyhk
1411	Odara	141	448586	3	spotify:track:4GGuj0vcTe0lceuoqxygR3
1412	She Is Michelle	141	373680	4	spotify:track:79akkstwW1KJBBEzCf8yA8
1413	Where Is The Love	141	293373	5	spotify:track:6jP5C4U1L4Gm3PeH998aCD
1414	Evil Eyes	141	260533	6	spotify:track:2RTSwmba95QGDL5PzUk9GL
1415	Bolero	141	443146	7	spotify:track:5FUxIEFKrf6tfHRUouxVpN
1416	Domelo (Give It To Me)	142	240960	1	spotify:track:3BxveSAiqrdGIVa1Tz877K
1417	Baby I Need Your Love	142	151866	2	spotify:track:5uehqVdx90DER2Al0fbhnV
1418	Higher	142	242960	3	spotify:track:2Ia0bilQNuXVqwvCO17bOs
1419	The Memory	142	272093	4	spotify:track:38ygVW7oemQ0vmcpjxYFDH
1420	Come Out And Play	142	226080	5	spotify:track:7aUPQ3EDrMMMx06TdsPTvT
1421	Better Days	142	199240	6	spotify:track:3AL4tN9vA9ziXyKV1G6Lgd
1422	Searching	142	240920	7	spotify:track:45muf22QzSyKwsF4l3IcwJ
1423	One Sweet Love To Remember	142	238306	8	spotify:track:34Junfd9A67CX4Qr4MuN6w
1424	Vibrations	142	182026	9	spotify:track:7bwsqDTrvpqO4spefohQu3
1425	Moving, Grooving	142	270880	10	spotify:track:1gP8bBkyWat1ZLFqjk2HPy
1426	Baby You Give Me A Feeling	142	182346	11	spotify:track:3Yc7hGHQdOrppoYAAkVbEC
1427	Give It To Me Baby	143	248226	1	spotify:track:72YXJleQw7Ap7oWKO4vfC0
1428	Ghetto Life	143	261013	2	spotify:track:35Wh3ShZBnshmbT9WmUZkh
1429	Make Love To Me	143	288346	3	spotify:track:2Fn293fpHXsH1HbzykEAbR
1430	Mr. Policeman	143	257293	4	spotify:track:04elI5ZHRfz92bTQgUpBYm
1431	Super Freak	143	204546	5	spotify:track:5vFFwU909VMZIBA7sZPtW0
1432	Fire And Desire	143	437880	6	spotify:track:3i5VIoGeBIUafTgyPCnzlD
1433	Call Me Up	143	233466	7	spotify:track:3XmfAdhOxxWJgzCDsssD55
1434	Below The Funk (Pass The J)	143	156213	8	spotify:track:6wacvf2bNxv5xs3mWFMv8G
1435	Give It To Me Baby - 12" Version	143	342853	9	spotify:track:04bxsQG9B8CwgtoVWmU8Wo
1436	Super Freak - 12" Version	143	425733	10	spotify:track:6DMmnhjy7fTzUQvqg7T9to
1437	Batuka	144	214666	1	spotify:track:0PdKuV0ALvrEMYbPpGBAHS
1438	No One to Depend On	144	331333	2	spotify:track:3pPnys7mGV0DQkQoxmovXi
1439	Taboo	144	334226	3	spotify:track:6FMrkCWvCHsZW73usabZiP
1440	Toussaint L'Overture	144	355866	4	spotify:track:2iqq08krH2PIffUk8bEalZ
1441	Everybody's Everything	144	210533	5	spotify:track:7F1UzwiFZafhFXgf83wHLu
1442	Guajira	144	343133	6	spotify:track:1z0Xw6hVTeuCOdUGxqKgHj
1443	Jungle Strut	144	320106	7	spotify:track:2jeiHlnGLVWEneJ8ibIsc7
1444	Everything's Coming Our Way	144	195200	8	spotify:track:31er0BSLvpfLCQmuTGO8vm
1445	Para los Rumberos	144	166973	9	spotify:track:120Efq5Mzvt2UDdnHdE4fE
1446	Keep On Moving	145	171733	1	spotify:track:48qEH4QqOc4cY5Xm488t6Q
1447	Cubano Chant	145	330173	2	spotify:track:5Yf6XmRjzVBKsV97RfSbxF
1448	Sabor A Mi	145	197826	3	spotify:track:35EQEi6Od5PWvI8XHEmttd
1449	Make It All Go	145	252773	4	spotify:track:14anUmeJ88N3zmaARJhVm5
1450	I'm A Good Woman	145	280560	5	spotify:track:7Bz6GjS4NiYgtzizK3Yf8B
1451	Viva La Raza	145	172906	6	spotify:track:5bthSEbdRhmMJ58fDGhVrc
1452	Spanish Grease	145	163693	7	spotify:track:5fJ8hP5Un9WxZLpsJ9ZM6D
1453	Sugar Sugar	145	320333	8	spotify:track:4wyFvl6d7YaUViLaUEvLv2
1454	Chicano Chant	145	407400	9	spotify:track:3FT7wGtUR5Rnx8PzlEvUJD
1455	Don't Put Me Down (If I'm Brown)	145	228306	10	spotify:track:2UIqwzF90WMoBIQYn4w6KZ
1456	Sing A Happy Song	146	299933	1	spotify:track:3HsBtrErYQjxf4Pv2p05Oy
1457	Get On Out And Party	146	301373	2	spotify:track:1AqQl1Pww8QpHhaTpLnKqR
1458	Identify	146	293306	3	spotify:track:7qAQT4sfZ8V7kHadLvJvCH
1459	So Nice I Tried It Twice	146	346173	4	spotify:track:0hLa8L6hDwUnvRnX8pekZ1
1460	Hurry Up & Come Back	146	305573	5	spotify:track:2VLnmkD9L2GgbepawJJUzV
1461	Forever Mine	146	366226	6	spotify:track:2X4H5K1aT6d7UyPWVfJWmF
1462	I Want You Here With Me	146	325386	7	spotify:track:4EkLSFVmsXd2c0GZSPpCFI
1463	One In A Million (Girl)	146	233213	8	spotify:track:6VDu4P6HcEhOw91rSVxixk
1464	The Gambler	147	214880	1	spotify:track:5KqldkCunQ2rWxruMEtGh0
1465	I Wish That I Could Hurt That Way Again	147	180080	2	spotify:track:0NxpAry2NrumWJ4GqMoJcM
1466	The King Of Oak Street	147	308080	3	spotify:track:0T5J5eTn0XllE8DpHMsVof
1467	Making Music For Money	147	201560	4	spotify:track:03xBflhpS0IAKrvRmSosgd
1468	The Hoodooin' Of Miss Fannie Deberry	147	289040	5	spotify:track:3ATBRCiBUMxbBmm2mPncWW
1469	She Believes In Me	147	258720	6	spotify:track:5ggOAMsJCAYDHnyoqJ0xAD
1470	Tennessee Bottle	147	246120	7	spotify:track:1QliJDK4wqap7ftt3VPiTn
1471	Sleep Tight, Goodnight Man	147	178693	8	spotify:track:3scGM7QrHhqdnAqyGRdyZL
1472	A Little More Like Me (The Crucifixion)	147	174453	9	spotify:track:2XHt0kUUYa0985XRI24gBo
1473	San Francisco Mabel Joy	147	223546	10	spotify:track:5pV6hN8RF33tNTSyONUhLM
1474	Morgana Jones	147	189453	11	spotify:track:49UjyszZj97K540LD0HUX1
1475	Tell It	148	178826	1	spotify:track:6zbld5pOFy9fVJd6AbXULW
1476	The Letter	148	211373	2	spotify:track:2Ubv5MrcjBVjDw30uNNbgK
1477	Listen Here	148	174560	3	spotify:track:0dIqpdAqkZ38J7ElwGjdDN
1478	Sometimes Bread	148	333600	4	spotify:track:6784FTdb3qzl9uN4zlwXV2
1479	Geechee Girl	148	189906	5	spotify:track:30SMOesuQnjIyv4T8Wgpw6
1480	Hippo Walk	148	184400	6	spotify:track:1Fd5VsnyIQky592Uv7lzlC
1481	Featherbed Lane	148	172266	7	spotify:track:6xJCzxiXy8xzcnnmE0kTef
1482	Saoco	148	334400	8	spotify:track:7i5u7VFp4b3454T0MOlvOv
1483	Afro Walk	148	172226	9	spotify:track:1PaXfbv0ldroGfhT9QLLWC
1484	Congo Blues	148	326773	10	spotify:track:233vdrxFh3qoYFafwxlcye
1485	Ha Cha Cha (Funktion)	149	352546	1	spotify:track:4kBFrPP6brcgNEsSruP9cz
1486	Get To The Point (Summation)	149	260853	2	spotify:track:5twOvNuU6U6UjUrDRTZ86T
1487	Sambo (Progression)	149	321573	3	spotify:track:18TCgHIVlKcg4sZNN5p0on
1488	Screwed (Conditions)	149	344213	4	spotify:track:58UIvJGfsjxmEBWkPwzs3o
1489	The Message (Inspiration)	149	285280	5	spotify:track:1fJ3J8khJdYrkYAOeTSNap
1490	Now Is Tomorrow (Anticipation)	149	358333	6	spotify:track:3MiiMAoyj2UWIBEjwVXyQ8
1491	Blame It On Me (Introspection)	149	201773	7	spotify:track:5qx6F53T12N1DsZ7GUc428
1492	What's On Your Mind (Expression)	149	208800	8	spotify:track:4FPVsEmd8fLEkJX4YXYZ3A
1493	Ni En Defensa Propia	150	144066	1	spotify:track:2DXigvJtnOxD7QPv7hhrIj
1494	Amor Y Olvido	150	161933	2	spotify:track:13AL4bL1dBlBGUElBxq0zf
1495	Ay Amigo	150	177226	3	spotify:track:2z3XIi6ikW8O9klg6UvDaB
1496	Buscame Amor	150	161200	4	spotify:track:2jaI8IZgjB9RgbFG6s19XV
1497	Caballo Golondrino	150	190826	5	spotify:track:2F7rfwBWTVaLMZD7EhLFYC
1498	Morena	150	138800	6	spotify:track:50ENxDeNq7zM7FJuiUcohb
1499	Mares de Tristeza	150	139333	7	spotify:track:5mFNujXlaJdAw3exRF8Y21
1500	Lo Mejor De La Vida	150	159640	8	spotify:track:4liqCIyU23B7jYJ0jQgJtl
1501	Ingrato Amor	150	165773	9	spotify:track:3rNTlIIKiozKrSHgypmzi5
1502	Alma Rota	150	160973	10	spotify:track:4JtdECB95datKDSjre52Gq
1503	Julia	150	178400	11	spotify:track:3onRg10lJvqvpx8IU1w3Dc
1504	Found a Cure	151	421040	1	spotify:track:1gND1zOlYtYgXdhRmpIOGJ
1505	Stay Free	151	322480	2	spotify:track:39rVzigiXOF0feDwgKzKIs
1506	Dance Forever	151	349906	3	spotify:track:6JYgYUi1Wgogmk1KWSmIFr
1507	Nobody Knows	151	393693	4	spotify:track:4wmBTdWvS7qdFe5pY51lOS
1508	Crazy	151	221800	5	spotify:track:0VL9TpzdfFiM1ZvZ6Nk9Dr
1509	Finally Got to Me	151	284493	6	spotify:track:1r6JJO0ibdIC5GZkLVLKG8
1510	Follow Your Heart	151	285773	7	spotify:track:3hFJQ6jK5Z9QOPe0eqsPL5
1511	Get On The Good Foot - Pt.1 & 2	152	344333	1	spotify:track:0YfMMzlMdOSGiAA0oYtyNV
1512	The Whole World Needs Liberation	152	221000	2	spotify:track:2DYQ7x3oYTGg9DrwHVqfVl
1513	Your Love Was Good For Me	152	200466	3	spotify:track:1ug0C3UvpkvUIHX64rDCNe
1514	Cold Sweat	152	176973	4	spotify:track:3GWM2gYAWWBrrh1h9F8DEc
1515	Recitation By Hank Ballard	152	354533	5	spotify:track:6dsZiAf1fo5kIuTZSeE34d
1516	I Got A Bag Of My Own	152	210960	6	spotify:track:4Ygdko0OT3nDtxYUPYXEHC
1517	Nothing Beats A Try But A Fail	152	186595	7	spotify:track:5kYU4DSvN1ivW1Qqhes4Im
1518	Lost Someone	152	239200	8	spotify:track:0NL2D0ICHCHH8eImwZxl01
1519	Funky Side Of Town	152	470066	9	spotify:track:4dFh05Zhbp9PF2v4BWxrtf
1520	Please, Please	152	742360	10	spotify:track:2v1RKw575pwkLuNDxeRsXN
1521	Ain't It A Groove	152	130263	11	spotify:track:0htRiWIhrVGRFIcAJ3mdig
1522	My Part / Make It Funky - Pt. 3 & 4	152	314466	12	spotify:track:4gsAC9QQtSZ4i84wx9sp1p
1523	Dirty Harri	152	378266	13	spotify:track:1KNNbrsDRG1resCsoytEQV
1524	I Know It's True	152	248266	14	spotify:track:0SmMekb8fQah6spC4x8N08
1525	Introduction - Live	153	32266	1	spotify:track:02yMKtHWQ35NwEk73DcLRI
1526	You - Live	153	353853	2	spotify:track:7JRSA6cOWdICVKPw4AVhuX
1527	Changing Times - Live	153	310533	3	spotify:track:3XYujZJHWpgL9wK8Ulpeyx
1528	Joy And Pain - Live	153	584133	4	spotify:track:2wl3hv2728TR5O93XsTZBF
1529	Happy Feelin's - Live	153	315720	5	spotify:track:3wWavOyZlWKG9J4lCSZHPJ
1530	Southern Girl - Live	153	386160	6	spotify:track:5HWhN7xc4qbhq3DwInaNrT
1531	Look At California - Live	153	663373	7	spotify:track:5Iy8oh8ct6bDPcUJIvUZGP
1532	Feel That You're Feelin' - Live	153	577226	8	spotify:track:7Jr07PGX40jJO3nvmiFwQD
1533	The Look In Your Eyes - Live	153	451040	9	spotify:track:4j52tbi7dYkP09gJrJVO8K
1534	Running Away	153	358693	10	spotify:track:5SPswhPUiRJn7Euba8SCgf
1535	Before I Let Go	153	306160	11	spotify:track:7EIqakFnWSmh4QVU91sY4j
1536	We Need Love To Live	153	288253	12	spotify:track:1P2PVxcnbU21li3SCbqxFl
1537	Reason	153	300973	13	spotify:track:0H4wBdm2ryrjhdj5MDy2TW
1538	Put Your Hands Together	154	247066	1	spotify:track:57yGqjGKJUIzgKWdIZo9aR
1539	Ship Ahoy	154	577066	2	spotify:track:5GTd3l7ShrGaziT7kvnNnj
1540	This Air I Breathe	154	233000	3	spotify:track:7tVyJAzdKekmH0ChZxHhxB
1541	You Got Your Hooks in Me	154	333133	4	spotify:track:6Hv6rGm9aboHovFv49pKiT
1542	For the Love of Money	154	439866	5	spotify:track:3p1JoOEhVkEnTaa4JzTMSk
1543	Now That We Found Love	154	281200	6	spotify:track:0qOkHfSClduvkvGk6fCu8l
1544	Don't Call Me Brother	154	536266	7	spotify:track:6KYPvWM3iS0zGiVV4S5Cx1
1545	People Keep Tellin' Me	154	238533	8	spotify:track:23zcctQcy5iglNa4W93ChD
1546	Put Your Hands Together - Live at Hammersmith Odeon, London, England - December 1973	154	244026	9	spotify:track:3ISqzp0CTv30MnaJGNl6OL
1547	Candy Man	155	270066	1	spotify:track:2STCPBRYYnsGlzmhNktVou
1548	Boys	155	341066	2	spotify:track:2soijtS8qICl1y0tWYU6ZI
1549	Prove It	155	270066	3	spotify:track:6k3mkF39lXxbfzZ8vMqx8w
1550	Jealousy	155	210360	4	spotify:track:24naDSzBhZqGQV1Pn5E49o
1551	You Are My Heaven	155	194640	5	spotify:track:57okjieqRtswvOWAS0h42K
1552	On The Inside	155	237200	6	spotify:track:5HGND3xc98YRPmIzv6bdOO
1553	All Night Long	155	333293	7	spotify:track:62ubbkWAhTOftwgRjHS1UH
1554	Musical Love	155	309173	8	spotify:track:4b1hb8ZBwlqD1CyeggPSXy
1555	Take Five	156	428000	1	spotify:track:5NokPZ0EoOl3t5SHKy2zA3
1556	Summer Wishes, Winter Dreams	156	176026	2	spotify:track:3UnJAuzF35wKmRj8mmIA6x
1557	My Latin Brother	156	408560	3	spotify:track:2WJ6ky68GX7Vk0TqoA920W
1558	No Sooner Said Than Done	156	359226	4	spotify:track:0JzXPEaPwflOrdjmFAyaHc
1559	Full Compass	156	339973	5	spotify:track:4wCdMKD2jbfKRwk3QKyPUd
1560	The Changing World	156	293066	6	spotify:track:0X3ZVN14YFTUGsTdOatYat
1561	Take the "A" Train	156	252960	7	spotify:track:1KpqxJ3OyHpoopQj9H7jzh
1562	Serbian Blue	156	782400	8	spotify:track:1OVL6F9sZIGBqL1dnb4VG0
1563	From Now On	156	141200	9	spotify:track:21CgRVMX7NDLd5bMC4utCj
1564	The Ghetto	157	375920	1	spotify:track:4Zynwm3ZMdQ52YkXSMaQeV
1565	The City: Grass And Concrete / Taxi To Brooklyn / Speak Easy It's A Whiskey Scene	157	631186	2	spotify:track:208KKKYZsUTQiyxplVU909
1566	Tramp And The Young Girl	157	305346	3	spotify:track:0RErPUD1O82VoxSFUtZmkj
1567	Love: Renaissance / Prelude / Pickup / Hotel Backstage	157	657626	4	spotify:track:44T42lsrRNrw7sUMGEGYNk
1568	Song For You	157	523533	5	spotify:track:02hHvBOQCsC37JBB1rc0Mm
1569	The City - Single Version	157	178493	6	spotify:track:7kFyGT5ln0HWUiSq33wDE1
1570	The Ghetto - Single Version	157	282146	7	spotify:track:5LVKFOqZVHLkkF0t8zb4Uo
1571	Smooth Operator	158	298893	1	spotify:track:7pLuEMFougkSHXrPBtNxTR
1572	Your Love Is King	158	219426	2	spotify:track:1j2LuIf7mv15ZVug1Xy5qz
1573	Hang On to Your Love	158	353266	3	spotify:track:6ugI2y8ngkdEVpkv0i3RAD
1574	Frankie's First Affair	158	278306	4	spotify:track:67r1nqpzlKj3x0khmvdFoD
1575	When Am I Going to Make a Living	158	205973	5	spotify:track:5DYD5pUUnf3MT6LafqPqOt
1576	Cherry Pie	158	378733	6	spotify:track:3b0rbuHtD50p1gmfYeKCom
1577	Sally	158	322600	7	spotify:track:4QtH20cJGjVvIcBoliUvAV
1578	I Will Be Your Friend	158	283426	8	spotify:track:29pqGFsm1NPsVHfSrjaDUJ
1579	Why Can't We Live Together	158	328333	9	spotify:track:7pd7fTNMtn4jRv80CSdgcq
1580	Introduction	159	111426	1	spotify:track:3oEprdWhB9D8eRrnI9sGgl
1581	Every Day I Have The Blues	159	102440	2	spotify:track:79kfQGvYnHWKEoO8Y1XWty
1582	How Blue Can You Get?	159	312026	3	spotify:track:6ZfSXhqojBGB8BdRFb96Im
1583	Worry, Worry, Worry	159	592600	4	spotify:track:2v2XfuQHfRO5jQcKlXVAF5
1584	Medley: 3 O'Clock Blues/Darlin' You Know I Love You	159	378000	5	spotify:track:7ldbUD5Ljy3zxdjxcBT5Nt
1585	Sweet Sixteen	159	260959	6	spotify:track:1H4un1VlmHkMJGMB79rZN7
1586	The Thrill Is Gone	159	378906	7	spotify:track:0Z4ABgkKUGXmVwOx7WMWJu
1587	Please Accept My Love	159	187666	8	spotify:track:1Q3igTzvNJwPtumFKdqNqb
1588	Girl U Want	160	177306	1	spotify:track:7aLqagsvH0UhwElKSR8rAj
1589	It's Not Right	160	142360	2	spotify:track:53oJ4mwM9b1MKl6QOBThNv
1590	Whip It	160	161133	3	spotify:track:4sscDOZCkbLSlDqcCgUJnX
1591	Snowball	160	148466	4	spotify:track:7BJIcG07Gjyca9skBOO6CE
1592	Ton O' Luv	160	150226	5	spotify:track:6tK9UqLKtPwVn5V4XAYdp3
1593	Freedom of Choice	160	208560	6	spotify:track:2rqVAj02zaRGkNq6CR97nH
1594	Gates of Steel	160	207973	7	spotify:track:65Z7fRcwn29IKCXpRS7CGk
1595	Cold War	160	151200	8	spotify:track:6sgWlYPMTsQbPxcK8PE3Qs
1596	Don't You Know	160	135360	9	spotify:track:5GVSO4RKShzHO61wdP9N5u
1597	That's Pep!	160	137440	10	spotify:track:3krJQ1FkXrgRjWXgdhtQwW
1598	Mr. B's Ballroom	160	167773	11	spotify:track:0TRUpIO65fIWVkyaCKC5rV
1599	Planet Earth	160	165906	12	spotify:track:4mNZFzb5ZVJ3qfe0I6zCNj
1600	Crushin'	161	289227	1	spotify:track:56CKOoQAA87jhm2ChMEeWP
1601	Protect Yourself / My Nuts	161	249077	2	spotify:track:5cyAIDLRsoLBuflEfmLLa3
1602	Rock Ruling	161	227996	3	spotify:track:6uIYaD5FV35lqcNc44LLwR
1603	Making Noise	161	221596	4	spotify:track:6oOVWjJih3Ejv7Uc6oi4oo
1604	Boys Will Be Boys	161	278543	5	spotify:track:3ebwt1QABilb1R0i7NdrUe
1605	Falling In Love	161	306024	6	spotify:track:1tHRRfnQOBqavCScksqZsw
1606	Fat Boys Dance	161	221884	7	spotify:track:4HeIuC1ds4QMVZejYrd9VT
1607	Wipeout	161	267572	8	spotify:track:08jeicFzph1hv6OwVXPrYw
1608	Between The Sheets	161	265325	9	spotify:track:5VSXx6XvGBoVEUd7zTaJCB
1609	Hell, No!	161	259343	10	spotify:track:0wnd6jvb1LBsoiqmIPQsmT
1610	Freak-a-Zoid	162	485013	1	spotify:track:42UpH9fz5utv8tkvOgh5Qb
1611	Electricity	162	419466	2	spotify:track:1F8n34qAZhAG3aSks1jVxN
1612	Night Rider	162	280800	3	spotify:track:400vzl8t1SPDzrbcYnkYNs
1613	Feels so Good	162	265626	4	spotify:track:5VIG3gS1GL7mWM4jo5tFJW
1614	Wet My Whistle	162	307816	5	spotify:track:0R7pPCjKgC8ZOEUr2E8D9B
1615	No Parking (On the Dance Floor) - 12 Inch Mix	162	479055	6	spotify:track:68ffXcOFU1Qxjo3Wbg5hMB
1616	Slow Jam	162	258133	7	spotify:track:2TJ8nAr1nSMVREQJdwkm4l
1617	Playmates	162	250733	8	spotify:track:5debm8BmcygQHeN3Q7NtSA
1618	Freak-a-Zoid - Extended Remix	162	505832	9	spotify:track:4ImoyNleqR0kpqJlMHoP09
1619	Freak-a-Zoid - Dub Mix	162	554840	10	spotify:track:1QBp7D3i94fsrJEIELlm0v
1620	Freak-a-Zoid - Bonus Beats	162	171733	11	spotify:track:4PjPIeKU3hg6DqXfxxPMAu
1621	Freak-a-Zoid	162	237680	12	spotify:track:1KQoOhsUdiFsH5W8dBJjpL
1622	No Parking (On the Dance Floor) - Radio Mix	162	268640	13	spotify:track:3JLcx6VISiIx3Y30XPQ4K9
1623	Introduction Theme - Live	163	321053	1	spotify:track:0k44yeXlli1cLjpEs6DjM7
1624	Descarga Fania - Live	163	557626	2	spotify:track:1WeyEbCQgbh2YZkDKx6Uud
1625	Anacaona - Live	163	435640	3	spotify:track:0aiInkmMYSIizbx4YIxHHP
1626	Quítate Tú - Live	163	1005333	4	spotify:track:0jyD3X8WnV57qN9Ukss7bO
1627	Dance, Dance, Dance (Yowsah, Yowsah, Yowsah) - 2018 Remaster	164	502240	1	spotify:track:1gHjPSEIKmFE9M8PAV2RyQ
1628	São Paulo - 2018 Remaster	164	303720	2	spotify:track:5q1V1U6FMWAFhBKVOeFG7T
1629	You Can Get By - 2018 Remaster	164	342440	3	spotify:track:0hJzfk3WKjUo24aPVBVU2E
1630	Everybody Dance - 2018 Remaster	164	402693	4	spotify:track:15ifyO8wYntwyXAptfxhKr
1631	Est-Ce Que C'est Chic - 2018 Remaster	164	236080	5	spotify:track:7n1FDOPor5b8hy9njZyLvQ
1632	Falling in Love with You - 2018 Remaster	164	271893	6	spotify:track:4IzVhWZNJzcVb3OAndOXft
1633	Strike up the Band - 2018 Remaster	164	275573	7	spotify:track:5EGgNPul4swMOdILPP4iTs
1634	Carry On	165	265933	1	spotify:track:4bjvLvKovcWqZwDbXT5QQX
1635	Teach Your Children	165	173466	2	spotify:track:29HaKOpeLSYvqdFyEQSRdj
1636	Almost Cut My Hair	165	269173	3	spotify:track:0gCJkpD0RhF2rjiALLHBQL
1637	Helpless	165	217133	4	spotify:track:3gQMqeXqiHFCafaTtFnHF8
1638	Woodstock	165	233773	5	spotify:track:2iqKVzMZpyUVPwxIVaQkhm
1639	Deja Vu	165	252373	6	spotify:track:3O4VF8UYD6CCuhj6d4TQPa
1640	Our House	165	179760	7	spotify:track:2hitsKa8SthKhRJBXUHbIv
1641	4 + 20	165	126640	8	spotify:track:2jZPEeW2ynykb2GkVqpOkJ
1642	Country Girl	165	312133	9	spotify:track:6CCh5pP9RWnYhXK43t1nDC
1643	Everybody I Love You	165	142000	10	spotify:track:7ueMtBY5caVZM5FocVzOv7
1644	Among The Living	166	316866	1	spotify:track:0MuJLuEaZuXX8aMBFCrTE4
1645	Caught In A Mosh	166	300173	2	spotify:track:4fjWStUaP7aXdT0d3YxvPo
1646	I Am The Law	166	354000	3	spotify:track:5DlKTTcN9LNisy6x4QuWzs
1647	Efilnikufesin (N.F.L.)	166	295000	4	spotify:track:0mN2Zf1wnsD0rg2mT4939P
1648	A Skeleton In The Closet	166	329000	5	spotify:track:1oRpKSMCFZq2MVVJF9RjB1
1649	Indians	166	341333	6	spotify:track:1fcyfC1KLSWVCIvALR5AxS
1650	One World	166	355666	7	spotify:track:4OjWB25SNdt9VfaTC5z2Fp
1651	Medley: A.D.I. / Horror Of It All	166	469160	8	spotify:track:12rk57LzvJAguSYIP4SHgZ
1652	Imitation Of Life	166	262800	9	spotify:track:20GAr2lqK1tICtkKCb8uBn
1653	The Vision Of Rassan Medley - : Dedication / Roll On Kirk	167	463866	1	spotify:track:7uYOT0c7CyVghjoL0y752u
1654	Tobacco Road: Tobacco Road / I Have a Dream / Tobacco Road	167	801640	2	spotify:track:0CgBGng2oFQlu8TYso8NE0
1655	Spill The Wine	167	294800	3	spotify:track:0xt7wDpsnwlv4OicsEQi7N
1656	Blues For Memphis Slim Medley - : Birth / Mother Earth / Mr. Charlie / Danish Pastry / Mother Earth	167	802826	4	spotify:track:46HjQMo0VoStyZSAHEVy9L
1657	You're No Stranger	167	184240	5	spotify:track:00D9EDNfqDqq8F3RsJRgje
1658	I Ain't Gonna Eat out My Heart Anymore - Single Version	168	163200	1	spotify:track:52z21PGoOimhAG3dMEtY9F
1659	Good Lovin' - Single Version	168	150906	2	spotify:track:7u6SFPuZQWCYv9fydggbBA
1660	You Better Run - Single Version	168	147666	3	spotify:track:04DOxjxyOrs7r0Ynj3iqYz
1661	Come on Up - Single Version	168	166133	4	spotify:track:71uRtl6Ta8VBosRqG6N6cx
1662	Mustang Sally - Single Version	168	241026	5	spotify:track:61Sc4lwYzUHaiJHQunz3uY
1663	Love Is a Beautiful Thing	168	152200	6	spotify:track:1Ng8VFTVxkX3vhtq0Qv87v
1664	In the Midnight Hour	168	240400	7	spotify:track:3fWVEfRcOutSWmmFn1Dqbl
1665	I've Been Lonely Too Long - Single Version	168	181333	8	spotify:track:4nGe6UWML7cjS5UyHgMfRg
1666	Groovin' - Single Version	168	147466	9	spotify:track:3aSNNi8Xp5WGv7EcQNM7RW
1667	A Girl Like You	168	169466	10	spotify:track:54N8FRJBpTvW1OXzUQduW0
1668	How Can I Be Sure - Single Version	168	173600	11	spotify:track:0hIHj1PYjZ9BgMYEj8BvFk
1669	It's Wonderful	168	136706	12	spotify:track:6jLz0eS09dZ5nV5Q8JamVX
1670	Easy Rollin'	168	175000	13	spotify:track:1V2SrKZ0Cg63yAKUaQLqz8
1671	A Beautiful Morning - Single Version	168	151800	14	spotify:track:3QwbKe0s8TcNclzXAXHeHy
1672	Try Me, I Know We Can Make It	169	1077133	1	spotify:track:1bHq4U7NKCgeIuX0o9geEC
1673	Prelude To Love	169	66773	2	spotify:track:0xKx1XS3olTX6koIgcgSBE
1674	Could It Be Magic	169	315493	3	spotify:track:2MdGWAiYLmGbetrSBANcoD
1675	Wasted	169	309800	4	spotify:track:6XzbHBAhJU4Jw0MvvyqiJM
1676	Come With Me	169	262400	5	spotify:track:4hxU06HmkS6rSUK46yjJn0
1677	This Town Ain't Big Enough For Both Of Us	170	188866	1	spotify:track:1lc3fDoaJfulun0scRNXDJ
1678	Hall Of Mirrors	170	302266	2	spotify:track:5LISRpPG4mWNNQA4XXMDtO
1679	Trust In Me	170	246093	3	spotify:track:3I3A3OSbPD04tzkc62iYqq
1680	This Wheel's On Fire	170	315760	4	spotify:track:1PxG1pJavirtKvERWwAQ1E
1681	Strange Fruit	170	231333	5	spotify:track:1sfhyoRYk69hjJos82PX0I
1682	You're Lost Little Girl	170	178213	6	spotify:track:2ZkfXu8l1GonrVfNgS23ZV
1683	The Passenger	170	309306	7	spotify:track:6EZDbjz2X5XzgIZCtbsrXh
1684	Gun	170	306306	8	spotify:track:3t8uFsxO5knbxyR8OWK7k5
1685	Sea Breezes	170	254906	9	spotify:track:21ibWIkauLuICJFuO8qf53
1686	Little Johnny Jewel	170	306946	10	spotify:track:66fDzyccWCQA4TWlgUWCWw
1687	She Cracked	170	187453	11	spotify:track:2eXzZVGULviXzMGFwAxu46
1688	Song From The Edge Of The World	170	225266	12	spotify:track:7dmjitxt5hgoALnc7Q3viY
1689	This Wheel's On Fire - Incendiary Mix	170	447480	13	spotify:track:4GVU9KJQEQaSX8Tcxqahkq
1690	The Passenger - Loco-Motion Mix	170	485307	14	spotify:track:3C7bG20iFcrvGjeNxQ8mqm
1691	Blooze	171	230493	1	spotify:track:2Om0TouVcvH7P58fjynJ2z
1692	Hot Rod	171	163600	2	spotify:track:5DR7kwICJYOrEbGlxB0LX4
1693	Simple Man	171	262906	3	spotify:track:5QOxisWN0KRKIfOUXBOeOg
1694	Shot In The Dark	171	213066	4	spotify:track:3fvkZI7pQVNL24r46m5Q0W
1695	Hollywood	171	181000	5	spotify:track:5b5Mr22yzussd3kWLQPvym
1696	Life Sentence	171	189200	6	spotify:track:2i09PksSBs1zqYIyJ9Jn40
1697	Long Way Home	171	284426	7	spotify:track:3rSfHaPKDIPTXX8sE9giZM
1698	Can't Hold Back	171	241773	8	spotify:track:0AH3bJTimPd5Z1sLJdnl0o
1699	Texas	171	216093	9	spotify:track:385Rga2gDIf26CmXImG7Ug
1700	Hands Off	171	325533	10	spotify:track:7lsm2ytKjTaT3gaSKrGNhT
1701	I Want You	172	274693	1	spotify:track:4643yHVr2Y0c4uKO24Vigi
1702	Come Live With Me Angel	172	390173	2	spotify:track:4fSjTqnaQP4FBcO8NLOFc9
1703	After The Dance - Instrumental	172	263933	3	spotify:track:3dY5LWWS0gqGPB81JY2fRh
1704	Feel All My Love Inside	172	202733	4	spotify:track:3pdO5vuJnwehI1o17LxedC
1705	I Wanna Be Where You Are	172	77266	5	spotify:track:7mlksJCrTCLbRlgxfnXoIB
1706	I Want You - Intro Jam 1	172	19693	6	spotify:track:0oBpSL5S8ZRVuJGke5segs
1707	All The Way Around	172	230373	7	spotify:track:6aam9dSgFwe9qw395lMnzb
1708	Since I Had You	172	244800	8	spotify:track:4OglbWNxGgmKMOdgFvqvWj
1709	Soon I'll Be Loving You Again	172	194093	9	spotify:track:3YRV2UJyoJRDMbEwJFQ81l
1710	I Want You - Intro Jam 2	172	100773	10	spotify:track:68xNqASHsgCcddKHrgGobM
1711	After The Dance	172	279760	11	spotify:track:0m6i2lZNgIV4OOyEkFlKFz
1712	Intro (To Heartbeat)	173	28426	1	spotify:track:299qxLFG2QMY59C4KV3Qua
1713	Heartbeat	173	256306	2	spotify:track:75Pszr9mIJFrSWvlnu6Kdy
1714	Really Want to Know You - Remastered Version	173	262706	3	spotify:track:672L8kwlwJu5w8D6MWyvDC
1715	Got the Feelin'	173	222040	4	spotify:track:1UZOxGh3m62hgiVGdpwNrj
1716	Love Is a Rose	173	270493	5	spotify:track:0BTbUcmvyqjuy6uiSFAQLh
1717	The Right Place	173	213600	6	spotify:track:09GDl9oyyTKxWiYy2kxjBa
1718	More Than a Heartache	173	272760	7	spotify:track:5pshriQjZUa2zqLfv0pQTN
1719	Close to You	173	246466	8	spotify:track:2RjCi2cZrwtkURjOuBqWf6
1720	Comin' Apart	173	232293	9	spotify:track:1ORy4HAUGi8Em4YavieDzT
1721	Positive Feeling	173	220906	10	spotify:track:0MtZ8G4RQuJAqpxKiRfZVs
1722	Main Title And First Victim - From "Jaws" Soundtrack	174	206506	1	spotify:track:1g10rYqM3jJQsWRnXCFcx7
1723	The Empty Raft	174	81333	2	spotify:track:2Eg4spmeuQBWkcrTiddaNu
1724	The Pier Incident	174	142173	3	spotify:track:4dTuygtcB9SMc2ubfivZ2s
1725	The Shark Cage Fugue - From "Jaws" Soundtrack	174	118493	4	spotify:track:2RGrC7l8W6Y6MPDdOSMLbU
1726	Shark Attack - From "Jaws" Soundtrack	174	76666	5	spotify:track:4fMHYXLvnC0MFllGGL0Gq7
1727	Ben Gardner's Boat	174	210000	6	spotify:track:6R40e6TlPR0jWUaDxdqgb3
1728	Montage - From "Jaws" Soundtrack	174	89000	7	spotify:track:5voz3XEVORADMcq3OUnI5W
1729	Father And Son - From "Jaws" Soundtrack	174	221826	8	spotify:track:6aGNPlCP5b4zj9StfomzhB
1730	Into The Estuary	174	169173	9	spotify:track:40wEfl0n2zSSxts30G56Vy
1731	Out To Sea - From "Jaws" Soundtrack	174	178666	10	spotify:track:3egtRngx1MDQa17Wzkgobh
1732	Man Against Beast	174	332160	11	spotify:track:2xbCYvOxPVF7G5e4OBEAru
1733	Quint's Tale	174	159160	12	spotify:track:125SqOuXyUvlkrow12YJD3
1734	Brody Panics	174	69333	13	spotify:track:1D24uHHcMdYItlLLFxW5Pw
1735	Barrel Off Starboard	174	89840	14	spotify:track:7bmIk9Kk27x68wbQ67s3N8
1736	The Great Shark Chase - From "Jaws" Soundtrack	174	207333	15	spotify:track:6yhx5oKhHiT4NTHeUj7lI9
1737	Three Barrels Under	174	124000	16	spotify:track:5FzXIkeGhfqbtufzOr5REI
1738	Between Attacks - From "Jaws" Soundtrack	174	125333	17	spotify:track:3ef0qvnlvZTLV6Moa7PcXo
1739	The Shark Approaches - From "Jaws" Soundtrack	174	159333	18	spotify:track:74VpSViAQBXXTiB53OmhZy
1740	Blown To Bits	174	182333	19	spotify:track:48QDjqthZau2LplmFhWGyF
1741	End Titles - From "Jaws" Soundtrack	174	112333	20	spotify:track:7Jf7C3TprW2b8XNHu31af4
1742	Honky Tonk Women - With Intro / Set 1 / Live At The Fillmore East/1970	175	297213	1	spotify:track:5nsmZpXnYIlVSjxa6diCM1
1743	She Came In Through The Bathroom Window - With Outro / Live At The Fillmore East/1970	175	197960	2	spotify:track:4mqT6u3tY0VaQViPt5rUsa
1744	The Weight - Live At The Fillmore East/1970	175	357133	3	spotify:track:0BHgI8hJGwqc6YDasoNcSw
1745	Sticks And Stones - Live At The Fillmore East/1970	175	166333	4	spotify:track:42eLA3ghHs4NCmGaWrZUHz
1746	Bird On The Wire - Live At The Fillmore East/1970	175	391000	5	spotify:track:6nAaNHrXidcGaTDauVOe1H
1747	Cry Me A River - Live At The Fillmore East/1970	175	245173	6	spotify:track:2AKpAF2xHPCvwdLFOTprs4
1748	Superstar - Set 1 / Live At Santa Monica Civic Auditorium/1970	175	299013	7	spotify:track:76Dswd9N5rK0tMWkVpQZPL
1749	Feelin' Alright - Live At The Fillmore East/1970	175	347493	8	spotify:track:37rfNf1D4jkmFw1xSmMDeW
1750	Something - Set 1 / Live At The Fillmore East/3/28/70	175	333413	9	spotify:track:4bBdyKdDeAcsk9ljhK8wIP
1751	Darling Be Home Soon - Live At Fillmore East/1970	175	347773	10	spotify:track:4ptNYxc5uHOuKqFzjWjfHN
1752	Let It Be - Live Santa Monica Civic/1970	175	220320	11	spotify:track:0Q3KXY6YLvayui3FBULG4R
1753	Further On Up The Road - Live At Fillmore East/1970	175	240373	12	spotify:track:4XJclQJoUrJIAiaTqFbMyf
1754	Let's Go Get Stoned - With Intro / Live At The Fillmore East/1970	175	485813	1	spotify:track:3n45E4RoeRBd7U7OEsxUwn
1755	Space Captain - Live At The Fillmore East/1970	175	320693	2	spotify:track:4POXMOKU4eE7oQYInjOhA8
1756	Hummingbird - Set 2 / Live At The Fillmore East/3/27/70	175	248920	3	spotify:track:7d43Wh4nVrvIKojxhkYilE
1757	Dixie Lullaby - Set 2 / Live At The Fillmore East/1970	175	178853	4	spotify:track:4fqWqyPA8OfyZ644rYVQrN
1758	The Letter - Live At The Fillmore East/1970	175	272973	5	spotify:track:4evj46yiEKdN8gr6K0e7PX
1759	Delta Lady - Set 2 / Live At The Fillmore East/1970	175	423680	6	spotify:track:2YtthIPgAuxsvQdCWyMmFh
1760	Give Peace A Chance - With Outro / Live At The Fillmore East/1970	175	286480	7	spotify:track:16Z0eHYK3deoWX7897G6JI
1761	Blue Medley: I'll Drown In My Own Tears/ When Something Is Wrong With My Baby/ I've Been Loving You Too Long - Live At The Fillmore East/1970	175	757586	8	spotify:track:3qtZExbOuwbxqHL47G4Ph9
1762	With A Little Help From My Friends - Live At Fillmore East/1970	175	520026	9	spotify:track:5jOHCd2SfcVzpMCwphLADb
1763	Girl From The North Country - Live At The Fillmore East/1970	175	159840	10	spotify:track:08gzpwfFLc7PArhPZV8jBk
1764	Warm-Up Jam Including Under My Thumb - Single Version	175	345080	11	spotify:track:6ycDdeK7ZkilhZUyzPIY4I
1765	The Letter - Single Version Stereo Mix	175	250306	12	spotify:track:7jwz36C3cRzKutse6Nr9zd
1766	Space Captain - Studio Single Version Stereo Mix	175	269893	13	spotify:track:1pOzjN4gqL5crivkjcJJ5a
1767	The Ballad Of Mad Dogs And Englishmen	175	239666	14	spotify:track:267wC14DqoVf52tpS01qvl
1768	Courage to Grow	1	255586	1	spotify:track:33Ib9wPVhh2MWHhmS7Yne9
1769	Heart Like a Lion	1	338413	2	spotify:track:3Z1Kc1G2FIDIKvY5wTFAO1
1770	Safe and Sound	1	229493	3	spotify:track:5GQaLen4w5m5YiJmzYfegN
1771	Feeling Alright	1	266400	4	spotify:track:2EDRUNdur7CGV2W2mwIRoS
1772	R Way	1	419973	5	spotify:track:0AmkrjMDff4ICVNxQhppZA
1773	Attention Span	1	322760	6	spotify:track:7z3EXUkDIgi6y3L46JSklf
1774	Green to Black	1	261946	7	spotify:track:40laV0uGcLaObXHVExb51u
1775	On My Mind	1	219760	8	spotify:track:794mYd1O3ZGTXeEOKbtnzX
1776	Running	1	343320	9	spotify:track:4UZmQ42GmxNSrQS74wunHl
1777	Nightcrawler	1	286400	10	spotify:track:6YwHYGjHZqqVnTe1ADkhlq
1778	Other Side	1	224000	11	spotify:track:5N2TafHm5CuREjeK17sSF5
1779	Safe and Sound Dub	1	238800	12	spotify:track:1zJCUqbJBEy1CFRmD7k3ck
1780	Intro	7	47293	1	spotify:track:34QTgJPSf9Nvpw3NrlX8pu
1781	Lost Ones	7	333906	2	spotify:track:71XhXay6rKPZCVAaDtFlSR
1782	Ex-Factor	7	326533	3	spotify:track:2VjXGuPVVxyhMgER3Uz2Fe
1783	To Zion (feat. Carlos Santana)	7	369293	4	spotify:track:7x6hO9VMAee9x1iWaeNkL6
1784	Doo Wop (That Thing)	7	320266	5	spotify:track:0uEp9E98JB5awlA084uaIg
1785	Superstar	7	297106	6	spotify:track:4zSmsHur194jO2hGCTt6Hn
1786	Final Hour	7	256000	7	spotify:track:7nY3NA1AvORewLU3BU7GNX
1787	When It Hurts so Bad	7	342200	8	spotify:track:3CNSWn2mISh7Ll3yJQbVEw
1788	I Used to Love Him (feat. Mary J. Blige)	7	339866	9	spotify:track:3IRdgbdqDcmJBIa6TY2mKX
1789	Forgive Them Father	7	315293	10	spotify:track:2RPhXg9D4JOkryUznL0aaB
1790	Every Ghetto, Every City	7	314706	11	spotify:track:6ioEEcJzOpLyIO6Dgn1RYS
1791	Nothing Even Matters (feat. D'Angelo)	7	350533	12	spotify:track:1Q0lOGB52skgfzdcq233vs
1792	Everything Is Everything	7	293266	13	spotify:track:7t86fVeDAd63ThaR0ZkxXS
1793	The Miseducation of Lauryn Hill	7	235466	14	spotify:track:12Y1GaS44vga0G3rUtjFAY
1794	Can't Take My Eyes Off of You - (I Love You Baby)	7	221466	15	spotify:track:2GFExyKXf9383tSRSrEHEt
1795	Tell Him	7	280760	16	spotify:track:7iCs98iS5n6KCI4q3H7zp9
1796	Strange Days	8	186560	1	spotify:track:4WFVX3E568hdAixIj3U222
1797	You're Lost Little Girl	8	180573	2	spotify:track:5onlaW8X1ps8VS4DhxpFom
1798	Love Me Two Times	8	195106	3	spotify:track:67HxeUADW4H3ERfaPW59ma
1799	Unhappy Girl	8	117066	4	spotify:track:7MW3s6XnZua7CNQAfmdGe8
1800	Horse Latitudes	8	95226	5	spotify:track:6vcqR6rCL2k4EDhqH8gzeO
1801	Moonlight Drive	8	181346	6	spotify:track:0ja1dJM5gBTjk5U9wsMP9r
1802	People Are Strange	8	130173	7	spotify:track:1Jmqubf9kGkWeYQXQKImL5
1803	My Eyes Have Seen You	8	147200	8	spotify:track:6HSQ5z5afdLjhphHWfPiEG
1804	I Can't See Your Face in My Mind	8	203293	9	spotify:track:6wov6IWJkisFG6rUZIESsB
1805	When the Music's Over	8	659266	10	spotify:track:42dsUTJpzMWUJfEkzsbKWl
1806	One Cold Vibe (Couldn't Stop Dis Ya Boogie)	9	267693	1	spotify:track:1rhrH5fNevQqgGQhWcA8C8
1807	Cold Sweat	9	230973	2	spotify:track:7BSClhNQNKKZ7BwO34HMWD
1808	Cool Meditation	9	214760	3	spotify:track:3IXLfuD99oWZ2nDBhWjtPx
1809	African Woman	9	386440	4	spotify:track:1C0jKZbXMFJBdwJ5OqGcjI
1810	Now That We've Found Love	9	459600	5	spotify:track:04E1J0D07gVhOTTyrztkgJ
1811	Journey To Addis	9	403980	6	spotify:track:4kODFSstc7KUGau8By2ADk
1812	Fret Not Thyself	9	255400	7	spotify:track:766hl1uh93ptDwRxz85lN4
1813	Rejoice	9	230933	8	spotify:track:5wAO8LSD1fsWGzLZUut1dA
1814	Wolf Run - Pt. 1	10	72360	1	spotify:track:6ehjxKP5f0EDreiw5tiZZY
1815	Just For Love - Pt. 1	10	180106	2	spotify:track:39MIbGjOVHGwsAQSCwI4ol
1816	Cobra	10	263626	3	spotify:track:217t1Sb45FwpFw8paHYvkm
1817	The Hat	10	636800	4	spotify:track:1mUH0d5XfXL42tdgL2Oqza
1818	Freeway Flyer	10	229533	5	spotify:track:78lZFRefSo4ZCFZIC37KOO
1819	Gone Again	10	437666	6	spotify:track:3A8YWZ2yB1kWcCHVc9oNrP
1820	Fresh Air	10	321933	7	spotify:track:54uiTEd1MOB7ExqqKCj1HX
1821	Just For Love - Pt. 2	10	98773	8	spotify:track:6dvqHfGk678XioTOyAvcLb
1822	Wolf Run - Pt. 2	10	130733	9	spotify:track:4snJ3bruCQ3kInBpk15hYm
1823	What About Me?	11	401453	1	spotify:track:3sLOV0GZxECi1xcRVzSwaS
1824	Local Color	11	178693	2	spotify:track:7sY7ZvVbRav3bTBXUrerda
1825	Baby Baby	11	280786	3	spotify:track:6YbruO69mp3QYHXALF3xgF
1826	Won't Kill Me	11	149680	4	spotify:track:2ceAzf0DGwHK9wu9Sj6tB4
1827	Long Haired Lady	11	352253	5	spotify:track:0Le5FsFXfv3oB6KBGjBvgi
1828	Subway	11	265306	6	spotify:track:7pAers6BOw29h4zI9qPNUf
1829	Spindrifter	11	275306	7	spotify:track:6busJ5UjXp5W2LhG3oL9xl
1830	Good Old Rock And Roll	11	149493	8	spotify:track:32NUvxep1st89ZiYbD8JrA
1831	All In My Mind	11	224266	9	spotify:track:2HnJJCkdmKI9cYOtzFrtWQ
1832	Call On Me	11	455573	10	spotify:track:4Ls7s7YJSuwkDlxkUetS3B
1833	Break on Through (To the Other Side)	12	145866	1	spotify:track:6ToM0uwxtPKo9CMpbPGYvM
1834	Soul Kitchen	12	213000	2	spotify:track:2Xdc6qyaFBJZ8QW1KhpVci
1835	The Crystal Ship	12	152000	3	spotify:track:0gWvVB4bGvADocoPMEDy3K
1836	Twentieth Century Fox	12	151666	4	spotify:track:7mc2TP4Vzuyw2vNf1bLW9f
1837	Alabama Song (Whisky Bar)	12	197400	5	spotify:track:0JNZGIavoUrdup1NsgJOQs
1838	Light My Fire	12	429760	6	spotify:track:5uvosCdMlFdTXhoazkTI5R
1839	Back Door Man	12	212426	7	spotify:track:03By6gD02qhtvIQiK8KidK
1840	I Looked at You	12	140160	8	spotify:track:6vCLIvOIabRk1XQfMb6RXi
1841	End of the Night	12	170693	9	spotify:track:09ezgACZuwWZt6CtQSSLRG
1842	Take It as It Comes	12	134933	10	spotify:track:4pxHVL0syMQwYK3BxDaTIs
1843	The End	12	703373	11	spotify:track:5UgT7w6zVZjP3oyawMzbiK
1844	Oh Me Oh My (I'm a Fool for You Baby)	13	222173	1	spotify:track:58yfJguiaxtLeYV3ly5nmR
1845	Day Dreaming	13	239960	2	spotify:track:7L4G39PVgMfaeHRyi1ML7y
1846	Rock Steady	13	193573	3	spotify:track:7rvGZDlfqCjY9EWEUg3Xs6
1847	Young, Gifted and Black	13	214226	4	spotify:track:5dcm217docwRMX29EbAhxl
1848	All the King's Horses	13	236000	5	spotify:track:4scnR2BdymYpgLzM9vH6Ra
1849	A Brand New Me	13	266266	6	spotify:track:0YZkPseskG14g0etqdZjqA
1850	April Fools	13	209866	7	spotify:track:7mcRAPSkGRRD5pvrzhhL7V
1851	I've Been Loving You Too Long	13	216466	8	spotify:track:0o4gU2wkqrM9C9DNE50xgs
1852	First Snow in Kokomo	13	244200	9	spotify:track:3eTwIIekod6vK1D9PEFQ42
1853	The Long and Winding Road	13	218666	10	spotify:track:7lHxAH2rr20F5KO9yz2aNt
1854	Didn't I (Blow Your Mind This Time)	13	222733	11	spotify:track:2LhpgzYwWLLzTDYLfTQC7Q
1855	Border Song (Holy Moses)	13	199466	12	spotify:track:2rtv1DsLKFGDm5tXNPnjc6
1856	Monday Morning	14	167840	1	spotify:track:0qjfjKFoP7LaqLI2KI9M1Q
1857	Warm Ways	14	234826	2	spotify:track:4SysnIGNcHQlaz9jJVnIxX
1858	Blue Letter	14	161066	3	spotify:track:2P5jgK6L6NeOIKOs6JdDV5
1859	Rhiannon	14	252773	4	spotify:track:05oETzWbd4SI33qK2gbJfR
1860	Over My Head	14	214666	5	spotify:track:4rBnrnqnI0tcjcNAFO6RZO
1861	Crystal	14	314266	6	spotify:track:6h0s5FUtc6HV3smc8naDPI
1862	Say You Love Me	14	249946	7	spotify:track:6lrQo6KAYvb92MGk6ZuZlt
1863	Landslide	14	199493	8	spotify:track:5ihS6UUlyQAfmp48eSkxuQ
1864	World Turning	14	265933	9	spotify:track:6QvgyZ8xG2OFGjZsH3s8d3
1865	Sugar Daddy	14	250973	10	spotify:track:29IWmqmyYyA1LylPAd2fxh
1866	I'm so Afraid	14	262533	11	spotify:track:1fXvxcQdz9OEe5IeNHQh72
1867	Singing Winds, Crying Beasts	15	290666	1	spotify:track:0vBCQeiEKRy6eJmrf5zz4H
1868	Black Magic Woman / Gypsy Queen	15	319773	2	spotify:track:7cDxjUnMitNKQC5c8RQUko
1869	Oye Como Va	15	256933	3	spotify:track:5u6y4u5EgDv0peILf60H5t
1870	Incident at Neshabur	15	297506	4	spotify:track:1vcmEqKQAHlnV2fcNdJjEt
1871	Se a Cabo	15	170106	5	spotify:track:5JPXVcoVUZd3JYTQEFf9ug
1872	Mother's Daughter	15	265466	6	spotify:track:1Ag8YqvKOcwapkaRJG66p8
1873	Samba Pa Ti	15	284800	7	spotify:track:35fC3Wq3slX4OBfyvBVmHm
1874	Hope You're Feeling Better	15	250506	8	spotify:track:3lysbLRK4bGbQRmYfN5S0o
1875	El Nicoya	15	89066	9	spotify:track:0vAtUwwCnfrMKExDsPC0Lt
1876	Around the World	16	238733	1	spotify:track:0aGQHMr7bc23Y9Ts84ffop
1877	Parallel Universe	16	269360	2	spotify:track:1Se0r96r0gnqg67kJPmESc
1878	Scar Tissue	16	215906	3	spotify:track:1G391cbiT3v3Cywg8T7DM1
1879	Otherside	16	255373	4	spotify:track:64BbK9SFKH2jk86U3dGj2P
1880	Get on Top	16	198066	5	spotify:track:0GcWf1Cc4ixN35D3O9VdcP
1881	Californication	16	329733	6	spotify:track:48UPSzbZjgc449aqz8bxox
1882	Easily	16	231333	7	spotify:track:3QJnjJH53Ocg22MaLutrgJ
1883	Porcelain	16	163706	8	spotify:track:6WUjz18yIeTGDR1E69WHtf
1884	Emit Remmus	16	240200	9	spotify:track:2xDHUsWEsH33sKbFqDZPFj
1885	I Like Dirt	16	157626	10	spotify:track:2bo1tTjK87OHKKUDFthqHx
1886	This Velvet Glove	16	225200	11	spotify:track:49colNVoLFcMszng9O8w4h
1887	Savior	16	292400	12	spotify:track:0O8RjwNco465s5o9Ix9IYj
1888	Purple Stain	16	253373	13	spotify:track:0tGkxA0oybkQ3iR6LLXPjZ
1889	Right on Time	16	112533	14	spotify:track:66wnTJJ7Vo0GW02CMP3etR
1890	Road Trippin'	16	204973	15	spotify:track:1XxCiPw07rd1ytYnE7SoJI
1891	Fat Dance - 2006 Remaster	16	220499	16	spotify:track:3BW34zpQNgRUwuQ4eUyzMN
1892	Over Funk - 2006 Remaster	16	178360	17	spotify:track:0809RpHic1xrZzh9CT4wXo
1893	Quixoticelixer - 2006 Remaster	16	288226	18	spotify:track:28w7CPWQCqQxt0YCzDN75b
1894	Black Dog - 1990 Remaster	17	294000	1	spotify:track:0NSeXLBOh16zjbENkAu0P6
1895	Rock and Roll - 1990 Remaster	17	219800	2	spotify:track:3w2GGz0HjIu9OcWXINRFJR
1896	The Battle of Evermore - 1990 Remaster	17	351666	3	spotify:track:6rfvuWLzWCHZD2HCsmapSk
1897	Stairway to Heaven - 1990 Remaster	17	478173	4	spotify:track:51pQ7vY7WXzxskwloaeqyj
1898	Misty Mountain Hop - 1990 Remaster	17	278720	5	spotify:track:4kOCN0SaJiIlMYn0Qgdr8m
1899	Four Sticks - 1993 Remaster	17	284960	6	spotify:track:3ugy4UZMgDleeBReUjtqP9
1900	Going to California - 1990 Remaster	17	211466	7	spotify:track:55sjCMeQM26VxbNHhMtj2b
1901	When the Levee Breaks - 1990 Remaster	17	427800	8	spotify:track:5yM7n12a0w0ZIxgwoobENF
1902	Since I Left You	18	261000	1	spotify:track:516V4vS25xnGdVgkBWO6Wf
1903	Stay Another Season	18	139946	2	spotify:track:7kp0pGc7BjSe6aTyWUUQvT
1904	Radio	18	261959	3	spotify:track:027CQkZSId1SGW3h7xeOTC
1905	Two Hearts In 3/4 Time	18	202293	4	spotify:track:7obAv6wop4HzavH2eNU6SH
1906	Avalanche Rock	18	23013	5	spotify:track:1pbGbkTAJQTO5tjANIH8xd
1907	Flight Tonight	18	233213	6	spotify:track:3OgzinZ8bjv07duHLrYgmV
1908	Close To You	18	235333	7	spotify:track:7bCmSFlmcCBXeLWgfFP02W
1909	Diner's Only	18	94466	8	spotify:track:7qvTEOKnwUq8OfYqUNZPwB
1910	A Different Feeling	18	262853	9	spotify:track:0gf5aDrh0wyGy5vQo0HlIK
1911	Electricity	18	210080	10	spotify:track:0Mg6Z3OP9fwIEPWHXsnufL
1912	Tonight May Have To Last Me All My Life	18	139986	11	spotify:track:63grpdfs3XAgbsTiYAGOI8
1913	Pablo's Cruise	18	52120	12	spotify:track:7ckIEFqK5dNlhdu6FWjA2w
1914	Frontier Psychiatrist	18	288346	13	spotify:track:0E2UdlzNQP9I70MYumYlFo
1915	ETOH	18	302946	14	spotify:track:7mZ6HkP9xEh1c63qPMdCUt
1916	Summer Crane	18	279106	15	spotify:track:0KS0UD7DUNOTrPEu0fe0bh
1917	Little Journey	18	95853	16	spotify:track:6mIMcm0qEvKmFlSy9zFTGE
1918	Live At Dominoes	18	338840	17	spotify:track:2z2pL8GzZMo3wWW0lE8ERX
1919	Extra Kings	18	226813	18	spotify:track:3UeKLLqEWk7VTDVzmXhdqm
1920	I Can't Get Next to You	19	228813	1	spotify:track:2UclV6Lu93Ssh1spktn0Fp
1921	Are You Lonely for Me, Baby	19	238586	2	spotify:track:1oX2F2w07GFaLsa99DD5q0
1922	God Is Standing By	19	194613	3	spotify:track:2kMt4n51cJzAQkwa5X8zYT
1923	Tired of Being Alone	19	172320	4	spotify:track:10vkYRKw6Jjr7try1ir50G
1924	I'm a Ram	19	227480	5	spotify:track:6QbcnA5zCrjiZIUBzAP4nY
1925	Driving Wheel	19	179720	6	spotify:track:57t3RPV7rxBHtb6Qp2DhA9
1926	Light My Fire	19	235186	7	spotify:track:5eIx02KMwP6qMG8tcZxKhG
1927	You Say It	19	172760	8	spotify:track:4KAkdpQ03txYI8j55NjR8j
1928	Right Now, Right Now	19	172586	9	spotify:track:1u8cDSraOvD9MaQbE7RO0J
1929	All Because	19	170306	10	spotify:track:5JcBaxxrCErCUDDsNtBf8A
1930	Introduction - Where Are We Going	20	96213	1	spotify:track:43vgVmSkxmdWS81ux555qp
1931	Shake A Leg	20	240680	2	spotify:track:2Y4avOgPNv7OiUf1LccXpt
1932	I'm Ready (If You're Ready)	20	314946	3	spotify:track:10wTzcfZtJz3d3duubRIuR
1933	You're My Everything	20	254333	4	spotify:track:4mlT3EqajnawNQAS5sGjfe
1934	Jammin' In America	20	301066	5	spotify:track:0Zvb3uBuVfsqBOydFBAS2W
1935	Smile	20	184746	6	spotify:track:7wkTO8iGTmt4DqBDOtMJY4
1936	Party Train	20	347253	7	spotify:track:2ULLfb35Xp05d8QbbKXlXw
1937	Jam The Motha'	20	257973	8	spotify:track:2XMa6110WeA1TeMGpiIzyy
1938	I Expect More	20	236920	9	spotify:track:7r32SE17sUUPHLl6Hlbcrn
1939	You're Something Special	20	321746	10	spotify:track:4QXDt2NsJTuLQDRRTOg8cB
1940	Someday	20	278040	11	spotify:track:5P0ZmzUMebYDljW9b6IRa1
1941	Party Train - Bonus Track (12" Special Dance Mix)	20	370826	12	spotify:track:2p2C7oWaBOqtbdr8Ydpkpy
1942	Jam The Motha' - Party Mix	20	351253	13	spotify:track:4cFLR6YhOkd3d0g1AspiD2
1943	I'm Ready (If You're Ready) - Extended Remix	20	353240	14	spotify:track:0JEntuxI3KuceKv4urBAoP
1944	Shake A Leg - Dub Version	20	241226	15	spotify:track:1F0TnXtjcA0v2nFNUx0qjx
1945	Party Train - Bonus Track (Single Version)	20	243080	16	spotify:track:0grlvSkX2iLSDXLtSKMv9m
1946	Jam The Motha' - Munchkin People	20	327426	17	spotify:track:2P1Mc8JBsdCyeqc2d9Y2xP
1947	Start Me Up - Remastered	21	213066	1	spotify:track:7HKez549fwJQDzx3zLjHKC
1948	Hang Fire - Remastered	21	141093	2	spotify:track:5HcTLesmMaPr0CkwdbtK0o
1949	Slave - Remastered	21	392800	3	spotify:track:0oM5Z3MGSOieWT6ObRQ2Uj
1950	Little T&A - Remastered	21	203173	4	spotify:track:7K3rmA4f6NEElsxKEOOt8H
1951	Black Limousine - Remastered	21	212026	5	spotify:track:0SpNlEAUqNsuij5xi7Z7cQ
1952	Neighbours - Remastered	21	211466	6	spotify:track:1nBufEoW7UXvQWgqmNl6Kx
1953	Worried About You - Remastered	21	317560	7	spotify:track:02Y7UtZLh7SbhYsYG5N7Rr
1954	Tops - Remastered	21	226773	8	spotify:track:0kesmP5jKuavoUDwuoMG3l
1955	Heaven - Remastered	21	262400	9	spotify:track:0QVJsWtmgj9SWZaLYiX2i3
1956	No Use In Crying - Remastered	21	205173	10	spotify:track:4wa7EsaCIc31OoedVvkVz6
1957	Waiting On A Friend - Remastered 2009	21	274226	11	spotify:track:4Wd9pEtEnZNDjgiswGOpJb
1958	Ladies Night	22	385506	1	spotify:track:2uKJxjqcFu2Pr2CEsGGYJa
1959	Got You Into My Life	22	267360	2	spotify:track:2k30U4aX4OHpOnmJiNSvjx
1960	If You Feel Like Dancin	22	306973	3	spotify:track:0KvEhsbI5xrHoKzftKm8NU
1961	Hangin' Out	22	326960	4	spotify:track:7tt7kijVVgpt1M8GIcGx5F
1962	Tonight's The Night	22	429440	5	spotify:track:5vzQ2Eju6KlvB2iGRH7iwi
1963	Too Hot	22	295160	6	spotify:track:0jNTJSaktLVy8iAi7KY2zB
1964	Squeeze The Fruit	23	179493	1	spotify:track:6BzGdlhn2KQjIAhsqGvBHn
1965	Funny Feelings	23	291466	2	spotify:track:3sUGSc0A6pvWZBv17WZvti
1966	Heaven Knows	23	285266	3	spotify:track:2d6k6RYjTedahRbDTz87aT
1967	Zoom	23	404133	4	spotify:track:14Tj6yYXItEhy466a0yeR0
1968	Won't You Come Dance WIth Me	23	228973	5	spotify:track:3a0GKgO31l0VXJhI8Ti6PG
1969	Brick House	23	208893	6	spotify:track:5VJjhHyG8NZ5xdgG6uTb3P
1970	Funky Situation	23	221640	7	spotify:track:0bBVLnMBDfMKiJQsB3eWBy
1971	Patch It Up	23	239600	8	spotify:track:0P526lWlFhpL5qLBqZ6f1U
1972	Easy	23	256426	9	spotify:track:1JQ6Xm1JrvHfvAqhl5pwaA
1973	Rock This Town	24	207000	1	spotify:track:2SknHmwY6GiOv6aK7YRahd
1974	Built For Speed	24	178000	2	spotify:track:63WGqx77lFVgigZ5CAEAow
1975	Rev It Up And Go	24	151000	3	spotify:track:6JMEPCrZqn7XjbBLEglOpL
1976	Stray Cat Strut	24	198000	4	spotify:track:5yogRsv5ggT6iCnFgvdpho
1977	Little Miss Prissy	24	184000	5	spotify:track:42hFrsbDc6VMcTl4anrK1x
1978	Rumble In Brighton	24	197000	6	spotify:track:5Ov4AC7S27PG7YyiemE9X2
1979	Runaway Boys	24	182973	7	spotify:track:1G9CoqXAYqagyOaNlIK4s1
1980	Lonely Summer Nights	24	200991	8	spotify:track:1ZndmQtUklM8TP0RVtBcpU
1981	Double Talkin' Baby	24	186000	9	spotify:track:3c2VaHIWDmKxnCCZUyvJ2S
1982	You Don't Believe Me	24	179000	10	spotify:track:3Luz0pMHDE9rK656HDnJts
1983	Jeanie, Jeanie, Jeanie	24	143963	11	spotify:track:04cy1fNy6msAI5sDcmxkwu
1984	Baby Blue Eyes	24	168000	12	spotify:track:4nwAHhkEYnjWnlZfA85AT3
1985	Soulful Football	25	228520	1	spotify:track:14S7k4Ye8fq6L40WmnvDkF
1986	Oo Wee Baby, I Love You	25	222453	2	spotify:track:2kKKnBtbTVFWoTAnb4Eoo2
1987	Can I Change My Mind	25	169493	3	spotify:track:1udqKwPVgMKYduRn1eDlra
1988	Funky Chicken, Part 1	25	133640	4	spotify:track:0e7Yx4UFoJ7jzx8l7XotMK
1989	Sugar Sugar	25	158626	5	spotify:track:5AT9C6r8sC0mOknFCUmQ8t
1990	Off Into A Black Thing	25	193080	6	spotify:track:3gqfBfEr40P3L85GcLG5Vs
1991	Is It Something That You've Got	25	168653	7	spotify:track:6PkinQHJH1PnAby9GeJBFC
1992	Funky Chicken, Part 2	25	120493	8	spotify:track:5iJG7bGor5lPRR3D2fmQSb
1993	Harlem - Bonus Track	25	179986	9	spotify:track:5Pop6Y82gJk0HQ8shywT3x
1994	Loose Booty - Bonus Track	25	180266	10	spotify:track:1AVGcG18USbKGWtNtiWZkE
1995	Break Your Back - Bonus Track	25	182600	11	spotify:track:3HXycNMDG0io299dyjPbv4
1996	Open Up Wide	26	228253	1	spotify:track:4gwJW2ppceiKyuSxVfbOb2
1997	Livin' In Heat	26	174053	2	spotify:track:2EcGXirQclKbQ8BNoByT6j
1998	Hello Groceries	26	176893	3	spotify:track:3uTotVl33hNMpBG4B8JBbC
1999	Handbags And Gladrags	26	203760	4	spotify:track:5rhWL3cAyyD0huYAQcWcrW
2000	Get It On	26	179146	5	spotify:track:006yvCdaWUS79qp2Ip3Hdl
2001	Boys And Girls Together	26	171386	6	spotify:track:174ifUOYMmOiwVQwK9Pg2W
2002	Invitation To A River	26	851866	7	spotify:track:7qc5PpU2Mb7w0wiRN5fq6z
2003	Mandrill	27	260360	1	spotify:track:1xI62yXrvcXuLTzUmkmlje
2004	Warning Blues	27	271760	2	spotify:track:1JoWDVhwuj1rJV259PGGQF
2005	Symphonic Revolutions	27	315666	3	spotify:track:12yV7gTBLaTK3NchxxGFjR
2006	Rollin' On	27	459706	4	spotify:track:1WzIDhXrSVtVmPkw9tsfYh
2007	Peace And Love (Amani Na Mapenzi) - Movement I (Birth)	27	110000	5	spotify:track:7xrLZk6YEsF90ipTNTcIqj
2008	Peace And Love (Amani Na Mapenzi) - Movement II (Now)	27	106106	6	spotify:track:4bI75kjE3A7ReRLnKfHTWH
2009	Peace And Love (Amani Na Mapenzi) - Movement III (Time)	27	134160	7	spotify:track:2qmx1VhwkNwUydnMfektiD
2010	Peace And Love (Amani Na Mapenzi) - Movement IV (Encounter)	27	363440	8	spotify:track:5BiFP4yiF2yFSCui1N0fUy
2011	Peace And Love (Amani Na Mapenzi) - Movement V (Beginning)	27	125666	9	spotify:track:0Gq8OHe4JPClbjWUTEmVLZ
2012	Chutney	27	185960	10	spotify:track:66wVaiPKHWIx2g4oMQ7ic1
2013	Theme From Shaft - Album - Remastered	28	279200	1	spotify:track:7KMILVTQdVS4zQ8ilTcpRO
2014	Bumpy's Lament - Album - Remastered	28	111786	2	spotify:track:6cwESJ9VBETp2n0yZPOo6Q
2015	Walk From Regio's - Remastered	28	143853	3	spotify:track:6hfCnZXkRBneixasZAQh53
2016	Ellie's Love Theme - Album - Remastered	28	198080	4	spotify:track:7FaewmxbN68w4BbEWkQMJe
2017	Shaft's Cab Ride - Album - Remastered	28	67773	5	spotify:track:0Fjq4fB5P0fvjXotqJFipP
2018	Café Regio's - Album - Remastered	28	369786	6	spotify:track:38TjGLRAXPOcrQZzBATY6O
2019	Early Sunday Morning - Album - Remastered	28	229293	7	spotify:track:0EkhPnzXOYsBPIpcJK9niV
2020	Be Yourself - Album - Remastered	28	270533	8	spotify:track:7iu7jugiH3od2qrtVBwbu0
2021	A Friend's Place - Album - Remastered	28	200440	9	spotify:track:4XxIU8bNbHETXxFT3l3rew
2022	Soulsville - Album - Remastered	28	228413	10	spotify:track:752f5RLmGg7mSpPx0yUPnk
2023	No Name Bar - Album - Remastered	28	370840	11	spotify:track:37HLYFkO7p8iBiR8WM3TMQ
2024	Bumpy's Blues - Album - Remastered	28	243866	12	spotify:track:5mpkvrsA4sB4mgWYN9B8pJ
2025	Shaft Strikes Again - Album - Remastered	28	183386	13	spotify:track:3kIdUDZBRFto9ojukdLLRD
2026	Do Your Thing - Album - Remastered	28	1167653	14	spotify:track:0uy3Hosy67vfoFGKpoBBg6
2027	The End Theme - Album - Remastered	28	116520	15	spotify:track:6PzQq38iyw0IrJe0TuwcOf
2028	Theme From Shaft - 2009 Mix	28	284373	16	spotify:track:05NFVnibayA2VRyc7bOZl8
2029	Magic Key	29	237373	1	spotify:track:5RIyBMJfM8nLY5FRIQGg5e
2030	Tobacco Road	29	432146	2	spotify:track:6Y0wwUbIwy0aI6keEbv60a
2031	Feelin' Alright	29	303386	3	spotify:track:2dz3vdnxYhwEp8VO7tvQQ3
2032	In Bed	29	183026	4	spotify:track:4jcdtokyGxxCGotVfjOSwc
2033	Train To Nowhere	29	204120	5	spotify:track:4qukjz1kIDsUIfLitqz4V2
2034	Get Ready	29	1292293	6	spotify:track:6pN3ra1mEPtjFsdCvDDHW3
2035	The Laws Must Change	30	442000	1	spotify:track:4yfZ2hbaZko97HW0g7JGIO
2036	Saw Mill Gulch Road	30	279813	2	spotify:track:5ELpOAzHjbP2jwnQhsViaw
2037	I'm Gonna Fight For You J.B.	30	327853	3	spotify:track:6vds8lHE6x1obVeHTwVXxI
2038	So Hard To Share	30	423720	4	spotify:track:3Ht3ffJa58su4AUhbVCRMY
2039	California	30	571080	5	spotify:track:4hv2Pkp66pnIrUBuS95Snw
2040	Thoughts About Roxanne	30	500733	6	spotify:track:1XHatL5GRxiV7jYvnfdaTc
2041	Room To Move	30	302053	7	spotify:track:53kWBpTaAPrE3BC0d22y3i
2042	Sleeping By Her Side	30	310146	8	spotify:track:5O4C9TpeIhkxum7lhCX0B1
2043	Don't Waste My Time	30	294760	9	spotify:track:5kytQwmrbViv4f1twPs8BI
2044	Can't Sleep This Night	30	381493	10	spotify:track:6fdwvUnKiLv3IIAWaLtol0
2045	Song Of Joy	31	196266	1	spotify:track:0g7avRdGifbSDjjOSRKwl5
2046	Lonely Night (Angel Face)	31	198200	2	spotify:track:0qgsctXeEVnUwgGESn3vW4
2047	Mind Your Love	31	181333	3	spotify:track:3rpVo6G9e0lPan887GjO4o
2048	Smile For Me One More Time	31	199360	4	spotify:track:0SM8V5t6lRTmTErOFrWZwj
2049	Shop Around	31	210240	5	spotify:track:3maAFCOtAdJElV8gdU5GG4
2050	Going Bananas	31	131533	6	spotify:track:4ialofdjKbZsweSi9juwl6
2051	Butterscotch Castle	31	200866	7	spotify:track:3tSQpOWsf3kdQaqQH1zq6z
2052	Muskrat Love	31	228160	8	spotify:track:3NRiJ7XFMALvrXXB1oRBFO
2053	Thank You, Baby	31	219466	9	spotify:track:1NYPjHSNZ7X3vMSqrtuN98
2054	Wedding Song (There Is Love)	31	200200	10	spotify:track:7AkbGqTCUe4EdJnnVtodnU
2055	1954 Boogie Blues	31	295426	11	spotify:track:5EbfxT61aTKnuHdUrnAdzn
2056	Let The Music Take Me	32	411200	1	spotify:track:6uCiWpq0zynO48E2zzHSCg
2057	Keeping Faith In Love	32	248693	2	spotify:track:7L1zdKs8WnXHYR7xDOUYmr
2058	Settle For My Love	32	315440	3	spotify:track:2xRgzDEtR2eBz5dTgMvIpx
2059	Message In The Music	32	181626	4	spotify:track:75jek18k3dUIMAyWoGZR0A
2060	Haven't You Heard	32	405293	5	spotify:track:0rgGwEybYIQvqHf5qEkFOB
2061	Givin' It Up Is Givin' Up	32	299693	6	spotify:track:0St4uNqxLDY5GHm7PtBTJS
2062	Call On Me	32	408893	7	spotify:track:5cXwbea6eeAMP774qNiKwX
2063	Message In The Music (Reprise)	32	57266	8	spotify:track:0ynJOE3L6kRQpapdamS8Q5
2064	Your Love	33	304720	1	spotify:track:5NxfdAEPSjEFJB9EDOPmwI
2568	Tuesday's Dead	83	216933	6	spotify:track:02Wa7i8razPvXdTw38524O
2065	Handle Me Gently	33	227826	2	spotify:track:0Rwq4VbfQmOPdriYLdMfbU
2066	Be There in the Morning	33	255506	3	spotify:track:3KutAiQ698975DL3JoQ7gF
2067	Invitation	33	246280	4	spotify:track:4dNUbZOgL8gg34dtHuLmJ6
2068	Together	33	195320	5	spotify:track:7LwcPV2Rm4GvLEVpYL2NYZ
2069	Disco Land	33	275226	6	spotify:track:7u5SDe2MDZO2FoDIARBE2k
2070	I Have a Dream	33	378906	7	spotify:track:0LpZTrwyJbNauEc2JPUvum
2071	Beijo Patrido	33	362560	8	spotify:track:1EGKSrydiSLeEr2paQFPZ7
2072	Kigston	33	265306	9	spotify:track:04SvotjurLAGiVaZPH3f6g
2073	Your Love - 7" Version	33	216666	10	spotify:track:7Ek1dytFpzQBzy8dGzDlcM
2074	She's Gone - 7" Version	33	222053	11	spotify:track:0c6i7MJxWycSuoJcqvT4YD
2075	Too Hot to Handle	34	223360	1	spotify:track:2bEMh5V7tB17krsfrigGyS
2076	Boogie Nights	34	303533	2	spotify:track:20zOIoex7YchUh87d8tlvg
2077	Ain't No Half Steppin'	34	309440	3	spotify:track:5fR3MHtRauZ3TCgCKuNLZi
2078	Always and Forever	34	374826	4	spotify:track:31fzVAmqx899uxIPomTYtO
2079	Super Soul Sister	34	236560	5	spotify:track:7yZsqZ9AsLulJePOrdk82F
2080	All You Do Is Dial	34	250066	6	spotify:track:799DAkjpBvb5hbJmgDYVBp
2081	Lay It on Me	34	195626	7	spotify:track:04qA0pMQwP0Q8WbKO0ZKU2
2082	Sho'Nuff Must be Luv	34	243733	8	spotify:track:4iOFTgr1IMDFo7CZ22KmTc
2083	I'll Beat Your Booty	34	180000	9	spotify:track:13bgAmrqCJS2q3tHZWu24R
2084	Body Language	35	305893	1	spotify:track:15ZZSg1sARFTQ39TWtFiL9
2085	Another Nail for My Heart	35	193666	2	spotify:track:4ZloPzQWdmjbBlZOZ08DS7
2086	S.O.S.	35	237040	3	spotify:track:1uqX1T2qP3QIJk8uLX8C5c
2087	We've Got Tonight	35	258133	4	spotify:track:5ndk2hHPWtA2PjX7LlAMXL
2088	(Ooh-Wee) He's Killing Me	35	207560	5	spotify:track:0diC4xkQtSASZUGjud12P7
2089	I Can't Stop	35	209440	6	spotify:track:6VQk8qxOIglmKrGalVFpKA
2090	Love Me Again	35	224066	7	spotify:track:0YMo89H24xaIh2zYPme8zN
2091	Soar Me Like an Eagle Flies	35	215066	8	spotify:track:4R1cNOBUCT15DpytoN9YXJ
2092	People in Love (Do the Strangest Things)	35	170800	9	spotify:track:1Bp4DBjHrCsvKXsxmva9iN
2093	I Want You Tonight	35	222666	10	spotify:track:5pR1Ares0249ezToii4GRC
2094	Look What You Find	36	284760	1	spotify:track:3gNvGzRFVNxgBT5ICD69hz
2095	Every Little Step I Take	36	229493	2	spotify:track:2PM8qgLtBnmFMsrlvP1HsT
2096	Games	36	193653	3	spotify:track:7d98e5q4okSJO7AJAtxuPi
2097	I Want You for Myself	36	396960	4	spotify:track:3tAawZ4CeNujAAP5t0kijg
2098	In the Distance	36	138666	5	spotify:track:1bBbMtI0cWyjHnMN88s1oP
2099	I Love You More	36	186306	6	spotify:track:5LYkSMSgRRaxRUecVb9re9
2100	Dog-Man	36	277893	7	spotify:track:1J3B0zEWTpjDEgGu4EuBDD
2101	Everybody's Talkin'	36	257733	8	spotify:track:2veiPuGLVnieMK8NeQlqWP
2102	Part 1-The Alien Challenges The Stick/Part 2-The Alien Succumbs To The Macho Intergalactic Funkativity Of The Funkblasters	36	560520	9	spotify:track:5QTz1si2jOdGVf5CKObpPr
2103	I Want You for Myself - U.S. Single Edit	36	232373	10	spotify:track:4LYLi3OVArrK5d1HMNLMjD
2104	Every Little Step I Take - U.S. Single Edit	36	220773	11	spotify:track:016KJVNiXpRzsSiSBKz0w7
2105	Noah: Right!	37	214386	1	spotify:track:46KcXNtjugiVJCe292K785
2106	Noah: And the Neighbor	37	71920	2	spotify:track:79giZMGeNs9wQRcnTSOQja
2107	Noah: Me and You, Lord	37	180266	3	spotify:track:3qTed4YRrzcSzGkSwlZpj2
2108	Revenge	37	364640	4	spotify:track:0C0y4nnmblLN13HAPVapvK
2109	The Lone Ranger	37	57346	5	spotify:track:1gmLnqPwz2WlbmoXOV7r9x
2110	Old Weird Harold (9th Street Bridge)	37	314320	6	spotify:track:4aj7uppudfYmVugWwxiCEK
2111	Driving in San Francisco	37	228186	7	spotify:track:1X7RUrFyors5BVb1q7vI0N
2112	The Apple	37	106733	8	spotify:track:4mXfpzcLiplUv0ew2GCmPs
2113	Babies	37	230640	9	spotify:track:0wtxVCF4blSTnNYRC0ASWU
2114	The Water Bottle	37	54546	10	spotify:track:4wCXFfP5ZMhEn95VIjP03h
2115	Street Football	37	80640	11	spotify:track:1ufOwfTiSMe2WZpWrpOqwZ
2116	Fat Albert (Buck, Buck)	37	554320	12	spotify:track:54cw0FqNtpB7u1qu34aywN
2117	Sin's A Good Man's Brother - Remastered	38	291178	1	spotify:track:6pWvauh3ksqTynfxV2WyIb
2118	Aimless Lady - Remastered	38	209493	2	spotify:track:0FFIleakWHp8j90BxTtF0D
2119	Nothing Is The Same - Remastered	38	314533	3	spotify:track:7cm9Mr6OeMENmwNumYxOdR
2120	Mean Mistreater - Remastered	38	267866	4	spotify:track:1qKSrG553yLwxUVR4el9Vs
2121	Get It Together - Remastered	38	310000	5	spotify:track:6dklUDGs7MXGnW6yFCb3nN
2122	I Don't Have To Sing The Blues - Remastered	38	277466	6	spotify:track:5g3TwV5DZE1IiL9meh59Wd
2123	Hooked On Love - Remastered	38	433066	7	spotify:track:35VYDl05b9mlqVUaIXCfBw
2124	Closer To Home (I'm Your Captain) - Remastered	38	608933	8	spotify:track:168aH14F9ef3ymWlk9vWHp
2125	Mean Mistreater - Alternate Mix	38	273040	9	spotify:track:0AeTOCp998swO3dvtBByxF
2126	In Need	38	690200	10	spotify:track:1341zyLZjurJwGYNLswQ8g
2127	Heartbreaker	38	437138	11	spotify:track:0ibNbJysTUZ7NZA7hJhbik
2128	Mean Mistreater	38	322973	12	spotify:track:21ufFFZXpG1XMNEXTouNvw
2129	Country Road - Remastered 2002	39	262733	1	spotify:track:2talazQ0YPid0qzloEI9n7
2130	All You've Got Is Money - Remastered 2002	39	316466	2	spotify:track:7x2YStTSqYtrnKkHPgeHnO
2131	Comfort Me - Remastered 2002	39	408293	3	spotify:track:60xGcvyTlFs34uC00chtkO
2132	Feelin' Alright - Remastered 2002	39	267800	4	spotify:track:4YCuFnUwj0yBL0jQrmJ14u
2133	I Want Freedom - Remastered 2002	39	379266	5	spotify:track:1y8JPlT1ZFKI7eAM0XJDcF
2134	I Can Feel Him In The Morning - Remastered 2002	39	435706	6	spotify:track:71DZKIK3YiwLPnubY210XG
2135	Gimme Shelter - Remastered 2002	39	389026	7	spotify:track:5WqEP1YckYLZPPvJYKBsu3
2136	I Can't Get Along With Society - Remastered 2002	39	341440	8	spotify:track:5kkboR8sZL7ztjQS5ZqFh9
2137	Jam (Footstompin' Music) - Remastered 2002	39	280866	9	spotify:track:4LqTNUZQF9lrqPOgrUvVuR
2138	Country Road - Extended Version	39	458493	10	spotify:track:5S3f0vh5A0j2CNzCiWpjZe
2139	All You've Got Is Money - Extended Version	39	499440	11	spotify:track:3kOWuEPaTwYZ3TIteSWkbK
2140	Feelin' Alright - Extended Version	39	357093	12	spotify:track:775t8btetv0zqbfbrqefas
2141	Puttin' on the Ritz	40	276500	1	spotify:track:7JgxTJ7AIJbXRgGANCj6U6
2142	Puttin' on the Ritz - Long Single Mix	40	277060	2	spotify:track:3mGzjGfilbMmePo6YCyTA5
2143	Livin' in My Dreamworld	40	188500	3	spotify:track:0QhaJRYyVL6VN5qkqWRwLR
2144	Serves You Right	41	308106	1	spotify:track:3RgHXXCS8mCRvhOaqMV1s0
2145	Wandering Stranger	41	332400	2	spotify:track:26nHCk4xOLC3RnWrfchfw2
2146	Tell Me	41	327733	3	spotify:track:15lbNa4vfc9snSsWq5HSt7
2147	My Love	41	244973	4	spotify:track:6l9fOwFZ2pZzGUAVnPM76l
2148	Round And Round	41	294226	5	spotify:track:0KUtxmWijNo3clJmSsKjaw
2149	Truly	41	200506	6	spotify:track:7AslBsiVLQAGrmFmi79ZeK
2150	You Are	41	300880	7	spotify:track:2SQkCUj5rYrFCRKnaTbYYr
2151	You Mean More To Me	41	182786	8	spotify:track:5mT09voM755XlPjYQERiV2
2152	Just Put Some Love In Your Heart	41	83853	9	spotify:track:4kGBozHJBZ7o4rbCaWi5mf
2153	Endless Love - Solo Demo	41	236506	10	spotify:track:3Qil95ZXAjuCQAdvNiulbA
2154	You Are - Instrumental	41	305533	11	spotify:track:1iV2WMmXmwqOxuXRNhMqyy
2155	Never Can Say Goodbye	42	309647	1	spotify:track:7huWsflUViqN7KktlH8wc5
2156	(They Long To Be) Close To You	42	544570	2	spotify:track:72BforHtvsuWLnEO7ufbX8
2157	Nothing Takes The Place Of You	42	331322	3	spotify:track:6wyp0r5aarDMG4ZjQJtjc6
2158	Man's Temptation	42	301188	4	spotify:track:4xu6MRysXVZjLGsCzw4SYc
2159	Part-Time Love	42	514068	5	spotify:track:0mY9AoyBi33QED2hRkeMtT
2160	Medley: Ike's Rap IV / A Brand New Me	42	582943	6	spotify:track:4whRRZkYmhBY0xBkB2Ukyj
2161	Going In Circles	42	420961	7	spotify:track:6vKVnfVoDKoHWKRpM0tvaz
2162	Never Gonna Give You Up	42	349839	1	spotify:track:2SeCEifXBjzN1J7UGFapQ8
2163	Medley: Ike's Rap II / Help Me Love	42	453405	2	spotify:track:2JOQ5uf96YYnc3dhW6cZtX
2164	Need To Belong To Someone	42	316019	3	spotify:track:79sBuyB5xoVIy4DeAn2XEO
2165	Good Love 6-9-9-6-9	42	317924	4	spotify:track:0XoWFQSIvFZ0lhzYE7HWLx
2166	Medley: Ike's Rap III / Your Love Is So Doggone Good	42	559244	5	spotify:track:5LN57HqOm9RFGno4NHLPHh
2167	For The Good Times	42	322362	6	spotify:track:73J9wxoTAxY91rOXtYHOeA
2168	I'll Never Fall In Love Again	42	296506	7	spotify:track:4RTnOmFmpVtP4Np1agvPxQ
2169	Love of a Woman	43	356693	1	spotify:track:1DmfVmdDKM9enJLtPrfMnC
2170	Little Kind Words	43	255280	2	spotify:track:6n1y1MUq4IRYiPzONgJqoz
2171	Old Man	43	337133	3	spotify:track:4jtfXUHPb39NePMdO0ryiF
2172	Sing, Sing, Sing	43	204480	4	spotify:track:6WnoegvguYO3i6Po7hiNv8
2173	1849	43	374013	5	spotify:track:6n4dvCg5pOHcdOslwennR1
2174	One Fine Morning	43	319320	6	spotify:track:5pT1UzzwpzFpRJGJI4z0qi
2175	Hats off to the Stranger	43	215920	7	spotify:track:1wnKM1VQqMO3dDGYaSC3IK
2176	Show Me the Way	43	150146	8	spotify:track:1L4qp865CTvN3KBhcswVBI
2177	Step out on the Sea	43	307506	9	spotify:track:3xyUYyPY0spI5GAaaT9Tp8
2178	Sweet Lullabye	43	348413	10	spotify:track:5YhN7ZghImu4f9k2fGmAZp
2179	Prelude to Aire	44	167106	1	spotify:track:02R78WnUZesqURMtDtAlAw
2180	Aire	44	386853	2	spotify:track:5U9jQdWycmPDDEzlZv1CQK
2181	Devil's Sweet - 2002 Remaster	44	607066	3	spotify:track:3HdZuXwny0d7zgmRVijJNF
2182	Italian from New York	44	254026	4	spotify:track:7ChQYMe8sVngP0Ihu6C3FR
2183	Hanky Panky	44	113266	5	spotify:track:4BNfmD5td9EKTbhxFRM8p0
2184	Life Saver	44	318213	6	spotify:track:4u8iqyHvoMdgqjZZs1mSjk
2185	Happy Man	44	195760	7	spotify:track:5f53FRJzkiXliPOv4iiXKe
2186	(I've Been) Searchin' So Long - 2002 Remaster	44	268426	8	spotify:track:3z9pBucv2HHp1gYaTcQwiI
2187	Mongonucleosis	44	205733	9	spotify:track:7H0DeUv9YHAQ23yq8iVKat
2188	Song of the Evergreens	44	319866	10	spotify:track:0IEgQg9jYySSpfrb4NMC8e
2189	Byblos	44	378200	11	spotify:track:0VGNpPrGlnmJymxscQrgHo
2190	Wishing You Were Here - 2002 Remaster	44	275253	12	spotify:track:3apndFiT1MCYS9qSy4NJCP
2191	Call on Me - 2002 Remaster	44	242653	13	spotify:track:5BCPL5mWm6UqI4atl18kVm
2192	Women Don't Want To Love me	44	275266	14	spotify:track:4eauWdStQpxCdf7YxqmIJk
2193	Skinny Boy	44	312333	15	spotify:track:36mId5BAvdpdVLIbx1ZINE
2194	Byblos - Rehearsal	44	340533	16	spotify:track:5YWFXHifA2NbB5hPIUz4Qn
2195	What Am I Gonna Do With You	45	215333	1	spotify:track:6VJZL38AyilSCBlqylwSRL
2196	You're The First, The Last, My Everything	45	274266	2	spotify:track:1oxUiD6kR2UWYnIutS33pF
2197	Can't Get Enough Of Your Love, Babe	45	270333	3	spotify:track:3ky8x7UQb6XGpD8CC4xAnu
2198	Honey Please, Can't Ya See - Single Version	45	194173	4	spotify:track:6NJFJRuabiv5IDwxWXGqzE
2199	Love Serenade	45	425826	5	spotify:track:2PXtRrGKGknY76h6Q521nT
2200	Never Never Gonna Give Ya Up	45	290666	6	spotify:track:3LxMs3DBirmev8OFkSNuBA
2201	I'm Gonna Love You Just A Little More Baby - Single Version	45	253840	7	spotify:track:29XAF3CXAN2LqHIGRNmnc1
2202	I've Found Someone	45	220493	8	spotify:track:7fYKLD4kgJfdZpl4CqVmOJ
2203	I've Got So Much To Give	45	190333	9	spotify:track:6aPVSLPaFzTzjj345PMf98
2204	Standing In The Shadows Of Love	45	323000	10	spotify:track:4evI6RZNBvD2AiEDyR8BU4
2205	Shake Your Head	46	185800	1	spotify:track:4jN6w0VRuqxlW87aidGAXh
2206	So Long	46	368333	2	spotify:track:3CGeeXDNLWgwFVbHsHptS3
2207	You're Gettin' a Little Too Smart	46	222373	3	spotify:track:5L6m6QbwOZPocch6y3EKZB
2208	Medley - I Think of You / You Control Me	46	477493	4	spotify:track:6NEMc1CMOfSXadQU7bQGz2
2209	What'cha Gonna Wear Tomorrow	46	258333	5	spotify:track:2Uz0h8Y2y8Mc6AHjNJmClP
2210	Medley - Heaven Couldn't Be Like This / Without You Baby	46	618600	6	spotify:track:7bRQQ4UmpAdpI51ZKZIk8H
2211	My Dreams Have Got the Best of Me	46	171266	7	spotify:track:1qKm8JMEdHapzVWP6zYqNg
2212	Set It Out	46	303773	8	spotify:track:5nluMGccLCvzfQbh1qZ5K9
2213	Take It or Leave Me	46	366426	9	spotify:track:0U3uqh1KZfXPXFngbPVio2
2214	Feel the Need	46	425866	10	spotify:track:70Dbzlzeu1du4U1HJMz3Xl
2215	Wednesday	46	214306	11	spotify:track:7EY2ASQBnupnDyRBZJSzfr
2216	Love for You	46	318493	12	spotify:track:1hVqu80cJgLSQF5uN8jF8d
2217	Look What's Happened to Our Love	46	194000	13	spotify:track:4t4Xtj3RAUPZnbLDJFKAA1
2218	Sexy Ways	46	133306	14	spotify:track:1alS0u0SSnmrkE6jT5jhrG
2219	Love Has Come to Me	46	304760	15	spotify:track:2poq3nUDnlCudmoTQ1Dx2X
2220	Sgt. Pepper's Lonely Hearts Club Band - Remastered 2009	47	122893	1	spotify:track:4fUKE8EULjQdHF4zb0M8FO
2221	With A Little Help From My Friends - Remastered 2009	47	164106	2	spotify:track:2RnPATK99oGOZygnD2GTO6
2222	Lucy In The Sky With Diamonds - Remastered 2009	47	208466	3	spotify:track:25yQPHgC35WNnnOUqFhgVR
2223	Getting Better - Remastered 2009	47	168120	4	spotify:track:3LtOmWpTXLhilL5odoKysR
2224	Fixing A Hole - Remastered 2009	47	156826	5	spotify:track:3pKKxkeB1pOUMHwWBmKc3Y
2225	She's Leaving Home - Remastered 2009	47	215160	6	spotify:track:3PjMtNzwhDHqxoKudm6GvF
2226	Being For The Benefit Of Mr. Kite! - Remastered 2009	47	157533	7	spotify:track:6W35n1UlkvqhfMZstB4BXs
2227	Within You Without You - Remastered 2009	47	304666	8	spotify:track:3Umg8CDhO8dOSj7yBTInYb
2228	When I'm Sixty Four - Remastered 2009	47	157666	9	spotify:track:1NrbnHlR2BFREcyWXHIHip
2229	Lovely Rita - Remastered 2009	47	162093	10	spotify:track:6h9W5FxX4E9lUFsyq8j1AD
2230	Good Morning Good Morning - Remastered 2009	47	161226	11	spotify:track:0xIuNHHcKI1JDuBPlSwzb1
2231	Sgt. Pepper's Lonely Hearts Club Band - Reprise / Remastered 2009	47	79066	12	spotify:track:42ocGQCOT0xYtV3f5kJDsD
2232	A Day In The Life - Remastered 2009	47	337413	13	spotify:track:0hKRSZhUGEhKU6aNSPBACZ
2233	Egyptian Danza	48	356226	1	spotify:track:7GDk0u3NXBZvjCyh4ihsHF
2234	Chasin' the Voodoo	48	304960	2	spotify:track:5sVBbnxQSdsiHmQzhChE0y
2235	Dark Eye Tango	48	322973	3	spotify:track:2dhUHZRP0Wh84fm7jZy7bO
2236	Señor Mouse	48	440826	4	spotify:track:5l6zJJ4i3lm5uig1dIHgTC
2237	Fantasia Suite for Two Guitars	48	311360	5	spotify:track:4dl7ujLpPt4Y5AZ548g5YT
2238	Casino	48	569866	6	spotify:track:4zUuBmTmMYyjYHqNQzYADM
2239	Skin Tight	49	474266	1	spotify:track:3iRcwzyx4g9uue2PeG8hql
2240	Streakin' Cheek To Cheek	49	342400	2	spotify:track:3y7UGj9If1Ddv4uOiRGixT
2241	It's Your Night / Words Of Love	49	480706	3	spotify:track:7pdFV27RbmKpEHemGUHjaQ
2242	Jive Turkey	49	429466	4	spotify:track:5Uh45W2nIIEbp2hvvbsvcz
2243	Heaven Must Be Like This	49	438133	5	spotify:track:4hpND9dmZg39rDm0c47rjv
2244	Is Anybody Gonna Be Saved?	49	300666	6	spotify:track:6I3jIPKdBs8kHSX6lBLuL0
2245	I (Who Have Nothing)	50	303333	1	spotify:track:2gd06mQH4bk07b7klXpkyV
2246	You've Got a Friend	50	203733	2	spotify:track:5UHpNbocPg0TdGOkf6QX8Z
2247	Baby I Love You	50	207506	3	spotify:track:3Uo0oh5YHyDrffcpsl30FG
2248	Be Real Black for Me	50	214253	4	spotify:track:7JTSRQ7WBhrX5MXYVYbNrB
2249	You've Lost That Lovin' Feelin'	50	398373	5	spotify:track:7ACfCLEx4LTXfxvefM1tqb
2250	For All We Know	50	220773	6	spotify:track:1J93LI2FVb7nmseDjZr1S8
2251	Where Is the Love	50	163453	7	spotify:track:65ADTP6Q8mratfOIeKHp7e
2252	When Love Has Grown	50	206826	8	spotify:track:1rLxzZLWG5IqAtWr4fnRA0
2253	Come Ye Disconsolate	50	292840	9	spotify:track:53hI2E4KnHEwrn4laNVeEw
2254	Mood	50	422226	10	spotify:track:5U3S5XsV4aEBhiOfApVRg3
2255	Cinnamon Girl - 2009 Remaster	51	180360	1	spotify:track:4gRfV6SEd0cTqeR9ksrbIs
2256	Everybody Knows This Is Nowhere - 2009 Remaster	51	149146	2	spotify:track:1vVsBCkVMYdLhgiC4F54G4
2257	Round & Round (It Won't Be Long) - 2009 Remaster	51	354106	3	spotify:track:7DqciTNjmNRabBBXGK2mqC
2258	Down by the River - 2009 Remaster	51	558186	4	spotify:track:2EFtUP7BmsjHzhQqI6A4rp
2259	The Losing End (When You're On) - 2009 Remaster	51	246560	5	spotify:track:2cLQVZ7nv5thdNX6mEAVC0
2260	Running Dry (Requiem for the Rockets) - 2009 Remaster	51	336933	6	spotify:track:0RsjnRihXCrpQXHEk64Kcp
2261	Cowgirl in the Sand - 2009 Remaster	51	606680	7	spotify:track:6geu2q04nElk0lLv5YwU9M
2262	The Right Time - Live at Alonzo Herndon Stadium, Atlanta, GA, 5/28/1959	52	221653	1	spotify:track:0c7BYXFNbQxa6Z1SUP5wQa
2263	What'd I Say - Live at Alonzo Herndon Stadium, Atlanta, GA, 5/28/1959	52	261226	2	spotify:track:3Dz8CdccDjRcpO6SzhOyJY
2264	Yes Indeed! - Live at Alonzo Herndon Stadium, Atlanta, GA, 5/28/1959	52	153106	3	spotify:track:3qyjkJg6e0azx9VxTNlplA
2265	The Spirit-Feel - Live at Alonzo Herndon Stadium, Atlanta, GA, 5/28/1959	52	254160	4	spotify:track:1acJiJ8s9o5tQbEeUMmwJB
2266	Frenesi - Live at Alonzo Herndon Stadium, Atlanta, GA, 5/28/1959	52	301840	5	spotify:track:4Qn5Yi6KShLxp3f4u3lFfn
2267	Drown in My Own Tears - Live at Alonzo Herndon Stadium, Atlanta, GA, 5/28/1959	52	371040	6	spotify:track:1YhkVLhIb3CSs48yUjwtaN
2268	Tell the Truth - Live at Alonzo Herndon Stadium, Atlanta, GA, 5/28/1959	52	191400	7	spotify:track:78uCUYjdYGhViaWPfIz72U
2269	Cuba	53	453893	1	spotify:track:7yHXA5njI6eEkPkXoikVfl
2270	Ooh what a life	53	343773	2	spotify:track:03Cofh35oLbMDSqu1Zhy7Q
2271	West Indies	53	302000	3	spotify:track:4j07PQOJtkSPUFPrHv40Nj
2272	Better Do It Salsa	53	398000	4	spotify:track:5cijni7f2inZcVUUGyYzvu
2273	You	53	267400	5	spotify:track:6fKuhcUyzI7RL4XXRanGLK
2274	Que Sera Mi Vida	53	352533	6	spotify:track:7vqAcdNAp2pmE4nSSEbnnQ
2275	Lord Grenville - 2001 Remaster	54	302600	1	spotify:track:0g80UQYNUAyoNJHeB5c9Dd
2276	On the Border - 2001 Remaster	54	202293	2	spotify:track:6GXl3ADX2Lw5JaOSk620j2
2277	Midas Shadow - 2001 Remaster	54	190933	3	spotify:track:48BTINdoIwwrHymXPdAQ0O
2278	Sand in Your Shoes - 2001 Remaster	54	184506	4	spotify:track:60d1VK2qyWQb10pVr9Wu6R
2279	If It Doesn't Come Naturally Leave It - 2001 Remaster	54	271826	5	spotify:track:0Dyja5GxdxI41uow2mb0Nd
2280	Flying Sorcery - 2001 Remaster	54	262373	6	spotify:track:2rVfc9Ds1SBvUqKco72gDl
2281	Broadway Hotel - 2001 Remaster	54	238426	7	spotify:track:7eEaCEt1Rkp0p8HNzSf923
2282	One Stage Before - 2001 Remaster	54	281173	8	spotify:track:3WXBpwHQG5srplCx08g4ff
2283	Year of the Cat - 2001 Remaster	54	401400	9	spotify:track:5jYYumalS1qELrcChOCZrK
2284	On the Border - Live; 2001 Remaster	54	228893	10	spotify:track:4BLzgzPXRcwnfAjDzhGu4A
2285	Belsize Blues - 2001 Remaster	54	210000	11	spotify:track:7igBuzyJ8F8uwBNfn1w5sv
2286	Song on the Radio - 2001 Remaster	54	582600	12	spotify:track:67azRPkNl8MNM98kQ4rezT
2287	Hotel California - 2013 Remaster	55	391376	1	spotify:track:40riOy7x9W7GXjyGp4pjAv
2288	New Kid in Town - 2013 Remaster	55	304925	2	spotify:track:6Zyz8lsnMFpIrCTuvGurCB
2289	Life in the Fast Lane - 2013 Remaster	55	286219	3	spotify:track:6gXrEUzibufX9xYPk3HD5p
2290	Wasted Time - 2013 Remaster	55	296172	4	spotify:track:0Q5YtY85lz5n7rQkeMNpoe
2291	Wasted Time - 2013 Remaster	55	83426	5	spotify:track:7soAdgnUJFcVYA4fiTjFwh
2292	Victim of Love - 2013 Remaster	55	250089	6	spotify:track:1tKha6Q0lYlW1qsWYbZB2N
2293	Pretty Maids All in a Row - 2013 Remaster	55	239493	7	spotify:track:1LWDDpoVNF6YAFt95ETAS2
2294	Try and Love Again - 2013 Remaster	55	311068	8	spotify:track:3ULgE72PnMaeV6lzA0G6Jv
2295	The Last Resort - 2013 Remaster	55	444911	9	spotify:track:0MrZG1nTNQVzeSJKi6gFVF
2296	Getting Together	56	112493	1	spotify:track:7doMkID8osBWCErEVLsBTo
2297	Waiting At The Bus Stop	56	120640	2	spotify:track:6BUNQzhqCBP09pg8jFR50z
2298	Where Did That Little Girl Go?	56	125053	3	spotify:track:2LzeZS2L9HKt0Q7n22RhHL
2299	Blame It On The Pony Express	56	165213	4	spotify:track:4goMTcpl9WHZpJeeAT7jn6
2300	Tired Soul	56	141213	5	spotify:track:45RV5Mm9wnArxdnlL0mHgR
2301	Goodtime Song	56	133040	6	spotify:track:7b0SH2OTIB2bu2ILKib712
2302	Jennifer	56	153120	7	spotify:track:4WDzcoVyEGqkZzEoVOU5Jh
2303	Oh, It Must Be Love	56	143386	8	spotify:track:1D18Ywcywe2YRn0pEqGawF
2304	It Boggles The Mind	56	103920	9	spotify:track:7g1aRmhvdQgMrHTJC1KQPG
2305	Run Away	56	144520	10	spotify:track:2562zGj81OWeS2xyChpLHo
2306	Marching To The Music	56	143746	11	spotify:track:0mMcCyoHf9NM73XlTic1JR
2307	Getting Together - Reprise	56	42560	12	spotify:track:2xyANwm3lc3ghk1wa0eXxN
2308	Once You Get Started	57	268200	1	spotify:track:500wW2RUTmBjDelZ7OhdDJ
2309	Somebody's Watching You	57	190186	2	spotify:track:10NON1fkWC4yJSclOcwoC8
2310	Pack'd My Bags	57	303186	3	spotify:track:2K7VnwwD3cEhlIoT0qjLhA
2311	Your Smile	57	200200	4	spotify:track:4xEUmLU22V0c7h6tk03cM3
2312	Rufusized	57	192640	5	spotify:track:1nkON0JYKJlROxZIeuIELl
2313	I'm A Woman (I'm A Backbone)	57	195893	6	spotify:track:1KTD3iV8jOQy3KxT4p5OaQ
2314	Right Is Right	57	192653	7	spotify:track:4OPiQScaVO7z0i3az7peQi
2315	Half Moon	57	193666	8	spotify:track:49sojhyROzPVeFhbHNb1Gb
2316	Please Pardon Me (You Remind Me Of A Friend)	57	179666	9	spotify:track:1iFeX1db8QxNimp5LIlqRY
2317	Stop On By	57	293600	10	spotify:track:3ywjn8ObFZZslAGmfpWS2U
2318	Cream City	58	205000	1	spotify:track:3k5RdmexU7MQBZjOz7z2lh
2319	Rock 'N' Roll Gangster	58	325200	2	spotify:track:61s4aBlBfF0M7VG8kffOEB
2320	Midnight Man	58	279893	3	spotify:track:6q0SDyCOgbHsMe77gJR4Fh
2321	Summer Love	58	301160	4	spotify:track:1vkU2hMj2shRUTGUteJTxX
2322	Steven Baine's Electric Train	58	243266	5	spotify:track:3xhbc9AWr3LmiklHaxmNt4
2323	Lonely Princess	58	347666	6	spotify:track:7clJyIoAXvXRO0Q7hhl3Jp
2324	Magic Night	58	439773	7	spotify:track:6jUsAwuSDegL10PrcCYuA7
2325	Jungle Desire	58	447986	8	spotify:track:7j6xuqdOOGC7g7aT3MzL51
2326	War Child - 2002 Remaster	59	276893	1	spotify:track:24nRgRJRT1xOZwfrQR0MYw
2327	Queen and Country - 2002 Remaster	59	180840	2	spotify:track:1yJP3b4HDcK2EYHIDzAfmN
2328	Ladies - 2002 Remaster	59	198760	3	spotify:track:5KhnhWLgmdfGy6zYQZC2oB
2329	Back-Door Angels - 2002 Remaster	59	326973	4	spotify:track:6G6LCOc83GILacKZ818W08
2330	Sealion - 2002 Remaster	59	220533	5	spotify:track:4mJhKfyM0nDOPuzJ68NgNN
2331	Skating Away On the Thin Ice of the New Day - 2002 Remaster	59	251146	6	spotify:track:2r8BRLagIPflfcLPfCHakp
2332	Bungle in the Jungle - 2002 Remaster	59	216213	7	spotify:track:1IQAsCKoXsEJ7tdI0dxTqT
2333	Only Solitaire - 2002 Remaster	59	99360	8	spotify:track:3V3v64twJoCVnRAJSZ011V
2334	The Third Hoorah - 2002 Remaster	59	291666	9	spotify:track:5u1q70eaS4HYTIUj4DjQi0
2335	Two Fingers - 2002 Remaster	59	319506	10	spotify:track:0iEz8W79xEGnn5i7fHan5a
2336	War Child Waltz - 2002 Remaster	59	261026	11	spotify:track:6zhd876x8odEmilyaLkFTy
2337	Quartet - 2002 Remaster	59	164466	12	spotify:track:6TlGlEXbdfGEctipvt7alP
2338	Paradise Steakhouse - 2002 Remaster	59	243840	13	spotify:track:5skyeZMM3Uc2lXWCASVEfN
2339	Sealion II - 2002 Remaster	59	200866	14	spotify:track:32SL2yPV3Fc7Ovy266S2sm
2340	Rainbow Blues - 2002 Remaster	59	220093	15	spotify:track:77P83RUizdMjx9VtM54jsh
2341	Glory Row - 2002 Remaster	59	215306	16	spotify:track:5GrbVRqjTECBX7jJOiCK71
2342	Saturation - 2002 Remaster	59	261560	17	spotify:track:1BLDEEudRb4AUYP3JGSjDX
2343	Wanna Be Startin' Somethin'	60	363400	1	spotify:track:1hu2s7qkm5bo03eODpRQO3
2344	Baby Be Mine	60	260666	2	spotify:track:6XYbMGvtl6tlPoGWaiH7EY
2345	The Girl Is Mine (with Paul McCartney)	60	222333	3	spotify:track:4IT6vDuKprKl6jyVndlY8V
2346	Thriller	60	357800	4	spotify:track:2LlQb7Uoj1kKyGhlkBf9aC
2347	Beat It	60	258399	5	spotify:track:3BovdzfaX4jb5KFQwoPfAw
2348	Billie Jean	60	294226	6	spotify:track:7J1uxwnxfQLu4APicE5Rnj
2349	Human Nature	60	246040	7	spotify:track:4cgjA7B4fJBHyB9Ya2bu0t
2350	P.Y.T. (Pretty Young Thing)	60	239026	8	spotify:track:1CgmY8fVN7kstVDZmsdM5k
2351	The Lady in My Life	60	300106	9	spotify:track:07L1pzoVerhRSSaDGZHrKy
2352	Ticket to Ride	61	356866	1	spotify:track:0FjjFFPpvzC9sK3mdUenr2
2353	People Get Ready	61	393026	2	spotify:track:4ALsGEHT3sucCvJtd8oqkJ
2354	She's Not There	61	298000	3	spotify:track:4k4tOrEj9F9pzgbzoC66Ym
2355	Bang Bang	61	316133	4	spotify:track:3PmuVZTxoAU1aQwp5eB9zD
2356	a) STRA (Illusions Of My Childhood-Part One) b)You Keep Me Hanging On c) WBER (Illusions Of My Childhood-Part Two)	61	445693	5	spotify:track:4mTBTy1SAnJKoHxnbAcMeT
2357	a) Take Me For A Little While b) RYFI (Illusions Of My Childhood-Part Three)	61	235133	6	spotify:track:2AXigUpz4ycfVS550RH8wI
2358	a) Eleanor Rigby b) ELDS	61	491440	7	spotify:track:0F4b7Oguzn0hRlb5czVkXq
2359	Stephanie Knows Who - LP / Stereo Version	62	152266	1	spotify:track:4xv7nI8Z7QYuw6aaTa0WA8
2360	Orange Skies	62	170120	2	spotify:track:4hWZL24iK0C7s7Oacbq46q
2361	¡Que Vida!	62	221533	3	spotify:track:1zhH2vZ9cvvvvEMOrrCTet
2362	Seven and Seven Is (LP) - Version	62	139160	4	spotify:track:6LbOC2J8ojSTwE6qIS4Eyh
2363	The Castle	62	180706	5	spotify:track:3a2NDOVkheojfSi48hA77a
2364	She Comes in Colors	62	166826	6	spotify:track:0Gc8I3AVUJgGG3bZasGgzm
2365	Revelation	62	1138533	7	spotify:track:0ootl0oL4FuZGbm9oEw1UH
2366	Concorde (Nightflight)	63	409840	1	spotify:track:2ZxlGnZPT8MPu63YOO7MIC
2367	Funny Face	63	187960	2	spotify:track:57EhMopqf5yzO1HmwAlnqB
2368	Baby Rattle Snake	63	413200	3	spotify:track:2jOPC4LX566X7Xf5rkC01s
2369	Theme For Gabor	63	275933	4	spotify:track:1ystqYOfUkcZyPkfWtoAUU
2370	Keep Smilin'	63	450320	5	spotify:track:3XUmfIhvnX1crrvuqB118p
2371	Every Minute Counts	63	417706	6	spotify:track:6JmdxKZw9lySMUK8MIOwl1
2372	Smooth Sailin'	63	437520	7	spotify:track:71LNA0muA3zEdhMLvhZVTA
2373	And It Stoned Me - 2013 Remaster	64	272160	1	spotify:track:0pLt4z90EzbN7lY9lky1Z9
2374	Moondance - 2013 Remaster	64	274040	2	spotify:track:6KHNMPZTSif1zFbFKErpNU
2375	Crazy Love - 2013 Remaster	64	155453	3	spotify:track:5aN9SeqAtly2NriV7tMjrI
2376	Caravan - 2013 Remaster	64	300800	4	spotify:track:53DfWyh0C0rJUGpsmtdRc1
2377	Into the Mystic - 2013 Remaster	64	205613	5	spotify:track:3lh3iiiJeiBXHSZw6u0kh6
2378	Come Running - 2013 Remaster	64	151333	6	spotify:track:340k3JIT2OD06pNNpH38KW
2379	These Dreams of You - 2013 Remaster	64	231666	7	spotify:track:4eJqIAwc78N603UffIOc5A
2380	Brand New Day - 2013 Remaster	64	310680	8	spotify:track:2D5bUcNHDDMvXcd0jKWhtk
2381	Everyone - 2013 Remaster	64	212253	9	spotify:track:1NdpYN5GCJSnj3S3mrxOcS
2382	Glad Tidings - 2013 Remaster	64	220066	10	spotify:track:1V3Eip6APhGPat25IFCqzB
2383	Steppin' Out	65	285373	1	spotify:track:05NdLBmUVkXlBpel2QR07Y
2384	Good Time Tonight	65	300000	2	spotify:track:6Wqo4NtO3Ep3QlB0VpK7D8
2385	Take My Heart (You Can Have It If You Want It)	65	246426	3	spotify:track:7jHOi7ls5RjJaOtmMSxY8w
2386	Be My Lady	65	255600	4	spotify:track:2E5I3d41LCqAJPWmSzrVXv
2387	Get Down On It	65	293666	5	spotify:track:4Cv6ongCvJy9JfSkWVnb5D
2388	Pass It On	65	273706	6	spotify:track:2PWHaX78k1i9YRaeoMQdPU
2389	Stand Up And Sing	65	269760	7	spotify:track:1sq33WwNbr6Woif9ZVq582
2390	No Show	65	260200	8	spotify:track:4zuNOFjR9UY9y5QGMkSuz3
2391	Stop!	65	201733	9	spotify:track:4Gjxlyf03qjpeUD6VLB1ZU
2392	Baby You Lied	66	305506	1	spotify:track:0pgULSoAey6OyzpZLKKlgc
2393	His House and Me	66	251493	2	spotify:track:0H0dNoWbj3YJRo1FwZwORG
2394	1,000 Laughs	66	208013	3	spotify:track:6u2vQNfgP0IDB9mWeoZaoO
2395	Someone Who Still Needs Me	66	216466	4	spotify:track:0aHyHW0KSaBKfwZqrKzJw1
2396	Love is Feeling	66	196266	5	spotify:track:4KkLEsyIDehskZ7xESXRtn
2397	Number One	66	186333	6	spotify:track:5DVbPAtfcKe5otacOU1KWd
2398	You're Incredible	66	268173	7	spotify:track:3TzSV52FUBLKXSjBVhwMAI
2399	Love Comes Easy	66	287786	8	spotify:track:4z3Pqqq7MG1cYAfTk1kBbm
2400	Forever Now	66	355466	9	spotify:track:4mivI12Dy2BmxUFY3Mjq2j
2401	Just a Touch of Love	67	392733	1	spotify:track:1abbmCW62dP7ag10VjQBz4
2402	Are You Ready for Love	67	365213	2	spotify:track:3hETdqjZeZrNHmUE2gX6L1
2403	Funky Lady (Foxy Lady)	67	277146	3	spotify:track:4WlzOJi15uOOBLkMhHNhHL
2404	Roots	67	300266	4	spotify:track:1lJxKXyvMkXnMsBi5hbExl
2405	Painted Pictures	67	26080	5	spotify:track:7vS4gTKJ9tP4av5RbHCeAW
2406	Thank You	67	345693	6	spotify:track:21xRHycoADXWlfng5CFdKG
2407	Shine	67	305760	7	spotify:track:2np907i2oCGBopcF6K8UU1
2408	Warning	67	206480	8	spotify:track:5aupKedhLTbYtuVBnF6Ipf
2409	A Song For You	68	248600	1	spotify:track:2l9UM2IVGSulrohfekmKdr
2410	Dixie Lullaby	68	155826	2	spotify:track:3uX83udhOWrqkZkX7R2FMr
2411	I Put A Spell On You	68	252933	3	spotify:track:0UD5hGhgNOF2QJYVVFJt1E
2412	Shoot Out On The Plantation	68	193973	4	spotify:track:25sVWC7F8HeAs7snfEj4S7
2413	Hummingbird	68	242066	5	spotify:track:02UYBPv5ig1e7yZzEYP4G8
2414	Delta Lady	68	245893	6	spotify:track:2H2YMpSXgjLcAeEKSAjrcJ
2415	Prince Of Peace	68	185133	7	spotify:track:2DWYu1rOKv83ASATyH0LjL
2416	Give Peace A Chance	68	143866	8	spotify:track:49oa9eioE1MQm3XpwhHVjl
2417	Hurtsome Body	68	219973	9	spotify:track:2y6MsXeYaYPmfHtKsaNikr
2418	Pisces Apple Lady	68	173066	10	spotify:track:29ptcPXfYVcxa2c4OZGe4P
2419	Roll Away The Stone	68	190093	11	spotify:track:4B4v0VoK4kFEHVMoPD9TQV
2420	Masters Of War	68	84266	12	spotify:track:3BYpqusDEtnYRnwQiboH3s
2421	Spaceship Races	69	186400	1	spotify:track:2saV5owNXlCjz26RZ7R6pk
2422	No Easy Way Down	69	273533	2	spotify:track:1mS0wLoYYHo18IZIcQ9lUV
2423	Child of Mine	69	242466	3	spotify:track:4A7oANUhxquUpTCuu6GmoD
2424	Goin' Back	69	196666	4	spotify:track:2gH2zT6DE3mXaBneNhnqXN
2425	To Love	69	216400	5	spotify:track:15c2qpqoagc2GxNvCaYlte
2426	What Have You Got to Lose	69	210466	6	spotify:track:75TZ0xBZiHI09OHm3fu9JR
2427	Eventually	69	297800	7	spotify:track:6m1zAo4TJs7RqJfqzR7qYq
2428	Raspberry Jam	69	274293	8	spotify:track:4MeARHhXvNJ2hhbkTSj7O3
2429	Can't You Be Real	69	176973	9	spotify:track:2D9auftJn0Q6PmKzZDOyjE
2430	I Can't Hear You No More	69	162933	10	spotify:track:1sRtesVRuMI9nHYVgFKMQl
2431	Sweet Sweetheart	69	163093	11	spotify:track:333YdlIdHL2ZpWoMDGuEKd
2432	Up On the Roof (with James Taylor)	69	216906	12	spotify:track:1nQ6m2FxsxjH8Qjmh1X0Oj
2433	Mama Wailer	70	379013	1	spotify:track:7pfQKc88fSt2NMoX5dEaWi
2434	Hola Muneca	70	390533	2	spotify:track:0q1VPhboBqjFDK8wB5D8k6
2435	I Feel The Earth Move	70	304280	3	spotify:track:4speTayrEFUAjUhlguMoN5
2436	Stand	70	1047173	4	spotify:track:0gW1tDZI0J30naa7U9RzVg
2437	Ché Ché Colé	71	211400	1	spotify:track:1RkeHb7b24YbAZBM9VSb5w
2438	No Me Llores Más	71	337680	2	spotify:track:74SLiN21pdSJEktbjyjO5I
2439	Ausencia	71	306640	3	spotify:track:1r6oqZhRYStrYWSeGKuCFP
2440	Te Conozco	71	295480	4	spotify:track:4QQSXJaG5mh3dGBHqXaft1
2441	Juana Peña	71	338013	5	spotify:track:0SDxXtYkBMfxc9lYdXEaOf
2442	Sonero Mayor	71	296160	6	spotify:track:6msnpJqCcwpwYyUU1tATV1
2443	Sangrigorda	71	250920	7	spotify:track:3rEY2TDtvSyXV4KJ424lBT
2444	Tu No Puedes Conmigo	71	205320	8	spotify:track:1Cva3BnPjMPPYuAsd2NHIo
2445	Movin' In - 2002 Remaster	72	245893	1	spotify:track:2A8Unzb32VyxqgsbVS2fTp
2446	The Road - 2002 Remaster	72	190226	2	spotify:track:3iwQr7BZxjLbG392OlsH7c
2447	Poem for the People - 2002 Remaster	72	331093	3	spotify:track:5wCzOFjBHPukgN8urpmRrP
2448	In the Country - 2002 Remaster	72	395160	4	spotify:track:5eJkszoTWVjtXKAzvbkAc1
2449	Wake up Sunshine - 2002 Remaster	72	149133	5	spotify:track:1SbiV7CCoAtbeQYZo4gkxw
2450	Make Me Smile - 2002 Remaster	72	195915	6	spotify:track:1fgQSrUXq0GJbvZuMXZ9bN
2451	So Much to Say, so Much to Give - 2002 Remaster	72	71868	7	spotify:track:1V72rPGmEY7gVLmb3jaWFC
2452	Anxiety's Moment - 2002 Remaster	72	60413	8	spotify:track:1qfYEHLPKIRCAzzT5Qevtj
2453	West Virginia Fantasies - 2002 Remaster	72	93666	9	spotify:track:5vtOxzeHXgSVTscyX9s8TW
2454	Colour My World - 2002 Remaster	72	182466	10	spotify:track:6auBCXbePPUsTJiPHs6hqm
2455	To Be Free - 2002 Remaster	72	74766	11	spotify:track:2nOmVjYHHAC4hNGnHKSfMF
2456	Now More Than Ever - 2002 Remaster	72	85933	12	spotify:track:0Fk7YbR7bE0lnU21QpZExr
2457	Fancy Colours - 2002 Remaster	72	309800	13	spotify:track:4LN8tUUSY9zTlROie7Hnm5
2458	25 or 6 to 4 - 2002 Remaster	72	289800	14	spotify:track:7GqIDx2QVGOpd4r1fZaUUW
2459	Prelude - 2002 Remaster	72	69440	15	spotify:track:0OHniZHtoofmETcRRLnfQP
2460	A.M. Mourning - 2002 Remaster	72	125837	16	spotify:track:3ZObUg7O8kaNGd3kNuHrnC
2461	P.M. Mourning - 2002 Remaster	72	118031	17	spotify:track:2uTJL5OE3Eb6gNiqniNkBT
2462	Memories of Love - 2002 Remaster	72	238865	18	spotify:track:4EFx9UED3uAy0q6kV2vQvG
2463	It Better End Soon It Better End Soon (1st Movement) - 2002 Remaster	72	153391	19	spotify:track:3ijmh42GiqkAtA8NJ4bHo9
2464	It Better End Soon (2nd Movement) - 2002 Remaster	72	220608	20	spotify:track:2JqpLTPcNT3vnBJq4h5jmX
2465	It Better End Soon (3rd Movement) - 2002 Remaster	72	198426	21	spotify:track:4S2wchh5s7VLqUtTNNWAqT
2466	It Better End Soon (4th Movement) - 2002 Remaster	72	51400	22	spotify:track:6CcYQOZ1wA31GxQUqxTx1h
2467	Where Do We Go from Here - 2002 Remaster	72	169066	23	spotify:track:4tu91OT4kZFfgWRteAjqJk
2468	Make Me Smile (Single Version) - 2002 Remaster	72	178933	24	spotify:track:14vDlv40PzpXKBo6qmht6M
2469	25 or 6 to 4 (Single Version) - 2002 Remaster	72	171906	25	spotify:track:7qm1dz6BuJh07zJMBF5ZlU
2470	Spring Affair	73	510666	1	spotify:track:2ldalh6d2MrsAFaZG9H3P4
2471	Summer Fever	73	484533	2	spotify:track:28sjod0l8HylkyQDY0kyyc
2472	Autumn Changes	73	329106	3	spotify:track:4LldsyhaiUL5tcP5uxDBkx
2473	Winter Melody	73	388466	4	spotify:track:1zHOjqf8DqjNq6OB7Y5mrF
2474	Spring Reprise	73	230293	5	spotify:track:5FK8Tp44wcITpig4G94YL8
2475	Watermelon Man - Live	74	244266	1	spotify:track:3fl1MHcZFulLqBnwwjNzzO
2476	Blues Power - Live	74	616800	2	spotify:track:3IWeSiU06w8cDXhyHpm98H
2477	Night Stomp - Live	74	348226	3	spotify:track:5ijlFobRy9WFHP2U6tZPTT
2478	Blues At Sunrise - Live	74	524333	4	spotify:track:4K4NurCpi5Z3eEpNVfeu3h
2479	Please Love Me - Live	74	238026	5	spotify:track:3PlyoF5V5dsExVTFN0P7hl
2480	Look Out - Live	74	322573	6	spotify:track:5eL0xM9jTrlDjFdH4Nq4m6
2481	Tarkus (i. Eruption / ii. Stones of Years / iii. Iconoclast / iv. Mass / v. Manticore / vi. Battlefield / vii. Aquatarkus) [2012 Remastered Version]	75	1243626	1	spotify:track:21lhHDRMO5e7SWCJ0rza0M
2482	Jeremy Bender - 2012 Remastered Version	75	110200	2	spotify:track:1To3HBqAbwO9w6aw8dzRgF
2483	Bitches Crystal - 2012 Remastered Version	75	238013	3	spotify:track:1kIdwEkmJ6Chx94U2JWPpz
2484	The Only Way (Hymn) - 2012 Remastered Version	75	226640	4	spotify:track:3HChtVLHyJnkLf6qL7IpLT
2485	Infinite Space (Conclusion) - 2012 Remastered Version	75	202480	5	spotify:track:4vFFirV1TPTGQmQ9BNWN94
2486	A Time and a Place - 2012 Remastered Version	75	181586	6	spotify:track:3EwHD4R9eARibxHQzs2KTO
2487	Are You Ready Eddy? - 2012 Remastered Version	75	131533	7	spotify:track:7Mnu0ZwUR7CY5hUdbd88ij
2488	Statesboro Blues - Live At Fillmore East, March 13, 1971	76	259444	1	spotify:track:1BnfAYVesByA18sA9EAGiI
2489	Done Somebody Wrong - Live At The Fillmore East, March 1971	76	275303	2	spotify:track:0WDsLvL9DKjj3qjed4IBa0
2490	Stormy Monday - Live At Fillmore East, March 13, 1971	76	529907	3	spotify:track:6k5IO1XwivnRu9d3ZF7Bgq
2491	You Don't Love Me - Live At Fillmore East, March 12, 1971	76	1159912	4	spotify:track:04hwplKxASneVsFWzbSpCX
2492	Hot 'Lanta - Live At Fillmore East, March 13, 1971	76	321658	5	spotify:track:6EydY3DiK1th0nE7TuxKco
2493	In Memory Of Elizabeth Reed - Live At Fillmore East, March 12, 1971	76	787004	6	spotify:track:4c9FL7GiiiB3HB6XnLERws
2494	Whipping Post - Live At The Fillmore East, March 1971	76	1389371	7	spotify:track:2FZv72gyxqvSr4AdQm6gzt
2495	Fantastic Voyage	77	370893	1	spotify:track:0rc9Uwm4vmnQEfx5omLWWF
2496	Your Love Is On the One	77	377240	2	spotify:track:7DPsxqKVr9EjSRgEhHK5li
2497	I Need You	77	349560	3	spotify:track:6YaSxfQYitWzaEtnqMFr3m
2498	Strung Out	77	302933	4	spotify:track:5gVUGsqLIVFp10la2212NH
2499	Say Yes	77	317800	5	spotify:track:2FyA3DQpfM7I2iWZzYeaC3
2500	Eveready Man	77	279306	6	spotify:track:1dkmvpJTNjEAzhawMJyBK0
2501	I Love Everything You Do	77	271293	7	spotify:track:3d0fS6sN6NR5WzwM76Wybw
2502	Say Yes - Reprise	77	29773	8	spotify:track:4bYpC1smjLUAwchDJmdNxT
2503	Black Cow	78	310226	1	spotify:track:66e2KstOkIo6V9PyDXWo3w
2504	Aja	78	480466	2	spotify:track:51AIqs0TqA4TI552nerCqa
2505	Deacon Blues	78	456640	3	spotify:track:7Hx2EA4wGaxtsiZCVVLV1i
2506	Peg	78	240293	4	spotify:track:5DQAHkO9U4IZIombHefcqK
2507	Home At Last	78	335666	5	spotify:track:2beIrUqv4VIyqqYhnajOyT
2508	I Got The News	78	307106	6	spotify:track:0gLMti4dRYx9McEatLlwBJ
2509	Josie	78	270800	7	spotify:track:2P6eZ3eCyWVhEhGNqMFBLv
2510	Car Wash	79	307573	1	spotify:track:2pbWkjtGtjkzBdZ95GFINm
2511	6 O'Clock DJ (Let's Rock)	79	69866	2	spotify:track:708alHws0V61oT5fJ792C9
2512	I Wanna Get Next To You	79	238200	3	spotify:track:1rff5WJrSljfCLYFoXkDiT
2513	Put Your Money Where Your Mouth Is	79	205160	4	spotify:track:6RhdsaIgl7bC4fSy7ljPOz
2514	Zig Zag	79	150093	5	spotify:track:4amYbZ3Khs1KT4kW4qizxU
2515	You're On My Mind	79	207160	6	spotify:track:1Rh6CdJh2OeFfKFG2dDWuE
2516	Mid Day DJ Theme	79	103800	7	spotify:track:0F2rsM5iTqKCjOUOCh0o98
2517	Born To Love You	79	186360	8	spotify:track:0ROwVXfnMoJ7BoAtvg7Na8
2518	Daddy Rich	79	204040	9	spotify:track:4UfWlpn7trSw5Kzuq0N4W0
2519	Richard Pryor Dialogue	79	305293	10	spotify:track:1dHrfIf7erTAinyVEF5049
2520	You Gotta Believe	79	171333	11	spotify:track:50mQ8Vef5jQDLmwytu4f6m
2521	I'm Going Down	79	216773	12	spotify:track:3C2B1j4sOXOw1uoADrBiRH
2522	Yo Yo	79	257093	13	spotify:track:7pWKTOtU9adfAuip8IPYXp
2523	Sunrise	79	646760	14	spotify:track:6yJaSYyo5Mrcef2tVS96Cp
2524	Righteous Rhythm	79	150960	15	spotify:track:7xs8mJ63YyDRxUWRhDlhoD
2525	Water	79	212026	16	spotify:track:1naXQ4v4vTlG67dLuVNWEp
2526	Crying	79	177733	17	spotify:track:2fnFS8jJJqCfYTdwohOHGT
2527	Doin' What Comes Naturally	79	190400	18	spotify:track:7rC55BSF3G5zXzHZVRbgEs
2528	Keep On Keepin' On	79	399306	19	spotify:track:3OHJlmnqRCChrggvgN7TNX
2529	Bright Lights Big City - Live	80	168040	1	spotify:track:0O6fVjTTejTNoS5Bbacw5x
2530	I'm Mr. Luck - Live	80	212213	2	spotify:track:2is8HoxViwZVq9DMogQpyg
2531	Baby What's Wrong - Live	80	202333	3	spotify:track:7huzNRuejOSnPncpLJxt1p
2532	Kind of Lonesome - Live	80	170133	4	spotify:track:6OdLaiDM6SZmb5CKX4gBkt
2533	Aw Shucks Hush Your Mouth - Live	80	151480	5	spotify:track:6VvvneLNepX2JC6rxPMveV
2534	Tell Me You Love Me - Live	80	172866	6	spotify:track:1z8D2UQ79FNjqqQtc8H3k9
2535	Blue Carnegie - Live	80	171746	7	spotify:track:2K2IEs8xdBajy9VD7HxnZD
2536	I'm a Love You - Live	80	125853	8	spotify:track:6oWaCWin9n1Q3RBDWdRzvx
2537	Hold Me Close - Live	80	156200	9	spotify:track:03RRcpi8CscYIVM7OsApys
2538	Blue Blue Water - Live	80	163906	10	spotify:track:5zGQN6sg7pTtnovww0qxYu
2539	Introduction - 50th Anniversary Remix	81	395613	1	spotify:track:0hlFtria3bl5YNjvtoAMFB
2540	Does Anybody Really Know What Time It Is? - 50th Anniversary Remix	81	280706	2	spotify:track:05Lh3Pqc8PCNarTKT4sCmi
2541	Beginnings - 50th Anniversary Remix	81	474320	3	spotify:track:5mRORS1vOFZhCGZOOTjtJ2
2542	Questions 67 And 68 - 50th Anniversary Remix	81	309493	4	spotify:track:03ic2Qt6rhjryZJPeTdyhb
2543	Listen - 50th Anniversary Remix	81	204226	5	spotify:track:5H93pZqc3Oa4Yurm3NFypL
2544	Poem 58 - 50th Anniversary Remix	81	520333	6	spotify:track:3NnmzFe9uIQv3mJ01143JJ
2545	Free Form Guitar - 50th Anniversary Remix	81	416293	7	spotify:track:6QXh6nruQ9K46xGog8t0OP
2546	South California Purples - 50th Anniversary Remix	81	374146	8	spotify:track:5rorZNRrqZ8SRHJw3wI3iK
2547	I'm A Man - 50th Anniversary Remix	81	463506	9	spotify:track:5E8t0QBEOsbgskjLF6IMop
2548	Prologue, August 29, 1968 (Live At The Democratic National Convention, Chicago, IL, 8/29/1968) - 50th Anniversary Remix	81	56984	10	spotify:track:7x1PG1zUhKSJshsPDoKnnZ
2549	Someday (August 29, 1968) - 50th Anniversary Remix	81	257068	11	spotify:track:5z8W1VobCiBrXUWC9psRQF
2550	Liberation - 50th Anniversary Remix	81	880518	12	spotify:track:3X44pM2CGOdP3i904JiAa2
2551	War Is Coming! War Is Coming!	82	425933	1	spotify:track:43GnxyTO8BO10yQfiu4LMa
2552	Slowly We Walk Together	82	355533	2	spotify:track:51h7Q7PzCfjnkCOFQJlEiu
2553	Platinum Jazz	82	435440	3	spotify:track:2gbAuW6oZ37bcrooVhhyP9
2554	I Got You	82	365360	4	spotify:track:7G0On3QoS44cWVbK5bny3w
2555	L.A. Sunshine	82	596440	5	spotify:track:7cg8GyxqxyvM6OhdPhYxOO
2556	River Niger	82	512066	6	spotify:track:2Qr54dHehuQfgpC6iOZHs8
2557	H2Overture	82	240640	7	spotify:track:6m83TTJJKTqGMZvDICy8aP
2558	City, Country, City	82	444733	8	spotify:track:2xThjwk0OF7RzPE2cYSuTW
2559	Smile Happy	82	242160	9	spotify:track:7Iz9lhrtXdlfNasCvfa5AB
2560	Deliver The Word	82	473160	10	spotify:track:3aBM5sGSMtCNapIJZKThdm
2561	Nappy Head (Theme From "Ghetto Man")	82	249226	11	spotify:track:2vQl3nggEY8mP41Lub9y5o
2562	Four Cornered Room	82	435773	12	spotify:track:5c7GgMVw9q0tWWOMGTLmFc
2563	The Wind	83	102200	1	spotify:track:0YvRqDQvZiGrNWiOtr67XH
2564	Rubylove	83	157706	2	spotify:track:70AbN7hxAkukvGyoShVOEy
2565	If I Laugh	83	200266	3	spotify:track:6v2LpciqqTldECm5zNoydr
2566	Changes IV	83	212666	4	spotify:track:5PUP1Qicfa9rMgxAkUahIC
2567	How Can I Tell You	83	267666	5	spotify:track:22FMbZyZdi4cCXFrXfjPvj
2569	Morning Has Broken	83	200000	7	spotify:track:6Fac88zhkwXfePhe3tm1ZJ
2570	Bitterblue	83	192293	8	spotify:track:7i216wR1pfG6f54i9KEuqm
2571	Moonshadow	83	172533	9	spotify:track:5e0KeDCircO5uOvActi05U
2572	Peace Train	83	251333	10	spotify:track:3QMnmarOSPwIPzUgu3T6TP
2573	Moonshadow - Live at the Troubadour	83	186440	1	spotify:track:7G4HkTNiPnHZO9YMBRPlSl
2574	Rubylove - Demo Version	83	173013	2	spotify:track:29YB2Wc4Bd39mgeOAFx00X
2575	If I Laugh - Demo Version	83	244680	3	spotify:track:1hrWwRsUjbSs2LJOsoItCo
2576	Changes IV - Demo Version	83	216493	4	spotify:track:1JeFKzosNYTVkoeRNoMRDj
2577	How Can I Tell You - Demo Version	83	243920	5	spotify:track:7twybW6jQQLqLpfJ1g18qy
2578	Morning Has Broken - Demo Version	83	169946	6	spotify:track:01KG0rkd62AO3rlhvATKSt
2579	Bitterblue - Royal Albert Hall 1972	83	218320	7	spotify:track:1KCMXTuGpr8hrH1QiHtFFs
2580	Tuesday's Dead - Majikat Earth Tour 1976	83	249066	8	spotify:track:3o2INmR6ClzTb9DdGh56vg
2581	Peace Train - Royal Albert Hall	83	252866	9	spotify:track:4UOzmKpjfbdaQHTC1YWJY1
2582	The Wind - Yusuf's Café	83	119520	10	spotify:track:7am7g4tP5KsUDr9hVHu3Rm
2583	I Knew You When	84	168840	1	spotify:track:35dtkKEsO4ZiYBtxuZqu8q
2584	Little Bit	84	170466	2	spotify:track:4TegMENxBVAwaa7rvdtUcW
2585	Go Away Little Girl	84	150600	3	spotify:track:6SvOdNsEfi7EDB0oFtH3YG
2586	Hey Little Johnny	84	154626	4	spotify:track:3dF9hgYR3iOfbN00cmdQGy
2587	Sit Down, I Think I Love You	84	184733	5	spotify:track:4LCuFSvdZjHD7vVDCYD0eC
2588	A Little Bit Me, A Little Bit You	84	182520	6	spotify:track:1DfVAPb8StmCCWyW7BaK8z
2589	Do You Want Me	84	162880	7	spotify:track:28lygOJivUJ59vFbpSfZLN
2590	Bye Bye Love	84	143893	8	spotify:track:7wHsfkN5fOWhoBuU7jRrSG
2591	I'm Into Something Good	84	161506	9	spotify:track:7daIo1ytZeDRPSMTaKMs8h
2592	Standing In The Need Of Love	84	133440	10	spotify:track:5LReO5pffpzI3l1Ip42jva
2593	Domino - 1999 Remaster	85	189426	1	spotify:track:0eti3iRdEgUxwcIcN2N9DY
2594	Crazy Face - 1999 Remaster	85	180106	2	spotify:track:0mzxa4FU8jAdSGrFvefq63
2595	Give Me a Kiss - 1999 Remaster	85	160506	3	spotify:track:6Ee73QbJJPs5h2yXMkdXNm
2596	I've Been Working - 1999 Remaster	85	209733	4	spotify:track:3y8N3R6a2SbcrFXbXA77PS
2597	Call Me Up in Dreamland - 1999 Remaster	85	235040	5	spotify:track:2HEuKwtgWSM9G8cQwAGDvy
2598	I'll Be Your Lover, Too - 1999 Remaster	85	233653	6	spotify:track:4ZLCgL87SsunLPzK2TuShg
2599	Blue Money - 1999 Remaster	85	228106	7	spotify:track:7xl2NWfTiZzTycHhDwws7u
2600	Virgo Clowns - 1999 Remaster	85	254106	8	spotify:track:0c75cmBocBwDJCJfu8LU84
2601	Gypsy Queen - 1999 Remaster	85	198293	9	spotify:track:26mUJTxSkxfEoC4ZLjZYBh
2602	Sweet Jannie - 1999 Remaster	85	132080	10	spotify:track:6ggBcNS6NrFvEjrHdD7amm
2603	If I Ever Needed Someone - 1999 Remaster	85	227760	11	spotify:track:0FvVEEFe7CBy06SLn04Sw7
2604	Street Choir - 1999 Remaster	85	289066	12	spotify:track:5bN6TFQg9MbH63lAaLp3Ve
2605	Smooth Talk	86	328826	1	spotify:track:0hew14Ld2fU3xeUUUtdsVS
2606	I Don't Know If It's Right	86	257839	2	spotify:track:4FZzrRJtNB1Y4uO8ZgfgWf
2607	Till I Come off the Road	86	164773	3	spotify:track:67Q7z3gnXSvRfqfaqyS0Pk
2608	Dancin', Dancin', Dancin'	86	251866	4	spotify:track:6iRWh06x3MDrI2RmY8q4qn
2609	Shame	86	278480	5	spotify:track:2wMdIr7z1Htiei9NR6XuO6
2610	Nobody Knows	86	273400	6	spotify:track:14l4M9jYeuNpgWfKRYx99g
2611	We're Going to a Party	86	200720	7	spotify:track:5JU6JDGk2GoFmaO4IRqIE6
2612	The Show Is Over	86	342400	8	spotify:track:1PmD9ADS3MP75aUlgEj6YP
2613	I Don't Know If It's Right - 12" Mix	86	393733	9	spotify:track:3dC78JWse1i269aJURgGZr
2614	Shame	86	499253	10	spotify:track:0mvhxY8mngQRg2ZU44SNWV
2615	I Don't Know If It's Right	86	174813	11	spotify:track:2zEV4hXcpQkf2Bj2TPJw43
2616	Shame - 12" Mix	86	226186	12	spotify:track:7tZAmNAFSpMPwPzdy8pLvq
2617	Little Child Runnin' Wild	87	326906	1	spotify:track:7ueLs9KrHvrGIydo6IjyPV
2618	Pusherman	87	300693	2	spotify:track:0WFUAv1zBYlyu3SgoY8VQm
2619	Freddie's Dead	87	328333	3	spotify:track:1Ll3h8nTJKRjaYaQyAcCZs
2620	Junkie Chase - Instrumental	87	100533	4	spotify:track:2S1INdGaCyTgxYOVmT0Go6
2621	Give Me Your Love (Love Song)	87	260333	5	spotify:track:0OwvI1eDY8T8lDkd2PbKMi
2622	Eddie You Should Know Better	87	140640	6	spotify:track:6WGNKKvCYcM0J7J9Yq8IVj
2623	No Thing on Me (Cocaine Song)	87	298026	7	spotify:track:6JjUkfoKBxAQwkLFXSw4l0
2624	Think - Instrumental	87	228666	8	spotify:track:4bNZixsjETcSVB3MoYevDq
2625	Superfly	87	233600	9	spotify:track:2PemGQvxBjEwmrfwVtvTkX
2626	Wounded Tune	88	141182	1	spotify:track:1FFQ63xFQ1eEi7FHiEKiL8
2627	People Need God	88	158405	2	spotify:track:6eyqrrWPhqKPeb36HEPDZv
2628	Anytime	88	132517	3	spotify:track:0oACumUnRLqZsjWkDNkfWc
2629	The Way It's Always Been	88	167490	4	spotify:track:5Yd7w7WjbS6tgkZbJakkLZ
2630	'Til He Comes Back Home	88	122629	5	spotify:track:1aFEFijSb9fDDaxVzH46hy
2631	It's Your Birthday	88	167747	6	spotify:track:6l3jxdY21Qo9492U3b4uXf
2632	Fruit Above Root Below	88	166765	7	spotify:track:1Q5tegHn4RUmwXjUJsD0Yb
2633	Last Daze Waltz	88	160989	8	spotify:track:0Nx0ztduZhl5tKHYPfNJfE
2634	Glorious Prince	88	158346	9	spotify:track:6J8A7awDcb7fYhRZedmZt4
2635	Father of Lights	88	204920	10	spotify:track:1onvSeB5Wkf2MSp7NC7p88
2636	How Could You Love Me So	88	180013	11	spotify:track:0ARf81QsesRMDgWdB0calB
2637	Heartache	88	173751	12	spotify:track:5I7aNaQugO41OAWQpj4Dkl
2638	Pa Lante	89	230473	1	spotify:track:6owrwtc0O1CLlcOJpk7Hgq
2639	No Voy A La Luna	89	282295	2	spotify:track:5aOyeaNCTpavYUnZJSArDy
2640	No Puedo Ser Feliz	89	242952	3	spotify:track:0oG0VKa3mNhgipo4JeXA1U
2641	Hit The Bongo	89	217916	4	spotify:track:3RH8XjwwgjVCmeduIfxZPd
2642	Araguita	89	185390	5	spotify:track:7JbnUwzx5Aq6jHVEnxL2fc
2643	Lindo Palomar	89	311640	6	spotify:track:5I7Ag8emrICzQK4zm5dSSi
2644	Mi Jevita	89	204939	7	spotify:track:75g85WOU1yhtpznp9aXtr6
2645	Nuestra Cancion	89	247642	8	spotify:track:0eYSEhZcBKjConnVBw8K5h
2646	Observalo	89	195991	9	spotify:track:1rKj5J0IrU5XcILuNGe41y
2647	Cuero	89	227673	10	spotify:track:6PDQGZZ8ToKfZZe1arDUam
2648	Standing Ovation	90	332560	1	spotify:track:4duDVSxGXXBf9KI8nozbI1
2649	Is It Cool	90	249493	2	spotify:track:2ql5n716CDSekwhwLYEmTK
2650	Someday (In Your Life)	90	296560	3	spotify:track:4eaUTzcljYga3LCnOIRZdF
2651	Lies	90	319573	4	spotify:track:3RdQhXKAgHPpQ6fLVj2nGt
2652	GQ Down	90	235720	5	spotify:track:2Ljs0yxTfJXpdIFVDNaycj
2653	Don't Stop This Feeling	90	298426	6	spotify:track:0WR0jo1I8Qv51XzDrUnKMU
2654	Reason for the Season	90	222946	7	spotify:track:6UqbA8McJrw3ZnGLgmtOYp
2655	Sitting in the Park	90	199440	8	spotify:track:2ErgktjJ5TTiGgOq8EQpL4
2656	It's Like That	90	260346	9	spotify:track:54t702A340w3QaKJoyWgeG
2657	Wish That I Could Talk to You	91	176093	1	spotify:track:2n5BCKChXCrv9QoIbkUADA
2658	Fool's Paradise	91	149226	2	spotify:track:6tKZbih1sT2ouzr8Atkbrv
2659	Only One Can Win	91	184746	3	spotify:track:4BLqx84IpussVxrUGOMLOX
2660	I'm Truly Happy	91	171253	4	spotify:track:7zDdrQIYZEQdYDVq3E7ry2
2661	Touch Me Jesus	91	218040	5	spotify:track:2IOPB8zS9rwTst4q8lF0A1
2662	I Know Myself	91	217600	6	spotify:track:6BnQETIdEsVkiR8u3slj9D
2663	Chaos	91	198440	7	spotify:track:1novm6u9E6hIppqldA9rK0
2664	So Close	91	179133	8	spotify:track:3MbORAeavotrLCt6xsLx8y
2665	I'll Never Be Ashamed	91	193266	9	spotify:track:6eMOtmM9Oay34EhE0cvQ0G
2666	How Love Hurts	91	214626	10	spotify:track:5iUNkaWIL2uz1JcTYeDVfy
2667	Theme in Search of a Movie	92	247906	1	spotify:track:6u1CQ9PmWGNyvZ2ZiAaHbE
2668	Listen Here	92	463000	2	spotify:track:6tg2cXZiQRZgBJJWZ484Of
2669	Judie's Theme	92	280773	3	spotify:track:084Ky3umk77aaDXCBVxSEr
2670	Sham Time	92	412426	4	spotify:track:6bajHX16WMk2mTpKniQGnH
2671	Spanish Bull	92	497733	5	spotify:track:5AhVhTnPItG6nSVeMEVtm4
2672	I Don't Want No One but You	92	220800	6	spotify:track:3ic1HYR0z0266feHZuck2v
2673	NAIMA - In Memory of John Coltrane	93	575693	1	spotify:track:3RuPAyCxtIHMpQ9cRo46R0
2674	A LITTLE QUIET	93	808293	2	spotify:track:1lqlGdpVNwwrLI96WUrqkx
2675	Tears of Ole Miss	93	1869213	3	spotify:track:38k2GTEtawE5SCxxbs8br6
2676	Planet Claire	94	277640	1	spotify:track:5aC0QmgjYGG8QYgAg06nTk
2677	52 Girls	94	216333	2	spotify:track:0hV8cbzJubHKLSFIsBnYUo
2678	Dance This Mess Around	94	276560	3	spotify:track:207qLd1ovrqfYVBBDrNMUM
2679	Rock Lobster	94	409400	4	spotify:track:2Q5wSOwq6BDSu7sSVMNrtT
2680	Lava	94	296506	5	spotify:track:2KXFIFGbqQBoaJFCzchoVt
2681	There's a Moon in the Sky (Called the Moon)	94	298226	6	spotify:track:0emtLcWGDr3OaIJNFucyKh
2682	Hero Worship	94	248026	7	spotify:track:2CLddd0XVgo7rSBXRNXSkO
2683	6060-842	94	172640	8	spotify:track:2uVf0GK5oVAlhMpWl8DTj7
2684	Downtown	94	177226	9	spotify:track:3vhgQ5Y8Y8NyHdwhLSNxxL
2685	Supernature	95	585374	1	spotify:track:00RHrZB3i6B6PwX30ouZBK
2686	Sweet Drums	95	160124	2	spotify:track:3vXiR11nl8WZm2ceSpZ9Vb
2687	In The Smoke	95	332250	3	spotify:track:14eng7JPWqbZ3k9EYYcjP4
2688	Give Me Love	95	462000	4	spotify:track:2ffCT6Pe2LYriwN2Y5ObIg
2689	Love Is Here	95	144000	5	spotify:track:4a0HJgi0U8Fz7My37xfzGp
2690	Love Is The Answer	95	351500	6	spotify:track:6Esm0uCiboPWXbCOxE1VFR
2691	Showdown, Pts. 1 & 2	96	324880	1	spotify:track:3Pn1HWFDL5tgsF3v9AlHcn
2692	Groove with You, Pts. 1 & 2	96	291880	2	spotify:track:5TywrBF82AUQ83pXuMXjXg
2693	Ain't Givin' Up No Love	96	283346	3	spotify:track:7eCmOwZxxK5CQxjFvnHvTF
2694	Rockin' with Fire, Pts. 1 & 2	96	356933	4	spotify:track:7IZCyphwBfsDSp3ledl6Uu
2695	Take Me to the Next Phase, Pts. 1 & 2	96	310760	5	spotify:track:59H2TDkSrXVtQxjcldzpU1
2696	Coolin' Me Out, Pts. 1 & 2	96	364160	6	spotify:track:6x0Hj4olOrkhvVQtGRZCRK
2697	Fun and Games	96	281173	7	spotify:track:4FFd0kWSjwvsbAOoW4xX1o
2698	Love Fever, Pts. 1 & 2	96	299973	8	spotify:track:0JiRxczxF5gtsC3Cm8UaOs
2699	Showdown, Pt. 1 - Single Version	96	265080	9	spotify:track:1eVN4s7KUpW3LJaD7nP1yn
2700	Groove with You, Pt. 1 - Single Version	96	245573	10	spotify:track:6bNijeKlIGmAinCwy9gBBO
2701	Take Me to the Next Phase, Pt. 1 - Single Version	96	256320	11	spotify:track:4gnp7LJvEmzJ17NZjlo7Em
2702	Take Me to the Next Phase, Pts. 1 & 2 - Alternate Performance	96	323786	12	spotify:track:3Ttdt2QvUycRe9LcQS04HM
2703	Showdown - Rehearsal	96	363173	13	spotify:track:3ZyATCqLkBVTSnlNjEKL49
2704	What Can I Say	97	180693	1	spotify:track:4WSbbEjRQ7uE3IT9crL10B
2705	Georgia	97	234880	2	spotify:track:428IK8fDAscfRpmavVKJkN
2706	Jump Street	97	311733	3	spotify:track:3yB55OOZRmdZ7vVfbMecvT
2707	What Do You Want the Girl to Do	97	231386	4	spotify:track:0BlwpvDKimlRj9NRVOfVQb
2708	Harbor Lights	97	357586	5	spotify:track:5eZPJFk9QBjBM1I2idumCM
2709	Lowdown	97	315640	6	spotify:track:0nlZjTPzW6S9JIESuGfImT
2710	It's Over	97	169760	7	spotify:track:290g7LaS5icnIywogzldul
2711	Love Me Tomorrow	97	195240	8	spotify:track:0sn0aGPqfKWHjPkcVls0mu
2712	Lido Shuffle	97	221613	9	spotify:track:2NtqZmfRIDkXJ2YvY2Kv1F
2713	We're All Alone	97	252440	10	spotify:track:26ItBw3OZ9s9d51rNWCYhh
2714	What Can I Say - Live Version	97	204560	11	spotify:track:1gPA4ofX3JL3dlHz72Aba1
2715	Jump Street - Live Version	97	307000	12	spotify:track:7GcXo45UlKlpi3cRoLzYrp
2716	It's Over - Live Version	97	217613	13	spotify:track:7uToHNpoAzWI8ugON9wuyi
2717	Voices Inside (Everything Is Everything)	98	205813	1	spotify:track:2FyiqQgoxZYbpgAmQvooGv
2718	Je Vous Aime (I Love You)	98	208653	2	spotify:track:36TK7iHHkxoGk4YOb2w7PC
2719	I Believe to My Soul	98	228013	3	spotify:track:2USPHdk6yeyJ8K3QltMPka
2720	Misty	98	216160	4	spotify:track:2M7XwmvmozYhXNWzth2Uyl
2721	Sugar Lee	98	239533	5	spotify:track:4rMY23yxmYRoOAhEgGyEKG
2722	Tryin' Times	98	192240	6	spotify:track:1P82RW9ZipnNmsQGmmp5PW
2723	Thank You Master (For My Soul)	98	347586	7	spotify:track:7x1Bl4qpsiqa5HXNgM9K3g
2724	The Ghetto	98	413773	8	spotify:track:1yeIxOEFmpQ3qlOb2R3g2m
2725	To Be Young, Gifted and Black	98	401213	9	spotify:track:6B3H7aue15Ntp6sfQaH7wE
2726	A Dream	98	250066	10	spotify:track:7bd5lvkaCsCelCVgVZnnma
2727	Buyin' Time	99	215333	1	spotify:track:48jJOedj3eRjWG992syQwH
2728	Midnight In Paris	99	239333	2	spotify:track:3Re6yUx3Yt1q9VNQMR0vM5
2729	Different Tongues	99	189573	3	spotify:track:7CFjebu4Lpovh2kRIUu1t4
2730	Soldier	99	179266	4	spotify:track:564wdeH1Qgnm6rglb5U4AB
2731	The Loner	99	254026	5	spotify:track:1Jv5A7JiB8pijVRBf2YpPX
2732	Stateline Blues	99	119200	6	spotify:track:2jrqjUrVsz5Yckw8yvCDIt
2733	Closer To You	99	214906	7	spotify:track:0MK1f8wYeifOC8QHRrYR39
2734	No Me Niegas	99	211626	8	spotify:track:1KWEF5wfOUpzYbT5H1iuto
2735	Ring Of Love	99	242266	9	spotify:track:0JLaMk0LCIr0zxoMhl4ClP
2736	Circlin'	99	259640	10	spotify:track:0EpVJIKC8F2crm997xtIdl
2737	Suite: Judy Blue Eyes - Live	100	33600	1	spotify:track:2gNtYudm4sbBRyWwTWwFVH
2738	On the Way Home - Live	100	227800	2	spotify:track:4Nx9CLbcXGNmvZF7FzQJeJ
2739	Teach Your Children - Live	100	182106	3	spotify:track:1qwqSlrqKxInbvu69BUaX6
2740	Triad - Live	100	414960	4	spotify:track:0qG8bdGPohE6BlxkdUQLAs
2741	The Lee Shore - Live	100	268706	5	spotify:track:616oo55F2rXPJobqPV2IjK
2742	Chicago - Live	100	190826	6	spotify:track:3tS932CzD7Wv6BBCqXy5JP
2743	Right Between the Eyes - Live	100	216666	7	spotify:track:2d0l1nUvvECLlQOCHTHHG8
2744	Cowgirl in the Sand - Live	100	238706	8	spotify:track:2zdrfzrbZC7i0JM19QmGwj
2745	Don't Let It Bring You Down - Live	100	210600	9	spotify:track:3oOPIrRUrCtBxnpLbxCSHY
2746	49 Bye-Byes / America's Children - Live	100	395026	10	spotify:track:5mtXENaln3aSO35UoodBDs
2747	Love the One You're With - Live	100	205000	11	spotify:track:5ygsTPV4LmiPMfeONhdcWx
2748	King Midas in Reverse - Live	100	223266	12	spotify:track:41WDVYmXv6ybPR1RrIhFcs
2749	Laughing - Live	100	216133	13	spotify:track:2KKDQoQmo6cOtAkYhof0lo
2750	Black Queen - Live	100	405200	14	spotify:track:6lbiInIt9bUt7NQfmYqb5G
2751	Medley: The Loner, Cinnamon Girl, Down by the River - Live	100	580666	15	spotify:track:2eOjdOOIajxsonr2arkfie
2752	Pre-Road Downs - Live	100	184106	16	spotify:track:4O4AepGVUhNICPeiMWLHt4
2753	Long Time Gone - Live	100	358466	17	spotify:track:13HTkVYbfuk9kcJ5TptxO5
2754	Southern Man - Live	100	825026	18	spotify:track:0hssLSXpq33Uqb2YZRECcR
2755	Ohio - Live	100	214133	19	spotify:track:4oC11US2tUMb9WaxoniIiR
2756	Carry On - Live	100	859240	20	spotify:track:31tmZRzAOSOMj6FBYlDlVr
2757	Find the Cost of Freedom - Live	100	141200	21	spotify:track:7t2teISdD7lzpVDu2IRKRM
2758	Nubian Lady - 1972	101	398533	1	spotify:track:32I3HYvTbzDgGJlGCJ7WTM
2759	Lowland Lullabye	101	143200	2	spotify:track:5QB5CPZPd2s9AotcwR9v6H
2760	Hey Jude	101	541453	3	spotify:track:7hTV4bfDo7hHXySziDrLAS
2761	Jungle Plum - 1972	101	273640	4	spotify:track:5KY89K6FUndwpoFTE5SKUL
2762	Poor Fisherman - 1972	101	221226	5	spotify:track:7xNJN9MbWpqyCGHfQTehdt
2763	African Song	101	230573	6	spotify:track:5dz3kbLRx6MXx27RqCBshU
2764	Queen of the Night	101	133666	7	spotify:track:25dtXn0cnIioFKX0vDf9nZ
2765	Bellow Yellow Bell	101	307760	8	spotify:track:1rhfK5ZLqyjrhmJCKqtiHu
2766	Your Wish Is My Command	102	359933	1	spotify:track:3qvT0eslNuuOCO56vsgzhu
2767	Something About That Woman	102	304293	2	spotify:track:63H7c9CeBy1rNgeOLIaEMc
2768	I Want to Hold Your Hand	102	297346	3	spotify:track:4KXdq1eu3fv6n2rP6xfUHC
2769	Special	102	309973	4	spotify:track:5rXFCxoVOugFGKFA1CPMXq
2770	Magic Moments	102	352280	5	spotify:track:5WPa8X4pRJ1DvSiBcXQ94L
2771	The Urban Man	102	265493	6	spotify:track:6BuH8eTIGCRw1QNBA20hFc
2772	Ill Be Standing By	102	274653	7	spotify:track:1qoouQEA7eUx3iQOW1FplJ
2773	The Songwriter	102	270933	8	spotify:track:7HdpcJHptSp2oIADfDJOqT
2774	I Want to Hold Your Hand - Remix	102	294666	9	spotify:track:5mMSICbpclWrLRUgyzNID0
2775	I Want to Hold Your Hand - Radio Mix	102	236306	10	spotify:track:6aMNaB5O3qBUjq0C5ASRMm
2776	Your Wish Is My Command - Radio Mix	102	263040	11	spotify:track:4nJpEXkkW2RATRkMNE42Wo
2777	Stella	103	198786	1	spotify:track:0tpR1g83f8WauGkXzei57f
2778	This Is Your Life	103	253773	2	spotify:track:5mhFSK4vbY7h3E3il4va2c
2779	Wouldn't You Like to See	103	221613	3	spotify:track:1xMHQcdX9p6SRBpTrtHjy8
2780	Listen	103	240066	4	spotify:track:51H0q9yZYnze5CxqjvgmE1
2781	Say You Love Me	103	276320	5	spotify:track:70sNl1pNLgJErv3Dm1pGyw
2782	Captain Connors	103	197573	6	spotify:track:04qGyF32wJ4ISdaGQoHhE8
2783	You Make Me Feel Brand New	103	356613	7	spotify:track:6RXBbl9rbfoSqOcQMZIn4p
2784	Butterfly	103	299080	8	spotify:track:6xdi74FISt6WNJ0rJKQGVo
2785	The Creator Has a Master Plan	103	478520	9	spotify:track:2zWRN7UXCHAE4LAN4Fx5Ny
2786	Captain Connors - 12" Version	103	443400	10	spotify:track:0gMt0gzm8ywLBZfr8zXxFQ
2787	Y.M.C.A.	104	286666	1	spotify:track:4YOJFyjqh8eAcbKFfv88mV
2788	The Women	104	353800	2	spotify:track:6HKNhAJgqTMgHtA7NMtaBO
2789	I'm A Cruiser	104	423373	3	spotify:track:50sFeIzCZN7Ro7bqdMtYcI
2790	Hot Cop	104	379760	4	spotify:track:2ag3r6nfTxSN1Cot5i7hsz
2791	My Roomate	104	321426	5	spotify:track:7lQbkXrJOs1uXpmgx4e6tC
2792	Ups And Downs	104	380133	6	spotify:track:1CqVCIqhAtuQPwdv1cZVbS
2793	And the Moon's Out Tonight	105	201844	1	spotify:track:08uqoJs4xI68IqjmZprGEM
2794	Far Away	105	293960	2	spotify:track:1JoiGr2uER2mM08IAqmEct
2795	Closely	105	323266	3	spotify:track:5JhSeCpGck76MqYoD3ZesX
2796	Vanilla Gorilla	105	294416	4	spotify:track:6Doy8sPIFZOOenLVISzIVC
2797	I'm Gonna Take Care of Everything	105	209784	5	spotify:track:2oQrbdXoqN1nXxWNpMkLA9
2798	I Want to Love You	105	184626	6	spotify:track:4cIqCmUi3kHzs8FBjJFdbx
2799	Cheatin'	105	223625	7	spotify:track:0VH9aI3pqAkwYwowKeSS0a
2800	It's All for the Show	105	224917	8	spotify:track:5kkGAjWcbR7uZjjodaiPvg
2801	That's the Way Things Are	105	332809	9	spotify:track:4ty5VCikT8RPaPiPTwqqvb
2802	Waiting	106	243266	1	spotify:track:3jarONOz6PdAJ7OIMtF3Pu
2803	Evil Ways	106	237040	2	spotify:track:4JFG8RLpi8m0xhjYmstb38
2804	Shades of Time	106	193760	3	spotify:track:0e0rgt92kTiEsyrTQ4CaBU
2805	Savor	106	167266	4	spotify:track:74a4giRdx5noa4aDsRgSgC
2806	Jingo	106	260906	5	spotify:track:1LKrdF0qlUgHDix7cHqWQg
2807	Persuasion	106	152773	6	spotify:track:0mpoy1FtK8svn9jFPPtOwS
2808	Treat	106	283360	7	spotify:track:476iPKiGJEafkAR7l7JepP
2809	You Just Don't Care	106	274200	8	spotify:track:2Q14NZY6HOi9Cnx2D8vjUH
2810	Soul Sacrifice	106	397133	9	spotify:track:5iZcqTxUmsIjxBNek2Yzxt
2811	Thunderbird - 2005 Remaster	107	250186	1	spotify:track:3BMhtHTzh510RHekQ5YT3B
2812	Jailhouse Rock - 2005 Remaster	107	115973	2	spotify:track:1MRidycoVNBWpBTOkD84rX
2813	Backdoor Medley: Backdoor Love Affair / Mellow Down Easy / Backdoor Love Affair No. 2 / Long Distance Boogie - 2005 Remaster	107	591440	3	spotify:track:1fzYBywYk73PKafmLQk8tr
2814	Nasty Dogs and Funky Kings - 2005 Remaster	107	162346	4	spotify:track:2nOkKjTkLvKeebQEHUB3Hi
2815	Blue Jean Blues - 2005 Remaster	107	282626	5	spotify:track:6Gyk7ZHfFWo3d8U7poUEPs
2816	Balinese - 2005 Remaster	107	156733	6	spotify:track:1r6wqKNFYQbookhQtQz0uW
2817	Mexican Blackbird - 2005 Remaster	107	185626	7	spotify:track:7rbm9b3fLOKCCBqNFVdkWV
2818	Heard It on the X - 2005 Remaster	107	144813	8	spotify:track:4ik8VdladXfzpN1jPU7rDu
2819	Tush - 2006 Remaster	107	137933	9	spotify:track:6zGDIDjfDkPyNxrEERO3XG
2820	Heard It on the X - Live	107	156080	10	spotify:track:3dbkLFTM2Kp45gqzgV3nWH
2821	Jailhouse Rock - Live	107	112720	11	spotify:track:6iSYqSHzOu9GAfkgo03ADo
2822	Tush - Live	107	222866	12	spotify:track:1Q6abjMmJNuJIhBGTG4u9l
2823	I Don't Care Anymore - 2016 Remaster	108	303880	1	spotify:track:65aiZMNuOKvP34ZK5XQmV8
2824	I Cannot Believe It's True - 2016 Remaster	108	314733	2	spotify:track:5hz4dbCtCZSAbjuM31Fh28
2825	Like China - 2016 Remaster	108	308693	3	spotify:track:3iwy6SFYKp1g6HfVr9oEAI
2826	Do You Know, Do You Care? - 2016 Remaster	108	298213	4	spotify:track:5lByBSHBTVvhz6rAEkmrc6
2827	You Can't Hurry Love - 2016 Remaster	108	174080	5	spotify:track:0VGyBqMFAJFlSAikuqMUfa
2828	It Don't Matter to Me - 2016 Remaster	108	257320	6	spotify:track:4vsJDV7rgWdW71lPanDt2L
2829	Thru These Walls - 2016 Remaster	108	304986	7	spotify:track:071E5EnVXEXQTZLywihxXV
2830	Don't Let Him Steal Your Heart Away - 2016 Remaster	108	285320	8	spotify:track:5jzXPJKT7dbUXfjp4dowb6
2831	The West Side - 2016 Remaster	108	302253	9	spotify:track:5zp1WxYQYX2mHm9ZVPx1mz
2832	Why Can't It Wait 'Til Morning - 2016 Remaster	108	189706	10	spotify:track:0Y9Elwh7vvFS9UrBsYQ4D0
2833	Puppy Love	109	184973	1	spotify:track:7HWH4kGaHR3ZwKNFPT4dSW
2834	Hey Girl	109	191146	2	spotify:track:5FVoXrVOxYfoKYWK8C4rdA
2835	Going Going Gone	109	128773	3	spotify:track:095xUBdl9sBzpY6sIDZD3X
2836	I've Got Plans For You	109	135066	4	spotify:track:53edj5HZthJlMBuwLs50nU
2837	Promise Me	109	212293	5	spotify:track:3YEnjmNFFe2WOpjJCO3iRn
2838	Let My People Go	109	189426	6	spotify:track:5FmYUbl4Idqb0YihbnisRs
2839	All I Have To Do Is Dream	109	189826	7	spotify:track:56ykUSpGpZnGQLGStE3weF
2840	Hey There, Lonely Girl	109	209400	8	spotify:track:1PDQojW6QMbQUAtmg9BmpW
2841	Big Man	109	156453	9	spotify:track:2IlWfiHpHMgoNFMDfygKxV
2842	Love Me	109	163773	10	spotify:track:3zCsnj7PFGgAPqX8Ldep1P
2843	This Guy's In Love With You	109	196733	11	spotify:track:4YOxUFE2K5AYzBXnsYAbJh
2844	Amor	110	172760	1	spotify:track:0yzzbkMrWPfW5FcBWSdSMl
2845	Caminito	110	157973	2	spotify:track:2i9jUBJS6RWr1UhyR9mxft
2846	Cuando Vuelva a Tu Lado	110	159733	3	spotify:track:5j2tKp2lqR5a5V8ArWOEDe
2847	Di Que No Es Verdad	110	170733	4	spotify:track:4hcS1eJzODgZyKnVJlmtj4
2848	Historia de un Amor	110	150866	5	spotify:track:47haQcqBOue2RAsVXER52f
2849	La Última Noche	110	173600	6	spotify:track:0UZNlaEKmed6PbjOmTqsnf
2850	Media Vuelta	110	148293	7	spotify:track:0LVLuqyQrXViI9OzDIVxbw
2851	Noche de Ronda	110	198973	8	spotify:track:68wE8jzo7TjQVpuO0dovNR
2852	Nosotros	110	164000	9	spotify:track:5l2lkNFAnc1caHIuQLgvE7
2853	Piel Canela	110	137560	10	spotify:track:5NYQS0JkqRRfhlliy0P3Dv
2854	Sabor a Mí	110	168400	11	spotify:track:0Hja9zlVQHC768PsPjWscW
2855	Y...	110	166640	12	spotify:track:2BPPkdy7BJ2VQPrZMeaGkN
2856	Daylight	111	447680	1	spotify:track:4doXgewLPFbx3W5WAcDITC
2857	Should I Stay/I Won't Let You Go	111	304240	2	spotify:track:7ubFAre2Q11VBvgTWKLePm
2858	Something Like a Dream	111	236120	3	spotify:track:5mBqj0JPlRZem9aNrxGOEY
2859	Let Me Down Easy	111	231853	4	spotify:track:2k79bQrcrdmxH6V1ds0toN
2860	How About Me	111	200613	5	spotify:track:4xP0rflLIUsrDjGKvbzlPI
2861	Can't Find No Love	111	228413	6	spotify:track:1pR0Q6my05e5yl0Gv4ZuOY
2862	Falling In Love	111	210946	7	spotify:track:3IerxpYmrJlPEGKzHC5wYF
2863	After All This Time	111	226826	8	spotify:track:7lPPIR7SWaNcSU8e69h3hM
2864	Daylight - Single Version	111	232626	9	spotify:track:2PyuZZBH1Lmhz01lksdLfO
2865	Should I Stay - 7" Single	111	221386	10	spotify:track:0RagMAWjIalreJCmuBowmI
2866	I Want To Take You Higher	112	321386	1	spotify:track:4aX7pY8AV7oKCcCB5Sfqrs
2867	Everybody Is a Star - single master	112	184160	2	spotify:track:4NXNW4eqf9JXLhWFRjwFh9
2868	Stand!	112	186973	3	spotify:track:66W3GpbqpSD5xR4PGAvu0H
2869	Life	112	178360	4	spotify:track:0aI5KoqucjqXjPi7bFENFQ
2870	Fun	112	141346	5	spotify:track:70AM9U6VMFtSyjCYc34srx
2871	You Can Make It If You Try	112	218120	6	spotify:track:5lggRenRs2B0AygsiBYJPM
2872	Dance to the Music	112	177586	7	spotify:track:6q701mead1QEHZdRiTsGCe
2873	Everyday People	112	140213	8	spotify:track:7vwpuSzl2ME9NkpZUzw8Wj
2874	Hot Fun in the Summertime	112	157040	9	spotify:track:4t6NQkpUmvpvLDCkl3XuwA
2875	M'Lady	112	164533	10	spotify:track:3NQxA1W7mPHFZMvMPMao17
2876	Sing A Simple Song	112	234346	11	spotify:track:15kqdKUfkwL6Cug9TDHtGC
2877	Thank You (Falettinme Be Mice Elf Agin) - Single Version	112	291320	12	spotify:track:74iQ3gahRTOGc19bYadBE3
2878	When the Earth Moves Again	113	235413	1	spotify:track:6YhrDBmLhwAgnpAuTOv9qG
2879	Feel so Good	113	277106	2	spotify:track:0QdNHJoXVdzENkvYUiy2zm
2880	Crazy Miranda	113	204106	3	spotify:track:1fYio3yj4JWFg0cO5HH2i6
2881	Pretty As You Feel	113	269586	4	spotify:track:7Caz24hQ36zafY6U1HoOCZ
2882	Wild Turkey	113	285133	5	spotify:track:687DGqJ9sCftIsGdJf7UBe
2883	Law Man	113	161920	6	spotify:track:6gXis03CGDbixZauG6ADpY
2884	Rock and Roll Island	113	224733	7	spotify:track:1WrPm64dU8i0ZPbXU2hr0U
2885	Third Week in the Chelsea	113	275160	8	spotify:track:5t5bV1HLuULF0bX1F6MfCv
2886	Never Argue with a German If You're Tired or European Song	113	271880	9	spotify:track:76PkxH0BzrpZTO0Ot6GNKo
2887	Thunk	113	179306	10	spotify:track:2YeJkrGnnkvRQEJIWpYsR8
2888	War Movie	113	283040	11	spotify:track:5dVnZXj22fpqwSpThZKZyg
2889	Pretty as You Feel - Single Edit	113	189306	12	spotify:track:04tgOx1EJSNhRZg3G4wIrH
2890	Feel so Good - Extended Version	113	564653	13	spotify:track:40n9fanTXn2CJBR00IhNU7
2891	Them Changes	114	199933	1	spotify:track:0WoOHWp82bWaFBwrox1oGA
2892	I Still Love You, Anyway	114	252986	2	spotify:track:5idolehtcFFPTj9QtoMHCP
2893	Heart's Delight	114	247026	3	spotify:track:23qmtp3MGR0nAShznVNpaR
2894	Dreams	114	291426	4	spotify:track:1ovcNC9b3bnQOOLpAisZ7C
2895	Down By The River	114	380453	5	spotify:track:6zYQOQjcQlv5zIJ17q65LG
2896	Memphis Train	114	175413	6	spotify:track:0ILO4nAdxzfXiVgpWL68Gx
2897	Paul B. Allen, Omaha, Nebraska	114	331800	7	spotify:track:0kvjf7XlH03u8Pt3Mid9pT
2898	Your Feeling Is Mine	114	133706	8	spotify:track:7ty0RM90j9EvVh7vvFbgug
2899	I've Just Begun to Love You	115	395039	1	spotify:track:4uAmOz06dbppQuq4wyWd7g
2900	Groove Control	115	297959	2	spotify:track:1Q2jdTqrmhEecV0KUDvZJm
2901	Take Another Look At Love	115	266880	3	spotify:track:0gCoElfGzbK1ffSzshA6A9
2902	Day and Night	115	368373	4	spotify:track:4pvoqUGgQ1OcWLDOPqALOA
2903	Do Me Right	115	369012	5	spotify:track:3eXrVQcGHcDIEj7CiWl82y
2904	Something to Remember	115	287400	6	spotify:track:2UAp9LNsZHALZtCQapAA9d
2905	Adventures in the Land of Music	115	258892	7	spotify:track:2dq0kUm6b0JOBMvsu6N2j9
2906	Ice Breaker	115	317132	8	spotify:track:1lvcAbRFCNWhG6crM7tRFA
2907	I've Just Begun to Love You - Live	115	422052	9	spotify:track:2BUl1Pb8nwr7wuBxyTUUkW
2908	Paper Sun	116	255173	1	spotify:track:2KV3KWhOvBM8QTZtD4P30w
2909	Heaven Is In Your Mind	116	256666	2	spotify:track:4CTmAg0sDCV77DJOCYxOQJ
2910	No Face, No Name, No Number	116	212000	3	spotify:track:70RYz9ucCqZfF24p85UICM
2911	Coloured Rain	116	163506	4	spotify:track:3QSA1feDoRbsbnHkLUCIDT
2912	Smiling Phases	116	160506	5	spotify:track:6FRNHgk00YB55I89jHoicJ
2913	Hole In My Shoe	116	182160	6	spotify:track:1tlCqRUjsamtwBOF87veEv
2914	Medicated Goo	116	215000	7	spotify:track:1CVNulGvr9nZA0wnYHALJn
2915	Fourty Thousand Headman	116	195333	8	spotify:track:4YYo3TpZgIB0MkHkcbXvC4
2916	Feelin' Alright	116	258173	9	spotify:track:1yF2tJM1eeMlyTc1OoM48G
2917	Shanghai Noodle Factory	116	306000	10	spotify:track:5eN2AXd13RMd1vImaApn8e
2918	Dear Mr. Fantasy	116	340493	11	spotify:track:4bFEBUqX9DupWFW2ecZnoU
2919	Military Madness	117	176666	1	spotify:track:6n3Wk44F3ZZwts8OAyB2zK
2920	Better Days	117	230173	2	spotify:track:28s5iRbX62GZG2ReZTLKDa
2921	Wounded Bird	117	133066	3	spotify:track:128mmF3MICOnunXnvjTLow
2922	I Used to Be a King	117	281893	4	spotify:track:4GwREGuYf5RH8vfnk7ntZ9
2923	Be Yourself	117	189106	5	spotify:track:2lzfm9Ov5akVvr0vVgmQ1g
2924	Simple Man	117	138133	6	spotify:track:44eBSYvFSr1KGv4ZF5MahK
2925	Man in the Mirror	117	168960	7	spotify:track:7uErhJVpmdTGxZNI2xy2lS
2926	There's Only One	117	241373	8	spotify:track:7zBjkTKA30atLdFnKDZMGV
2927	Sleep Song	117	180160	9	spotify:track:0Z7XX7XRQ5VZm6aG6qmwcT
2928	Chicago	117	171440	10	spotify:track:4wBi9ogKThsbFUvVJxjhK2
2929	We Can Change the World	117	66560	11	spotify:track:4vGhqQ09rz7qWgNWBdoHZk
2930	Love Has Brought Me Around - 2019 Remaster	118	164933	1	spotify:track:3pBT9fBuv5xBPMS1itj6p9
2931	You've Got a Friend - 2019 Remaster	118	268866	2	spotify:track:6zV8IpLvw0tkRSVCFQJB1y
2932	Places in My Past - 2019 Remaster	118	121920	3	spotify:track:6LpSMfQTSQBxWSufEnxMgA
2933	Riding on a Railroad - 2019 Remaster	118	162986	4	spotify:track:4fzDRFNKcSsehwI85YS5pK
2934	Soldiers - 2019 Remaster	118	75240	5	spotify:track:3f3Nk2e5tLq3zCR55hNcfN
2935	Mud Slide Slim - 2019 Remaster	118	319213	6	spotify:track:65JIOfuq2c9GBH4kBY7BYF
2936	Hey Mister, That's Me up on the Jukebox - 2019 Remaster	118	228093	7	spotify:track:5ef8E6XIpIScVQ4OqjY40Q
2937	You Can Close Your Eyes - 2019 Remaster	118	149263	8	spotify:track:2cNELi1hzt3eWwYHYkJKub
2938	Machine Gun Kelly - 2019 Remaster	118	157163	9	spotify:track:0XMEFaM6o1Kzkm4ps2LnQU
2939	Long Ago and Far Away - 2019 Remaster	118	140973	10	spotify:track:59mPadX6sKWripbp54vDwk
2940	Let Me Ride - 2019 Remaster	118	164133	11	spotify:track:095LP9En9jWNJ9ETwUKnOP
2941	Highway Song - 2019 Remaster	118	233333	12	spotify:track:0t1pyyO6nXRkCyzekG5SkO
2942	Isn't It Nice to Be Home Again - 2019 Remaster	118	55186	13	spotify:track:3RkQm4ihyCPByfNC4RVtd1
2943	Got to Be Real	119	307946	1	spotify:track:58r4JuwHhXLAkttkaUZfLw
2944	All My Lovin'	119	291213	2	spotify:track:6IJogXnm7R8BEdwAnRN1Zk
2945	Star Love	119	444120	3	spotify:track:3Qf3MFEgl1laKe49NAXYKq
2946	Come in from the Rain	119	212400	4	spotify:track:77L0v6Id9JIylfAaukcA67
2947	You Saved My Day	119	267106	5	spotify:track:3U4hpMxbTtPaxwBIqFkjlG
2948	Give My Love to You	119	214173	6	spotify:track:71kpxQFRVQPa0LC2vpdDOG
2949	Nothing You Say	119	238946	7	spotify:track:0kt0vfJueyA91S8snItCwB
2950	You're the One	119	250186	8	spotify:track:34JCVaRxldqEkJUBJtsIte
2951	Daybreak (Storybook Children)	119	226320	9	spotify:track:5VgHd81t0v4XZBfhkd1UU6
2952	Got to Be Real - Single Version	119	223173	10	spotify:track:3eudp9ZxZAGaDBOuWGrW2D
2953	You Saved My Day - Special 12" Version	119	333333	11	spotify:track:7xHt8KRkw5NExtS2YGhYr6
2954	Feelin' Alright	120	250840	1	spotify:track:0Jl5bIEve3A4axcjY3EgDZ
2955	Bye Bye Blackbird	120	207560	2	spotify:track:7pmvMwKid6OwEB707Uy61a
2956	Change In Louise	120	202973	3	spotify:track:5plXVVsRnChDtVZNglAw0c
2957	Marjorine - Single Version	120	158386	4	spotify:track:7vZhz8guiUPEGwcNQEHuey
2958	Just Like A Woman	120	317800	5	spotify:track:63VYIOuzQjn8gWYQvVnzrs
2959	Do I Still Figure In Your Life?	120	239506	6	spotify:track:1krIydpftRXEKhxKBdl4uB
2960	Sandpaper Cadillac	120	196560	7	spotify:track:0pHoqYVtzpN7aKTj2QnccV
2961	Don't Let Me Be Misunderstood	120	281360	8	spotify:track:6iJubeWHEKFJUs8iVCYThj
2962	With A Little Help From My Friends	120	312173	9	spotify:track:0YZ3J8xzGwLOg4yEgST1YK
2963	I Shall Be Released	120	275960	10	spotify:track:6KSAUAVSEofmfVQyf81Lrp
2964	The New Age Of Lily - Single Version	120	135373	11	spotify:track:3qm4CQqeUTCYR0mPBTXNfg
2965	Something's Coming On - Single Version	120	135266	12	spotify:track:3NF8hBcFBk5uvxg2MUnpY1
2966	Lovely Day	121	254560	1	spotify:track:0bRXwKfigvpKZUurwqAlEh
2967	I Want to Spend the Night	121	221133	2	spotify:track:5O9oIsN5r0MKWuUrjWSa7W
2968	Lovely Night for Dancing	121	349800	3	spotify:track:6Zxubc85CUm7fFP9HDyAu3
2969	Then You Smile at Me	121	293666	4	spotify:track:1zM1PgepMQsQbyeHS6HJDC
2970	She Wants To (Get on Down)	121	195040	5	spotify:track:2JR9VREjq9ZWkKwqjHDaya
2971	It Ain't Because of Me Baby	121	210266	6	spotify:track:1byRaJhSlEM60CWYGxsATq
2972	Tender Things	121	300426	7	spotify:track:20t3Wchb3cqS4tYPmWumuB
2973	Wintertime	121	196666	8	spotify:track:2mLWmIuU2xLbH5CfFMHhzn
2974	Let Me Be the One You Need	121	284293	9	spotify:track:22beaVB5KBAffAVT6NhpJ2
2975	Mercy, Mercy, Mercy	122	396240	1	spotify:track:2tY1q8dNd5trWXWJy0YU9j
2976	Respect	122	136786	2	spotify:track:0bduvCwwkluLbFhnsHIcL1
2977	Funky Broadway	122	398533	3	spotify:track:5Q6qwv0GtGJJ1kxIoOy0KM
2978	T - Bone Steak	122	441933	4	spotify:track:5eg5HuRbKp0Nb8uFz9cnAp
2979	Get Out Of My Life	122	536000	5	spotify:track:65ctpkHMMXt7OQiKM7CVjt
2980	All Day Music	123	248200	1	spotify:track:1HdQSzMMb1AGOrYCOuvIEF
2981	Get Down	123	269013	2	spotify:track:5NevOssdpCsiwJOR016GLg
2982	That's What Love Will Do	123	435960	3	spotify:track:09KiSTosShYiOhg46Q8taE
2983	There Must Be A Reason	123	195040	4	spotify:track:1tPi7YplmgAbutX4OLcbBT
2984	Nappy Head (Theme From "Ghetto Man")	123	366226	5	spotify:track:2n4sCzwOlziA12FSTs2tRZ
2985	Slippin' Into Darkness	123	419466	6	spotify:track:1YeDoUncykU6ECk3LclRYM
2986	Baby Brother	123	460066	7	spotify:track:2Kgd6pRwEdRO3PUqyLe9HK
2987	Supernatural Thing, Pt. 1	124	251560	1	spotify:track:62dhSmROhppvuWyeCeC730
2988	Supernatural Thing, Pt. 2	124	194666	2	spotify:track:5ZvtC3XVHMJaKe9e4HSGTB
2989	You're Lovin' Ain't Good Enough	124	300440	3	spotify:track:00GTgXHoNvqeJ0xIAIx4cW
2990	Drop My Heart Off	124	257426	4	spotify:track:1p2lEkm7lntBT2fRB7LlxP
2991	Extra - Extra	124	228666	5	spotify:track:4WVFW4K3JWfvV8RW3eqk62
2992	Do It in the Name of Love	124	260666	6	spotify:track:6MMOlhXeLRkGOq1M2BH4tA
2993	Happiness Is Where You Find It	124	215506	7	spotify:track:0sCCbkmETW3d8f9EBiPKM7
2994	Do You Wanna Do a Thing	124	264560	8	spotify:track:7aWrN0RBQZyzAnW7zqrxGP
2995	Imagination	124	218240	9	spotify:track:1zElJsWDI8C6Ksi8NHikrM
2996	What Do You Want Me to Do	124	197826	10	spotify:track:0hK9bX6gtaeUzdZzjU2yyg
2997	Wipe Out	125	155653	1	spotify:track:1Nhrdk3uJ5ZoAHn7D5UKSf
2998	Gremmie	125	157053	2	spotify:track:1nnIFdhh46OIosaSQs4Zsm
2999	Night Lamp	125	144693	3	spotify:track:1kQk0328MRO9Ku7WWTn9n5
3000	Dig	125	193266	4	spotify:track:51qawHWmKUXw8FkLXwsS9G
3001	Ho Dads	125	153760	5	spotify:track:3WTtSWhn3UuOdqZZcsh62O
3002	Haleiwa	125	161253	6	spotify:track:3dJmyIQKzeWPhL0ZveQiq4
3003	Surf Rockin'	125	126053	7	spotify:track:7u5LCHOQh3JXN1uZhGfBmG
3004	Maile	125	142946	8	spotify:track:6M2oGlwed72SqJvbRvw7JI
3005	Hooked	125	146906	9	spotify:track:2ZCouKdmrQG07v6QDPHIqS
3006	Pupukea	125	159266	10	spotify:track:71mBwtqrTL4yMyVWsM5u2B
3007	Tonight	126	370026	1	spotify:track:5BmmCEPNTFmmJ8hsIByMGb
3008	Keep On Lovin' Me	126	349133	2	spotify:track:3SiUv5vf79EuP0VjIZJ9A2
3009	Love for Love	126	263160	3	spotify:track:5QhsSY5GDveLoz1zuAaf06
3010	This Time	126	327173	4	spotify:track:2wNCgKbz0PNDxu6pF89p8u
3011	Had It Not Been for You	126	251093	5	spotify:track:2UKutx2wihkUR60huuoodb
3012	Try It Again	126	227173	6	spotify:track:1THilC57m4PLya2gW8WZo7
3013	Do They Turn You On	126	318360	7	spotify:track:0HmLZ81wEiZll5vCzATIqg
3014	Keep Your Love Around	126	247106	8	spotify:track:32bDL81WoE9KCh7UjLvWhT
3015	Lay It On Me	126	234880	9	spotify:track:28XK9z09a5edi65eW81mse
3016	Lovin' Is Really My Game - Live	127	350133	1	spotify:track:07AquLuknA60N7ZTGunC6a
3017	Tonight Is the Night - Live	127	498866	2	spotify:track:4vzcQG9LnS00DR6s2fSS3j
3018	A Song for You - Live	127	457293	3	spotify:track:0TckoxlUfRkiDHLrLzZ3Aw
3019	Medley: Clean up Woman / Pillow Talk / You Got the Love / Mr. Melody / Midnight at the Oasis / Me and Mrs. Jones / You Are My Sunshine / Let's Get Married Today - Live	127	715573	4	spotify:track:3QfZmcvUqs68LczTglzIZ1
3020	You Can't See for Lookin' - Live	127	348733	5	spotify:track:1qM8NHToA1ObTPMEVI7Yy8
3021	Where Is the Love - Live	127	257600	6	spotify:track:7JsfB9CCfkqHo4FXRTpX5t
3022	Rock Rock (Till You Drop)	128	234753	1	spotify:track:6q6p7K0vN4aKm6kXL0MhnP
3023	Photograph	128	247962	2	spotify:track:6ZfnaOLNfOYRsGKoS2EWDO
3024	Stagefright	128	224848	3	spotify:track:03Iion9ZYM36Yj7ConDwSA
3025	Too Late For Love	128	266728	4	spotify:track:0oQV0kZorTu9fYURkuKYq8
3026	Die Hard The Hunter	128	375866	5	spotify:track:3KIZVtprnLV6ExPSB8ylVa
3027	Foolin'	128	274117	6	spotify:track:2ABEq4lPEzovuTH7lu3g2a
3028	Rock Of Ages	128	247828	7	spotify:track:2AmEv442DGwSxMGZ9XEvBA
3029	Comin' Under Fire	128	254501	8	spotify:track:1lfGdcQJ2GLJsPftChSBmZ
3030	Action Not Words	128	228592	9	spotify:track:2XIbNJT5bb1AgDcChFh4hc
3031	Billy's Got A Gun	128	356360	10	spotify:track:2BqRD65Ajw9QBAmlU2JC0d
3032	Rock Rock (Till You Drop) - Live At The LA Forum, USA / 1983	128	255305	1	spotify:track:3zeNwYx3IJL7P5UY5U1N1H
3033	Rock Brigade - Live At The LA Forum, USA / 1983	128	205413	2	spotify:track:1xsqduGdQy9sP06IZuw8fw
3034	High 'N' Dry (Saturday Night) - Live At The LA Forum, USA / 1983	128	202373	3	spotify:track:2afqHkUzWNimzqsCgjbaBv
3035	Another Hit And Run - Live At The LA Forum, USA / 1983	128	373560	4	spotify:track:5sUOjsdxg8gPxgTMUHPyNB
3036	Billy's Got A Gun - Live At The LA Forum, USA / 1983	128	283306	5	spotify:track:0hQOA69Kkbqgx4gmd70L8r
3037	Mirror Mirror (Look Into My Eyes) - Live At The LA Forum, USA / 1983	128	264173	6	spotify:track:2P9Z1oBOL2A60Oftw3JX3E
3038	Foolin' - Live At The LA Forum, USA / 1983	128	298773	7	spotify:track:1yNp6g93KNFd8MnYN8QBAh
3039	Photograph - Live At The LA Forum, USA / 1983	128	243160	8	spotify:track:3E9FvAWOuByxkatUiohvb3
3040	Rock Of Ages - Live At The LA Forum, USA / 1983	128	293266	9	spotify:track:0MBPCHbgKzAA12c3gZaFpG
3041	Bringin' On The Heartbreak - Live At The LA Forum, USA / 1983	128	245826	10	spotify:track:1y0urCvWjpyfdPwjiasKGn
3042	Switch 625 - Live At The LA Forum, USA / 1983	128	203240	11	spotify:track:1lo5pH6f6TLiYana5WtD1e
3043	Let It Go - Live At The LA Forum, USA / 1983	128	355520	12	spotify:track:2NYPzgCRQmtBO6p014spVp
3044	Wasted - Live At The LA Forum, USA / 1983	128	355413	13	spotify:track:6JkhHwQldLwWF3JO9XeW9X
3045	Stagefright - Live At The LA Forum, USA / 1983	128	295333	14	spotify:track:29yD4NVjbvaam9F1tpZo1p
3046	Travellin' Band - Live At The LA Forum, USA / 1983	128	367624	15	spotify:track:1KgpPZNPui3APcGOnxyBvA
3047	Fingertips Pts. 1 & 2 - Live At The Regal Theater, Chicago/1962	129	397560	1	spotify:track:5t2zRk2V4MiibvOfVEvycg
3048	Soul Bongo - Live At The Regal Theater, Chicago/1962	129	181653	2	spotify:track:20NKzLAZZDeywFXysSRc3m
3049	La La La La La - Live At The Regal Theater, Chicago/1962	129	151333	3	spotify:track:2Z9THVFj60Lbch7rBZ7CH9
3050	(I'm Afraid) The Masquerade Is Over - Live At The Regal Theater, Chicago/1962	129	313440	4	spotify:track:63MnFlg6MIxWYyUUxIBC5M
3051	Hallelujah (I Love Her So) - Live At The Regal Theater, Chicago/1962	129	168520	5	spotify:track:7A6hQocnBM7XmwSytog20X
3052	Drown In My Own Tears - Live At The Regal Theater, Chicago/1962	129	203813	6	spotify:track:3P5DUsN3G7jy90J8OYk7IS
3053	Don't You Know - Live At The Regal Theater, Chicago/1962	129	198680	7	spotify:track:5xSlmunw5GPjmiFtZfbUSv
3054	Always There	130	309933	1	spotify:track:58LtDMwWRMF7hML24Jc1ie
3055	Keep That Same Old Feeling	130	313160	2	spotify:track:3GJXK80eIzvmsmof5uwZN5
3056	Together	130	223973	3	spotify:track:7zQsfB8ERutAf32oVWqv9e
3057	Pisces	130	233306	4	spotify:track:7jwK70GIrQDqhLoyXlEvwr
3058	Dindi	130	380693	5	spotify:track:185PG2pHZ1C8bN2gAU2xDq
3059	Snort of Green	130	265120	6	spotify:track:1TY9vus3Bsz4bImHdIw0Yx
3060	Fairy Tales for Two	130	262506	7	spotify:track:1kN6Y8g8TomkObrQfhMGkf
3061	Sixty-Two Fifty	130	206706	8	spotify:track:4n0bOmnnYgleazywVimOmU
3062	Wait	131	207093	1	spotify:track:2DqpmJ1AOgdWe9zZsOUrg5
3063	Ice Breaker (For the Big "M")	131	137200	2	spotify:track:0UaCytrxRfopp1R7S3rGAP
3064	Crusin' for a Love	131	151280	3	spotify:track:2LPyQCZjxhtgHbn6mbJTtP
3065	Hard Drivin' Man	131	138626	4	spotify:track:3FxQ1GofQpnHtXAPgAWD5J
3066	Serves You Right to Suffer	131	299840	5	spotify:track:3GxUx9BLOfqytEO1GYAMI4
3067	Homework	131	162600	6	spotify:track:2RiAHLurDJZl0AOxIzOrRh
3068	First I Look at the Purse	131	233000	7	spotify:track:1N8ZfIA7pZGclmfd33pfkG
3069	What's Your Hurry?	131	164600	8	spotify:track:6ovEQuXV9lCaLULMdFcr1E
3070	On Borrowed Time	131	184373	9	spotify:track:71h5uf8iHNyDHIybyCTHQw
3071	Pack Fair and Square	131	120360	10	spotify:track:5eQxSqbKw89h9nkvD4j4Mm
3072	Sno-Cone	131	204640	11	spotify:track:0QFE5cYHHnoYqkCXbx50As
3073	Imagine - Remastered 2010	132	187866	1	spotify:track:7pKfPomDEeI4TPT6EOYjn9
3074	Crippled Inside - Remastered 2010	132	232626	2	spotify:track:5CG4RXjli90Zd1KDalPqeK
3075	Jealous Guy - Remastered 2010	132	257786	3	spotify:track:3D9iV6cYkYJRAPFO6DRKIE
3076	It's So Hard - Remastered 2010	132	149080	4	spotify:track:0YPyhXgtDks7BQozBSGCk4
3077	I Don't Wanna Be A Soldier Mama - Remastered 2010	132	368480	5	spotify:track:16euYyM9iFZqOk3p9bnsEW
3078	Gimme Some Truth - Remastered 2010	132	197813	6	spotify:track:3d2oiHuHm3rftzRDPeL5LU
3079	Oh My Love - Remastered 2010	132	168106	7	spotify:track:0gDyuX5rdHulQTUyrIdSR1
3080	How Do You Sleep? - Remastered 2010	132	339186	8	spotify:track:7xsr2OppItxPB4whucYr2G
3081	How? - Remastered 2010	132	226280	9	spotify:track:4k9pqSKBHYdTGjzNeRyQ0o
3082	Oh Yoko! - Remastered 2010	132	260746	10	spotify:track:2pNwQBjJppt8v3sZojH1aj
3083	Fantasy Beginning	133	62866	1	spotify:track:3yuC4fwlRLXTvFYIbhHmcV
3084	You've Been Around Too Long	133	222200	2	spotify:track:5HrDXOFttS0xDxslYCVQVd
3085	Being At War With Each Other	133	206693	3	spotify:track:2nziDfg2ZB07Nn3xrtaEll
3086	Directions	133	238933	4	spotify:track:2lIp5uEi8LrKDM4VzKMyLx
3087	That's How Things Go Down	133	181333	5	spotify:track:3YsaxpKhAVWZDPFCfXimo5
3088	Weekdays	133	164573	6	spotify:track:188S3CUlO4CMprDBzzXVPx
3089	Haywood	133	286640	7	spotify:track:3NPYWN846zefQLMgI98s3Y
3090	A Quiet Place to Live	133	115960	8	spotify:track:1E322wpemjkGKmBwlMgFu0
3091	Welfare Symphony	133	227040	9	spotify:track:7qlyXT9S2gbFNwLkdYpcTW
3092	You Light Up My Life	133	193800	10	spotify:track:0niWpRGYTyofCnblR3Jk1P
3093	Corazón	133	245666	11	spotify:track:0v1qlRKi0ZwlQn4zK3kM4N
3094	Believe In Humanity	133	199360	12	spotify:track:3IGVbtmyromoUCgHTQcToE
3095	Fantasy End	133	85306	13	spotify:track:5uGXIo7M8pfNuLjqFkfG2D
3096	Variations on a Theme by Erik Satie (1st and 2nd Movements - Adapted from "Trois Gymnopedies')	134	153560	1	spotify:track:0TtHkHE5fLeaRtpMP370HD
3097	Smiling Phases	134	309773	2	spotify:track:5zokXOTsHolr7juCZ3znZU
3098	Sometimes in Winter	134	188960	3	spotify:track:1vdEYqMaRGg0Wb4TFhOlyF
3099	More and More	134	183560	4	spotify:track:65YrayXlPcab99UT91W2Pj
3100	And When I Die	134	244973	5	spotify:track:7kDPwGDjxDBONlPpkc1p77
3101	God Bless the Child	134	353760	6	spotify:track:3RN7Bw1U61nzMbTvwibb8Q
3102	Spinning Wheel	134	247266	7	spotify:track:0spSRHFS4zF4Imvz9sJcfL
3103	You've Made Me So Very Happy	134	258733	8	spotify:track:76OUhpuAQSQ2orR5TUeeRc
3104	Blues, Pt. 2	134	704800	9	spotify:track:4CjNYJYpuoLRC61cdtvgA1
3105	Variation on a Theme by Erik Satie (1st Movement - Adapted from "Trois Gymnopedies")	134	99893	10	spotify:track:72FQWSM9tMe43X2UiZBFkj
3106	More and More - Live at the Cafe Au Go Go, New York, NY - August 1968	134	277866	11	spotify:track:7uGDssSlPe62l9Ybj3bLrE
3107	Smiling Phases - Live at the Cafe Au Go Go, New York, NY - August 1968	134	1123506	12	spotify:track:33jcXPWckOY33jzXFuHK75
3108	The Night Owls - Remastered	135	319733	1	spotify:track:5L27knWQkVObPY0FbpyHvy
3109	Man On Your Mind - Remastered	135	256839	2	spotify:track:4LzdgN6x9EHyE8MDjrq4lq
3110	Take It Easy On Me - Remastered	135	227080	3	spotify:track:5p0Et9J14mQUaqZsNiFlsY
3111	Ballerina - Remastered	135	243716	4	spotify:track:08Ib2XSvEGG61EHCjF7e4O
3112	Love Will Survive - Remastered	135	272226	5	spotify:track:1s8x9WMZq9QroHi3XKVod8
3113	Full Circle - Remastered	135	115746	6	spotify:track:5nJy0rjVKFTQV9VyLQUtS0
3114	Just Say That You Love Me - Remastered	135	239680	7	spotify:track:5O8GM9d4jD2Gh69RhOSgcg
3115	Suicide Boulevard - Remastered	135	203786	8	spotify:track:15e1l9FR4QShZ0KryA06qw
3116	Orbit Zero - Remastered	135	269773	9	spotify:track:4K0ifyDac7wNqZL60neotY
3117	Don't Let The Needle Win - Remastered	135	235653	10	spotify:track:12ciWsmStuIf9IUNnus9go
3118	Guiding Light - Remastered	135	213946	11	spotify:track:0fATGNyeyAFUH8mL1BCG3C
3119	Long Jumping Jeweller - Remastered	135	286053	12	spotify:track:1P9swQhE4G7igNY4JxUBEJ
3120	Just Can't Get You Out of My Mind	136	219493	1	spotify:track:35YX2yqLiqpx5QJG9UqLHF
3121	Just You and Me Baby	136	179680	2	spotify:track:4ow3xkO7rvPYGdEvX14w3f
3122	Don't Let the Green Grass Fool You	136	240413	3	spotify:track:38PU39Jj3sT1hBvIUabM8k
3123	I Could Never (Repay Your Love)	136	416306	4	spotify:track:6uFyfAlR5YhoCY73fquOX2
3124	I'll Be Around	136	188800	5	spotify:track:2vLaES21zwbX1Rnmj56Bbb
3125	One of a Kind (Love Affair)	136	214146	6	spotify:track:3LV2CK8sJiYjg1bV1aHQop
3126	We Belong Together	136	252186	7	spotify:track:6qLbFJTxgXEBFPjawBe08z
3127	Ghetto Child	136	230719	8	spotify:track:3qmyaJxqKaGkAioK3lEnFS
3128	How Could I Let You Get Away	136	229773	9	spotify:track:4jnPGIKO0aljX74CmUA2CH
3129	Could It Be I'm Falling in Love	136	249733	10	spotify:track:5i0urffBRKl09GSX2Jhdeh
3130	Right Place Wrong Time	137	175240	1	spotify:track:0I2ELF6uHlL4ABu9aFiou7
3131	Same Old Same Old	137	163066	2	spotify:track:3hySZXi0XGXapzLpni0BUq
3132	Just the Same	137	173026	3	spotify:track:5cib9HDrgbrzUyUcZa5cGW
3133	Qualified	137	290666	4	spotify:track:5SQKCi4FIW4mpi9pj1vJ3Y
3134	Traveling Mood	137	171973	5	spotify:track:4L3BtMlbcNciZ6k2ZTp72d
3135	Peace Brother Peace	137	170426	6	spotify:track:2cJVRnuicVUjLVwijDvCDF
3136	Life	137	151240	7	spotify:track:0zUa5w0YqDrTWHcJePUOIe
3137	Such a Night	137	177733	8	spotify:track:3GppcLIGlSlvujXgR0pPRt
3138	Shoo Fly Marches On	137	197253	9	spotify:track:2GUCu4slhRbYXweSEYPUld
3139	I Been Hoodood	137	194800	10	spotify:track:7wE0MkXKVhcBNBo3NcZHKy
3140	Cold Cold Cold	137	157000	11	spotify:track:7H3gr3Y006302HMoAVQHYQ
3141	Here You Come Again	138	179491	1	spotify:track:6H7nDglS6xWpRidbhMwI2L
3142	Baby Come Out Tonight	138	209045	2	spotify:track:35bQCKdQ7hqIWWjoeVHSRn
3143	It's All Wrong, but It's All Right	138	201354	3	spotify:track:2hVA5ueg3MuftreNk9AkXe
3144	Me and Little Andy	138	160914	4	spotify:track:6gwViarxQ24E7jK4tAxVaJ
3145	Lovin' You	138	145612	5	spotify:track:4TM0YBkfp65RnTD3GkijTQ
3146	Cowgirl & The Dandy	138	228902	6	spotify:track:6MnMdAYfUwedmW3SPVQiD8
3147	Two Doors Down	138	188871	7	spotify:track:0EWJ1KT2q3RdbdQIUYqZsp
3148	God's Coloring Book	138	194921	8	spotify:track:5BGeeVCSh8GPkBzDi0u5h2
3149	As Soon as I Touched Him	138	194482	9	spotify:track:1qcbUfh4hsYZyrfZEnjB5a
3150	Sweet Music Man	138	188751	10	spotify:track:0tiHQhYilIH8w5R3zxmTlZ
3151	I Know Who You Been Socking It To	139	163880	1	spotify:track:3NbPStpTH3aytylN8pV0KK
3152	Somebody Been Messin'	139	158640	2	spotify:track:7puJqB115Xly5LSTll7RNW
3153	Save Me	139	211066	3	spotify:track:45BRlginCQBnECQn9XEaSr
3154	I Must Be Losing My Touch	139	122626	4	spotify:track:1n6UklwBihkm8ut01QF1yL
3155	Feel Like the World	139	207586	5	spotify:track:7glho8Sq4TP7CzxKo29D4r
3156	It's Your Thing	139	169293	6	spotify:track:3ZxfehzRtB3oJcBuxWXFZQ
3157	Give the Women What They Want	139	139360	7	spotify:track:3oZT2rIYXEn3ySgrkDCKg4
3158	Love Is What You Make It	139	157013	8	spotify:track:4ENCCkkaaej2lZdj7u5ZJZ
3159	Don't Give It Away	139	162333	9	spotify:track:1pQY1BzmP3PvD7nep0aijS
3160	He's Got Your Love	139	119226	10	spotify:track:31EfEEiKHGSerI64BKUYk8
3161	I Know Who You Been Socking It To	139	161373	11	spotify:track:3SRgV12WmgCKaRKbvrBMAG
3162	Somebody Been Messin'	139	136653	12	spotify:track:1UvIyjaS75CrbWAa2K1NSS
3163	From the Beginning	139	131653	13	spotify:track:2WM72I23jZY9dSSC7rJaLq
3164	He's Got Your Love	139	116880	14	spotify:track:1Z5KGB9QObHkhfuvtIHbpf
3165	It's Your Thing - Mono Alternate Fade	139	176666	15	spotify:track:6pe0Q4A8bISCLm5RnsUvHE
3166	Somebody Been Messin' - Mono	139	143253	16	spotify:track:4SVLveYNivonQL8TLjs4DY
3167	Love Is What You Make It - Mono	139	174533	17	spotify:track:4fyWM16gk0vo0Htqj16ESP
3168	Don't Give It Away - Mono Alternate Mix	139	174373	18	spotify:track:1xFkdo4CJpULN5HzzBEiWg
3169	Somebody's Been Messin' - Mono Instrumental	139	141200	19	spotify:track:5qCyWFH2XOqvfpvYsP3tVe
3170	Pana	140	413640	1	spotify:track:4BdbFuAxHeGtVzajSo6yZm
3171	Just Say Goodbye	140	473493	2	spotify:track:1mZ9gqIwBDTb9A1BhEtxWX
3172	Cafe	140	439106	3	spotify:track:4JTzlqI7Jz9nk2bLJh6cKH
3173	Nena	140	389533	4	spotify:track:5HkvsZyaMPwhq38v0o8kAf
3174	Suavecito	140	395200	5	spotify:track:5QoFWpXoaUyT44VmR98wLl
3175	Peace	140	560626	6	spotify:track:6EPFJvZph6WC4TbydVly2D
3176	Poinciana (Song Of The Tree)	141	468266	1	spotify:track:6D7P1EfpQolu3WNmcKiJvm
3177	Latin Lady	141	505480	2	spotify:track:2g9qVyPFvVPKJw9VkKSyhk
3178	Odara	141	448586	3	spotify:track:4GGuj0vcTe0lceuoqxygR3
3179	She Is Michelle	141	373680	4	spotify:track:79akkstwW1KJBBEzCf8yA8
3180	Where Is The Love	141	293373	5	spotify:track:6jP5C4U1L4Gm3PeH998aCD
3181	Evil Eyes	141	260533	6	spotify:track:2RTSwmba95QGDL5PzUk9GL
3182	Bolero	141	443146	7	spotify:track:5FUxIEFKrf6tfHRUouxVpN
3183	Domelo (Give It To Me)	142	240960	1	spotify:track:3BxveSAiqrdGIVa1Tz877K
3184	Baby I Need Your Love	142	151866	2	spotify:track:5uehqVdx90DER2Al0fbhnV
3185	Higher	142	242960	3	spotify:track:2Ia0bilQNuXVqwvCO17bOs
3186	The Memory	142	272093	4	spotify:track:38ygVW7oemQ0vmcpjxYFDH
3187	Come Out And Play	142	226080	5	spotify:track:7aUPQ3EDrMMMx06TdsPTvT
3188	Better Days	142	199240	6	spotify:track:3AL4tN9vA9ziXyKV1G6Lgd
3189	Searching	142	240920	7	spotify:track:45muf22QzSyKwsF4l3IcwJ
3190	One Sweet Love To Remember	142	238306	8	spotify:track:34Junfd9A67CX4Qr4MuN6w
3191	Vibrations	142	182026	9	spotify:track:7bwsqDTrvpqO4spefohQu3
3192	Moving, Grooving	142	270880	10	spotify:track:1gP8bBkyWat1ZLFqjk2HPy
3193	Baby You Give Me A Feeling	142	182346	11	spotify:track:3Yc7hGHQdOrppoYAAkVbEC
3194	Give It To Me Baby	143	248226	1	spotify:track:72YXJleQw7Ap7oWKO4vfC0
3195	Ghetto Life	143	261013	2	spotify:track:35Wh3ShZBnshmbT9WmUZkh
3196	Make Love To Me	143	288346	3	spotify:track:2Fn293fpHXsH1HbzykEAbR
3197	Mr. Policeman	143	257293	4	spotify:track:04elI5ZHRfz92bTQgUpBYm
3198	Super Freak	143	204546	5	spotify:track:5vFFwU909VMZIBA7sZPtW0
3199	Fire And Desire	143	437880	6	spotify:track:3i5VIoGeBIUafTgyPCnzlD
3200	Call Me Up	143	233466	7	spotify:track:3XmfAdhOxxWJgzCDsssD55
3201	Below The Funk (Pass The J)	143	156213	8	spotify:track:6wacvf2bNxv5xs3mWFMv8G
3202	Give It To Me Baby - 12" Version	143	342853	9	spotify:track:04bxsQG9B8CwgtoVWmU8Wo
3203	Super Freak - 12" Version	143	425733	10	spotify:track:6DMmnhjy7fTzUQvqg7T9to
3204	Batuka	144	214666	1	spotify:track:0PdKuV0ALvrEMYbPpGBAHS
3205	No One to Depend On	144	331333	2	spotify:track:3pPnys7mGV0DQkQoxmovXi
3206	Taboo	144	334226	3	spotify:track:6FMrkCWvCHsZW73usabZiP
3207	Toussaint L'Overture	144	355866	4	spotify:track:2iqq08krH2PIffUk8bEalZ
3208	Everybody's Everything	144	210533	5	spotify:track:7F1UzwiFZafhFXgf83wHLu
3209	Guajira	144	343133	6	spotify:track:1z0Xw6hVTeuCOdUGxqKgHj
3210	Jungle Strut	144	320106	7	spotify:track:2jeiHlnGLVWEneJ8ibIsc7
3211	Everything's Coming Our Way	144	195200	8	spotify:track:31er0BSLvpfLCQmuTGO8vm
3212	Para los Rumberos	144	166973	9	spotify:track:120Efq5Mzvt2UDdnHdE4fE
3213	Keep On Moving	145	171733	1	spotify:track:48qEH4QqOc4cY5Xm488t6Q
3214	Cubano Chant	145	330173	2	spotify:track:5Yf6XmRjzVBKsV97RfSbxF
3215	Sabor A Mi	145	197826	3	spotify:track:35EQEi6Od5PWvI8XHEmttd
3216	Make It All Go	145	252773	4	spotify:track:14anUmeJ88N3zmaARJhVm5
3217	I'm A Good Woman	145	280560	5	spotify:track:7Bz6GjS4NiYgtzizK3Yf8B
3218	Viva La Raza	145	172906	6	spotify:track:5bthSEbdRhmMJ58fDGhVrc
3219	Spanish Grease	145	163693	7	spotify:track:5fJ8hP5Un9WxZLpsJ9ZM6D
3220	Sugar Sugar	145	320333	8	spotify:track:4wyFvl6d7YaUViLaUEvLv2
3221	Chicano Chant	145	407400	9	spotify:track:3FT7wGtUR5Rnx8PzlEvUJD
3222	Don't Put Me Down (If I'm Brown)	145	228306	10	spotify:track:2UIqwzF90WMoBIQYn4w6KZ
3223	Sing A Happy Song	146	299933	1	spotify:track:3HsBtrErYQjxf4Pv2p05Oy
3224	Get On Out And Party	146	301373	2	spotify:track:1AqQl1Pww8QpHhaTpLnKqR
3225	Identify	146	293306	3	spotify:track:7qAQT4sfZ8V7kHadLvJvCH
3226	So Nice I Tried It Twice	146	346173	4	spotify:track:0hLa8L6hDwUnvRnX8pekZ1
3227	Hurry Up & Come Back	146	305573	5	spotify:track:2VLnmkD9L2GgbepawJJUzV
3228	Forever Mine	146	366226	6	spotify:track:2X4H5K1aT6d7UyPWVfJWmF
3229	I Want You Here With Me	146	325386	7	spotify:track:4EkLSFVmsXd2c0GZSPpCFI
3230	One In A Million (Girl)	146	233213	8	spotify:track:6VDu4P6HcEhOw91rSVxixk
3231	The Gambler	147	214880	1	spotify:track:5KqldkCunQ2rWxruMEtGh0
3232	I Wish That I Could Hurt That Way Again	147	180080	2	spotify:track:0NxpAry2NrumWJ4GqMoJcM
3233	The King Of Oak Street	147	308080	3	spotify:track:0T5J5eTn0XllE8DpHMsVof
3234	Making Music For Money	147	201560	4	spotify:track:03xBflhpS0IAKrvRmSosgd
3235	The Hoodooin' Of Miss Fannie Deberry	147	289040	5	spotify:track:3ATBRCiBUMxbBmm2mPncWW
3236	She Believes In Me	147	258720	6	spotify:track:5ggOAMsJCAYDHnyoqJ0xAD
3237	Tennessee Bottle	147	246120	7	spotify:track:1QliJDK4wqap7ftt3VPiTn
3238	Sleep Tight, Goodnight Man	147	178693	8	spotify:track:3scGM7QrHhqdnAqyGRdyZL
3239	A Little More Like Me (The Crucifixion)	147	174453	9	spotify:track:2XHt0kUUYa0985XRI24gBo
3240	San Francisco Mabel Joy	147	223546	10	spotify:track:5pV6hN8RF33tNTSyONUhLM
3241	Morgana Jones	147	189453	11	spotify:track:49UjyszZj97K540LD0HUX1
3242	Tell It	148	178826	1	spotify:track:6zbld5pOFy9fVJd6AbXULW
3243	The Letter	148	211373	2	spotify:track:2Ubv5MrcjBVjDw30uNNbgK
3244	Listen Here	148	174560	3	spotify:track:0dIqpdAqkZ38J7ElwGjdDN
3245	Sometimes Bread	148	333600	4	spotify:track:6784FTdb3qzl9uN4zlwXV2
3246	Geechee Girl	148	189906	5	spotify:track:30SMOesuQnjIyv4T8Wgpw6
3247	Hippo Walk	148	184400	6	spotify:track:1Fd5VsnyIQky592Uv7lzlC
3248	Featherbed Lane	148	172266	7	spotify:track:6xJCzxiXy8xzcnnmE0kTef
3249	Saoco	148	334400	8	spotify:track:7i5u7VFp4b3454T0MOlvOv
3250	Afro Walk	148	172226	9	spotify:track:1PaXfbv0ldroGfhT9QLLWC
3251	Congo Blues	148	326773	10	spotify:track:233vdrxFh3qoYFafwxlcye
3252	Ha Cha Cha (Funktion)	149	352546	1	spotify:track:4kBFrPP6brcgNEsSruP9cz
3253	Get To The Point (Summation)	149	260853	2	spotify:track:5twOvNuU6U6UjUrDRTZ86T
3254	Sambo (Progression)	149	321573	3	spotify:track:18TCgHIVlKcg4sZNN5p0on
3255	Screwed (Conditions)	149	344213	4	spotify:track:58UIvJGfsjxmEBWkPwzs3o
3256	The Message (Inspiration)	149	285280	5	spotify:track:1fJ3J8khJdYrkYAOeTSNap
3257	Now Is Tomorrow (Anticipation)	149	358333	6	spotify:track:3MiiMAoyj2UWIBEjwVXyQ8
3258	Blame It On Me (Introspection)	149	201773	7	spotify:track:5qx6F53T12N1DsZ7GUc428
3259	What's On Your Mind (Expression)	149	208800	8	spotify:track:4FPVsEmd8fLEkJX4YXYZ3A
3260	Ni En Defensa Propia	150	144066	1	spotify:track:2DXigvJtnOxD7QPv7hhrIj
3261	Amor Y Olvido	150	161933	2	spotify:track:13AL4bL1dBlBGUElBxq0zf
3262	Ay Amigo	150	177226	3	spotify:track:2z3XIi6ikW8O9klg6UvDaB
3263	Buscame Amor	150	161200	4	spotify:track:2jaI8IZgjB9RgbFG6s19XV
3264	Caballo Golondrino	150	190826	5	spotify:track:2F7rfwBWTVaLMZD7EhLFYC
3265	Morena	150	138800	6	spotify:track:50ENxDeNq7zM7FJuiUcohb
3266	Mares de Tristeza	150	139333	7	spotify:track:5mFNujXlaJdAw3exRF8Y21
3267	Lo Mejor De La Vida	150	159640	8	spotify:track:4liqCIyU23B7jYJ0jQgJtl
3268	Ingrato Amor	150	165773	9	spotify:track:3rNTlIIKiozKrSHgypmzi5
3269	Alma Rota	150	160973	10	spotify:track:4JtdECB95datKDSjre52Gq
3270	Julia	150	178400	11	spotify:track:3onRg10lJvqvpx8IU1w3Dc
3271	Found a Cure	151	421040	1	spotify:track:1gND1zOlYtYgXdhRmpIOGJ
3272	Stay Free	151	322480	2	spotify:track:39rVzigiXOF0feDwgKzKIs
3273	Dance Forever	151	349906	3	spotify:track:6JYgYUi1Wgogmk1KWSmIFr
3274	Nobody Knows	151	393693	4	spotify:track:4wmBTdWvS7qdFe5pY51lOS
3275	Crazy	151	221800	5	spotify:track:0VL9TpzdfFiM1ZvZ6Nk9Dr
3276	Finally Got to Me	151	284493	6	spotify:track:1r6JJO0ibdIC5GZkLVLKG8
3277	Follow Your Heart	151	285773	7	spotify:track:3hFJQ6jK5Z9QOPe0eqsPL5
3278	Get On The Good Foot - Pt.1 & 2	152	344333	1	spotify:track:0YfMMzlMdOSGiAA0oYtyNV
3279	The Whole World Needs Liberation	152	221000	2	spotify:track:2DYQ7x3oYTGg9DrwHVqfVl
3280	Your Love Was Good For Me	152	200466	3	spotify:track:1ug0C3UvpkvUIHX64rDCNe
3281	Cold Sweat	152	176973	4	spotify:track:3GWM2gYAWWBrrh1h9F8DEc
3282	Recitation By Hank Ballard	152	354533	5	spotify:track:6dsZiAf1fo5kIuTZSeE34d
3283	I Got A Bag Of My Own	152	210960	6	spotify:track:4Ygdko0OT3nDtxYUPYXEHC
3284	Nothing Beats A Try But A Fail	152	186595	7	spotify:track:5kYU4DSvN1ivW1Qqhes4Im
3285	Lost Someone	152	239200	8	spotify:track:0NL2D0ICHCHH8eImwZxl01
3286	Funky Side Of Town	152	470066	9	spotify:track:4dFh05Zhbp9PF2v4BWxrtf
3287	Please, Please	152	742360	10	spotify:track:2v1RKw575pwkLuNDxeRsXN
3288	Ain't It A Groove	152	130263	11	spotify:track:0htRiWIhrVGRFIcAJ3mdig
3289	My Part / Make It Funky - Pt. 3 & 4	152	314466	12	spotify:track:4gsAC9QQtSZ4i84wx9sp1p
3290	Dirty Harri	152	378266	13	spotify:track:1KNNbrsDRG1resCsoytEQV
3291	I Know It's True	152	248266	14	spotify:track:0SmMekb8fQah6spC4x8N08
3292	Introduction - Live	153	32266	1	spotify:track:02yMKtHWQ35NwEk73DcLRI
3293	You - Live	153	353853	2	spotify:track:7JRSA6cOWdICVKPw4AVhuX
3294	Changing Times - Live	153	310533	3	spotify:track:3XYujZJHWpgL9wK8Ulpeyx
3295	Joy And Pain - Live	153	584133	4	spotify:track:2wl3hv2728TR5O93XsTZBF
3296	Happy Feelin's - Live	153	315720	5	spotify:track:3wWavOyZlWKG9J4lCSZHPJ
3297	Southern Girl - Live	153	386160	6	spotify:track:5HWhN7xc4qbhq3DwInaNrT
3298	Look At California - Live	153	663373	7	spotify:track:5Iy8oh8ct6bDPcUJIvUZGP
3299	Feel That You're Feelin' - Live	153	577226	8	spotify:track:7Jr07PGX40jJO3nvmiFwQD
3300	The Look In Your Eyes - Live	153	451040	9	spotify:track:4j52tbi7dYkP09gJrJVO8K
3301	Running Away	153	358693	10	spotify:track:5SPswhPUiRJn7Euba8SCgf
3302	Before I Let Go	153	306160	11	spotify:track:7EIqakFnWSmh4QVU91sY4j
3303	We Need Love To Live	153	288253	12	spotify:track:1P2PVxcnbU21li3SCbqxFl
3304	Reason	153	300973	13	spotify:track:0H4wBdm2ryrjhdj5MDy2TW
3305	Put Your Hands Together	154	247066	1	spotify:track:57yGqjGKJUIzgKWdIZo9aR
3306	Ship Ahoy	154	577066	2	spotify:track:5GTd3l7ShrGaziT7kvnNnj
3307	This Air I Breathe	154	233000	3	spotify:track:7tVyJAzdKekmH0ChZxHhxB
3308	You Got Your Hooks in Me	154	333133	4	spotify:track:6Hv6rGm9aboHovFv49pKiT
3309	For the Love of Money	154	439866	5	spotify:track:3p1JoOEhVkEnTaa4JzTMSk
3310	Now That We Found Love	154	281200	6	spotify:track:0qOkHfSClduvkvGk6fCu8l
3311	Don't Call Me Brother	154	536266	7	spotify:track:6KYPvWM3iS0zGiVV4S5Cx1
3312	People Keep Tellin' Me	154	238533	8	spotify:track:23zcctQcy5iglNa4W93ChD
3313	Put Your Hands Together - Live at Hammersmith Odeon, London, England - December 1973	154	244026	9	spotify:track:3ISqzp0CTv30MnaJGNl6OL
3314	Candy Man	155	270066	1	spotify:track:2STCPBRYYnsGlzmhNktVou
3315	Boys	155	341066	2	spotify:track:2soijtS8qICl1y0tWYU6ZI
3316	Prove It	155	270066	3	spotify:track:6k3mkF39lXxbfzZ8vMqx8w
3317	Jealousy	155	210360	4	spotify:track:24naDSzBhZqGQV1Pn5E49o
3318	You Are My Heaven	155	194640	5	spotify:track:57okjieqRtswvOWAS0h42K
3319	On The Inside	155	237200	6	spotify:track:5HGND3xc98YRPmIzv6bdOO
3320	All Night Long	155	333293	7	spotify:track:62ubbkWAhTOftwgRjHS1UH
3321	Musical Love	155	309173	8	spotify:track:4b1hb8ZBwlqD1CyeggPSXy
3322	Take Five	156	428000	1	spotify:track:5NokPZ0EoOl3t5SHKy2zA3
3323	Summer Wishes, Winter Dreams	156	176026	2	spotify:track:3UnJAuzF35wKmRj8mmIA6x
3324	My Latin Brother	156	408560	3	spotify:track:2WJ6ky68GX7Vk0TqoA920W
3325	No Sooner Said Than Done	156	359226	4	spotify:track:0JzXPEaPwflOrdjmFAyaHc
3326	Full Compass	156	339973	5	spotify:track:4wCdMKD2jbfKRwk3QKyPUd
3327	The Changing World	156	293066	6	spotify:track:0X3ZVN14YFTUGsTdOatYat
3328	Take the "A" Train	156	252960	7	spotify:track:1KpqxJ3OyHpoopQj9H7jzh
3329	Serbian Blue	156	782400	8	spotify:track:1OVL6F9sZIGBqL1dnb4VG0
3330	From Now On	156	141200	9	spotify:track:21CgRVMX7NDLd5bMC4utCj
3331	The Ghetto	157	375920	1	spotify:track:4Zynwm3ZMdQ52YkXSMaQeV
3332	The City: Grass And Concrete / Taxi To Brooklyn / Speak Easy It's A Whiskey Scene	157	631186	2	spotify:track:208KKKYZsUTQiyxplVU909
3333	Tramp And The Young Girl	157	305346	3	spotify:track:0RErPUD1O82VoxSFUtZmkj
3334	Love: Renaissance / Prelude / Pickup / Hotel Backstage	157	657626	4	spotify:track:44T42lsrRNrw7sUMGEGYNk
3335	Song For You	157	523533	5	spotify:track:02hHvBOQCsC37JBB1rc0Mm
3336	The City - Single Version	157	178493	6	spotify:track:7kFyGT5ln0HWUiSq33wDE1
3337	The Ghetto - Single Version	157	282146	7	spotify:track:5LVKFOqZVHLkkF0t8zb4Uo
3338	Smooth Operator	158	298893	1	spotify:track:7pLuEMFougkSHXrPBtNxTR
3339	Your Love Is King	158	219426	2	spotify:track:1j2LuIf7mv15ZVug1Xy5qz
3340	Hang On to Your Love	158	353266	3	spotify:track:6ugI2y8ngkdEVpkv0i3RAD
3341	Frankie's First Affair	158	278306	4	spotify:track:67r1nqpzlKj3x0khmvdFoD
3342	When Am I Going to Make a Living	158	205973	5	spotify:track:5DYD5pUUnf3MT6LafqPqOt
3343	Cherry Pie	158	378733	6	spotify:track:3b0rbuHtD50p1gmfYeKCom
3344	Sally	158	322600	7	spotify:track:4QtH20cJGjVvIcBoliUvAV
3345	I Will Be Your Friend	158	283426	8	spotify:track:29pqGFsm1NPsVHfSrjaDUJ
3346	Why Can't We Live Together	158	328333	9	spotify:track:7pd7fTNMtn4jRv80CSdgcq
3347	Introduction	159	111426	1	spotify:track:3oEprdWhB9D8eRrnI9sGgl
3348	Every Day I Have The Blues	159	102440	2	spotify:track:79kfQGvYnHWKEoO8Y1XWty
3349	How Blue Can You Get?	159	312026	3	spotify:track:6ZfSXhqojBGB8BdRFb96Im
3350	Worry, Worry, Worry	159	592600	4	spotify:track:2v2XfuQHfRO5jQcKlXVAF5
3351	Medley: 3 O'Clock Blues/Darlin' You Know I Love You	159	378000	5	spotify:track:7ldbUD5Ljy3zxdjxcBT5Nt
3352	Sweet Sixteen	159	260959	6	spotify:track:1H4un1VlmHkMJGMB79rZN7
3353	The Thrill Is Gone	159	378906	7	spotify:track:0Z4ABgkKUGXmVwOx7WMWJu
3354	Please Accept My Love	159	187666	8	spotify:track:1Q3igTzvNJwPtumFKdqNqb
3355	Girl U Want	160	177306	1	spotify:track:7aLqagsvH0UhwElKSR8rAj
3356	It's Not Right	160	142360	2	spotify:track:53oJ4mwM9b1MKl6QOBThNv
3357	Whip It	160	161133	3	spotify:track:4sscDOZCkbLSlDqcCgUJnX
3358	Snowball	160	148466	4	spotify:track:7BJIcG07Gjyca9skBOO6CE
3359	Ton O' Luv	160	150226	5	spotify:track:6tK9UqLKtPwVn5V4XAYdp3
3360	Freedom of Choice	160	208560	6	spotify:track:2rqVAj02zaRGkNq6CR97nH
3361	Gates of Steel	160	207973	7	spotify:track:65Z7fRcwn29IKCXpRS7CGk
3362	Cold War	160	151200	8	spotify:track:6sgWlYPMTsQbPxcK8PE3Qs
3363	Don't You Know	160	135360	9	spotify:track:5GVSO4RKShzHO61wdP9N5u
3364	That's Pep!	160	137440	10	spotify:track:3krJQ1FkXrgRjWXgdhtQwW
3365	Mr. B's Ballroom	160	167773	11	spotify:track:0TRUpIO65fIWVkyaCKC5rV
3366	Planet Earth	160	165906	12	spotify:track:4mNZFzb5ZVJ3qfe0I6zCNj
3367	Crushin'	161	289227	1	spotify:track:56CKOoQAA87jhm2ChMEeWP
3368	Protect Yourself / My Nuts	161	249077	2	spotify:track:5cyAIDLRsoLBuflEfmLLa3
3369	Rock Ruling	161	227996	3	spotify:track:6uIYaD5FV35lqcNc44LLwR
3370	Making Noise	161	221596	4	spotify:track:6oOVWjJih3Ejv7Uc6oi4oo
3371	Boys Will Be Boys	161	278543	5	spotify:track:3ebwt1QABilb1R0i7NdrUe
3372	Falling In Love	161	306024	6	spotify:track:1tHRRfnQOBqavCScksqZsw
3373	Fat Boys Dance	161	221884	7	spotify:track:4HeIuC1ds4QMVZejYrd9VT
3374	Wipeout	161	267572	8	spotify:track:08jeicFzph1hv6OwVXPrYw
3375	Between The Sheets	161	265325	9	spotify:track:5VSXx6XvGBoVEUd7zTaJCB
3376	Hell, No!	161	259343	10	spotify:track:0wnd6jvb1LBsoiqmIPQsmT
3377	Freak-a-Zoid	162	485013	1	spotify:track:42UpH9fz5utv8tkvOgh5Qb
3378	Electricity	162	419466	2	spotify:track:1F8n34qAZhAG3aSks1jVxN
3379	Night Rider	162	280800	3	spotify:track:400vzl8t1SPDzrbcYnkYNs
3380	Feels so Good	162	265626	4	spotify:track:5VIG3gS1GL7mWM4jo5tFJW
3381	Wet My Whistle	162	307816	5	spotify:track:0R7pPCjKgC8ZOEUr2E8D9B
3382	No Parking (On the Dance Floor) - 12 Inch Mix	162	479055	6	spotify:track:68ffXcOFU1Qxjo3Wbg5hMB
3383	Slow Jam	162	258133	7	spotify:track:2TJ8nAr1nSMVREQJdwkm4l
3384	Playmates	162	250733	8	spotify:track:5debm8BmcygQHeN3Q7NtSA
3385	Freak-a-Zoid - Extended Remix	162	505832	9	spotify:track:4ImoyNleqR0kpqJlMHoP09
3386	Freak-a-Zoid - Dub Mix	162	554840	10	spotify:track:1QBp7D3i94fsrJEIELlm0v
3387	Freak-a-Zoid - Bonus Beats	162	171733	11	spotify:track:4PjPIeKU3hg6DqXfxxPMAu
3388	Freak-a-Zoid	162	237680	12	spotify:track:1KQoOhsUdiFsH5W8dBJjpL
3389	No Parking (On the Dance Floor) - Radio Mix	162	268640	13	spotify:track:3JLcx6VISiIx3Y30XPQ4K9
3390	Introduction Theme - Live	163	321053	1	spotify:track:0k44yeXlli1cLjpEs6DjM7
3391	Descarga Fania - Live	163	557626	2	spotify:track:1WeyEbCQgbh2YZkDKx6Uud
3392	Anacaona - Live	163	435640	3	spotify:track:0aiInkmMYSIizbx4YIxHHP
3393	Quítate Tú - Live	163	1005333	4	spotify:track:0jyD3X8WnV57qN9Ukss7bO
3394	Dance, Dance, Dance (Yowsah, Yowsah, Yowsah) - 2018 Remaster	164	502240	1	spotify:track:1gHjPSEIKmFE9M8PAV2RyQ
3395	São Paulo - 2018 Remaster	164	303720	2	spotify:track:5q1V1U6FMWAFhBKVOeFG7T
3396	You Can Get By - 2018 Remaster	164	342440	3	spotify:track:0hJzfk3WKjUo24aPVBVU2E
3397	Everybody Dance - 2018 Remaster	164	402693	4	spotify:track:15ifyO8wYntwyXAptfxhKr
3398	Est-Ce Que C'est Chic - 2018 Remaster	164	236080	5	spotify:track:7n1FDOPor5b8hy9njZyLvQ
3399	Falling in Love with You - 2018 Remaster	164	271893	6	spotify:track:4IzVhWZNJzcVb3OAndOXft
3400	Strike up the Band - 2018 Remaster	164	275573	7	spotify:track:5EGgNPul4swMOdILPP4iTs
3401	Carry On	165	265933	1	spotify:track:4bjvLvKovcWqZwDbXT5QQX
3402	Teach Your Children	165	173466	2	spotify:track:29HaKOpeLSYvqdFyEQSRdj
3403	Almost Cut My Hair	165	269173	3	spotify:track:0gCJkpD0RhF2rjiALLHBQL
3404	Helpless	165	217133	4	spotify:track:3gQMqeXqiHFCafaTtFnHF8
3405	Woodstock	165	233773	5	spotify:track:2iqKVzMZpyUVPwxIVaQkhm
3406	Deja Vu	165	252373	6	spotify:track:3O4VF8UYD6CCuhj6d4TQPa
3407	Our House	165	179760	7	spotify:track:2hitsKa8SthKhRJBXUHbIv
3408	4 + 20	165	126640	8	spotify:track:2jZPEeW2ynykb2GkVqpOkJ
3409	Country Girl	165	312133	9	spotify:track:6CCh5pP9RWnYhXK43t1nDC
3410	Everybody I Love You	165	142000	10	spotify:track:7ueMtBY5caVZM5FocVzOv7
3411	Among The Living	166	316866	1	spotify:track:0MuJLuEaZuXX8aMBFCrTE4
3412	Caught In A Mosh	166	300173	2	spotify:track:4fjWStUaP7aXdT0d3YxvPo
3413	I Am The Law	166	354000	3	spotify:track:5DlKTTcN9LNisy6x4QuWzs
3414	Efilnikufesin (N.F.L.)	166	295000	4	spotify:track:0mN2Zf1wnsD0rg2mT4939P
3415	A Skeleton In The Closet	166	329000	5	spotify:track:1oRpKSMCFZq2MVVJF9RjB1
3416	Indians	166	341333	6	spotify:track:1fcyfC1KLSWVCIvALR5AxS
3417	One World	166	355666	7	spotify:track:4OjWB25SNdt9VfaTC5z2Fp
3418	Medley: A.D.I. / Horror Of It All	166	469160	8	spotify:track:12rk57LzvJAguSYIP4SHgZ
3419	Imitation Of Life	166	262800	9	spotify:track:20GAr2lqK1tICtkKCb8uBn
3420	The Vision Of Rassan Medley - : Dedication / Roll On Kirk	167	463866	1	spotify:track:7uYOT0c7CyVghjoL0y752u
3421	Tobacco Road: Tobacco Road / I Have a Dream / Tobacco Road	167	801640	2	spotify:track:0CgBGng2oFQlu8TYso8NE0
3422	Spill The Wine	167	294800	3	spotify:track:0xt7wDpsnwlv4OicsEQi7N
3423	Blues For Memphis Slim Medley - : Birth / Mother Earth / Mr. Charlie / Danish Pastry / Mother Earth	167	802826	4	spotify:track:46HjQMo0VoStyZSAHEVy9L
3424	You're No Stranger	167	184240	5	spotify:track:00D9EDNfqDqq8F3RsJRgje
3425	I Ain't Gonna Eat out My Heart Anymore - Single Version	168	163200	1	spotify:track:52z21PGoOimhAG3dMEtY9F
3426	Good Lovin' - Single Version	168	150906	2	spotify:track:7u6SFPuZQWCYv9fydggbBA
3427	You Better Run - Single Version	168	147666	3	spotify:track:04DOxjxyOrs7r0Ynj3iqYz
3428	Come on Up - Single Version	168	166133	4	spotify:track:71uRtl6Ta8VBosRqG6N6cx
3429	Mustang Sally - Single Version	168	241026	5	spotify:track:61Sc4lwYzUHaiJHQunz3uY
3430	Love Is a Beautiful Thing	168	152200	6	spotify:track:1Ng8VFTVxkX3vhtq0Qv87v
3431	In the Midnight Hour	168	240400	7	spotify:track:3fWVEfRcOutSWmmFn1Dqbl
3432	I've Been Lonely Too Long - Single Version	168	181333	8	spotify:track:4nGe6UWML7cjS5UyHgMfRg
3433	Groovin' - Single Version	168	147466	9	spotify:track:3aSNNi8Xp5WGv7EcQNM7RW
3434	A Girl Like You	168	169466	10	spotify:track:54N8FRJBpTvW1OXzUQduW0
3435	How Can I Be Sure - Single Version	168	173600	11	spotify:track:0hIHj1PYjZ9BgMYEj8BvFk
3436	It's Wonderful	168	136706	12	spotify:track:6jLz0eS09dZ5nV5Q8JamVX
3437	Easy Rollin'	168	175000	13	spotify:track:1V2SrKZ0Cg63yAKUaQLqz8
3438	A Beautiful Morning - Single Version	168	151800	14	spotify:track:3QwbKe0s8TcNclzXAXHeHy
3439	Try Me, I Know We Can Make It	169	1077133	1	spotify:track:1bHq4U7NKCgeIuX0o9geEC
3440	Prelude To Love	169	66773	2	spotify:track:0xKx1XS3olTX6koIgcgSBE
3441	Could It Be Magic	169	315493	3	spotify:track:2MdGWAiYLmGbetrSBANcoD
3442	Wasted	169	309800	4	spotify:track:6XzbHBAhJU4Jw0MvvyqiJM
3443	Come With Me	169	262400	5	spotify:track:4hxU06HmkS6rSUK46yjJn0
3444	This Town Ain't Big Enough For Both Of Us	170	188866	1	spotify:track:1lc3fDoaJfulun0scRNXDJ
3445	Hall Of Mirrors	170	302266	2	spotify:track:5LISRpPG4mWNNQA4XXMDtO
3446	Trust In Me	170	246093	3	spotify:track:3I3A3OSbPD04tzkc62iYqq
3447	This Wheel's On Fire	170	315760	4	spotify:track:1PxG1pJavirtKvERWwAQ1E
3448	Strange Fruit	170	231333	5	spotify:track:1sfhyoRYk69hjJos82PX0I
3449	You're Lost Little Girl	170	178213	6	spotify:track:2ZkfXu8l1GonrVfNgS23ZV
3450	The Passenger	170	309306	7	spotify:track:6EZDbjz2X5XzgIZCtbsrXh
3451	Gun	170	306306	8	spotify:track:3t8uFsxO5knbxyR8OWK7k5
3452	Sea Breezes	170	254906	9	spotify:track:21ibWIkauLuICJFuO8qf53
3453	Little Johnny Jewel	170	306946	10	spotify:track:66fDzyccWCQA4TWlgUWCWw
3454	She Cracked	170	187453	11	spotify:track:2eXzZVGULviXzMGFwAxu46
3455	Song From The Edge Of The World	170	225266	12	spotify:track:7dmjitxt5hgoALnc7Q3viY
3456	This Wheel's On Fire - Incendiary Mix	170	447480	13	spotify:track:4GVU9KJQEQaSX8Tcxqahkq
3457	The Passenger - Loco-Motion Mix	170	485307	14	spotify:track:3C7bG20iFcrvGjeNxQ8mqm
3458	Blooze	171	230493	1	spotify:track:2Om0TouVcvH7P58fjynJ2z
3459	Hot Rod	171	163600	2	spotify:track:5DR7kwICJYOrEbGlxB0LX4
3460	Simple Man	171	262906	3	spotify:track:5QOxisWN0KRKIfOUXBOeOg
3461	Shot In The Dark	171	213066	4	spotify:track:3fvkZI7pQVNL24r46m5Q0W
3462	Hollywood	171	181000	5	spotify:track:5b5Mr22yzussd3kWLQPvym
3463	Life Sentence	171	189200	6	spotify:track:2i09PksSBs1zqYIyJ9Jn40
3464	Long Way Home	171	284426	7	spotify:track:3rSfHaPKDIPTXX8sE9giZM
3465	Can't Hold Back	171	241773	8	spotify:track:0AH3bJTimPd5Z1sLJdnl0o
3466	Texas	171	216093	9	spotify:track:385Rga2gDIf26CmXImG7Ug
3467	Hands Off	171	325533	10	spotify:track:7lsm2ytKjTaT3gaSKrGNhT
3468	I Want You	172	274693	1	spotify:track:4643yHVr2Y0c4uKO24Vigi
3469	Come Live With Me Angel	172	390173	2	spotify:track:4fSjTqnaQP4FBcO8NLOFc9
3470	After The Dance - Instrumental	172	263933	3	spotify:track:3dY5LWWS0gqGPB81JY2fRh
3471	Feel All My Love Inside	172	202733	4	spotify:track:3pdO5vuJnwehI1o17LxedC
3472	I Wanna Be Where You Are	172	77266	5	spotify:track:7mlksJCrTCLbRlgxfnXoIB
3473	I Want You - Intro Jam 1	172	19693	6	spotify:track:0oBpSL5S8ZRVuJGke5segs
3474	All The Way Around	172	230373	7	spotify:track:6aam9dSgFwe9qw395lMnzb
3475	Since I Had You	172	244800	8	spotify:track:4OglbWNxGgmKMOdgFvqvWj
3476	Soon I'll Be Loving You Again	172	194093	9	spotify:track:3YRV2UJyoJRDMbEwJFQ81l
3477	I Want You - Intro Jam 2	172	100773	10	spotify:track:68xNqASHsgCcddKHrgGobM
3478	After The Dance	172	279760	11	spotify:track:0m6i2lZNgIV4OOyEkFlKFz
3479	Intro (To Heartbeat)	173	28426	1	spotify:track:299qxLFG2QMY59C4KV3Qua
3480	Heartbeat	173	256306	2	spotify:track:75Pszr9mIJFrSWvlnu6Kdy
3481	Really Want to Know You - Remastered Version	173	262706	3	spotify:track:672L8kwlwJu5w8D6MWyvDC
3482	Got the Feelin'	173	222040	4	spotify:track:1UZOxGh3m62hgiVGdpwNrj
3483	Love Is a Rose	173	270493	5	spotify:track:0BTbUcmvyqjuy6uiSFAQLh
3484	The Right Place	173	213600	6	spotify:track:09GDl9oyyTKxWiYy2kxjBa
3485	More Than a Heartache	173	272760	7	spotify:track:5pshriQjZUa2zqLfv0pQTN
3486	Close to You	173	246466	8	spotify:track:2RjCi2cZrwtkURjOuBqWf6
3487	Comin' Apart	173	232293	9	spotify:track:1ORy4HAUGi8Em4YavieDzT
3488	Positive Feeling	173	220906	10	spotify:track:0MtZ8G4RQuJAqpxKiRfZVs
3489	Main Title And First Victim - From "Jaws" Soundtrack	174	206506	1	spotify:track:1g10rYqM3jJQsWRnXCFcx7
3490	The Empty Raft	174	81333	2	spotify:track:2Eg4spmeuQBWkcrTiddaNu
3491	The Pier Incident	174	142173	3	spotify:track:4dTuygtcB9SMc2ubfivZ2s
3492	The Shark Cage Fugue - From "Jaws" Soundtrack	174	118493	4	spotify:track:2RGrC7l8W6Y6MPDdOSMLbU
3493	Shark Attack - From "Jaws" Soundtrack	174	76666	5	spotify:track:4fMHYXLvnC0MFllGGL0Gq7
3494	Ben Gardner's Boat	174	210000	6	spotify:track:6R40e6TlPR0jWUaDxdqgb3
3495	Montage - From "Jaws" Soundtrack	174	89000	7	spotify:track:5voz3XEVORADMcq3OUnI5W
3496	Father And Son - From "Jaws" Soundtrack	174	221826	8	spotify:track:6aGNPlCP5b4zj9StfomzhB
3497	Into The Estuary	174	169173	9	spotify:track:40wEfl0n2zSSxts30G56Vy
3498	Out To Sea - From "Jaws" Soundtrack	174	178666	10	spotify:track:3egtRngx1MDQa17Wzkgobh
3499	Man Against Beast	174	332160	11	spotify:track:2xbCYvOxPVF7G5e4OBEAru
3500	Quint's Tale	174	159160	12	spotify:track:125SqOuXyUvlkrow12YJD3
3501	Brody Panics	174	69333	13	spotify:track:1D24uHHcMdYItlLLFxW5Pw
3502	Barrel Off Starboard	174	89840	14	spotify:track:7bmIk9Kk27x68wbQ67s3N8
3503	The Great Shark Chase - From "Jaws" Soundtrack	174	207333	15	spotify:track:6yhx5oKhHiT4NTHeUj7lI9
3504	Three Barrels Under	174	124000	16	spotify:track:5FzXIkeGhfqbtufzOr5REI
3505	Between Attacks - From "Jaws" Soundtrack	174	125333	17	spotify:track:3ef0qvnlvZTLV6Moa7PcXo
3506	The Shark Approaches - From "Jaws" Soundtrack	174	159333	18	spotify:track:74VpSViAQBXXTiB53OmhZy
3507	Blown To Bits	174	182333	19	spotify:track:48QDjqthZau2LplmFhWGyF
3508	End Titles - From "Jaws" Soundtrack	174	112333	20	spotify:track:7Jf7C3TprW2b8XNHu31af4
3509	Honky Tonk Women - With Intro / Set 1 / Live At The Fillmore East/1970	175	297213	1	spotify:track:5nsmZpXnYIlVSjxa6diCM1
3510	She Came In Through The Bathroom Window - With Outro / Live At The Fillmore East/1970	175	197960	2	spotify:track:4mqT6u3tY0VaQViPt5rUsa
3511	The Weight - Live At The Fillmore East/1970	175	357133	3	spotify:track:0BHgI8hJGwqc6YDasoNcSw
3512	Sticks And Stones - Live At The Fillmore East/1970	175	166333	4	spotify:track:42eLA3ghHs4NCmGaWrZUHz
3513	Bird On The Wire - Live At The Fillmore East/1970	175	391000	5	spotify:track:6nAaNHrXidcGaTDauVOe1H
3514	Cry Me A River - Live At The Fillmore East/1970	175	245173	6	spotify:track:2AKpAF2xHPCvwdLFOTprs4
3515	Superstar - Set 1 / Live At Santa Monica Civic Auditorium/1970	175	299013	7	spotify:track:76Dswd9N5rK0tMWkVpQZPL
3516	Feelin' Alright - Live At The Fillmore East/1970	175	347493	8	spotify:track:37rfNf1D4jkmFw1xSmMDeW
3517	Something - Set 1 / Live At The Fillmore East/3/28/70	175	333413	9	spotify:track:4bBdyKdDeAcsk9ljhK8wIP
3518	Darling Be Home Soon - Live At Fillmore East/1970	175	347773	10	spotify:track:4ptNYxc5uHOuKqFzjWjfHN
3519	Let It Be - Live Santa Monica Civic/1970	175	220320	11	spotify:track:0Q3KXY6YLvayui3FBULG4R
3520	Further On Up The Road - Live At Fillmore East/1970	175	240373	12	spotify:track:4XJclQJoUrJIAiaTqFbMyf
3521	Let's Go Get Stoned - With Intro / Live At The Fillmore East/1970	175	485813	1	spotify:track:3n45E4RoeRBd7U7OEsxUwn
3522	Space Captain - Live At The Fillmore East/1970	175	320693	2	spotify:track:4POXMOKU4eE7oQYInjOhA8
3523	Hummingbird - Set 2 / Live At The Fillmore East/3/27/70	175	248920	3	spotify:track:7d43Wh4nVrvIKojxhkYilE
3524	Dixie Lullaby - Set 2 / Live At The Fillmore East/1970	175	178853	4	spotify:track:4fqWqyPA8OfyZ644rYVQrN
3525	The Letter - Live At The Fillmore East/1970	175	272973	5	spotify:track:4evj46yiEKdN8gr6K0e7PX
3526	Delta Lady - Set 2 / Live At The Fillmore East/1970	175	423680	6	spotify:track:2YtthIPgAuxsvQdCWyMmFh
3527	Give Peace A Chance - With Outro / Live At The Fillmore East/1970	175	286480	7	spotify:track:16Z0eHYK3deoWX7897G6JI
3528	Blue Medley: I'll Drown In My Own Tears/ When Something Is Wrong With My Baby/ I've Been Loving You Too Long - Live At The Fillmore East/1970	175	757586	8	spotify:track:3qtZExbOuwbxqHL47G4Ph9
3529	With A Little Help From My Friends - Live At Fillmore East/1970	175	520026	9	spotify:track:5jOHCd2SfcVzpMCwphLADb
3530	Girl From The North Country - Live At The Fillmore East/1970	175	159840	10	spotify:track:08gzpwfFLc7PArhPZV8jBk
3531	Warm-Up Jam Including Under My Thumb - Single Version	175	345080	11	spotify:track:6ycDdeK7ZkilhZUyzPIY4I
3532	The Letter - Single Version Stereo Mix	175	250306	12	spotify:track:7jwz36C3cRzKutse6Nr9zd
3533	Space Captain - Studio Single Version Stereo Mix	175	269893	13	spotify:track:1pOzjN4gqL5crivkjcJJ5a
3534	The Ballad Of Mad Dogs And Englishmen	175	239666	14	spotify:track:267wC14DqoVf52tpS01qvl
3535	Four Day Creep - Live At The Fillmore East /1971 / 2nd Show	346	226040	1	spotify:track:5blDvhafrjCkT3MCOKm8A2
3536	I'm Ready - Live At The Fillmore East /1971 / 1st Show	346	510533	2	spotify:track:3gG1vhYnAYOLYiSDdXh3sQ
3537	Stone Cold Fever - Live At The Fillmore East /1971 / 1st Show	346	380626	3	spotify:track:4dhvX2T6bhiPCkaWQK1SiZ
3538	I Walk On Gilded Splinters - Live At The Fillmore East/1971	346	1408173	4	spotify:track:56rio8L1RjeTRvPTn6llmE
3539	Rollin' Stone - Live At The Fillmore East/1971	346	970000	5	spotify:track:04ougkTbAk01zPCzC9Jiry
3540	Hallelujah (I Love Her So) - Live At The Fillmore East /1971 / 2nd Show	346	310450	6	spotify:track:3b6ae7yraKicy4TdJe6Z5T
3541	I Don't Need No Doctor - Live At The Fillmore East/1971	346	555226	7	spotify:track:5OCe1atAJIQ40FRPYsLEKf
3542	Cinco De Mayo	347	248800	1	spotify:track:6kbQgZ1YTIZTR5cosYuOeV
3543	Outlaw	347	304493	2	spotify:track:62lO1qGOBiNSdFCc3VlqQ3
3544	The Jungle: Beware It's A Jungle Out There/The Street Of Walls/The Street Of Lights/The Street Of Now	347	530106	3	spotify:track:6ybri59CoGmG6OCq5uB969
3545	Just Because	347	252666	4	spotify:track:4yBNN8a44JIJNpIm2JZMCE
3546	Baby It's Cold Outside	347	357800	5	spotify:track:6BbyvZouBcBxKOcAEnXpvq
3547	I'm About Somebody	347	334066	6	spotify:track:37Yw9qcfaREYW3oWdXN2cw
3548	You Got The Power	347	343866	7	spotify:track:2BSJEjSLlkuKfeI9BoPBg6
3549	Cinco De Mayo - Extended Version	347	448026	8	spotify:track:572iaoOaDhFgb9nwiyKP4F
3550	Dream Police	348	233133	1	spotify:track:1YiAY1oCmkFjUabQL9gos4
3551	Way of the World	348	215626	2	spotify:track:3zr5sJ17UYejNzt6KsKMLC
3552	The House Is Rockin' (With Domestic Problems)	348	310360	3	spotify:track:7qVYQgZfZ9QVmm7RykKKcD
3553	Gonna Raise Hell	348	560066	4	spotify:track:7He4Taav43HuHhRl4nfd9j
3554	I'll Be with You Tonight	348	232333	5	spotify:track:5WDP9Igbj6n5iOjLdyOQTZ
3555	Voices	348	261066	6	spotify:track:3ao7thlAYIVPJw3e1u51PE
3556	Writing on the Wall	348	205866	7	spotify:track:5YWXJekwKir0ZDxa3V9OE1
3557	I Know What I Want	348	268093	8	spotify:track:39jEzrSYJDZbVtdURJMdjK
3558	Need Your Love	348	457360	9	spotify:track:30bYKcsjRWRGqERYAnI37b
3559	Most Anything You Want	349	222160	1	spotify:track:6qSVJPiAzPDfCn63hXmBIG
3560	Flowers and Beads	349	189026	2	spotify:track:69s11db3tWSmahivhUPnTX
3561	My Mirage	349	293040	3	spotify:track:5Wi8Fl7OpiNvcESROwCYEg
3562	Termination	349	171733	4	spotify:track:2XAYP8pJ25m3ZmO0CjR72h
3563	Are You Happy	349	270800	5	spotify:track:2w54IE3wgj5XLoklpnFgJ8
3564	In-A-Gadda-Da-Vida - 2006 Remaster Full-Length	349	1024133	6	spotify:track:1exUq8aG2OMbSeZeTwz06k
3565	A New Kind of Country	350	250853	1	spotify:track:3YxGfl5b6D1o9WlwrIYlw2
3566	Night City	350	176440	2	spotify:track:5p9HPVUM53MeMdMEak1K9x
3567	Homecoming	350	182360	3	spotify:track:03A9hfSJ3AoZuYpYwM2t3Y
3568	Mercy Maybe Mercy	350	200666	4	spotify:track:3Fd6Hr0orEHnfArGYRKA3A
3569	Zim	350	239893	5	spotify:track:0lBNrHFpd0ctKBsHirV5by
3570	Opus 5	350	559546	6	spotify:track:3PKzqQEK2FPQ6Vvls3Rde1
3571	Star Children	350	201386	7	spotify:track:5iam9Fb6x56iYYPYbiCFAz
3572	Beat Me, Daddy, Seven to the Bar	350	372426	8	spotify:track:3JjczoOTxgGp47NNrlKolt
3573	Milo's Theme	350	264000	9	spotify:track:7HqwcwhWiIjdTh1SVLeZBD
3574	Seven Up	350	239453	10	spotify:track:5RCMlzDmhcml41nl4v2CzH
3575	The Tihai	350	524346	11	spotify:track:49UTqisUhzxfqRgwZ9jIs8
3576	Zim - Alternate Take	350	240320	12	spotify:track:6IPv0twMJJ2baj2WF2ghhD
3577	I Remember Clifford	350	325640	13	spotify:track:7Ev8oAXBr35wKPmskdkHcy
3578	Rasty	350	172493	14	spotify:track:5MBxkl2xpB2q5nmcwQBvG9
3579	Day's Dawning	351	235160	1	spotify:track:5mhdg5cUBVJEpxD33YkLbw
3580	Show Me The Way	351	243266	2	spotify:track:6BD1X1PeV5UzYUdiVaD2yL
3581	One More Time	351	200533	3	spotify:track:5F4jVYSplVphnxCOKVt0Gq
3582	The Crying Clown	351	244666	4	spotify:track:6IFsmaEnYlk6MF4bvU7Z8A
3583	Fanfare	351	212106	5	spotify:track:0dVFeLTAWgyjrg1fh2ozoV
3584	Nowhere's Too Far (For My Baby)	351	259493	6	spotify:track:5E5cjKPJQIzdFOTd3A6hOs
3585	Nassau/Baby I Love Your Way - Medley	351	350840	7	spotify:track:2GLqM8YTSdpaQ58NrMe274
3586	Apple Of Your Eye	351	222266	8	spotify:track:0dRtV9b2YdxgatV9qPJpxy
3587	Penny For Your Thoughts	351	93226	9	spotify:track:3yPD8CtqMxCjL7cbDVd9hK
3588	(I'll Give You) Money	351	279440	10	spotify:track:4snIk8AYQnWOLb1Uxdd5SI
3589	Hard Times	352	234266	1	spotify:track:6y6alMwstF6zagJ70v64hM
3590	Rock Box	352	330933	2	spotify:track:1GhrWTBhCvhtsVZJMN6LAl
3591	Jam-Master Jay	352	190853	3	spotify:track:72qvOXbdp4t8QhihaqwQtR
3592	Hollis Crew (Krush-Groove 2)	352	193306	4	spotify:track:4z8dXAo9K3iGn3WarzSSPS
3593	Sucker M.C.'s (Krush-Groove 1)	352	189880	5	spotify:track:3VzzWGrxsvUrk2jSpdWoqx
3594	It's Like That	352	290000	6	spotify:track:6EkU49LlNwhSu2rRwDTXfO
3595	Wake Up	352	331733	7	spotify:track:2NA31jII5RRyoa65Uicvw3
3596	30 Days	352	348693	8	spotify:track:5YcFfMF4NMfmQOT4qD4uoc
3597	Jay's Game	352	260133	9	spotify:track:66k5PseKfq9BL6I0O86OtB
3598	Full of Fire	353	372626	1	spotify:track:0WttIjTeQtigU0UD02ZCUw
3599	Attention to My Baby	353	261066	2	spotify:track:662oFEf4QLqUqY9bCvSypE
3600	Somewhere There's a Love	353	256800	3	spotify:track:2ZnxFUokGvIsW0D4gPWPmn
3601	Some Things Never Change	353	288506	4	spotify:track:7HyNNNX6jABaWFMBXhrTzy
3602	Make That Move	353	369906	5	spotify:track:1J8BojSSdrfotC7IGyIvt4
3603	This Is for the Lover in You	353	304000	6	spotify:track:78zalqlTeKYmNiQBXANKDl
3604	Work It Out	353	259733	7	spotify:track:4Fu53SvImriT3uynPP3Hdb
3605	Pop Along Kid	353	280973	8	spotify:track:6lskwYJiju1WyzWRO8N8T3
3606	Make That Move - Radio	353	225106	9	spotify:track:5NgYDeVSzVqW4KFiOMplRY
3607	Full of Fire - Radio	353	213560	10	spotify:track:0nDW1r7dDZ9LD4oTW1zHlK
3608	Make That Move - Remix	353	313773	11	spotify:track:3csuA6iqMronzemWgkKloA
3609	Don't You Get So Mad	354	231173	1	spotify:track:3TMzIOvIUDFKmHVx4cP0x2
3610	We're Going All The Way	354	257666	2	spotify:track:3pQHFUuU8soLNDB2vtnoSR
3611	Stay With Me Tonight	354	298533	3	spotify:track:0AXvsShBtCtMVx1kRPOu6T
3612	Greatest Love Affair	354	304800	4	spotify:track:50Lw5VZjOiPD3bg46EEzGg
3613	Plane Love	354	244693	5	spotify:track:33QtClWzHsc8hiDEe7NXXi
3614	Other Side Of The Coin	354	221040	6	spotify:track:1gIG3b0MRj4osiOCC7aKlC
3615	I'll Make Believe	354	308693	7	spotify:track:2e0B8VTefNOfOpF0cuwxA9
3616	When Are You Comin Back	354	245733	8	spotify:track:1uZ3kuYnG1YZGsDgd2G9K6
3617	Forever Mine	354	323466	9	spotify:track:5AcIBfuV6Syj2kyxwHgCnf
3618	Two Wrongs Don't Make A Right	354	284773	10	spotify:track:6nuBYjYaKwp8SIkyb5ZzAQ
3619	Till You Get Enough - Remastered Version	355	310266	1	spotify:track:7FT0LCs1xQfx6E05e62MZ9
3620	I'm a Midnight Mover - Remastered Version	355	131546	2	spotify:track:3ZyyTi82sfrE2ZpS3VeJ1M
3621	Light My Fire - Remastered Version	355	223746	3	spotify:track:6WXoQ2dd7mfUbs2ErLaPvy
3622	Comment (If All Men Are Truly Brothers) - Remastered Version	355	359013	4	spotify:track:1BA19ZQX2aT7m5lA5hBKNH
3623	Everyday People (In the Jungle) - Remastered Version	355	156679	5	spotify:track:0tPKhNwbnHKHEz351EuIgm
3624	Must Be Your Thing - Remastered Version	355	223399	6	spotify:track:6rFLL3NLOZb4ep8wScSWlo
3625	Love Land - Remastered Version	355	185533	7	spotify:track:6G4tqjj3shZR1gz0muCsPs
3626	Oh Happy Gabe (Sometimes Blue) - Remastered Version	355	176266	8	spotify:track:5fZEV6hYbiFMcLuZZJ3dpJ
3627	Twenty-Five Miles - Remastered Version	355	186346	9	spotify:track:6V91U4IoINhXlt5fdDSDZP
3628	The Joker (On a Trip Thru the Jungle) - Remastered Version	355	187373	10	spotify:track:3JKlXEH2w5n6nPDbn3q6xV
3629	Radio Spot - In the Jungle, Babe	355	62733	11	spotify:track:4N68kJdBhGp7F9IZlgUJ1x
3630	Till You Get Enough - Remastered Mono Single Version	355	230853	12	spotify:track:6sPnGL2qf0AqT2SN0vhLmV
3631	Light My Fire - Remastered Mono Single Version	355	223946	13	spotify:track:4K9x0Bj8gVqJmhtT6Va2xr
3632	Comment (If All Men Are Truly Brothers) - Remastered Mono Single Version	355	276093	14	spotify:track:5gBgTv9DjJsrVz8M5awh0h
3633	Must Be Your Thing - Remastered Mono Single Version	355	217666	15	spotify:track:61tfZijejwBJ3jIHdl5bgI
3634	Love Land - Remastered Mono Single Version	355	189426	16	spotify:track:3o3o6WmJpl3t7D3yAVstmc
3635	Comment (If All Men Are Truly Brothers) - 1970 Mono Version	355	488573	17	spotify:track:2tvneeaU31HbCor0t8mZnE
3636	I'm so Tired	355	811639	18	spotify:track:6cG17hPVeHDLIUttoDURVb
3637	Tell Me Why	356	177120	1	spotify:track:6wfGrC6Vr7xBWxiEoIjvUh
3638	After the Gold Rush	356	225973	2	spotify:track:2anPa0qaFG1Nf0swkpfOQd
3639	Only Love Can Break Your Heart	356	188600	3	spotify:track:4nRhbx8L4ifnMKaE5jSQGR
3640	Southern Man	356	331173	4	spotify:track:4Lz33Oi0UQ6SECXsT80Tx2
3641	Till the Morning Comes	356	76066	5	spotify:track:1dw3kGhWYMNP4tYMWHvLxg
3642	Oh, Lonesome Me	356	228880	6	spotify:track:6H3E8pddj7pOMnkXHASoO6
3643	Don't Let It Bring You Down	356	176866	7	spotify:track:4rylUVBblCUdmtDuYql6oI
3644	Birds	356	153373	8	spotify:track:1LZQZxE7MTmNLvpPkAAXJT
3645	When You Dance I Can Really Love	356	225480	9	spotify:track:7kB64jHL9hdOvlxsaf03R7
3646	I Believe in You	356	207386	10	spotify:track:0XPT1KDaWBYVa7i6A2E2u3
3647	Cripple Creek Ferry	356	93960	11	spotify:track:4CCLOGJX19mWFBDHSnifm9
3648	The Cisco Kid	357	267693	1	spotify:track:6lhwPJMbtpqdNnEXNM0jX8
3649	Where Was You At	357	203400	2	spotify:track:2pRkqOXRGVvNf54zoqGx5D
3650	City, Country, City	357	804173	3	spotify:track:2RWS2btML7g1ZgqWPWGu7b
3651	Four Cornered Room	357	514960	4	spotify:track:2VjMmbpQ8uLNOxeDD89wil
3652	The World Is A Ghetto	357	617866	5	spotify:track:2oMXvopfDLGmXaUK0LkkEy
3653	Beetles In The Bog	357	232706	6	spotify:track:4zlfdVHN3Etu2q61JF51gm
3654	Marbles - Live	358	258160	1	spotify:track:7gQB19KKaCzpZ5XC2tk3nu
3655	Lava - Live	358	130240	2	spotify:track:2efeo9gDgddIxP5T6dtwU4
3656	Evil Ways - Live	358	396400	3	spotify:track:6zLdN89zApN2lsEtAQEsag
3657	Faith Interlude - Live	358	132626	4	spotify:track:4c4jLrYwabfNkVWbEbAc8B
3658	Them Changes - Live	358	349733	5	spotify:track:4qlUoygv6iU0qfohR6ipPU
3659	Free Form Funkafide Filth - Live	358	1493066	6	spotify:track:3UhG2uRGI8fTqwwItNlZSU
3660	Boogie Oogie Oogie - Remastered 2004	359	338320	1	spotify:track:07NrCEN3egNvw8td2LxqJO
3661	This Love Of Ours	359	213266	2	spotify:track:2PRAvJnWzIFtP97b0XN4FN
3662	Distant	359	260053	3	spotify:track:6fsAhTL8kNREO6TubIdZ9F
3663	World Spin	359	242000	4	spotify:track:7lTJO95ldKZYGV8dwCZxwo
3664	Disco Dancin' - 2004 - Remastered	359	210493	5	spotify:track:0fO7yI17D2Kk2atygUJTxK
3665	You	359	202666	6	spotify:track:7c60ZlUVvg5R0HXHB2R3gX
3666	If We Loved	359	266200	7	spotify:track:42l11XUu7HO6zOh40hVPZC
3667	Sky High	359	307040	8	spotify:track:4DRXsujReutNX0pAmIpppo
3668	You're In Good Hands	359	235400	9	spotify:track:6qH9Tz6wL2hZ3AuIUSZe8J
3669	Boogie Oogie Oogie	359	245173	10	spotify:track:1Rl9GHgsflyIVqBRyO45Zo
3670	Disco Dancin' - 12" Single Edit	359	369053	11	spotify:track:0wXGjz2oEARw3aG04Een6W
3671	Boogie Oogie Oogie - New Boogie Mix	359	450186	12	spotify:track:2S3ybhk1kmCXm0e9o0YeNb
3672	Winelight	360	452573	1	spotify:track:0nN2D5xwVtLrgUw0TIQ5CI
3673	Let It Flow (For "DR. J")	360	350600	2	spotify:track:6jY7UcNWda03nyJ5XiqlYt
3674	In the Name of Love	360	326773	3	spotify:track:6P5qgQNPHQdknn3tA7bmsN
3675	Take Me There	360	374106	4	spotify:track:1DfFZ6xnxO4GHPK3wCWERi
3676	Just the Two of Us	360	443773	5	spotify:track:5fdNHVZHbWB1AaXk4RBGVD
3677	Make Me a Memory	360	392026	6	spotify:track:21qeCg7VQMQ6nVBCVFeoKD
3678	Had To Cry Today	361	528560	1	spotify:track:5zNCFqfUZ0qsrnDRjcJLdW
3679	Can't Find My Way Home	361	196133	2	spotify:track:3VyJGPYr2DF9gdBNosSao4
3680	Well All Right	361	267000	3	spotify:track:3p0dqXyYn3ZpJmPiUpisCl
3681	Presence Of The Lord	361	289133	4	spotify:track:2XwjAUCmhAa6XccL9p0lGM
3682	Sea Of Joy	361	322226	5	spotify:track:1dDzeqgr8IObq1J8pj2qA9
3683	Do What You Like	361	918466	6	spotify:track:6B10ohjFg52SZER8MQEp2E
3684	For the Good Times	362	231906	1	spotify:track:4irc5hvP8btQJXJGuBpFji
3685	Marry Me	362	157200	2	spotify:track:4IWThZcIZ0SO8XCOkRep5L
3686	Georgia Sunshine	362	182160	3	spotify:track:0OhKNXBoWrapb8BNr6aWNr
3687	Invisible Tears	362	132333	4	spotify:track:2zoRWec8nYXUnuffOtGjUR
3688	Raindrops Keep Fallin' on My Head	362	165706	5	spotify:track:5yQJR4sNo3g8BG2zgHKFKJ
3689	A Perfect Mountain	362	168466	6	spotify:track:0ePdqitIgARTVrPxq0dW0u
3690	Raining in My Heart	362	159733	7	spotify:track:5howQgjvU19mXCVCFRQyvD
3691	She's a Little Bit of Country	362	155666	8	spotify:track:6juSnJe9FHWEljsjhoZ4Gl
3692	For Once in My Life	362	139000	9	spotify:track:6Q3WnV9QjwkXVP3SmjsIyc
3693	Sweetheart	362	160933	10	spotify:track:75AkPGVeAHlockrkzqSBb1
3694	Ai No Corrida	363	386360	1	spotify:track:0SzAKZYTUvDLqlPgllEb3N
3695	The Dude	363	337600	2	spotify:track:0YeMZY4x8FbVIvFmaphMp6
3696	Just Once	363	273333	3	spotify:track:62YP3NEB4FVPJ90XcgJQKS
3697	Betcha Wouldn't Hurt Me - Extended Version	363	226766	4	spotify:track:4WvU1mDTPDRJ349kqLK9OH
3698	Something Special	363	237865	5	spotify:track:6C1WGhMEFYL1M0ERmfzUI7
3699	Razzamatazz	363	255800	6	spotify:track:3QVrHveKwEblqYStYJbNop
3700	One Hundred Ways	363	259040	7	spotify:track:0Yp603BgzIKDDcSUBrYYba
3701	Velas	363	245693	8	spotify:track:5N85KoYje6CK7OhtdCkNTA
3702	Turn On The Action	363	259106	9	spotify:track:30kTlqX4Kx2I7rQtqtPsSU
3703	Kissin' Cousins	364	475466	1	spotify:track:421jr3i8SMlKfHPpPGr0mn
3704	Barbara	364	459200	2	spotify:track:75p1KfXhwQtJF6MUt49Ppt
3705	Dameron's Dance	364	320773	3	spotify:track:4sLTNAzneQOJueemVRcZKU
3706	The Sophisticated Hippie	364	425946	4	spotify:track:7g3sxFIxv81TGXbooQfWTb
3707	Adjustment	364	320106	5	spotify:track:3jgA65fIRGnYlNIByLuyQH
3708	Mysticism	364	488746	6	spotify:track:4wxQhy8i8ZS2kF842c9PDa
3709	Evil	365	300813	1	spotify:track:0IFbyuvJUXroM8UkZ2Pnsk
3710	Keep Your Head to the Sky	365	311080	2	spotify:track:0iPy1MWCrOT7SjGs14zSSv
3711	Build Your Nest	365	198933	3	spotify:track:4IMN8BxmU5Gbpz68Xw9lFw
3712	The World's a Masquerade	365	288813	4	spotify:track:4ubTNpKJ6W5uSHkN9FBEm4
3713	Clover	365	281040	5	spotify:track:3P85D6JgjSZ3GdOtO1bnzg
3714	Zanzibar	365	817653	6	spotify:track:3a6vIRcMW3qJY1Z9vWLat8
3715	Song For My Father	366	438280	1	spotify:track:1CDBaGlisZlOJzvx88lL8A
3716	The Natives Are Restless Tonight - Rudy Van Gelder Edition/1999 Digital Remaster	366	370626	2	spotify:track:76gFB8HutMskfRvOR2jcd9
3717	Calcutta Cutie - Rudy Van Gelder Edition/1999 Digital Remaster	366	511026	3	spotify:track:1R32Fy8FO0sn3o7AOLxliA
3718	Que Pasa - Rudy Van Gelder Edition/1999 Digital Remaster	366	467706	4	spotify:track:5L9FnDSIEc8WaqLZjgYZda
3719	The Kicker - Rudy Van Gelder Edition/1999 Digital Remaster	366	326786	5	spotify:track:03GekuTeEoSNyD3Ggg1xZD
3720	Lonely Woman - Remastered 1999/Rudy Van Gelder Edition	366	422933	6	spotify:track:23VGdNEZzKVCpIazC3ZHK6
3721	Sanctimonious Sam - Rudy Van Gelder Edition/1999 Digital Remaster	366	235106	7	spotify:track:7u4x1YQHcNrtyxPGLD1uOE
3722	Que Pasa - Trio Version; Rudy Van Gelder Edition; 1999 Remaster	366	338280	8	spotify:track:0XYtgwFlc7Xtby9uXDL3I8
3723	Sighin' And Cryin' - Rudy Van Gelder Edition/1999 Digital Remaster	366	325600	9	spotify:track:5CvfVzXQoz56KtJO1hBMlX
3724	Silver Treads Among The Soul - Rudy Van Gelder Edition/1999 Digital Remaster	366	233160	10	spotify:track:6FE26T85zZBM28g1klBYxf
3725	You Belong to Me	367	232666	1	spotify:track:3pErM4EiWKf3k8KU3jjbXn
3726	Boys In The Trees	367	195040	2	spotify:track:4iCm0VeyMfYptblIbWrX3Q
3727	Back Down to Earth	367	189093	3	spotify:track:6yrxGhTAmFttyujYsfRHIL
3728	Devoted to You	367	150040	4	spotify:track:6b7l3YWWWUcxJZVETEKBVc
3729	De Bat (Fly in Me Face)	367	150026	5	spotify:track:6uyVuZicaEjl6RPSB69dn7
3730	Haunting	367	149773	6	spotify:track:0iRo2q7mB6rW2hF9Quc7Bh
3731	Tranquillo (Melt My Heart)	367	243826	7	spotify:track:0i8s3YyZjFcJoV41GxZjhg
3732	You're the One	367	220000	8	spotify:track:6vmpXxwR1uOT6cYoCVds2t
3733	In a Small Moment	367	190066	9	spotify:track:78HHmYsWWwbzCSuhCLewDL
3734	One Man Woman	367	221266	10	spotify:track:5ZU9p8lXgfiOSStky3mIE1
3735	For Old Times Sake	367	221773	11	spotify:track:0QSBlljCr2MXFtTu4AtVaJ
3736	I'm The Man - Censored Radio Version	368	183840	1	spotify:track:164JSldMuVmW56QvJdNuEu
3737	I'm The Man - Def Uncensored Version	368	184200	2	spotify:track:5DWhOMe5c3COEKXl77AEwH
3738	Sabbath Bloody Sabbath	368	348026	3	spotify:track:40c9UBZr74ZTSRgyFcCxTy
3739	I'm The Man - Extremely Def Ill Uncensored Version	368	279533	4	spotify:track:5DwCK0vBSkcZv9OOldeDhp
3740	Caught In A Mosh - Live	368	334088	5	spotify:track:01nNJ2JguBWk58l6koX70m
3741	I Am The Law	368	349000	6	spotify:track:3ecTpvOkKIxbG6yJXk1GeY
3742	Mirror People	369	245933	1	spotify:track:5qJvC6WxZ7cm3mHn2t5MQE
3743	The Light	369	256600	2	spotify:track:18KQHNR38RvJczS1T716n9
3744	Welcome Tomorrow	369	216360	3	spotify:track:06g1n71Fr6SNJ0bVhWAEZF
3745	No New Tale to Tell	369	204133	4	spotify:track:2HkFBa2tIfhQTjacNPrNNN
3746	Here On Earth	369	190000	5	spotify:track:0qvjl2bKi8wDaIzIYQ13m6
3747	Lazy	369	192400	6	spotify:track:33FpUJQDpoeGsanZzIWjgU
3748	Waiting For The Flood	369	218333	7	spotify:track:5P4pZPMcBBN3xIWZxTDjcd
3749	Rain Bird	369	197360	8	spotify:track:2JlX6xccXFdClY50Htlj9C
3750	The Telephone Is Empty	369	239840	9	spotify:track:0ASnAENATpTB0NLIWLfGnI
3751	Everybody Wants To Go To Heaven	369	313400	10	spotify:track:0yFOn1s1qEfnmpmbGzK6Yu
3752	Earth, Sun, Moon	369	214266	11	spotify:track:1mNJHtZA7Eljy26btThSSO
3753	Youth	369	282333	12	spotify:track:1cwXRyo0Vvjk7VOs4qoGpg
3754	Mirror People - Slow Version	369	266893	13	spotify:track:1TgQFjg60S8U00tExRRFOH
3755	Five Minutes of Funk	370	324893	1	spotify:track:3izeHZhowlWJCKPG5FLFlq
3756	Freaks Come Out at Night	370	284613	2	spotify:track:1JKJZLqLUh0vlemaD3IfLe
3757	Featuring Grand Master Dee	370	344373	3	spotify:track:7o1zRVbUNjFOoABzRcP0WV
3758	Big Mouth	370	177266	4	spotify:track:6MCgJliOW1JZ4tBp6ovCoo
3759	Escape (I Need a Break)	370	223733	5	spotify:track:2n3GMJ9jj7MU1Lw7QAhJm7
3760	Friends	370	278533	6	spotify:track:0VCMH2s1q05Cx9jKwPkSoM
3761	Out of Control	370	255746	7	spotify:track:0f0DQV68fGiL4nVRusuGQq
3762	We Are Whodini	370	419986	8	spotify:track:26ni0adKqsXja5WltR4xC8
3763	Escape (I Need a Break) - Special Extended Mix	370	320066	9	spotify:track:43VgDN77JFM2PXBmiznLJf
3764	Escape (I Need a Break) - Acapella	370	104800	10	spotify:track:14aFH1xYGPMmxMusSAuj6V
3765	Escape (I Need a Break) - Instrumental	370	216133	11	spotify:track:6eNOS8NIDGnqi1oJQX8NwG
3766	Five Minutes of Funk - Instrumental	370	343426	12	spotify:track:2PiG7q3u7n2psmoFsFWs7W
3767	Freaks Come Out at Night - Instrumental	370	285933	13	spotify:track:1VPcTJidFdjbtwZHfbPuoB
3768	Friends - Instrumental	370	281040	14	spotify:track:2L4TrpBT7MPRzCg74Q9MHV
3769	Big Mouth - Beat Box Mix	370	303893	15	spotify:track:6JWWxuTLXMXigkaMftHBPO
3770	Big Mouth - Acapella Mix	370	174133	16	spotify:track:7pHAWBxgrtcmFa9Jcs0Gp6
3771	Grandmaster Dee's Haunted Scratch	370	212493	17	spotify:track:29K9LBRGI9658DAPEzMb6u
3772	Our House	371	201133	1	spotify:track:1qV6e4ITnfGmA6m6Vklvbi
3773	Tomorrow's Just Another Day	371	195000	2	spotify:track:0pvxo5k6dTWwXI45IC5WMR
3774	It Must Be Love	371	205400	3	spotify:track:11V471elPwt3VuAshE1nKN
3775	Primrose Hill	371	215533	4	spotify:track:1U3HV70hg5vCy4ID2jHeA3
3776	Shut Up	371	207893	5	spotify:track:5QYTj3lFuyC4lxnaf8JWA2
3777	House Of Fun	371	180066	6	spotify:track:4SactOQQV5J66VtQRVOBGC
3778	Night Boat To Cairo	371	196533	7	spotify:track:4ISiZaLy521RoZwH1bSRff
3779	Rise And Fall	371	195173	8	spotify:track:6K3ZHTlLvZON2p4IihXEGD
3780	Blue Skinned Beast	371	201560	9	spotify:track:7cJbiJY4wPHVJMja6av4Jz
3781	Cardiac Arrest	371	178666	10	spotify:track:24HRA7KyWzacTbwiPecpUH
3782	Grey Day	371	219866	11	spotify:track:20jNJKj3sOEqONtHSJ9y5x
3783	Madness (Is All In The Mind)	371	172466	12	spotify:track:1wubgByrkYeu5YdLwIaylU
3784	Unity	372	299360	1	spotify:track:5ltgZ6K66SIFlReVJMpJah
3785	Family Reunion	372	415333	2	spotify:track:1ECFqMRNA6NFbRXgbHl87e
3786	You and Me	372	339573	3	spotify:track:4FGYePPcvd3yuxyDR3BsCJ
3787	She's Only a Woman	372	342826	4	spotify:track:1iU8nEMGJxqCpvr6SCwJ2k
3788	Livin' for the Weekend	372	396000	5	spotify:track:6FxjvmfQuS4DUuUC0yC4bo
3789	Stairway to Heaven	372	376466	6	spotify:track:0lsEQBuB5lkHZAQ1Pu7K7t
3790	I Love Music	372	413066	7	spotify:track:222TScMmzaZ0IdkvbLoin2
3791	I Love Music - Tom Moulton Mix	372	584866	8	spotify:track:0X3gRDW1QOfcbXAD4AHgYU
3792	In the Times of Our Lives	373	290000	1	spotify:track:7IeVNYGilvoqUniMCn7U4G
3793	Soul Experience	373	171106	2	spotify:track:4RRcH4M877zXmxCi50cwMz
3794	Lonely Boy	373	296840	3	spotify:track:2HSUnHoEJmVm7roXuLDxk5
3795	Real Fright	373	162200	4	spotify:track:3YWpMNB1cqUHVAOm4GPEcw
3796	In the Crowds	373	130306	5	spotify:track:4yV5PaIkBgFmoPIrJez1et
3797	It Must Be Love - 2006 Remaster LP Version; Remastered	373	266000	6	spotify:track:6dboiH471M8zUIBPBDVEJN
3798	Her Favorite Style	373	195000	7	spotify:track:4AtSSq4bAByH0OiQhqeNzY
3799	Filled with Fear	373	227333	8	spotify:track:2buRCSJf9WJqviSDmUSAMl
3800	Belda-Beast	373	347133	9	spotify:track:1objfB3rp01lYaVFx0bWbf
3801	Forget Me Nots	374	275813	1	spotify:track:7vuSGejUXpD365Nl9tyehq
3802	I Was Tired Of Being Alone	374	232866	2	spotify:track:45HiVLXgyk9Ksf2mOHb1Xo
3803	All We Need	374	354600	3	spotify:track:4vrKqsiC2k2N1RDOfz23at
3804	Number One - Instrumental Version	374	299173	4	spotify:track:65nB28JneQDBQkekA5P7HA
3805	Where There Is Love	374	191893	5	spotify:track:6GYDuxSsHvct5LNylohwne
3806	Breakout!	374	247333	6	spotify:track:4OtV3rve5DIxfp3dBVw9YL
3807	If Only	374	203640	7	spotify:track:4KmHQCtMq7e8t1ztLhCIl9
3808	Remind Me	374	316640	8	spotify:track:6K3fTjBCHXCQtc8xK2IL6w
3809	(She Will) Take You Down To Love	374	264840	9	spotify:track:1kHdBNOzfhHZldLb1LXiCc
3810	Forget Me Nots - 12 " Version	374	437760	10	spotify:track:1Am1x6le0S3hCLd9n5jYgw
3811	Breakout! - 12 " Version	374	349266	11	spotify:track:2mDPGNt9EsArjgbOkDUjlQ
3812	Number One - 12 " Version	374	408142	12	spotify:track:02nQC7qgUifpgGJJEHFaL8
3813	Forget Me Nots - Single Version	374	244866	13	spotify:track:1Wxir9zPqfpmX6QTxpRMJE
3814	Breakout! - Single Version	374	245440	14	spotify:track:7iQ7n81Qwu2HTk9zsdHBVF
3815	When You're Far Away	375	348360	1	spotify:track:1vDAN6BFynONTlemYdzE2i
3816	Just Be My Lover	375	206546	2	spotify:track:5esP1ymXY70TpgUIXoDwOZ
3817	Save the Overtime (For Me)	375	281946	3	spotify:track:1CZMhkwoI5C0NpxAJlaH8t
3818	Heaven Sent	375	249506	4	spotify:track:15DP4pHvH7x2k7Mbo0ICXB
3819	Don't Make Me Run Away	375	226960	5	spotify:track:0YfuUcrG9BPuzxCAadkJjm
3820	Ain't No Greater Love	375	291386	6	spotify:track:0Jb9egUrMyXBTp65L7nZNT
3821	Seconds	375	277626	7	spotify:track:0AugOfbG9fXQTlAofCdfY8
3822	You're Number One (In My Book)	375	311200	8	spotify:track:58IloK3hwfSjYGIt09Rbmy
3823	Oh La De Da	375	215106	9	spotify:track:03y4DEMk4iP36wIGEocnG2
3824	Hero (Wind Beneath My Wings)	375	223746	10	spotify:track:0WninN31mi3UPt9p67uCG0
3825	Here's That Sunny Day - Single Version	375	269453	11	spotify:track:1uZRv0OXl6xieRhLDTjmT8
3826	Save the Overtime (For Me) - Single Version	375	229693	12	spotify:track:0hXGeXfRjBCKkCJUGLAQr4
3827	When You're Far Away - Single Version	375	238573	13	spotify:track:76GAwl4Sc1baS8bRjI8CkP
3828	You're Number One (In My Book) - Single Version	375	244226	14	spotify:track:5nj6c9GPbR79HV0NxeUYqC
3829	Heaven Sent - Extended Mix	375	292453	15	spotify:track:5QJsw559JDAXOF68JyTTW8
3830	Love's Gonna Get You	375	284853	16	spotify:track:0CRsEb1DgPPyFuusGjZqQK
3831	When You Live Through as Many Heartaches	375	302306	17	spotify:track:2TJTlOa6R9QHIZezVumQNF
3832	You Got It (Go On With Your Bad Self)	375	266226	18	spotify:track:1Hjp2uzJLZzixj7apagJ8p
3833	Save the Overtime (For Me) - 12" Mix	375	398826	1	spotify:track:05SrRiFcuZbpBTKwpVfkzI
3834	Save the Overtime (For Me) - 12" Instrumental Mix	375	393413	2	spotify:track:4LioHEl2QidAH6nv6YuVsy
3835	Save the Overtime (For Me) - 12" Promo Edit	375	308293	3	spotify:track:7A2P6zRrJy31YZzyr4Wml3
3836	When You're Far Away - 12" Version	375	419680	4	spotify:track:6k2ldGhUIcleWsCBPMHH7m
3837	When You're Far Away - 12" Instrumental Mix	375	346413	5	spotify:track:4XpLq2fXzRzz0Np4N5sPUh
3838	Here Now - Instrumental	375	337506	6	spotify:track:7E39lVmrdBqwVj6v11FSko
3839	Look at the Two of Us - Take 2	375	354440	7	spotify:track:0dkc0vOrFL3A3GU6gQcYLq
3840	More, More, More	375	213933	8	spotify:track:11WhqDStk1aRMMt5urqbDE
3841	Long Line - Take 3	375	215973	9	spotify:track:5214ZwrikjequhO86RuFZp
3842	You've Got My Word on That	375	261613	10	spotify:track:4YiTFRRlX4TSAUJwQGtZDp
3843	It Used to Be Me - Instrumental	375	276146	11	spotify:track:0LPyCChMFF7epjS8SrSqcF
3844	She Believes in Me	375	292040	12	spotify:track:6MUTjs1Zf9vJHMVhMl2KMz
3845	Hard Act to Follow	375	254946	13	spotify:track:0TNatD7A30DiRqmyUX39QN
3846	Kiss Away the Pain	375	226586	14	spotify:track:5Fa2uiyTaHWW7dxGNCCypb
3847	Precious Lord, Take My Hand	375	293213	15	spotify:track:05ofxv02VIcbMQkA5gxCG3
3848	Statesboro Blues - Live At Fillmore East, March 13, 1971	76	259444	1	spotify:track:7K4jh3V3fP00WKg7c6lwqA
3849	Done Somebody Wrong - Live At The Fillmore East, March 1971	76	275303	2	spotify:track:1Ic0MKzk6rlt0BDUrbYPHB
3850	Stormy Monday - Live At Fillmore East, March 13, 1971	76	529907	3	spotify:track:0j3X1sojCtj4mDijNAWnzZ
3851	You Don't Love Me - Live At Fillmore East, March 12, 1971	76	1159912	4	spotify:track:0MdAulbt6sWgJnrLxAvRpS
3852	Hot 'Lanta - Live At Fillmore East, March 13, 1971	76	321658	5	spotify:track:1DESy9s3YbHRaoq4Lr6gVK
3853	In Memory Of Elizabeth Reed - Live At Fillmore East, March 12, 1971	76	787004	6	spotify:track:5YEv7YynAHtwElD3WKeSwB
3854	Whipping Post - Live At The Fillmore East, March 1971	76	1389371	7	spotify:track:3fKxNsTQ3rN3qAQkXHcWmg
3855	Statesboro Blues - Live At Fillmore East, March 13, 1971	76	259444	1	spotify:track:7K4jh3V3fP00WKg7c6lwqA
3856	Done Somebody Wrong - Live At The Fillmore East, March 1971	76	275303	2	spotify:track:1Ic0MKzk6rlt0BDUrbYPHB
3857	Stormy Monday - Live At Fillmore East, March 13, 1971	76	529907	3	spotify:track:0j3X1sojCtj4mDijNAWnzZ
3858	You Don't Love Me - Live At Fillmore East, March 12, 1971	76	1159912	4	spotify:track:0MdAulbt6sWgJnrLxAvRpS
3859	Hot 'Lanta - Live At Fillmore East, March 13, 1971	76	321658	5	spotify:track:1DESy9s3YbHRaoq4Lr6gVK
3860	In Memory Of Elizabeth Reed - Live At Fillmore East, March 12, 1971	76	787004	6	spotify:track:5YEv7YynAHtwElD3WKeSwB
3861	Whipping Post - Live At The Fillmore East, March 1971	76	1389371	7	spotify:track:3fKxNsTQ3rN3qAQkXHcWmg
\.


--
-- Name: artists_artist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.artists_artist_id_seq', 378, true);


--
-- Name: labels_label_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.labels_label_id_seq', 378, true);


--
-- Name: records_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.records_record_id_seq', 377, true);


--
-- Name: tracks_track_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.tracks_track_id_seq', 3861, true);


--
-- Name: artists artists_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.artists
    ADD CONSTRAINT artists_pkey PRIMARY KEY (artist_id);


--
-- Name: labels labels_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.labels
    ADD CONSTRAINT labels_pkey PRIMARY KEY (label_id);


--
-- Name: records records_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.records
    ADD CONSTRAINT records_pkey PRIMARY KEY (record_id);


--
-- Name: tracks tracks_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.tracks
    ADD CONSTRAINT tracks_pkey PRIMARY KEY (track_id);


--
-- Name: artists unique_artist; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.artists
    ADD CONSTRAINT unique_artist UNIQUE (artist_name, artist_uri);


--
-- Name: labels unique_label; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.labels
    ADD CONSTRAINT unique_label UNIQUE (label_name);


--
-- Name: records unique_record; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.records
    ADD CONSTRAINT unique_record UNIQUE (record_title, artist_id, record_uri);


--
-- Name: records fk_artist_id; Type: FK CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.records
    ADD CONSTRAINT fk_artist_id FOREIGN KEY (artist_id) REFERENCES public.artists(artist_id);


--
-- Name: records fk_label_id; Type: FK CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.records
    ADD CONSTRAINT fk_label_id FOREIGN KEY (label_id) REFERENCES public.labels(label_id);


--
-- Name: tracks fk_record_id; Type: FK CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.tracks
    ADD CONSTRAINT fk_record_id FOREIGN KEY (record_id) REFERENCES public.records(record_id);


--
-- PostgreSQL database dump complete
--

