--
-- PostgreSQL database dump
--

-- Started on 2013-07-10 17:34:57 BRT

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
-- Dependencies: 141 5
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
-- TOC entry 1889 (class 0 OID 0)
-- Dependencies: 142
-- Name: atributo_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE atributo_id_seq OWNED BY atributo.id;


--
-- TOC entry 1890 (class 0 OID 0)
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
    url character varying(256),
    id_sistema bigint,
    tipo character varying(4),
    nome character varying(25),
    descricao character varying(1500)
);


ALTER TABLE guddi.descritor OWNER TO postgres;

--
-- TOC entry 144 (class 1259 OID 55819)
-- Dependencies: 5 143
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
-- TOC entry 1891 (class 0 OID 0)
-- Dependencies: 144
-- Name: descritor_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE descritor_id_seq OWNED BY descritor.id;


--
-- TOC entry 1892 (class 0 OID 0)
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
-- TOC entry 1893 (class 0 OID 0)
-- Dependencies: 147
-- Name: excecao_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE excecao_id_seq OWNED BY excecao.id;


--
-- TOC entry 1894 (class 0 OID 0)
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
-- TOC entry 155 (class 1259 OID 55861)
-- Dependencies: 154 5
-- Name: marcacao_id_seq; Type: SEQUENCE; Schema: guddi; Owner: postgres
--

CREATE SEQUENCE marcacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE guddi.marcacao_id_seq OWNER TO postgres;

--
-- TOC entry 1895 (class 0 OID 0)
-- Dependencies: 155
-- Name: marcacao_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE marcacao_id_seq OWNED BY marcacao.id;


--
-- TOC entry 1896 (class 0 OID 0)
-- Dependencies: 155
-- Name: marcacao_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('marcacao_id_seq', 9, true);


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
-- TOC entry 1897 (class 0 OID 0)
-- Dependencies: 149
-- Name: orgao_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE orgao_id_seq OWNED BY orgao.id;


--
-- TOC entry 1898 (class 0 OID 0)
-- Dependencies: 149
-- Name: orgao_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('orgao_id_seq', 6, true);


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
    id_descritor bigint,
    descricao character varying(1500)
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
-- TOC entry 1899 (class 0 OID 0)
-- Dependencies: 151
-- Name: servico_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE servico_id_seq OWNED BY servico.id;


--
-- TOC entry 1900 (class 0 OID 0)
-- Dependencies: 151
-- Name: servico_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('servico_id_seq', 1, false);


--
-- TOC entry 152 (class 1259 OID 55853)
-- Dependencies: 1836 5
-- Name: sistema; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE sistema (
    id bigint NOT NULL,
    nome character varying(20),
    id_orgao bigint,
    publico boolean DEFAULT true NOT NULL
);


ALTER TABLE guddi.sistema OWNER TO postgres;

--
-- TOC entry 153 (class 1259 OID 55856)
-- Dependencies: 152 5
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
-- TOC entry 1901 (class 0 OID 0)
-- Dependencies: 153
-- Name: sistema_id_seq; Type: SEQUENCE OWNED BY; Schema: guddi; Owner: postgres
--

ALTER SEQUENCE sistema_id_seq OWNED BY sistema.id;


--
-- TOC entry 1902 (class 0 OID 0)
-- Dependencies: 153
-- Name: sistema_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('sistema_id_seq', 1, false);


--
-- TOC entry 160 (class 1259 OID 56076)
-- Dependencies: 5
-- Name: usuario_id_seq; Type: SEQUENCE; Schema: guddi; Owner: postgres
--

CREATE SEQUENCE usuario_id_seq
    START WITH 4
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE guddi.usuario_id_seq OWNER TO postgres;

--
-- TOC entry 1903 (class 0 OID 0)
-- Dependencies: 160
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: guddi; Owner: postgres
--

SELECT pg_catalog.setval('usuario_id_seq', 11, true);


--
-- TOC entry 156 (class 1259 OID 55863)
-- Dependencies: 1838 1839 1840 5
-- Name: usuario; Type: TABLE; Schema: guddi; Owner: postgres; Tablespace: 
--

