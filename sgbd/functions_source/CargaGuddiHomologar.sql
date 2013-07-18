
INSERT INTO "guddi"."orgao" (id,nome,uf,codigo,email,endereco,nomecontato,razaosocial,sigla,url) VALUES (1,'SERPRO','DF','SERPRO','serpro@serpro.pa.gov.br','Rua 123','','SERVIÇO FEDERAL DE PROCESSAMENTO DE DADOS','SERPRO','http://www.serpro.gov.br');
INSERT INTO "guddi"."orgao" (id,nome,uf,codigo,email,endereco,nomecontato,razaosocial,sigla,url) VALUES (2,'PRODEPA','PA','PRODEPA','prodepa@prodepa.pa.gov.br','Rodovia Augusto Montenegro km 10 · Centro Administrativo do Estado','CAP','PRODEPA','PRODEPA','http://www.prodepa.pa.gov.br/');
INSERT INTO "guddi"."orgao" (id,nome,uf,codigo,email,endereco,nomecontato,razaosocial,sigla,url) VALUES (3,'TRT','PA','TRT','Umarizal - CEP 66050-100 - Belém-Pará-Amazônia-Brasil','','TRE','TRE','','http://www.trt8.jus.br/');
INSERT INTO "guddi"."orgao" (id,nome,uf,codigo,email,endereco,nomecontato,razaosocial,sigla,url) VALUES (4,'TJE','PA','TJE','tje@tje.gov','Av. Almirante Barroso nº 3089 - Bairro: Souza - Belém - PA','','TJE','TJE','http://www.tjpa.jus.br');


INSERT INTO "guddi"."usuario" (id,nome,senha,email,id_orgao,papel,ativo,usuario,aminesia) VALUES (1,'System Admininstrator','e10adc3949ba59abbe56e057f20f883e','admin@guddi.org',1,4,true,'admin','');
INSERT INTO "guddi"."usuario" (id,nome,senha,email,id_orgao,papel,ativo,usuario,aminesia) VALUES (2,'Guest User','e10adc3949ba59abbe56e057f20f883e','guest@guddi.org',1,1,true,'guest','');
INSERT INTO "guddi"."usuario" (id,nome,senha,email,id_orgao,papel,ativo,usuario,aminesia) VALUES (3,'System Manager','e10adc3949ba59abbe56e057f20f883e','manager@guddi.org',1,2,true,'manager','');
INSERT INTO "guddi"."usuario" (id,nome,senha,email,id_orgao,papel,ativo,usuario,aminesia) VALUES (4,'thiago Soares','48772a0046f9ee8e0531bba30f280005','thiago.soares@guddi.org',1,1,true,'thiago.soares','');
INSERT INTO "guddi"."usuario" (id,nome,senha,email,id_orgao,papel,ativo,usuario,aminesia) VALUES (6,'Clovis Lemes Ferreira Junior','0c3afc','clovisjunior2009@gmail.com',2,4,true,'usuario','a1568531233398fcaf75b0c3afcaca4d');
INSERT INTO "guddi"."usuario" (id,nome,senha,email,id_orgao,papel,ativo,usuario,aminesia) VALUES (7,'Teste de Manager','47f477','manager@manager.com',3,2,true,'manager2','a10f06547f79a8285b06047f47793c64');
INSERT INTO "guddi"."usuario" (id,nome,senha,email,id_orgao,papel,ativo,usuario,aminesia) VALUES (8,'Paulo Gladson','a5924b','gladisonico@gladisonico.com',1,4,true,'gladisonico','068c519cab5d63b2665fda5924b02eb8');
INSERT INTO "guddi"."usuario" (id,nome,senha,email,id_orgao,papel,ativo,usuario,aminesia) VALUES (10,'João','71606f','joao@joao.com',1,0,false,'joao','b662950a3b872e8e0126371606f41296');


