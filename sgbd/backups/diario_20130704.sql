--
-- PostgreSQL database dump
--

-- Started on 2013-07-04 10:19:50 BRT

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- TOC entry 5 (class 2615 OID 55810)
-- Name: guddi; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA guddi;


ALTER SCHEMA guddi OWNER TO postgres;

SET search_path = guddi, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 141 (class 1259 OID 55811)
-- Dependencies: 5
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
-- TOC entry 142 (class 1259 OID 55814)
-- Dependencies: 5 141
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
-- TOC entry 1898 (class 0 OID 0)
-- Dependencies: 142
-- Name: atributo_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE atributo_id_seq OWNED BY atributo.id;


--
-- TOC entry 1899 (class 0 OID 0)
-- Dependencies: 142
-- Name: atributo_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('atributo_id_seq', 6, true);


--
-- TOC entry 143 (class 1259 OID 55816)
-- Dependencies: 5
-- Name: descritor; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE descritor (
    id bigint NOT NULL,
    descricao character varying(100),
    id_sistema bigint
);


ALTER TABLE guddi.descritor OWNER TO postgres;

--
-- TOC entry 144 (class 1259 OID 55819)
-- Dependencies: 143 5
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
-- TOC entry 1900 (class 0 OID 0)
-- Dependencies: 144
-- Name: descritor_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE descritor_id_seq OWNED BY descritor.id;


--
-- TOC entry 1901 (class 0 OID 0)
-- Dependencies: 144
-- Name: descritor_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('descritor_id_seq', 1, false);


--
-- TOC entry 145 (class 1259 OID 55821)
-- Dependencies: 5
-- Name: descritor_tag; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE descritor_tag (
    id_descritor bigint NOT NULL,
    id_tag bigint NOT NULL
);


ALTER TABLE guddi.descritor_tag OWNER TO postgres;

--
-- TOC entry 146 (class 1259 OID 55824)
-- Dependencies: 5
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
-- TOC entry 147 (class 1259 OID 55827)
-- Dependencies: 5 146
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
-- TOC entry 1902 (class 0 OID 0)
-- Dependencies: 147
-- Name: excecao_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE excecao_id_seq OWNED BY excecao.id;


--
-- TOC entry 1903 (class 0 OID 0)
-- Dependencies: 147
-- Name: excecao_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('excecao_id_seq', 1, false);


--
-- TOC entry 148 (class 1259 OID 55829)
-- Dependencies: 5
-- Name: orgao; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE orgao (
    id bigint NOT NULL,
    nome character varying(50)
);


ALTER TABLE guddi.orgao OWNER TO postgres;

--
-- TOC entry 149 (class 1259 OID 55832)
-- Dependencies: 148 5
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
-- TOC entry 1904 (class 0 OID 0)
-- Dependencies: 149
-- Name: orgao_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE orgao_id_seq OWNED BY orgao.id;


--
-- TOC entry 1905 (class 0 OID 0)
-- Dependencies: 149
-- Name: orgao_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('orgao_id_seq', 5, true);


--
-- TOC entry 150 (class 1259 OID 55834)
-- Dependencies: 5
-- Name: papel; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE papel (
    id bigint NOT NULL,
    descricao character varying(20)
);


ALTER TABLE guddi.papel OWNER TO postgres;

--
-- TOC entry 151 (class 1259 OID 55837)
-- Dependencies: 150 5
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
-- TOC entry 1906 (class 0 OID 0)
-- Dependencies: 151
-- Name: papel_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE papel_id_seq OWNED BY papel.id;


--
-- TOC entry 1907 (class 0 OID 0)
-- Dependencies: 151
-- Name: papel_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('papel_id_seq', 16, true);


--
-- TOC entry 152 (class 1259 OID 55839)
-- Dependencies: 5
-- Name: recurso; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE recurso (
    id bigint NOT NULL,
    nome character varying(50)
);


ALTER TABLE guddi.recurso OWNER TO postgres;

--
-- TOC entry 153 (class 1259 OID 55842)
-- Dependencies: 5
-- Name: recursos; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE recursos (
    id bigint NOT NULL,
    nome character varying(50)
);


ALTER TABLE guddi.recursos OWNER TO postgres;

