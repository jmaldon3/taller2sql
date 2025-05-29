INSERT INTO `tienda`.`cliente` (`nombre`, `apellido`, `email`, `telefono`, `createdAt`, `updatedAt`) VALUES
('María',    'Gómez',      'maria.gomez1@example.com',    '+57 312 345 6781', '2023-01-10 09:15:00', NULL),
('José',     'Pérez',      'jose.perez2@example.com',      '+57 311 456 7892', '2023-02-05 11:20:00', '2023-06-10 14:30:00'),
('Laura',    'Rodríguez',  'laura.rodriguez3@example.com', '+57 313 567 8903', '2023-03-12 08:45:00', NULL),
('Carlos',   'López',      'carlos.lopez4@example.com',    '+57 314 678 9014', '2023-04-18 10:00:00', '2023-10-01 12:00:00'),
('Ana',      'Martínez',   'ana.martinez5@example.com',    '+57 315 789 0125', '2023-05-22 15:30:00', NULL),
('Ricardo',  'Hernández',  'ricardo.hernandez6@example.com','+57 316 890 1236', '2023-06-30 13:15:00', '2023-09-15 09:00:00'),
('Valentina','González',   'valentina.gonzalez7@example.com','+57 317 901 2347', '2023-07-14 17:45:00', NULL),
('Andrés',   'Ruiz',       'andres.ruiz8@example.com',     '+57 318 012 3458', '2023-08-01 12:10:00', '2024-01-20 16:20:00'),
('Camila',   'Ramírez',    'camila.ramirez9@example.com',  '+57 319 123 4569', '2023-09-09 09:05:00', NULL),
('Fernando','Torres',      'fernando.torres10@example.com', '+57 320 234 5670','2023-10-25 14:55:00', '2024-03-10 11:11:00'),
('Natalia',  'Vargas',     'natalia.vargas11@example.com', '+57 321 345 6781','2023-11-11 08:20:00', NULL),
('Miguel',   'Castro',     'miguel.castro12@example.com',  '+57 322 456 7892','2023-12-20 16:40:00', '2024-05-05 10:30:00'),
('Sofía',    'Ramos',      'sofia.ramos13@example.com',    '+57 323 567 8903','2024-01-15 10:10:00', NULL),
('Diego',    'Fernández',  'diego.fernandez14@example.com','+57 324 678 9014','2024-02-20 09:50:00', '2024-08-01 14:00:00'),
('Isabella', 'Castillo',   'isabella.castillo15@example.com','+57 325 789 0125','2024-03-30 11:30:00', NULL),
('Juan',     'Mendoza',    'juan.mendoza16@example.com',   '+57 326 890 1236','2024-04-05 13:25:00', '2024-12-01 08:00:00'),
('Alejandra','Silva',      'alejandra.silva17@example.com', '+57 327 901 2347','2024-05-21 15:15:00', NULL),
('Pedro',    'Núñez',      'pedro.nunez18@example.com',    '+57 328 012 3458','2024-06-18 10:45:00', '2025-02-14 09:09:00'),
('Camilo',   'Ortiz',      'camilo.ortiz19@example.com',   '+57 329 123 4569','2024-07-27 12:35:00', NULL),
('Alejandro','Gutiérrez',  'alejandro.gutierrez20@example.com','+57 330 234 5670','2024-08-14 14:50:00','2025-01-01 12:00:00'),
('Sara',     'Jiménez',    'sara.jimenez21@example.com',   '+57 331 345 6781','2024-09-09 09:09:00', NULL),
('Oliver',   'Peña',       'oliver.pena22@example.com',    '+57 332 456 7892','2024-10-30 16:00:00','2025-03-03 11:11:00'),
('Elena',    'Mora',       'elena.mora23@example.com',     '+57 333 567 8903','2024-11-19 08:00:00', NULL),
('Diego',    'Rojas',      'diego.rojas24@example.com',    '+57 334 678 9014','2024-12-25 10:10:00','2025-04-15 15:15:00'),
('Mariana','Salazar',     'mariana.salazar25@example.com', '+57 335 789 0125','2025-01-05 13:00:00', NULL);

