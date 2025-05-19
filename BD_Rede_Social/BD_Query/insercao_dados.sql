-- INSERINDO DADOS USUARIO
INSERT INTO usuario (nome, email, senha_hash) VALUES
('Ana', 'ana@email.com', 'hash1'),
('Bruno', 'bruno@email.com', 'hash2'),
('Carla', 'carla@email.com', 'hash3');

-- INSERINDO DADOS CURTIDA
INSERT INTO tipo_curtida (descricao) VALUES
('Curtir'),
('Amei'),
('Haha'),
('Uau'),
('Triste'),
('Grr');

-- INSERINDO DADOS TIPO DA POSTAGEM
INSERT INTO tipo_postagem (descricao) VALUES
('Texto'),
('Imagem'),
('Vídeo');

-- INSERINDO DADOS POSTAGEM
INSERT INTO postagem (texto, imagem, localizacao, id_usuario, id_tipo_postagem) VALUES
('Primeira postagem!', NULL, 0.0, 1, 1),
('Foto da viagem', 'viagem.png', 1.0, 2, 2),
('Vídeo engraçado', 'video.mp4', 2.0, 3, 3);

-- INSERINDO DADOS COMENTARIO
INSERT INTO comentario (texto, data_hora, id_usuario, id_postagem) VALUES
('Muito bom!', NOW(), 2, 1),
('Adorei a foto', NOW(), 1, 2),
('Ri demais!', NOW(), 1, 3);

-- INSERINDO DADOS MARCACAO
INSERT INTO marcacao (id_usuario, id_postagem) VALUES
(2, 1),
(3, 2),
(1, 3);

-- INSERINDO DADOS CURTIDAS
-- OBS: VALIDAR AS CURTIDAS PARA NÃO FICAR DUPLICADO OU UNICA
INSERT INTO curtida (id_usuario, id_postagem, id_tipo_curtida) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);