--
-- TOC entry 154 (class 1259 OID 55845)
-- Dependencies: 5
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
-- TOC entry 155 (class 1259 OID 55851)
-- Dependencies: 5 154
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
-- TOC entry 1908 (class 0 OID 0)
-- Dependencies: 155
-- Name: servico_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE servico_id_seq OWNED BY servico.id;


--
-- TOC entry 1909 (class 0 OID 0)
-- Dependencies: 155
-- Name: servico_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('servico_id_seq', 1, false);


--
-- TOC entry 156 (class 1259 OID 55853)
-- Dependencies: 5
-- Name: sistema; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE sistema (
    id bigint NOT NULL,
    nome character varying(20),
    id_orgao bigint
);


ALTER TABLE guddi.sistema OWNER TO postgres;

--
-- TOC entry 157 (class 1259 OID 55856)
-- Dependencies: 5 156
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
-- TOC entry 1910 (class 0 OID 0)
-- Dependencies: 157
-- Name: sistema_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE sistema_id_seq OWNED BY sistema.id;


--
-- TOC entry 1911 (class 0 OID 0)
-- Dependencies: 157
-- Name: sistema_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('sistema_id_seq', 1, false);


--
-- TOC entry 158 (class 1259 OID 55858)
-- Dependencies: 5
-- Name: tag; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE tag (
    id bigint NOT NULL,
    tag character varying(15)
);


ALTER TABLE guddi.tag OWNER TO postgres;

--
-- TOC entry 159 (class 1259 OID 55861)
-- Dependencies: 5 158
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
-- TOC entry 1912 (class 0 OID 0)
-- Dependencies: 159
-- Name: tag_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE tag_id_seq OWNED BY tag.id;


--
-- TOC entry 1913 (class 0 OID 0)
-- Dependencies: 159
-- Name: tag_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('tag_id_seq', 6, true);


--
-- TOC entry 160 (class 1259 OID 55863)
-- Dependencies: 5
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
-- TOC entry 161 (class 1259 OID 55869)
-- Dependencies: 5
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
-- TOC entry 162 (class 1259 OID 55872)
-- Dependencies: 7
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
-- TOC entry 1914 (class 0 OID 0)
-- Dependencies: 162
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('hibernate_sequence', 1, false);


SET search_path = guddi, pg_catalog;

--
-- TOC entry 1837 (class 2604 OID 55874)
-- Dependencies: 142 141
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY atributo ALTER COLUMN id SET DEFAULT nextval('atributo_id_seq'::regclass);


--
-- TOC entry 1838 (class 2604 OID 55875)
-- Dependencies: 144 143
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY descritor ALTER COLUMN id SET DEFAULT nextval('descritor_id_seq'::regclass);


--
-- TOC entry 1839 (class 2604 OID 55876)
-- Dependencies: 147 146
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY excecao ALTER COLUMN id SET DEFAULT nextval('excecao_id_seq'::regclass);


--
-- TOC entry 1840 (class 2604 OID 55877)
-- Dependencies: 149 148
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY orgao ALTER COLUMN id SET DEFAULT nextval('orgao_id_seq'::regclass);


--
-- TOC entry 1841 (class 2604 OID 55878)
-- Dependencies: 151 150
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY papel ALTER COLUMN id SET DEFAULT nextval('papel_id_seq'::regclass);


--
-- TOC entry 1842 (class 2604 OID 55879)
-- Dependencies: 155 154
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY servico ALTER COLUMN id SET DEFAULT nextval('servico_id_seq'::regclass);


--
-- TOC entry 1843 (class 2604 OID 55880)
-- Dependencies: 157 156
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY sistema ALTER COLUMN id SET DEFAULT nextval('sistema_id_seq'::regclass);


--
-- TOC entry 1844 (class 2604 OID 55881)
-- Dependencies: 159 158
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY tag ALTER COLUMN id SET DEFAULT nextval('tag_id_seq'::regclass);


--
-- TOC entry 1880 (class 0 OID 55811)
-- Dependencies: 141
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
-- TOC entry 1881 (class 0 OID 55816)
-- Dependencies: 143
-- Data for Name: descritor; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY descritor (id, descricao, id_sistema) FROM stdin;
1	Dominio NucleoPA	1
\.


