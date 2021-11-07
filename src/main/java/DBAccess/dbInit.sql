CREATE DATABASE  IF NOT EXISTS `useradmin`;
USE `useradmin`;

DROP TABLE IF EXISTS `bmi_entry`;
CREATE TABLE `bmi_entry` (
 `bmi_entry_id` int NOT NULL AUTO_INCREMENT,
 `height` double NOT NULL,
 `weight` double NOT NULL,
 `category` varchar(45) NOT NULL,
 `bmi` double NOT NULL,
 `gender` varchar(5) NOT NULL,
 `sport_id` int NOT NULL,
 `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY (`bmi_entry_id`),
 KEY `fk_bmi_sport_idx` (`sport_id`),
 CONSTRAINT `fk_bmi_sport` FOREIGN KEY (`sport_id`) REFERENCES `sport` (`sport_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `bmi_info`;
CREATE TABLE `bmi_info` (
`bmi_id` int NOT NULL,
`info_id` int NOT NULL,
PRIMARY KEY (`bmi_id`,`info_id`),
KEY `fk_info_link_idx` (`info_id`),
CONSTRAINT `fk_bmi_link` FOREIGN KEY (`bmi_id`) REFERENCES `bmi_entry` (`bmi_entry_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
CONSTRAINT `fk_info_link` FOREIGN KEY (`info_id`) REFERENCES `info` (`info_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
`info_id` int NOT NULL AUTO_INCREMENT,
`name` varchar(45) NOT NULL,
PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `sport`;
CREATE TABLE `sport` (
 `sport_id` int NOT NULL AUTO_INCREMENT,
 `name` varchar(45) NOT NULL,
 PRIMARY KEY (`sport_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
 `id` int NOT NULL AUTO_INCREMENT,
 `email` varchar(90) NOT NULL,
 `password` varchar(45) NOT NULL,
 `role` varchar(20) NOT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


LOCK TABLES `bmi_entry` WRITE;
INSERT INTO `bmi_entry` (`bmi_entry_id`, `height`, `weight`, `category`, `bmi`, `gender`, `sport_id`, `created`) VALUES (1,177,70,'Normalvægtig',2.5,'Mand',2,'2021-11-04 10:42:26');
UNLOCK TABLES;

LOCK TABLES `info` WRITE;
INSERT INTO `info` (`info_id`, `name`) VALUES (1,'Jeg går op I sund kost'),(2,'Jeg har et sommerhus'),(3,'Jeg har et kæledyr');
UNLOCK TABLES;

LOCK TABLES `sport` WRITE;
INSERT INTO `sport` (`sport_id`, `name`) VALUES (1,'Jogging'),(2,'Håndbold'),(3,'Fodbold'),(4,'Yoga'),(5,'Crossfit'),(6,'Gymnastik'),(7,'Andet');
UNLOCK TABLES;

LOCK TABLES `users` WRITE;
INSERT INTO `users` (`id`, `email`, `password`, `role`) VALUES (1,'jens@somewhere.com','jensen','customer'),(2,'ken@somewhere.com','kensen','customer'),(3,'robin@somewhere.com','batman','employee'),(4,'test@test.dk','test','employee');
UNLOCK TABLES;

LOCK TABLES `bmi_info` WRITE;
INSERT INTO `bmi_info` (`bmi_id`, `info_id`) VALUES (1,2);
UNLOCK TABLES;