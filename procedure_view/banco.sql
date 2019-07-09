CREATE DATABASE site;
use site;

CREATE TABLE contato(
  id_contato int(11) NOT NULL,
  tipo_contato varchar(45) DEFAULT NULL,
  assunto_contato varchar(45) DEFAULT NULL,
  mensagem_contato varchar(45) DEFAULT NULL,
  usuario_id_usuario int(11) NOT NULL,
  PRIMARY KEY (id_contato),
  FOREIGN KEY (usuario_id_usuario) REFERENCES usuario (id_usuario)
);

CREATE TABLE menu(
  id_menu int(11) NOT NULL,
  nm_menu varchar(45) DEFAULT NULL,
  index_menu varchar(45) DEFAULT NULL,
  perfil_id_perfil int(11) NOT NULL,
  PRIMARY KEY (id_menu),
  FOREIGN KEY (perfil_id_perfil) REFERENCES perfil (id_perfil)
);


CREATE TABLE noticia (
  id_noticia int(11) NOT NULL,
  titulo_noticia varchar(45) DEFAULT NULL,
  conteudo_noticia text,
  usuario_id_usuario int(11) NOT NULL,
  perfil_id_perfil int(11) NOT NULL,
  PRIMARY KEY (id_noticia),
  FOREIGN KEY (perfil_id_perfil) REFERENCES perfil (id_perfil),
  FOREIGN KEY (usuario_id_usuario) REFERENCES usuario (id_usuario)
);


CREATE TABLE perfil (
  id_perfil int(11) NOT NULL,
  nome_perfil varchar(45) DEFAULT NULL,
  PRIMARY KEY (id_perfil)
);


CREATE TABLE usuario (
  id_usuario int(11) NOT NULL,
  nm_usuario varchar(45) DEFAULT NULL,
  sobrenome_usuario varchar(45) DEFAULT NULL,
  email_usuario varchar(45) DEFAULT NULL,
  senha_usuario varchar(45) DEFAULT NULL,
  PRIMARY KEY (id_usuario)
);

select * from usuario;
select * from perfil;
select * from noticia;
select * from menu;
select * from contato;

insert into usuario values(123456,'Gabriel','Leandro','gabrielleandro@hotmail.com',19960101);
insert into usuario values(1234567,'Pedro','Leandro','pedroleadnro@hotmail.com',199601012);

insert into perfil values (1231234312,'Administrativo');
insert into perfil values (123123431,'Recepção');

insert into noticia values (12343451,'venda','notebook',1234564,1231234312);
insert into noticia values (12343451,'venda','notebook',1234564,1231234312);


insert into menu values (123413,'venda','notebook',1231234312);
insert into menu values (12341,'compra','notebook',123123431);

insert into contato values (43241,'responvaveis','direção','oi',1234564);
insert into contato values (432413,'sobre','sobre','ola',1234564);