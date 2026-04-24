SELECT 
    SUM(p.quantidade * pr.preco) AS receita_total
FROM pedidos p
JOIN produtos pr ON p.produto_id = pr.produto_id;
