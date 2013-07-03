--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.9
-- Dumped by pg_dump version 9.1.9
-- Started on 2013-07-02 23:46:40 BRT

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 7 (class 2615 OID 16524)
-- Name: guddi; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA guddi;


ALTER SCHEMA guddi OWNER TO postgres;

SET search_path = guddi, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 175 (class 1259 OID 16527)
-- Dependencies: 7
-- Name: atributo; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE atributo (
    id bigint NOT NULL,
    nome character varying(20),
    tipo character varying(10),
    id_servico bigint
);


ALTER TABLE guddi.atributo OWNER TO postgres;

--
-- TOC entry 174 (class 1259 OID 16525)
-- Dependencies: 175 7
-- Name: atributo_id_seq; Type: SEQUENCE; Schema: guddi; Owner: postgres
--

CREATE SEQUENCE atributo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE guddi.atributo_id_seq OWNER TO postgres;

--
-- TOC entry 2035 (class 0 OID 0)
-- Dependencies: 174
-- Name: atributo_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE atributo_id_seq OWNED BY atributo.id;


--
-- TOC entry 177 (class 1259 OID 16535)
-- Dependencies: 7
-- Name: descritor; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE descritor (
    id bigint NOT NULL,
    descricao character varying(100),
    id_sistema bigint
);


ALTER TABLE guddi.descritor OWNER TO postgres;

--
-- TOC entry 176 (class 1259 OID 16533)
-- Dependencies: 177 7
-- Name: descritor_id_seq; Type: SEQUENCE; Schema: guddi; Owner: postgres
--

CREATE SEQUENCE descritor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE guddi.descritor_id_seq OWNER TO postgres;

--
-- TOC entry 2036 (class 0 OID 0)
-- Dependencies: 176
-- Name: descritor_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE descritor_id_seq OWNED BY descritor.id;


--
-- TOC entry 179 (class 1259 OID 16543)
-- Dependencies: 7
-- Name: excecao; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE excecao (
    id bigint NOT NULL,
    descricao character varying(255),
    identificador character varying(20),
    id_servico bigint
);


ALTER TABLE guddi.excecao OWNER TO postgres;

--
-- TOC entry 178 (class 1259 OID 16541)
-- Dependencies: 179 7
-- Name: excecao_id_seq; Type: SEQUENCE; Schema: guddi; Owner: postgres
--

CREATE SEQUENCE excecao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE guddi.excecao_id_seq OWNER TO postgres;

--
-- TOC entry 2037 (class 0 OID 0)
-- Dependencies: 178
-- Name: excecao_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE excecao_id_seq OWNED BY excecao.id;


--
-- TOC entry 181 (class 1259 OID 16551)
-- Dependencies: 7
-- Name: orgao; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE orgao (
    id bigint NOT NULL,
    nome character varying(50)
);


ALTER TABLE guddi.orgao OWNER TO postgres;

--
-- TOC entry 180 (class 1259 OID 16549)
-- Dependencies: 181 7
-- Name: orgao_id_seq; Type: SEQUENCE; Schema: guddi; Owner: postgres
--

CREATE SEQUENCE orgao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE guddi.orgao_id_seq OWNER TO postgres;

--
-- TOC entry 2038 (class 0 OID 0)
-- Dependencies: 180
-- Name: orgao_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE orgao_id_seq OWNED BY orgao.id;


--
-- TOC entry 183 (class 1259 OID 16559)
-- Dependencies: 7
-- Name: papel; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE papel (
    id bigint NOT NULL,
    descricao character varying(20)
);


ALTER TABLE guddi.papel OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 16557)
-- Dependencies: 7 183
-- Name: papel_id_seq; Type: SEQUENCE; Schema: guddi; Owner: postgres
--

CREATE SEQUENCE papel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE guddi.papel_id_seq OWNER TO postgres;

--
-- TOC entry 2039 (class 0 OID 0)
-- Dependencies: 182
-- Name: papel_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE papel_id_seq OWNED BY papel.id;


--
-- TOC entry 185 (class 1259 OID 16567)
-- Dependencies: 7
-- Name: servico; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE servico (
    id bigint NOT NULL,
    nome character varying(50),
    wsdl_link character varying(500),
    id_descritor bigint
);


ALTER TABLE guddi.servico OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 16565)
-- Dependencies: 7 185
-- Name: servico_id_seq; Type: SEQUENCE; Schema: guddi; Owner: postgres
--

