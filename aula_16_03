CREATE DATABASE Mercadinho;
use Mercadinho;
show tables;

CREATE TABLE `mercadinho`.`cliente` (
  `idCliente` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NULL,
  `cpf` VARCHAR(15) NULL,
  `idade` INT NULL,
  `telefone` VARCHAR(15) NULL,
  `endereco` VARCHAR(100) NULL,
  PRIMARY KEY (`idCliente`));
  
  CREATE TABLE `mercadinho`.`pedidos` (
  `idPedidos` INT NOT NULL AUTO_INCREMENT,
  `idCliente` INT NULL,
  `valor` DECIMAL(11,2) NULL,
  `pago` TINYINT NULL,
  `data` DATETIME NULL,
  PRIMARY KEY (`idPedidos`));

ALTER TABLE `mercadinho`.`pedidos` 
ADD INDEX `idCliente_idx` (`idCliente` ASC) VISIBLE;

ALTER TABLE `mercadinho`.`pedidos` 
ADD CONSTRAINT `idCliente`
  FOREIGN KEY (`idCliente`)
  REFERENCES `mercadinho`.`cliente` (`idCliente`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
