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