CREATE SEQUENCE servico_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE guddi.servico_id_seq OWNER TO postgres;

--
-- TOC entry 2040 (class 0 OID 0)
-- Dependencies: 184
-- Name: servico_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE servico_id_seq OWNED BY servico.id;


--
-- TOC entry 187 (class 1259 OID 16578)
-- Dependencies: 7
-- Name: sistema; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE sistema (
    id bigint NOT NULL,
    nome character varying(20),
    id_orgao bigint
);


ALTER TABLE guddi.sistema OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 16576)
-- Dependencies: 187 7
-- Name: sistema_id_seq; Type: SEQUENCE; Schema: guddi; Owner: postgres
--

CREATE SEQUENCE sistema_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE guddi.sistema_id_seq OWNER TO postgres;

--
-- TOC entry 2041 (class 0 OID 0)
-- Dependencies: 186
-- Name: sistema_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE sistema_id_seq OWNED BY sistema.id;


--
-- TOC entry 189 (class 1259 OID 16586)
-- Dependencies: 7
-- Name: tag; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE tag (
    id bigint NOT NULL,
    tag character varying(15),
    id_descritor bigint
);


ALTER TABLE guddi.tag OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 16584)
-- Dependencies: 7 189
-- Name: tag_id_seq; Type: SEQUENCE; Schema: guddi; Owner: postgres
--

CREATE SEQUENCE tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE guddi.tag_id_seq OWNER TO postgres;

--
-- TOC entry 2042 (class 0 OID 0)
-- Dependencies: 188
-- Name: tag_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE tag_id_seq OWNED BY tag.id;


--
-- TOC entry 190 (class 1259 OID 16592)
-- Dependencies: 7
-- Name: usuario; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE usuario (
    id bigint NOT NULL,
    nome character varying(50),
    senha character varying(32),
    usuario character varying(15),
    id_orgao bigint
);


ALTER TABLE guddi.usuario OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 16597)
-- Dependencies: 7
-- Name: usuario_papel; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE usuario_papel (
    id_usuario bigint NOT NULL,
    id_papel bigint NOT NULL
);


ALTER TABLE guddi.usuario_papel OWNER TO postgres;

--
-- TOC entry 1976 (class 2604 OID 16530)
-- Dependencies: 175 174 175
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY atributo ALTER COLUMN id SET DEFAULT nextval('atributo_id_seq'::regclass);


--
-- TOC entry 1977 (class 2604 OID 16538)
-- Dependencies: 177 176 177
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY descritor ALTER COLUMN id SET DEFAULT nextval('descritor_id_seq'::regclass);


--
-- TOC entry 1978 (class 2604 OID 16546)
-- Dependencies: 179 178 179
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY excecao ALTER COLUMN id SET DEFAULT nextval('excecao_id_seq'::regclass);


--
-- TOC entry 1979 (class 2604 OID 16554)
-- Dependencies: 180 181 181
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY orgao ALTER COLUMN id SET DEFAULT nextval('orgao_id_seq'::regclass);


--
-- TOC entry 1980 (class 2604 OID 16562)
-- Dependencies: 183 182 183
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY papel ALTER COLUMN id SET DEFAULT nextval('papel_id_seq'::regclass);


--
-- TOC entry 1981 (class 2604 OID 16570)
-- Dependencies: 185 184 185
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY servico ALTER COLUMN id SET DEFAULT nextval('servico_id_seq'::regclass);


--
-- TOC entry 1982 (class 2604 OID 16581)
-- Dependencies: 186 187 187
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY sistema ALTER COLUMN id SET DEFAULT nextval('sistema_id_seq'::regclass);


--
-- TOC entry 1983 (class 2604 OID 16589)
-- Dependencies: 188 189 189
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY tag ALTER COLUMN id SET DEFAULT nextval('tag_id_seq'::regclass);


--
-- TOC entry 2014 (class 0 OID 16527)
-- Dependencies: 175 2031
-- Data for Name: atributo; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY atributo (id, nome, tipo, id_servico) FROM stdin;
1	nome	String	1
2	nome	String	2
3	nome	String	3
4	nome	String	4
5	nome	String	5
6	nome	String	6
\.


--
-- TOC entry 2043 (class 0 OID 0)
-- Dependencies: 174
-- Name: atributo_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('atributo_id_seq', 6, true);


