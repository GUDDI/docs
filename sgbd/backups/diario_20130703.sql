--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.9
-- Dumped by pg_dump version 9.1.9
-- Started on 2013-07-03 23:51:01 BRT

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 6 (class 2615 OID 16524)
-- Name: guddi; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA guddi;


ALTER SCHEMA guddi OWNER TO postgres;

--
-- TOC entry 182 (class 3079 OID 11681)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2018 (class 0 OID 0)
-- Dependencies: 182
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = guddi, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 162 (class 1259 OID 16527)
-- Dependencies: 6
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
-- TOC entry 161 (class 1259 OID 16525)
-- Dependencies: 162 6
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
-- TOC entry 2019 (class 0 OID 0)
-- Dependencies: 161
-- Name: atributo_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE atributo_id_seq OWNED BY atributo.id;


--
-- TOC entry 164 (class 1259 OID 16535)
-- Dependencies: 6
-- Name: descritor; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE descritor (
    id bigint NOT NULL,
    descricao character varying(100),
    id_sistema bigint
);


ALTER TABLE guddi.descritor OWNER TO postgres;

--
-- TOC entry 163 (class 1259 OID 16533)
-- Dependencies: 6 164
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
-- TOC entry 2020 (class 0 OID 0)
-- Dependencies: 163
-- Name: descritor_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE descritor_id_seq OWNED BY descritor.id;


--
-- TOC entry 178 (class 1259 OID 16668)
-- Dependencies: 6
-- Name: descritor_tag; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE descritor_tag (
    id_descritor bigint NOT NULL,
    id_tag bigint NOT NULL
);


ALTER TABLE guddi.descritor_tag OWNER TO postgres;

--
-- TOC entry 166 (class 1259 OID 16543)
-- Dependencies: 6
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
-- TOC entry 165 (class 1259 OID 16541)
-- Dependencies: 6 166
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
-- TOC entry 2021 (class 0 OID 0)
-- Dependencies: 165
-- Name: excecao_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE excecao_id_seq OWNED BY excecao.id;


--
-- TOC entry 181 (class 1259 OID 16744)
-- Dependencies: 6
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: guddi; Owner: postgres
--

CREATE SEQUENCE hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE guddi.hibernate_sequence OWNER TO postgres;

--
-- TOC entry 168 (class 1259 OID 16551)
-- Dependencies: 6
-- Name: orgao; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE orgao (
    id bigint NOT NULL,
    nome character varying(50)
);


ALTER TABLE guddi.orgao OWNER TO postgres;

--
-- TOC entry 167 (class 1259 OID 16549)
-- Dependencies: 168 6
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
-- TOC entry 2022 (class 0 OID 0)
-- Dependencies: 167
-- Name: orgao_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE orgao_id_seq OWNED BY orgao.id;


--
-- TOC entry 170 (class 1259 OID 16559)
-- Dependencies: 6
-- Name: papel; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE papel (
    id bigint NOT NULL,
    descricao character varying(20)
);


ALTER TABLE guddi.papel OWNER TO postgres;

--
-- TOC entry 169 (class 1259 OID 16557)
-- Dependencies: 170 6
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
-- TOC entry 2023 (class 0 OID 0)
-- Dependencies: 169
-- Name: papel_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE papel_id_seq OWNED BY papel.id;


--
-- TOC entry 179 (class 1259 OID 16671)
-- Dependencies: 6
-- Name: recurso; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE recurso (
    id bigint NOT NULL,
    nome character varying(50)
);


ALTER TABLE guddi.recurso OWNER TO postgres;

--
-- TOC entry 172 (class 1259 OID 16567)
-- Dependencies: 6
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
-- TOC entry 171 (class 1259 OID 16565)
-- Dependencies: 172 6
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
-- TOC entry 2024 (class 0 OID 0)
-- Dependencies: 171
-- Name: servico_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE servico_id_seq OWNED BY servico.id;


--
-- TOC entry 174 (class 1259 OID 16578)
-- Dependencies: 6
-- Name: sistema; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE sistema (
    id bigint NOT NULL,
    nome character varying(20),
    id_orgao bigint
);


ALTER TABLE guddi.sistema OWNER TO postgres;

--
-- TOC entry 173 (class 1259 OID 16576)
-- Dependencies: 174 6
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
-- TOC entry 2025 (class 0 OID 0)
-- Dependencies: 173
-- Name: sistema_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE sistema_id_seq OWNED BY sistema.id;


