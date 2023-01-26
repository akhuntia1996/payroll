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
  ("Madison Ball","Microsoft","(836) 515-6341","lorem.ac.risus@google.com","5598 Ante Avenue","13836","Sikkim","Singapore","51-18-639","$759,323.03","Quarterly",7,"Active",101),
  ("Orli Byers","Microsoft","(487) 182-6122","consequat.nec.mollis@icloud.org","Ap #206-9411 Arcu St.","7805","Kocaeli","Turkey","72-68-129","$865,087.51","Monthly",3,"Inactive",215),
  ("Darrel Hess","Microsoft","1-839-436-6470","quisque.purus.sapien@outlook.com","P.O. Box 841, 5251 Quam Street","00128","Salzburg","Germany","22-08-654","$251,336.92","Monthly",3,"Inactive",144),
  ("William Jacobs","ADP","(383) 174-7637","libero.proin@hotmail.com","328-9321 Aliquam Rd.","60612-304","Viken","Canada","13-97-617","$248,407.47","Monthly",3,"Inactive",109),
  ("Mohammad Knox","Google","(621) 324-1753","dolor.fusce.mi@aol.couk","Ap #758-7684 Id Av.","HJ83 3XB","Namen","Philippines","23-44-193","$673,677.22","Quarterly",0,"Inactive",161),
  ("Cruz Pickett","Microsoft","1-821-732-5105","lacinia.orci@hotmail.ca","P.O. Box 169, 8231 Quam. Rd.","19-251","Nova Scotia","Colombia","59-58-171","$623,803.20","Quarterly",6,"Active",332),
  ("Baxter Santos","Microsoft","1-885-236-5811","sodales@aol.couk","Ap #355-811 Eget Avenue","56-146","Nizhny Novgorod Oblast","Philippines","95-28-322","$637,899.59","Yearly",5,"Active",201),
  ("Yuri Chan","ADP","(454) 875-5412","vivamus.euismod@outlook.ca","P.O. Box 488, 4146 Pede. Av.","51721","Pondicherry","United States","25-44-832","$303,094.11","Yearly",7,"Active",147),
  ("Wayne Barlow","Google","(272) 602-2110","nulla.in@protonmail.org","7930 Mi Road","26757-21377","Borno","Philippines","29-43-327","$220,784.95","Yearly",2,"Inactive",136),
  ("Phyllis Ball","Google","(429) 627-7368","vivamus@icloud.couk","P.O. Box 679, 2532 Amet Rd.","41208","La Libertad","United States","13-77-846","$560,472.80","Monthly",6,"Active",124);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Chandler Avila","Google","(379) 963-0783","nisl@hotmail.org","Ap #840-7064 Massa. Ave","6465","Zhōngnán","Singapore","62-07-395","$991,354.56","Quarterly",9,"Inactive",132),
  ("Ainsley Franks","Google","1-577-812-5470","sit.amet@aol.ca","Ap #368-9918 Pellentesque Ave","249387","Vienna","Chile","81-41-362","$643,691.55","Yearly",6,"Inactive",328),
  ("Tarik Goff","Microsoft","1-109-991-2264","mi.lorem@outlook.ca","P.O. Box 768, 2966 Consectetuer St.","1812","Navarra","Nigeria","14-68-707","$700,554.72","Quarterly",6,"Active",195),
  ("Justine Reed","Google","1-248-727-5875","molestie.orci@aol.edu","Ap #582-2300 Integer Rd.","427432","Vestfold og Telemark","Singapore","69-15-716","$268,119.58","Yearly",2,"Inactive",304),
  ("Hakeem Stafford","Google","(719) 449-3732","erat.volutpat@icloud.edu","7357 Nunc Av.","26775","North Island","Spain","17-57-956","$323,306.23","Quarterly",5,"Active",343),
  ("Burke Swanson","Microsoft","1-633-616-6757","netus@protonmail.couk","8910 Mollis. Avenue","34485","Kano","Colombia","45-78-152","$460,762.60","Monthly",7,"Inactive",101),
  ("Damon Hancock","ADP","(421) 280-7448","bibendum.fermentum@protonmail.net","672-6373 Erat. St.","65486-44145","Lower Austria","China","78-66-767","$348,422.98","Quarterly",3,"Active",152),
  ("Barry Crane","Microsoft","(777) 663-0838","tempor.est.ac@google.net","7392 Erat. Rd.","544256","Paraíba","Ukraine","03-54-526","$865,646.74","Yearly",3,"Inactive",378),
  ("Urielle Lyons","ADP","1-234-891-6322","justo.praesent@outlook.org","P.O. Box 790, 9029 At, Ave","2632","Tasmania","Netherlands","25-83-484","$970,135.09","Quarterly",3,"Active",349),
  ("Omar Mcpherson","Google","(630) 297-2687","proin.sed@hotmail.net","Ap #861-1401 Suspendisse St.","435328","South Kalimantan","Germany","15-77-646","$188,763.49","Quarterly",5,"Active",332);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Colorado Meyer","Google","1-660-983-8104","et.libero@outlook.edu","142 Nulla. Rd.","5524","Australian Capital Territory","Sweden","88-37-656","$803,145.32","Yearly",5,"Active",195),
  ("Ignatius Sims","ADP","1-867-677-8563","duis.mi.enim@yahoo.org","897-9239 Mauris Road","2023-8343","Antofagasta","South Africa","71-42-690","$555,064.24","Quarterly",8,"Active",244),
  ("Maite Copeland","Microsoft","1-671-344-8689","etiam.laoreet@icloud.edu","792-1160 Scelerisque Rd.","1126","Kaluga Oblast","Austria","18-07-344","$528,474.07","Yearly",1,"Inactive",249),
  ("Laith Holder","Google","1-142-462-4716","auctor.vitae.aliquet@hotmail.net","423-8239 Nec, Road","621186","Vienna","Ireland","67-39-611","$513,731.80","Quarterly",2,"Inactive",203),
  ("Raphael Acevedo","Google","(607) 394-5162","ullamcorper.eu@aol.couk","P.O. Box 475, 4544 Arcu St.","755621","Oslo","Spain","56-53-707","$584,148.18","Monthly",6,"Inactive",300),
  ("Emery Holland","ADP","(390) 723-8031","et.magnis@hotmail.couk","P.O. Box 701, 6664 Consequat Road","12434","Ankara","Singapore","66-24-284","$153,297.45","Monthly",9,"Inactive",307),
  ("Stuart Johns","Microsoft","(354) 720-6348","iaculis@hotmail.org","Ap #654-1893 Dolor Ave","85764-374","Arauca","Vietnam","75-62-730","$367,714.01","Yearly",9,"Active",127),
  ("Xander Ford","Microsoft","1-515-891-8781","egestas@yahoo.org","Ap #846-9449 Suspendisse Street","5947","Xīběi","Peru","60-52-123","$248,962.31","Quarterly",6,"Active",256),
  ("Risa Becker","ADP","(825) 405-8476","porta@icloud.org","1132 Quis, Av.","404885","Western Visayas","Chile","87-83-468","$520,312.84","Monthly",5,"Inactive",325),
  ("Leila Ryan","ADP","1-453-715-7415","nibh@yahoo.com","844-7112 Rutrum Avenue","66454","Central Region","Pakistan","01-61-579","$891,762.69","Yearly",3,"Active",100);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Aristotle Butler","ADP","(849) 431-3316","magna@protonmail.ca","Ap #809-1131 Elementum, Rd.","69781","North Sumatra","United States","74-40-785","$751,558.79","Monthly",10,"Active",207),
  ("Abdul Buckner","ADP","(607) 231-2506","non.hendrerit@outlook.net","P.O. Box 565, 6540 Arcu Av.","36245","Haute-Normandie","Pakistan","30-99-114","$551,647.93","Monthly",3,"Active",317),
  ("Wilma Rivera","ADP","(960) 485-2757","aliquam.auctor@yahoo.net","5661 Dui. Avenue","35849240","Oslo","Poland","65-38-748","$430,497.32","Quarterly",7,"Inactive",225),
  ("Isabella Stout","Microsoft","(473) 704-3165","aliquet.molestie@aol.net","2044 Neque. Avenue","463525","Sląskie","Ireland","15-60-434","$77,362.68","Monthly",6,"Active",204),
  ("Cathleen Gilmore","ADP","(562) 112-2923","rutrum@yahoo.couk","594-8155 Diam Av.","382348","Guanacaste","South Korea","24-57-715","$285,981.83","Yearly",1,"Active",303),
  ("Oleg Lynch","ADP","(424) 978-7182","est.arcu@hotmail.com","Ap #425-670 Sed Av.","884176","Gävleborgs län","Singapore","84-62-711","$176,936.21","Monthly",7,"Inactive",390),
  ("Dustin Luna","ADP","1-338-488-5138","in.mi@outlook.couk","291-8714 Arcu. Road","614158","Western Australia","Mexico","08-03-967","$295,676.46","Quarterly",2,"Active",153),
  ("Piper Jensen","Google","(429) 365-8637","maecenas.malesuada.fringilla@aol.net","582-992 Libero. Ave","55179","Azad Kashmir","Chile","59-28-147","$744,670.25","Quarterly",0,"Active",187),
  ("Carissa Gordon","ADP","1-383-473-7802","sagittis.felis@google.edu","3126 Taciti Road","724543","Huádōng","Vietnam","44-73-322","$546,742.15","Quarterly",4,"Inactive",347),
  ("August Glenn","Microsoft","(496) 842-8588","facilisis.vitae@icloud.net","753-9300 Libero. Avenue","755394","Bretagne","China","05-19-255","$55,721.78","Yearly",2,"Inactive",157);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Kimberly Bates","ADP","1-313-586-3382","congue.a@hotmail.edu","Ap #502-8929 Risus Ave","1928","Connacht","Austria","47-36-933","$103,684.84","Monthly",4,"Inactive",230),
  ("Rajah Leon","Google","(862) 918-3645","ut.tincidunt@protonmail.org","P.O. Box 736, 2751 Rhoncus St.","72-25","Poitou-Charentes","France","26-42-250","$387,584.51","Quarterly",1,"Inactive",201),
  ("Trevor Buckner","Microsoft","(414) 334-4388","vivamus.non@protonmail.com","482-9106 Ullamcorper St.","63175","Konya","Pakistan","22-23-877","$498,034.04","Monthly",2,"Inactive",260),
  ("Kyla Clements","Google","1-465-524-3631","eu.enim@yahoo.ca","Ap #121-9742 Turpis Ave","47-616","Abruzzo","Nigeria","37-47-370","$354,165.20","Quarterly",4,"Active",219),
  ("Eagan Spears","Google","1-654-574-8755","sodales.purus.in@protonmail.net","Ap #146-5843 Molestie St.","309543","Upper Austria","Philippines","12-55-835","$24,594.26","Quarterly",9,"Inactive",135),
  ("Kim Espinoza","Google","1-581-639-6263","nam.nulla@aol.org","P.O. Box 445, 3290 Quis, St.","2942","Chandigarh","Russian Federation","18-37-756","$147,556.77","Monthly",1,"Inactive",247),
  ("Gail Greene","ADP","(722) 264-7966","vel.sapien@icloud.net","430-2174 Consequat Rd.","4241","Sumy oblast","Nigeria","51-56-576","$756,706.47","Yearly",3,"Inactive",109),
  ("Christian Garza","ADP","1-725-271-4213","eu.lacus@yahoo.com","865-5391 Ipsum. Street","7169","Puglia","Canada","86-50-261","$915,078.72","Yearly",2,"Inactive",151),
  ("Dustin Melendez","Google","(671) 228-8878","quam.curabitur@yahoo.net","P.O. Box 886, 6605 Dignissim Ave","55164","North Region","Nigeria","36-05-214","$377,961.15","Yearly",8,"Active",187),
  ("Lenore Bush","Microsoft","1-798-669-9868","odio.semper@protonmail.com","P.O. Box 109, 5210 Dignissim Avenue","53461","North Island","India","47-52-552","$486,305.23","Yearly",2,"Inactive",283);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Eagan York","ADP","(667) 468-9855","et.tristique@protonmail.org","Ap #995-118 Est Avenue","42699","Irkutsk Oblast","France","47-64-558","$669,690.94","Quarterly",6,"Inactive",173),
  ("Kay Dale","ADP","(642) 383-4496","libero@google.com","P.O. Box 750, 9276 Odio St.","51012","Oyo","Belgium","99-62-230","$757,748.00","Yearly",5,"Active",297),
  ("Wilma Ferguson","ADP","(173) 254-3759","magna.cras@yahoo.net","P.O. Box 653, 9511 Volutpat Avenue","L5T 4J6","Fife","China","56-66-131","$803,583.82","Yearly",3,"Active",397),
  ("Erica Buckner","ADP","(557) 527-9712","euismod@protonmail.net","Ap #604-6729 Elit. Avenue","15583-310","Nagaland","South Africa","85-81-523","$101,206.30","Monthly",4,"Inactive",349),
  ("Sybill Everett","Google","(342) 180-6171","mollis.dui@google.couk","Ap #856-3705 At Av.","3694","Morelos","Peru","34-78-967","$536,759.88","Quarterly",10,"Inactive",371),
  ("Raven O'brien","Google","(740) 802-3867","tempor.erat@yahoo.net","Ap #676-8159 Lorem, Rd.","7629","Hawaii","Sweden","72-67-035","$923,290.17","Yearly",8,"Inactive",156),
  ("Chava Kerr","Google","1-669-873-8925","ullamcorper.viverra.maecenas@yahoo.couk","P.O. Box 213, 971 Lectus, Road","47324","National Capital Region","Norway","25-59-118","$421,691.55","Monthly",9,"Active",223),
  ("Reese Moreno","ADP","(736) 783-3623","ultrices.vivamus@outlook.edu","5162 Eu St.","75576-71804","Agder","New Zealand","41-78-814","$89,892.16","Yearly",1,"Inactive",341),
  ("Ora Harrison","Microsoft","(912) 223-7147","mattis.velit@outlook.com","P.O. Box 707, 6490 Per St.","09-223","Samsun","China","69-03-576","$496,515.63","Quarterly",7,"Active",180),
  ("Marah Medina","Google","1-632-957-1770","sit.amet@icloud.edu","Ap #172-5117 Lectus, St.","X24 3YZ","Burgenland","Austria","79-55-453","$674,184.11","Monthly",4,"Inactive",196);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Griffith Duke","ADP","(731) 227-7737","nullam@google.ca","336-7812 Donec Rd.","9453","Niedersachsen","Mexico","57-56-224","$874,891.15","Yearly",1,"Active",126),
  ("Guy Oliver","ADP","(168) 842-6171","vitae@protonmail.org","Ap #410-7186 Odio Avenue","U07 1AJ","Montana","United States","51-27-712","$505,737.96","Monthly",5,"Active",358),
  ("Alexandra Foley","ADP","(208) 638-2537","nunc.risus.varius@hotmail.net","273-5878 Et Rd.","651586","Clackmannanshire","China","67-66-805","$735,078.29","Quarterly",3,"Inactive",262),
  ("Samson Dejesus","ADP","(838) 229-5247","sem.ut.dolor@protonmail.couk","460-5649 Faucibus Road","7956-5532","Bắc Ninh","United States","44-73-323","$325,025.24","Monthly",1,"Inactive",207),
  ("Callum Salazar","Google","(903) 435-2271","ac@google.couk","748-3346 Hendrerit Avenue","J1U 6PD","Ankara","Netherlands","66-48-336","$105,701.68","Quarterly",9,"Inactive",155),
  ("Xyla Solis","Google","(595) 577-8421","lectus@yahoo.net","953-2910 Arcu Street","98357","Kon Tum","Poland","64-92-651","$786,411.85","Quarterly",8,"Inactive",136),
  ("Brody Shannon","Microsoft","1-215-476-4420","non.dapibus.rutrum@outlook.edu","1822 Quis, Av.","7169","Møre og Romsdal","Turkey","32-74-345","$945,495.78","Quarterly",2,"Active",236),
  ("Justine Anderson","Google","(623) 428-6406","sed@icloud.edu","575-5320 Egestas Street","8604","Burgenland","Sweden","38-26-208","$331,828.22","Monthly",4,"Inactive",307),
  ("Aquila Arnold","Google","(613) 353-3384","magna.praesent@protonmail.edu","Ap #250-174 Mollis Ave","96-225","Carinthia","Ireland","53-34-143","$106,819.27","Quarterly",0,"Active",373),
  ("Naida Cooper","Google","(981) 426-2832","ut@hotmail.org","671-6411 Sollicitudin Avenue","71589","Podlaskie","Colombia","18-56-216","$579,117.02","Yearly",4,"Inactive",265);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Clarke Holland","Microsoft","1-321-136-9598","pellentesque.ut@aol.net","P.O. Box 914, 1880 Sed Road","81611","Sakhalin Oblast","United Kingdom","11-24-482","$972,757.08","Quarterly",5,"Inactive",102),
  ("Medge Faulkner","Google","1-960-381-4244","ornare@yahoo.edu","439-6162 Rutrum Ave","34435","Maryland","Singapore","78-77-431","$827,413.74","Monthly",3,"Inactive",105),
  ("Marny Good","Microsoft","1-328-544-6655","nam@google.org","807-2111 Donec Ave","8153-7849","Puebla","Vietnam","98-81-177","$884,255.55","Monthly",3,"Inactive",357),
  ("Lamar Reeves","Google","(553) 331-5683","non.enim@icloud.net","Ap #269-8258 Ipsum St.","2868","North Island","Philippines","83-47-235","$554,705.04","Monthly",0,"Active",180),
  ("Russell Harding","ADP","1-236-281-8835","malesuada.vel.venenatis@hotmail.couk","Ap #783-1900 Auctor. Ave","30415","Kirovohrad oblast","Pakistan","82-99-151","$917,878.62","Quarterly",1,"Inactive",290),
  ("Cameron Rivers","ADP","1-133-327-2663","vitae.dolor.donec@yahoo.ca","Ap #479-4854 Molestie Road","14376-122","Tyrol","Ukraine","85-03-036","$42,535.39","Quarterly",6,"Inactive",187),
  ("Serina Johnson","ADP","1-778-773-4793","vestibulum.ante@outlook.com","400-7004 Montes, Street","52673","Henegouwen","Indonesia","11-16-051","$182,122.28","Monthly",7,"Active",158),
  ("Alyssa Hopkins","ADP","(384) 849-1142","auctor.quis@aol.net","170-3363 Eget Rd.","462885","Hải Dương","Ireland","97-40-241","$427,792.36","Monthly",4,"Active",183),
  ("Joan Schultz","ADP","(588) 628-6378","sed.facilisis@yahoo.net","338-4128 Natoque Rd.","50205","Baden Württemberg","Ireland","34-84-785","$979,186.10","Monthly",9,"Inactive",238),
  ("TaShya Roman","Microsoft","(106) 343-6588","blandit.enim@aol.couk","Ap #968-7246 Magna St.","16736","Styria","South Africa","99-68-535","$578,221.41","Yearly",7,"Inactive",147);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Iris Cooke","ADP","1-252-685-7802","duis.cursus@yahoo.couk","P.O. Box 686, 8093 Elit, St.","4508","South Island","Belgium","13-51-541","$362,637.77","Monthly",5,"Active",139),
  ("Maggy Foster","Microsoft","1-461-530-9620","arcu.morbi@icloud.org","4158 Aliquam Rd.","825684","Jönköpings län","Vietnam","53-57-417","$834,524.68","Yearly",6,"Inactive",131),
  ("Sandra Dillon","Microsoft","(233) 560-5727","mus@outlook.couk","Ap #984-8117 Amet, Av.","3136","Cartago","New Zealand","13-49-471","$914,815.47","Yearly",7,"Inactive",316),
  ("Ferris Walls","Google","1-485-513-0283","viverra.maecenas@google.com","832-6346 Sit Street","871299","Castilla y León","Peru","74-02-488","$972,122.19","Yearly",0,"Active",114),
  ("Raja Mcmahon","Google","1-611-785-4774","egestas.nunc@aol.com","378-4782 Non Rd.","06-273","South Australia","Austria","16-36-716","$27,982.29","Yearly",6,"Inactive",193),
  ("Galena Francis","ADP","1-684-426-6824","sem@icloud.com","Ap #820-8298 Hendrerit. Road","19-190","Maranhão","Nigeria","54-99-978","$538,529.45","Monthly",1,"Inactive",301),
  ("Nicole Newton","ADP","1-586-691-5482","eu.eros.nam@aol.org","272-3637 Libero Ave","55136","Guanacaste","China","15-29-861","$135,085.68","Monthly",6,"Inactive",150),
  ("Stella Meyer","Google","1-822-376-1404","euismod.est@google.edu","Ap #857-7219 Neque. Rd.","R4Y 8H2","Picardie","United Kingdom","36-33-903","$506,349.07","Monthly",9,"Active",273),
  ("Quyn Knowles","Google","(860) 581-3229","duis.risus@aol.edu","Ap #371-618 Mus. Rd.","75271","Munster","Sweden","65-64-166","$923,810.85","Quarterly",7,"Active",241),
  ("Burton Jenkins","ADP","1-168-824-6472","consectetuer.mauris@aol.net","523 Est Avenue","1334","Massachusetts","Italy","86-78-714","$889,688.57","Quarterly",5,"Active",155);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Sydnee Bates","Google","(332) 774-4375","elementum.sem.vitae@aol.edu","Ap #929-7442 Id, Road","2412","Pernambuco","Poland","82-54-475","$55,475.21","Quarterly",2,"Active",294),
  ("Rudyard Vega","Google","(806) 263-3856","ligula@protonmail.net","P.O. Box 355, 1293 Adipiscing Rd.","03992-32318","Yucatán","Austria","35-81-266","$297,720.81","Yearly",8,"Inactive",223),
  ("Patrick Key","Google","1-783-818-8691","nunc.ullamcorper@google.couk","Ap #464-3318 Dolor Rd.","23518","Carinthia","United Kingdom","71-46-663","$587,582.87","Monthly",2,"Active",267),
  ("Ignacia Hoffman","ADP","1-984-235-3323","sed.sem@outlook.edu","720-9613 A St.","48-775","Vorarlberg","Philippines","36-26-978","$610,224.52","Monthly",2,"Active",108),
  ("Hedy Valentine","Microsoft","1-247-682-3337","vivamus.nisi.mauris@hotmail.net","1598 Morbi Rd.","8130","Irkutsk Oblast","Nigeria","78-47-118","$569,915.08","Yearly",6,"Inactive",153),
  ("Denise Cooper","Google","(288) 844-3158","nec@yahoo.net","774-831 Donec Rd.","685374","Smolensk Oblast","United States","67-33-385","$267,749.47","Quarterly",2,"Inactive",322),
  ("Hasad Gallegos","ADP","1-373-259-7837","nunc@hotmail.edu","2875 Duis Road","38410","Phú Thọ","Ireland","76-57-821","$627,154.92","Monthly",2,"Inactive",301),
  ("Nissim Stone","Microsoft","1-683-622-3573","magna@outlook.couk","Ap #863-7139 Varius Rd.","7778-1287","Northern Territory","China","15-62-411","$672,266.89","Yearly",3,"Active",343),
  ("Maxwell Tyson","ADP","1-438-187-3747","nulla.at.sem@hotmail.com","Ap #213-6160 Ut, Rd.","161387","Castilla y León","Vietnam","67-25-638","$447,140.45","Monthly",2,"Active",367),
  ("Malik Sweeney","ADP","(304) 673-3247","sem.molestie.sodales@aol.org","852-3811 Dictum Road","0166","Limón","Mexico","68-56-441","$989,413.40","Yearly",0,"Inactive",379);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Aladdin Graves","Google","(762) 267-6736","risus@outlook.org","Ap #125-903 Ipsum Ave","28243","Northern Territory","India","43-47-412","$768,106.16","Quarterly",9,"Inactive",178),
  ("Bianca Wolfe","ADP","(346) 478-4467","magnis.dis.parturient@aol.org","486-2337 Neque. Rd.","90815","Riau","Poland","74-84-206","$424,688.63","Quarterly",5,"Inactive",346),
  ("Alfreda Pena","Microsoft","(946) 316-1642","nibh.quisque@icloud.ca","Ap #162-4917 In Av.","84941-28692","Centre","Vietnam","25-59-188","$100,344.14","Yearly",1,"Inactive",169),
  ("Herman Rodriquez","Google","(878) 717-6144","nunc.ullamcorper.eu@google.com","Ap #252-8065 Dictum St.","781342","Marche","Canada","07-27-411","$262,483.30","Monthly",4,"Active",119),
  ("Shelley Kent","Google","1-301-912-7671","quisque@yahoo.com","P.O. Box 942, 7573 Porttitor Rd.","873359","Nariño","Canada","89-21-361","$851,060.12","Yearly",3,"Active",325),
  ("Cooper Stafford","Microsoft","1-568-420-7863","tempor@protonmail.org","388-6255 Diam Ave","7288 NW","Quebec","Sweden","18-32-051","$759,492.91","Quarterly",7,"Inactive",221),
  ("Sophia O'brien","Google","(974) 938-4973","egestas@google.com","Ap #932-3606 Cubilia Ave","31149","Huila","Ireland","72-83-711","$660,139.12","Quarterly",8,"Active",308),
  ("Sydnee Moses","ADP","1-218-804-0185","cum.sociis@outlook.couk","751-1520 Leo, Rd.","37212","Madhya Pradesh","Spain","17-61-513","$251,061.26","Monthly",3,"Active",387),
  ("Ima Henry","Google","(358) 733-2312","erat.volutpat@protonmail.net","767-7159 Id Rd.","85467-85152","La Rioja","Germany","28-74-874","$619,515.16","Monthly",10,"Active",238),
  ("Brielle Arnold","Microsoft","1-627-844-3246","vivamus.rhoncus@aol.couk","P.O. Box 964, 5899 In St.","3381-4513","Moscow City","Brazil","71-87-748","$82,786.13","Yearly",7,"Active",316);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Zachery Barrett","Google","1-742-892-6531","aptent.taciti@icloud.couk","Ap #248-965 Aenean Avenue","4643","Gauteng","Costa Rica","77-26-828","$910,026.10","Quarterly",7,"Inactive",292),
  ("Holly Santana","Microsoft","(356) 118-6450","felis.nulla@aol.ca","309-4147 Tellus. Road","18741-863","Arequipa","Australia","02-74-683","$276,329.02","Yearly",3,"Active",395),
  ("Francesca Key","Microsoft","1-969-349-8641","mattis@outlook.ca","Ap #481-1183 Lectus St.","82533","Berkshire","Spain","17-48-502","$730,675.44","Yearly",5,"Inactive",294),
  ("Kane Lawson","Microsoft","(646) 609-6888","suspendisse.tristique.neque@protonmail.net","Ap #179-7330 Elit Street","21507","Ulster","South Africa","37-22-144","$347,163.41","Quarterly",6,"Inactive",296),
  ("Devin Gray","ADP","(838) 625-9632","primis.in.faucibus@yahoo.org","Ap #459-4421 Tellus, Av.","78715-73348","Khmelnytskyi oblast","Nigeria","03-46-728","$930,446.33","Monthly",7,"Inactive",221),
  ("Lacey Sloan","ADP","(707) 885-1724","orci.lacus@google.com","835-6665 Eget St.","02556","North Island","Turkey","17-75-822","$104,325.32","Quarterly",7,"Inactive",289),
  ("Wendy Spears","ADP","(396) 291-3678","pede.nec@hotmail.com","Ap #313-1797 Blandit Street","1244 QN","Tiền Giang","Belgium","04-72-726","$129,742.83","Quarterly",7,"Active",228),
  ("Sean Alston","Microsoft","1-311-516-1596","enim.consequat@yahoo.net","743-5289 Nibh Avenue","DM1 8CN","Henegouwen","United States","57-63-568","$443,501.29","Quarterly",7,"Active",292),
  ("Celeste Stephens","ADP","(350) 463-9967","a.tortor.nunc@google.com","Ap #700-3399 Aenean Av.","5342 NG","Zaporizhzhia oblast","Brazil","97-36-787","$394,902.94","Monthly",8,"Inactive",349),
  ("Tanya Faulkner","ADP","(542) 686-1433","ligula.nullam.enim@aol.couk","1444 Eu Ave","156541","Podlaskie","United States","57-74-152","$917,626.00","Yearly",9,"Active",238);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Melanie Knowles","Microsoft","1-469-119-3737","donec.tincidunt.donec@protonmail.com","Ap #553-1556 Bibendum Rd.","38-282","Calabria","United States","51-52-471","$450,164.49","Yearly",2,"Inactive",155),
  ("Risa Hutchinson","ADP","1-316-331-7866","ligula@aol.com","569-2575 Dolor St.","28-54","Kharkiv oblast","South Africa","11-11-179","$324,733.78","Monthly",6,"Active",105),
  ("Silas Holmes","Microsoft","(757) 518-5833","nibh.dolor@yahoo.edu","609-4281 Vulputate, Ave","22162","Santander","Pakistan","23-66-017","$671,484.92","Quarterly",9,"Inactive",157),
  ("Jayme Mcclain","Microsoft","(514) 727-6226","enim.mi@hotmail.net","Ap #848-5461 Sit Ave","452314","South Sulawesi","Chile","89-65-501","$80,623.72","Yearly",5,"Inactive",296),
  ("Brielle Baker","ADP","1-528-263-4582","justo@aol.couk","P.O. Box 622, 1376 Senectus St.","42860","Balochistan","Belgium","37-61-632","$880,072.15","Monthly",5,"Active",269),
  ("Lara Woodward","Microsoft","(983) 227-1412","eu.arcu@hotmail.edu","391-7826 Quisque Rd.","91393","Limón","Ireland","80-48-379","$454,324.42","Quarterly",3,"Inactive",381),
  ("Maryam Farley","Google","(514) 853-3058","sit.amet@protonmail.ca","5112 Vitae, Rd.","13955","Oslo","Nigeria","90-39-883","$342,190.77","Quarterly",7,"Inactive",199),
  ("Aidan Romero","Google","1-218-786-6036","tincidunt.dui.augue@yahoo.net","169-9951 Ullamcorper Rd.","02459-48312","South Australia","Germany","07-87-602","$454,041.75","Monthly",5,"Active",103),
  ("Channing Manning","Google","1-887-296-4813","curabitur.sed@aol.org","P.O. Box 920, 6277 Consequat, Avenue","90289","Victoria","Norway","42-85-446","$89,932.30","Monthly",1,"Active",340),
  ("Ulric Bentley","ADP","(331) 152-9361","dui.nec@protonmail.net","P.O. Box 189, 119 Sapien. St.","J2O 6YI","New South Wales","Russian Federation","53-59-418","$582,709.10","Monthly",10,"Inactive",296);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Sandra Peterson","Microsoft","1-955-472-8784","sit.amet@hotmail.org","Ap #755-1610 Molestie. Avenue","4503","Minas Gerais","Ireland","64-18-395","$601,390.79","Yearly",1,"Inactive",162),
  ("Galvin Nolan","ADP","1-668-768-0148","scelerisque.scelerisque@protonmail.ca","8521 Nascetur Rd.","54-35","Central Region","Russian Federation","78-58-454","$658,507.17","Monthly",2,"Active",260),
  ("Brent Shelton","Google","(614) 143-2552","eget.nisi.dictum@icloud.couk","Ap #943-4891 A Avenue","32926","North Island","Australia","23-89-862","$664,330.84","Quarterly",5,"Inactive",105),
  ("Lareina Gaines","Google","1-322-802-6260","proin@outlook.net","Ap #532-1484 At, Rd.","19531","Radnorshire","Ireland","14-14-843","$17,183.24","Monthly",5,"Active",382),
  ("Xyla Grimes","Microsoft","1-438-893-3460","aenean.massa@outlook.org","Ap #123-3121 Nunc Street","7663","West Region","Pakistan","73-22-899","$887,918.40","Quarterly",2,"Inactive",375),
  ("Garth Carlson","Google","(437) 516-9505","pulvinar.arcu@icloud.com","3814 At Avenue","54236","Jönköpings län","Norway","49-42-856","$409,789.45","Monthly",4,"Inactive",282),
  ("Oren Jackson","Microsoft","(716) 361-7607","pede.blandit@yahoo.com","390-4070 Felis. Avenue","7268","Lower Austria","Spain","17-75-831","$211,187.18","Monthly",2,"Inactive",355),
  ("MacKensie Gilmore","Google","1-978-363-3515","eget.odio@protonmail.net","Ap #594-2083 Amet Street","37771550","La Guajira","Austria","73-55-577","$929,528.60","Monthly",5,"Inactive",389),
  ("Chava Schmidt","Microsoft","1-525-544-9417","non.ante@icloud.edu","463-9322 Velit. Street","349577","Sardegna","Singapore","18-03-221","$654,599.13","Yearly",3,"Inactive",399),
  ("Honorato Walls","Microsoft","(489) 404-1662","neque.nullam@hotmail.ca","4981 Vel Ave","8350","Central Visayas","Austria","77-93-176","$362,509.58","Quarterly",1,"Active",113);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Dolan Howe","Microsoft","(203) 840-9339","adipiscing.non@aol.ca","Ap #396-8719 Commodo St.","42-51","Guerrero","Vietnam","95-85-763","$659,700.64","Yearly",4,"Inactive",130),
  ("Asher Caldwell","Google","1-128-539-7799","eu.nibh@icloud.ca","Ap #819-5427 Congue, Rd.","2827","Free State","Belgium","04-59-726","$510,369.72","Quarterly",9,"Active",199),
  ("Blythe Romero","Google","1-336-831-4768","placerat@outlook.couk","319-2886 Ante, St.","0485 HL","Pays de la Loire","Chile","33-79-361","$332,301.95","Yearly",1,"Inactive",134),
  ("Ezra Whitney","Google","(421) 931-5761","ac.turpis.egestas@hotmail.couk","Ap #348-2092 Vulputate, Avenue","687281","Ulster","Indonesia","79-23-340","$631,301.94","Monthly",9,"Active",293),
  ("Lesley Hardy","Google","(187) 964-2169","ultrices.mauris@protonmail.org","Ap #912-5501 Facilisis Rd.","893993","North Gyeongsang","Colombia","46-76-436","$797,554.86","Quarterly",2,"Inactive",270),
  ("Slade Logan","ADP","1-462-524-8781","augue.porttitor.interdum@google.couk","Ap #834-1514 Enim St.","30003","South Australia","India","02-82-632","$458,558.12","Yearly",1,"Inactive",261),
  ("Joy Mcclain","ADP","(727) 163-9630","purus.ac@hotmail.ca","639-7184 Non St.","27676","Kaduna","India","46-52-572","$578,171.51","Quarterly",8,"Inactive",152),
  ("Jennifer Campos","ADP","1-713-265-2984","donec.nibh@outlook.ca","P.O. Box 931, 7573 Mauris Street","2312","Canarias","New Zealand","95-94-585","$619,434.72","Quarterly",10,"Inactive",286),
  ("Sandra Tran","ADP","1-224-461-8547","eget.tincidunt@aol.net","9641 Ridiculus Rd.","760876","Antalya","Russian Federation","25-98-421","$722,495.86","Quarterly",3,"Inactive",180),
  ("Cain Baldwin","Google","(531) 613-6458","commodo.tincidunt@aol.edu","Ap #112-4330 Tempus St.","176194","Namen","Norway","21-32-133","$659,751.41","Yearly",3,"Active",347);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Xandra Swanson","Google","1-823-355-8578","leo.vivamus.nibh@google.org","P.O. Box 219, 5778 Sit St.","925797","Waals-Brabant","Pakistan","13-21-537","$947,064.91","Quarterly",2,"Active",335),
  ("Tatiana Ingram","ADP","1-336-781-4737","ut.odio@yahoo.couk","9476 Semper Rd.","39836","Oaxaca","Belgium","33-32-161","$275,587.57","Monthly",2,"Inactive",327),
  ("Angelica Mcmahon","Microsoft","(549) 737-9471","mauris.morbi@outlook.com","9935 Nec St.","33166","South Island","Ukraine","67-73-193","$172,425.13","Yearly",7,"Active",217),
  ("Briar Maxwell","Microsoft","(361) 465-8562","placerat.augue@icloud.net","8044 Mauris Rd.","52195-391","Cheshire","France","12-31-522","$103,487.97","Monthly",2,"Inactive",240),
  ("Rogan Bernard","Google","1-251-206-8652","ut@protonmail.couk","Ap #649-8620 Ultricies Rd.","32242","Piura","South Africa","05-85-705","$150,546.69","Monthly",9,"Inactive",295),
  ("Martha Garrett","ADP","(586) 757-5700","mauris.integer.sem@protonmail.org","5938 Lectus. Ave","8548","Moscow Oblast","Germany","11-64-575","$267,826.68","Quarterly",5,"Active",114),
  ("Jonas Casey","Microsoft","(671) 685-1695","convallis@aol.org","P.O. Box 388, 7807 Sit Road","473893","Gaziantep","Vietnam","12-29-508","$617,846.63","Quarterly",3,"Active",390),
  ("Burke Solomon","Google","1-666-591-1081","molestie.pharetra.nibh@icloud.net","243-7504 Donec St.","13455","Lazio","Norway","42-88-257","$19,914.61","Yearly",7,"Active",120),
  ("Aspen Cooke","Google","(870) 394-3770","eu.nulla@aol.com","345-2357 Tellus, St.","3808","Huáběi","Indonesia","22-53-775","$645,176.25","Yearly",5,"Active",280),
  ("Idola Flores","Google","1-960-785-4261","convallis.convallis.dolor@outlook.ca","Ap #514-9201 Luctus Rd.","516443","Upper Austria","Poland","63-06-312","$948,502.64","Monthly",2,"Inactive",387);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Declan Moran","Microsoft","1-336-345-5542","erat.nonummy@google.edu","Ap #516-1959 Sem Avenue","14327","KwaZulu-Natal","Peru","95-41-779","$723,573.03","Quarterly",1,"Active",234),
  ("Lev Campbell","Microsoft","1-644-253-4214","sed.pharetra@yahoo.edu","362-6302 Molestie Rd.","00843","Haryana","Spain","60-56-346","$859,252.05","Quarterly",5,"Inactive",343),
  ("Jermaine Bean","ADP","(827) 528-3311","arcu.vel@hotmail.edu","P.O. Box 348, 8529 Nulla. Road","16805","Gävleborgs län","France","28-25-686","$831,354.57","Yearly",1,"Inactive",277),
  ("Ruby Hopkins","ADP","(515) 839-4004","tincidunt.aliquam@icloud.net","147-6978 Molestie Road","P2V 7XO","Huádōng","Russian Federation","50-72-062","$649,895.69","Yearly",3,"Active",327),
  ("Halee Hays","Google","1-536-989-3134","diam.sed@yahoo.ca","481-260 Mollis St.","664744","Uttarakhand","Ireland","52-15-392","$987,027.85","Quarterly",5,"Active",175),
  ("Xenos Munoz","Google","(482) 633-1611","lacus.etiam@aol.edu","P.O. Box 327, 2316 Luctus. Ave","4751","North Island","New Zealand","53-85-137","$928,488.51","Yearly",8,"Active",264),
  ("Quyn Love","ADP","(657) 539-7620","augue.eu@aol.com","Ap #753-1324 Orci Avenue","18042","Limón","China","13-52-125","$452,629.56","Quarterly",3,"Inactive",374),
  ("Hector Gould","Microsoft","(877) 164-5693","convallis@icloud.couk","2697 Mi Rd.","561824","Jeju","Nigeria","05-89-316","$527,489.61","Monthly",4,"Inactive",357),
  ("Ian Ramirez","Google","(463) 356-1860","nisi@protonmail.net","P.O. Box 141, 268 Scelerisque Rd.","7885","Hà Giang","Spain","25-66-961","$190,935.45","Yearly",8,"Inactive",311),
  ("Dillon Ray","ADP","(519) 543-9837","quisque@hotmail.edu","540-6791 Hymenaeos. Avenue","162504","Nordland","China","81-98-375","$20,982.29","Yearly",2,"Active",386);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("McKenzie Talley","Microsoft","(211) 674-8443","congue.in@google.org","P.O. Box 792, 5555 Volutpat Avenue","7642","Querétaro","Costa Rica","83-53-778","$416,349.41","Quarterly",2,"Active",334),
  ("Hadley Acevedo","Google","(565) 141-7802","dui.fusce.aliquam@google.net","984-2968 Nascetur Rd.","23098","Huáběi","Nigeria","24-39-651","$984,022.07","Monthly",9,"Active",134),
  ("Fay William","Microsoft","(604) 648-5184","adipiscing.non@aol.ca","744-5598 Non, Rd.","522573","FATA","Singapore","51-18-399","$660,708.26","Quarterly",7,"Active",105),
  ("Linus Nguyen","Google","1-802-169-5574","justo.nec@yahoo.ca","453-384 Aliquam Avenue","20098-53395","Sachsen","Germany","78-11-678","$842,725.62","Monthly",1,"Inactive",238),
  ("Anthony Best","Microsoft","1-671-927-0646","ac.arcu@outlook.couk","2126 Non, Ave","41376-810","Huáběi","Austria","72-42-149","$802,556.72","Quarterly",10,"Active",237),
  ("Madeson Reyes","Google","(566) 344-9723","diam.lorem@google.org","P.O. Box 501, 5780 Malesuada St.","7016 RJ","Jeju","Australia","64-80-417","$374,482.81","Yearly",1,"Active",390),
  ("Priscilla Wade","ADP","1-566-413-3367","sed.eu@outlook.ca","P.O. Box 138, 2562 Dolor Road","8439","Utrecht","Chile","54-45-348","$594,933.24","Monthly",0,"Inactive",204),
  ("Hope Hamilton","ADP","1-748-417-6426","at.velit@outlook.edu","P.O. Box 178, 1578 Risus. Rd.","2267","Heredia","China","27-42-143","$762,122.77","Quarterly",4,"Active",124),
  ("Jada Livingston","Microsoft","(211) 416-8273","elit.pharetra.ut@protonmail.org","Ap #955-9585 Consectetuer Rd.","57-43","Västra Götalands län","South Africa","33-28-988","$87,880.64","Monthly",5,"Active",275),
  ("Lysandra Cross","Google","1-427-470-7751","venenatis.vel@outlook.couk","3675 Neque. Rd.","99977","Phú Yên","Peru","81-35-541","$473,986.93","Monthly",10,"Active",350);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Tanek Petersen","ADP","(120) 256-6868","proin.sed@google.edu","P.O. Box 800, 8675 Nunc St.","32354-52686","West Sumatra","Turkey","17-63-213","$925,293.17","Quarterly",2,"Inactive",340),
  ("Regina Hansen","ADP","1-175-779-7071","nec.mollis@yahoo.net","2587 Adipiscing Rd.","3564","Balıkesir","Sweden","86-33-413","$966,038.01","Yearly",7,"Inactive",307),
  ("Hyatt Carson","Google","1-472-216-1762","nisi@hotmail.com","Ap #424-5151 Quisque St.","20413","Free State","Costa Rica","25-17-429","$477,672.93","Yearly",8,"Inactive",195),
  ("Doris Jones","Microsoft","1-231-214-6766","aliquam@yahoo.edu","P.O. Box 290, 7965 Elit Rd.","3215","South Island","Pakistan","04-90-737","$62,334.20","Quarterly",5,"Active",119),
  ("Hasad Pope","Google","1-595-287-9121","non@outlook.net","6821 Urna. Avenue","56-097","Møre og Romsdal","Vietnam","76-03-267","$134,659.13","Quarterly",8,"Active",331),
  ("Kelly Mcgowan","Google","(374) 196-8750","eu.eros.nam@icloud.net","P.O. Box 139, 449 Facilisis St.","12504","Molise","Chile","29-89-673","$409,594.11","Yearly",8,"Active",233),
  ("Marshall Santos","Google","1-875-493-7626","maecenas.ornare@hotmail.couk","270-4839 Tincidunt, St.","3599","Styria","Pakistan","66-95-413","$930,723.87","Yearly",3,"Active",149),
  ("Wade Alston","Google","(929) 395-6443","nunc.ac@yahoo.ca","736-1824 Nunc Rd.","4385 IM","Connacht","Canada","28-54-287","$941,121.63","Monthly",8,"Inactive",342),
  ("Lester Payne","Microsoft","(383) 632-3456","donec.sollicitudin.adipiscing@google.net","P.O. Box 235, 4642 Vitae, Avenue","122853","East Region","South Korea","88-51-426","$509,520.49","Yearly",5,"Inactive",324),
  ("Arthur Sweeney","Microsoft","(337) 671-7839","suspendisse.aliquet.sem@google.couk","524-5529 Aenean Road","635375","Limpopo","Costa Rica","71-12-258","$498,464.57","Monthly",5,"Inactive",315);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Ulysses Hudson","ADP","1-455-359-4451","nunc@google.ca","679-7635 Et, St.","38185","West Sumatra","Pakistan","89-18-418","$607,192.55","Quarterly",3,"Active",249),
  ("Fallon Hooper","ADP","1-518-678-2334","risus.in@icloud.edu","Ap #691-7944 Dolor Av.","36-72","Mersin","Sweden","88-62-729","$492,198.63","Yearly",6,"Inactive",381),
  ("Zahir Reilly","ADP","(607) 836-2556","ligula.tortor@hotmail.ca","Ap #422-6950 Vehicula Rd.","18-413","Tarapacá","Singapore","62-63-725","$719,862.74","Quarterly",3,"Inactive",184),
  ("Summer Gilbert","Microsoft","1-368-780-6898","lorem.eu@aol.com","871-9636 Molestie Rd.","A4Y 6L9","Puntarenas","France","29-99-401","$681,562.08","Monthly",9,"Active",135),
  ("Evan Barnett","ADP","(531) 998-1612","auctor.vitae.aliquet@google.ca","P.O. Box 956, 1348 Pede. Rd.","3428","West Bengal","France","43-78-655","$392,118.85","Monthly",3,"Inactive",109),
  ("Colton Daniels","Microsoft","(771) 752-1948","purus@protonmail.edu","Ap #251-1519 Nostra, Avenue","33-79","Dōngběi","Russian Federation","71-19-071","$731,988.43","Yearly",1,"Inactive",144),
  ("Quyn Battle","Microsoft","1-611-529-0613","tempus.lorem.fringilla@aol.ca","Ap #908-1532 Vitae St.","816715","Leinster","Colombia","33-41-236","$36,912.04","Yearly",10,"Active",159),
  ("Chadwick Decker","Microsoft","(654) 272-0215","adipiscing.elit@outlook.ca","Ap #122-1087 Porta St.","4203","Gauteng","Australia","63-16-177","$84,833.84","Yearly",5,"Active",326),
  ("Kerry Marks","ADP","1-814-273-6424","et.ipsum@hotmail.net","8006 Mauris, Av.","1977-2630","Leinster","Sweden","76-56-561","$429,162.44","Quarterly",5,"Inactive",257),
  ("Aimee Burgess","Google","(570) 588-2496","eu@google.net","433-1569 Euismod Ave","A1C 6C8","Hawaii","Costa Rica","56-94-303","$148,276.66","Quarterly",7,"Inactive",215);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Yvonne Joyce","Microsoft","1-723-317-9665","a.felis@google.net","Ap #268-7024 Lacinia Road","7957-2815","Xīnán","India","11-27-223","$961,217.86","Yearly",4,"Active",385),
  ("Jason Cline","ADP","(848) 755-7705","odio.aliquam.vulputate@outlook.net","Ap #643-2227 Fringilla Ave","522486","İzmir","India","56-22-234","$248,514.04","Yearly",7,"Active",386),
  ("Vivien Sosa","ADP","(388) 610-3144","dolor.nulla@aol.net","876-2116 Sit St.","11786","Leinster","South Korea","62-58-237","$975,239.66","Quarterly",3,"Active",198),
  ("Rogan Fry","Microsoft","1-306-553-8172","porttitor.scelerisque@aol.ca","Ap #347-2749 Molestie Av.","41639","Bayern","United Kingdom","28-15-822","$278,238.16","Monthly",10,"Inactive",264),
  ("Patience Bright","Google","1-848-647-7212","vivamus.nisi@aol.com","P.O. Box 957, 8246 Maecenas Street","2572","Leinster","Pakistan","55-61-274","$488,864.66","Yearly",7,"Active",192),
  ("Travis Battle","ADP","1-124-418-7258","sit.amet.consectetuer@hotmail.edu","967-6544 Magna St.","4198","Huádōng","China","52-43-832","$612,652.18","Quarterly",2,"Inactive",219),
  ("Joan Sykes","Microsoft","1-147-155-5427","amet.consectetuer@protonmail.net","832-6797 Sit Rd.","633612","Zakarpattia oblast","Spain","26-12-368","$223,657.84","Monthly",3,"Inactive",171),
  ("Christen Riley","ADP","1-542-624-3640","dolor@protonmail.ca","576-7274 In Rd.","338118","Heredia","Sweden","34-09-709","$793,473.73","Yearly",6,"Active",211),
  ("Emmanuel Monroe","Google","1-204-804-2372","ac.mattis@hotmail.com","Ap #617-4392 In Avenue","18767","Dōngběi","Norway","53-13-632","$767,226.45","Quarterly",3,"Active",321),
  ("Remedios Wright","ADP","1-233-333-3387","nisl.maecenas.malesuada@outlook.com","213-9477 In Rd.","385354","Stockholms län","Turkey","61-21-442","$503,236.76","Quarterly",3,"Inactive",179);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Emerson Wiggins","Google","1-712-736-4158","semper@yahoo.ca","P.O. Box 295, 1788 Erat. Av.","44697","Mykolaiv oblast","Poland","13-44-214","$586,476.02","Monthly",10,"Active",238),
  ("Hilel O'donnell","ADP","1-921-258-4372","cum.sociis@protonmail.com","Ap #591-9206 In Avenue","9385","Friesland","Spain","57-23-165","$231,801.38","Monthly",8,"Active",228),
  ("Madeline Byrd","Google","(994) 508-2646","lobortis.class.aptent@hotmail.couk","340-2347 Elementum St.","16559","Picardie","Indonesia","26-83-822","$13,021.44","Monthly",7,"Active",377),
  ("Aiko Castaneda","ADP","(851) 792-9978","vestibulum.mauris.magna@google.com","Ap #788-5988 Velit. Street","00816","Nord-Pas-de-Calais","Italy","61-43-340","$597,498.65","Monthly",1,"Inactive",231),
  ("Tatiana Villarreal","ADP","(555) 932-6878","velit.eu.sem@hotmail.com","529-4208 Et, Av.","L1Q 7JN","Ulster","Singapore","68-48-635","$113,024.59","Quarterly",7,"Inactive",132),
  ("Martena Burch","Google","1-648-727-3313","arcu@hotmail.org","Ap #553-2280 Dictum St.","5893","Central Region","Ukraine","62-79-068","$576,197.19","Quarterly",1,"Active",366),
  ("Megan Day","ADP","1-576-420-4516","nunc.ullamcorper@hotmail.com","526-2370 Erat. Ave","7135","Kogi","Netherlands","76-45-157","$192,825.95","Monthly",4,"Inactive",248),
  ("Talon Bartlett","ADP","1-147-970-6362","imperdiet.nec.leo@google.ca","Ap #441-9179 Sed Street","3843","Nova Scotia","Netherlands","48-78-421","$787,978.15","Yearly",2,"Inactive",267),
  ("Christine Cannon","Google","(334) 544-2393","accumsan.convallis.ante@outlook.net","819-7885 Ultrices Rd.","D4I 6CB","Waals-Brabant","Australia","29-75-502","$382,045.14","Yearly",9,"Inactive",251),
  ("Merritt Ferrell","Microsoft","1-731-421-8333","mauris.ut.mi@outlook.com","P.O. Box 816, 2531 Orci St.","1843 CL","Northumberland","Ireland","63-13-154","$403,402.87","Quarterly",9,"Inactive",177);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Cullen Mcgowan","Microsoft","1-371-776-4418","risus.donec.egestas@yahoo.edu","7384 Egestas. Av.","4006","Kent","Canada","12-75-326","$396,902.78","Yearly",9,"Active",174),
  ("Clayton Skinner","Microsoft","1-271-734-2357","quis.turpis@icloud.edu","5780 Amet, Street","3714","Junín","Poland","58-20-865","$118,520.60","Quarterly",7,"Active",214),
  ("Anne Sweet","Google","1-388-538-4233","at.arcu@google.net","Ap #772-3864 Donec Rd.","36115","Zaporizhzhia oblast","Australia","13-41-414","$764,131.27","Quarterly",9,"Active",235),
  ("Mollie Brewer","Google","1-438-555-7793","lorem@aol.ca","Ap #172-717 Natoque Ave","287124","Gangwon","Pakistan","76-60-721","$574,823.85","Quarterly",6,"Active",303),
  ("Kiona Britt","ADP","1-285-427-2731","sit.amet.consectetuer@yahoo.com","207-8576 Suspendisse Rd.","26787","Newfoundland and Labrador","Ukraine","70-52-214","$772,326.37","Yearly",8,"Inactive",195),
  ("Naomi Blanchard","Google","(384) 723-5638","egestas.aliquam@yahoo.com","Ap #738-5300 Amet Road","14927","Junín","Philippines","21-46-830","$661,614.37","Yearly",6,"Inactive",289),
  ("Indigo Mcdowell","Google","1-895-836-1055","lorem@hotmail.ca","580-2872 Elit. Av.","50112","Östergötlands län","Austria","82-85-557","$246,964.41","Quarterly",9,"Inactive",277),
  ("Zia Noel","Google","(565) 542-8277","elit@google.org","486-838 Dui, Rd.","31415","Vestland","United Kingdom","77-42-517","$351,068.38","Monthly",7,"Active",382),
  ("Jerome Roach","ADP","1-261-621-4471","ligula.nullam@aol.ca","Ap #776-3476 Metus Rd.","45-23","Queensland","Italy","11-63-983","$668,989.95","Quarterly",6,"Active",250),
  ("Upton Shaffer","Google","1-747-316-1051","maecenas.iaculis@icloud.net","449-3510 Ut, Road","VC14 9HK","Illes Balears","South Africa","85-31-478","$44,797.01","Yearly",6,"Inactive",177);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Cooper Carr","Microsoft","1-360-234-6411","aenean@icloud.org","144-9520 At Av.","242458","Maranhão","Australia","56-86-486","$212,772.50","Quarterly",2,"Inactive",400),
  ("Merritt Douglas","ADP","1-384-667-7156","semper.et@hotmail.edu","Ap #956-9766 Orci, Avenue","2164","British Columbia","Belgium","77-34-802","$676,704.70","Yearly",9,"Inactive",358),
  ("Wesley Hogan","ADP","1-372-515-6259","in@hotmail.net","975 Gravida Av.","m8K 7N4","Magallanes y Antártica Chilena","Canada","07-05-285","$242,159.14","Monthly",2,"Inactive",123),
  ("Fallon Stark","ADP","(889) 697-7368","quis.pede@google.couk","Ap #359-8287 Vitae, Avenue","OW5T 6VG","Northern Mindanao","Ireland","53-66-934","$572,769.96","Monthly",4,"Active",162),
  ("Leonard Nicholson","Microsoft","(329) 434-5266","rutrum@protonmail.ca","183-1649 Id St.","PP2 1QC","Los Lagos","Vietnam","74-30-407","$205,393.59","Quarterly",2,"Inactive",328),
  ("Valentine Barrera","Google","(250) 743-6258","nec.eleifend.non@aol.edu","1705 Fusce Road","36379","Coahuila","Norway","28-02-132","$174,182.40","Quarterly",9,"Inactive",153),
  ("Kevyn Morton","ADP","1-482-440-4331","eu.metus.in@outlook.org","Ap #846-6528 Lobortis Ave","302135","Paraná","Peru","61-86-788","$948,662.75","Yearly",10,"Inactive",209),
  ("Lucian Torres","Google","1-680-188-7102","ipsum.donec@yahoo.edu","745-7276 Arcu. Street","62016-33435","Styria","Turkey","05-12-553","$206,498.86","Yearly",2,"Active",119),
  ("Otto Goodman","Microsoft","(545) 295-5251","faucibus.orci.luctus@google.org","2867 Leo. St.","251433","Jönköpings län","Belgium","63-72-471","$386,337.80","Monthly",3,"Inactive",398),
  ("Maisie Flores","ADP","1-413-684-2327","curabitur.dictum@aol.net","228-9592 Integer St.","01344","Mpumalanga","South Africa","08-28-677","$45,075.93","Monthly",0,"Active",332);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Bruno Grimes","ADP","(787) 679-9934","tempor@hotmail.edu","4519 Nam Rd.","615650","Huádōng","New Zealand","85-24-427","$239,911.23","Monthly",5,"Inactive",106),
  ("Acton Morrow","Google","1-991-573-9748","neque@protonmail.net","Ap #751-7001 Donec Road","50714","Basilicata","Philippines","15-11-877","$989,000.66","Yearly",4,"Active",140),
  ("Neil Maxwell","ADP","1-183-559-8627","varius.et@icloud.org","1051 Nunc Av.","00669","Kharkiv oblast","United States","34-54-830","$365,850.83","Quarterly",2,"Inactive",210),
  ("Marvin Randolph","Google","(466) 778-6378","pharetra.quisque@aol.com","Ap #540-9132 Tempus Ave","528274","South Island","Poland","82-10-984","$279,651.11","Yearly",4,"Inactive",211),
  ("Oprah Alston","Microsoft","(773) 177-5336","luctus@outlook.ca","P.O. Box 967, 7714 Sem, St.","6538","Veracruz","United States","28-92-766","$697,604.73","Monthly",9,"Inactive",316),
  ("Lacey Hopper","Google","1-795-454-0406","elit.dictum.eu@icloud.couk","Ap #902-9818 Pharetra Ave","06236","West Java","New Zealand","38-87-731","$703,899.73","Monthly",5,"Active",336),
  ("Nadine Durham","ADP","(856) 443-0689","vitae.nibh@aol.edu","Ap #546-7395 Lacus Avenue","30405","Ceuta","France","35-85-943","$533,956.17","Monthly",1,"Active",267),
  ("Nathaniel Valenzuela","Microsoft","(667) 521-4888","nec.malesuada.ut@protonmail.ca","1976 Vivamus Rd.","36622","Drenthe","Italy","58-64-394","$924,760.36","Monthly",0,"Active",310),
  ("Callie Long","Google","(375) 335-6757","justo.sit.amet@icloud.ca","364-4135 Duis Street","62762","Assam","Peru","62-24-744","$848,149.01","Quarterly",7,"Inactive",109),
  ("Clark Garcia","ADP","(160) 925-6831","quis.pede.suspendisse@yahoo.org","439-9211 Erat Ave","39337","Delta","Peru","17-60-059","$160,884.05","Quarterly",2,"Active",169);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Salvador Cross","Microsoft","(266) 656-3236","enim.mi@protonmail.org","5682 Etiam Rd.","168368","Kentucky","Sweden","46-82-295","$540,660.13","Yearly",7,"Active",124),
  ("Sophia Dyer","ADP","(372) 725-4569","nulla.facilisi@icloud.ca","608-5756 Elit Ave","H79 3BR","North-East Region","Costa Rica","85-08-162","$879,130.25","Monthly",7,"Active",367),
  ("Herrod Peters","Google","1-855-464-2687","ligula@protonmail.com","P.O. Box 665, 4222 Diam Road","8645","Huádōng","Italy","24-22-177","$421,335.13","Quarterly",6,"Inactive",252),
  ("Xantha Burks","Microsoft","1-161-272-2014","ut.nisi@icloud.net","200-2726 Metus Street","42675","Mecklenburg-Vorpommern","Singapore","76-73-353","$333,751.96","Quarterly",1,"Active",348),
  ("Jessamine Griffith","Microsoft","1-252-302-7385","ultricies.adipiscing@google.net","4136 In St.","4408-4537","South Australia","India","26-72-184","$952,523.19","Quarterly",3,"Inactive",215),
  ("Walter Alvarez","ADP","(517) 381-0635","imperdiet.non@icloud.couk","P.O. Box 568, 5574 Nunc Av.","647312","Tasmania","Chile","62-45-897","$282,708.11","Yearly",6,"Inactive",102),
  ("Jasmine Steele","Microsoft","1-784-103-1385","quis.diam@outlook.com","987-1872 Nunc Road","339741","Nunavut","Italy","32-56-551","$442,655.05","Quarterly",9,"Inactive",103),
  ("Elliott Beasley","Microsoft","(387) 342-8161","ut.odio@aol.couk","Ap #921-9706 At Avenue","784778","Connacht","Singapore","14-52-225","$780,932.20","Quarterly",2,"Active",100),
  ("Tucker Ruiz","Google","1-927-449-3266","sed.leo@outlook.net","Ap #886-4926 Lobortis, Road","615167","Dorset","Netherlands","41-53-629","$202,557.87","Monthly",1,"Inactive",225),
  ("Dean Weeks","Google","1-241-537-8839","ante.dictum@aol.org","604-1134 Arcu. St.","7821","Östergötlands län","Poland","34-71-923","$84,962.62","Yearly",2,"Active",152);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Octavia Boyer","ADP","(317) 441-1372","libero.et@aol.edu","806-2729 Fringilla Road","61785","Goiás","France","13-05-144","$629,694.91","Yearly",7,"Active",345),
  ("Lani Weber","ADP","1-317-385-6893","a.scelerisque.sed@aol.com","Ap #861-8947 Mauris St.","6079","Namen","Vietnam","28-22-182","$614,950.98","Yearly",6,"Active",271),
  ("Nicole Mills","Google","(969) 541-6688","fermentum.arcu@google.org","Ap #977-1384 Nunc St.","21614","Friesland","Russian Federation","43-80-816","$278,541.93","Quarterly",9,"Active",294),
  ("Libby Dunlap","ADP","(815) 431-1763","libero.mauris@google.net","393-3591 Id, Rd.","298517","Lower Austria","New Zealand","35-82-280","$229,971.65","Monthly",4,"Inactive",325),
  ("Ezra Frye","Google","1-581-841-2248","nunc@google.couk","741-9303 Sed Av.","29441","Extremadura","Canada","91-00-557","$593,857.03","Monthly",2,"Inactive",162),
  ("Jade Walls","Google","(457) 605-7247","nec.tellus@aol.com","789-9187 Egestas Av.","86747-997","Cagayan Valley","Pakistan","53-40-245","$51,593.70","Yearly",7,"Inactive",306),
  ("Jillian Travis","Microsoft","(625) 227-8055","ante.dictum@hotmail.ca","P.O. Box 927, 8868 Eget Rd.","481115","Hidalgo","United States","29-32-577","$289,410.18","Monthly",4,"Active",222),
  ("Denise Cameron","ADP","(222) 487-7287","nec@outlook.edu","P.O. Box 907, 3086 Vitae Street","R2M 1M9","Oost-Vlaanderen","Pakistan","74-05-524","$470,986.41","Yearly",10,"Active",218),
  ("Pamela Mathews","Microsoft","(190) 644-3604","adipiscing.lacus@hotmail.ca","734-1515 Orci, St.","53135","Sachsen","Austria","62-21-044","$117,909.63","Quarterly",7,"Inactive",144),
  ("Quentin Martin","ADP","1-683-405-5754","non.bibendum@outlook.net","7638 Justo Street","216443","Córdoba","Vietnam","23-00-284","$452,528.74","Quarterly",8,"Inactive",353);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Craig Barron","Microsoft","1-405-843-9734","pede@hotmail.ca","Ap #733-3011 Nunc Street","51504","Putumayo","Italy","61-11-679","$717,969.33","Quarterly",7,"Inactive",153),
  ("Virginia Charles","Google","1-101-357-8139","ut.quam@hotmail.edu","Ap #131-1034 Sed St.","257541","Bangsamoro","Nigeria","40-81-631","$732,389.69","Monthly",9,"Active",400),
  ("Violet Maldonado","ADP","1-713-621-8718","tellus@aol.com","5446 Aliquet, Rd.","84-53","Cajamarca","Vietnam","69-41-708","$41,577.75","Quarterly",9,"Active",190),
  ("Baxter Richards","Microsoft","(982) 522-8654","pede.sagittis@google.couk","703-4074 Massa. Av.","55-532","Bayern","Canada","84-24-534","$856,286.14","Yearly",6,"Inactive",186),
  ("Whilemina Garrison","Microsoft","(837) 742-1147","nascetur.ridiculus.mus@outlook.net","Ap #105-556 Sapien Avenue","16478","Tuyên Quang","Brazil","16-96-837","$974,430.77","Quarterly",9,"Active",119),
  ("Simone Trevino","ADP","(601) 567-7150","ultrices.posuere@protonmail.net","4813 Ultricies Avenue","3155","Junín","Russian Federation","79-97-591","$308,694.97","Yearly",3,"Inactive",126),
  ("Cain Stokes","Google","(615) 334-7566","morbi.non@google.edu","899-8637 Fames Av.","26139","Limousin","Russian Federation","32-67-775","$85,411.30","Yearly",5,"Active",250),
  ("Chadwick Herring","Microsoft","1-433-355-8823","tempor@hotmail.edu","Ap #486-2369 Justo Road","343829","Northwest Territories","Singapore","11-65-745","$225,629.39","Monthly",1,"Inactive",369),
  ("Erasmus Browning","Microsoft","1-816-940-8956","dolor.vitae.dolor@hotmail.edu","P.O. Box 893, 5108 Blandit St.","18275","Noord Holland","South Korea","45-84-752","$588,828.17","Quarterly",9,"Active",303),
  ("Emma Austin","Google","1-170-661-3929","ac.fermentum@yahoo.net","Ap #158-9339 Aliquam Rd.","6624","Cusco","Austria","78-20-275","$977,950.06","Quarterly",1,"Active",399);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Hollee Abbott","Google","1-619-547-7325","phasellus.nulla@yahoo.net","Ap #827-5662 Cras Ave","45378","Euskadi","France","94-54-176","$852,063.76","Yearly",7,"Active",374),
  ("Kathleen Giles","ADP","(756) 795-1184","lacinia.orci@google.net","144-5793 Velit Av.","834737","Rajasthan","Australia","08-89-814","$341,079.01","Monthly",1,"Active",305),
  ("Madeline Berry","Microsoft","1-842-203-7523","magna.malesuada@hotmail.edu","P.O. Box 415, 5261 Ullamcorper Ave","88780","New South Wales","Chile","54-84-523","$139,991.89","Yearly",9,"Active",308),
  ("Tanisha Donaldson","Microsoft","1-662-698-6376","et@aol.ca","6370 Dolor. Street","5533","South Jeolla","Italy","41-03-424","$420,166.42","Quarterly",0,"Inactive",390),
  ("Keane Pollard","Google","(195) 417-5239","risus@aol.org","Ap #179-5104 Vel Rd.","891078","North Island","Indonesia","24-16-116","$824,268.22","Quarterly",6,"Active",122),
  ("Margaret Hewitt","Google","(693) 348-5327","et@aol.com","154-1287 Etiam St.","Y6Y 5Y8","Northwest Territories","Poland","27-15-124","$183,391.88","Yearly",2,"Active",386),
  ("Jane Cabrera","Google","1-215-961-5226","sit.amet.nulla@aol.com","7613 Lorem Rd.","45678","Lambayeque","Austria","13-53-103","$157,823.01","Quarterly",2,"Inactive",140),
  ("Mary Harrell","Microsoft","1-242-538-2065","auctor.nunc@icloud.couk","Ap #681-7828 Tortor Avenue","55-212","South Sulawesi","Philippines","34-23-692","$54,071.16","Quarterly",5,"Active",361),
  ("Lee Patterson","Google","1-156-828-1325","malesuada@google.net","P.O. Box 875, 1498 Convallis, Street","757184","Central Luzon","Costa Rica","23-45-114","$233,832.01","Yearly",1,"Inactive",254),
  ("Thomas Carroll","Google","(414) 179-6588","phasellus.dapibus@icloud.org","Ap #487-4798 Tempor Road","7222","Western Cape","Colombia","29-52-683","$554,305.31","Yearly",6,"Active",321);