--
-- TOC entry 2016 (class 0 OID 16535)
-- Dependencies: 177 2031
-- Data for Name: descritor; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY descritor (id, descricao, id_sistema) FROM stdin;
1	Dominio NucleoPA	1
\.


--
-- TOC entry 2044 (class 0 OID 0)
-- Dependencies: 176
-- Name: descritor_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('descritor_id_seq', 1, false);


--
-- TOC entry 2018 (class 0 OID 16543)
-- Dependencies: 179 2031
-- Data for Name: excecao; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY excecao (id, descricao, identificador, id_servico) FROM stdin;
\.


--
-- TOC entry 2045 (class 0 OID 0)
-- Dependencies: 178
-- Name: excecao_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('excecao_id_seq', 1, false);


--
-- TOC entry 2020 (class 0 OID 16551)
-- Dependencies: 181 2031
-- Data for Name: orgao; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY orgao (id, nome) FROM stdin;
1	SERPRO
2	PRODEPA
3	TRT
4	TJE
\.


--
-- TOC entry 2046 (class 0 OID 0)
-- Dependencies: 180
-- Name: orgao_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('orgao_id_seq', 1, false);


--
-- TOC entry 2022 (class 0 OID 16559)
-- Dependencies: 183 2031
-- Data for Name: papel; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY papel (id, descricao) FROM stdin;
2	MANAGER
3	GUEST
1	ADMINISTRATOR
\.


--
-- TOC entry 2047 (class 0 OID 0)
-- Dependencies: 182
-- Name: papel_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('papel_id_seq', 1, false);


--
-- TOC entry 2024 (class 0 OID 16567)
-- Dependencies: 185 2031
-- Data for Name: servico; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY servico (id, nome, wsdl_link, id_descritor) FROM stdin;
1	buscarOrgaos	\N	1
2	buscarEstados	\N	1
3	buscarMunicipios	\N	1
4	buscarPF	\N	1
5	buscarPF	\N	1
6	buscarPais	\N	1
\.


--
-- TOC entry 2048 (class 0 OID 0)
-- Dependencies: 184
-- Name: servico_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('servico_id_seq', 1, false);


--
-- TOC entry 2026 (class 0 OID 16578)
-- Dependencies: 187 2031
-- Data for Name: sistema; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY sistema (id, nome, id_orgao) FROM stdin;
1	Governo Digital	2
\.


--
-- TOC entry 2049 (class 0 OID 0)
-- Dependencies: 186
-- Name: sistema_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('sistema_id_seq', 1, false);


--
-- TOC entry 2028 (class 0 OID 16586)
-- Dependencies: 189 2031
-- Data for Name: tag; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY tag (id, tag, id_descritor) FROM stdin;
1	municipio	1
2	orgao	1
3	estado	1
\.


--
-- TOC entry 2050 (class 0 OID 0)
-- Dependencies: 188
-- Name: tag_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('tag_id_seq', 3, true);


--
-- TOC entry 2029 (class 0 OID 16592)
-- Dependencies: 190 2031
-- Data for Name: usuario; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY usuario (id, nome, senha, usuario, id_orgao) FROM stdin;
1	System Admininstrator	e10adc3949ba59abbe56e057f20f883e	admin	1
2	Guest User	e10adc3949ba59abbe56e057f20f883e	guest	1
3	System Manager	e10adc3949ba59abbe56e057f20f883e	manager	1
4	thiago Soares	48772a0046f9ee8e0531bba30f280005	thiago.soares	1
5	Paulo Gladson	e10adc3949ba59abbe56e057f20f883e	paulogladson	1
\.


--
-- TOC entry 2030 (class 0 OID 16597)
-- Dependencies: 191 2031
-- Data for Name: usuario_papel; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY usuario_papel (id_usuario, id_papel) FROM stdin;
1	1
2	2
3	3
5	1
5	2
\.


--
-- TOC entry 1985 (class 2606 OID 16532)
-- Dependencies: 175 175 2032
-- Name: atributo_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY atributo
    ADD CONSTRAINT atributo_pkey PRIMARY KEY (id);


--
-- TOC entry 1987 (class 2606 OID 16540)
-- Dependencies: 177 177 2032
-- Name: descritor_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY descritor
    ADD CONSTRAINT descritor_pkey PRIMARY KEY (id);


--
-- TOC entry 1989 (class 2606 OID 16548)
-- Dependencies: 179 179 2032
-- Name: excecao_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY excecao
    ADD CONSTRAINT excecao_pkey PRIMARY KEY (id);


