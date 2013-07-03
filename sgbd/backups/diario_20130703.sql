--
-- PostgreSQL database dump
--

-- Started on 2013-07-03 17:49:37 BRT

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- TOC entry 6 (class 2615 OID 55381)
-- Name: guddi; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA guddi;


ALTER SCHEMA guddi OWNER TO postgres;

SET search_path = guddi, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 143 (class 1259 OID 55481)
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
-- TOC entry 142 (class 1259 OID 55479)
-- Dependencies: 143 6
-- Name: atributo_id_seq; Type: SEQUENCE; Schema: guddi; Owner: postgres
--

CREATE SEQUENCE atributo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE guddi.atributo_id_seq OWNER TO postgres;

--
-- TOC entry 1906 (class 0 OID 0)
-- Dependencies: 142
-- Name: atributo_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE atributo_id_seq OWNED BY atributo.id;


--
-- TOC entry 1907 (class 0 OID 0)
-- Dependencies: 142
-- Name: atributo_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('atributo_id_seq', 6, true);


--
-- TOC entry 145 (class 1259 OID 55489)
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
-- TOC entry 144 (class 1259 OID 55487)
-- Dependencies: 145 6
-- Name: descritor_id_seq; Type: SEQUENCE; Schema: guddi; Owner: postgres
--

CREATE SEQUENCE descritor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE guddi.descritor_id_seq OWNER TO postgres;

--
-- TOC entry 1908 (class 0 OID 0)
-- Dependencies: 144
-- Name: descritor_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE descritor_id_seq OWNED BY descritor.id;


--
-- TOC entry 1909 (class 0 OID 0)
-- Dependencies: 144
-- Name: descritor_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('descritor_id_seq', 1, false);


--
-- TOC entry 162 (class 1259 OID 55622)
-- Dependencies: 6
-- Name: descritor_tag; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE descritor_tag (
    id_descritor bigint NOT NULL,
    id_tag bigint NOT NULL
);


ALTER TABLE guddi.descritor_tag OWNER TO postgres;

--
-- TOC entry 147 (class 1259 OID 55497)
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
-- TOC entry 146 (class 1259 OID 55495)
-- Dependencies: 6 147
-- Name: excecao_id_seq; Type: SEQUENCE; Schema: guddi; Owner: postgres
--

CREATE SEQUENCE excecao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE guddi.excecao_id_seq OWNER TO postgres;

--
-- TOC entry 1910 (class 0 OID 0)
-- Dependencies: 146
-- Name: excecao_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE excecao_id_seq OWNED BY excecao.id;


--
-- TOC entry 1911 (class 0 OID 0)
-- Dependencies: 146
-- Name: excecao_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('excecao_id_seq', 1, false);


--
-- TOC entry 149 (class 1259 OID 55505)
-- Dependencies: 6
-- Name: orgao; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE orgao (
    id bigint NOT NULL,
    nome character varying(50)
);


ALTER TABLE guddi.orgao OWNER TO postgres;

--
-- TOC entry 148 (class 1259 OID 55503)
-- Dependencies: 149 6
-- Name: orgao_id_seq; Type: SEQUENCE; Schema: guddi; Owner: postgres
--

CREATE SEQUENCE orgao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE guddi.orgao_id_seq OWNER TO postgres;

--
-- TOC entry 1912 (class 0 OID 0)
-- Dependencies: 148
-- Name: orgao_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE orgao_id_seq OWNED BY orgao.id;


--
-- TOC entry 1913 (class 0 OID 0)
-- Dependencies: 148
-- Name: orgao_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('orgao_id_seq', 5, true);


--
-- TOC entry 151 (class 1259 OID 55513)
-- Dependencies: 6
-- Name: papel; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE papel (
    id bigint NOT NULL,
    descricao character varying(20)
);


ALTER TABLE guddi.papel OWNER TO postgres;

--
-- TOC entry 150 (class 1259 OID 55511)
-- Dependencies: 6 151
-- Name: papel_id_seq; Type: SEQUENCE; Schema: guddi; Owner: postgres
--

CREATE SEQUENCE papel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE guddi.papel_id_seq OWNER TO postgres;

--
-- TOC entry 1914 (class 0 OID 0)
-- Dependencies: 150
-- Name: papel_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE papel_id_seq OWNED BY papel.id;


--
-- TOC entry 1915 (class 0 OID 0)
-- Dependencies: 150
-- Name: papel_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('papel_id_seq', 16, true);


--
-- TOC entry 163 (class 1259 OID 55660)
-- Dependencies: 6
-- Name: recurso; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE recurso (
    id bigint NOT NULL,
    nome character varying(50)
);


ALTER TABLE guddi.recurso OWNER TO postgres;

