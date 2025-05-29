SELECT 
COUNT(v.id) AS total_ventas, 
SUM(dv.cantidad * dv.precio_unitario) AS total_vendido,
SUM(dv.cantidad * dv.precio_unitario) / COUNT(DISTINCT v.id) AS promedio_ventas
FROM venta v 
JOIN detalle_venta dv on dv.id = v.detalle_venta_id