-- -----------------------------------------------------
-- Inserción de EMPLEADOS (10 registros - justificable para un pequeño comercio)
-- -----------------------------------------------------
INSERT INTO `tienda`.`empleado` (`nombre`, `apellido`, `cargo`, `salario`, `createdAt`, `updatedAt`) VALUES
('Ana',      'Suárez',     'Gerente',      5000000, '2023-01-05 08:00:00', NULL),
('Javier',   'Blanco',     'Supervisor',   3500000, '2023-02-10 09:30:00', NULL),
('Laura',    'Alvarez',    'Vendedor',     1200000, '2023-03-15 10:45:00', NULL),
('Pedro',    'Morales',    'Vendedor',     1250000, '2023-04-20 11:20:00', NULL),
('Lucía',    'Vega',       'Cajero',       1100000, '2023-05-25 12:10:00', NULL),
('Carlos',   'Duarte',     'Cajero',       1150000, '2023-06-30 13:05:00', NULL),
('María',    'Lara',       'Bodeguero',    900000,  '2023-08-04 14:00:00', NULL),
('Andrés',   'Cruz',       'Bodeguero',    950000,  '2023-09-10 15:10:00', NULL),
('Sofía',    'Navarro',    'Vendedor',     1300000, '2023-10-15 16:20:00', NULL),
('Diego',    'Salinas',    'Supervisor',   3600000, '2023-11-20 17:30:00', NULL);

-- -----------------------------------------------------
-- Inserción de CATEGORÍAS (8 registros - categorías representativas)
-- -----------------------------------------------------
INSERT INTO `tienda`.`categoria` (`nombre`, `descripcion`, `createdAt`, `updatedAt`) VALUES
('Electrónicos', 'Dispositivos y gadgets tecnológicos', '2023-01-01 09:00:00', NULL),
('Ropa',         'Prendas de vestir para hombre y mujer', '2023-01-02 09:10:00', NULL),
('Hogar',        'Artículos para el hogar y decoración', '2023-01-03 09:20:00', NULL),
('Deportes',     'Equipos y accesorios deportivos',      '2023-01-04 09:30:00', NULL),
('Libros',       'Material de lectura y papelería',      '2023-01-05 09:40:00', NULL),
('Juguetes',     'Juguetes y juegos para niños',         '2023-01-06 09:50:00', NULL),
('Belleza',      'Cosméticos y cuidado personal',        '2023-01-07 10:00:00', NULL),
('Alimentos',    'Productos comestibles y abarrotes',    '2023-01-08 10:10:00', NULL);

