-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 17, 2023 at 07:49 AM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fadatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE IF NOT EXISTS `tbladmin` (
  `adminID` varchar(8) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `gender` enum('Female','Male') NOT NULL,
  `name` varchar(255) NOT NULL,
  `telNo` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`adminID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`adminID`, `pwd`, `gender`, `name`, `telNo`, `email`) VALUES
('AD2648', 'fd486266142a8eb56cbb524872c2feaaab450d8d', 'Male', 'Adzim Adil', '012-2908371', 'adzim@gmail.com'),
('AR5742', 'fd486266142a8eb56cbb524872c2feaaab450d8d', 'Male', 'Ariffin Azam', '016-9698636', 'ariffin@gmail.com'),
('JS1575', 'fd486266142a8eb56cbb524872c2feaaab450d8d', 'Male', 'Jerenjit Singh', '019-2158614', 'jerenjit@gmail.com'),
('JX5529', 'fd486266142a8eb56cbb524872c2feaaab450d8d', 'Male', 'Lim Jin Xian', '012-5805580', 'jinxian@gmail.com'),
('IA0930', 'fd486266142a8eb56cbb524872c2feaaab450d8d', 'Female', 'Izzah Amirah', '011-17737732', 'amirah@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tblbank`
--

CREATE TABLE IF NOT EXISTS `tblbank` (
  `fbID` varchar(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telNo` varchar(15) NOT NULL,
  `QOH` int(3) NOT NULL,
  `openHour` time NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fbID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbank`
--

INSERT INTO `tblbank` (`fbID`, `name`, `address`, `email`, `telNo`, `QOH`, `openHour`, `image`) VALUES
('FB001', 'Food Aid HQ @ Sunway Geo', 'LG Level, Jalan Lagoon Selatan, Bandar Sunway', 'foodaid@gmail.com', '011-1722 6697', 21, '08:30:00', 'image/cb97e51c24ac98fae34b4615a26257ea.jpg'),
('FB002', 'Food Aid @ PJS 11', '27, JALAN PJS 11/22', 'foodaid@gmail.com', '03-1234 9481', 15, '08:30:00', 'image/af35b02e8c846370e74104650e592826.png'),
('FB003', 'Food Aid Centre @ USJ 10', '40, Jalan USJ 10/1B, Taipan', 'foodaid@gmail.com', '03-5632 9481', 13, '08:30:00', 'image/f778e03277965ab69e989139ec77981a.png'),
('FB004', 'Food Aid Centre @ SS15', 'Lot 17, Jalan SS 15/4G, SS15,', 'foodaid@gmail.com', '03-5612 6335', 10, '08:30:00', 'image/80463b5d61b6ca70347445f82649acb3.png'),
('FB017', 'Shell USJ1', '1, 29, Jalan USJ 1/29, USJ 1', '-', '03-5636 8091', 5, '00:00:00', 'image/c5ad967056e98f1cd087907094a6b461.jpg'),
('FB111', 'Big Pharmacy Sunway Metro', '18G, Jalan PJS 11/28, PJS 11		    		    		    		    		    		    ', 'bigpharmacySM@gmail', '016-365 0783', 7, '09:00:00', 'image/2c366f41df3c2af86f2e5a21133ccc27.jpg'),
('FB213', '99 Speedmart Grand Subang SS13', 'G-02, Ground Floor, Jalan SS 13/3, SS 13', '-', '03-3362 6863', 0, '10:00:00', 'image/0450f82057e31a58ad2a30c04cd70160.jpg'),
('FB421', '99 Speedmart PJS 11', '65, Ground Floor, Jalan PJS 11/9, Bandar Sunway', '-', '03-3362 6863', 8, '10:00:00', 'image/3df6e894ebce4ce262eee4809684bcc1.png'),
('FB432', 'Big Pharmacy Sunway Mentari', 'No. 32A, Dataran Mentari, 1, Jalan PJS 8/6, Bandar Sunway', '-', '012-336 5081', 5, '10:00:00', 'image/43a066a52f204e703b9d36148a089bd9.jpg'),
('FB437', 'BIG Pharmacy SS15', 'No C5, G & 1st Floor, Jalan SS 15/4D\r\n		    ', 'bigpharmacySS15@yahoo', '012-537 3979', 3, '09:30:00', 'image/0a2a12634df44690a0c5979fd614c18e.jpg'),
('FB784', 'BMS Organics Taipan', '26, Jalan USJ 10/1E, Taipan Business Centre', '-', '010-400 0395', 5, '10:00:00', 'image/b50e4c250d15de150d758ff533dfb9fe.png'),
('FB901', 'BMS Organic @ Empire Shopping Gallery', 'Lg-18, Empire Shopping Gallery, Jalan SS 16/1, SS 16		    ', 'customerservice@bmsorganics.com', '010-400 0216', 3, '00:00:00', 'image/f0feab7057088c329445b2a6f9f415b6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblcash`
--

CREATE TABLE IF NOT EXISTS `tblcash` (
  `transID` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `telNo` varchar(15) NOT NULL,
  `type` enum('TnG eWallet','Credit/Debit Card','Online Banking') NOT NULL,
  `amount` decimal(9,2) NOT NULL,
  PRIMARY KEY (`transID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tblcash`
--

INSERT INTO `tblcash` (`transID`, `name`, `telNo`, `type`, `amount`) VALUES
(1, 'Willy Wong', '012-345678', 'Credit/Debit Card', '100.00'),
(4, 'Timothy', '012-2341210', 'TnG eWallet', '27.00'),
(5, 'Ariffin ', '019-2138593', 'TnG eWallet', '70.00'),
(6, 'Aimy ', '018-3123980', 'Online Banking', '55.00'),
(7, 'Aliah', '011-17747731', 'Online Banking', '30.00'),
(8, 'Lionel', '017-321230', 'Credit/Debit Card', '22.00'),
(9, 'Xin Hui', '013-1234654', 'Credit/Debit Card', '30.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbldonation`
--

CREATE TABLE IF NOT EXISTS `tbldonation` (
  `requestID` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phoneNum` varchar(15) NOT NULL,
  `pickDate` date NOT NULL,
  `pickTime` time NOT NULL,
  `address` varchar(50) NOT NULL,
  `totalItems` int(10) NOT NULL,
  `status` enum('Verifying','Completed','Rejected','Pending') NOT NULL DEFAULT 'Verifying',
  PRIMARY KEY (`requestID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `tbldonation`
--

INSERT INTO `tbldonation` (`requestID`, `name`, `phoneNum`, `pickDate`, `pickTime`, `address`, `totalItems`, `status`) VALUES
(2, 'Adzim Adil', '0122908371', '2023-07-27', '10:20:00', '31, Jalan USJ 17/16, USJ 17', 1, 'Pending'),
(5, 'Ariffin Azam', '0169698638', '2023-07-24', '10:30:00', '5, Jalan Lagoon Selatan, Bandar Sunway', 1, 'Pending'),
(10, 'Cheong Tho', '0198765431', '2023-08-15', '00:00:00', '29C, Jln Petaling Utama 7, PJS 11, Petaling Jaya', 1, 'Verifying'),
(11, 'Qian Ru', '011-1231231', '2023-08-31', '12:30:00', 'A532, Jln Batu 3 1/4, USJ 10', 2, 'Verifying'),
(12, 'Maizatul ', '012-1212345', '2023-08-22', '10:30:00', '62, Jln Gasing 7, PJS 5', 1, 'Verifying'),
(19, 'Lee Jia Yi', '014-9210301', '2023-08-21', '13:00:00', ' 10, Jalan 51A/223, USJ 7', 2, 'Verifying'),
(20, 'Carlos Chai', '015-2313231', '2023-09-01', '09:30:00', '40-F-5, Jalan USJ 10/1E, USJ 10', 1, 'Verifying'),
(21, 'Jonathan', '012-4829311', '2023-07-30', '09:30:00', '141, Jalan SS 17/1A, SS 18', 2, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE IF NOT EXISTS `tbluser` (
  `userID` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`userID`, `email`, `pwd`) VALUES
('AD2648', 'adzim@gmail.com', 'fd486266142a8eb56cbb524872c2feaaab450d8d'),
('AR5742', 'ariffin@gmail.com', 'fd486266142a8eb56cbb524872c2feaaab450d8d'),
('JS1575', 'jerenjit@gmail.com', 'fd486266142a8eb56cbb524872c2feaaab450d8d'),
('JX5529', 'jinxian@gmail.com', 'fd486266142a8eb56cbb524872c2feaaab450d8d');

-- --------------------------------------------------------

--
-- Table structure for table `tblvolunteer`
--

CREATE TABLE IF NOT EXISTS `tblvolunteer` (
  `volunteerID` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telNo` varchar(15) NOT NULL,
  `location` varchar(100) NOT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL,
  `age` int(3) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `status` enum('Verifying','Completed','Rejected','Pending') NOT NULL DEFAULT 'Verifying',
  PRIMARY KEY (`volunteerID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `tblvolunteer`
--

INSERT INTO `tblvolunteer` (`volunteerID`, `name`, `email`, `telNo`, `location`, `time`, `date`, `age`, `gender`, `status`) VALUES
(1, 'Roshan', 'roshan@gmail.com', '-', 'Food Aid Centre @ USJ 10', '17:00:00', '2023-07-30', 19, 'Male', 'Pending'),
(4, 'Willy Wong', 'willy@gmail.com', '-', 'Food Aid HQ @ Sunway Geo', '10:30:00', '2023-08-24', 19, 'Male', 'Pending'),
(5, 'Timothy ', 'timothy@gmail.com', '-', 'Food Aid HQ @ Sunway Geo', '10:00:00', '2023-08-22', 19, 'Male', 'Verifying'),
(6, 'Woon Xian Jeng', 'woonxj@yahoo.com', '012-3910121', 'Food Aid Centre @ USJ10', '09:00:00', '2023-08-30', 21, 'Male', 'Verifying'),
(7, 'Jane Hong', 'hongj@gmail.com', '016-3001493', 'Food Aid Centre @ PJS 11', '09:00:00', '2023-08-20', 21, 'Female', 'Pending'),
(8, 'John Yao', 'yaoj@yahoo.com', '017-109 8977 ', 'Food Aid Centre @ PJS 11', '09:00:00', '2023-08-28', 20, 'Male', 'Verifying'),
(9, 'Amelia Sabrina', 'sabby@gmail.com', '012-1231231', 'Food Aid HQ @ Sunway Geo', '09:00:00', '2023-08-29', 20, 'Female', 'Pending'),
(10, 'Sabrina Ali', 'sabrina@yahoo.com', '012-3452311', 'Food Aid HQ @ Sunway Geo', '09:00:00', '2023-08-31', 21, 'Female', 'Pending'),
(11, 'Kim Chi', 'yummykimchi@gmail.com', '018-1231231', 'Food Aid Centre @ SS15', '10:00:00', '2023-08-28', 19, 'Female', 'Verifying');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
