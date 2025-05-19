CREATE DATABASE modelagem_rede_social;
USE modelagem_rede_social;

CREATE TABLE usuario (
	id_usuario INT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha_hash VARCHAR(100) NOT NULL
);

CREATE TABLE tipo_curtida (
	id_tipo_curtida INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(100)
);

CREATE TABLE tipo_postagem (
	id_tipo_postagem INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(100)
);

CREATE TABLE postagem (
	id_postagem INT PRIMARY KEY AUTO_INCREMENT,
    texto VARCHAR(100), -- ACHAR ALGUMA MANEIRA DE REALIZAR O TRATAMENTO DA POSTAGEM, PORQUE NAO PODE POSTAR VAZIO
    imagem VARCHAR(100),
    localizacao FLOAT, -- CRIAR OUTRA TABELA PARA PUXAR DADOS DE LOCALIZAÇÃO
    id_usuario INT, -- DEVERIA TER CRIADO UMA FK PARA DROPAR EM CASCATA CASO O USUARIO SEJA EXCLUIDO
    id_tipo_postagem INT,
    CHECK (texto IS NOT NULL OR imagem IS NOT NULL), -- VALIDA SE O TEXTO OU A IMAGEM EXISTE    
    CHECK (texto IS NULL OR LENGTH(TRIM(texto)) > 0), -- VALIDA QUE O TEXTO NAO TA VAZIO OU SO ESPAÇO
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_tipo_postagem) REFERENCES tipo_postagem(id_tipo_postagem)
);

CREATE TABLE comentario (
	id_comentario INT PRIMARY KEY AUTO_INCREMENT,
    texto VARCHAR(100) NOT NULL, -- VALIDAR O TEXTO DO USUARIO, O COMENTARIO NAO PODE SER POSTADO VAZIO
    data_hora DATETIME,
    id_usuario INT,
    id_postagem INT,
    CHECK (LENGTH(TRIM(texto)) > 0), -- VALIDA O INPUT DO USUARIO
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_postagem) REFERENCES postagem(id_postagem)
);

CREATE TABLE marcacao (
	id_marcacao INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    id_postagem INT,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_postagem) REFERENCES postagem(id_postagem)
);

CREATE TABLE curtida (
	id_curtida INT PRIMARY KEY AUTO_INCREMENT, -- VALIDAR CURTIDA PARA NAO SAIR DUPLICADO QUANDO O BOTTON DO FRONTEND FOR ACIONADO
    id_usuario INT, -- NAO USAR O UNIQUE, POIS O USUARIO SÓ CONSEGUIRA CURTIR 1 VEZ, E NAO CONSEGUIRA CURTIR OUTROS POSTS
    id_postagem INT,
    id_tipo_curtida INT,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_postagem) REFERENCES postagem(id_postagem),
    FOREIGN KEY (id_tipo_curtida) REFERENCES tipo_curtida(id_tipo_curtida),
    -- UNIQUE (id_usuario, id_postagem) -- SUPOSTAMENTE IMPEDE DUPLICATAS // NAO FUNCIONA
);

