# 📊 Projeto de Análise de Vendas com SQL

Projeto prático desenvolvido com foco em evoluir habilidades em **SQL**, **PostgreSQL** e **Análise de Dados**, simulando um cenário real de vendas.

O objetivo é transformar dados brutos em informações estratégicas para apoiar decisões de negócio.

---

# 🎯 Objetivos do Projeto

- Praticar consultas SQL na prática
- Trabalhar relacionamentos entre tabelas
- Gerar insights de negócio
- Construir portfólio para área de Dados

---

# 🛠️ Tecnologias Utilizadas

- PostgreSQL
- SQL
- Excel
- Git / GitHub

---

# 🗂️ Estrutura do Banco de Dados

O projeto utiliza 3 tabelas principais:

## 👤 clientes
- cliente_id
- nome

## 📦 produtos
- produto_id
- nome_produto
- preco

## 🧾 pedidos
- pedido_id
- cliente_id
- produto_id
- quantidade
- data_pedido

---

# 📈 Análises Desenvolvidas

## 💰 Receita Mensal

Consulta criada para acompanhar a evolução do faturamento ao longo dos meses.

### Insight:
Permite visualizar crescimento, queda de receita e sazonalidade.

---

## 🎯 Ticket Médio

Cálculo do valor médio gerado por pedido.

### Lógica aplicada:
1. Soma total de cada pedido  
2. Média dos valores encontrados

### Resultado:
**R$ 2.875,00 por pedido**

### Insight:
Indicador importante para performance comercial e comportamento de compra.

---

## 👑 Melhor Cliente por Receita

Consulta para identificar quais clientes mais geraram faturamento.

### Lógica aplicada:
- JOIN entre clientes, pedidos e produtos
- SUM para receita total
- GROUP BY por cliente
- ORDER BY decrescente

### Insight:
Ajuda a identificar clientes estratégicos para retenção e fidelização.

---

# 🧠 Funções SQL Utilizadas

- SELECT
- JOIN
- SUM()
- AVG()
- COUNT()
- GROUP BY
- ORDER BY
- Subqueries

---

# 🚀 Próximos Passos

- Produto mais vendido
- Dashboard no Power BI
- Ranking de clientes
- KPIs de vendas
- Visualizações interativas

---

# 📌 Sobre o Projeto

Este projeto faz parte da minha transição para a área de Dados, buscando desenvolver experiência prática com ferramentas utilizadas no mercado.

---

# 📬 Contato

Roberto Ferreira  
LinkedIn: https://www.linkedin.com/in/roberto-de-jesus-ferreira-884128233/


