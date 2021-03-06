--
-- PostgreSQL database dump
--

-- Started on 2013-07-08 17:38:03 BRT

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
-- TOC entry 1883 (class 0 OID 0)
-- Dependencies: 142
-- Name: atributo_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE atributo_id_seq OWNED BY atributo.id;


--
-- TOC entry 1884 (class 0 OID 0)
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
-- TOC entry 1885 (class 0 OID 0)
-- Dependencies: 144
-- Name: descritor_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE descritor_id_seq OWNED BY descritor.id;


--
-- TOC entry 1886 (class 0 OID 0)
-- Dependencies: 144
-- Name: descritor_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('descritor_id_seq', 1, false);


--
-- TOC entry 145 (class 1259 OID 55821)
-- Dependencies: 5
-- Name: descritor_marcacao; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE descritor_marcacao (
    id_descritor bigint NOT NULL,
    id_marcacao bigint NOT NULL
);


ALTER TABLE guddi.descritor_marcacao OWNER TO postgres;

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
-- TOC entry 1887 (class 0 OID 0)
-- Dependencies: 147
-- Name: excecao_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE excecao_id_seq OWNED BY excecao.id;


--
-- TOC entry 1888 (class 0 OID 0)
-- Dependencies: 147
-- Name: excecao_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('excecao_id_seq', 1, false);


--
-- TOC entry 154 (class 1259 OID 55858)
-- Dependencies: 5
-- Name: marcacao; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE marcacao (
    id bigint NOT NULL,
    marcacao character varying(15)
);


ALTER TABLE guddi.marcacao OWNER TO postgres;

--
-- TOC entry 148 (class 1259 OID 55829)
-- Dependencies: 5
-- Name: orgao; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE orgao (
    id bigint NOT NULL,
    nome character varying(50),
    uf character varying(2),
    codigo character varying(10),
    email character varying(60),
    endereco character varying(70),
    nomecontato character varying(50),
    razaosocial character varying(50),
    sigla character varying(10),
    url character varying(100)
);


ALTER TABLE guddi.orgao OWNER TO postgres;

--
-- TOC entry 149 (class 1259 OID 55832)
-- Dependencies: 5 148
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
-- TOC entry 1889 (class 0 OID 0)
-- Dependencies: 149
-- Name: orgao_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE orgao_id_seq OWNED BY orgao.id;


--
-- TOC entry 1890 (class 0 OID 0)
-- Dependencies: 149
-- Name: orgao_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('orgao_id_seq', 5, true);


--
-- TOC entry 159 (class 1259 OID 56025)
-- Dependencies: 5
-- Name: recurso; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE recurso (
    id bigint NOT NULL,
    nome character varying(50)
);


ALTER TABLE guddi.recurso OWNER TO postgres;

--
-- TOC entry 150 (class 1259 OID 55845)
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
-- TOC entry 151 (class 1259 OID 55851)
-- Dependencies: 150 5
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
-- TOC entry 1891 (class 0 OID 0)
-- Dependencies: 151
-- Name: servico_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE servico_id_seq OWNED BY servico.id;


--
-- TOC entry 1892 (class 0 OID 0)
-- Dependencies: 151
-- Name: servico_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('servico_id_seq', 1, false);


--
-- TOC entry 152 (class 1259 OID 55853)
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
-- TOC entry 153 (class 1259 OID 55856)
-- Dependencies: 5 152
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
-- TOC entry 1893 (class 0 OID 0)
-- Dependencies: 153
-- Name: sistema_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE sistema_id_seq OWNED BY sistema.id;


--
-- TOC entry 1894 (class 0 OID 0)
-- Dependencies: 153
-- Name: sistema_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('sistema_id_seq', 1, false);


--
-- TOC entry 155 (class 1259 OID 55861)
-- Dependencies: 154 5
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
-- TOC entry 1895 (class 0 OID 0)
-- Dependencies: 155
-- Name: tag_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE tag_id_seq OWNED BY marcacao.id;


--
-- TOC entry 1896 (class 0 OID 0)
-- Dependencies: 155
-- Name: tag_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('tag_id_seq', 6, true);


--
-- TOC entry 156 (class 1259 OID 55863)
-- Dependencies: 1834 5
-- Name: usuario; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE usuario (
    id bigint NOT NULL,
    nome character varying(50),
    senha character varying(32),
    email character varying(64) NOT NULL,
    id_orgao bigint,
    papel smallint,
    ativo boolean DEFAULT true NOT NULL,
    usuario character varying(15)
);


ALTER TABLE guddi.usuario OWNER TO postgres;

--
-- TOC entry 157 (class 1259 OID 55869)
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
-- TOC entry 158 (class 1259 OID 55872)
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
-- TOC entry 1897 (class 0 OID 0)
-- Dependencies: 158
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('hibernate_sequence', 1, false);


