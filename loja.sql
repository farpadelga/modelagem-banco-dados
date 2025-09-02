-- Criação do banco de dados
CREATE DATABASE loja;
USE loja;

-- Tabela de produtos
CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2)
);

-- Tabela de pedidos
CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    produto_id INT,
    quantidade INT,
    data_pedido DATE,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserindo produtos
INSERT INTO produtos (id, nome, preco) VALUES
(1, 'Camiseta', 49.90),
(2, 'Calça Jeans', 129.90),
(3, 'Tênis', 199.90);

-- Inserindo pedidos
INSERT INTO pedidos (id, produto_id, quantidade, data_pedido) VALUES
(1, 2, 1, '2025-09-01'),
(2, 1, 3, '2025-09-02'),
(3, 3, 2, '2025-09-02');