INSERT INTO "guddi"."sistema" (id,nome,id_orgao,publico) VALUES (1,'Porto Sem Papel',1,true);
INSERT INTO "guddi"."sistema" (id,nome,id_orgao,publico) VALUES (2,'Sistema Integrado de Administração de Serviços',1,true);
INSERT INTO "guddi"."sistema" (id,nome,id_orgao,publico) VALUES (3,'PAS Serpro',1,true);
INSERT INTO "guddi"."sistema" (id,nome,id_orgao,publico) VALUES (4,'Governo Digital',2,true);
INSERT INTO "guddi"."sistema" (id,nome,id_orgao,publico) VALUES (5,'Controle de Acesso',2,true);
INSERT INTO "guddi"."sistema" (id,nome,id_orgao,publico) VALUES (6,'e-Protocolo',2,true);
INSERT INTO "guddi"."sistema" (id,nome,id_orgao,publico) VALUES (7,'SispatWeb',2,true);
INSERT INTO "guddi"."sistema" (id,nome,id_orgao,publico) VALUES (8,'Imobiliario',2,true);
INSERT INTO "guddi"."sistema" (id,nome,id_orgao,publico) VALUES (9,'NucleoPA',2,true);
INSERT INTO "guddi"."sistema" (id,nome,id_orgao,publico) VALUES (10,'Certidão Online',3,true);
INSERT INTO "guddi"."sistema" (id,nome,id_orgao,publico) VALUES (12,'Push',3,true);
INSERT INTO "guddi"."sistema" (id,nome,id_orgao,publico) VALUES (13,'Portal de Consultas',3,true);
INSERT INTO "guddi"."sistema" (id,nome,id_orgao,publico) VALUES (14,'TJ Consultas',3,true);
INSERT INTO "guddi"."sistema" (id,nome,id_orgao,publico) VALUES (15,'Sistema Sentinela',3,true);

INSERT INTO "guddi"."descritor" (id,url,id_sistema,tipo,nome,descricao) VALUES (1,'http://aplicacoes.mds.gov.br/teste/webservices/PPSPService',1,'WSDL','Porto Sem Papel','O PSP informatiza os procedimentos e integra, na medida em que promove a comunicação de dados entre os agentes intervenientes no processo portuário, eliminando o trâmite de 112 documentos, em diversas vias, e 935 informações em duplicidade junto às seis autoridades anuentes (Polícia Federal, Anvisa, Delegacia da Receita Federal, Vigiagro e Autoridade Portuária), preservando todos os seus aspectos inerentes ao sigilo e a segurança das informações nele produzidas. Isso irá reduzir em média 25% o tempo de estadia dos navios nos portos.');
INSERT INTO "guddi"."descritor" (id,url,id_sistema,tipo,nome,descricao) VALUES (2,'http://200.120.41.331:9080/SIAS',2,'REST','SIAS','O Siasg é o sistema informatizado de apoio às atividades operacionais do Sistema de Serviços Gerais. A solução tem sido uma ferramenta importante para a modernização da área de serviços gerais na Administração Federal, em especial no cadastramento de fornecedores e de catálogo de materiais e serviços e no registro de preços de bens e serviços.Assim, o sistema é capaz de agilizar os processos de compra e promover a transparência dos atos do governo ao divulgar informações sobre os processos licitatórios. O sistema foi desenvolvido para o Ministério do Planejamento, Orçamento e Gestão (MPOG).');
INSERT INTO "guddi"."descritor" (id,url,id_sistema,tipo,nome,descricao) VALUES (3,'http://aplicacoes.mds.gov.br/teste/webservices/PASService',3,'WSDL','CENTRAL SERVIÇOS','A Central de Serviços Serpro (CSS) é o canal de comunicação mais ágil entre os clientes da empresa ou usuários dos serviços Serpro com as equipes de especialistas. Confira as formas de abrir um acionamento na central e compreenda o seu funcionamento.');
INSERT INTO "guddi"."descritor" (id,url,id_sistema,tipo,nome,descricao) VALUES (4,'http://10.1.11.14:8080/controleacesso/ws/ControleAcessoFacadeBeanWS?wsdl',4,'WSDL','Portal do Governo Digital','A partir de 1º de novembro de 2012 uma novidade vai transformar o modo de acesso de usuários da Prodepa: é o Governo Digital, um acesso único a todos os sistemas desenvolvidos pela empresa.E o melhor, é que nada mudou. Para acessar o Governo Digital basta entrar na página do sistema que você utiliza, com o mesmo login e senha para autenticar sua conta. As diversas aplicações ou serviços estarão disponíveis num só lugar.Para proporcionar a implantação do sistema único, a Prodepa realiza a migração dos demais sistemas. Nesse sentido, durante este dia serão feitos ainda alguns ajustes técnicos para a total excelência do serviço.');
INSERT INTO "guddi"."descritor" (id,url,id_sistema,tipo,nome,descricao) VALUES (5,'http://10.1.11.14:8080/controleacesso/ws/ControleAcessoFacadeBeanWS?wsdl',5,'WSDL','Controle de Acesso','O sistema de controle de acesso controle asa permissões dos usuários em sistemas desenvolvidos pela prodepa');
INSERT INTO "guddi"."descritor" (id,url,id_sistema,tipo,nome,descricao) VALUES (6,'http://10.1.11.14:8080/eprotocolo/ws/DocumentoFacadeBeanWS?wsdl',6,'WSDL','eProtocolo','O eprotocolo fornece controle digital sobre os documentos que tramitam no estado');



