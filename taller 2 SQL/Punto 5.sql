SELECT c.nombre
FROM cliente c
LEFT JOIN venta v ON c.id = v.cliente_id
WHERE v.id IS NULL;