--
-- TOC entry 176 (class 1259 OID 16586)
-- Dependencies: 6
-- Name: tag; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE tag (
    id bigint NOT NULL,
    tag character varying(15),
    id_descritor bigint
);


ALTER TABLE guddi.tag OWNER TO postgres;

--
-- TOC entry 175 (class 1259 OID 16584)
-- Dependencies: 6 176
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
-- TOC entry 2026 (class 0 OID 0)
-- Dependencies: 175
-- Name: tag_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE tag_id_seq OWNED BY tag.id;


--
-- TOC entry 180 (class 1259 OID 16717)
-- Dependencies: 6
-- Name: usuario; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE usuario (
    id bigint NOT NULL,
    nome character varying(50),
    senha character varying(32),
    usuario character varying(15),
    id_orgao bigint,
    id_papel bigint
);


ALTER TABLE guddi.usuario OWNER TO postgres;

--
-- TOC entry 177 (class 1259 OID 16658)
-- Dependencies: 6
-- Name: usuario_recursos; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE usuario_recursos (
    id_usuario bigint NOT NULL,
    recursos integer NOT NULL,
    operacao integer NOT NULL
);


ALTER TABLE guddi.usuario_recursos OWNER TO postgres;

--
-- TOC entry 1949 (class 2604 OID 16674)
-- Dependencies: 162 161 162
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY atributo ALTER COLUMN id SET DEFAULT nextval('atributo_id_seq'::regclass);


--
-- TOC entry 1950 (class 2604 OID 16675)
-- Dependencies: 163 164 164
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY descritor ALTER COLUMN id SET DEFAULT nextval('descritor_id_seq'::regclass);


--
-- TOC entry 1951 (class 2604 OID 16676)
-- Dependencies: 166 165 166
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY excecao ALTER COLUMN id SET DEFAULT nextval('excecao_id_seq'::regclass);


--
-- TOC entry 1952 (class 2604 OID 16677)
-- Dependencies: 167 168 168
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY orgao ALTER COLUMN id SET DEFAULT nextval('orgao_id_seq'::regclass);


--
-- TOC entry 1953 (class 2604 OID 16678)
-- Dependencies: 169 170 170
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY papel ALTER COLUMN id SET DEFAULT nextval('papel_id_seq'::regclass);


--
-- TOC entry 1954 (class 2604 OID 16679)
-- Dependencies: 171 172 172
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY servico ALTER COLUMN id SET DEFAULT nextval('servico_id_seq'::regclass);


--
-- TOC entry 1955 (class 2604 OID 16680)
-- Dependencies: 173 174 174
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY sistema ALTER COLUMN id SET DEFAULT nextval('sistema_id_seq'::regclass);


--
-- TOC entry 1956 (class 2604 OID 16681)
-- Dependencies: 175 176 176
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY tag ALTER COLUMN id SET DEFAULT nextval('tag_id_seq'::regclass);


--
-- TOC entry 1993 (class 0 OID 16527)
-- Dependencies: 162 2013
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
-- TOC entry 2027 (class 0 OID 0)
-- Dependencies: 161
-- Name: atributo_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('atributo_id_seq', 6, true);


--
-- TOC entry 1995 (class 0 OID 16535)
-- Dependencies: 164 2013
-- Data for Name: descritor; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY descritor (id, descricao, id_sistema) FROM stdin;
1	Dominio NucleoPA	1
\.


--
-- TOC entry 2028 (class 0 OID 0)
-- Dependencies: 163
-- Name: descritor_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('descritor_id_seq', 1, false);


--
-- TOC entry 2009 (class 0 OID 16668)
-- Dependencies: 178 2013
-- Data for Name: descritor_tag; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY descritor_tag (id_descritor, id_tag) FROM stdin;
1	1
1	2
1	3
\.


--
-- TOC entry 1997 (class 0 OID 16543)
-- Dependencies: 166 2013
-- Data for Name: excecao; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY excecao (id, descricao, identificador, id_servico) FROM stdin;
\.


--
-- TOC entry 2029 (class 0 OID 0)
-- Dependencies: 165
-- Name: excecao_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('excecao_id_seq', 1, false);


--
-- TOC entry 2030 (class 0 OID 0)
-- Dependencies: 181
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('hibernate_sequence', 1, false);


