SELECT CONCAT(e.nombre, ' ',e.apellido) AS empleado,
COUNT(v.id) AS numero_ventas,
SUM(dv.cantidad * dv.precio_unitario) AS monto_total
FROM empleado e
JOIN venta v ON e.id = v.empleado_id 
JOIN detalle_venta dv ON dv.id = v.detalle_venta_id 
GROUP BY empleado
ORDER BY numero_ventas DESC, monto_total DESC
LIMIT 1;


-- Hay muchos empleados con la misma cantidad de ventas, se crea otra columna para saber el valor total vendido por cada uno 


