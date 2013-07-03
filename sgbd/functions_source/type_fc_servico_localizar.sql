--drop type guddi.type_fc_servico_localizar
create type guddi.type_fc_servico_localizar
as (
  id_orgao bigint,
  nome_orgao varchar(50),
  id_sistema bigint,
  nome_sistema varchar(20),
  id_descritor bigint,
  descricao_descritor varchar(100),
  id_servico bigint,
  nome_servico varchar(50),
  wsdl_link_servico text
);

alter type guddi.type_fc_servico_localizar owner to guddi_apl;

