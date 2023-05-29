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

CREATE TABLE monstrobicho (
    id SERIAL NOT NULL,
    nome VARCHAR(50) NOT NULL,
    nv_perigo_id INTEGER REFERENCES nv_perigo(id),
    raridade_id INTEGER REFERENCES raridade(id),
    habitat_id INTEGER REFERENCES habitat(id),
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

insert into nv_perigo(nome) values ('Inofensivo')
insert into nv_perigo(nome) values ('Se provocado fere grave')
select * from nv_perigo