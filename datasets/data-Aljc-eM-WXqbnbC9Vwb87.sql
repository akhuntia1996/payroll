DROP TABLE IF EXISTS `employer`;

CREATE TABLE `employer` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `employer` varchar(255) default NULL,
  `username` varchar(255) default NULL,
  `password` varchar(255),
  `phone` varchar(100) default NULL,
  `email` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `postalZip` varchar(10) default NULL,
  `region` varchar(50) default NULL,
  `country` varchar(100) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `employer` (`name`,`employer`,`username`,`password`,`phone`,`email`,`address`,`postalZip`,`region`,`country`)
VALUES
  ("Neve Petty","Google","Alice","XMI84SQG3EL","1-420-538-3172","dolor.sit@outlook.org","Ap #937-5807 Ridiculus Avenue","9310","South Chungcheong","Belgium"),
  ("Angela Nash","Microsoft","Glenna","ZZM64PYD9PP","1-417-227-5847","adipiscing.elit@protonmail.com","366-6081 Ipsum Rd.","384750","Akwa Ibom","Costa Rica"),
  ("Neville Keller","ADP","Emery","YIX28HWU4PF","1-153-790-8281","metus@yahoo.com","506-8871 Nec St.","45636","Pará","Spain");
