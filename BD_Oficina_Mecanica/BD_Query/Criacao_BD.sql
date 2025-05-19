CREATE DATABASE oficina_modelagem;

USE oficina_modelagem;

CREATE TABLE cliente (
	id_cliente INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    cpf VARCHAR(11) UNIQUE,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE cor (
	id_cor INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(100)
);

CREATE TABLE modelo (
	id_modelo INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(100)
);

CREATE TABLE categoria (
	id_categoria INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(100)
);

CREATE TABLE tipo_pagamento (
	id_tipo_pagamento INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(100)
);

CREATE TABLE peca (
	id_peca INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    qtd_estoque INT NOT NULL,
    descricao VARCHAR(100)
);

CREATE TABLE funcionario (
	id_funcionario INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    cpf VARCHAR(11) UNIQUE,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE automovel (
	id_automovel INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    placa VARCHAR(7) UNIQUE NOT NULL,
    id_cor INT NOT NULL,
    id_modelo INT NOT NULL,
    id_categoria INT NOT NULL,
    id_cliente INT NOT NULL,
    FOREIGN KEY(id_cor) REFERENCES cor(id_cor),
    FOREIGN KEY(id_modelo) REFERENCES modelo(id_modelo),
    FOREIGN KEY(id_categoria) REFERENCES categoria(id_categoria),
    FOREIGN KEY(id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE pedido (
	id_pedido INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    id_tipo_pagamento INT NOT NULL,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_tipo_pagamento) REFERENCES tipo_pagamento(id_tipo_pagamento),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE transacao(
	qtd INT NOT NULL,
    id_pedido INT NOT NULL,
    id_peca INT NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    FOREIGN KEY (id_peca) REFERENCES peca(id_peca)
);

CREATE TABLE conserto(
	id_conserto INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    data_hora DATETIME DEFAULT NOW(),
    id_automovel INT NOT NULL,
    id_funcionario INT NOT NULL,
    FOREIGN KEY(id_automovel) REFERENCES automovel(id_automovel),
    FOREIGN KEY(id_funcionario) REFERENCES funcionario(id_funcionario)
);

CREATE TABLE peca_conserto (
	qtd INT NOT NULL,
    id_conserto INT NOT NULL,
    id_peca INT NOT NULL,
    FOREIGN KEY (id_conserto) REFERENCES conserto(id_conserto),
    FOREIGN KEY (id_peca) REFERENCES peca(id_peca)
);
