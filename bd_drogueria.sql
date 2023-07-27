-- MySQL Workbench Synchronization
-- Generated: 2023-07-17 16:49
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: JUAN CARLOS QUINTERO

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER SCHEMA `db_drogueria`  DEFAULT CHARACTER SET utf8  DEFAULT COLLATE utf8_general_ci ;

ALTER TABLE `db_drogueria`.`factura` 
DROP FOREIGN KEY `fk_factura_compania1`,
DROP FOREIGN KEY `fk_factura_termino1`;

ALTER TABLE `db_drogueria`.`producto` 
DROP FOREIGN KEY `fk_producto_categoria1`;

ALTER TABLE `db_drogueria`.`factura_has_producto` 
DROP FOREIGN KEY `fk_factura_has_producto_factura1`,
DROP FOREIGN KEY `fk_factura_has_producto_producto1`;

ALTER TABLE `db_drogueria`.`persona` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `db_drogueria`.`compania` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `db_drogueria`.`factura` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `db_drogueria`.`termino` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `db_drogueria`.`producto` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `db_drogueria`.`categoria` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `db_drogueria`.`factura_has_producto` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `db_drogueria`.`factura` 
DROP FOREIGN KEY `fk_factura_persona`;

ALTER TABLE `db_drogueria`.`factura` ADD CONSTRAINT `fk_factura_persona`
  FOREIGN KEY (`persona_id_persona`)
  REFERENCES `db_drogueria`.`persona` (`id_persona`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_factura_compania1`
  FOREIGN KEY (`compania_id_compania`)
  REFERENCES `db_drogueria`.`compania` (`id_compania`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_factura_termino1`
  FOREIGN KEY (`termino_id_termino`)
  REFERENCES `db_drogueria`.`termino` (`id_termino`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `db_drogueria`.`producto` 
ADD CONSTRAINT `fk_producto_categoria1`
  FOREIGN KEY (`categoria_id_categoria`)
  REFERENCES `db_drogueria`.`categoria` (`id_categoria`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `db_drogueria`.`factura_has_producto` 
ADD CONSTRAINT `fk_factura_has_producto_factura1`
  FOREIGN KEY (`factura_id_factura`)
  REFERENCES `db_drogueria`.`factura` (`id_factura`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_factura_has_producto_producto1`
  FOREIGN KEY (`producto_id_producto`)
  REFERENCES `db_drogueria`.`producto` (`id_producto`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
