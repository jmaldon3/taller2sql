SELECT v.CreatedAt AS fecha,
p.id AS producto_id, 
p.cantidad AS cantidad_inicial,
(p.cantidad - SUM(dv.cantidad)) AS stock_restante
FROM producto p
JOIN detalle_venta dv ON p.id = dv.producto_id
JOIN venta v ON dv.id = v.detalle_venta_id  
WHERE p.id = 1  -- aca ponemos el id que querramos consultar 
GROUP BY v.CreatedAt, p.id
ORDER BY v.CreatedAt;