-- Fornecedores
INSERT INTO fornecedor (cnpj, nome) VALUES
('12345678000190', 'Fornecedor A'),
('23456789000180', 'Fornecedor B'),
('34567890000170', 'Fornecedor C');

-- Fabricantes
INSERT INTO fabricante (cnpj, nome) VALUES
('98765432000155', 'Fabricante X'),
('87654321000144', 'Fabricante Y');

-- Produtos
INSERT INTO produto (nome) VALUES
('Produto 1'),
('Produto 2'),
('Produto 3');

-- Lotes
INSERT INTO lote (numero, quantidade, id_fabricante, id_fornecedor, id_produto) VALUES
('L001', 100, 1, 1, 1),
('L002', 200, 2, 2, 2),
('L003', 150, 1, 3, 3),
('L004', 300, 2, 1, 1),
('L005', 50, 1, 2, 2);
