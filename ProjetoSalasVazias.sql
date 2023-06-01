CREATE TABLE nv_perigo (
    id SERIAL NOT NULL,
    nome VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE raridade (
    id SERIAL NOT NULL,
    nome VARCHAR(50) NOT NULL,
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
  nome VARCHAR(650) NOT NULL,
  monstrobicho_id INTEGER REFERENCES monstrobicho(id),
  PRIMARY KEY (id)
);

create table aparencia(
  id SERIAL NOT NULL,
  aparencia VARCHAR(150) NOT NULL,
  monstrobicho_nome INTEGER REFERENCES monstrobicho(id),
  PRIMARY KEY (id)
);

create table niveis_lugares(
	id serial not NULL,
  	nome VARCHAR(20),
  	subtitulo varchar(100),
	monstrobicho_id INTEGER REFERENCES monstrobicho(id)
);

create table portais(
	id serial not NULL,
  	nome VARCHAR(20),
  	subtitulo varchar(30),
	niveis_lugares_fk INTEGER REFERENCES niveis_lugares(id)
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


/* E QUAIS MONSTROS TEM NESSES NIVEIS*/

/* E COMO IR PARA OUTROS LOCAIS


insert 

insert into 






