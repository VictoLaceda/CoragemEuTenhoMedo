CREATE TABLE nv_perigo (
    id SERIAL NOT NULL,
    nome VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE raridade (
    id SERIAL NOT NULL,
    nome VARCHAR(10) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE habitat (
    id SERIAL NOT NULL,
    nome VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

alter TABLE monstrobicho (
    id SERIAL NOT NULL,
    nome VARCHAR(50) NOT NULL,
    nv_perigo_id INTEGER REFERENCES nv_perigo(id),
    raridade_id INTEGER REFERENCES raridade(id),
    habitat_id INTEGER REFERENCES niveis_lugares(id),
    PRIMARY KEY (id)
);

create table descricao(
  id SERIAL NOT NULL,
  nome VARCHAR(300) NOT NULL,
  monstrobicho_id INTEGER REFERENCES monstrobicho(id),
  PRIMARY KEY (id)
);

create table aparencia(
  id SERIAL NOT NULL,
  aparencia VARCHAR(300) NOT NULL,
  monstrobicho_nome INTEGER REFERENCES monstrobicho(id),
  PRIMARY KEY (id)
);

create table niveis_lugares(
	id serial not NULL,
  	nome VARCHAR(20),
  	subtitulo varchar(150),
	monstrobicho_id INTEGER REFERENCES monstrobicho(id),
  	nv_perigo_id INTEGER REFERENCES nv_perigo(id)
);

create table portais(
	niveis_lugares_fk INTEGER REFERENCES niveis_lugares(id)
);

create table locais_monstros(
  id serial not NULL,
  nome VARCHAR(20),
  monstrobicho_id INTEGER REFERENCES monstrobicho(id),
  niveis_lugares_id INTEGER REFERENCES niveis_lugares(id)
);

/* INSERINDO OS LUGARES DO DIAB  */

insert into niveis_lugares(nome,subtitulo) values ('O inicio','salas de escritorios amarela mais pra cor bege');
insert into niveis_lugares(nome,subtitulo) values ('Zona habitavel','salas com corredor');
insert into niveis_lugares(nome,subtitulo) values ('Sonhos impossiveis','corredor apertado de concreto com tubo de vapor em cima');
insert into niveis_lugares(nome,subtitulo) values ('Estacao eletrica','corredor apertado com fiacao eletrica em cima');
insert into niveis_lugares(nome,subtitulo) values ('Escritório Vazio','prédio de escritórios vazio, completamente sem móveis.');
insert into niveis_lugares(nome,subtitulo) values ('Hotel do Terror','complexo hoteleiro infinito, com muitos quartos e salões');
insert into niveis_lugares(nome,subtitulo) values ('Luzes apagadas','completamente escuro,feito de parede metalico e chao de tijolo');
insert into niveis_lugares(nome,subtitulo) values ('Talassofobia','vasta extensão de água que parece se estender infinitamente, tornando-se um oceano sem vida');
insert into niveis_lugares(nome,subtitulo) values ('Sistema de Cavernas','sistema de cavernas expansivo');

/* E QUAIS sao as chances de ver  MONSTROS TEM NESSES NIVEIS*/

INSERT INTO raridade(nome) VALUES('Desconhecido:');
INSERT INTO raridade(nome) VALUES('Extinta:');
INSERT INTO raridade(nome) VALUES('Quase Extinto:'); 
INSERT INTO raridade(nome) VALUES('Raro:'); 
INSERT INTO raridade(nome) VALUES('Incomum:'); 
INSERT INTO raridade(nome) VALUES('Comum :');
INSERT INTO raridade(nome) VALUES('Maioria:');
INSERT INTO raridade(nome) VALUES('Muitos:');

/* GRAU DE AMEAÇA DESSES MONSTROS */

insert into nv_perigo values ('Cl. 1 N agressivo');
insert into nv_perigo values ('Cl. 2 norm N.agres');
insert into nv_perigo values ('Cl. 3 Agressivo');
insert into nv_perigo values ('Cl. 4 Bem agresi');
insert into nv_perigo values ('Cl. 5 Perigoso');
insert into nv_perigo values ('Cl. 6 Bem perigo');
insert into nv_perigo values ('Cl. 7 Mitologico');
INSERT INTO nv_perigo values ('Cl. poseidom');

/* E COMO IR PARA OUTROS LOCAIS */