SET GLOBAL sql_mode = 'STRICT_ALL_TABLES,NO_ENGINE_SUBSTITUTION';

CREATE DATABASE IF NOT EXISTS test_superior_sqlpp;
USE test_superior_sqlpp;

DROP TABLE IF EXISTS `xuser_empty`;
CREATE TABLE `xuser_empty` (
    `id` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) NULL DEFAULT 42
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;

DROP TABLE IF EXISTS `xuser`;
CREATE TABLE `xuser` (
    `id` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) NULL DEFAULT 42
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;

DROP TABLE IF EXISTS `xuser2`;
CREATE TABLE `xuser2` (
    `id` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) NULL DEFAULT 42
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;

DROP TABLE IF EXISTS `xuser3`;
CREATE TABLE `xuser3` (
    `id` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) NULL DEFAULT 42
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;

DROP TABLE IF EXISTS `xuser4`;
CREATE TABLE `xuser4` (
    `id` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) NULL DEFAULT 42
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;

DROP TABLE IF EXISTS `xuser5`;
CREATE TABLE `xuser5` (
    `id` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL DEFAULT 42
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;

DROP TABLE IF EXISTS `xuser6`;
CREATE TABLE `xuser6` (
    `id` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) NULL DEFAULT 42
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;

DROP TABLE IF EXISTS `xuser7`;
CREATE TABLE `xuser7` (
    `id` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) NULL
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;

DROP TABLE IF EXISTS `xuser_datatypes`;
CREATE TABLE `xuser_datatypes` (
    `id` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `nullable_id` INT(11) NULL,
    `uid` INT(11) UNSIGNED NOT NULL DEFAULT 42
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;

DROP TABLE IF EXISTS `user_nullable`;
CREATE TABLE `user_nullable` (
    `id` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `nullable_name` VARCHAR(50) NULL
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;

DROP TABLE IF EXISTS `binary_data`;
CREATE TABLE `binary_data` (
    `id` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `blob` BLOB(100) NOT NULL,
    `binary` BINARY(10) NOT NULL,
    `varbinary` VARBINARY(100) NOT NULL
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;

DROP TABLE IF EXISTS `decimal_data`;
CREATE TABLE `decimal_data` (
    `sd` DECIMAL NOT NULL,
    `sd_2` DECIMAL(2) NOT NULL,
    `sd_5` DECIMAL(5) NOT NULL,
    `sd_5_1` DECIMAL(5,1) NOT NULL,
    `sd_6_3` DECIMAL(6,3) NOT NULL
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;

DROP TABLE IF EXISTS `time`;
CREATE TABLE `time` (
    `id` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `date` DATE NOT NULL,
    `time` TIME NOT NULL,
    `datetime` DATETIME NOT NULL,
    `timestamp` TIMESTAMP NOT NULL
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;

DROP TABLE IF EXISTS `truncation_table`;
CREATE TABLE `truncation_table` (
    `data` BLOB(100) NOT NULL
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;
INSERT INTO `truncation_table` (`data`) VALUES (x'001100002412');
INSERT INTO `truncation_table` (`data`) VALUES (x'42004100424242420042');

DROP TABLE IF EXISTS `simple_null`;
CREATE TABLE `simple_null` (
    `id` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `string` VARCHAR(100) NULL DEFAULT ""
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;

DROP TABLE IF EXISTS `row_stream_adapter`;
CREATE TABLE `row_stream_adapter` (
    `int_value_1` INT(11) NOT NULL,
    `int_value_2` INT(11),
    `string_value_1` VARCHAR(100) NOT NULL,
    `string_value_2` VARCHAR(100),
    `int_value_3` INT(11) NOT NULL,
    `int_value_4` INT(11)
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;
INSERT INTO `row_stream_adapter`(
    `int_value_1`,
    `int_value_2`,
    `string_value_1`,
    `string_value_2`,
    `int_value_3`,
    `int_value_4`)
VALUES (42, NULL, 'answer', NULL, 42, NULL);

DROP TABLE IF EXISTS `nullable`;
CREATE TABLE `nullable` (
    `nullable_id` INT(11),
    `nullable_name` VARCHAR(50) NULL
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;

DROP TABLE IF EXISTS `row`;
CREATE TABLE `row` (
    `id` INT(11) NOT NULL,
    `nullable_value` VARCHAR(100) NULL
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;
INSERT INTO `row`(
    `id`,
    `nullable_value`)
VALUES (1, 'value'), (2, NULL);

DROP TABLE IF EXISTS `psquery_test`;
CREATE TABLE `psquery_test` (
    `id` INT(11) NOT NULL,
    `f_id` INT(11) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8;
INSERT INTO `psquery_test` (`id`, `f_id`) VALUES
    (1, 1),
    (2, 4),
    (3, 1),
    (4, 2),
    (5, 1),
    (6, 2),
    (7, 1),
    (8, 3);