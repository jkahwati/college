--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.18
-- Dumped by pg_dump version 9.6.6

-- Started on 2018-01-06 01:39:46 CLST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 11789)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2068 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 184 (class 1259 OID 188794)
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: nnodesdb
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO nnodesdb;

--
-- TOC entry 172 (class 1259 OID 188689)
-- Name: course_students; Type: TABLE; Schema: public; Owner: nnodesdb
--

CREATE TABLE course_students (
    id bigint NOT NULL,
    course_id bigint,
    student_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE course_students OWNER TO nnodesdb;

--
-- TOC entry 171 (class 1259 OID 188687)
-- Name: course_students_id_seq; Type: SEQUENCE; Schema: public; Owner: nnodesdb
--

CREATE SEQUENCE course_students_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE course_students_id_seq OWNER TO nnodesdb;

--
-- TOC entry 2069 (class 0 OID 0)
-- Dependencies: 171
-- Name: course_students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nnodesdb
--

ALTER SEQUENCE course_students_id_seq OWNED BY course_students.id;


--
-- TOC entry 174 (class 1259 OID 188699)
-- Name: courses; Type: TABLE; Schema: public; Owner: nnodesdb
--

CREATE TABLE courses (
    id bigint NOT NULL,
    name character varying,
    teacher_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE courses OWNER TO nnodesdb;

--
-- TOC entry 173 (class 1259 OID 188697)
-- Name: courses_id_seq; Type: SEQUENCE; Schema: public; Owner: nnodesdb
--

CREATE SEQUENCE courses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE courses_id_seq OWNER TO nnodesdb;

--
-- TOC entry 2070 (class 0 OID 0)
-- Dependencies: 173
-- Name: courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nnodesdb
--

ALTER SEQUENCE courses_id_seq OWNED BY courses.id;


--
-- TOC entry 183 (class 1259 OID 188786)
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: nnodesdb
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO nnodesdb;

--
-- TOC entry 176 (class 1259 OID 188711)
-- Name: student_tests; Type: TABLE; Schema: public; Owner: nnodesdb
--

CREATE TABLE student_tests (
    id bigint NOT NULL,
    score numeric,
    student_id bigint,
    test_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE student_tests OWNER TO nnodesdb;

--
-- TOC entry 175 (class 1259 OID 188709)
-- Name: student_tests_id_seq; Type: SEQUENCE; Schema: public; Owner: nnodesdb
--

CREATE SEQUENCE student_tests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE student_tests_id_seq OWNER TO nnodesdb;

--
-- TOC entry 2071 (class 0 OID 0)
-- Dependencies: 175
-- Name: student_tests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nnodesdb
--

ALTER SEQUENCE student_tests_id_seq OWNED BY student_tests.id;


--
-- TOC entry 178 (class 1259 OID 188724)
-- Name: students; Type: TABLE; Schema: public; Owner: nnodesdb
--

CREATE TABLE students (
    id bigint NOT NULL,
    first_name character varying,
    last_name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE students OWNER TO nnodesdb;

--
-- TOC entry 177 (class 1259 OID 188722)
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: nnodesdb
--

CREATE SEQUENCE students_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE students_id_seq OWNER TO nnodesdb;

--
-- TOC entry 2072 (class 0 OID 0)
-- Dependencies: 177
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nnodesdb
--

ALTER SEQUENCE students_id_seq OWNED BY students.id;


--
-- TOC entry 180 (class 1259 OID 188735)
-- Name: teachers; Type: TABLE; Schema: public; Owner: nnodesdb
--

CREATE TABLE teachers (
    id bigint NOT NULL,
    first_name character varying,
    last_name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE teachers OWNER TO nnodesdb;

--
-- TOC entry 179 (class 1259 OID 188733)
-- Name: teachers_id_seq; Type: SEQUENCE; Schema: public; Owner: nnodesdb
--

CREATE SEQUENCE teachers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE teachers_id_seq OWNER TO nnodesdb;

--
-- TOC entry 2073 (class 0 OID 0)
-- Dependencies: 179
-- Name: teachers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nnodesdb
--

ALTER SEQUENCE teachers_id_seq OWNED BY teachers.id;


--
-- TOC entry 182 (class 1259 OID 188746)
-- Name: tests; Type: TABLE; Schema: public; Owner: nnodesdb
--

CREATE TABLE tests (
    id bigint NOT NULL,
    name character varying,
    course_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE tests OWNER TO nnodesdb;

--
-- TOC entry 181 (class 1259 OID 188744)
-- Name: tests_id_seq; Type: SEQUENCE; Schema: public; Owner: nnodesdb
--

CREATE SEQUENCE tests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tests_id_seq OWNER TO nnodesdb;

--
-- TOC entry 2074 (class 0 OID 0)
-- Dependencies: 181
-- Name: tests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nnodesdb
--

ALTER SEQUENCE tests_id_seq OWNED BY tests.id;


--
-- TOC entry 1906 (class 2604 OID 188692)
-- Name: course_students id; Type: DEFAULT; Schema: public; Owner: nnodesdb
--

ALTER TABLE ONLY course_students ALTER COLUMN id SET DEFAULT nextval('course_students_id_seq'::regclass);


--
-- TOC entry 1907 (class 2604 OID 188702)
-- Name: courses id; Type: DEFAULT; Schema: public; Owner: nnodesdb
--

ALTER TABLE ONLY courses ALTER COLUMN id SET DEFAULT nextval('courses_id_seq'::regclass);


--
-- TOC entry 1908 (class 2604 OID 188714)
-- Name: student_tests id; Type: DEFAULT; Schema: public; Owner: nnodesdb
--

ALTER TABLE ONLY student_tests ALTER COLUMN id SET DEFAULT nextval('student_tests_id_seq'::regclass);


--
-- TOC entry 1909 (class 2604 OID 188727)
-- Name: students id; Type: DEFAULT; Schema: public; Owner: nnodesdb
--

ALTER TABLE ONLY students ALTER COLUMN id SET DEFAULT nextval('students_id_seq'::regclass);


--
-- TOC entry 1910 (class 2604 OID 188738)
-- Name: teachers id; Type: DEFAULT; Schema: public; Owner: nnodesdb
--

ALTER TABLE ONLY teachers ALTER COLUMN id SET DEFAULT nextval('teachers_id_seq'::regclass);


--
-- TOC entry 1911 (class 2604 OID 188749)
-- Name: tests id; Type: DEFAULT; Schema: public; Owner: nnodesdb
--

ALTER TABLE ONLY tests ALTER COLUMN id SET DEFAULT nextval('tests_id_seq'::regclass);


--
-- TOC entry 2060 (class 0 OID 188794)
-- Dependencies: 184
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: nnodesdb
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2018-01-06 03:19:09.972192	2018-01-06 03:19:09.972192
\.


--
-- TOC entry 2048 (class 0 OID 188689)
-- Dependencies: 172
-- Data for Name: course_students; Type: TABLE DATA; Schema: public; Owner: nnodesdb
--

COPY course_students (id, course_id, student_id, created_at, updated_at) FROM stdin;
1	1	1	2018-01-06 03:19:10.520638	2018-01-06 03:19:10.520638
2	1	2	2018-01-06 03:19:10.534582	2018-01-06 03:19:10.534582
3	1	3	2018-01-06 03:19:10.546127	2018-01-06 03:19:10.546127
4	1	4	2018-01-06 03:19:10.557506	2018-01-06 03:19:10.557506
5	2	5	2018-01-06 03:19:10.568341	2018-01-06 03:19:10.568341
6	2	6	2018-01-06 03:19:10.582747	2018-01-06 03:19:10.582747
7	2	1	2018-01-06 03:19:10.600235	2018-01-06 03:19:10.600235
\.


--
-- TOC entry 2075 (class 0 OID 0)
-- Dependencies: 171
-- Name: course_students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nnodesdb
--

SELECT pg_catalog.setval('course_students_id_seq', 7, true);


--
-- TOC entry 2050 (class 0 OID 188699)
-- Dependencies: 174
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: nnodesdb
--

COPY courses (id, name, teacher_id, created_at, updated_at) FROM stdin;
1	Programacion	2	2018-01-06 03:19:10.143701	2018-01-06 03:19:10.143701
2	Estructuras	2	2018-01-06 03:19:10.154716	2018-01-06 03:19:10.154716
3	Lenguaje	3	2018-01-06 03:19:10.166729	2018-01-06 03:19:10.166729
4	Tecnicas	4	2018-01-06 03:19:10.177469	2018-01-06 03:19:10.177469
5	TGS	5	2018-01-06 03:19:10.189933	2018-01-06 03:19:10.189933
6	Investigacion	5	2018-01-06 03:19:10.198777	2018-01-06 03:19:10.198777
\.


--
-- TOC entry 2076 (class 0 OID 0)
-- Dependencies: 173
-- Name: courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nnodesdb
--

SELECT pg_catalog.setval('courses_id_seq', 6, true);


--
-- TOC entry 2059 (class 0 OID 188786)
-- Dependencies: 183
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: nnodesdb
--

COPY schema_migrations (version) FROM stdin;
20180105235034
20180105234451
20180105232047
20180105234241
20180105234548
20180105234825
\.


--
-- TOC entry 2052 (class 0 OID 188711)
-- Dependencies: 176
-- Data for Name: student_tests; Type: TABLE DATA; Schema: public; Owner: nnodesdb
--

COPY student_tests (id, score, student_id, test_id, created_at, updated_at) FROM stdin;
1	10.0	1	1	2018-01-06 03:19:10.634927	2018-01-06 03:19:10.634927
2	6.0	2	1	2018-01-06 03:19:10.643912	2018-01-06 03:19:10.643912
3	5.0	3	1	2018-01-06 03:19:10.655606	2018-01-06 03:19:10.655606
4	3.0	4	1	2018-01-06 03:19:10.666635	2018-01-06 03:19:10.666635
5	8.0	5	4	2018-01-06 03:19:10.678634	2018-01-06 03:19:10.678634
6	2.0	6	4	2018-01-06 03:19:10.691005	2018-01-06 03:19:10.691005
7	8.0	1	4	2018-01-06 03:19:10.701092	2018-01-06 03:19:10.701092
\.


--
-- TOC entry 2077 (class 0 OID 0)
-- Dependencies: 175
-- Name: student_tests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nnodesdb
--

SELECT pg_catalog.setval('student_tests_id_seq', 7, true);


--
-- TOC entry 2054 (class 0 OID 188724)
-- Dependencies: 178
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: nnodesdb
--

COPY students (id, first_name, last_name, created_at, updated_at) FROM stdin;
1	Rodrigo	Perez	2018-01-06 03:19:10.320147	2018-01-06 03:19:10.320147
2	Carmen	Kahwati	2018-01-06 03:19:10.32993	2018-01-06 03:19:10.32993
3	Carlos	Jimienez	2018-01-06 03:19:10.341012	2018-01-06 03:19:10.341012
4	Michael	James	2018-01-06 03:19:10.352409	2018-01-06 03:19:10.352409
5	Susan	Haboub	2018-01-06 03:19:10.363591	2018-01-06 03:19:10.363591
6	Jhon	Delgado	2018-01-06 03:19:10.37468	2018-01-06 03:19:10.37468
7	Jaime	Delgado	2018-01-06 03:19:10.385835	2018-01-06 03:19:10.385835
8	Junior	Cabello	2018-01-06 03:19:10.396944	2018-01-06 03:19:10.396944
9	Ainhoa	Ceballo	2018-01-06 03:19:10.408056	2018-01-06 03:19:10.408056
10	Jenny	zuckenberg	2018-01-06 03:19:10.419148	2018-01-06 03:19:10.419148
11	Nadia	Porcin	2018-01-06 03:19:10.430995	2018-01-06 03:19:10.430995
12	Karlyn	Bobin	2018-01-06 03:19:10.443053	2018-01-06 03:19:10.443053
13	Pablo	Loyal	2018-01-06 03:19:10.4532	2018-01-06 03:19:10.4532
14	Georges	Love	2018-01-06 03:19:10.463775	2018-01-06 03:19:10.463775
15	Gladys	Peace	2018-01-06 03:19:10.475252	2018-01-06 03:19:10.475252
\.


--
-- TOC entry 2078 (class 0 OID 0)
-- Dependencies: 177
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nnodesdb
--

SELECT pg_catalog.setval('students_id_seq', 15, true);


--
-- TOC entry 2056 (class 0 OID 188735)
-- Dependencies: 180
-- Data for Name: teachers; Type: TABLE DATA; Schema: public; Owner: nnodesdb
--

COPY teachers (id, first_name, last_name, created_at, updated_at) FROM stdin;
1	Carlos	Perez	2018-01-06 03:19:10.043108	2018-01-06 03:19:10.043108
2	Jose	Delgado	2018-01-06 03:19:10.063547	2018-01-06 03:19:10.063547
3	Maria	Cabello	2018-01-06 03:19:10.075657	2018-01-06 03:19:10.075657
4	Michael	Rodruiguez	2018-01-06 03:19:10.086799	2018-01-06 03:19:10.086799
5	Susana	Haboub	2018-01-06 03:19:10.097813	2018-01-06 03:19:10.097813
\.


--
-- TOC entry 2079 (class 0 OID 0)
-- Dependencies: 179
-- Name: teachers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nnodesdb
--

SELECT pg_catalog.setval('teachers_id_seq', 5, true);


--
-- TOC entry 2058 (class 0 OID 188746)
-- Dependencies: 182
-- Data for Name: tests; Type: TABLE DATA; Schema: public; Owner: nnodesdb
--

COPY tests (id, name, course_id, created_at, updated_at) FROM stdin;
1	jdu	1	2018-01-06 03:19:10.22846	2018-01-06 03:19:10.22846
2	ter	1	2018-01-06 03:19:10.243462	2018-01-06 03:19:10.243462
3	erj	1	2018-01-06 03:19:10.256877	2018-01-06 03:19:10.256877
4	dfj	2	2018-01-06 03:19:10.266378	2018-01-06 03:19:10.266378
5	pdf	3	2018-01-06 03:19:10.276967	2018-01-06 03:19:10.276967
6	dfd	4	2018-01-06 03:19:10.288159	2018-01-06 03:19:10.288159
\.


--
-- TOC entry 2080 (class 0 OID 0)
-- Dependencies: 181
-- Name: tests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nnodesdb
--

SELECT pg_catalog.setval('tests_id_seq', 6, true);


--
-- TOC entry 1933 (class 2606 OID 188801)
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: nnodesdb
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- TOC entry 1913 (class 2606 OID 188694)
-- Name: course_students course_students_pkey; Type: CONSTRAINT; Schema: public; Owner: nnodesdb
--

ALTER TABLE ONLY course_students
    ADD CONSTRAINT course_students_pkey PRIMARY KEY (id);


--
-- TOC entry 1917 (class 2606 OID 188707)
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: nnodesdb
--

ALTER TABLE ONLY courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);


--
-- TOC entry 1931 (class 2606 OID 188793)
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: nnodesdb
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- TOC entry 1922 (class 2606 OID 188719)
-- Name: student_tests student_tests_pkey; Type: CONSTRAINT; Schema: public; Owner: nnodesdb
--

ALTER TABLE ONLY student_tests
    ADD CONSTRAINT student_tests_pkey PRIMARY KEY (id);


--
-- TOC entry 1924 (class 2606 OID 188732)
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: nnodesdb
--

ALTER TABLE ONLY students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- TOC entry 1926 (class 2606 OID 188743)
-- Name: teachers teachers_pkey; Type: CONSTRAINT; Schema: public; Owner: nnodesdb
--

ALTER TABLE ONLY teachers
    ADD CONSTRAINT teachers_pkey PRIMARY KEY (id);


--
-- TOC entry 1929 (class 2606 OID 188754)
-- Name: tests tests_pkey; Type: CONSTRAINT; Schema: public; Owner: nnodesdb
--

ALTER TABLE ONLY tests
    ADD CONSTRAINT tests_pkey PRIMARY KEY (id);


--
-- TOC entry 1914 (class 1259 OID 188695)
-- Name: index_course_students_on_course_id; Type: INDEX; Schema: public; Owner: nnodesdb
--

CREATE INDEX index_course_students_on_course_id ON course_students USING btree (course_id);


--
-- TOC entry 1915 (class 1259 OID 188696)
-- Name: index_course_students_on_student_id; Type: INDEX; Schema: public; Owner: nnodesdb
--

CREATE INDEX index_course_students_on_student_id ON course_students USING btree (student_id);


--
-- TOC entry 1918 (class 1259 OID 188708)
-- Name: index_courses_on_teacher_id; Type: INDEX; Schema: public; Owner: nnodesdb
--

CREATE INDEX index_courses_on_teacher_id ON courses USING btree (teacher_id);


--
-- TOC entry 1919 (class 1259 OID 188720)
-- Name: index_student_tests_on_student_id; Type: INDEX; Schema: public; Owner: nnodesdb
--

CREATE INDEX index_student_tests_on_student_id ON student_tests USING btree (student_id);


--
-- TOC entry 1920 (class 1259 OID 188721)
-- Name: index_student_tests_on_test_id; Type: INDEX; Schema: public; Owner: nnodesdb
--

CREATE INDEX index_student_tests_on_test_id ON student_tests USING btree (test_id);


--
-- TOC entry 1927 (class 1259 OID 188755)
-- Name: index_tests_on_course_id; Type: INDEX; Schema: public; Owner: nnodesdb
--

CREATE INDEX index_tests_on_course_id ON tests USING btree (course_id);


--
-- TOC entry 1938 (class 2606 OID 188776)
-- Name: student_tests fk_rails_374f1e282e; Type: FK CONSTRAINT; Schema: public; Owner: nnodesdb
--

ALTER TABLE ONLY student_tests
    ADD CONSTRAINT fk_rails_374f1e282e FOREIGN KEY (test_id) REFERENCES tests(id);


--
-- TOC entry 1939 (class 2606 OID 188781)
-- Name: tests fk_rails_41852ccb67; Type: FK CONSTRAINT; Schema: public; Owner: nnodesdb
--

ALTER TABLE ONLY tests
    ADD CONSTRAINT fk_rails_41852ccb67 FOREIGN KEY (course_id) REFERENCES courses(id);


--
-- TOC entry 1937 (class 2606 OID 188771)
-- Name: student_tests fk_rails_9af621b3f3; Type: FK CONSTRAINT; Schema: public; Owner: nnodesdb
--

ALTER TABLE ONLY student_tests
    ADD CONSTRAINT fk_rails_9af621b3f3 FOREIGN KEY (student_id) REFERENCES students(id);


--
-- TOC entry 1936 (class 2606 OID 188766)
-- Name: courses fk_rails_a68eff6aff; Type: FK CONSTRAINT; Schema: public; Owner: nnodesdb
--

ALTER TABLE ONLY courses
    ADD CONSTRAINT fk_rails_a68eff6aff FOREIGN KEY (teacher_id) REFERENCES teachers(id);


--
-- TOC entry 1935 (class 2606 OID 188761)
-- Name: course_students fk_rails_de36959187; Type: FK CONSTRAINT; Schema: public; Owner: nnodesdb
--

ALTER TABLE ONLY course_students
    ADD CONSTRAINT fk_rails_de36959187 FOREIGN KEY (student_id) REFERENCES students(id);


--
-- TOC entry 1934 (class 2606 OID 188756)
-- Name: course_students fk_rails_e72b71bcd6; Type: FK CONSTRAINT; Schema: public; Owner: nnodesdb
--

ALTER TABLE ONLY course_students
    ADD CONSTRAINT fk_rails_e72b71bcd6 FOREIGN KEY (course_id) REFERENCES courses(id);


--
-- TOC entry 2067 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-01-06 01:39:46 CLST

--
-- PostgreSQL database dump complete
--