--
-- TOC entry 160 (class 1259 OID 55602)
-- Dependencies: 6
-- Name: recursos; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE recursos (
    id bigint NOT NULL,
    nome character varying(50)
);


ALTER TABLE guddi.recursos OWNER TO postgres;

--
-- TOC entry 153 (class 1259 OID 55521)
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
-- TOC entry 152 (class 1259 OID 55519)
-- Dependencies: 153 6
-- Name: servico_id_seq; Type: SEQUENCE; Schema: guddi; Owner: postgres
--

CREATE SEQUENCE servico_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE guddi.servico_id_seq OWNER TO postgres;

--
-- TOC entry 1916 (class 0 OID 0)
-- Dependencies: 152
-- Name: servico_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE servico_id_seq OWNED BY servico.id;


--
-- TOC entry 1917 (class 0 OID 0)
-- Dependencies: 152
-- Name: servico_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('servico_id_seq', 1, false);


--
-- TOC entry 155 (class 1259 OID 55532)
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
-- TOC entry 154 (class 1259 OID 55530)
-- Dependencies: 6 155
-- Name: sistema_id_seq; Type: SEQUENCE; Schema: guddi; Owner: postgres
--

CREATE SEQUENCE sistema_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE guddi.sistema_id_seq OWNER TO postgres;

--
-- TOC entry 1918 (class 0 OID 0)
-- Dependencies: 154
-- Name: sistema_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE sistema_id_seq OWNED BY sistema.id;


--
-- TOC entry 1919 (class 0 OID 0)
-- Dependencies: 154
-- Name: sistema_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('sistema_id_seq', 1, false);


--
-- TOC entry 157 (class 1259 OID 55540)
-- Dependencies: 6
-- Name: tag; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE tag (
    id bigint NOT NULL,
    tag character varying(15)
);


ALTER TABLE guddi.tag OWNER TO postgres;

--
-- TOC entry 156 (class 1259 OID 55538)
-- Dependencies: 157 6
-- Name: tag_id_seq; Type: SEQUENCE; Schema: guddi; Owner: postgres
--

CREATE SEQUENCE tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE guddi.tag_id_seq OWNER TO postgres;

--
-- TOC entry 1920 (class 0 OID 0)
-- Dependencies: 156
-- Name: tag_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE tag_id_seq OWNED BY tag.id;


--
-- TOC entry 1921 (class 0 OID 0)
-- Dependencies: 156
-- Name: tag_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('tag_id_seq', 6, true);


--
-- TOC entry 158 (class 1259 OID 55546)
-- Dependencies: 6
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
-- TOC entry 159 (class 1259 OID 55551)
-- Dependencies: 6
-- Name: usuario_papel; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE usuario_papel (
    id_usuario bigint NOT NULL,
    id_papel bigint NOT NULL
);


ALTER TABLE guddi.usuario_papel OWNER TO postgres;

--
-- TOC entry 161 (class 1259 OID 55607)
-- Dependencies: 6
-- Name: usuario_recursos; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE usuario_recursos (
    id_usuario bigint NOT NULL,
    recursos integer NOT NULL,
    operacao integer NOT NULL
);


ALTER TABLE guddi.usuario_recursos OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 141 (class 1259 OID 55475)
-- Dependencies: 3
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- TOC entry 1922 (class 0 OID 0)
-- Dependencies: 141
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('hibernate_sequence', 1, false);


SET search_path = guddi, pg_catalog;

--
-- TOC entry 1841 (class 2604 OID 55484)
-- Dependencies: 142 143 143
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY atributo ALTER COLUMN id SET DEFAULT nextval('atributo_id_seq'::regclass);


--
-- TOC entry 1842 (class 2604 OID 55492)
-- Dependencies: 144 145 145
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY descritor ALTER COLUMN id SET DEFAULT nextval('descritor_id_seq'::regclass);


--
-- TOC entry 1843 (class 2604 OID 55500)
-- Dependencies: 146 147 147
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY excecao ALTER COLUMN id SET DEFAULT nextval('excecao_id_seq'::regclass);


--
-- TOC entry 1844 (class 2604 OID 55508)
-- Dependencies: 149 148 149
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY orgao ALTER COLUMN id SET DEFAULT nextval('orgao_id_seq'::regclass);


--
-- TOC entry 1845 (class 2604 OID 55516)
-- Dependencies: 151 150 151
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY papel ALTER COLUMN id SET DEFAULT nextval('papel_id_seq'::regclass);


--
-- TOC entry 1846 (class 2604 OID 55524)
-- Dependencies: 153 152 153
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY servico ALTER COLUMN id SET DEFAULT nextval('servico_id_seq'::regclass);


--
-- TOC entry 1847 (class 2604 OID 55535)
-- Dependencies: 154 155 155
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY sistema ALTER COLUMN id SET DEFAULT nextval('sistema_id_seq'::regclass);


