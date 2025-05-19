-- DEPURANDO O BD

-- VERIFICANDO O USUARIO, POSTAGEM E TIPO_CURTIDA
INSERT INTO usuario (nome, email, senha_hash) VALUES 
('João', 'joao@email.com', 'hash1'),
('Maria', 'maria@email.com', 'hash2');

INSERT INTO tipo_curtida (descricao) VALUES 
('Curtir'), ('Amei');

INSERT INTO tipo_postagem (descricao) VALUES 
('Texto');

INSERT INTO postagem (texto, imagem, localizacao, id_usuario, id_tipo_postagem) VALUES 
('Postagem de teste', NULL, 0.0, 1, 1);

-- INSERINDO CURTIDA VALIDA // NAO CONSEGUI VALIDAR
-- João curte a postagem 1 com tipo "Curtir"
INSERT INTO curtida (id_usuario, id_postagem, id_tipo_curtida)
VALUES (1, 1, 1); -- NAO FUNCIONA
-- ALTER TABLE curtida DROP INDEX id_usuario; // FIZ MERDA
ALTER TABLE curtida ADD INDEX idx_id_usuario (id_usuario); 
ALTER TABLE curtida ADD CONSTRAINT unique_usuario_postagem UNIQUE (id_usuario, id_postagem); -- NAO FUNCIONA SOCORRO

-- Verificar Usuários que Curtiram uma Postagem
SELECT usuario.nome, tipo_curtida.descricao
FROM curtida
JOIN usuario ON curtida.id_usuario = usuario.id_usuario
JOIN tipo_curtida ON curtida.id_tipo_curtida = tipo_curtida.id_tipo_curtida;

-- Atualizar Tipo de Curtida
UPDATE curtida
JOIN tipo_curtida ON tipo_curtida.descricao = 'Amar'
SET curtida.id_tipo_curtida = tipo_curtida.id_tipo_curtida
WHERE curtida.id_curtida = 1;

/* -- DELETAR EM CASCATA USUARIO
ALTER TABLE postagem DROP FOREIGN KEY id_usuario;
SHOW CREATE TABLE postagem;
-- APAGAR A FK ANTIGA
ALTER TABLE postagem DROP FOREIGN KEY postagem_ibfk_1;
-- CRIAR FK COM DROP EM CASCATA
ALTER TABLE postagem ADD CONSTRAINT postagem_ibfk_1 FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON DELETE CASCADE;
ALTER TABLE comentario DROP FOREIGN KEY comentario_ibfk_1;
ALTER TABLE comentario ADD CONSTRAINT comentario_ibfk_1 FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON DELETE CASCADE;
ALTER TABLE curtida DROP FOREIGN KEY curtida_ibfk_1;
ALTER TABLE curtida ADD CONSTRAINT curtida_ibfk_1 FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON DELETE CASCADE;
DELETE FROM usuario WHERE id_usuario = 1;
SELECT * FROM postagem WHERE id_usuario = 1; */ -- VOU TER QUE ALTERAR TODAS AS TABELAS ~~
