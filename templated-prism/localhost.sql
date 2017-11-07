-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 20, 2016 at 08:47 PM
-- Server version: 5.5.43-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Gate_Software`
--

-- --------------------------------------------------------

--
-- Table structure for table `DayPass`
--

CREATE TABLE IF NOT EXISTS `DayPass` (
  `daypass_id` int(255) NOT NULL,
  `login_id` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Reason` varchar(255) NOT NULL,
  `ApprovedBy` varchar(255) NOT NULL,
  `Approved` int(1) NOT NULL,
  `Comment` varchar(255) NOT NULL,
  PRIMARY KEY (`daypass_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DayPass`
--

INSERT INTO `DayPass` (`daypass_id`, `login_id`, `Date`, `Phone`, `Address`, `Reason`, `ApprovedBy`, `Approved`, `Comment`) VALUES
(1, '2012B3A7371G', '2016-03-08', '9831415659', 'Madgaon', 'Dentist', 'J V Rao', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `DayPassTableGate`
--

CREATE TABLE IF NOT EXISTS `DayPassTableGate` (
  `daypass_id` varchar(100) NOT NULL,
  `ID` varchar(12) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `DayPassDate` date DEFAULT NULL,
  `DayPassApproved` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`daypass_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DayPassTableGate`
--

INSERT INTO `DayPassTableGate` (`daypass_id`, `ID`, `Name`, `DayPassDate`, `DayPassApproved`) VALUES
('1', '2012B3A7371G', 'Abhishek Mohta', '2016-03-08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `InOutDetails`
--

CREATE TABLE IF NOT EXISTS `InOutDetails` (
  `ID` varchar(12) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Hostel` varchar(3) DEFAULT NULL,
  `Room` varchar(3) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Place` varchar(20) DEFAULT NULL,
  `OutDate` date DEFAULT NULL,
  `OutTime` time DEFAULT NULL,
  `InDate` date DEFAULT NULL,
  `InTime` time DEFAULT NULL,
  `OnCampus` tinyint(1) DEFAULT NULL,
  `exit_id` int(11) NOT NULL AUTO_INCREMENT,
  `OnLeave` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`exit_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `InOutDetails`
--

INSERT INTO `InOutDetails` (`ID`, `Name`, `Hostel`, `Room`, `Phone`, `Place`, `OutDate`, `OutTime`, `InDate`, `InTime`, `OnCampus`, `exit_id`, `OnLeave`) VALUES
('2012B3A7506G', 'Avidipto Chakraborty', 'CH1', '367', '9637154667', '', '2016-02-08', '17:32:48', '2016-02-08', '17:53:28', 1, 1, 0),
('2012B3A7506G', 'Avidipto Chakraborty', 'CH1', '367', '9637154667', '', '2016-02-08', '17:55:58', '2016-02-08', '17:56:20', 1, 2, 0),
('2012B3A7506G', 'Avidipto Chakraborty', 'CH1', '367', '9637154667', '', '2016-02-13', '09:29:57', '2016-02-13', '09:30:24', 1, 3, 0),
('2012B3A7371G', 'Abhishek Mohta', 'CH1', '366', '9831415659', '', '2016-02-13', '10:13:12', '2016-03-08', '13:15:17', 1, 4, 0),
('2012B3A7506G', 'Avidipto Chakraborty', 'CH1', '367', '9637154667', '', '2016-03-08', '13:08:39', '2016-03-08', '13:08:46', 1, 5, 0),
('2012B3A7506G', 'Avidipto Chakraborty', 'CH1', '367', '9637154667', '', '2016-03-08', '13:12:14', '2016-03-08', '13:15:02', 1, 6, 0),
('2012B3A7371G', 'Abhishek Mohta', 'CH1', '366', '9831415659', '', '2016-03-08', '14:55:15', '2016-03-08', '14:55:48', 1, 8, 1),
('2012B3A7506G', 'Avidipto Chakraborty', 'CH1', '367', '9637154667', '', '2016-03-08', '15:31:51', '2016-03-08', '15:32:10', 1, 9, 0),
('2012B3A7371G', 'Abhishek Mohta', 'CH1', '366', '9831415659', '', '2016-03-08', '15:32:47', '2016-03-08', '15:33:27', 1, 10, 1),
('2012B3A7371G', 'Abhishek Mohta', 'CH1', '366', '9831415659', '', '2016-03-08', '15:40:55', '2016-03-08', '15:46:51', 1, 12, 0),
('2012B3A7371G', 'Abhishek Mohta', 'CH1', '366', '9831415659', '', '2016-03-08', '15:46:55', '2016-03-08', '15:47:02', 1, 14, 0),
('2012B3A7371G', 'Abhishek Mohta', 'CH1', '366', '9831415659', '', '2016-03-08', '15:47:04', '2016-03-08', '15:47:08', 1, 15, 1),
('2012B3A7371G', 'Abhishek Mohta', 'CH1', '366', '9831415659', '', '2016-03-08', '15:56:16', '2016-03-08', '16:11:17', 1, 16, 0),
('2012B3A7506G', 'Avidipto Chakraborty', 'CH1', '367', '9637154667', '', '2016-03-08', '16:11:29', '2016-03-08', '16:12:13', 1, 17, 0),
('2012B3A7371G', 'Abhishek Mohta', 'CH1', '366', '9831415659', '', '2016-03-08', '16:11:43', '2016-03-08', '16:12:27', 1, 18, 0),
('2012B3A7371G', 'Abhishek Mohta', 'CH1', '366', '9831415659', '', '2016-03-08', '16:21:21', '2016-03-08', '16:26:07', 1, 19, 1),
('2012B3A7371G', 'Abhishek Mohta', 'CH1', '366', '9831415659', '', '2016-03-08', '16:26:11', '2016-03-08', '16:27:13', 1, 20, 0),
('2012B3A7371G', 'Abhishek Mohta', 'CH1', '366', '9831415659', '', '2016-03-08', '16:27:15', '2016-03-08', '16:27:33', 1, 21, 0),
('2012B3A7371G', 'Abhishek Mohta', 'CH1', '366', '9831415659', '', '2016-03-08', '16:27:35', '2016-03-08', '16:28:04', 1, 22, 0),
('2012B3A7371G', 'Abhishek Mohta', 'CH1', '366', '9831415659', 'Madgaon', '2016-03-08', '16:28:06', '2016-03-08', '16:28:18', 1, 23, 0),
('2012B3A7371G', 'Abhishek Mohta', 'CH1', '366', '9831415659', 'Mangalore', '2016-03-08', '16:28:20', '2016-03-08', '16:30:03', 1, 24, 1),
('2012B3A7371G', 'Abhishek Mohta', 'CH1', '366', '9831415659', '', '2016-03-08', '16:30:07', '2016-03-08', '16:30:48', 1, 25, 0),
('2012B3A7371G', 'Abhishek Mohta', 'CH1', '366', '9831415659', 'Vasco', '2016-03-08', '16:30:51', '2016-03-08', '16:31:01', 1, 26, 0),
('2012B3A7371G', 'Abhishek Mohta', 'CH1', '366', '9831415659', 'Vasco', '2016-03-08', '16:31:23', '2016-03-08', '16:33:48', 1, 27, 0),
('2012B3A7371G', 'Abhishek Mohta', 'CH1', '366', '9831415659', 'Mangalore', '2016-03-08', '16:33:54', '2016-03-08', '16:45:06', 1, 28, 1),
('2012B3A7371G', 'Abhishek Mohta', 'CH1', '366', '9831415659', 'Mangalore', '2016-03-08', '16:45:10', '2016-03-08', '17:03:59', 1, 29, 1),
('2012B3A7506G', 'Avidipto Chakraborty', 'CH1', '367', '9637154667', '', '2016-03-08', '17:03:31', '0000-00-00', '00:00:00', 0, 30, 0),
('2012B3A7371G', 'Abhishek Mohta', 'CH1', '366', '9831415659', 'Madgaon', '2016-03-08', '17:04:01', '2016-03-08', '17:04:16', 1, 31, 0),
('2012B3A7371G', 'Abhishek Mohta', 'CH1', '366', '9831415659', 'Mangalore', '2016-03-08', '17:04:18', '2016-03-08', '17:04:54', 1, 32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `LeaveTable`
--

CREATE TABLE IF NOT EXISTS `LeaveTable` (
  `leave_id` int(255) NOT NULL,
  `login_id` varchar(255) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Reason` varchar(255) NOT NULL,
  `ConsentType` varchar(255) NOT NULL,
  `ApprovedBy` varchar(255) NOT NULL,
  `Approved` int(1) NOT NULL,
  `Comment` varchar(255) NOT NULL,
  PRIMARY KEY (`leave_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LeaveTable`
--

INSERT INTO `LeaveTable` (`leave_id`, `login_id`, `StartDate`, `EndDate`, `Phone`, `Address`, `Reason`, `ConsentType`, `ApprovedBy`, `Approved`, `Comment`) VALUES
(1, '2012B3A7371G', '2016-03-08', '2016-03-09', '9831415659', 'Mangalore', 'Love', 'Mail', 'J V Rao', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `LeaveTableGate`
--

CREATE TABLE IF NOT EXISTS `LeaveTableGate` (
  `leave_id` varchar(100) NOT NULL,
  `ID` varchar(12) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `LeaveStart` date DEFAULT NULL,
  `LeaveEnd` date DEFAULT NULL,
  `LeaveApproved` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`leave_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LeaveTableGate`
--

INSERT INTO `LeaveTableGate` (`leave_id`, `ID`, `Name`, `LeaveStart`, `LeaveEnd`, `LeaveApproved`) VALUES
('1', '2012B3A7371G', 'Abhishek Mohta', '2016-03-08', '2016-03-09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `StudentMaster`
--

CREATE TABLE IF NOT EXISTS `StudentMaster` (
  `loginID` varchar(8) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Hostel` varchar(3) NOT NULL,
  `Room` varchar(3) NOT NULL,
  `ID` varchar(12) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `FatherName` varchar(100) DEFAULT NULL,
  `FatherNumber` varchar(10) DEFAULT NULL,
  `FatherEmail` varchar(100) DEFAULT NULL,
  `AdmitDate` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `StudentMaster`
--

INSERT INTO `StudentMaster` (`loginID`, `Name`, `Hostel`, `Room`, `ID`, `Phone`, `Email`, `Address`, `FatherName`, `FatherNumber`, `FatherEmail`, `AdmitDate`) VALUES
('f2012371', 'Abhishek Mohta', 'CH1', '366', '2012B3A7371G', '9831415659', 'f2012371@goa.bits-pilani.ac.in', '19 Dover Place, Kolkata - 19', 'S K Mohta', '9830049479', 'skmohta@gmail.com', '2012-08-01'),
('f2012506', 'Avidipto Chakraborty', 'CH1', '367', '2012B3A7506G', '9637154667', 'f2012506@goa.bits-pilani.ac.in', 'Nicco Park, Kolkata', 'S K Chakraborty', '9831212345', 'skchakra@gmail.com', '2012-08-01');
--
-- Database: `emotherearth`
--
--
-- Database: `employee`
--

-- --------------------------------------------------------

--
-- Table structure for table `Personal`
--

CREATE TABLE IF NOT EXISTS `Personal` (
  `name` varchar(10) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=23 ;

--
-- Dumping data for table `pma_column_info`
--

INSERT INTO `pma_column_info` (`id`, `db_name`, `table_name`, `column_name`, `comment`, `mimetype`, `transformation`, `transformation_options`) VALUES
(1, 'Gate_Software', 'InOutDetails', 'ID', '', '', '_', ''),
(2, 'Gate_Software', 'LeaveTable', 'leave_id', '', '', '_', ''),
(3, 'Gate_Software', 'LeaveTable', 'login_id', '', '', '_', ''),
(4, 'Gate_Software', 'LeaveTable', 'StartDate', '', '', '_', ''),
(5, 'Gate_Software', 'LeaveTable', 'EndDate', '', '', '_', ''),
(6, 'Gate_Software', 'LeaveTable', 'Phone', '', '', '_', ''),
(7, 'Gate_Software', 'LeaveTable', 'Address', '', '', '_', ''),
(8, 'Gate_Software', 'LeaveTable', 'Reason', '', '', '_', ''),
(9, 'Gate_Software', 'LeaveTable', 'ConsentType', '', '', '_', ''),
(10, 'Gate_Software', 'LeaveTable', 'ApprovedBy', '', '', '_', ''),
(11, 'Gate_Software', 'LeaveTable', 'Approved', '', '', '_', ''),
(12, 'Gate_Software', 'LeaveTable', 'Comment', '', '', '_', ''),
(13, 'Gate_Software', 'DayPass', 'daypass_id', '', '', '_', ''),
(14, 'Gate_Software', 'DayPass', 'login_id', '', '', '_', ''),
(15, 'Gate_Software', 'DayPass', 'Date', '', '', '_', ''),
(16, 'Gate_Software', 'DayPass', 'Phone', '', '', '_', ''),
(17, 'Gate_Software', 'DayPass', 'Address', '', '', '_', ''),
(18, 'Gate_Software', 'DayPass', 'Reason', '', '', '_', ''),
(19, 'Gate_Software', 'DayPass', 'ApprovedBy', '', '', '_', ''),
(20, 'Gate_Software', 'DayPass', 'Approved', '', '', '_', ''),
(21, 'Gate_Software', 'DayPass', 'Comment', '', '', '_', ''),
(22, 'Gate_Software', 'InOutDetails', 'OnLeave', '', '', '_', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"Gate_Software","table":"InOutDetails"},{"db":"Gate_Software","table":"LeaveTable"},{"db":"Gate_Software","table":"StudentMaster"},{"db":"Gate_Software","table":"LeaveTableGate"},{"db":"Gate_Software","table":"DayPassTableGate"},{"db":"Gate_Software","table":"DayPass"},{"db":"Gate_Software","table":"JoinLeave"},{"db":"project","table":"StudentDetails"},{"db":"project","table":"LeaveTable"},{"db":"project","table":"DayPassTable"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma_table_uiprefs`
--

INSERT INTO `pma_table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'Gate_Software', 'InOutDetails', '{"sorted_col":"`InOutDetails`.`exit_id` ASC","CREATE_TIME":"2016-03-08 14:35:26","col_visib":["1","1","1","1","1","1","1","1","1","1","1","1","1"],"col_order":["11","0","1","2","3","4","5","6","7","8","9","10","12"]}', '2016-03-08 09:05:53');

-- --------------------------------------------------------

--
-- Table structure for table `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';
--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `DayPassTable`
--

CREATE TABLE IF NOT EXISTS `DayPassTable` (
  `ID` varchar(12) DEFAULT NULL,
  `DayPassDate` date DEFAULT NULL,
  `DayPassApproved` int(11) DEFAULT NULL,
  KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `LeaveTable`
--

CREATE TABLE IF NOT EXISTS `LeaveTable` (
  `ID` varchar(12) DEFAULT NULL,
  `LeaveStart` date DEFAULT NULL,
  `LeaveEnd` date DEFAULT NULL,
  `LeaveApproved` int(11) DEFAULT NULL,
  KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `StudentDetails`
--

CREATE TABLE IF NOT EXISTS `StudentDetails` (
  `ID` varchar(12) NOT NULL DEFAULT '',
  `Name` char(255) DEFAULT NULL,
  `MobileNo` varchar(10) DEFAULT NULL,
  `Hostel` varchar(3) DEFAULT NULL,
  `RoomNo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `StudentDetails`
--

INSERT INTO `StudentDetails` (`ID`, `Name`, `MobileNo`, `Hostel`, `RoomNo`) VALUES
('2012A7PS119G', 'Anirudh Nigania', '9831111111', 'CH1', '360'),
('2012B3A7371G', 'Abhishek Mohta', '9831415659', 'CH1', '366'),
('2012B3A7506G', 'Avidipto Chakraborty', '9637154667', 'CH1', '365');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `DayPassTable`
--
ALTER TABLE `DayPassTable`
  ADD CONSTRAINT `DayPassTable_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `StudentDetails` (`ID`);

--
-- Constraints for table `LeaveTable`
--
ALTER TABLE `LeaveTable`
  ADD CONSTRAINT `LeaveTable_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `StudentDetails` (`ID`);
--
-- Database: `reminder`
--

-- --------------------------------------------------------

--
-- Table structure for table `checking`
--

CREATE TABLE IF NOT EXISTS `checking` (
  `check_id` int(11) NOT NULL,
  `tick` int(11) DEFAULT NULL,
  PRIMARY KEY (`check_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checking`
--

INSERT INTO `checking` (`check_id`, `tick`) VALUES
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 0),
(10, 1),
(11, 1),
(12, 0),
(13, 0),
(14, 0),
(20, 0),
(22, 0),
(23, 0);

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE IF NOT EXISTS `data` (
  `id` int(11) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `info` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `date`, `info`) VALUES
(1, '2014-04-30', 'xyz'),
(2, '2014-05-09', 'hghg'),
(3, '2014-06-08', 'kkkk'),
(4, '2014-01-08', '2'),
(5, '2014-07-09', 'itit'),
(6, '2012-05-09', 'ram'),
(7, '2013-05-09', 'hahs'),
(8, '2015-12-23', 'jkjk'),
(10, '2014-01-08', 'ram'),
(11, '2012-03-20', 'abcd'),
(12, '2014-12-01', 'haha'),
(13, '2014-12-01', 'haha'),
(14, '2012-12-01', 'HAHAPL'),
(20, '2013-12-01', 'asa'),
(22, '2013-12-01', 'dd'),
(23, '2013-12-01', 'hdh');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `checking`
--
ALTER TABLE `checking`
  ADD CONSTRAINT `checking_ibfk_1` FOREIGN KEY (`check_id`) REFERENCES `data` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