--
-- TOC entry 1848 (class 2604 OID 55543)
-- Dependencies: 157 156 157
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY tag ALTER COLUMN id SET DEFAULT nextval('tag_id_seq'::regclass);


--
-- TOC entry 1887 (class 0 OID 55481)
-- Dependencies: 143
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
-- TOC entry 1888 (class 0 OID 55489)
-- Dependencies: 145
-- Data for Name: descritor; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY descritor (id, descricao, id_sistema) FROM stdin;
1	Dominio NucleoPA	1
\.


--
-- TOC entry 1899 (class 0 OID 55622)
-- Dependencies: 162
-- Data for Name: descritor_tag; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY descritor_tag (id_descritor, id_tag) FROM stdin;
1	1
1	2
1	3
\.


--
-- TOC entry 1889 (class 0 OID 55497)
-- Dependencies: 147
-- Data for Name: excecao; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY excecao (id, descricao, identificador, id_servico) FROM stdin;
\.


--
-- TOC entry 1890 (class 0 OID 55505)
-- Dependencies: 149
-- Data for Name: orgao; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY orgao (id, nome) FROM stdin;
1	SERPRO
2	PRODEPA
3	TRT
4	TJE
\.


--
-- TOC entry 1891 (class 0 OID 55513)
-- Dependencies: 151
-- Data for Name: papel; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY papel (id, descricao) FROM stdin;
4	ADMINISTRATOR
2	MANAGER
1	USER
\.


--
-- TOC entry 1900 (class 0 OID 55660)
-- Dependencies: 163
-- Data for Name: recurso; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY recurso (id, nome) FROM stdin;
\.


--
-- TOC entry 1897 (class 0 OID 55602)
-- Dependencies: 160
-- Data for Name: recursos; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY recursos (id, nome) FROM stdin;
\.


--
-- TOC entry 1892 (class 0 OID 55521)
-- Dependencies: 153
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
-- TOC entry 1893 (class 0 OID 55532)
-- Dependencies: 155
-- Data for Name: sistema; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY sistema (id, nome, id_orgao) FROM stdin;
1	Governo Digital	2
\.


--
-- TOC entry 1894 (class 0 OID 55540)
-- Dependencies: 157
-- Data for Name: tag; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY tag (id, tag) FROM stdin;
1	municipio
2	orgao
3	estado
\.


--
-- TOC entry 1895 (class 0 OID 55546)
-- Dependencies: 158
-- Data for Name: usuario; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY usuario (id, nome, senha, usuario, id_orgao) FROM stdin;
1	System Admininstrator	e10adc3949ba59abbe56e057f20f883e	admin	1
2	Guest User	e10adc3949ba59abbe56e057f20f883e	guest	1
3	System Manager	e10adc3949ba59abbe56e057f20f883e	manager	1
4	thiago Soares	48772a0046f9ee8e0531bba30f280005	thiago.soares	1
\.


--
-- TOC entry 1896 (class 0 OID 55551)
-- Dependencies: 159
-- Data for Name: usuario_papel; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY usuario_papel (id_usuario, id_papel) FROM stdin;
1	4
2	1
3	2
\.


--
-- TOC entry 1898 (class 0 OID 55607)
-- Dependencies: 161
-- Data for Name: usuario_recursos; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY usuario_recursos (id_usuario, recursos, operacao) FROM stdin;
\.


--
-- TOC entry 1850 (class 2606 OID 55486)
-- Dependencies: 143 143
-- Name: atributo_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY atributo
    ADD CONSTRAINT atributo_pkey PRIMARY KEY (id);


--
-- TOC entry 1852 (class 2606 OID 55494)
-- Dependencies: 145 145
-- Name: descritor_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY descritor
    ADD CONSTRAINT descritor_pkey PRIMARY KEY (id);


--
-- TOC entry 1854 (class 2606 OID 55502)
-- Dependencies: 147 147
-- Name: excecao_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY excecao
    ADD CONSTRAINT excecao_pkey PRIMARY KEY (id);


--
-- TOC entry 1856 (class 2606 OID 55510)
-- Dependencies: 149 149
-- Name: orgao_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY orgao
    ADD CONSTRAINT orgao_pkey PRIMARY KEY (id);


--
-- TOC entry 1858 (class 2606 OID 55518)
-- Dependencies: 151 151
-- Name: papel_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY papel
    ADD CONSTRAINT papel_pkey PRIMARY KEY (id);


--
-- TOC entry 1874 (class 2606 OID 55654)
-- Dependencies: 162 162 162
-- Name: pk_descritor_tag; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY descritor_tag
    ADD CONSTRAINT pk_descritor_tag PRIMARY KEY (id_descritor, id_tag);


