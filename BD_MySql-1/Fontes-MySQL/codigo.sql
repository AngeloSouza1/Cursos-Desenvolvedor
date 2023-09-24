SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `projeto` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `projeto` ;

-- -----------------------------------------------------
-- Table `projeto`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projeto`.`clientes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `fone` VARCHAR(16) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `projeto`.`fornecedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projeto`.`fornecedores` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `projeto`.`contas_pagar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projeto`.`contas_pagar` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `documento` VARCHAR(45) NOT NULL,
  `data` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` DOUBLE(10,2) NOT NULL,
  `fornecedores_id` INT NOT NULL,
  PRIMARY KEY (`id`, `fornecedores_id`),
  INDEX `fk_contas_pagar_fornecedores1_idx` (`fornecedores_id` ASC),
  CONSTRAINT `fk_contas_pagar_fornecedores1`
    FOREIGN KEY (`fornecedores_id`)
    REFERENCES `projeto`.`fornecedores` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `projeto`.`contas_receber`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projeto`.`contas_receber` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `documento` VARCHAR(45) NOT NULL,
  `data` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` DOUBLE(10,2) NOT NULL,
  `clientes_id` INT NOT NULL,
  PRIMARY KEY (`id`, `clientes_id`),
  INDEX `fk_contas_receber_clientes_idx` (`clientes_id` ASC),
  CONSTRAINT `fk_contas_receber_clientes`
    FOREIGN KEY (`clientes_id`)
    REFERENCES `projeto`.`clientes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
