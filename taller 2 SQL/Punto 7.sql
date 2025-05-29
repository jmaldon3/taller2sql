SELECT MONTH(CreatedAt) AS mes,
 COUNT(*) AS total_ventas
FROM venta
GROUP BY MONTH(CreatedAt)
ORDER BY mes;

-- se usa el createdAt porque no tenemos UpdateAt, en caso de que existiera la query quedaria asi:
/*
SELECT MONTH(updatedAt) AS mes, 
COUNT(*) AS total_actualizaciones
FROM venta
WHERE updatedAt IS NOT NULL
GROUP BY MONTH(updatedAt)
ORDER BY total_actualizaciones DESC;
*/