--
-- TOC entry 1999 (class 0 OID 16551)
-- Dependencies: 168 2013
-- Data for Name: orgao; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY orgao (id, nome) FROM stdin;
1	SERPRO
2	PRODEPA
3	TRT
4	TJE
\.


--
-- TOC entry 2031 (class 0 OID 0)
-- Dependencies: 167
-- Name: orgao_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('orgao_id_seq', 5, true);


--
-- TOC entry 2001 (class 0 OID 16559)
-- Dependencies: 170 2013
-- Data for Name: papel; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY papel (id, descricao) FROM stdin;
2	MANAGER
4	ADMINISTRATOR
1	GUEST
\.


--
-- TOC entry 2032 (class 0 OID 0)
-- Dependencies: 169
-- Name: papel_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('papel_id_seq', 16, true);


--
-- TOC entry 2010 (class 0 OID 16671)
-- Dependencies: 179 2013
-- Data for Name: recurso; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY recurso (id, nome) FROM stdin;
\.


--
-- TOC entry 2003 (class 0 OID 16567)
-- Dependencies: 172 2013
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
-- TOC entry 2033 (class 0 OID 0)
-- Dependencies: 171
-- Name: servico_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('servico_id_seq', 1, false);


--
-- TOC entry 2005 (class 0 OID 16578)
-- Dependencies: 174 2013
-- Data for Name: sistema; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY sistema (id, nome, id_orgao) FROM stdin;
1	Governo Digital	2
\.


--
-- TOC entry 2034 (class 0 OID 0)
-- Dependencies: 173
-- Name: sistema_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('sistema_id_seq', 1, false);


--
-- TOC entry 2007 (class 0 OID 16586)
-- Dependencies: 176 2013
-- Data for Name: tag; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY tag (id, tag, id_descritor) FROM stdin;
1	municipio	1
2	orgao	1
3	estado	1
\.


--
-- TOC entry 2035 (class 0 OID 0)
-- Dependencies: 175
-- Name: tag_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('tag_id_seq', 6, true);


--
-- TOC entry 2011 (class 0 OID 16717)
-- Dependencies: 180 2013
-- Data for Name: usuario; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY usuario (id, nome, senha, usuario, id_orgao, id_papel) FROM stdin;
1	System Admininstrator	e10adc3949ba59abbe56e057f20f883e	admin	1	4
2	Guest User	e10adc3949ba59abbe56e057f20f883e	guest	1	1
3	System Manager	e10adc3949ba59abbe56e057f20f883e	manager	1	2
\.


--
-- TOC entry 2008 (class 0 OID 16658)
-- Dependencies: 177 2013
-- Data for Name: usuario_recursos; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY usuario_recursos (id_usuario, recursos, operacao) FROM stdin;
\.


--
-- TOC entry 1958 (class 2606 OID 16532)
-- Dependencies: 162 162 2014
-- Name: atributo_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY atributo
    ADD CONSTRAINT atributo_pkey PRIMARY KEY (id);


--
-- TOC entry 1960 (class 2606 OID 16540)
-- Dependencies: 164 164 2014
-- Name: descritor_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY descritor
    ADD CONSTRAINT descritor_pkey PRIMARY KEY (id);


--
-- TOC entry 1962 (class 2606 OID 16548)
-- Dependencies: 166 166 2014
-- Name: excecao_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY excecao
    ADD CONSTRAINT excecao_pkey PRIMARY KEY (id);


--
-- TOC entry 1964 (class 2606 OID 16556)
-- Dependencies: 168 168 2014
-- Name: orgao_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY orgao
    ADD CONSTRAINT orgao_pkey PRIMARY KEY (id);


--
-- TOC entry 1966 (class 2606 OID 16564)
-- Dependencies: 170 170 2014
-- Name: papel_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY papel
    ADD CONSTRAINT papel_pkey PRIMARY KEY (id);


--
-- TOC entry 1976 (class 2606 OID 16683)
-- Dependencies: 178 178 178 2014
-- Name: pk_descritor_tag; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY descritor_tag
    ADD CONSTRAINT pk_descritor_tag PRIMARY KEY (id_descritor, id_tag);


--
-- TOC entry 1974 (class 2606 OID 16662)
-- Dependencies: 177 177 177 2014
-- Name: pk_usuario_recursos; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario_recursos
    ADD CONSTRAINT pk_usuario_recursos PRIMARY KEY (id_usuario, recursos);