--
-- TOC entry 1991 (class 2606 OID 16556)
-- Dependencies: 181 181 2032
-- Name: orgao_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY orgao
    ADD CONSTRAINT orgao_pkey PRIMARY KEY (id);


--
-- TOC entry 1993 (class 2606 OID 16564)
-- Dependencies: 183 183 2032
-- Name: papel_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY papel
    ADD CONSTRAINT papel_pkey PRIMARY KEY (id);


--
-- TOC entry 2003 (class 2606 OID 16646)
-- Dependencies: 191 191 191 2032
-- Name: pk_papel_usuario; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario_papel
    ADD CONSTRAINT pk_papel_usuario PRIMARY KEY (id_usuario, id_papel);


--
-- TOC entry 1995 (class 2606 OID 16575)
-- Dependencies: 185 185 2032
-- Name: servico_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY servico
    ADD CONSTRAINT servico_pkey PRIMARY KEY (id);


--
-- TOC entry 1997 (class 2606 OID 16583)
-- Dependencies: 187 187 2032
-- Name: sistema_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sistema
    ADD CONSTRAINT sistema_pkey PRIMARY KEY (id);


--
-- TOC entry 1999 (class 2606 OID 16591)
-- Dependencies: 189 189 2032
-- Name: tag_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tag
    ADD CONSTRAINT tag_pkey PRIMARY KEY (id);


--
-- TOC entry 2001 (class 2606 OID 16596)
-- Dependencies: 190 190 2032
-- Name: usuario_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 2006 (class 2606 OID 16610)
-- Dependencies: 179 185 1994 2032
-- Name: fk1476033c3f0429cb; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY excecao
    ADD CONSTRAINT fk1476033c3f0429cb FOREIGN KEY (id_servico) REFERENCES servico(id);


--
-- TOC entry 2009 (class 2606 OID 16625)
-- Dependencies: 189 177 1986 2032
-- Name: fk1477a58938cab; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY tag
    ADD CONSTRAINT fk1477a58938cab FOREIGN KEY (id_descritor) REFERENCES descritor(id);


--
-- TOC entry 2004 (class 2606 OID 16600)
-- Dependencies: 1994 175 185 2032
-- Name: fk20fdaad83f0429cb; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY atributo
    ADD CONSTRAINT fk20fdaad83f0429cb FOREIGN KEY (id_servico) REFERENCES servico(id);


--
-- TOC entry 2012 (class 2606 OID 16640)
-- Dependencies: 191 1992 183 2032
-- Name: fk4d25cd3542516e99; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY usuario_papel
    ADD CONSTRAINT fk4d25cd3542516e99 FOREIGN KEY (id_papel) REFERENCES papel(id);


--
-- TOC entry 2011 (class 2606 OID 16635)
-- Dependencies: 191 2000 190 2032
-- Name: fk4d25cd3542a682a9; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY usuario_papel
    ADD CONSTRAINT fk4d25cd3542a682a9 FOREIGN KEY (id_usuario) REFERENCES usuario(id);


--
-- TOC entry 2010 (class 2606 OID 16630)
-- Dependencies: 1990 190 181 2032
-- Name: fk5b4d8b0e42446fb1; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT fk5b4d8b0e42446fb1 FOREIGN KEY (id_orgao) REFERENCES orgao(id);


--
-- TOC entry 2005 (class 2606 OID 16605)
-- Dependencies: 177 1996 187 2032
-- Name: fkd0d887af4cc53091; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY descritor
    ADD CONSTRAINT fkd0d887af4cc53091 FOREIGN KEY (id_sistema) REFERENCES sistema(id);


--
-- TOC entry 2007 (class 2606 OID 16615)
-- Dependencies: 177 185 1986 2032
-- Name: fkd97c5e9f58938cab; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY servico
    ADD CONSTRAINT fkd97c5e9f58938cab FOREIGN KEY (id_descritor) REFERENCES descritor(id);


--
-- TOC entry 2008 (class 2606 OID 16620)
-- Dependencies: 187 181 1990 2032
-- Name: fke05ce20242446fb1; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY sistema
    ADD CONSTRAINT fke05ce20242446fb1 FOREIGN KEY (id_orgao) REFERENCES orgao(id);


-- Completed on 2013-07-02 23:46:40 BRT

--
-- PostgreSQL database dump complete
--

