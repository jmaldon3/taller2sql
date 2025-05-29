SELECT v.metodo_pago,
 COUNT(v.id) AS numero_ventas, 
 SUM(dv.cantidad * dv.precio_unitario) AS monto_total
FROM venta v
JOIN detalle_venta dv ON dv.id = v.detalle_venta_id
GROUP BY v.metodo_pago;