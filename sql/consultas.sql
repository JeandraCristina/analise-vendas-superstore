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