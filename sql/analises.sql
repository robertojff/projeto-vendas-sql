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
