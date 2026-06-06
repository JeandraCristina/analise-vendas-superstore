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

