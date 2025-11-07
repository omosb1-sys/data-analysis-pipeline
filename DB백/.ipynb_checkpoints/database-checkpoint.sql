-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema modeldb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema modeldb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `modeldb` DEFAULT CHARACTER SET utf8 ;
USE `modeldb` ;

-- -----------------------------------------------------
-- Table `modeldb`.`usertbl`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modeldb`.`usertbl` (
  `username` VARCHAR(3) NOT NULL,
  `birthyear` INT NOT NULL,
  `addr` VARCHAR(2) NOT NULL,
  `mobile` VARCHAR(12) NOT NULL,
  PRIMARY KEY (`username`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modeldb`.`buytbl`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modeldb`.`buytbl` (
  `username` VARCHAR(3) NOT NULL,
  `prodname` VARCHAR(3) NOT NULL,
  `price` INT NOT NULL,
  `amount` INT NOT NULL,
  INDEX `fk_buytbl_usertbl_idx` (`username` ASC) VISIBLE,
  CONSTRAINT `fk_buytbl_usertbl`
    FOREIGN KEY (`username`)
    REFERENCES `modeldb`.`usertbl` (`username`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
