-- KPI's

-- RECEITA TOTAL
SELECT ROUND(SUM(Sales), 2) AS receita_total
FROM vendas;

-- LUCRO TOTAL
SELECT ROUND(SUM(Profit), 2) AS lucro_total 
FROM vendas;

-- QUANTIDADE VENDIDA
SELECT SUM(Quantity) AS quantidade_vendida
FROM vendas;

-- TOTAL DE PEDIDOS
SELECT COUNT(DISTINCT "Order ID") AS total_pedidos
FROM vendas;

-- GERANDO INSIGHTS

-- Top 10 produtos por receita
SELECT "Product Name",
ROUND(SUM(Sales),2) AS receita
FROM vendas
GROUP BY "Product Name"
ORDER BY receita DESC LIMIT 10;

-- Top 10 clientes por receita
SELECT "Customer Name",
ROUND(SUM(Sales),2) AS receita
FROM vendas
GROUP BY "Customer Name"
ORDER BY receita DESC LIMIT 10;

-- Receita por categoria
SELECT Category,
round(sum(Sales),2) AS receita
FROM vendas
GROUP BY Category
ORDER BY receita DESC;

-- Análise Temporal
-- As vendas estão crescendo ou diminuindo ao longo do tempo?
SELECT strftime('%Y-%m',"Order Date") AS mes,
ROUND(SUM(Sales),2) AS receita
FROM vendas
GROUP BY mes
ORDER BY mES;
-- OU
SELECT "Order Date", Sales
FROM vendas LIMIT 5;

-- Quais produtos são mais lucrativos?
SELECT "Product Name",
ROUND(SUM(Profit),2) AS lucro
FROM vendas
GROUP BY "Product Name"
ORDER BY lucro DESC LIMIT 10;
