CREATE TABLE `bill_due` (
  `consumer_no` varchar(30) NOT NULL,
  `Date` varchar(30) NOT NULL,
  `Consumed_units` varchar(30) NOT NULL
);

CREATE TABLE `bill_payed` (
  `consumer_no` varchar(30) NOT NULL,
  `Date` varchar(30) NOT NULL,
  `Amount` varchar(30) NOT NULL,
  `units` varchar(30) NOT NULL
);

CREATE TABLE `date_units` (
  `consumer_no` varchar(30) NOT NULL,
  `Date` varchar(30) NOT NULL,
  `Consumed_units` varchar(30) NOT NULL
);
CREATE TABLE `govt_db` (
  `consumer_no` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `service_status` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL
);
INSERT INTO `govt_db` (`consumer_no`, `region`, `service_status`, `address`, `user_name`) VALUES
('1267234589', '01-chennai-south', 'live', '1/42,chennai', 'Prakash R'),
('0700092776', '03-Coimbatore', 'live', '90,Coimabtore', 'Divya K'),
('5678429089', '01-chennai-south', 'live', '34/5,chennai', 'Karthi P'),
('1234567891', '04-Erode', 'live', '5/67A,erode', 'Ram M K'),
('2890538765', '02-Villupuam', 'live', '4/67E,villupuram', 'Priya L'),
('6723190456', '03-Coimbatore', 'live', '41J,coimbatore', 'Gokul A'),
('7834190126', '09-chennai-north', 'live', '87/5,chennai', 'Kaviya S'),
('3167800371', '07-Tirunelveli', 'live', '53/8F,tirunelveli', 'Guhan N'),
('5312890035', '05-madurai', 'live', '762/3,madurai', 'Kishore M'),
('9006731426', '06-trichy', 'live', '51/8H,trichy', 'Manikandan J'),
('4677209218', '07-Tirunelveli', 'live', '76/8B,tirunelveli', 'Vishali T'),
('3891042798', '08-vellore', 'live', '32/6N,vellore', 'Mohan K'),
('5631208671', '06-trichy', 'live', '32/8L,trichy', 'Charan K'),
('6513487148', '08-vellore', 'live', '54/8B,vellore', 'Swathi A'),
('3412076881', '03-coimbatore', 'live', '45/2K,coimbatore', 'Akshaya M');






CREATE TABLE `lt_tarrif` (
  `tarrif` varchar(100) DEFAULT NULL,
  `fix_charge` decimal(10,1) DEFAULT NULL,
  `prunit` decimal(10,1) DEFAULT NULL,
  `e_tax` decimal(10,1) DEFAULT NULL,
  `subsidary` decimal(10,1) DEFAULT NULL
) ;

INSERT INTO `lt_tarrif` (`tarrif`, `fix_charge`, `prunit`, `e_tax`, `subsidary`) VALUES
('commerical', '20.0', '1.5', '101.0', '10.0'),
('public', '20.0', '1.5', '101.0', '10.0'),
('ltcommerical', '20.0', '8.1', '101.0', '10.0'),
('workshop', '20.0', '4.6', '101.0', '10.0'),
('industries', '20.0', '4.0', '101.0', '10.0'),
('power', '20.0', '4.6', '101.0', '10.0'),
('tempsup', '20.0', '12.0', '101.0', '10.0'),
('lighttown', '20.0', '6.4', '101.0', '10.0'),
('govt', '20.0', '5.8', '101.0', '10.0'),
('private', '20.0', '7.5', '101.0', '10.0'),
('commerical', '20.0', '1.5', '101.0', '10.0'),
('public', '20.0', '1.5', '101.0', '10.0'),
('ltcommerical', '20.0', '8.1', '101.0', '10.0'),
('workshop', '20.0', '4.6', '101.0', '10.0'),
('industries', '20.0', '4.0', '101.0', '10.0'),
('power', '20.0', '4.6', '101.0', '10.0'),
('tempsup', '20.0', '12.0', '101.0', '10.0'),
('lighttown', '20.0', '6.4', '101.0', '10.0'),
('govt', '20.0', '5.8', '101.0', '10.0'),
('private', '20.0', '7.5', '101.0', '10.0'),
('commerical', '20.0', '1.5', '101.0', '10.0'),
('public', '20.0', '1.5', '101.0', '10.0'),
('ltcommerical', '20.0', '8.1', '101.0', '10.0'),
('workshop', '20.0', '4.6', '101.0', '10.0'),
('industries', '20.0', '4.0', '101.0', '10.0'),
('power', '20.0', '4.6', '101.0', '10.0'),
('tempsup', '20.0', '12.0', '101.0', '10.0'),
('lighttown', '20.0', '6.4', '101.0', '10.0'),
('govt', '20.0', '5.8', '101.0', '10.0'),
('private', '20.0', '7.5', '101.0', '10.0');



CREATE TABLE `reg_db` (
  `user_name` varchar(100) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `consumer_no` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Address` varchar(40) NOT NULL
) ;

ALTER TABLE `govt_db`
  ADD PRIMARY KEY (`consumer_no`);

ALTER TABLE `reg_db`
  ADD PRIMARY KEY (`email_id`,`consumer_no`) USING BTREE;
COMMIT;
