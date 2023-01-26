DROP TABLE IF EXISTS `myTable`;

CREATE TABLE `myTable` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `Employer` varchar(255) default NULL,
  `phone` varchar(100) default NULL,
  `email` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `postalZip` varchar(10) default NULL,
  `region` varchar(50) default NULL,
  `country` varchar(100) default NULL,
  `ssn` varchar(100) default NULL,
  `totalpay` varchar(100) default NULL,
  `frequency` varchar(255) default NULL,
  `overtime` mediumint default NULL,
  `Status` varchar(255) default NULL,
  `Deductions` mediumint default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Jayme O'connor","Microsoft","1-241-421-5317","dui.quis@hotmail.net","Ap #174-130 Dui. Rd.","75-69","Konya","Mexico","01-88-678","$183,466.51","Monthly",3,"Inactive",170),
  ("Grant Slater","ADP","1-795-758-0644","magna.a@google.org","578-3223 Parturient Rd.","352613","Astrakhan Oblast","Pakistan","22-66-878","$38,806.27","Quarterly",5,"Active",289),
  ("Daniel Berg","Google","1-831-138-2005","sodales.mauris@yahoo.org","698-1344 Nonummy. St.","651060","Burgenland","Netherlands","62-63-052","$570,080.67","Yearly",6,"Inactive",151),
  ("Dacey Hull","ADP","1-908-396-9433","mauris.blandit.mattis@hotmail.net","Ap #658-4944 Nulla Street","18286","Östergötlands län","Colombia","00-82-153","$957,894.70","Monthly",10,"Active",222),
  ("Seth Velasquez","Microsoft","1-595-919-5863","vulputate.nisi@protonmail.net","P.O. Box 910, 3371 Leo. Rd.","30802","Niger","South Korea","76-52-281","$443,018.55","Yearly",4,"Inactive",187),
  ("Tiger Wall","ADP","1-276-373-8013","metus@hotmail.edu","494-7573 Venenatis St.","18-324","Abruzzo","Austria","63-32-167","$861,666.41","Yearly",5,"Active",135),
  ("Virginia Ward","Microsoft","(539) 763-3274","leo.vivamus.nibh@yahoo.net","Ap #294-7165 Accumsan Avenue","220552","Podkarpackie","Australia","52-75-712","$257,891.34","Monthly",4,"Active",233),
  ("Karleigh Dickerson","Google","1-924-534-1884","aliquam.auctor.velit@google.couk","Ap #347-3402 Tincidunt St.","1236","Jigawa","United States","32-21-424","$920,927.71","Yearly",5,"Inactive",384),
  ("Davis Lee","ADP","1-210-847-5756","egestas.ligula.nullam@protonmail.ca","Ap #863-6351 Amet St.","81218","Vienna","India","56-09-714","$427,805.28","Yearly",6,"Active",152),
  ("Velma Haney","Microsoft","(218) 521-3866","nullam@hotmail.net","749-4484 Lobortis Ave","3924","Los Ríos","Russian Federation","11-58-804","$344,051.43","Monthly",5,"Active",245);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Shoshana Carr","Google","1-514-420-6136","dolor.sit@aol.com","1345 Dui. Street","478983","Cartago","Ukraine","68-23-135","$355,475.21","Yearly",4,"Active",397),
  ("Colorado Duran","Microsoft","1-724-452-5725","dictum.ultricies.ligula@google.com","Ap #712-6009 Nulla. Rd.","8370","Leinster","Brazil","45-49-634","$40,908.12","Monthly",3,"Active",399),
  ("Amethyst Key","Microsoft","1-120-374-4635","augue.eu@google.com","P.O. Box 293, 1301 Fusce Rd.","54949","Mpumalanga","Mexico","55-57-153","$612,435.98","Yearly",9,"Inactive",270),
  ("Leigh Carter","Google","(981) 520-4781","magnis.dis@hotmail.ca","730 Dictum St.","33-76","Opolskie","Philippines","71-18-566","$381,008.75","Monthly",4,"Inactive",122),
  ("Shaeleigh Hewitt","Microsoft","1-214-337-3446","erat.nonummy.ultricies@hotmail.org","Ap #211-1558 Erat St.","Q5S 8Y2","Troms og Finnmark","Canada","12-36-437","$486,129.26","Yearly",5,"Inactive",337),
  ("Hoyt Nixon","Google","1-574-336-6898","nisi.dictum@aol.ca","7267 Feugiat Ave","0521","Volgograd Oblast","Costa Rica","69-15-681","$485,558.95","Quarterly",10,"Active",332),
  ("Tad Golden","Microsoft","(516) 432-0523","auctor.nunc@google.ca","P.O. Box 294, 4837 Accumsan St.","B4E 5V9","North Region","Chile","69-14-843","$444,939.33","Quarterly",9,"Active",216),
  ("Quail Mcgee","ADP","1-727-366-2114","enim.suspendisse@protonmail.org","211-3058 Consectetuer St.","2685","Delhi","Mexico","53-28-822","$651,002.93","Quarterly",1,"Inactive",361),
  ("Kitra Coleman","Microsoft","(262) 773-5647","ultrices@outlook.net","P.O. Box 324, 1486 Dictum Ave","571735","Puntarenas","Australia","65-14-952","$147,388.06","Yearly",5,"Active",203),
  ("Hyatt Cruz","Google","(323) 617-4100","ut.cursus@icloud.com","159-8913 Sit Avenue","38762","Gävleborgs län","Vietnam","52-53-784","$947,539.99","Yearly",10,"Inactive",355);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Karina Caldwell","ADP","(444) 173-5361","vestibulum.lorem.sit@hotmail.com","P.O. Box 373, 5267 Sed St.","2184","Västra Götalands län","United Kingdom","58-58-672","$363,202.76","Monthly",1,"Inactive",256),
  ("Marcia Montgomery","Microsoft","1-458-759-1501","vel.quam.dignissim@aol.couk","758-1801 Donec Rd.","448778","Hamburg","South Africa","92-75-118","$927,891.64","Quarterly",4,"Active",259),
  ("Lareina Rosario","Microsoft","(852) 226-5333","et@outlook.edu","P.O. Box 617, 7421 Dis Road","3290","Basilicata","United Kingdom","88-34-868","$474,619.40","Quarterly",6,"Active",244),
  ("Skyler Irwin","Google","(643) 445-7538","auctor@aol.org","8319 Maecenas Rd.","78-77","Centre","Pakistan","21-17-276","$274,315.19","Monthly",9,"Inactive",350),
  ("September Beard","Microsoft","(351) 452-4652","adipiscing.lobortis@yahoo.edu","Ap #750-2183 Neque Avenue","51461","Jönköpings län","Turkey","71-72-762","$520,555.46","Quarterly",8,"Active",230),
  ("Kai Guthrie","ADP","(839) 677-7756","pharetra.felis@google.org","533-898 Consequat Road","3517","Atacama","Costa Rica","85-85-266","$485,226.42","Quarterly",5,"Active",296),
  ("Ava Whitehead","Microsoft","1-242-352-5335","fusce@protonmail.edu","612-7866 Dictum Street","41285-957","Atacama","Australia","84-41-087","$334,429.94","Yearly",1,"Inactive",126),
  ("Naida Kennedy","Microsoft","1-481-487-8157","vitae@outlook.org","409-1087 Nulla Ave","27135-310","Principado de Asturias","Nigeria","21-77-317","$30,137.53","Yearly",1,"Inactive",324),
  ("Olga Donaldson","Google","1-252-242-5809","sed.nec@hotmail.edu","Ap #678-5606 Sed Rd.","179323","Azad Kashmir","Peru","37-13-563","$443,357.16","Monthly",9,"Inactive",201),
  ("Priscilla Mccarthy","Google","1-168-634-6018","et.magnis.dis@protonmail.ca","P.O. Box 128, 2799 Eros. St.","53959-237","Caraga","Mexico","03-01-146","$151,305.10","Yearly",3,"Active",315);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Basia Allison","Microsoft","1-414-608-4560","sit.amet@outlook.couk","525-4411 Erat Road","03-329","Tver Oblast","Poland","53-77-401","$433,605.52","Yearly",7,"Inactive",285),
  ("Calista Lewis","Google","(723) 846-4345","sem.consequat@aol.couk","3194 Ornare Street","30239-60763","Lower Austria","Turkey","33-21-492","$156,984.33","Monthly",4,"Active",194),
  ("Lacey Bradford","Google","1-777-931-8521","sed.eu@icloud.com","348-7159 Lectus. Road","42870","Xīběi","Pakistan","73-21-222","$854,353.27","Monthly",1,"Active",361),
  ("Tyrone Duncan","Microsoft","1-735-211-3192","eu.elit@outlook.org","589-3651 Magna. Road","738617","South Island","Poland","93-05-863","$942,351.20","Quarterly",7,"Active",200),
  ("Octavia Phelps","ADP","(528) 710-0016","eu@outlook.com","519-4868 Ligula Av.","58150","New Brunswick","Poland","78-05-490","$325,201.33","Quarterly",7,"Inactive",163),
  ("Keegan Mercer","Microsoft","1-924-342-2687","morbi.neque@google.edu","6257 Sociis Avenue","55742","Ilocos Region","Norway","43-61-692","$182,191.17","Monthly",10,"Inactive",111),
  ("Adrienne Hubbard","Microsoft","(242) 434-7788","vitae.nibh.donec@outlook.edu","857-1280 Non, Avenue","46227","Virginia","Vietnam","39-34-480","$758,648.19","Yearly",8,"Inactive",317),
  ("Xanthus Perez","Microsoft","1-275-916-1675","ornare.lectus.ante@yahoo.com","P.O. Box 226, 6482 Ornare Avenue","720264","Missouri","Ireland","07-44-450","$517,152.99","Quarterly",9,"Inactive",247),
  ("Lionel Hooper","ADP","1-693-162-1719","ut.lacus@yahoo.ca","357-3977 Pede. Rd.","51204","Atlántico","Philippines","29-54-403","$722,076.23","Monthly",2,"Inactive",267),
  ("Wyatt Dickerson","Microsoft","1-753-527-9424","volutpat.nulla@hotmail.com","Ap #347-4564 Urna Street","26-82","Munster","Russian Federation","54-88-033","$450,823.41","Monthly",4,"Active",186);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Macaulay Mays","Google","(721) 591-6215","non.vestibulum.nec@icloud.net","P.O. Box 502, 3065 Convallis Ave","14177","Västra Götalands län","Poland","85-43-365","$132,098.80","Yearly",0,"Inactive",399),
  ("Gabriel Heath","ADP","1-417-743-3280","diam.dictum@protonmail.edu","Ap #502-7174 In St.","88419-855","Sachsen-Anhalt","United Kingdom","36-63-516","$287,353.89","Yearly",7,"Active",225),
  ("Yuri Witt","Google","(614) 816-8525","enim@outlook.net","514-4482 Velit Rd.","73-420","Huádōng","South Korea","23-87-035","$646,658.05","Quarterly",8,"Inactive",276),
  ("Troy Rodriquez","ADP","1-615-696-7128","cras.interdum.nunc@aol.ca","P.O. Box 381, 8447 Tincidunt Av.","36213","Ankara","Costa Rica","83-38-768","$697,911.66","Monthly",10,"Inactive",273),
  ("Alexa Flynn","ADP","(727) 986-1666","aliquam.gravida@aol.couk","P.O. Box 740, 3401 Mollis Rd.","92-38","Nova Scotia","Indonesia","73-97-475","$266,814.90","Monthly",1,"Active",185),
  ("Daniel Rosales","Google","(476) 807-1340","sit.amet@outlook.com","Ap #132-8846 At Avenue","B5T 4Y2","Los Ríos","Ireland","71-49-934","$209,650.72","Yearly",4,"Inactive",148),
  ("Hayes Burris","ADP","1-737-981-1641","sit.amet@yahoo.com","Ap #845-8843 Vel Rd.","73723","Sachsen-Anhalt","China","42-55-608","$294,138.94","Monthly",4,"Inactive",232),
  ("Britanni Whitaker","Google","(431) 565-0329","accumsan.convallis.ante@icloud.org","Ap #224-8272 Tortor. Road","3020","Paraíba","Russian Federation","55-06-888","$943,020.77","Yearly",5,"Inactive",334),
  ("Josiah Wood","Microsoft","1-224-786-4469","faucibus.morbi@aol.ca","853-7581 Condimentum Street","10770","Liguria","Australia","78-12-277","$937,713.75","Monthly",4,"Inactive",328),
  ("Jessica Bass","Microsoft","(812) 133-5024","ultricies.adipiscing@yahoo.com","Ap #885-6360 Phasellus Street","303445","Cartago","Belgium","51-38-622","$287,952.96","Monthly",10,"Inactive",372);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Herman Dillard","Google","1-358-823-5655","lacus.nulla@aol.com","Ap #879-4813 Turpis St.","3620","Prince Edward Island","Sweden","37-58-252","$560,474.95","Quarterly",7,"Active",379),
  ("Geraldine Holden","Microsoft","(432) 482-7852","suscipit@outlook.ca","573-8912 Luctus Rd.","4625","Poitou-Charentes","Peru","28-79-745","$336,770.34","Monthly",8,"Active",174),
  ("Lillian Reeves","Google","1-954-225-5864","duis@protonmail.ca","Ap #816-3137 Nulla St.","26968","Podlaskie","Philippines","17-37-930","$951,620.64","Quarterly",7,"Inactive",135),
  ("Gloria Vasquez","Google","1-374-566-2390","consectetuer.adipiscing@protonmail.com","208-4031 Ut, Ave","826352","Montana","Norway","88-17-856","$953,463.85","Monthly",0,"Inactive",366),
  ("Sacha Morse","Google","1-685-908-6416","nunc.lectus.pede@aol.ca","479-3212 A Avenue","30608","Queensland","Costa Rica","66-46-562","$320,353.40","Quarterly",7,"Inactive",203),
  ("Mohammad Montgomery","Google","1-920-632-7987","vel.nisl.quisque@outlook.couk","Ap #181-7506 Ut St.","4434","Nordland","Russian Federation","67-81-245","$843,685.10","Monthly",1,"Active",135),
  ("Portia Winters","ADP","(534) 890-1125","tellus.sem@aol.edu","Ap #398-1636 Placerat, Rd.","951675","Burgenland","Costa Rica","56-16-237","$314,772.89","Yearly",6,"Inactive",105),
  ("Jessica Banks","Google","1-539-664-8231","nonummy.ipsum.non@yahoo.couk","P.O. Box 425, 6131 Ligula Ave","11810","Australian Capital Territory","Norway","84-04-867","$980,553.05","Monthly",4,"Active",262),
  ("Rachel Spears","ADP","1-528-618-9635","justo.praesent@google.net","627-112 Gravida Avenue","6683","Free State","Costa Rica","22-84-398","$877,734.22","Quarterly",3,"Inactive",361),
  ("Anastasia Austin","Google","1-313-607-1931","adipiscing.lacus@google.com","Ap #292-6634 Ut Rd.","S1 1JE","Viken","Costa Rica","23-38-723","$631,566.80","Monthly",4,"Active",135);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Stephanie Potts","Microsoft","1-560-757-3866","risus.donec@yahoo.edu","581-8354 Congue Av.","BB8U 7JW","Lorraine","Ireland","35-64-167","$231,219.40","Monthly",6,"Inactive",355),
  ("Illana Pate","Microsoft","1-638-483-0955","odio.vel@icloud.couk","P.O. Box 992, 249 Erat, Rd.","6273","Vologda Oblast","Vietnam","58-28-796","$65,725.55","Monthly",8,"Active",365),
  ("Sybil Valdez","Microsoft","(548) 440-2787","nibh.lacinia@hotmail.edu","764-7854 Ut Rd.","81357","Waals-Brabant","Ireland","79-32-348","$20,690.49","Yearly",1,"Active",254),
  ("Deirdre Gould","Microsoft","(307) 843-6535","egestas@google.net","Ap #732-5489 Malesuada St.","31696-41039","Bauchi","United States","81-89-686","$515,158.87","Quarterly",10,"Active",374),
  ("Victor Swanson","ADP","1-477-613-5426","eu@hotmail.edu","601-353 Facilisis Road","317477","North Island","South Africa","19-37-271","$915,844.95","Quarterly",10,"Inactive",256),
  ("Robert Rosales","Google","(525) 912-6888","vel.arcu@yahoo.com","Ap #536-4798 Enim Rd.","39-59","Anambra","Germany","18-18-392","$372,293.29","Quarterly",2,"Active",135),
  ("Kelly Cruz","ADP","(261) 565-8996","nulla.at@outlook.ca","P.O. Box 118, 9912 Justo Ave","0827","Sicilia","New Zealand","10-48-121","$741,045.02","Monthly",9,"Active",266),
  ("Rashad Justice","Google","(276) 656-5278","sapien.cursus@outlook.com","442-8286 At, Avenue","766354","Paraná","Canada","27-75-176","$141,027.03","Monthly",3,"Inactive",193),
  ("Rebecca Padilla","ADP","1-459-891-9523","euismod.est@icloud.net","491-8586 Eleifend Av.","01263","Soccsksargen","Brazil","79-38-438","$91,181.14","Quarterly",5,"Active",155),
  ("Lareina Mcmahon","Google","1-746-205-3284","eleifend@outlook.org","618-4032 Ornare Rd.","2342","Jalisco","Brazil","39-54-722","$461,207.98","Quarterly",5,"Inactive",396);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Yeo Parrish","Google","1-728-322-6473","tincidunt.dui@protonmail.com","307-7805 Turpis. Street","36525","Antofagasta","Chile","30-11-862","$582,836.58","Yearly",5,"Inactive",363),
  ("Joshua Phillips","ADP","(953) 226-2483","a@aol.edu","304-1632 In Road","21120","Cauca","Netherlands","28-64-330","$997,832.04","Monthly",8,"Active",121),
  ("Kane Rosa","ADP","1-214-433-0245","malesuada.ut@yahoo.couk","P.O. Box 427, 4374 Urna Road","2403","Fife","Sweden","14-43-646","$140,996.41","Yearly",10,"Active",357),
  ("Bevis Stokes","ADP","1-845-701-9244","natoque.penatibus@icloud.com","Ap #740-8274 Adipiscing Ave","02246","Nova Scotia","Philippines","05-43-131","$335,230.08","Monthly",5,"Inactive",118),
  ("Hope Lane","Microsoft","1-773-288-7624","at@icloud.edu","Ap #843-8101 Adipiscing St.","3585","Bắc Giang","Ukraine","13-66-258","$173,624.87","Yearly",6,"Inactive",396),
  ("Ursula Cotton","Google","1-181-288-9534","arcu@outlook.ca","4063 Imperdiet Ave","7083","São Paulo","France","24-67-283","$974,981.48","Quarterly",1,"Inactive",222),
  ("Candice Brown","Google","(266) 476-2268","vel.faucibus.id@hotmail.org","Ap #839-184 Tempus Rd.","1111","Trentino-Alto Adige","Ukraine","25-14-331","$672,929.79","Monthly",6,"Inactive",317),
  ("Colton Cantrell","ADP","1-747-726-3216","at@aol.org","6905 Auctor Avenue","86T 3J4","East Region","Costa Rica","58-47-198","$452,914.07","Monthly",6,"Active",309),
  ("Nigel Bates","ADP","(312) 216-8551","mauris@icloud.org","Ap #531-1138 Cras Road","1662-4052","Nordrhein-Westphalen","Spain","44-40-281","$403,834.09","Quarterly",4,"Active",144),
  ("Ivy Heath","ADP","(357) 552-1486","egestas.aliquam@hotmail.org","Ap #527-9289 Feugiat Ave","61-32","Comunitat Valenciana","Germany","13-87-301","$191,751.82","Yearly",5,"Active",317);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Jessica Parker","ADP","1-559-346-4780","ut.ipsum@protonmail.net","4702 Orci. Rd.","Y3Y 1G3","Burgenland","Poland","46-74-044","$829,406.45","Quarterly",2,"Active",262),
  ("Larissa Ford","ADP","(446) 322-2345","in.felis.nulla@aol.ca","628-8024 Lorem Rd.","30601","South Island","Costa Rica","13-07-761","$463,538.26","Quarterly",4,"Inactive",167),
  ("Simone Curtis","ADP","(457) 734-5685","ad@icloud.couk","330-7365 Convallis Rd.","844004","Oslo","Chile","59-48-494","$414,195.78","Monthly",8,"Active",316),
  ("Riley Bright","Google","(194) 742-3131","elit.pharetra@protonmail.com","721-545 Sodales Ave","38447","Carinthia","Chile","27-06-768","$825,914.94","Quarterly",7,"Active",175),
  ("Lillian Combs","Google","(371) 742-4875","enim@aol.com","Ap #488-1461 Vulputate Street","42262","South Island","Belgium","85-31-718","$192,430.23","Quarterly",8,"Active",275),
  ("Keane Mejia","ADP","(365) 937-1116","quam@outlook.edu","8565 Curabitur St.","227142","Coquimbo","Costa Rica","17-55-407","$577,178.54","Monthly",3,"Active",192),
  ("Abel Tillman","Google","(777) 681-6809","erat.in@yahoo.org","P.O. Box 829, 8838 Posuere Street","154136","Pennsylvania","Costa Rica","70-46-571","$254,656.79","Quarterly",4,"Active",195),
  ("Stephen Black","ADP","(320) 266-0636","in.faucibus@hotmail.com","Ap #950-5727 Orci. Street","18059","Arunachal Pradesh","Singapore","49-34-087","$936,028.93","Quarterly",5,"Inactive",187),
  ("Lisandra Duffy","Google","(446) 197-0119","ipsum@outlook.ca","906-2802 Mauris, Road","11624","Salzburg","Italy","23-62-851","$218,490.47","Yearly",9,"Inactive",246),
  ("Conan Ortiz","Microsoft","(489) 237-7265","fames.ac.turpis@aol.net","Ap #956-8514 Integer St.","65182","Jambi","Australia","37-22-115","$842,590.09","Yearly",4,"Active",300);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Ali Cooley","Google","(538) 244-7354","adipiscing.mauris@icloud.edu","6995 Velit Road","B8 8VK","North Region","South Africa","74-21-713","$621,760.37","Quarterly",3,"Active",146),
  ("Iola Cooley","Microsoft","(676) 523-2213","egestas.a.scelerisque@icloud.org","Ap #312-5297 Nibh Avenue","46-436","Ulster","United States","17-21-634","$619,897.39","Yearly",2,"Active",400),
  ("Sara Peck","Google","1-651-825-3434","quis@hotmail.couk","Ap #903-8717 Natoque Rd.","322645","San Luis Potosí","Mexico","19-14-883","$737,698.73","Quarterly",6,"Active",127),
  ("Dominic Roy","Google","(931) 745-8213","ultrices.duis.volutpat@icloud.ca","284-8240 Mi St.","68024","Canarias","Philippines","67-63-418","$402,633.57","Yearly",8,"Active",107),
  ("Laura Peters","ADP","1-111-285-6519","ultricies@protonmail.ca","553-9706 Arcu. Rd.","38587","Mazowieckie","Peru","56-48-521","$297,212.38","Quarterly",8,"Active",309),
  ("Timon Franco","Microsoft","(391) 186-6552","aliquam.vulputate@hotmail.com","Ap #941-6753 Netus Street","161533","Zhōngnán","Italy","60-25-336","$855,302.77","Monthly",2,"Active",359),
  ("Maggie Reid","ADP","(967) 684-2817","porttitor.tellus@google.edu","Ap #399-6244 Aliquet Rd.","9221","Punjab","South Africa","81-59-553","$226,199.20","Yearly",5,"Active",215),
  ("Jordan Ingram","ADP","1-957-712-1561","nulla.tincidunt.neque@google.couk","P.O. Box 602, 345 Tellus. Avenue","651323","Gauteng","South Africa","83-33-481","$930,776.42","Yearly",0,"Active",201),
  ("Clio Wolfe","Microsoft","1-350-369-3722","ipsum@outlook.com","Ap #381-1647 Dolor, Ave","U51 7HT","North Island","Vietnam","17-61-749","$863,327.71","Monthly",5,"Inactive",157),
  ("Amelia Justice","Google","(544) 622-6716","euismod.est@google.couk","3329 Nullam Av.","23131","Zhōngnán","United Kingdom","70-52-605","$79,013.99","Quarterly",2,"Inactive",201);
