SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*--Admin Table Structure
--
--*/

CREATE TABLE IF NOT EXISTS admin (
	id int(11) NOT NULL,
	UserName varchar(100) NOT NULL,
	Password varchar(100) NOT NULL,
	updationDate timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

INSERT INTO admin (id, UserName, Password, updationDate) VALUES
(1, 'admin', MD5('admin'), now());


/*--Bookings Table Structure
--
--*/

CREATE TABLE IF NOT EXISTS tblbooking (
id int(11) NOT NULL,
userEmail varchar(100) DEFAULT NULL,
VehicleId int(11) DEFAULT NULL,
FromDate varchar(20) DEFAULT NULL,
ToDate varchar(20) DEFAULT NULL,
message varchar(255) DEFAULT NULL,
Status int(11) DEFAULT NULL,
PostingDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

INSERT INTO tblbooking (id, userEmail, VehicleId, FromDate, ToDate, message, Status, PostingDate) VALUES
(1, 'user1@gmail.com', 2, '06/06/2018', '06/07/2018', 'Give me', 1, now()),
(2, 'user2@gmail.com', 3, '01/01/2015', '02/08/2015', 'Give me for some days', 2, now()),
(3, 'user3@gmail.com', 4, '12/01/2017', '07/02/2017', 'Hi! Ineed it ', 0, now()),
(4, 'user4@gmail.com', 1, '16/10/2018', '12/11/2018', 'Please provide the service to me', 0, now()),
(5, 'user5@gmail.com', 6, '12/12/2017', '12/01/2018', 'I want to hire this taxi for few days', 1, now());


/*--Brand Table STRUCTURE--
--*/

CREATE TABLE IF NOT EXISTS tblbrands (
id int(11) NOT NULL,
  BrandName varchar(120) NOT NULL,
  CreationDate timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  UpdationDate timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

INSERT INTO tblbrands (id, BrandName, CreationDate, UpdationDate) VALUES
(1, 'Jeep', '2013-04-11 16:24:34', '2017-06-15 06:42:23'),
(2, 'Ford', '2018-03-10 16:24:50', NULL),
(3, 'Nisan', '2018-01-20 16:25:03', NULL),
(4, 'Datsun', '2018-01-11 16:25:13', NULL),
(5, 'volkswagen', '2018-12-31 16:25:24', NULL),
(6, 'Rennault', '2018-01-31 06:22:13', NULL),
(7, 'Fiat', '2018-07-24 11:02:29', NULL);


/*--ContactusInfo Table structure
--
--*/

CREATE TABLE IF NOT EXISTS tblcontactusinfo (
id int(11) NOT NULL,
  Address tinytext,
  EmailId varchar(255) DEFAULT NULL,
  ContactNo char(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;



INSERT INTO tblcontactusinfo (id, Address, EmailId, ContactNo) VALUES
(1, 'Phase-3, Sec 43-A, Chandigarh-160043', 'help@encar.com', '9876543210');

-- --------------------------------------------------------



/*--Users Table Structure
--
--*/

CREATE TABLE IF NOT EXISTS tblusers (
id int(11) NOT NULL,
  FullName varchar(120) DEFAULT NULL,
  EmailId varchar(100) DEFAULT NULL,
  Password varchar(100) DEFAULT NULL,
  ContactNo char(11) DEFAULT NULL,
  dob varchar(100) DEFAULT NULL,
  Address varchar(255) DEFAULT NULL,
  City varchar(100) DEFAULT NULL,
  Country varchar(100) DEFAULT NULL,
  RegDate timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  UpdationDate timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

INSERT INTO tblusers (id, FullName, EmailId, Password, ContactNo, dob, Address, City, Country, RegDate, UpdationDate) VALUES
(1, 'Alok Nath', 'user1@outlook.com', MD5('alok123'), '7654567897', '21/04/1990', 'Hyderabad', 'Hyderabad', 'India', '2015-03-27 09:51:00', now()),
(2, 'B J Sinha', 'bjsinha@yahoo.com', MD5('bj123'), '9806543245', NULL, NULL, NULL, NULL, '2014-01-30 03:45:46', now()),
(3, 'Kishor Kumar', 'kk4356@gmail.com', MD5('kishor123'), '7645327640', '03/02/1990', 'New Delhi', 'New Delhi', 'New Delhi', '2018-01-11 09:32:33', now()),
(4, 'Sourav Sharma', 'souravsharmalive@gmail.com', MD5('sourav123'), '4563278907', '04/04/1998', 'Chennai', 'Chennai', 'India', '2013-16-16 20:03:36', now()),
(5, 'Aron Ramsey', 'imramsey@outlook.com', MD5('aron123'), '9321212121', '08/08/1990' , 'Washington', 'Washington', 'USA', '2010-01-02 18:19:08', now());


/*--Vehicles table Structure
--
--*/

CREATE TABLE IF NOT EXISTS tblvehicles (
id int(11) NOT NULL,
  VehiclesTitle varchar(150) DEFAULT NULL,
  VehiclesBrand int(11) DEFAULT NULL,
  VehiclesOverview longtext,
  PricePerDay int(11) DEFAULT NULL,
  FuelType varchar(100) DEFAULT NULL,
  ModelYear int(6) DEFAULT NULL,
  SeatingCapacity int(11) DEFAULT NULL,
  Vimage1 varchar(120) DEFAULT NULL,
  Vimage2 varchar(120) DEFAULT NULL,
  Vimage3 varchar(120) DEFAULT NULL,
  Vimage4 varchar(120) DEFAULT NULL,
  Vimage5 varchar(120) DEFAULT NULL,
  AirConditioner int(11) DEFAULT NULL,
  PowerDoorLocks int(11) DEFAULT NULL,
  AntiLockBrakingSystem int(11) DEFAULT NULL,
  BrakeAssist int(11) DEFAULT NULL,

  RegDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UpdationDate timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

INSERT INTO tblvehicles (id, VehiclesTitle, VehiclesBrand, VehiclesOverview, PricePerDay, FuelType, ModelYear, SeatingCapacity, Vimage1, Vimage2, Vimage3, Vimage4, Vimage5, AirConditioner, PowerDoorLocks, AntiLockBrakingSystem, BrakeAssist, RegDate, UpdationDate) VALUES
(1, 'Wrangler', 1, 'The future is here', 300, 'Petrol', 3453, 4, 'ja.jpg', 'jb.jpg', 'jc.jpg', 'jd.jpg', '', 1, 0, 0, 1,  '2015-04-08 07:56:00', now()),
(2, 'Aspire', 2, 'The New Ford Aspire is here to set you apart from others.', 4000, 'Diesel', 3457, 7, 'fa.jpg', 'fb.jpg', 'fc.jpg', 'fd.jpg', '', 1, 1, 1, 1,  '2014-06-06 21:08:09', now()),
(3, 'GT-R', 3, 'Made for those who don’t believe in following others, but making their own way', 1000, 'CNG', 23465, 5, 'na.png', 'nb.jpg', 'nc.jpg', 'nd.png', '', 1, 1, 1, 1, now(), now()),
(4, 'Go', 4, 'We ensure long lasting, straight forward and effortless design. Desgined to GO, Driven to GO!', 900, 'Petrol', 3453, 6, 'da.jpg', 'db.jpg', 'dc.png', 'dd.png', '',  1, 1, 1, 1, now(),now());


DELIMITER //
CREATE TRIGGER check_cap BEFORE INSERT ON tblvehicles
FOR EACH ROW 
BEGIN
IF new.SeatingCapacity < 0
THEN 
 SET
NEW.SeatingCapacity=0;
END IF;
END;//
DELIMITER ;

ALTER TABLE admin
 ADD PRIMARY KEY (id);
 
ALTER TABLE tblbooking
 ADD PRIMARY KEY (id);
 
 ALTER TABLE tblbrands
 ADD PRIMARY KEY (id);
 
 ALTER TABLE tblcontactusinfo
 ADD PRIMARY KEY (id);
 
 
ALTER TABLE tblusers
 ADD PRIMARY KEY (id);
 
ALTER TABLE tblvehicles
 ADD PRIMARY KEY (id);
 

ALTER TABLE admin
MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;

ALTER TABLE tblbooking
MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;

ALTER TABLE tblbrands
MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;

ALTER TABLE tblcontactusinfo
MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;


ALTER TABLE tblusers
MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;

ALTER TABLE tblvehicles
MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
 
 