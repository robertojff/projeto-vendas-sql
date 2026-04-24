# 📊 Análise de Vendas com SQL

## 🎯 Objetivo

Este projeto tem como objetivo analisar dados de vendas para identificar padrões de consumo, comportamento de clientes e desempenho de produtos, gerando insights que possam auxiliar na tomada de decisão de negócio.

---

## 🛠️ Ferramentas Utilizadas

* SQL
* (Próximo passo: Power BI para visualização de dados)

---

## 📁 Estrutura do Projeto

* `create_tables.sql` → criação das tabelas
* `insert_data.sql` → inserção dos dados
* `analises.sql` → consultas e análises realizadas

---

## 🧱 Estrutura do Banco de Dados

O banco foi modelado com três tabelas principais:

* **clientes** → armazena informações dos clientes
* **produtos** → contém dados dos produtos e preços
* **pedidos** → registra as transações realizadas

Essas tabelas se relacionam por meio de chaves estrangeiras, permitindo análises integradas entre clientes, produtos e vendas.

---

## 📊 Análises Realizadas

### 💰 Receita Total

Cálculo da receita total da empresa com base na quantidade vendida e no preço dos produtos.

---

### 📦 Produto Mais Vendido

Identificação dos produtos com maior volume de vendas.

---

### 💸 Receita por Produto

Análise do faturamento gerado por cada produto.

---

### 👤 Clientes com Mais Pedidos

Identificação dos clientes com maior volume de compras.

---

### 📅 Receita por Período

Análise da evolução da receita ao longo do tempo.

---

## 📈 Insights Obtidos

* O produto **Celular** apresentou maior impacto na receita total, indicando alta relevância financeira para o negócio.

* A categoria **Eletrônicos** concentrou a maior parte do faturamento, sendo estratégica para aumento de receita.

* O cliente **Roberto** se destacou como o mais recorrente, indicando potencial para estratégias de fidelização.

* Foi observado aumento na receita no mês de fevereiro em comparação a janeiro, sugerindo crescimento nas vendas no período.

* Produtos com menor preço apresentaram maior volume de vendas, porém menor contribuição no faturamento total.

---

## 📌 Possíveis Ações de Negócio

* Priorizar produtos com maior geração de receita em campanhas de marketing
* Desenvolver estratégias de retenção para clientes recorrentes
* Monitorar a performance mensal para identificar tendências de crescimento
* Avaliar o equilíbrio entre volume de vendas e margem de lucro por produto

---

## 🧠 Principais Aprendizados

Durante o desenvolvimento deste projeto, foram aplicados conceitos fundamentais de análise de dados com SQL:

* Uso de `JOIN` para relacionamento entre tabelas
* Aplicação de funções de agregação (`SUM`, `COUNT`)
* Agrupamento de dados com `GROUP BY`
* Ordenação de resultados com `ORDER BY`
* Criação de métricas de negócio a partir de dados brutos

---

## 🚀 Próximos Passos

* Implementar novas métricas (ticket médio, análise por região, etc.)
* Criar dashboard interativo no Power BI
* Trabalhar com bases de dados maiores e mais complexas
* Evoluir para análises mais avançadas

---

## 📌 Conclusão

Este projeto demonstra a capacidade de transformar dados brutos em informações relevantes, utilizando SQL para gerar insights que podem apoiar decisões estratégicas de negócio.

---

---

