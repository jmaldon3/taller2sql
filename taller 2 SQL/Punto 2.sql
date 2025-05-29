SELECT c.nombre,
SUM(dv.cantidad * dv.precio_unitario) AS monto_total
FROM categoria c
JOIN producto p on c.id = p.categoria_id
JOIN detalle_venta dv on p.id = dv.producto_id
GROUP BY c.nombre 
ORDER BY monto_total DESC
LIMIT 1;