INSERT INTO `myTable` (`name`,`Employer`,`phone`,`email`,`address`,`postalZip`,`region`,`country`,`ssn`,`totalpay`,`frequency`,`overtime`,`Status`,`Deductions`)
VALUES
  ("Camden Moses","Google","(528) 268-2444","nec.ligula@google.edu","813-9615 Neque. Rd.","914645","Alsace","United Kingdom","80-58-893","$462,312.80","Quarterly",6,"Inactive",109),
  ("Marvin Jordan","Microsoft","1-871-673-8848","nullam.feugiat.placerat@protonmail.ca","703-6264 Fusce Ave","8381-1661","FATA","South Africa","33-85-826","$482,190.40","Yearly",0,"Inactive",274),
  ("Dalton Hooper","ADP","1-741-341-2858","ullamcorper.duis@outlook.com","Ap #565-9430 Et Avenue","347298","Arica y Parinacota","Norway","83-64-965","$43,204.38","Quarterly",6,"Active",156),
  ("Sylvester Mcdonald","ADP","1-948-985-3225","felis.adipiscing.fringilla@google.ca","382-3335 Non St.","608563","Ternopil oblast","Turkey","31-37-345","$783,893.96","Monthly",6,"Inactive",258),
  ("Denton Singleton","Microsoft","1-312-667-4073","sagittis@google.net","Ap #536-3819 Erat Av.","6598","Cusco","Italy","23-82-627","$643,308.29","Yearly",4,"Active",208),
  ("Ivana Stuart","Microsoft","(317) 623-1205","ultrices.sit@aol.ca","829-2284 Sodales St.","92-261","Mpumalanga","Italy","97-53-265","$220,942.80","Monthly",7,"Active",252),
  ("Helen Cannon","Microsoft","(125) 204-0147","mauris.aliquam@protonmail.edu","162-5433 Nulla St.","94278","Bretagne","Singapore","52-73-117","$29,245.25","Quarterly",2,"Inactive",341),
  ("Tana Duffy","ADP","(132) 829-2646","cursus.diam@aol.couk","P.O. Box 727, 1940 Mi. Rd.","65304","Aceh","Singapore","46-36-144","$210,458.94","Yearly",3,"Inactive",234),
  ("Desirae Whitley","Google","(659) 414-1613","erat.vivamus@protonmail.edu","414 Nascetur Avenue","5351","Pays de la Loire","Nigeria","90-03-420","$236,541.80","Yearly",8,"Inactive",124),
  ("Cooper Puckett","Google","1-423-218-4614","sed@yahoo.com","595-7630 Egestas. Rd.","D7T 1S6","North Island","Ireland","47-38-499","$347,389.38","Yearly",2,"Inactive",150);
