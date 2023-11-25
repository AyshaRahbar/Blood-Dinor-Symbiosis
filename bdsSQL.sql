
create database bds;
use bds;

CREATE TABLE `bloodbankdetails` (
  `bbname` varchar(25) NOT NULL,
  `address` varchar(100) NOT NULL,
  `zip` varchar(25) NOT NULL,
  `uname` varchar(35) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phno` varchar(15) NOT NULL,
  `Opos` varchar(10) default NULL,
  `Oneg` varchar(10) default NULL,
  `Apos` varchar(10) default NULL,
  `Aneg` varchar(10) default NULL,
  `ABpos` varchar(10) default NULL,
  `ABneg` varchar(10) default NULL,
  `Bpos` varchar(10) default NULL,
  `Bneg` varchar(10) default NULL,
  `district` varchar(35) NOT NULL,
  `area` varchar(35) NOT NULL,
  PRIMARY KEY  (`uname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



INSERT INTO `bloodbankdetails` (`bbname`, `address`, `zip`, `uname`, `email`, `phno`, `Opos`, `Oneg`, `Apos`, `Aneg`, `ABpos`, `ABneg`, `Bpos`, `Bneg`, `district`, `area`) VALUES
('bharathbb', 'secunderabad', '500062', 'bharat_12', 'bharat32@gmail.com', '34343434', '31', '42', '35', '44', '45', '46', '5', '56', 'Nalgonda', 'gandi nagar'),
('caringpeople', 'greenplaza                         ', '500019', 'care1', 'care_1@yahoo.com', '9876543323', '34', '23', '12', '13', '1', '12', '21', '33', 'Hyderabad', 'King koti');



CREATE TABLE `doctorprofile` (
  `uname` varchar(20) NOT NULL default '',
  `dname` varchar(20) default NULL,
  `specialization` varchar(15) default NULL,
  `gend` varchar(10) default NULL,
  `email` varchar(40) default NULL,
  `address` varchar(250) default NULL,
  `zip` varchar(10) default NULL,
  `phno` varchar(20) default NULL,
  `bg` varchar(5) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


INSERT INTO `doctorprofile` (`uname`, `dname`, `specialization`, `gend`, `email`, `address`, `zip`, `phno`, `bg`) VALUES
('hari_1', 'hari', 'dental', 'male', 'hari12@yahoo.com', 'johicomplex,mumbai', '500056', '8473464', 'A+'),
('janaki_1', 'janaki', 'gynaecologist', 'female', 'janu@yahoo.com', 'pinkplanet                               ', '500068', '9876544235', 'O+');


CREATE TABLE `doctortalk` (
  `doctorid` varchar(30) NOT NULL,
  `articletitle` varchar(30) NOT NULL,
  `content` varchar(1000) NOT NULL,
  KEY `doctorid` (`doctorid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `doctortalk` (`doctorid`, `articletitle`, `content`) VALUES
('janaki_1', 'eligility', 'oyugntiyutdi'),
('hari_1', 'benefits', 'ek hury utreeqwouie'),
('hari_1', 'eligability', 'aoeunrieyrbuyruurnieu'),
('hari_1', 'haiiii', 'woeino3euqwyelwieq'),
('janaki_1', 'reqirements', 'iueyut wteieqaoew;pow'),
('janaki_1', 'hello', 'klruewir weirwi'),
('janaki_1', 'fejyte rqwjt', 'liurbuytke wetyr');



CREATE TABLE `donorprofile` (
  `uname` varchar(20) NOT NULL default '',
  `name` varchar(20) default NULL,
  `fname` varchar(25) default NULL,
  `gend` varchar(10) default NULL,
  `age` int(11) default NULL,
  `email` varchar(40) default NULL,
  `address` varchar(250) default NULL,
  `district` varchar(50) default NULL,
  `area` varchar(50) default NULL,
  `zip` varchar(10) default NULL,
  `phno` varchar(20) default NULL,
  `bg` varchar(5) default NULL,
  `ldd` varchar(20) default NULL,
  `Availability` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


INSERT INTO `donorprofile` (`uname`, `name`, `fname`, `gend`, `age`, `email`, `address`, `district`, `area`, `zip`, `phno`, `bg`, `ldd`, `Availability`) VALUES
('shyni_2412', 'shyni', 'bhujangam', 'female', 22, 'shyni_24@yahoo.com', 'hno-14-18,madhusree apts,madhusudhan nagar', 'Hyderabad', 'malkajgiri', '500047', '9876543456', 'B+', '3/4/2008', 0),
('krish2', 'krish', 'krishna', 'male', 24, 'krish_2@yahoo.com', 'venkateshwara residency', 'Hyderabad', 'ecil', '500062', '9876543223', 'B+', '3/5/2008', 0),
('ram_2', 'ram', 'lakshman', 'male', 23, 'ram_12@yahoo.com', 'kalyan plaza,green city', 'Rangareddi', 'koti', '500047', '9876543231', 'A-', '2-5-08', 0),
('prasant_0', 'prasant', 'bhujangam', 'male', 25, 'pras_45@yahoo.com', 'gandhi street', 'Warangal', 'malakpet', '500076', '435565465', 'A+', '12-5-08', 0),
('keerthi2717', 'keerthi', 'sravan', 'female', 23, 'keerthi2@yahoo.com', 'pink plaza', 'Hyderabad', 'malkajgiri', '500068', '9876543234', 'AB+', '3/3/2008', 0),
('anusha', 'anusha', 'ravi', 'female', 22, 'anu.5@gmail.com', 'hno:123/76-12\r\nnehuru marg', 'Nalgonda', 'hyderguda', '500064', '98765434', 'AB+', '2/3/2009', 0),
('sajana', 'sajana', 'shekar', 'female', 19, 'saj.1@gmail.com', 'dfhdhtgktfyhdjh', 'Hyderabad', 'malakpet', '500076', '9876543234', 'AB-', '3/3/2008', 0),
('shalini_12', 'shalini', 'mahesh', 'female', 21, 'shashi_23@yahoo.com', 'daecolony', 'Hyderabad', 'ecil', '500045', '9234324154', 'O+', '12-10-08', 0),
('shekar1', 'shekar krishna', 'hariharan', 'male', 25, 'shker_21@yahoo.com', 'green hills', 'Karimnagar', 'malkajgiri', '5000034', '3435456453', 'AB-', '12/6/08', 0),
('suman', 'sumanlata', 'arvind', 'male', 34, 'suman@yahoo.com', 'hyderbad', 'Hyderabad', 'vidhyanagar', '5000944', '653457274', 'O-', '12/3/08', 0),
('harish', 'harish krishna', 'naresh', 'male', 23, 'harish23@gmail.com', 'tarnaka', 'Hyderabad', 'malakpet', '5000954', '4235724112', 'O-', '12/8/08', 0),
('erer5e4s', 'ererere', 'sdfdsfdsfdf', 'male', 18, 'sdfd@gmail.com', 'dfsfdfd', 'Rangareddi', 'adfsf', '3434343', '3434343434', 'A+', '03/18/1982', 1);



CREATE TABLE `emergencyreq` (
  `bg` varchar(10) NOT NULL,
  `requnits` varchar(20) NOT NULL,
  `phno` varchar(20) NOT NULL,
  `time` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `emergencyreq` (`bg`, `requnits`, `phno`, `time`) VALUES
('A+', '10 ', '324543565', NULL),
('B+', '5', '4354342221', NULL),
('AB+', '12', '4567754356', NULL),
('O-', '6', '3487549', NULL),
('A-', '4', '344564533', NULL),
('A+', '3', '343543532', NULL),
('O-', '3', '9453423232', NULL),
('O+', '3', '987898767', NULL),
('O+', '3', '987898767', NULL),
('A+', '4', '993433343', '07/03/2009'),
('B-', '3', '4354324325', '07/03/2009'),
('B-', '3', '4354324325', '07/03/2009'),
('B+', '4', '398473224', '07/03/08'),
('', '', '', ''),
('A-', '2', '65468785685', '7/3/2009'),
('a+', '3', '6543645325', '13/3/2009'),
('', '', '', ''),
('xcxxxx', '4', 'xxxxxxxx', ''),
('xxxx', '3', '4534365463', '13/3/2009'),
('A-', '5', '4545445', '17/03/2009'),
('A-', '4', 'rt', '17/03/2009'),
('A-', '4', 'wewe', '03/18/2009'),
('A+', '4', 'erer', '18/03/2009'),
('A-', 'rtrt', '454545', '18/03/2009'),
('A-', '5', '343434', '18/03/2009'),
('A+', '2', '2323', '18/03/2009'),
('A+', '34', '3434343434', '18/03/2009'),
('A+', '4', '234635736', '18/03/2009'),
('A+', '5', '656647487', '19/03/2009'),
('A+', '6', '4653746878', '19/03/2009'),
('A+', '6', '4653746878', '19/03/2009'),
('A+', '6', '4653746878', '19/03/2009'),
('A+', '6', '674657453', '19/03/2009'),
('AB+', '7', '45355765878', '19/03/2009');



CREATE TABLE `hospitaldetails` (
  `hName` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `zip` int(25) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phno` varchar(15) NOT NULL,
  `Opos` varchar(10) default NULL,
  `Oneg` varchar(10) default NULL,
  `Apos` varchar(10) default NULL,
  `Aneg` varchar(10) default NULL,
  `ABpos` varchar(10) default NULL,
  `ABneg` varchar(10) default NULL,
  `Bpos` varchar(10) default NULL,
  `Bneg` varchar(10) default NULL,
  `district` varchar(30) NOT NULL,
  `area` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



INSERT INTO `hospitaldetails` (`hName`, `address`, `zip`, `uname`, `email`, `phno`, `Opos`, `Oneg`, `Apos`, `Aneg`, `ABpos`, `ABneg`, `Bpos`, `Bneg`, `district`, `area`) VALUES
('apollo', 'highstreet', 500013, 'apollo1', 'apollo_2@yahoo.com', '9876543234', '1', '14', '12', '23', '32', '16', '21', '15', 'Hyderabad', 'koti'),
('yashodha', 'sec', 500087, 'yash_45', 'yash45@gmail.com', '9878987898', '21', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'Hyderabad', 'koti');



CREATE TABLE `mailmessages` (
  `uname` varchar(30) default NULL,
  `mail` varchar(1500) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `mailmessages` (`uname`, `mail`) VALUES
('ram_2', 'hello'),
('erer5e4s', 'hello'),
('anusha', 'iont5467'),
('sajana', 'iont5467');


CREATE TABLE `todaysreq` (
  `date` varchar(25) default NULL,
  `name` varchar(50) default NULL,
  `age` int(20) default NULL,
  `address` varchar(70) default NULL,
  `phno` varchar(20) default NULL,
  `bgrp` varchar(10) default NULL,
  `requnits` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `todaysreq` (`date`, `name`, `age`, `address`, `phno`, `bgrp`, `requnits`) VALUES
('21/12/08', 'hari', 44, 'apollo hospitals', '2343465652', 'A-', 7),
('21/12/08', 'prasad', 32, 'yahoda,ameerpet', '743623324', 'A+', 8),
('21/12/08', 'krishna', 25, 'care,sec', '787654376', 'O+', 5),
('21/12/08', 'shekar', 34, 'polomi hospitals,A.S.Rao nagar', '9343232442', 'AB+', 6),
('21/12/08', 'rahul', 23, 'shardhadevi,sainikpuri', '3409876543', 'O-', 3),
('21/12/08', 'ram', 34, 'kims,sec', '343476543', 'AB-', 5),
('7/03/2009', 'coign', 24, 'Tarnaka', '986065654', 'B+', 2),
('4/03/2009', 'Coign', 23, 'Hyd', '0989898', 'a+', 4),
('4/03/2009', 'Coign', 23, 'Hyd', '0989898', 'a+', 4),
('4/03/2009', 'Coign', 23, 'Hyd', '0989898', 'a+', 4),
('4/03/2009', 'Coign', 23, 'Hyd', '0989898', 'a+', 4),
('7/03/2009', 'Naveen', 25, 'Tarnaka', '90343434', 'b+', 3),
('2/5/09', 'erwe', 23, 'fdfndndsz', '3454333332', 'A-', 4),
('7/03/2009', 'hari', 21, 'ameerpet', '23724462', 'A-', 2),
('7/03/2009', 'harshini', 22, 'sec', '9878789877', 'B+', 2),
('13/03/2009', 'naveen', 25, 'hyd', '6454545454', 'B+', 3),
('18/03/2009', 'er34', 34, 'erer', '343434', '--select--', 34),
('18/03/2009', 'er34', 34, 'erer', '343434', 'A-', 34),
('18/03/2009', '3483', 23, 'wewe', '232323', 'A-', 2),
('18/03/2009', '2323', 22, 'wew', '232323', 'A+', 2);


CREATE TABLE `user` (
  `uname` varchar(25) NOT NULL,
  `pswd` varchar(25) NOT NULL,
  `role` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


INSERT INTO `user` (`uname`, `pswd`, `role`) VALUES
('yash_45', 'yash', 'hos admin'),
('ram_2', 'ram', 'donor'),
('hari_1', 'hari', 'doctor'),
('bharat_12', 'bart', 'bb admin'),
('krish2', 'krish', 'donor'),
('prasant_0', 'pras', 'donor'),
('apollo1', 'apollo', 'hos admin'),
('anusha', 'anu2', 'donor'),
('sajana', 'saj', 'donor'),
('keerthi2717', 'keerthi', 'donor'),
('janaki_1', 'janaki', 'doctor'),
('care1', 'care', 'bb admin'),
('shyni_2412', 'shyni', 'donor'),
('shalini_12', 'shalu', 'donor'),
('admin', 'admin', 'admin'),
('shekar1', 'shekar1', 'donor'),
('suman', 'suma', 'donor'),
('harish', 'hari', 'donor'),
('erer5e4s', 'coigncoign', 'donor'),
('kamineni', 'kamineni', 'hos admin');







DELIMITER //

CREATE TRIGGER add_to_emergencyreq_after_insert
AFTER INSERT ON todaysreq
FOR EACH ROW
BEGIN
    INSERT INTO emergencyreq (bg, requnits, phno, time)
    VALUES (NEW.bgrp, NEW.requnits, NEW.phno, NEW.date);
END;

//

DELIMITER ;

SELECT user.uname, user.pswd, user.role, mailmessages.mail
FROM user 
INNER JOIN mailmessages m ON user.uname = m.uname;



SELECT uname
FROM donorprofile
WHERE area IN (
    SELECT area
    FROM donorprofile
    WHERE bg = 'O-'
);





DELIMITER //

CREATE PROCEDURE InsertDonorProfile(
    IN p_uname VARCHAR(20),
    IN p_name VARCHAR(20),
    IN p_fname VARCHAR(25),
    IN p_gend VARCHAR(10),
    IN p_age INT,
    IN p_email VARCHAR(40),
    IN p_address VARCHAR(250),
    IN p_district VARCHAR(50),
    IN p_area VARCHAR(50),
    IN p_zip VARCHAR(10),
    IN p_phno VARCHAR(20),
    IN p_bg VARCHAR(5),
    IN p_ldd VARCHAR(20),
    IN p_Availability INT
)
BEGIN
    -- Check if age is greater than or equal to 18
    IF p_age >= 18 THEN
        -- Insert the donor profile
        INSERT INTO donorprofile (
            uname, name, fname, gend, age, email, address, district,
            area, zip, phno, bg, ldd, Availability
        ) VALUES (
            p_uname, p_name, p_fname, p_gend, p_age, p_email, p_address,
            p_district, p_area, p_zip, p_phno, p_bg, p_ldd, p_Availability
        );
        SELECT 'Donor profile created successfully' AS result;
    ELSE
        SELECT 'Cannot create donor profile. Age must be 18 or above.' AS result;
    END IF;
END //

DELIMITER ;




