-- -----------------------------------------------------
-- Inserción de PRODUCTOS (30 registros)
-- -----------------------------------------------------
INSERT INTO `tienda`.`producto` (`categoria_id`, `nombre`, `precio`, `cantidad`, `createdAt`, `updatedAt`) VALUES
(1, 'Smartphone X100',       1200000, 50, '2023-02-01 08:00:00', NULL),
(1, 'Laptop UltraPro',       3500000, 20, '2023-02-05 09:15:00', NULL),
(1, 'Auriculares Bluetooth', 150000,  100,'2023-02-10 10:30:00', NULL),
(1, 'Smartwatch Fit',         500000, 75, '2023-02-15 11:45:00', NULL),
(2, 'Camisa Casual',          80000,  150,'2023-03-01 12:00:00', NULL),
(2, 'Pantalón Jeans',        120000, 120,'2023-03-05 13:00:00', NULL),
(2, 'Chaqueta Cuero',         250000, 30, '2023-03-10 14:00:00', NULL),
(2, 'Vestido Verano',         90000,  80, '2023-03-15 15:00:00', NULL),
(3, 'Juego de Sábanas',       200000, 40, '2023-04-01 08:30:00', NULL),
(3, 'Lámpara de Mesa',        120000, 60, '2023-04-05 09:45:00', NULL),
(3, 'Set de Ollas',           300000, 25, '2023-04-10 11:00:00', NULL),
(3, 'Cojín Decorativo',       50000,  100,'2023-04-15 12:15:00', NULL),
(4, 'Pelota Fútbol',          60000,  200,'2023-05-01 08:00:00', NULL),
(4, 'Raqueta Tenis',         180000, 50, '2023-05-05 09:20:00', NULL),
(4, 'Bicicleta Montaña',     900000, 15, '2023-05-10 10:40:00', NULL),
(4, 'Colchoneta Yoga',        80000,  70, '2023-05-15 12:00:00', NULL),
(5, 'Novela Bestseller',      45000,  120,'2023-06-01 08:10:00', NULL),
(5, 'Enciclopedia Ilustrada',200000, 30, '2023-06-05 09:30:00', NULL),
(5, 'Agenda 2024',           30000,  150,'2023-06-10 10:50:00', NULL),
(6, 'Muñeca Colección',      120000, 45, '2023-07-01 08:20:00', NULL),
(6, 'Rompecabezas 1000 pcs',  80000, 80, '2023-07-05 09:40:00', NULL),
(6, 'Juego Mesa Familiar',   150000, 35, '2023-07-10 11:00:00', NULL),
(7, 'Crema Facial',           70000,  90, '2023-08-01 08:30:00', NULL),
(7, 'Perfume Original',      250000, 25, '2023-08-05 09:50:00', NULL),
(7, 'Shampoo Premium',        60000,  100,'2023-08-10 11:10:00', NULL),
(8, 'Arroz 1kg',              8000,  200,'2023-09-01 08:00:00', NULL),
(8, 'Aceite Girasol 1L',     12000, 150,'2023-09-05 09:00:00', NULL),
(8, 'Leche UHT 1L',           4500,  180,'2023-09-10 10:00:00', NULL);

-- -----------------------------------------------------
-- Inserción de DETALLE_VENTA (30 registros)
-- -----------------------------------------------------
INSERT INTO `tienda`.`detalle_venta` (`producto_id`, `cantidad`, `precio_unitario`, `createdAt`, `updatedAt`) VALUES
-- Asociado 1 a 30 productos, cantidades 1-5
(1, 2, 1200000, '2023-03-01 10:00:00', NULL),
(2, 1, 3500000, '2023-03-02 11:00:00', NULL),
(3, 3, 150000,  '2023-03-03 12:00:00', NULL),
(4, 1, 500000,  '2023-03-04 13:00:00', NULL),
(5, 2, 80000,   '2023-03-05 14:00:00', NULL),
(6, 1, 120000,  '2023-03-06 15:00:00', NULL),
(7, 1, 250000,  '2023-03-07 16:00:00', NULL),
(8, 2, 90000,   '2023-03-08 17:00:00', NULL),
(9, 1, 200000,  '2023-03-09 10:00:00', NULL),
(10,1, 120000,  '2023-03-10 11:00:00', NULL),
(11,1, 300000,  '2023-03-11 12:00:00', NULL),
(12,2, 50000,   '2023-03-12 13:00:00', NULL),
(13,1, 60000,   '2023-03-13 14:00:00', NULL),
(14,1, 180000,  '2023-03-14 15:00:00', NULL),
(15,1, 900000,  '2023-03-15 16:00:00', NULL),
(16,2, 80000,   '2023-03-16 17:00:00', NULL),
(17,1, 45000,   '2023-04-01 10:00:00', NULL),
(18,1, 200000,  '2023-04-02 11:00:00', NULL),
(19,3, 30000,   '2023-04-03 12:00:00', NULL),
(20,1, 120000,  '2023-04-04 13:00:00', NULL),
(21,2, 150000,  '2023-04-05 14:00:00', NULL),
(22,1, 70000,   '2023-04-06 15:00:00', NULL),
(23,1, 250000,  '2023-04-07 16:00:00', NULL),
(24,2, 60000,   '2023-04-08 17:00:00', NULL),
(25,1, 8000,    '2023-05-01 10:00:00', NULL),
(26,3, 12000,   '2023-05-02 11:00:00', NULL),
(27,2, 4500,    '2023-05-03 12:00:00', NULL),
(28,1, 80000,   '2023-05-04 13:00:00', NULL);