--Servicos 1-Porto Sem Papel 
INSERT INTO "guddi"."retorno" (id,descricao,tipo) VALUES (1,'Flag Indicativa do cadastro com sucesso','Boolean');
INSERT INTO "guddi"."servico"  (id,id_descritor,nome,descricao,id_retorno) VALUES (1,1,'cadastrarNotaFiscal','Metodo para cadastro de uma nota fiscal',1);
INSERT INTO "guddi"."atributo" (id,descricao,nome,tipo,id_servico) VALUES (1,'Número da nota fiscal','numero','String',1);
INSERT INTO "guddi"."atributo" (id,descricao,nome,tipo,id_servico) VALUES (2,'Data da nota fiscal','dataEmissao','Date',1);
INSERT INTO "guddi"."atributo" (id,descricao,nome,tipo,id_servico) VALUES (3,'Valor da nota fiscal','valorTotal','Double',1);
INSERT INTO "guddi"."atributo" (id,descricao,nome,tipo,id_servico) VALUES (4,'Total de itens da nota fiscal','totalItens','Long',1);
INSERT INTO "guddi"."excecao" (id,descricao,identificador,id_servico) VALUES (1,'Nota Fiscal não localizada','erro.nf.01',1);
INSERT INTO "guddi"."excecao" (id,descricao,identificador,id_servico) VALUES (2,'Nota Fiscal invalida','erro.nf.02',1);

INSERT INTO "guddi"."retorno" (id,descricao,tipo) VALUES (2,'Flag Indicativa da alteracao com sucesso','Boolean');
INSERT INTO "guddi"."servico" (id,id_descritor,nome,descricao,id_retorno) VALUES (2,1,'alterarNotaFiscal','Metodo para cadastro de uma nota fiscal',2);
INSERT INTO "guddi"."atributo" (id,descricao,nome,tipo,id_servico) VALUES (5,'Número da nota fiscal','numero','String',2);
INSERT INTO "guddi"."atributo" (id,descricao,nome,tipo,id_servico) VALUES (6,'Data da nota fiscal','dataEmissao','Date',2);
INSERT INTO "guddi"."atributo" (id,descricao,nome,tipo,id_servico) VALUES (7,'Valor da nota fiscal','valorTotal','Double',2);
INSERT INTO "guddi"."atributo" (id,descricao,nome,tipo,id_servico) VALUES (8,'Total de itens da nota fiscal','totalItens','Long',2);
INSERT INTO "guddi"."excecao" (id,descricao,identificador,id_servico) VALUES (3,'Nota Fiscal não localizada','erro.nf.03',2);
INSERT INTO "guddi"."excecao" (id,descricao,identificador,id_servico) VALUES (4,'Nota Fiscal invalida','erro.nf.04',2);
INSERT INTO "guddi"."excecao" (id,descricao,identificador,id_servico) VALUES (5,'Nota Fiscal bloqueada para edição','erro.nf.05',2);

