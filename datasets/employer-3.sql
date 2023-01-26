DROP TABLE IF EXISTS `myTable`;

CREATE TABLE `Employer` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `phone` varchar(100) default NULL,
  `email` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `postalZip` varchar(10) default NULL,
  `region` varchar(50) default NULL,
  `country` varchar(100) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `Employer` (`name`,`phone`,`email`,`address`,`postalZip`,`region`,`country`)
VALUES
  ("ADP","1-937-555-6128","abc@adp.com","3223 Dui, Road","163186","Limón","Poland"),
  ("Microsoft","(308) 542-1562","abc@microsoft.com","P.O. Box 766, 3614 Lectus Rd.","27731","North Jeolla","New Zealand"),
  ("Google","1-164-868-2263","abc@google.com","Ap #755-7306 Dictum Avenue","21505","West Sumatra","Philippines");