--
-- TOC entry 1882 (class 0 OID 55821)
-- Dependencies: 145
-- Data for Name: descritor_tag; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY descritor_tag (id_descritor, id_tag) FROM stdin;
1	1
1	2
1	3
\.


--
-- TOC entry 1883 (class 0 OID 55824)
-- Dependencies: 146
-- Data for Name: excecao; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY excecao (id, descricao, identificador, id_servico) FROM stdin;
\.


--
-- TOC entry 1884 (class 0 OID 55829)
-- Dependencies: 148
-- Data for Name: orgao; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY orgao (id, nome) FROM stdin;
1	SERPRO
2	PRODEPA
3	TRT
4	TJE
\.


--
-- TOC entry 1885 (class 0 OID 55834)
-- Dependencies: 150
-- Data for Name: papel; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY papel (id, descricao) FROM stdin;
4	ADMINISTRATOR
2	MANAGER
1	USER
\.


--
-- TOC entry 1886 (class 0 OID 55839)
-- Dependencies: 152
-- Data for Name: recurso; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY recurso (id, nome) FROM stdin;
\.


--
-- TOC entry 1887 (class 0 OID 55842)
-- Dependencies: 153
-- Data for Name: recursos; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY recursos (id, nome) FROM stdin;
\.


--
-- TOC entry 1888 (class 0 OID 55845)
-- Dependencies: 154
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
-- TOC entry 1889 (class 0 OID 55853)
-- Dependencies: 156
-- Data for Name: sistema; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY sistema (id, nome, id_orgao) FROM stdin;
1	Governo Digital	2
\.


--
-- TOC entry 1890 (class 0 OID 55858)
-- Dependencies: 158
-- Data for Name: tag; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY tag (id, tag) FROM stdin;
1	municipio
2	orgao
3	estado
\.


--
-- TOC entry 1891 (class 0 OID 55863)
-- Dependencies: 160
-- Data for Name: usuario; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY usuario (id, nome, senha, usuario, id_orgao, id_papel) FROM stdin;
1	System Admininstrator	e10adc3949ba59abbe56e057f20f883e	admin	1	4
2	Guest User	e10adc3949ba59abbe56e057f20f883e	guest	1	1
3	System Manager	e10adc3949ba59abbe56e057f20f883e	manager	1	2
4	thiago Soares	48772a0046f9ee8e0531bba30f280005	thiago.soares	1	1
\.


--
-- TOC entry 1892 (class 0 OID 55869)
-- Dependencies: 161
-- Data for Name: usuario_recursos; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY usuario_recursos (id_usuario, recursos, operacao) FROM stdin;
\.


--
-- TOC entry 1846 (class 2606 OID 55883)
-- Dependencies: 141 141
-- Name: atributo_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY atributo
    ADD CONSTRAINT atributo_pkey PRIMARY KEY (id);


--
-- TOC entry 1848 (class 2606 OID 55885)
-- Dependencies: 143 143
-- Name: descritor_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY descritor
    ADD CONSTRAINT descritor_pkey PRIMARY KEY (id);


--
-- TOC entry 1852 (class 2606 OID 55887)
-- Dependencies: 146 146
-- Name: excecao_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY excecao
    ADD CONSTRAINT excecao_pkey PRIMARY KEY (id);


--
-- TOC entry 1854 (class 2606 OID 55889)
-- Dependencies: 148 148
-- Name: orgao_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY orgao
    ADD CONSTRAINT orgao_pkey PRIMARY KEY (id);


--
-- TOC entry 1856 (class 2606 OID 55891)
-- Dependencies: 150 150
-- Name: papel_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY papel
    ADD CONSTRAINT papel_pkey PRIMARY KEY (id);


--
-- TOC entry 1850 (class 2606 OID 55893)
-- Dependencies: 145 145 145
-- Name: pk_descritor_tag; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY descritor_tag
    ADD CONSTRAINT pk_descritor_tag PRIMARY KEY (id_descritor, id_tag);