INSERT INTO "guddi"."retorno" (id,descricao,tipo) VALUES (3,'Flag Indicativa da exclusão com sucesso','Boolean');
INSERT INTO "guddi"."servico" (id,id_descritor,nome,descricao,id_retorno) VALUES (3,1,'excluirNotaFiscal','Metodo para cadastro de uma nota fiscal',3);
INSERT INTO "guddi"."atributo" (id,descricao,nome,tipo,id_servico) VALUES (9,'Identificador da nota fiscal','id','Long',3);
INSERT INTO "guddi"."excecao" (id,descricao,identificador,id_servico) VALUES (6,'Nota Fiscal não localizada','erro.nf.06',3);
INSERT INTO "guddi"."excecao" (id,descricao,identificador,id_servico) VALUES (7,'Nota Fiscal invalida','erro.nf.07',3);
INSERT INTO "guddi"."excecao" (id,descricao,identificador,id_servico) VALUES (8,'Nota Fiscal bloqueada para edição','erro.nf.08',3);


--Servicos 4-Governo Digital
INSERT INTO "guddi"."retorno" (id,descricao,tipo) VALUES (4,'Lista de Sistemas','ArrayList<Sistema>');
INSERT INTO "guddi"."servico"  (id,id_descritor,nome,descricao,id_retorno) VALUES (4,4,'buscarSistemasVinculados','Metodo para recuperar a list de sistemas do usuário',4);
INSERT INTO "guddi"."atributo" (id,descricao,nome,tipo,id_servico) VALUES (10,'Identificador do usuário','id','Long',4);
INSERT INTO "guddi"."excecao" (id,descricao,identificador,id_servico) VALUES (9,'Usuário não localizado','erro.usuario.01',4);
INSERT INTO "guddi"."excecao" (id,descricao,identificador,id_servico) VALUES (10,'Usuário bloqueado','erro.usuario.02',4);

INSERT INTO "guddi"."retorno" (id,descricao,tipo) VALUES (5,'Lista de usuarios encontrados','List<Usuario>');
INSERT INTO "guddi"."servico" (id,id_descritor,nome,descricao,id_retorno) VALUES (5,4,'buscarUsuarios','Metodo para pesquisa de usuários',5);
INSERT INTO "guddi"."atributo"(id,descricao,nome,tipo,id_servico) VALUES (11,'Nome, login ou documento do usuário','descricao','String',5);
INSERT INTO "guddi"."excecao" (id,descricao,identificador,id_servico) VALUES (11,'Parâmetros inválidos','erro.pesquisa.03',5);

INSERT INTO "guddi"."retorno" (id,descricao,tipo) VALUES (6,'Gson com estatisticas de acesso do Sistema','Text');
INSERT INTO "guddi"."servico" (id,id_descritor,nome,descricao,id_retorno) VALUES (6,4,'obterEstatisticas','Metodo para obter Gson com estatisticas de acesso do Sistema',6);
INSERT INTO "guddi"."atributo" (id,descricao,nome,tipo,id_servico) VALUES (12,'identificador do Sistema','id','Long',6);
INSERT INTO "guddi"."excecao" (id,descricao,identificador,id_servico) VALUES (12,'Sistema não localizado','erro.estatistica.06',6);

--Servicos 6-eProtocolo
INSERT INTO "guddi"."retorno" (id,descricao,tipo) VALUES (7,'Objeto com detalhamento do estado atual de um protocolo','DetalhamentoProtocolo');
INSERT INTO "guddi"."servico" (id,id_descritor,nome,descricao,id_retorno) VALUES (7,6,'consultarProtocolo','Metodo para obter o detalhamento do estado atual de um protocolo',7);
INSERT INTO "guddi"."atributo"(id,descricao,nome,tipo,id_servico) VALUES (13,'Identificador do protocolo','protocolo','String',7);
INSERT INTO "guddi"."excecao" (id,descricao,identificador,id_servico) VALUES (13,'Protocolo não localizado','erro.protocolo.01',7);

INSERT INTO "guddi"."retorno" (id,descricao,tipo) VALUES (8,'Lista de tramitações de um protocolo','ArrayList<Tramitacao>');
INSERT INTO "guddi"."servico" (id,id_descritor,nome,descricao,id_retorno) VALUES (8,6,'consultarTramitacoes','Metodo para obter a lista de tramitações de um documento',8);
INSERT INTO "guddi"."atributo"(id,descricao,nome,tipo,id_servico) VALUES (14,'Identificador do protocolo','protocolo','String',8);
INSERT INTO "guddi"."excecao" (id,descricao,identificador,id_servico) VALUES (14,'Protocolo não localizado','erro.protocolo.02',8);