-- -----------------------------------------------------
-- Inserción de VENTA (30 registros)
-- -----------------------------------------------------
INSERT INTO `tienda`.`venta` (`detalle_venta_id`, `cliente_id`, `empleado_id`, `num_venta`, `metodo_pago`, `createdAt`, `updatedAt`) VALUES
('1',  5,  1, 'VTA-2023-0001', 'Efectivo',          '2023-03-01 11:00:00', NULL),
('2',  8,  2, 'VTA-2023-0002', 'Tarjeta de Crédito','2023-03-02 12:00:00', NULL),
('3', 12, 3, 'VTA-2023-0003', 'Tarjeta de Débito', '2023-03-03 13:00:00', NULL),
('4',  2,  4, 'VTA-2023-0004', 'Transferencia',     '2023-03-04 14:00:00', NULL),
('5', 14, 5, 'VTA-2023-0005', 'Efectivo',          '2023-03-05 15:00:00', NULL),
('6',  9,  6, 'VTA-2023-0006', 'Tarjeta de Crédito','2023-03-06 16:00:00', NULL),
('7', 13, 7, 'VTA-2023-0007', 'Tarjeta de Débito', '2023-03-07 17:00:00', NULL),
('8', 11, 8, 'VTA-2023-0008', 'Transferencia',     '2023-03-08 10:00:00', NULL),
('9', 10, 9, 'VTA-2023-0009', 'Efectivo',          '2023-03-09 11:00:00', NULL),
('10',15,10,'VTA-2023-0010', 'Tarjeta de Crédito','2023-03-10 12:00:00', NULL),
('11',16, 1, 'VTA-2023-0011', 'Tarjeta de Débito', '2023-04-01 13:00:00', NULL),
('12',17, 2, 'VTA-2023-0012', 'Transferencia',     '2023-04-02 14:00:00', NULL),
('13',18, 3, 'VTA-2023-0013', 'Efectivo',          '2023-04-03 15:00:00', NULL),
('14',19, 4, 'VTA-2023-0014', 'Tarjeta de Crédito','2023-04-04 16:00:00', NULL),
('15',20, 5, 'VTA-2023-0015', 'Tarjeta de Débito', '2023-04-05 17:00:00', NULL),
('16',21, 6, 'VTA-2023-0016', 'Transferencia',     '2023-04-06 10:00:00', NULL),
('17',22, 7, 'VTA-2023-0017', 'Efectivo',          '2023-04-07 11:00:00', NULL),
('18',23, 8, 'VTA-2023-0018', 'Tarjeta de Crédito','2023-04-08 12:00:00', NULL),
('19',24, 9, 'VTA-2023-0019', 'Tarjeta de Débito', '2023-05-01 13:00:00', NULL),
('20',25,10,'VTA-2023-0020', 'Transferencia',     '2023-05-02 14:00:00', NULL),
('21',2, 1, 'VTA-2023-0021', 'Efectivo',          '2023-05-03 15:00:00', NULL),
('22',7, 2, 'VTA-2023-0022', 'Tarjeta de Crédito','2023-05-04 16:00:00', NULL),
('23',8, 3, 'VTA-2023-0023', 'Tarjeta de Débito', '2023-05-05 17:00:00', NULL),
('24',11, 4, 'VTA-2023-0024', 'Transferencia',     '2023-05-06 10:00:00', NULL),
('25',21, 5, 'VTA-2023-0025', 'Efectivo',          '2023-05-07 11:00:00', NULL),
('26', 3, 6, 'VTA-2023-0026', 'Tarjeta de Crédito','2023-05-08 12:00:00', NULL),
('27', 7, 7, 'VTA-2023-0027', 'Tarjeta de Débito', '2023-05-09 13:00:00', NULL),
('28',12, 8, 'VTA-2023-0028', 'Transferencia',     '2023-05-10 14:00:00', NULL);
