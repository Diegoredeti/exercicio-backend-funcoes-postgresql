
SELECT COUNT(*) FROM farmacia;

SELECT MIN(idade) FROM usuarios;

SELECT MAX(idade) FROM usuarios;

SELECT AVG(idade) FROM usuarios WHERE idade >= 18;

SELECT SUM(estoque) FROM farmacia WHERE categoria IN ('blue', 'black');

SELECT categorias, SUM(estoque) FROM farmacia WHERE categoria IS NOT NULL GROUP BY categoria;

SELECT SUM(estoque) FROM farmacia WHERE categoria IS NULL;

SELECT COUNT(*) FROM farmacia WHERE categoria IS NULL;

SELECT medicamento || ' (' || categoria || ')' FROM farmacia WHERE categoria IS NOT NULL;

SELECT id || ' - ' || medicamento || ' (' || COALESCE(categoria, 'sem categoria') || ')' FROM farmacia;

SELECT nome, idade, EXTRACT(YEAR FROM CAST(cadastro AS DATE)) AS ano_cadastro FROM usuarios WHERE EXTRACT(YEAR FROM CAST(cadastro AS DATE)) = 2020;

SELECT nome, idade, email, AGE(NOW(), TO_TIMESTAMP(cadastro, 'YYYY-MM-DD HH24:MI:SS')) AS tempo_cadastro FROM usuarios WHERE idade >= 60;

SELECT categoria, COUNT(*) FROM farmacia WHERE categoria IS NOT NULL GROUP BY categoria;

SELECT idade, COUNT(*) FROM usuarios WHERE idade >= 18 GROUP BY idade;

SELECT categoria, SUM(estoque) FROM farmacia GROUP BY categoria ORDER BY categoria LIMIT 3;