--
-- TOC entry 1978 (class 2606 OID 16685)
-- Dependencies: 179 179 2014
-- Name: recurso_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY recurso
    ADD CONSTRAINT recurso_pkey PRIMARY KEY (id);


--
-- TOC entry 1968 (class 2606 OID 16575)
-- Dependencies: 172 172 2014
-- Name: servico_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY servico
    ADD CONSTRAINT servico_pkey PRIMARY KEY (id);


--
-- TOC entry 1970 (class 2606 OID 16583)
-- Dependencies: 174 174 2014
-- Name: sistema_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sistema
    ADD CONSTRAINT sistema_pkey PRIMARY KEY (id);


--
-- TOC entry 1972 (class 2606 OID 16591)
-- Dependencies: 176 176 2014
-- Name: tag_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tag
    ADD CONSTRAINT tag_pkey PRIMARY KEY (id);


--
-- TOC entry 1981 (class 2606 OID 16721)
-- Dependencies: 180 180 2014
-- Name: usuario_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 1979 (class 1259 OID 16738)
-- Dependencies: 180 2014
-- Name: fki_usuario_papel; Type: INDEX; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE INDEX fki_usuario_papel ON usuario USING btree (id_papel);


--
-- TOC entry 1984 (class 2606 OID 16610)
-- Dependencies: 1967 172 166 2014
-- Name: fk1476033c3f0429cb; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY excecao
    ADD CONSTRAINT fk1476033c3f0429cb FOREIGN KEY (id_servico) REFERENCES servico(id);


--
-- TOC entry 1987 (class 2606 OID 16625)
-- Dependencies: 176 164 1959 2014
-- Name: fk1477a58938cab; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY tag
    ADD CONSTRAINT fk1477a58938cab FOREIGN KEY (id_descritor) REFERENCES descritor(id);


--
-- TOC entry 1982 (class 2606 OID 16600)
-- Dependencies: 1967 162 172 2014
-- Name: fk20fdaad83f0429cb; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY atributo
    ADD CONSTRAINT fk20fdaad83f0429cb FOREIGN KEY (id_servico) REFERENCES servico(id);


--
-- TOC entry 1990 (class 2606 OID 16722)
-- Dependencies: 1963 180 168 2014
-- Name: fk5b4d8b0e42446fb1; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT fk5b4d8b0e42446fb1 FOREIGN KEY (id_orgao) REFERENCES orgao(id);


--
-- TOC entry 1991 (class 2606 OID 16739)
-- Dependencies: 1965 170 180 2014
-- Name: fk_usuario_papel; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT fk_usuario_papel FOREIGN KEY (id_papel) REFERENCES papel(id);


--
-- TOC entry 1983 (class 2606 OID 16605)
-- Dependencies: 1969 174 164 2014
-- Name: fkd0d887af4cc53091; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY descritor
    ADD CONSTRAINT fkd0d887af4cc53091 FOREIGN KEY (id_sistema) REFERENCES sistema(id);


--
-- TOC entry 1985 (class 2606 OID 16615)
-- Dependencies: 1959 172 164 2014
-- Name: fkd97c5e9f58938cab; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY servico
    ADD CONSTRAINT fkd97c5e9f58938cab FOREIGN KEY (id_descritor) REFERENCES descritor(id);


--
-- TOC entry 1986 (class 2606 OID 16620)
-- Dependencies: 1963 168 174 2014
-- Name: fke05ce20242446fb1; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY sistema
    ADD CONSTRAINT fke05ce20242446fb1 FOREIGN KEY (id_orgao) REFERENCES orgao(id);


--
-- TOC entry 1988 (class 2606 OID 16686)
-- Dependencies: 178 1959 164 2014
-- Name: id_descritor; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY descritor_tag
    ADD CONSTRAINT id_descritor FOREIGN KEY (id_descritor) REFERENCES descritor(id);


--
-- TOC entry 1989 (class 2606 OID 16691)
-- Dependencies: 178 1971 176 2014
-- Name: id_tag; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY descritor_tag
    ADD CONSTRAINT id_tag FOREIGN KEY (id_tag) REFERENCES tag(id);


-- Completed on 2013-07-03 23:51:02 BRT

--
-- PostgreSQL database dump complete
--

