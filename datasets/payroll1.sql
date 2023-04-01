-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2023 at 06:19 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payroll`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `employer` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `postalZip` varchar(10) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `ssn` varchar(100) DEFAULT NULL,
  `totalpay` varchar(100) DEFAULT NULL,
  `frequency` varchar(255) DEFAULT NULL,
  `overtime` mediumint(9) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `deductions` mediumint(9) DEFAULT NULL,
  `experience` mediumint(9) DEFAULT NULL,
  `postal_zip` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `employer`, `username`, `password`, `phone`, `email`, `address`, `postalZip`, `region`, `country`, `ssn`, `totalpay`, `frequency`, `overtime`, `status`, `deductions`, `experience`, `postal_zip`) VALUES
(1, 'Rashad Pearson', 'ADP', 'Chava', 'UAW19LSB1RI', '1-283-469-2671', 'fusce.aliquam@yahoo.in', 'Ap #238-4547 Etiam Rd.', '48-621', 'Aquitaine', 'Chile', '08-43-972', '$26,574.67', 'Monthly', 3, 'Active', 179, 7, NULL),
(2, 'Wayne Shelton', 'Google', 'Vera', 'KYO98ZRA4EA', '1-565-733-6903', 'elit.a@outlook.edu', 'P.O. Box 206, 4616 In St.', '27185', 'Oost-Vlaanderen', 'Sweden', '87-63-488', '$97,164.04', 'Quarterly', 6, 'Active', 138, 4, NULL),
(3, 'Kirby Jacobs', 'Microsoft', 'Amethyst', 'HNV34RSQ8PT', '(448) 471-7066', 'erat.volutpat@google.org', '4878 Semper Avenue', '521387', 'Stirlingshire', 'Indonesia', '93-73-148', '$60,987.27', 'Monthly', 6, 'Active', 140, 1, NULL),
(4, 'Adria Miles', 'ADP', 'Kelsey', 'IVP39LAS0JV', '1-168-231-5347', 'nec.cursus@aol.ca', 'Ap #732-9451 Adipiscing St.', '999281', 'Heredia', 'Brazil', '31-23-210', '$34,053.56', 'Quarterly', 4, 'Active', 172, 1, NULL),
(5, 'Allen Taylor', 'ADP', 'Eleanor', 'HGG35RCW5JD', '(488) 878-7611', 'rutrum.urna.nec@hotmail.couk', 'Ap #564-9205 Convallis Avenue', '4692', 'West Sumatra', 'Peru', '25-55-146', '$48,969.55', 'Monthly', 7, 'Active', 176, 7, NULL),
(6, 'Ezra Bailey', 'Microsoft', 'Rhiannon', 'XTH94EWR5EX', '(892) 537-5157', 'lobortis.class@icloud.ca', 'Ap #218-1192 Nisi Avenue', '28858', 'Mexico City', 'Chile', '52-14-697', '$29,432.62', 'Monthly', 8, 'Active', 143, 6, NULL),
(7, 'Anne Stevens', 'Google', 'Hedy', 'KSO47PRI9DC', '(623) 897-2322', 'molestie@aol.org', '2471 Netus Road', '753834', 'Oslo', 'Mexico', '76-83-847', '$63,885.81', 'BiWeekaly', 4, 'Active', 136, 3, NULL),
(8, 'Maisie Richmond', 'Microsoft', 'Raja', 'JSG05YTJ8BJ', '(230) 657-1779', 'et@google.com', '9462 Molestie Avenue', '4115', 'North Island', 'South Korea', '83-83-411', '$54,813.78', 'BiWeekaly', 6, 'Active', 125, 3, NULL),
(9, 'Lydia Koch', 'Google', 'Fletcher', 'COG07TTF0OX', '(526) 555-6267', 'blandit@outlook.net', 'Ap #961-3644 Adipiscing Ave', '320160', 'Extremadura', 'Netherlands', '18-69-267', '$77,806.91', 'Quarterly', 9, 'Active', 110, 0, NULL),
(10, 'Driscoll Puckett', 'Microsoft', 'Stephen', 'OTT26YVV3LF', '(874) 737-6566', 'ante.bibendum@yahoo.ca', 'Ap #937-4876 Nunc Avenue', '86998-0066', 'Carinthia', 'Singapore', '22-47-416', '$78,079.98', 'BiWeekaly', 9, 'Active', 132, 6, NULL),
(11, 'Mannix Franks', 'ADP', 'Kelly', 'QLO99XMD7JN', '(813) 212-3675', 'consequat.auctor@outlook.net', 'P.O. Box 157, 7645 Lorem St.', '2489', 'Toscana', 'Ukraine', '94-08-389', '$30,019.36', 'Quarterly', 1, 'Active', 116, 1, NULL),
(12, 'Chava Young', 'Google', 'Leandra', 'NLU33FNM5VB', '1-487-900-2821', 'egestas.a.scelerisque@icloud.org', '494-2482 Faucibus St.', '50208', 'Västra Götalands län', 'France', '19-01-775', '$58,293.39', 'BiWeekaly', 10, 'Active', 183, 2, NULL),
(13, 'Ross Carver', 'ADP', 'Carl', 'KTK63OCI6BS', '(257) 759-4781', 'enim.etiam@icloud.com', 'P.O. Box 553, 9911 Nonummy St.', '67-621', 'North Gyeongsang', 'South Korea', '60-84-828', '$86,299.21', 'Quarterly', 3, 'Active', 148, 1, NULL),
(14, 'Adria Harrington', 'ADP', 'Alden', 'QBO22XUK4HS', '(231) 697-3040', 'interdum.libero@yahoo.couk', '6001 Lectus Rd.', '83329', 'Agder', 'Poland', '05-14-009', '$21,253.19', 'Monthly', 3, 'Active', 198, 0, NULL),
(15, 'Brock Ward', 'ADP', 'Raymond', 'NDH87FEL1JZ', '(655) 743-5865', 'elit.pharetra.ut@aol.org', '168-357 At, St.', '628678', 'Warmi?sko-mazurskie', 'Germany', '88-68-431', '$87,656.07', 'Quarterly', 4, 'Active', 113, 7, NULL),
(16, 'Hope Kerr', 'Microsoft', 'Kevin', 'LIQ43CFQ7BO', '(280) 848-8017', 'ac.libero@outlook.ca', 'P.O. Box 298, 9680 Donec Street', '265613', 'Arauca', 'Netherlands', '56-20-548', '$83,028.54', 'Quarterly', 4, 'Active', 136, 3, NULL),
(17, 'Hiram Rodgers', 'Google', 'Susan', 'VCD85PVV4JG', '1-372-467-7516', 'vehicula.et.rutrum@aol.org', 'Ap #963-7675 Nisl. St.', '857355', 'Västra Götalands län', 'Russian Federation', '82-73-865', '$69,638.35', 'Quarterly', 3, 'Active', 121, 7, NULL),
(18, 'Althea Beach', 'Google', 'Fletcher', 'RTU75VMS4RJ', '1-149-284-7622', 'ac@icloud.edu', '565-4696 Odio. Street', '586480', 'Borno', 'Germany', '32-25-570', '$78,219.88', 'BiWeekaly', 9, 'Active', 162, 5, NULL),
(19, 'Nicholas Calderon', 'Google', 'Brady', 'DZM78XWD2RE', '1-721-187-4766', 'aliquet.vel@aol.net', 'Ap #457-3273 Egestas Av.', '87012-999', 'Rogaland', 'Ukraine', '83-42-683', '$27,448.71', 'Quarterly', 4, 'Active', 102, 2, NULL),
(20, 'Garth House', 'Google', 'Mechelle', 'OUL46XTC3AE', '1-540-723-7522', 'aliquet.vel@protonmail.ca', 'P.O. Box 267, 3980 Sem Ave', '373526', 'Minnesota', 'Chile', '80-66-678', '$16,132.77', 'BiWeekaly', 7, 'Active', 113, 1, NULL),
(21, 'Reed Terry', 'Microsoft', 'Skyler', 'MUO22OLU9GJ', '1-929-992-1600', 'lobortis.tellus@icloud.com', '246-400 Ut St.', '57736', 'Bengkulu', 'Russian Federation', '75-12-043', '$70,995.06', 'Monthly', 6, 'Active', 141, 2, NULL),
(22, 'Illiana Simmons', 'ADP', 'Timon', 'ODD65GYH6HP', '(104) 648-6389', 'ut.erat@hotmail.org', '3608 Placerat. St.', '717282', 'South Island', 'Indonesia', '46-96-910', '$65,114.46', 'BiWeekaly', 0, 'Active', 156, 1, NULL),
(23, 'Noel Mcbride', 'Microsoft', 'Hashim', 'WYG63UCD5GQ', '1-346-624-7301', 'mauris.morbi.non@aol.edu', 'P.O. Box 981, 7842 Aliquam Rd.', '981239', 'Saratov Oblast', 'Peru', '02-04-360', '$66,358.36', 'Quarterly', 7, 'Active', 118, 8, NULL),
(24, 'Fay Townsend', 'Google', 'Miranda', 'HKG64FWQ8WP', '1-854-489-6554', 'at.libero@protonmail.net', '578-4559 Erat Rd.', '822574', 'Central Region', 'Singapore', '05-61-431', '$21,772.32', 'Quarterly', 2, 'Active', 117, 3, NULL),
(25, 'Hedley Cherry', 'Microsoft', 'Edan', 'NGE49UOH7OH', '1-766-364-6817', 'egestas.aliquam.fringilla@protonmail.couk', 'P.O. Box 255, 300 Feugiat Ave', '520236', 'Alaska', 'Norway', '56-19-652', '$30,175.32', 'Quarterly', 10, 'Active', 112, 2, NULL),
(26, 'Wendy Williamson', 'ADP', 'Kylan', 'CSL64BDV2NI', '(244) 333-7548', 'tincidunt@hotmail.edu', 'P.O. Box 174, 5603 Netus Rd.', '37134', 'Lombardia', 'Mexico', '66-58-859', '$52,205.52', 'Monthly', 3, 'Active', 153, 1, NULL),
(27, 'Plato Gomez', 'Google', 'Macy', 'CAE76MYK3VP', '(235) 615-0560', 'egestas.lacinia@google.couk', 'P.O. Box 205, 2151 Nascetur Avenue', '6410', 'Caraga', 'Costa Rica', '54-58-868', '$69,142.63', 'Monthly', 2, 'Active', 172, 2, NULL),
(28, 'Kirsten Lang', 'Microsoft', 'Haley', 'EDP11PXR1SX', '(572) 451-4245', 'eget.lacus@protonmail.org', '661-7745 Eget, Rd.', '71155', 'Wielkopolskie', 'Australia', '75-44-391', '$20,865.49', 'BiWeekaly', 7, 'Active', 175, 8, NULL),
(29, 'Hedda Murray', 'Microsoft', 'Molly', 'OXL07LQG2UB', '(503) 734-8582', 'fusce.feugiat@outlook.org', '638-5109 Donec Rd.', '3423', 'Berkshire', 'Norway', '32-82-687', '$27,121.45', 'BiWeekaly', 1, 'Active', 127, 9, NULL),
(30, 'Leigh Woodward', 'Google', 'Brenden', 'TIF07MVI4UJ', '1-474-516-2158', 'ut.tincidunt@icloud.com', 'Ap #701-3608 Senectus Ave', '225473', 'Leicestershire', 'Turkey', '32-85-022', '$95,500.38', 'Monthly', 1, 'Active', 175, 3, NULL),
(31, 'Halla Barry', 'Microsoft', 'Nolan', 'XNM44GJX1CW', '(487) 404-7123', 'vitae.aliquet@google.com', 'P.O. Box 950, 381 Augue St.', '7528', 'Basilicata', 'Spain', '28-01-234', '$73,240.72', 'BiWeekaly', 7, 'Active', 102, 2, NULL),
(32, 'Chava Alvarez', 'ADP', 'Dieter', 'RUI47BAO8LV', '1-632-662-3481', 'velit.justo@outlook.com', 'Ap #956-9904 Nonummy St.', '636832', 'North West', 'China', '72-44-672', '$20,607.51', 'Quarterly', 6, 'Active', 194, 4, NULL),
(33, 'Ivan Gregory', 'Microsoft', 'Keely', 'FYX31FOU4CA', '1-552-578-5455', 'enim.nunc@hotmail.edu', 'Ap #110-7973 At, Av.', '8552', 'X?nán', 'Ukraine', '04-28-713', '$24,922.46', 'Monthly', 9, 'Active', 195, 7, NULL),
(34, 'Dorothy Jacobs', 'ADP', 'Chiquita', 'YTT42JRD9NC', '(376) 935-7538', 'libero.integer@hotmail.couk', 'Ap #801-2628 Ac Avenue', '472252', 'Fife', 'Mexico', '00-89-728', '$34,177.22', 'BiWeekaly', 5, 'Active', 170, 3, NULL),
(35, 'Oliver Oneal', 'Microsoft', 'Maryam', 'WUM19OIA5KC', '1-230-206-5890', 'odio.aliquam@protonmail.net', 'P.O. Box 731, 8509 Odio St.', '51598', 'Junín', 'France', '13-16-344', '$81,153.56', 'BiWeekaly', 4, 'Active', 133, 3, NULL),
(36, 'Yasir Maxwell', 'Google', 'Yeo', 'EYH47JLT2NH', '(302) 141-2858', 'dis.parturient.montes@yahoo.com', '2124 Mollis. Av.', '417641', 'Ancash', 'Peru', '92-18-673', '$90,719.13', 'BiWeekaly', 8, 'Active', 132, 1, NULL),
(37, 'Carl Mclean', 'Google', 'Martina', 'VGK75TON5SO', '(613) 755-4688', 'tincidunt.congue.turpis@google.net', '6179 Non, Av.', '575699', 'Nordrhein-Westphalen', 'Singapore', '53-84-331', '$97,272.35', 'Quarterly', 4, 'Active', 170, 4, NULL),
(38, 'Omar Willis', 'Google', 'Zeph', 'PDL10JKR8VK', '(237) 539-8314', 'luctus@google.ca', 'Ap #461-4830 Sem Street', '822625', 'Sardegna', 'Vietnam', '37-43-754', '$11,960.30', 'Monthly', 4, 'Active', 174, 3, NULL),
(39, 'Marshall Livingston', 'ADP', 'Haviva', 'AES87JKZ3ZV', '1-874-848-4824', 'interdum.sed.auctor@yahoo.com', '766-3127 Fringilla, Avenue', '778454', 'Borno', 'Colombia', '58-75-487', '$48,821.75', 'BiWeekaly', 10, 'Active', 187, 5, NULL),
(40, 'Lyle Henson', 'Microsoft', 'Macaulay', 'YWV54ZCU3NP', '1-431-724-7212', 'scelerisque.lorem@yahoo.couk', 'Ap #311-1869 Et St.', '7114', 'Guaviare', 'United Kingdom', '23-01-774', '$71,120.80', 'Monthly', 2, 'Active', 111, 5, NULL),
(41, 'Vladimir Sears', 'ADP', 'Courtney', 'YYB65XOQ7IE', '(511) 843-7612', 'praesent.luctus@yahoo.org', 'Ap #580-4099 Aliquam Ave', '25115', 'Styria', 'Sweden', '64-32-922', '$49,967.66', 'Quarterly', 2, 'Active', 161, 7, NULL),
(42, 'Inez Baldwin', 'ADP', 'David', 'RBZ19UMJ3VS', '1-277-741-4548', 'congue.a.aliquet@google.ca', '440-9855 Sed St.', '2424', 'Risaralda', 'China', '48-43-170', '$31,771.84', 'Monthly', 8, 'Active', 105, 5, NULL),
(43, 'Raja Lawrence', 'ADP', 'Joseph', 'QWH60IBJ6GO', '(852) 330-9245', 'aptent.taciti@hotmail.com', '907-546 Nullam Ave', '342811', 'Tyumen Oblast', 'Australia', '45-53-355', '$90,231.26', 'Quarterly', 1, 'Active', 199, 4, NULL),
(44, 'Hanna Valentine', 'Google', 'Zahir', 'XCJ42ZAA3EK', '(823) 250-5744', 'convallis.erat@aol.ca', '893-2760 Elementum Ave', '171432', 'Valparaíso', 'Indonesia', '66-96-753', '$59,456.23', 'Monthly', 7, 'Active', 196, 8, NULL),
(45, 'Cameron Gardner', 'Microsoft', 'Cathleen', 'DIB79CLO1RU', '1-826-313-4401', 'aenean@protonmail.ca', '638-2896 Dictum Avenue', '625674', 'Queensland', 'Philippines', '14-64-032', '$50,744.98', 'BiWeekaly', 3, 'Active', 138, 4, NULL),
(46, 'Ray Parrish', 'ADP', 'Rigel', 'GFZ19QBB5DX', '(474) 572-6767', 'quis@hotmail.net', '1368 Sed, Av.', '2815', 'Limón', 'United States', '51-35-502', '$22,929.82', 'Quarterly', 8, 'Active', 149, 6, NULL),
(47, 'Sylvester Williams', 'ADP', 'Ivan', 'EIB31WCH3MH', '(743) 284-8728', 'elementum@yahoo.couk', 'P.O. Box 585, 9109 Velit Avenue', '23756', 'Central Region', 'Sweden', '37-66-281', '$69,978.88', 'Quarterly', 7, 'Active', 139, 6, NULL),
(48, 'Katell Watson', 'ADP', 'Penelope', 'OKX56WZN2HM', '1-561-347-4748', 'duis.at@icloud.org', 'P.O. Box 314, 3344 Morbi Rd.', '4101', 'Friesland', 'Mexico', '24-67-227', '$18,386.61', 'Quarterly', 0, 'Active', 167, 8, NULL),
(49, 'Ayanna Flowers', 'Google', 'Sylvia', 'WDR29TVI6VE', '1-313-795-7247', 'et.magnis.dis@google.ca', 'Ap #262-528 Nunc Rd.', '3333', 'North-East Region', 'Peru', '84-88-506', '$98,287.72', 'Quarterly', 8, 'Active', 154, 5, NULL),
(50, 'Wang Russo', 'Google', 'Cora', 'OOY62WRW1GU', '(139) 389-4587', 'ipsum.phasellus@hotmail.edu', '938-4658 Donec Ave', '8657', 'Dalarnas län', 'India', '55-13-563', '$37,103.88', 'Monthly', 8, 'Active', 175, 8, NULL),
(51, 'Tana Mills', 'ADP', 'Minerva', 'WDL71YKE7IA', '(205) 822-7084', 'egestas.lacinia@hotmail.org', 'Ap #534-1163 Suspendisse Road', '942519', 'Poltava oblast', 'Australia', '83-29-104', '$96,167.73', 'BiWeekaly', 2, 'Active', 171, 2, NULL),
(52, 'Uriel Fitzpatrick', 'Google', 'Malcolm', 'UML86OWG6IB', '(730) 566-9284', 'auctor.mauris@outlook.net', '835-4107 Proin St.', '4966', 'Córdoba', 'Vietnam', '18-45-858', '$98,823.96', 'BiWeekaly', 2, 'Active', 114, 1, NULL),
(53, 'Jarrod Moss', 'Google', 'Shaeleigh', 'BFW88GLO3NX', '(786) 810-7438', 'cum.sociis.natoque@hotmail.edu', '202-7935 Dui Av.', '66496', 'Overijssel', 'Poland', '61-41-244', '$23,156.86', 'Monthly', 2, 'Active', 106, 6, NULL),
(54, 'Omar Cervantes', 'ADP', 'Elaine', 'VHN91YNU7PK', '1-281-584-2796', 'auctor.odio@aol.com', '9836 At Road', '667364', 'South Island', 'Poland', '91-71-697', '$22,506.53', 'Quarterly', 2, 'Active', 116, 6, NULL),
(55, 'Hyacinth Bright', 'ADP', 'Harlan', 'SLK01TRX1VX', '1-535-553-2275', 'nam@icloud.ca', '914-8970 Nunc, Ave', '75443', 'L?ng S?n', 'Sweden', '24-72-164', '$16,579.30', 'Monthly', 2, 'Active', 121, 5, NULL),
(56, 'Chava Clark', 'ADP', 'Hashim', 'THS91QFL3FD', '1-217-267-3865', 'vehicula.aliquet@protonmail.edu', 'Ap #605-1997 Sed Street', '1271', 'Davao Region', 'Chile', '93-37-461', '$30,433.04', 'Quarterly', 10, 'Active', 183, 9, NULL),
(57, 'Gisela Knapp', 'Microsoft', 'Galvin', 'LXP55NXA1FD', '(272) 398-5236', 'integer.urna@outlook.ca', 'P.O. Box 625, 8624 Ut, Avenue', '28512', 'North Jeolla', 'South Korea', '44-39-774', '$44,374.36', 'Quarterly', 9, 'Active', 166, 6, NULL),
(58, 'Avram Hubbard', 'ADP', 'Faith', 'JPW26GDY9RL', '(734) 213-6536', 'aliquam.erat@hotmail.ca', '565-5749 Auctor, Street', '85754', 'Loreto', 'Poland', '55-68-583', '$44,522.40', 'Quarterly', 3, 'Active', 145, 3, NULL),
(59, 'Chantale Peters', 'Google', 'Damian', 'ODH63PZE5IS', '1-545-341-8292', 'diam.dictum@yahoo.edu', 'Ap #603-4450 Vitae Av.', '30119', 'Ceuta', 'Colombia', '15-08-882', '$22,020.70', 'Quarterly', 6, 'Active', 103, 6, NULL),
(60, 'Quinn Lamb', 'ADP', 'Veronica', 'SCM59MQY0MU', '(751) 381-6287', 'fusce.mollis.duis@protonmail.edu', '794-4716 Augue St.', '22054', 'Dnipropetrovsk oblast', 'France', '86-80-515', '$17,451.07', 'Quarterly', 2, 'Active', 132, 2, NULL),
(61, 'Heather Kent', 'Google', 'TaShya', 'MGF66LQT8WT', '1-565-469-8252', 'at.iaculis@yahoo.edu', 'P.O. Box 278, 7759 Molestie Rd.', '63869', 'Novgorod Oblast', 'Belgium', '45-63-660', '$77,354.81', 'Monthly', 8, 'Active', 188, 5, NULL),
(62, 'Adria Le', 'ADP', 'Kyra', 'EKL96POW0CE', '(683) 805-1547', 'donec@outlook.couk', 'Ap #412-9863 Mollis. Rd.', '69548', 'Gävleborgs län', 'Vietnam', '22-33-124', '$21,497.63', 'BiWeekaly', 8, 'Active', 105, 6, NULL),
(63, 'Quinn Vega', 'Google', 'Ivory', 'DVC26IRA2ST', '(354) 458-6733', 'felis.eget@hotmail.ca', '702-2984 Nec Road', '44771', 'Jönköpings län', 'Norway', '55-91-947', '$17,857.79', 'Quarterly', 6, 'Active', 149, 7, NULL),
(64, 'Adrian Langley', 'ADP', 'Avram', 'UYC13UAW0IC', '1-676-716-2147', 'nisi@outlook.org', '642-5576 Id, Street', '8519', 'Puntarenas', 'Ukraine', '67-56-314', '$44,568.15', 'Monthly', 8, 'Active', 157, 1, NULL),
(65, 'Angela Rosales', 'Google', 'Martin', 'QMR14WES9NV', '1-519-261-2889', 'maecenas.iaculis@icloud.org', '112-3692 Nonummy. St.', '59-615', 'Vestland', 'Ukraine', '60-36-848', '$57,820.61', 'BiWeekaly', 10, 'Active', 192, 2, NULL),
(66, 'Nero Barr', 'ADP', 'Jocelyn', 'RVI83OMV7HF', '1-851-553-1972', 'est.mollis@google.ca', '6523 Lectus Street', '2128', 'Bursa', 'South Korea', '45-43-152', '$64,909.77', 'BiWeekaly', 3, 'Active', 192, 6, NULL),
(67, 'Ainsley Morrow', 'Microsoft', 'Duncan', 'PTP21CHX4IS', '1-676-346-7213', 'sapien@icloud.couk', 'Ap #498-9950 Vitae, St.', '2216', 'Soccsksargen', 'Costa Rica', '71-31-424', '$18,244.67', 'Quarterly', 9, 'Active', 117, 6, NULL),
(68, 'Ulysses William', 'Google', 'Scott', 'VNI43GZS5UV', '(238) 361-7599', 'et@outlook.net', '1186 Ipsum. St.', '18210', 'Tolima', 'Germany', '54-51-847', '$13,032.58', 'Quarterly', 9, 'Active', 128, 1, NULL),
(69, 'Vance Griffith', 'Google', 'Elmo', 'VXL91KRU4MB', '1-893-975-8344', 'sed.auctor.odio@yahoo.ca', 'Ap #637-6716 Donec Rd.', '62818', 'Jönköpings län', 'Netherlands', '94-86-627', '$39,973.52', 'Monthly', 5, 'Active', 123, 2, NULL),
(70, 'Zenia Velasquez', 'Microsoft', 'Ima', 'RTE78XCQ7QV', '(164) 652-2346', 'ut@icloud.net', '548-7945 Faucibus St.', '39789', 'Gelderland', 'Vietnam', '26-87-132', '$26,136.74', 'BiWeekaly', 1, 'Active', 147, 1, NULL),
(71, 'Oprah Vega', 'ADP', 'Astra', 'FGI15RBW9BI', '1-537-420-5464', 'lobortis@icloud.couk', 'Ap #702-675 Sit Street', '412928', 'Tripura', 'Turkey', '87-51-717', '$76,068.01', 'Quarterly', 7, 'Active', 155, 8, NULL),
(72, 'Beck Roth', 'Google', 'Wynter', 'PWL98DYQ1EX', '1-283-138-5075', 'sociosqu.ad@outlook.ca', '627-1631 Suspendisse St.', '8427', 'Ceará', 'United States', '61-83-868', '$14,417.58', 'BiWeekaly', 7, 'Active', 112, 7, NULL),
(73, 'Dustin Leach', 'ADP', 'Damian', 'PQC33DIM4OW', '(318) 722-2174', 'lorem@protonmail.edu', '6745 Sit Rd.', '2886 TB', 'Gävleborgs län', 'United Kingdom', '86-47-765', '$12,468.47', 'Monthly', 3, 'Active', 155, 1, NULL),
(74, 'Pandora Webb', 'ADP', 'Gray', 'OCB59QGX7GD', '1-786-466-1243', 'urna.et@yahoo.net', '6772 Vel, St.', '338337', 'West Java', 'New Zealand', '89-75-168', '$22,076.03', 'BiWeekaly', 3, 'Active', 198, 5, NULL),
(75, 'Oliver Hensley', 'Google', 'Jonah', 'OBX75CYX8DB', '1-721-742-4117', 'a.odio@aol.com', '129-1468 A St.', 'WJ7 9DJ', 'Northern Cape', 'United Kingdom', '49-89-048', '$45,809.57', 'BiWeekaly', 9, 'Active', 166, 5, NULL),
(76, 'Marvin Hickman', 'Google', 'Yetta', 'XLZ64RFR4ZV', '(784) 805-7666', 'vehicula.risus@icloud.com', 'Ap #524-2956 Neque St.', '665804', 'Ngh? An', 'United Kingdom', '29-81-897', '$28,303.52', 'Quarterly', 6, 'Active', 163, 9, NULL),
(77, 'Angelica Stephenson', 'Microsoft', 'Bell', 'KWV40CSN1NW', '1-951-139-7431', 'amet.dapibus@google.com', '733-5468 Vel Rd.', '940657', 'East Region', 'France', '22-77-047', '$87,200.90', 'BiWeekaly', 1, 'Active', 143, 5, NULL),
(78, 'Leslie Mathis', 'Microsoft', 'Lacy', 'SUC96JDE3DV', '(838) 576-2714', 'nunc.in@aol.edu', '6933 Lobortis St.', '36-974', 'South Island', 'Germany', '24-16-680', '$72,879.96', 'BiWeekaly', 5, 'Active', 141, 9, NULL),
(79, 'Leo Everett', 'Microsoft', 'Demetrius', 'NMQ34BKV5OD', '1-756-421-4079', 'ac.mi@icloud.org', '320-3356 Mus. Street', '15656', 'Iowa', 'Nigeria', '27-08-302', '$39,914.21', 'Quarterly', 3, 'Active', 177, 1, NULL),
(80, 'Yuli Bailey', 'ADP', 'Halee', 'GTB72SCR3WD', '1-444-697-6511', 'nisi.mauris.nulla@icloud.ca', '121 Hymenaeos. St.', '48373', 'Luik', 'Chile', '68-39-894', '$52,180.44', 'Quarterly', 8, 'Active', 118, 10, NULL),
(81, 'Kelly Schwartz', 'Google', 'Rudyard', 'DKT34KDC8HL', '1-124-688-7347', 'ridiculus.mus.aenean@google.net', 'Ap #210-7703 Fusce Ave', '24-37', 'Alaska', 'Singapore', '38-81-410', '$36,140.80', 'BiWeekaly', 1, 'Active', 180, 4, NULL),
(82, 'Sheila Little', 'Microsoft', 'Harper', 'XHX48XBT8OX', '(342) 635-7298', 'aliquet.diam@protonmail.net', '514-9102 Ut, St.', '723885', 'Central Region', 'Mexico', '71-75-776', '$87,398.03', 'BiWeekaly', 1, 'Active', 108, 6, NULL),
(83, 'Cara Mcconnell', 'Microsoft', 'Odessa', 'DUR37PQM5OG', '(800) 316-2310', 'purus.nullam@google.net', 'P.O. Box 426, 1129 Euismod Av.', '43167', 'Basse-Normandie', 'Mexico', '15-32-883', '$70,905.85', 'Monthly', 0, 'Active', 165, 9, NULL),
(84, 'Irma Matthews', 'Microsoft', 'Hollee', 'SPT36YLG8WU', '(688) 685-7243', 'rutrum.eu@icloud.couk', '9746 Sit St.', '50507', 'Northern Cape', 'Germany', '75-35-848', '$51,491.92', 'Quarterly', 5, 'Active', 133, 8, NULL),
(85, 'Idola Sanford', 'ADP', 'Hector', 'IVE13GKJ6XY', '(255) 418-3177', 'ante.lectus@yahoo.couk', '517-5689 Amet St.', '35-715', 'Møre og Romsdal', 'New Zealand', '63-15-287', '$48,410.79', 'BiWeekaly', 9, 'Active', 131, 7, NULL),
(86, 'Oliver Robinson', 'Google', 'Miranda', 'FQR48ILS4LD', '(668) 267-4790', 'interdum.libero.dui@icloud.net', '1765 Iaculis Rd.', '7131', 'Atlántico', 'Philippines', '73-32-981', '$88,397.97', 'BiWeekaly', 8, 'Active', 194, 1, NULL),
(87, 'Farrah Pennington', 'Microsoft', 'Emi', 'WHH60YHJ4PT', '1-327-488-9169', 'morbi@hotmail.net', 'Ap #216-6278 Nunc St.', '95355-374', 'Loreto', 'Norway', '22-16-452', '$69,235.40', 'BiWeekaly', 9, 'Active', 106, 7, NULL),
(88, 'Clare Beard', 'Google', 'Alika', 'EPF72KAU5XT', '(674) 545-5634', 'tortor.nibh.sit@icloud.net', 'Ap #471-6224 Nulla Rd.', '8762', 'Huád?ng', 'Germany', '12-37-328', '$72,063.75', 'BiWeekaly', 5, 'Active', 132, 3, NULL),
(89, 'Calvin Banks', 'Google', 'Jael', 'AJK44WTL5NZ', '(378) 550-2472', 'ipsum.sodales.purus@hotmail.couk', '331-7879 Vitae Road', '26315', 'Mpumalanga', 'United Kingdom', '98-29-193', '$52,445.32', 'BiWeekaly', 9, 'Active', 126, 3, NULL),
(90, 'Trevor Leonard', 'Microsoft', 'Emi', 'MCD33YKZ9FO', '(980) 136-3977', 'nec@outlook.ca', '336-1010 Enim. Ave', '111646', 'Limousin', 'Italy', '57-78-750', '$90,445.92', 'Quarterly', 3, 'Active', 194, 8, NULL),
(91, 'Vivian Guthrie', 'ADP', 'Lionel', 'ERJ60CDH5KP', '(528) 515-3514', 'ut.sagittis@hotmail.ca', '540-5877 Phasellus Av.', '678613', 'Limpopo', 'Netherlands', '68-35-375', '$72,106.08', 'Monthly', 9, 'Active', 187, 1, NULL),
(92, 'Akeem Jimenez', 'Google', 'Callum', 'HTY68TKH6FE', '1-216-224-7345', 'aliquet.magna.a@hotmail.ca', 'P.O. Box 997, 3937 Semper St.', '01636', 'Hamburg', 'Chile', '32-13-830', '$84,476.76', 'Quarterly', 7, 'Active', 160, 1, NULL),
(93, 'Venus Maxwell', 'Google', 'Lewis', 'DTJ62KMQ6GG', '1-765-807-3206', 'ipsum.leo@icloud.com', 'P.O. Box 357, 5628 Pharetra. Rd.', '15225', 'Östergötlands län', 'Belgium', '78-65-457', '$61,807.50', 'BiWeekaly', 4, 'Active', 197, 6, NULL),
(94, 'Quail Valenzuela', 'Google', 'Lani', 'KWE69DRA0OJ', '1-694-435-2114', 'consectetuer@hotmail.edu', 'Ap #570-8074 In Av.', '398871', 'East Nusa Tenggara', 'Singapore', '94-88-384', '$23,732.60', 'Quarterly', 5, 'Active', 154, 0, NULL),
(95, 'Raven Cleveland', 'Microsoft', 'Bevis', 'QGY49KQB4DN', '1-575-856-6350', 'neque.vitae.semper@aol.ca', 'Ap #278-1616 Nisl. St.', '24917', 'Piura', 'Mexico', '68-66-095', '$18,446.63', 'Quarterly', 9, 'Active', 179, 4, NULL),
(96, 'Barry Griffith', 'Google', 'Graham', 'HLD85EMR8UF', '1-816-721-9113', 'fusce.dolor@outlook.edu', '704-8056 Mauris Street', '30210', 'Östergötlands län', 'Nigeria', '39-02-267', '$80,601.76', 'BiWeekaly', 6, 'Active', 140, 6, NULL),
(97, 'Nehru Vargas', 'Microsoft', 'Jacob', 'XSG83CSG5JI', '1-999-912-7644', 'pharetra.ut.pharetra@hotmail.com', 'Ap #932-997 Praesent Rd.', '27-400', 'X?b?i', 'Spain', '64-59-832', '$59,543.83', 'BiWeekaly', 5, 'Active', 194, 10, NULL),
(98, 'Dolan Dickson', 'Google', 'Sierra', 'SBX52WGB2FE', '(775) 214-2679', 'eu.tempor@protonmail.org', 'Ap #966-1618 In Ave', '7519', 'British Columbia', 'France', '76-54-440', '$26,991.72', 'Monthly', 2, 'Active', 124, 4, NULL),
(99, 'Ivory Kent', 'Google', 'Anne', 'EJQ09VNF5BD', '1-441-380-8178', 'ante.blandit@hotmail.ca', '3093 Fermentum Avenue', '51806', 'Azad Kashmir', 'Ukraine', '54-53-117', '$71,529.75', 'BiWeekaly', 9, 'Active', 126, 5, NULL),
(100, 'Guinevere Mays', 'Google', 'Sydnee', 'TUP91HJU6UQ', '1-887-742-2495', 'donec@aol.ca', 'Ap #880-9549 Ultrices. St.', '376825', 'Cagayan Valley', 'South Korea', '62-16-587', '$90,951.28', 'BiWeekaly', 2, 'Active', 176, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `postalZip` varchar(10) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postal_zip` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`id`, `name`, `username`, `password`, `phone`, `email`, `address`, `postalZip`, `region`, `country`, `postal_zip`) VALUES
(1, 'Google', 'Alice', 'XMI84SQG3EL', '1-420-538-3172', 'dolor.sit@google.com', 'Ap #937-5807 Ridiculus Avenue', '9310', 'South Chungcheong', 'Belgium', NULL),
(2, 'Microsoft', 'Glenna', 'ZZM64PYD9PP', '1-417-227-5847', 'adipiscing.elit@microsoft.com', '366-6081 Ipsum Rd.', '384750', 'Akwa Ibom', 'Costa Rica', NULL),
(3, 'ADP', 'Emery', 'YIX28HWU4PF', '1-153-790-8281', 'metus@adp.com', '506-8871 Nec St.', '45636', 'Pará', 'Spain', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(22);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `sno` int(11) NOT NULL,
  `employee_count` int(11) NOT NULL,
  `runtype` varchar(10) NOT NULL,
  `reportcode` int(11) NOT NULL,
  `employer` varchar(30) NOT NULL,
  `year` int(11) NOT NULL,
  `quarter` int(11) NOT NULL,
  `processingtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `csvfile` varchar(300) NOT NULL,
  `pdffile` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`sno`, `employee_count`, `runtype`, `reportcode`, `employer`, `year`, `quarter`, `processingtime`, `csvfile`, `pdffile`) VALUES
(20, 33, '', 863, 'ADP', 2023, 3, '2023-04-01 03:52:50', 'CSV_ADP_1-Apr-2023_09-22-49.csv', 'PDF_ADP_1-Apr-2023_09-22-49.pdf'),
(21, 34, 'annonly', 863, 'ADP', 2023, 3, '2023-04-01 03:53:00', 'CSV_ADP_1-Apr-2023_09-22-49.csv', 'PDF_ADP_1-Apr-2023_09-23-00.pdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `employer`
--
ALTER TABLE `employer`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