SET search_path = guddi, pg_catalog;

--
-- TOC entry 1827 (class 2604 OID 55874)
-- Dependencies: 142 141
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY atributo ALTER COLUMN id SET DEFAULT nextval('atributo_id_seq'::regclass);


--
-- TOC entry 1828 (class 2604 OID 55875)
-- Dependencies: 144 143
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY descritor ALTER COLUMN id SET DEFAULT nextval('descritor_id_seq'::regclass);


--
-- TOC entry 1829 (class 2604 OID 55876)
-- Dependencies: 147 146
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY excecao ALTER COLUMN id SET DEFAULT nextval('excecao_id_seq'::regclass);


--
-- TOC entry 1833 (class 2604 OID 55881)
-- Dependencies: 155 154
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY marcacao ALTER COLUMN id SET DEFAULT nextval('tag_id_seq'::regclass);


--
-- TOC entry 1830 (class 2604 OID 55877)
-- Dependencies: 149 148
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY orgao ALTER COLUMN id SET DEFAULT nextval('orgao_id_seq'::regclass);


--
-- TOC entry 1831 (class 2604 OID 55879)
-- Dependencies: 151 150
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY servico ALTER COLUMN id SET DEFAULT nextval('servico_id_seq'::regclass);


--
-- TOC entry 1832 (class 2604 OID 55880)
-- Dependencies: 153 152
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY sistema ALTER COLUMN id SET DEFAULT nextval('sistema_id_seq'::regclass);


--
-- TOC entry 1867 (class 0 OID 55811)
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
-- TOC entry 1868 (class 0 OID 55816)
-- Dependencies: 143
-- Data for Name: descritor; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY descritor (id, descricao, id_sistema) FROM stdin;
1	Dominio NucleoPA	1
\.


--
-- TOC entry 1869 (class 0 OID 55821)
-- Dependencies: 145
-- Data for Name: descritor_marcacao; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY descritor_marcacao (id_descritor, id_marcacao) FROM stdin;
1	1
1	2
1	3
\.


--
-- TOC entry 1870 (class 0 OID 55824)
-- Dependencies: 146
-- Data for Name: excecao; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY excecao (id, descricao, identificador, id_servico) FROM stdin;
\.


--
-- TOC entry 1874 (class 0 OID 55858)
-- Dependencies: 154
-- Data for Name: marcacao; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY marcacao (id, marcacao) FROM stdin;
1	municipio
2	orgao
3	estado
\.


--
-- TOC entry 1871 (class 0 OID 55829)
-- Dependencies: 148
-- Data for Name: orgao; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY orgao (id, nome, uf, codigo, email, endereco, nomecontato, razaosocial, sigla, url) FROM stdin;
1	SERPRO	\N	\N	\N	\N	\N	\N	\N	\N
2	PRODEPA	\N	\N	\N	\N	\N	\N	\N	\N
3	TRT	\N	\N	\N	\N	\N	\N	\N	\N
4	TJE	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- TOC entry 1877 (class 0 OID 56025)
-- Dependencies: 159
-- Data for Name: recurso; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY recurso (id, nome) FROM stdin;
\.


--
-- TOC entry 1872 (class 0 OID 55845)
-- Dependencies: 150
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
-- TOC entry 1873 (class 0 OID 55853)
-- Dependencies: 152
-- Data for Name: sistema; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY sistema (id, nome, id_orgao) FROM stdin;
1	Governo Digital	2
\.


--
-- TOC entry 1875 (class 0 OID 55863)
-- Dependencies: 156
-- Data for Name: usuario; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY usuario (id, nome, senha, email, id_orgao, papel, ativo, usuario) FROM stdin;
1	System Admininstrator	e10adc3949ba59abbe56e057f20f883e	admin@guddi.org	1	4	t	admin
2	Guest User	e10adc3949ba59abbe56e057f20f883e	guest@guddi.org	1	1	t	guest
3	System Manager	e10adc3949ba59abbe56e057f20f883e	manager@guddi.org	1	2	t	manager
4	thiago Soares	48772a0046f9ee8e0531bba30f280005	thiago.soares@guddi.org	1	1	t	thiago.soares
\.


--
-- TOC entry 1876 (class 0 OID 55869)
-- Dependencies: 157
-- Data for Name: usuario_recursos; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY usuario_recursos (id_usuario, recursos, operacao) FROM stdin;
\.


--
-- TOC entry 1836 (class 2606 OID 55883)
-- Dependencies: 141 141
-- Name: atributo_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY atributo
    ADD CONSTRAINT atributo_pkey PRIMARY KEY (id);


