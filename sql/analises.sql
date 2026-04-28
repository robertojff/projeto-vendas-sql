-- Produto que mais vendeu

SELECT 
    pr.nome_produto,
    SUM(p.quantidade) AS total_vendido
FROM pedidos p
JOIN produtos pr ON p.produto_id = pr.produto_id
GROUP BY pr.nome_produto
ORDER BY total_vendido DESC;

-- Receita por produto

SELECT 
    pr.nome_produto,
    SUM(p.quantidade * pr.preco) AS receita
FROM pedidos p
JOIN produtos pr ON p.produto_id = pr.produto_id
GROUP BY pr.nome_produto
ORDER BY receita DESC;

-- Quantos pedidos cada cliente fez

SELECT 
    c.nome,
    COUNT(p.pedido_id) AS total_pedidos
FROM clientes c
JOIN pedidos p ON c.cliente_id = p.cliente_id
GROUP BY c.nome
ORDER BY total_pedidos DESC;

-- Análise de receita por mês
-- Correção: substituição da função DATE_FORMAT (MySQL) por TO_CHAR (PostgreSQL)

SELECT 
    TO_CHAR(p.data_pedido, 'YYYY-MM') AS mes, 
    SUM(p.quantidade * pr.preco) AS receita_total
FROM pedidos p
JOIN produtos pr ON p.produto_id = pr.produto_id
GROUP BY mes
ORDER BY receita_total DESC;

-- 📊 Ticket Médio
-- Calcula o valor médio de cada pedido
-- Etapas:
-- 1. Soma o valor total de cada pedido (quantidade * preço)
-- 2. Calcula a média desses valores

-- 1. Soma o valor total de cada pedido (quantidade * preço)

SELECT 
        p.pedido_id,
        SUM(p.quantidade * pr.preco) AS total_venda
    FROM pedidos p
    JOIN produtos pr ON p.produto_id = pr.produto_id
    GROUP BY p.pedido_id;

-- 2. Calcula a média desses valores

SELECT 
    AVG(total_venda) AS ticket_medio
FROM (
    SELECT 
        p.pedido_id,
        SUM(p.quantidade * pr.preco) AS total_venda
    FROM pedidos p
    JOIN produtos pr ON p.produto_id = pr.produto_id
    GROUP BY p.pedido_id
) AS sub;

-- 📊 Melhor Cliente por Receita
-- Objetivo: identificar qual cliente gerou mais dinheiro para a empresa

SELECT 
    c.nome,
    SUM(p.quantidade * pr.preco) AS receita
FROM clientes c
JOIN pedidos p ON c.cliente_id = p.cliente_id
JOIN produtos pr ON p.produto_id = pr.produto_id
GROUP BY c.nome
ORDER BY receita DESC;

-- 📦 Produto Mais Vendido
-- Objetivo: identificar o produto com maior volume de vendas

SELECT 
    pr.nome_produto,
    SUM(p.quantidade) AS total_vendido
FROM produtos pr
JOIN pedidos p ON p.produto_id = pr.produto_id
GROUP BY pr.nome_produto
ORDER BY total_vendido DESC;

-- 💰 Produto Mais Lucrativo
-- Objetivo: identificar o produto que gerou maior receita para a empresa

SELECT 
    pr.nome_produto,
    SUM(p.quantidade * pr.preco) AS receita_total
FROM produtos pr
JOIN pedidos p ON p.produto_id = pr.produto_id
GROUP BY pr.nome_produto
ORDER BY receita_total DESC
LIMIT 1;

-- 🔁 Clientes Recorrentes
-- Objetivo: identificar quais clientes compraram mais vezes

SELECT 
    c.nome,
    COUNT(p.pedido_id) AS total_pedidos
FROM clientes c
JOIN pedidos p ON c.cliente_id = p.cliente_id
GROUP BY c.nome
ORDER BY total_pedidos DESC;