--Marcacoes

INSERT INTO "guddi"."marcacao" (id,marcacao) VALUES (1,'SERPRO');
INSERT INTO "guddi"."marcacao" (id,marcacao) VALUES (2,'PRODEPA');
INSERT INTO "guddi"."marcacao" (id,marcacao) VALUES (3,'TRE');
INSERT INTO "guddi"."marcacao" (id,marcacao) VALUES (4,'TJE');

INSERT INTO "guddi"."marcacao" (id,marcacao) VALUES (11,'porto sem papel');
INSERT INTO "guddi"."marcacao" (id,marcacao) VALUES (12,'porto');
INSERT INTO "guddi"."marcacao" (id,marcacao) VALUES (13,'papel');

INSERT INTO "guddi"."descritor_marcacao" (id_descritor,id_marcacao) VALUES (1,1);
INSERT INTO "guddi"."descritor_marcacao" (id_descritor,id_marcacao) VALUES (1,11);
INSERT INTO "guddi"."descritor_marcacao" (id_descritor,id_marcacao) VALUES (1,12);
INSERT INTO "guddi"."descritor_marcacao" (id_descritor,id_marcacao) VALUES (1,13);


INSERT INTO "guddi"."marcacao" (id,marcacao) VALUES (14,'e-protocolo');
INSERT INTO "guddi"."marcacao" (id,marcacao) VALUES (15,'eprotocolo');
INSERT INTO "guddi"."marcacao" (id,marcacao) VALUES (16,'protocolo');
INSERT INTO "guddi"."marcacao" (id,marcacao) VALUES (17,'Pará');
INSERT INTO "guddi"."marcacao" (id,marcacao) VALUES (18,'Para');


INSERT INTO "guddi"."descritor_marcacao" (id_descritor,id_marcacao) VALUES (6,14);
INSERT INTO "guddi"."descritor_marcacao" (id_descritor,id_marcacao) VALUES (6,15);
INSERT INTO "guddi"."descritor_marcacao" (id_descritor,id_marcacao) VALUES (6,16);
INSERT INTO "guddi"."descritor_marcacao" (id_descritor,id_marcacao) VALUES (6,16);
INSERT INTO "guddi"."descritor_marcacao" (id_descritor,id_marcacao) VALUES (6,17);
INSERT INTO "guddi"."descritor_marcacao" (id_descritor,id_marcacao) VALUES (4,2);
INSERT INTO "guddi"."descritor_marcacao" (id_descritor,id_marcacao) VALUES (5,2);
INSERT INTO "guddi"."descritor_marcacao" (id_descritor,id_marcacao) VALUES (6,2);
INSERT INTO "guddi"."descritor_marcacao" (id_descritor,id_marcacao) VALUES (4,17);
INSERT INTO "guddi"."descritor_marcacao" (id_descritor,id_marcacao) VALUES (5,17);
INSERT INTO "guddi"."descritor_marcacao" (id_descritor,id_marcacao) VALUES (6,17);
INSERT INTO "guddi"."descritor_marcacao" (id_descritor,id_marcacao) VALUES (4,18);
INSERT INTO "guddi"."descritor_marcacao" (id_descritor,id_marcacao) VALUES (5,18);
INSERT INTO "guddi"."descritor_marcacao" (id_descritor,id_marcacao) VALUES (6,18);



---continuar

--delete from guddi.descritor_marcacao

--delete from guddi.marcacao

ALTER SEQUENCE guddi.servico_id_seq RESTART WITH 100;
ALTER SEQUENCE guddi.atributo_id_seq RESTART WITH 100;
ALTER SEQUENCE guddi.retorno_id_seq RESTART WITH 100;
ALTER SEQUENCE guddi.excecao_id_seq RESTART WITH 100;
ALTER SEQUENCE guddi.retorno_id_seq RESTART WITH 100;
ALTER SEQUENCE guddi.descritor_id_seq RESTART WITH 100;
ALTER SEQUENCE guddi.sistema_id_seq RESTART WITH 100;
ALTER SEQUENCE guddi.usuario_id_seq RESTART WITH 100;
ALTER SEQUENCE guddi.orgao_id_seq RESTART WITH 100;

ALTER SEQUENCE guddi.marcacao_id_seq RESTART WITH 100;



