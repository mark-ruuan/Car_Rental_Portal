SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*--Admin Table Structure
--
--*/

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', MD5('admin'), now());


/*--Bookings Table Structure
--
--*/

CREATE TABLE IF NOT EXISTS `tblbooking` (
`id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(1, 'user1@gmail.com', 2, '06/06/2018', '06/07/2018', 'Give me', 1, now()),
(2, 'user2@gmail.com', 3, '01/01/2015', '02/08/2015', 'Give me for some days', 2, now()),
(3, 'user3@gmail.com', 4, '12/01/2017', '07/02/2017', 'Hi! Ineed it ', 0, now()),
(4, 'user4@gmail.com', 1, '16/10/2018', '12/11/2018', 'Please provide the service to me', 0, now()),
(5, 'user5@gmail.com', 6, '12/12/2017', '12/01/2018', 'I want to hire this taxi for few days', 1, now());


/*--Brand Table STRUCTURE--
--*/

CREATE TABLE IF NOT EXISTS `tblbrands` (
`id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
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

CREATE TABLE IF NOT EXISTS `tblcontactusinfo` (
`id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;



INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Phase-3, Sec 43-A, Chandigarh-160043', 'help@encar.com', '9876543210');

-- --------------------------------------------------------
/*--Pages table structure
--
--*/

CREATE TABLE IF NOT EXISTS `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;


/*INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG> Welcome to Zencar.com (and related sub-domains (the Website). By using the Website, you are indicating your agreement to these Terms and Conditions of Use (Terms of Use), including, without limitation, our privacy policy and our Zencar Code of Conduct. If you do not agree to these Terms of Use, please do not use the Website and exit now. </FONT></P>'),
(2, 'Privacy Policy', 'privacy', '<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">Zencar is committed for ensuring that to protect the privacy of it`s customers. Zencar shall ask you to provide certain information by which you can be identified when using this website, then you can be assured that it will only be used in accordance with this privacy statement.</span>'),
(3, 'About Us ', 'aboutus', '<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">No more worries about petrol mileage, insurance, and car breakdowns! Zencar has enabled driving convenience for travellers around the country and is fast expanding its reach to cities including Ahmedabad, Bangalore, Chandigarh, Chennai, Coimbatore, Delhi-NCR, Hyderabad, Jaipur, Kochi, Kolkata, Ludhiana, Mangalore, Mumbai, Mysore, Pune, Siliguri, Vizag, Nagpur, Udaipur, Vijayawada, Surat, Lucknow and Guwahati. Self drive cars from Zencar have given customers more control, privacy, and freedom. Book a self drive car in any city you visit with the Zencar app on your phone and feel at home wherever you go.  </span>'),
(11, 'FAQs','faqs', '<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">Q. What type of driver's license is required?Zencar requires a valid Indian driver's license. It's critical that the license is an original. The License must be for a light motor vehicle (car). Members do NOT need a specific cab license that is associated with a yellow board plate.</span>');

*/


/*--Users Table Structure
--
--*/

CREATE TABLE IF NOT EXISTS `tblusers` (
`id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'Alok Nath', 'user1@outlook.com', MD5('alok123'), '7654567897', '21/04/1990', 'Hyderabad', 'Hyderabad', 'India', '2015-03-27 09:51:00', now()),
(2, 'B J Sinha', 'bjsinha@yahoo.com', MD5('bj123'), '9806543245', NULL, NULL, NULL, NULL, '2014-01-30 03:45:46', now()),
(3, 'Kishor Kumar', 'kk4356@gmail.com', MD5('kishor123'), '7645327640', '03/02/1990', 'New Delhi', 'New Delhi', 'New Delhi', '2018-01-11 09:32:33', now()),
(4, 'Sourav Sharma', 'souravsharmalive@gmail.com', MD5('sourav123'), '4563278907', '04/04/1998', 'Chennai', 'Chennai', 'India', '2013-16-16 20:03:36', now()),
(5, 'Aron Ramsey', 'imramsey@outlook.com', MD5('aron123'), '9321212121', '08/08/1990' , 'Washington', 'Washington', 'USA', '2010-01-02 18:19:08', now());


/*--Vehicles table Structure
--
--*/

CREATE TABLE IF NOT EXISTS `tblvehicles` (
`id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'Wrangler', 1, 'The future is here', 300, 'Petrol', 3453, 4, 'ja.jpg', 'jb.jpg', 'jc.jpg', 'jd.jpg', '', 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, '2015-04-08 07:56:00', now()),
(2, 'Aspire', 2, 'The New Ford Aspire is here to set you apart from others.', 4000, 'Diesel', 3457, 7, 'fa.jpg', 'fb.jpg', 'fc.jpg', 'fd.jpg', '', 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, '2014-06-06 21:08:09', now()),
(3, 'GT-R', 3, 'Made for those who don’t believe in following others, but making their own way', 1000, 'CNG', 23465, 5, 'na.png', 'nb.jpg', 'nc.jpg', 'nd.png', '', 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, now(), now()),
(4, 'Go', 4, 'We ensure long lasting, straight forward and effortless design. Desgined to GO, Driven to GO!', 900, 'Petrol', 3453, 6, 'da.jpg', 'db.jpg', 'dc.png', 'dd.png', '', 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, now(),now());





ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);
 
ALTER TABLE `tblbooking`
 ADD PRIMARY KEY (`id`);
 
 ALTER TABLE `tblbrands`
 ADD PRIMARY KEY (`id`);
 
 ALTER TABLE `tblcontactusinfo`
 ADD PRIMARY KEY (`id`);
 
ALTER TABLE `tblpages`
 ADD PRIMARY KEY (`id`);
 
ALTER TABLE `tblusers`
 ADD PRIMARY KEY (`id`);
 
ALTER TABLE `tblvehicles`
 ADD PRIMARY KEY (`id`);
 
 
ALTER TABLE `admin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;

ALTER TABLE `tblbooking`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;

ALTER TABLE `tblbrands`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;

ALTER TABLE `tblcontactusinfo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;

ALTER TABLE `tblpages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;

ALTER TABLE `tblusers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;

ALTER TABLE `tblvehicles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
 
 