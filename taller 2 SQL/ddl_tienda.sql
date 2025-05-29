-- -----------------------------------------------------
-- Schema tienda
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `tienda`;

-- -----------------------------------------------------
-- Schema tienda
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tienda`;
-- -----------------------------------------------------
-- Schema tienda
-- -----------------------------------------------------
USE `tienda` ;

-- -----------------------------------------------------
-- Table `tienda`.`cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tienda`.`cliente` ;

CREATE TABLE IF NOT EXISTS `tienda`.`cliente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `telefono` VARCHAR(45) NULL,
  `createdAt` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` DATETIME,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE
);


-- -----------------------------------------------------
-- Table `tienda`.`empleado`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tienda`.`empleado` ;

CREATE TABLE IF NOT EXISTS `tienda`.`empleado` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `cargo` VARCHAR(45) NOT NULL,
  `salario` DOUBLE NOT NULL,
  `createdAt` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` DATETIME,
  PRIMARY KEY (`id`)
);


-- -----------------------------------------------------
-- Table `tienda`.`categoria`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tienda`.`categoria` ;

CREATE TABLE IF NOT EXISTS `tienda`.`categoria` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(45) NULL,
  `createdAt` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` DATETIME,
  PRIMARY KEY (`id`));


-- -----------------------------------------------------
-- Table `tienda`.`producto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tienda`.`producto` ;

CREATE TABLE IF NOT EXISTS `tienda`.`producto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `categoria_id` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `precio` DOUBLE NOT NULL,
  `cantidad` INT NOT NULL,
  `createdAt` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` DATETIME,
  PRIMARY KEY (`id`),
  INDEX `fk_producto_categoria1_idx` (`categoria_id` ASC) VISIBLE,
  CONSTRAINT `fk_producto_categoria1`
    FOREIGN KEY (`categoria_id`)
    REFERENCES `tienda`.`categoria` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);


-- -----------------------------------------------------
-- Table `tienda`.`detalle_venta`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tienda`.`detalle_venta` ;

CREATE TABLE IF NOT EXISTS `tienda`.`detalle_venta` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `producto_id` INT NOT NULL,
  `cantidad` INT NOT NULL,
  `precio_unitario` DOUBLE NOT NULL,
  `createdAt` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` DATETIME,
  PRIMARY KEY (`id`),
  INDEX `fk_detalle_venta_producto1_idx` (`producto_id` ASC) VISIBLE,
  CONSTRAINT `fk_detalle_venta_producto1`
    FOREIGN KEY (`producto_id`)
    REFERENCES `tienda`.`producto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `tienda`.`venta`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tienda`.`venta` ;

CREATE TABLE IF NOT EXISTS `tienda`.`venta` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `detalle_venta_id` INT NOT NULL,
  `cliente_id` INT NOT NULL,
  `empleado_id` INT NOT NULL,
  `num_venta` VARCHAR(45) NOT NULL,
  `metodo_pago` VARCHAR(45) NOT NULL,
  `createdAt` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` DATETIME,
  PRIMARY KEY (`id`),
  INDEX `fk_VENTA_CLIENTE_idx` (`cliente_id` ASC) VISIBLE,
  INDEX `fk_VENTA_EMPLEADO1_idx` (`empleado_id` ASC) VISIBLE,
  INDEX `fk_venta_detalle_venta1_idx` (`detalle_venta_id` ASC) VISIBLE,
  UNIQUE INDEX `num_venta_UNIQUE` (`num_venta` ASC) VISIBLE,
  CONSTRAINT `fk_VENTA_CLIENTE`
    FOREIGN KEY (`cliente_id`)
    REFERENCES `tienda`.`cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_VENTA_EMPLEADO1`
    FOREIGN KEY (`empleado_id`)
    REFERENCES `tienda`.`empleado` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_venta_detalle_venta1`
    FOREIGN KEY (`detalle_venta_id`)
    REFERENCES `tienda`.`detalle_venta` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
