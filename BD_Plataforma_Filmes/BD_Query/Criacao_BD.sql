-- ESSE BANCO DE DADOS ESTÁ QUEBRADO E NÃO FAZ SENTIDO NENHUM!!!!!

CREATE DATABASE modelo_plataforma_filme;
USE modelo_plataforma_filme;

CREATE TABLE forma_pagamento (
	id_forma_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(100)
);

CREATE TABLE tipo_chave_pix (
	id_tipo_chave_pix INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(100)
);

CREATE TABLE plano (
	id_plano INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    ips VARCHAR(50) NOT NULL,
    qtd_telas INT NOT NULL,
	id_pagamento_historico DATETIME -- CRIAR TRIGGER PARA SALVAR OS DADOS DO PAGAMENTO (MELHOR QUE FAZER GAMBIARRA COM FK)
);


CREATE TABLE cliente (
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha_hash VARCHAR(100) NOT NULL, -- ESSA PORCARIA NAO PODE SER UNIQUE PORQUE VAI DAR MERDA (DEMOREI MUITO PRA DESCOBRIR ISSO, EM CASOS RAROS O HASH VALIDO REPETE!!!!!!!!!!)
    ativo INT NOT NULL,
    id_plano INT,
    FOREIGN KEY (id_plano) REFERENCES plano(id_plano)
);

-- TRATAMENTO DA SENHA NO BACKEND EM PHP

/* $senhaPura = 'minha_senha123';

// Cria o hash seguro
$hash = password_hash($senhaPura, PASSWORD_DEFAULT);

// Agora insira esse hash no banco no campo SENHA_HASH
$sql = "INSERT INTO CLIENTE (NOME, EMAIL, SENHA_HASH) VALUES (?, ?, ?)";
$stmt = $pdo->prepare($sql);
$stmt->execute([$nome, $email, $hash]); */

/* AUTENTICAR O USUARIO
// Suponha que você já tenha buscado o hash do banco:
$senhaDigitada = 'minha_senha123';
$hashDoBanco = $usuario['SENHA_HASH'];

if (password_verify($senhaDigitada, $hashDoBanco)) {
    echo "Senha correta. Login permitido.";
} else {
    echo "Senha incorreta.";
} */

CREATE TABLE tela (
	id_tela INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    icone VARCHAR(255), -- ARMAZENAR O CAMINHO DA IMAGEM PNG
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE pagamento (
	id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    pago INT NOT NULL,
    cartao INT NOT NULL,
    cvv INT NOT NULL,
    id_tipo_chave_pix INT,
    id_cliente INT,
    id_forma_pagamento INT,
    FOREIGN KEY (id_tipo_chave_pix) REFERENCES tipo_chave_pix(id_tipo_chave_pix),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_forma_pagamento) REFERENCES forma_pagamento(id_forma_pagamento)
);

CREATE TABLE fatura (
	id_fatura INT PRIMARY KEY AUTO_INCREMENT,
    data_vencimento DATE NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    id_cliente INT,
    id_pagamento INT,
    id_plano INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_pagamento) REFERENCES pagamento(id_pagamento),
    FOREIGN KEY (id_plano) REFERENCES plano(id_plano)
);

DELIMITER $$

CREATE TRIGGER atualiza_data_pagamento
AFTER INSERT ON pagamento
FOR EACH ROW
BEGIN
    UPDATE plano p
    JOIN cliente c ON c.id_plano = p.id_plano
    SET p.id_pagamento_historico = NOW()
    WHERE c.id_cliente = NEW.id_cliente;
END $$

DELIMITER ;