--
-- TOC entry 1840 (class 2606 OID 55990)
-- Dependencies: 145 145 145
-- Name: descritor_marcacao_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY descritor_marcacao
    ADD CONSTRAINT descritor_marcacao_pkey PRIMARY KEY (id_descritor, id_marcacao);


--
-- TOC entry 1838 (class 2606 OID 55885)
-- Dependencies: 143 143
-- Name: descritor_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY descritor
    ADD CONSTRAINT descritor_pkey PRIMARY KEY (id);


--
-- TOC entry 1852 (class 2606 OID 55976)
-- Dependencies: 156 156
-- Name: email_unique; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT email_unique UNIQUE (email);


--
-- TOC entry 1842 (class 2606 OID 55887)
-- Dependencies: 146 146
-- Name: excecao_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY excecao
    ADD CONSTRAINT excecao_pkey PRIMARY KEY (id);


--
-- TOC entry 1850 (class 2606 OID 55983)
-- Dependencies: 154 154
-- Name: marcacao_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY marcacao
    ADD CONSTRAINT marcacao_pkey PRIMARY KEY (id);


--
-- TOC entry 1844 (class 2606 OID 55889)
-- Dependencies: 148 148
-- Name: orgao_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY orgao
    ADD CONSTRAINT orgao_pkey PRIMARY KEY (id);


--
-- TOC entry 1858 (class 2606 OID 56029)
-- Dependencies: 159 159
-- Name: recurso_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY recurso
    ADD CONSTRAINT recurso_pkey PRIMARY KEY (id);


--
-- TOC entry 1846 (class 2606 OID 55901)
-- Dependencies: 150 150
-- Name: servico_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY servico
    ADD CONSTRAINT servico_pkey PRIMARY KEY (id);


--
-- TOC entry 1848 (class 2606 OID 55903)
-- Dependencies: 152 152
-- Name: sistema_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sistema
    ADD CONSTRAINT sistema_pkey PRIMARY KEY (id);


--
-- TOC entry 1854 (class 2606 OID 55907)
-- Dependencies: 156 156
-- Name: usuario_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 1856 (class 2606 OID 55909)
-- Dependencies: 157 157 157
-- Name: usuario_recursos_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario_recursos
    ADD CONSTRAINT usuario_recursos_pkey PRIMARY KEY (id_usuario, recursos);


--
-- TOC entry 1863 (class 2606 OID 55910)
-- Dependencies: 150 146 1845
-- Name: fk1476033c3f0429cb; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY excecao
    ADD CONSTRAINT fk1476033c3f0429cb FOREIGN KEY (id_servico) REFERENCES servico(id);


--
-- TOC entry 1859 (class 2606 OID 55915)
-- Dependencies: 141 150 1845
-- Name: fk20fdaad83f0429cb; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY atributo
    ADD CONSTRAINT fk20fdaad83f0429cb FOREIGN KEY (id_servico) REFERENCES servico(id);


--
-- TOC entry 1866 (class 2606 OID 55930)
-- Dependencies: 148 1843 156
-- Name: fk5b4d8b0e42446fb1; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT fk5b4d8b0e42446fb1 FOREIGN KEY (id_orgao) REFERENCES orgao(id);


--
-- TOC entry 1860 (class 2606 OID 55935)
-- Dependencies: 1847 143 152
-- Name: fkd0d887af4cc53091; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY descritor
    ADD CONSTRAINT fkd0d887af4cc53091 FOREIGN KEY (id_sistema) REFERENCES sistema(id);


--
-- TOC entry 1864 (class 2606 OID 55940)
-- Dependencies: 1837 150 143
-- Name: fkd97c5e9f58938cab; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY servico
    ADD CONSTRAINT fkd97c5e9f58938cab FOREIGN KEY (id_descritor) REFERENCES descritor(id);


--
-- TOC entry 1865 (class 2606 OID 55945)
-- Dependencies: 1843 152 148
-- Name: fke05ce20242446fb1; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY sistema
    ADD CONSTRAINT fke05ce20242446fb1 FOREIGN KEY (id_orgao) REFERENCES orgao(id);


--
-- TOC entry 1861 (class 2606 OID 55950)
-- Dependencies: 1837 145 143
-- Name: id_descritor; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY descritor_marcacao
    ADD CONSTRAINT id_descritor FOREIGN KEY (id_descritor) REFERENCES descritor(id);


--
-- TOC entry 1862 (class 2606 OID 55984)
-- Dependencies: 145 154 1849
-- Name: id_marcacao; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY descritor_marcacao
    ADD CONSTRAINT id_marcacao FOREIGN KEY (id_marcacao) REFERENCES marcacao(id);


--
-- TOC entry 1882 (class 0 OID 0)
-- Dependencies: 7
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2013-07-08 17:38:04 BRT

--
-- PostgreSQL database dump complete
--