--
-- TOC entry 1858 (class 2606 OID 55897)
-- Dependencies: 152 152
-- Name: recurso_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY recurso
    ADD CONSTRAINT recurso_pkey PRIMARY KEY (id);


--
-- TOC entry 1860 (class 2606 OID 55899)
-- Dependencies: 153 153
-- Name: recursos_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY recursos
    ADD CONSTRAINT recursos_pkey PRIMARY KEY (id);


--
-- TOC entry 1862 (class 2606 OID 55901)
-- Dependencies: 154 154
-- Name: servico_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY servico
    ADD CONSTRAINT servico_pkey PRIMARY KEY (id);


--
-- TOC entry 1864 (class 2606 OID 55903)
-- Dependencies: 156 156
-- Name: sistema_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sistema
    ADD CONSTRAINT sistema_pkey PRIMARY KEY (id);


--
-- TOC entry 1866 (class 2606 OID 55905)
-- Dependencies: 158 158
-- Name: tag_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tag
    ADD CONSTRAINT tag_pkey PRIMARY KEY (id);


--
-- TOC entry 1868 (class 2606 OID 55907)
-- Dependencies: 160 160
-- Name: usuario_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 1870 (class 2606 OID 55909)
-- Dependencies: 161 161 161
-- Name: usuario_recursos_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario_recursos
    ADD CONSTRAINT usuario_recursos_pkey PRIMARY KEY (id_usuario, recursos);


--
-- TOC entry 1875 (class 2606 OID 55910)
-- Dependencies: 1861 154 146
-- Name: fk1476033c3f0429cb; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY excecao
    ADD CONSTRAINT fk1476033c3f0429cb FOREIGN KEY (id_servico) REFERENCES servico(id);


--
-- TOC entry 1871 (class 2606 OID 55915)
-- Dependencies: 1861 154 141
-- Name: fk20fdaad83f0429cb; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY atributo
    ADD CONSTRAINT fk20fdaad83f0429cb FOREIGN KEY (id_servico) REFERENCES servico(id);


--
-- TOC entry 1878 (class 2606 OID 55930)
-- Dependencies: 1853 148 160
-- Name: fk5b4d8b0e42446fb1; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT fk5b4d8b0e42446fb1 FOREIGN KEY (id_orgao) REFERENCES orgao(id);


--
-- TOC entry 1879 (class 2606 OID 55961)
-- Dependencies: 160 150 1855
-- Name: fk5b4d8b0e42516e99; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT fk5b4d8b0e42516e99 FOREIGN KEY (id_papel) REFERENCES papel(id);


--
-- TOC entry 1872 (class 2606 OID 55935)
-- Dependencies: 1863 156 143
-- Name: fkd0d887af4cc53091; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY descritor
    ADD CONSTRAINT fkd0d887af4cc53091 FOREIGN KEY (id_sistema) REFERENCES sistema(id);


--
-- TOC entry 1876 (class 2606 OID 55940)
-- Dependencies: 1847 154 143
-- Name: fkd97c5e9f58938cab; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY servico
    ADD CONSTRAINT fkd97c5e9f58938cab FOREIGN KEY (id_descritor) REFERENCES descritor(id);


--
-- TOC entry 1877 (class 2606 OID 55945)
-- Dependencies: 1853 148 156
-- Name: fke05ce20242446fb1; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY sistema
    ADD CONSTRAINT fke05ce20242446fb1 FOREIGN KEY (id_orgao) REFERENCES orgao(id);


--
-- TOC entry 1873 (class 2606 OID 55950)
-- Dependencies: 1847 145 143
-- Name: id_descritor; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY descritor_tag
    ADD CONSTRAINT id_descritor FOREIGN KEY (id_descritor) REFERENCES descritor(id);


--
-- TOC entry 1874 (class 2606 OID 55955)
-- Dependencies: 145 1865 158
-- Name: id_tag; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY descritor_tag
    ADD CONSTRAINT id_tag FOREIGN KEY (id_tag) REFERENCES tag(id);


--
-- TOC entry 1897 (class 0 OID 0)
-- Dependencies: 7
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2013-07-04 10:19:51 BRT

--
-- PostgreSQL database dump complete
--