CREATE TABLE usuario (
    id bigint DEFAULT nextval('usuario_id_seq'::regclass) NOT NULL,
    nome character varying(50),
    senha character varying(32),
    email character varying(64) NOT NULL,
    id_orgao bigint,
    papel smallint,
    ativo boolean DEFAULT true NOT NULL,
    usuario character varying(15),
    aminesia character varying(64) DEFAULT ''::character varying NOT NULL
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
-- TOC entry 1904 (class 0 OID 0)
-- Dependencies: 158
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('hibernate_sequence', 1, false);


SET search_path = guddi, pg_catalog;

--
-- TOC entry 1830 (class 2604 OID 55874)
-- Dependencies: 142 141
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY atributo ALTER COLUMN id SET DEFAULT nextval('atributo_id_seq'::regclass);


--
-- TOC entry 1831 (class 2604 OID 55875)
-- Dependencies: 144 143
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY descritor ALTER COLUMN id SET DEFAULT nextval('descritor_id_seq'::regclass);


--
-- TOC entry 1832 (class 2604 OID 55876)
-- Dependencies: 147 146
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY excecao ALTER COLUMN id SET DEFAULT nextval('excecao_id_seq'::regclass);


--
-- TOC entry 1837 (class 2604 OID 55881)
-- Dependencies: 155 154
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY marcacao ALTER COLUMN id SET DEFAULT nextval('marcacao_id_seq'::regclass);


--
-- TOC entry 1833 (class 2604 OID 55877)
-- Dependencies: 149 148
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY orgao ALTER COLUMN id SET DEFAULT nextval('orgao_id_seq'::regclass);


--
-- TOC entry 1834 (class 2604 OID 55879)
-- Dependencies: 151 150
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY servico ALTER COLUMN id SET DEFAULT nextval('servico_id_seq'::regclass);


--
-- TOC entry 1835 (class 2604 OID 55880)
-- Dependencies: 153 152
-- Name: id; Type: DEFAULT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY sistema ALTER COLUMN id SET DEFAULT nextval('sistema_id_seq'::regclass);


--
-- TOC entry 1873 (class 0 OID 55811)
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
7	codigoIbge	Integer	1
8	ano	Integer	1
\.


--
-- TOC entry 1874 (class 0 OID 55816)
-- Dependencies: 143
-- Data for Name: descritor; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY descritor (id, url, id_sistema, tipo, nome, descricao) FROM stdin;
1	http://aplicacoes.mds.gov.br/teste/webservices/ServicoExemplo	1	WSDL	Dominio NucleoPA	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque venenatis, neque sed consequat rutrum, lectus arcu ultrices est, posuere eleifend lectus velit sit amet lectus. Nullam pretium lorem eget nisl facilisis, quis blandit augue pharetra. Duis dui mauris, vestibulum sit amet est a, cursus auctor eros. Cras condimentum bibendum sodales. Vivamus tempor dictum nisi, non luctus arcu laoreet nec. Suspendisse in elit pharetra, eleifend nisi non, tristique odio. Curabitur in sapien sem. Ut id diam ac lorem commodo iaculis eget in felis. Cras tortor urna, lobortis vitae mi vitae, venenatis hendrerit nulla. Quisque eleifend aliquam dapibus. Maecenas dolor magna, luctus ac blandit ut, facilisis elementum sem. Nam ac placerat justo, ut pellentesque erat.\n\nQuisque dapibus, enim ac ultricies porta, nulla dolor sollicitudin nisl, nec pulvinar arcu dui sed massa. Fusce pharetra imperdiet laoreet. Etiam sagittis dui nec aliquet ullamcorper. Maecenas viverra libero nec sapien condimentum consectetur. Ut ante sapien, fringilla nec blandit vel, laoreet nec nunc. Nam a lobortis erat. Nulla ac urna euismod, tristique est et, ultricies sem. Morbi gravida tortor mattis ullamcorper adipiscing. Cras auctor ipsum ac enim ullamcorper commodo. Etiam ullamcorper vulputate velit sed dictum. Mauris commodo sollicitudin laoreet.
2	http://200.120.41.331:9080/Teste	1	REST	Teste de REST	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque venenatis, neque sed consequat rutrum, lectus arcu ultrices est, posuere eleifend lectus velit sit amet lectus. Nullam pretium lorem eget nisl facilisis, quis blandit augue pharetra. Duis dui mauris, vestibulum sit amet est a, cursus auctor eros. Cras condimentum bibendum sodales. Vivamus tempor dictum nisi, non luctus arcu laoreet nec. Suspendisse in elit pharetra, eleifend nisi non, tristique odio. Curabitur in sapien sem. Ut id diam ac lorem commodo iaculis eget in felis. Cras tortor urna, lobortis vitae mi vitae, venenatis hendrerit nulla. Quisque eleifend aliquam dapibus. Maecenas dolor magna, luctus ac blandit ut, facilisis elementum sem. Nam ac placerat justo, ut pellentesque erat.\n\nQuisque dapibus, enim ac ultricies porta, nulla dolor sollicitudin nisl, nec pulvinar arcu dui sed massa. Fusce pharetra imperdiet laoreet. Etiam sagittis dui nec aliquet ullamcorper. Maecenas viverra libero nec sapien condimentum consectetur. Ut ante sapien, fringilla nec blandit vel, laoreet nec nunc. Nam a lobortis erat. Nulla ac urna euismod, tristique est et, ultricies sem. Morbi gravida tortor mattis ullamcorper adipiscing. Cras auctor ipsum ac enim ullamcorper commodo. Etiam ullamcorper vulputate velit sed dictum. Mauris commodo sollicitudin laoreet.
\.


--
-- TOC entry 1875 (class 0 OID 55821)
-- Dependencies: 145
-- Data for Name: descritor_marcacao; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY descritor_marcacao (id_descritor, id_marcacao) FROM stdin;
1	1
1	2
1	3
\.


--
-- TOC entry 1876 (class 0 OID 55824)
-- Dependencies: 146
-- Data for Name: excecao; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY excecao (id, descricao, identificador, id_servico) FROM stdin;
1	Erro referente a passagem de parametro XPTO incorreta	erro.20.teste	1
\.


--
-- TOC entry 1880 (class 0 OID 55858)
-- Dependencies: 154
-- Data for Name: marcacao; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY marcacao (id, marcacao) FROM stdin;
1	municipio
2	orgao
3	estado
\.


--
-- TOC entry 1877 (class 0 OID 55829)
-- Dependencies: 148
-- Data for Name: orgao; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY orgao (id, nome, uf, codigo, email, endereco, nomecontato, razaosocial, sigla, url) FROM stdin;
4	TJE	\N	\N	\N	\N	\N	\N	\N	\N
6	Novo Órgão	DF	XPTO123	novo@orgao.com		Rogério da Silva e Cunha	Novo Órgão Razão Social	NO-GOV	http://www.novo.orgao.gov.br
3	TRT								
2	PRODEPA								
1	SERPRO	DF	SERPRO		Rua 123		SERVIÇO FEDERAL DE PROCESSAMENTO DE DADOS	SERPRO	http://www.serpro.gov.br
\.


--
-- TOC entry 1883 (class 0 OID 56025)
-- Dependencies: 159
-- Data for Name: recurso; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY recurso (id, nome) FROM stdin;
\.


--
-- TOC entry 1878 (class 0 OID 55845)
-- Dependencies: 150
-- Data for Name: servico; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY servico (id, nome, id_descritor, descricao) FROM stdin;
2	buscarEstados	1	\N
3	buscarMunicipios	1	\N
5	buscarPF	1	\N
1	buscarOrgaos	1	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque venenatis, neque sed consequat rutrum, lectus arcu ultrices est, posuere eleifend lectus velit sit amet lectus. Nullam pretium lorem eget nisl facilisis, quis blandit augue pharetra. Duis dui mauris, vestibulum sit amet est a, cursus auctor eros. Cras condimentum bibendum sodales. Vivamus tempor dictum nisi, non luctus arcu laoreet nec. Suspendisse in elit pharetra, eleifend nisi non, tristique odio. Curabitur in sapien sem. Ut id diam ac lorem commodo iaculis eget in felis. Cras tortor urna, lobortis vitae mi vitae, venenatis hendrerit nulla. Quisque eleifend aliquam dapibus. Maecenas dolor magna, luctus ac blandit ut, facilisis elementum sem. Nam ac placerat justo, ut pellentesque erat.
4	buscarPF	1	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque venenatis, neque sed consequat rutrum, lectus arcu ultrices est, posuere eleifend lectus velit sit amet lectus. Nullam pretium lorem eget nisl facilisis, quis blandit augue pharetra. Duis dui mauris, vestibulum sit amet est a, cursus auctor eros. Cras condimentum bibendum sodales. Vivamus tempor dictum nisi, non luctus arcu laoreet nec. Suspendisse in elit pharetra, eleifend nisi non, tristique odio. Curabitur in sapien sem. Ut id diam ac lorem commodo iaculis eget in felis. Cras tortor urna, lobortis vitae mi vitae, venenatis hendrerit nulla. Quisque eleifend aliquam dapibus. Maecenas dolor magna, luctus ac blandit ut, facilisis elementum sem. Nam ac placerat justo, ut pellentesque erat.
6	buscarPais	1	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque venenatis, neque sed consequat rutrum, lectus arcu ultrices est, posuere eleifend lectus velit sit amet lectus. Nullam pretium lorem eget nisl facilisis, quis blandit augue pharetra. Duis dui mauris, vestibulum sit amet est a, cursus auctor eros. Cras condimentum bibendum sodales. Vivamus tempor dictum nisi, non luctus arcu laoreet nec. Suspendisse in elit pharetra, eleifend nisi non, tristique odio. Curabitur in sapien sem. Ut id diam ac lorem commodo iaculis eget in felis. Cras tortor urna, lobortis vitae mi vitae, venenatis hendrerit nulla. Quisque eleifend aliquam dapibus. Maecenas dolor magna, luctus ac blandit ut, facilisis elementum sem. Nam ac placerat justo, ut pellentesque erat.
\.


--
-- TOC entry 1879 (class 0 OID 55853)
-- Dependencies: 152
-- Data for Name: sistema; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY sistema (id, nome, id_orgao, publico) FROM stdin;
1	Governo Digital	2	t
\.


--
-- TOC entry 1881 (class 0 OID 55863)
-- Dependencies: 156
-- Data for Name: usuario; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY usuario (id, nome, senha, email, id_orgao, papel, ativo, usuario, aminesia) FROM stdin;
1	System Admininstrator	e10adc3949ba59abbe56e057f20f883e	admin@guddi.org	1	4	t	admin	
2	Guest User	e10adc3949ba59abbe56e057f20f883e	guest@guddi.org	1	1	t	guest	
3	System Manager	e10adc3949ba59abbe56e057f20f883e	manager@guddi.org	1	2	t	manager	
7	Teste de Manager	47f477	manager@manager.com	3	2	t	manager2	a10f06547f79a8285b06047f47793c64
8	Paulo Gladson	a5924b	gladisonico@gladisonico.com	1	4	t	gladisonico	068c519cab5d63b2665fda5924b02eb8
4	thiago Soares	48772a0046f9ee8e0531bba30f280005	thiago.soares@guddi.org	1	1	t	thiago.soares	
10	João	71606f	joao@joao.com	1	0	f	joao	b662950a3b872e8e0126371606f41296
11	Teste	c7902b	te	6	1	f	te	69d6bca6ec1253466f5dbc7902b99ef2
9	Teste de Manager 2	563308	teste	3	1	f	teste	d8a0d14ef8a891ed3cd2e563308828f9
6	Clovis Lemes Ferreira Junior	0c3afc	clovisjunior2009@gmail.com	2	4	t	usuario	a1568531233398fcaf75b0c3afcaca4d
\.


--
-- TOC entry 1882 (class 0 OID 55869)
-- Dependencies: 157
-- Data for Name: usuario_recursos; Type: TABLE DATA; Schema: guddi; Owner: postgres
--

COPY usuario_recursos (id_usuario, recursos, operacao) FROM stdin;
\.


--
-- TOC entry 1842 (class 2606 OID 55883)
-- Dependencies: 141 141
-- Name: atributo_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY atributo
    ADD CONSTRAINT atributo_pkey PRIMARY KEY (id);


--
-- TOC entry 1846 (class 2606 OID 55990)
-- Dependencies: 145 145 145
-- Name: descritor_marcacao_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY descritor_marcacao
    ADD CONSTRAINT descritor_marcacao_pkey PRIMARY KEY (id_descritor, id_marcacao);


--
-- TOC entry 1844 (class 2606 OID 55885)
-- Dependencies: 143 143
-- Name: descritor_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY descritor
    ADD CONSTRAINT descritor_pkey PRIMARY KEY (id);


--
-- TOC entry 1858 (class 2606 OID 55976)
-- Dependencies: 156 156
-- Name: email_unique; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT email_unique UNIQUE (email);


--
-- TOC entry 1848 (class 2606 OID 55887)
-- Dependencies: 146 146
-- Name: excecao_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY excecao
    ADD CONSTRAINT excecao_pkey PRIMARY KEY (id);


--
-- TOC entry 1856 (class 2606 OID 55983)
-- Dependencies: 154 154
-- Name: marcacao_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY marcacao
    ADD CONSTRAINT marcacao_pkey PRIMARY KEY (id);


--
-- TOC entry 1850 (class 2606 OID 55889)
-- Dependencies: 148 148
-- Name: orgao_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY orgao
    ADD CONSTRAINT orgao_pkey PRIMARY KEY (id);


--
-- TOC entry 1864 (class 2606 OID 56029)
-- Dependencies: 159 159
-- Name: recurso_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY recurso
    ADD CONSTRAINT recurso_pkey PRIMARY KEY (id);


--
-- TOC entry 1852 (class 2606 OID 55901)
-- Dependencies: 150 150
-- Name: servico_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY servico
    ADD CONSTRAINT servico_pkey PRIMARY KEY (id);


--
-- TOC entry 1854 (class 2606 OID 55903)
-- Dependencies: 152 152
-- Name: sistema_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sistema
    ADD CONSTRAINT sistema_pkey PRIMARY KEY (id);


--
-- TOC entry 1860 (class 2606 OID 55907)
-- Dependencies: 156 156
-- Name: usuario_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 1862 (class 2606 OID 55909)
-- Dependencies: 157 157 157
-- Name: usuario_recursos_pkey; Type: CONSTRAINT; Schema: guddi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario_recursos
    ADD CONSTRAINT usuario_recursos_pkey PRIMARY KEY (id_usuario, recursos);


--
-- TOC entry 1869 (class 2606 OID 55910)
-- Dependencies: 150 146 1851
-- Name: fk1476033c3f0429cb; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY excecao
    ADD CONSTRAINT fk1476033c3f0429cb FOREIGN KEY (id_servico) REFERENCES servico(id);


--
-- TOC entry 1865 (class 2606 OID 55915)
-- Dependencies: 150 141 1851
-- Name: fk20fdaad83f0429cb; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY atributo
    ADD CONSTRAINT fk20fdaad83f0429cb FOREIGN KEY (id_servico) REFERENCES servico(id);


--
-- TOC entry 1872 (class 2606 OID 55930)
-- Dependencies: 1849 148 156
-- Name: fk5b4d8b0e42446fb1; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT fk5b4d8b0e42446fb1 FOREIGN KEY (id_orgao) REFERENCES orgao(id);


--
-- TOC entry 1866 (class 2606 OID 55935)
-- Dependencies: 152 143 1853
-- Name: fkd0d887af4cc53091; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY descritor
    ADD CONSTRAINT fkd0d887af4cc53091 FOREIGN KEY (id_sistema) REFERENCES sistema(id);


--
-- TOC entry 1870 (class 2606 OID 55940)
-- Dependencies: 1843 150 143
-- Name: fkd97c5e9f58938cab; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY servico
    ADD CONSTRAINT fkd97c5e9f58938cab FOREIGN KEY (id_descritor) REFERENCES descritor(id);


--
-- TOC entry 1871 (class 2606 OID 55945)
-- Dependencies: 1849 152 148
-- Name: fke05ce20242446fb1; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY sistema
    ADD CONSTRAINT fke05ce20242446fb1 FOREIGN KEY (id_orgao) REFERENCES orgao(id);


--
-- TOC entry 1867 (class 2606 OID 55950)
-- Dependencies: 143 1843 145
-- Name: id_descritor; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY descritor_marcacao
    ADD CONSTRAINT id_descritor FOREIGN KEY (id_descritor) REFERENCES descritor(id);


--
-- TOC entry 1868 (class 2606 OID 55984)
-- Dependencies: 154 145 1855
-- Name: id_marcacao; Type: FK CONSTRAINT; Schema: guddi; Owner: postgres
--

ALTER TABLE ONLY descritor_marcacao
    ADD CONSTRAINT id_marcacao FOREIGN KEY (id_marcacao) REFERENCES marcacao(id);


--
-- TOC entry 1888 (class 0 OID 0)
-- Dependencies: 7
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2013-07-10 17:34:57 BRT

--
-- PostgreSQL database dump complete
--