--
-- TOC entry 1868 (class 2606 OID 55615)
-- Dependencies: 159 159 159
-- Name: pk_usuario_papel; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario_papel
    ADD CONSTRAINT pk_usuario_papel PRIMARY KEY (id_usuario, id_papel);


--
-- TOC entry 1876 (class 2606 OID 55664)
-- Dependencies: 163 163
-- Name: recurso_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY recurso
    ADD CONSTRAINT recurso_pkey PRIMARY KEY (id);


--
-- TOC entry 1870 (class 2606 OID 55606)
-- Dependencies: 160 160
-- Name: recursos_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY recursos
    ADD CONSTRAINT recursos_pkey PRIMARY KEY (id);


--
-- TOC entry 1860 (class 2606 OID 55529)
-- Dependencies: 153 153
-- Name: servico_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY servico
    ADD CONSTRAINT servico_pkey PRIMARY KEY (id);


--
-- TOC entry 1862 (class 2606 OID 55537)
-- Dependencies: 155 155
-- Name: sistema_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sistema
    ADD CONSTRAINT sistema_pkey PRIMARY KEY (id);


--
-- TOC entry 1864 (class 2606 OID 55545)
-- Dependencies: 157 157
-- Name: tag_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tag
    ADD CONSTRAINT tag_pkey PRIMARY KEY (id);


--
-- TOC entry 1866 (class 2606 OID 55550)
-- Dependencies: 158 158
-- Name: usuario_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 1872 (class 2606 OID 55611)
-- Dependencies: 161 161 161
-- Name: usuario_recursos_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario_recursos
    ADD CONSTRAINT usuario_recursos_pkey PRIMARY KEY (id_usuario, recursos);


--
-- TOC entry 1879 (class 2606 OID 55564)
-- Dependencies: 1859 147 153
-- Name: fk1476033c3f0429cb; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY excecao
    ADD CONSTRAINT fk1476033c3f0429cb FOREIGN KEY (id_servico) REFERENCES servico(id);


--
-- TOC entry 1877 (class 2606 OID 55554)
-- Dependencies: 1859 153 143
-- Name: fk20fdaad83f0429cb; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY atributo
    ADD CONSTRAINT fk20fdaad83f0429cb FOREIGN KEY (id_servico) REFERENCES servico(id);


--
-- TOC entry 1884 (class 2606 OID 55594)
-- Dependencies: 159 1857 151
-- Name: fk4d25cd3542516e99; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY usuario_papel
    ADD CONSTRAINT fk4d25cd3542516e99 FOREIGN KEY (id_papel) REFERENCES papel(id);


--
-- TOC entry 1883 (class 2606 OID 55589)
-- Dependencies: 159 1865 158
-- Name: fk4d25cd3542a682a9; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY usuario_papel
    ADD CONSTRAINT fk4d25cd3542a682a9 FOREIGN KEY (id_usuario) REFERENCES usuario(id);


--
-- TOC entry 1882 (class 2606 OID 55584)
-- Dependencies: 149 1855 158
-- Name: fk5b4d8b0e42446fb1; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT fk5b4d8b0e42446fb1 FOREIGN KEY (id_orgao) REFERENCES orgao(id);


--
-- TOC entry 1878 (class 2606 OID 55559)
-- Dependencies: 155 145 1861
-- Name: fkd0d887af4cc53091; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY descritor
    ADD CONSTRAINT fkd0d887af4cc53091 FOREIGN KEY (id_sistema) REFERENCES sistema(id);


--
-- TOC entry 1880 (class 2606 OID 55569)
-- Dependencies: 1851 153 145
-- Name: fkd97c5e9f58938cab; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY servico
    ADD CONSTRAINT fkd97c5e9f58938cab FOREIGN KEY (id_descritor) REFERENCES descritor(id);


--
-- TOC entry 1881 (class 2606 OID 55574)
-- Dependencies: 155 149 1855
-- Name: fke05ce20242446fb1; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY sistema
    ADD CONSTRAINT fke05ce20242446fb1 FOREIGN KEY (id_orgao) REFERENCES orgao(id);


--
-- TOC entry 1885 (class 2606 OID 55635)
-- Dependencies: 1851 162 145
-- Name: id_descritor; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY descritor_tag
    ADD CONSTRAINT id_descritor FOREIGN KEY (id_descritor) REFERENCES descritor(id);


--
-- TOC entry 1886 (class 2606 OID 55643)
-- Dependencies: 1863 157 162
-- Name: id_tag; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY descritor_tag
    ADD CONSTRAINT id_tag FOREIGN KEY (id_tag) REFERENCES tag(id);


--
-- TOC entry 1905 (class 0 OID 0)
-- Dependencies: 3
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2013-07-03 17:49:38 BRT

--
-- PostgreSQL database dump complete
--

