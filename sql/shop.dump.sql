--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: category; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE category (
    id bigint NOT NULL,
    name text
);


ALTER TABLE category OWNER TO postgres;

--
-- Name: group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE group_id_seq OWNER TO postgres;

--
-- Name: group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE group_id_seq OWNED BY category.id;


--
-- Name: group_tag; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE group_tag (
    group_id bigint NOT NULL,
    tag_id bigint NOT NULL
);


ALTER TABLE group_tag OWNER TO postgres;

--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product (
    id bigint NOT NULL,
    name text,
    group_id bigint NOT NULL
);


ALTER TABLE product OWNER TO postgres;

--
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_id_seq OWNER TO postgres;

--
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_id_seq OWNED BY product.id;


--
-- Name: product_tag; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_tag (
    product_id bigint NOT NULL,
    tag_id bigint NOT NULL
);


ALTER TABLE product_tag OWNER TO postgres;

--
-- Name: tag; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tag (
    id bigint NOT NULL,
    name text
);


ALTER TABLE tag OWNER TO postgres;

--
-- Name: tag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tag_id_seq OWNER TO postgres;

--
-- Name: tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tag_id_seq OWNED BY tag.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY category ALTER COLUMN id SET DEFAULT nextval('group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product ALTER COLUMN id SET DEFAULT nextval('product_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tag ALTER COLUMN id SET DEFAULT nextval('tag_id_seq'::regclass);


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY category (id, name) FROM stdin;
1	Snowboards
2	Clothes
3	Accessories
\.


--
-- Name: group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('group_id_seq', 3, true);


--
-- Data for Name: group_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY group_tag (group_id, tag_id) FROM stdin;
1	1
1	2
1	3
1	4
1	8
1	9
2	1
2	2
2	3
2	4
2	8
2	9
2	10
2	11
2	12
3	1
3	2
3	3
3	5
3	6
3	8
3	9
3	13
3	14
3	15
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product (id, name, group_id) FROM stdin;
1	Clash Snowboard	1
2	Custom Flying V Snowboard	1
3	Ripcord Snowboard	1
4	Process Flying V Snowboard	1
8	Blunt Snowboard	1
9	Custom X Snowboard 	1
10	Feelgood Flying V Womens Snowboard 	1
11	Name Dropper Snowboard	1
12	Blunt Wide Snowboard 	1
13	Easy Livin Snowboard 	1
14	Deja Vu Flying V Womens Snowboard	1
15	Socialite Womens Snowboard	1
16	Feather Womens Snowboard	1
17	Nug Flying V Snowboard 	1
18	Chopper Boys Snowboard	1
19	Custom Smalls Boys Snowboard	1
20	Protest Boys Snowboard 	1
23	Process Smalls Boys Snowboard	1
24	Feelgood Smalls Girls Snowboard	1
25	AK 2L Flare Down Womens Insulated Snowboard Jacket	2
26	Eclipse Womens Insulated Snowboard Jacket	2
27	Landing Mens Insulated Snowboard Jacket	2
28	Latitude Mens Shell Snowboard Jacket	2
29	Method Womens Insulated Snowboard Jacket	2
30	TWC Tracker Mens Insulated Snowboard Jacket	2
31	Dulce Girls Snowboard Jacket	2
32	Sweetart Girls Snowboard Pants	2
33	Exile Cargo Kids Snowboard Pants	2
34	Covert Insulated Mens Snowboard Pants	2
35	Southside Slim Fit Mens Snowboard Pants	2
36	Skyline Womens Snowboard Pants	2
39	Refried Hat	2
40	What? Hat	2
41	Deluxe Carry On 46L Bag 	3
42	Deluxe Roller 80L Bag 	3
43	Freestyle 165 Snowboard Bag	3
44	Womens Split Roller 100L Bag	3
45	Womens Split Roller 65L Bag	3
46	Split Roller 65L Bag	3
49	Nine Helmet	3
50	Discord Helmet	3
51	Launch Kids Helmet	3
52	Combyn Helmet	3
53	Seam Helmet	3
54	Field Womens Goggles 	3
55	Compass Goggles	3
56	Grade Kids Goggles	3
\.


--
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_id_seq', 56, true);


--
-- Data for Name: product_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_tag (product_id, tag_id) FROM stdin;
1	2
1	4
1	9
2	2
2	4
2	9
3	2
3	4
3	9
4	2
4	4
4	9
8	2
8	4
8	9
9	2
9	4
9	9
10	3
10	4
10	9
11	2
11	4
11	9
12	2
12	4
12	9
13	2
13	4
13	9
14	3
14	4
14	9
15	3
15	4
15	9
16	3
16	4
16	9
17	2
17	4
17	9
18	1
18	4
18	9
19	1
19	4
19	9
20	1
20	4
20	9
23	1
23	4
23	9
24	1
24	4
24	9
25	3
25	4
25	8
25	10
26	3
26	4
26	10
26	9
27	2
27	4
27	9
27	10
28	2
28	4
28	9
28	10
29	3
29	4
29	8
29	10
30	2
30	4
30	8
30	10
31	3
31	4
31	8
31	10
32	3
32	4
32	8
32	11
33	1
33	4
33	9
33	11
34	2
34	4
34	8
34	11
35	2
35	4
35	9
35	11
36	3
36	4
36	8
36	11
39	2
39	3
39	4
39	9
39	12
40	2
40	3
40	4
40	8
40	12
41	2
41	3
41	5
41	9
41	13
42	2
42	3
42	5
42	8
42	13
43	2
43	3
43	5
43	9
43	13
44	3
44	5
44	9
44	13
45	3
45	5
45	9
45	13
46	2
46	3
46	5
46	8
46	13
49	2
49	3
46	6
46	9
46	14
50	2
50	3
50	6
50	9
50	14
51	1
51	6
51	8
51	14
53	2
53	3
53	6
53	9
53	14
54	3
54	6
54	8
54	15
55	2
55	3
55	6
55	9
55	15
56	1
56	6
56	8
56	15
\.


--
-- Data for Name: tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tag (id, name) FROM stdin;
1	For kids
2	For men
3	For women
4	Burton
5	Dakine
6	Giro
8	2014
9	2015
10	Jakets
11	Pants
12	Hats
13	Bags
14	Helmets
15	Masks
\.


--
-- Name: tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tag_id_seq', 15, true);


--
-- Name: group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY category
    ADD CONSTRAINT group_pkey PRIMARY KEY (id);


--
-- Name: group_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY group_tag
    ADD CONSTRAINT group_tag_pkey PRIMARY KEY (group_id, tag_id);


--
-- Name: product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- Name: product_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY product_tag
    ADD CONSTRAINT product_tag_pkey PRIMARY KEY (product_id, tag_id);


--
-- Name: tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tag
    ADD CONSTRAINT tag_pkey PRIMARY KEY (id);


--
-- Name: group_tag_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY group_tag
    ADD CONSTRAINT group_tag_group_id_fkey FOREIGN KEY (group_id) REFERENCES category(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: group_tag_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY group_tag
    ADD CONSTRAINT group_tag_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES tag(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: product_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product
    ADD CONSTRAINT product_group_id_fkey FOREIGN KEY (group_id) REFERENCES category(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: product_tag_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_tag
    ADD CONSTRAINT product_tag_product_id_fkey FOREIGN KEY (product_id) REFERENCES product(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: product_tag_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_tag
    ADD CONSTRAINT product_tag_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES tag(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

