-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 21, 2022 at 05:24 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bestpusims`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(50000) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `name`, `description`) VALUES
(1, 'BCA', 'Bachelor of Computer Applications'),
(2, 'diploma', 'cs');

-- --------------------------------------------------------

--
-- Table structure for table `course_subject`
--

CREATE TABLE IF NOT EXISTS `course_subject` (
  `cs_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `sem` varchar(50) NOT NULL,
  PRIMARY KEY (`cs_id`),
  KEY `course_id` (`course_id`),
  KEY `subject_id` (`subject_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `course_subject`
--

INSERT INTO `course_subject` (`cs_id`, `course_id`, `subject_id`, `sem`) VALUES
(1, 1, 1, '1'),
(2, 1, 2, '1'),
(3, 1, 3, '1'),
(4, 1, 4, '1'),
(5, 1, 5, '1'),
(6, 1, 6, '1'),
(7, 1, 7, '1'),
(8, 1, 8, '1');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE IF NOT EXISTS `exam` (
  `exam_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `exam_type` varchar(200) NOT NULL,
  `course_id` int(11) NOT NULL,
  `sem` varchar(100) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`exam_id`),
  KEY `course_id` (`course_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_id`, `name`, `exam_type`, `course_id`, `sem`, `description`) VALUES
(1, '1st IA', 'Monthly', 1, '1', '1st internals'),
(2, 'IC', 'Monthly', 1, '1', ''),
(3, 'pavitra', 'Monthly', 1, '2', '');

-- --------------------------------------------------------

--
-- Table structure for table `exam_subject`
--

CREATE TABLE IF NOT EXISTS `exam_subject` (
  `es_id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `sem` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `min_marks` float NOT NULL,
  `max_marks` float NOT NULL,
  PRIMARY KEY (`es_id`),
  KEY `exam_id` (`exam_id`),
  KEY `subject_id` (`subject_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `exam_subject`
--

INSERT INTO `exam_subject` (`es_id`, `exam_id`, `subject_id`, `course_id`, `sem`, `date`, `min_marks`, `max_marks`) VALUES
(1, 1, 1, 1, '1', '2019-04-08', 0, 0),
(2, 1, 2, 1, '1', '2019-04-09', 0, 0),
(3, 1, 3, 1, '1', '2019-04-10', 0, 0),
(4, 1, 4, 1, '1', '2019-04-11', 0, 0),
(5, 1, 5, 1, '1', '2019-04-12', 0, 0),
(6, 1, 6, 1, '1', '2019-04-13', 0, 0),
(7, 1, 7, 1, '1', '2019-04-14', 0, 0),
(8, 1, 8, 1, '1', '2019-04-15', 0, 0),
(9, 2, 1, 1, '1', '2019-04-12', 18, 50),
(10, 2, 2, 1, '1', '2019-04-12', 18, 50),
(11, 2, 3, 1, '1', '2019-04-12', 18, 50),
(12, 2, 4, 1, '1', '2019-04-12', 18, 50),
(13, 2, 5, 1, '1', '2019-04-12', 18, 50),
(14, 2, 6, 1, '1', '2019-04-12', 18, 50),
(15, 2, 7, 1, '1', '2019-04-12', 18, 50),
(16, 2, 8, 1, '1', '2019-04-12', 18, 50);

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE IF NOT EXISTS `fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stud_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` float NOT NULL,
  `mode_of_payment` varchar(50) DEFAULT NULL,
  `mode_no` varchar(50) DEFAULT NULL,
  `payment_type` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stud_id` (`stud_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `stud_id`, `date`, `amount`, `mode_of_payment`, `mode_no`, `payment_type`, `status`) VALUES
(1, 1, '2019-04-04', 5000, 'Cash', '', 'Capital Payment', 'Paid'),
(2, 1, '2021-08-01', 555, 'Cash', '', 'Capital Payment', 'Paid'),
(3, 1, '2021-08-04', 500, 'Cash', '', 'Capital Payment', 'Paid'),
(4, 1, '2022-07-17', 5000, 'Cash', '4', 'Deposit', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `staff_id` int(20) NOT NULL AUTO_INCREMENT,
  `staff_name` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `phno` bigint(20) NOT NULL,
  `jdate` date NOT NULL,
  `gender` varchar(20) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `staff`
--


-- --------------------------------------------------------

--
-- Table structure for table `staff_subject`
--

CREATE TABLE IF NOT EXISTS `staff_subject` (
  `staff_subject_id` int(30) NOT NULL AUTO_INCREMENT,
  `staff_id` int(30) NOT NULL,
  `subject_id` int(30) NOT NULL,
  `sem` varchar(30) NOT NULL,
  PRIMARY KEY (`staff_subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `staff_subject`
--


-- --------------------------------------------------------

--
-- Table structure for table `student_marks`
--

CREATE TABLE IF NOT EXISTS `student_marks` (
  `sm_id` int(11) NOT NULL AUTO_INCREMENT,
  `es_id` int(11) NOT NULL,
  `stud_id` int(11) NOT NULL,
  `marks` int(11) NOT NULL,
  PRIMARY KEY (`sm_id`),
  KEY `es_id` (`es_id`),
  KEY `stud_id` (`stud_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `student_marks`
--

INSERT INTO `student_marks` (`sm_id`, `es_id`, `stud_id`, `marks`) VALUES
(1, 1, 1, 33),
(2, 2, 1, 33),
(3, 9, 1, 40),
(4, 9, 1, 40),
(5, 1, 1, 45);

-- --------------------------------------------------------

--
-- Table structure for table `student_master`
--

CREATE TABLE IF NOT EXISTS `student_master` (
  `stud_id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `fathername` varchar(100) NOT NULL,
  `mothername` varchar(100) NOT NULL,
  `examregno` varchar(100) NOT NULL,
  `enroll` varchar(100) NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT 'Male',
  `p_address` varchar(250) DEFAULT NULL,
  `phone_no` varchar(25) NOT NULL,
  `c_address` varchar(250) DEFAULT NULL,
  `college` varchar(200) DEFAULT NULL,
  `mobile_no` varchar(25) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `sem` varchar(100) NOT NULL,
  `fees` float DEFAULT NULL,
  `library` enum('Yes','No') NOT NULL DEFAULT 'No',
  `status` enum('Active','Inactive','Pass') DEFAULT 'Active',
  `joining_date` date DEFAULT NULL,
  `photo_link` varchar(100) DEFAULT NULL,
  `passed_year` varchar(20) NOT NULL,
  PRIMARY KEY (`stud_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `student_master`
--

INSERT INTO `student_master` (`stud_id`, `fname`, `lname`, `fathername`, `mothername`, `examregno`, `enroll`, `dob`, `gender`, `p_address`, `phone_no`, `c_address`, `college`, `mobile_no`, `email`, `course_id`, `sem`, `fees`, `library`, `status`, `joining_date`, `photo_link`, `passed_year`) VALUES
(1, 'sameer', 'akhtar', 'anvar basha akhtar', 'abeda begum', '16U11093', '93', '1998-04-24', 'Male', 'dharwad', '9035707348', 'dharwad', 'BEST PU', '9035707348', 'akhtarsameer942@gmail.com', 1, '1', 14000, 'Yes', 'Active', '2019-04-04', 'default_Male.jpg', '2019 '),
(2, 'kishor', 'gouda', 'rudragouda', 'parvai', '18k10203', '102', '1991-12-11', 'Male', 'dharwad', '9036147484', 'dharwad', 'BEST PU', '9036147848', 'kishorgouda121@gmail.com', 1, '2', 10000, 'Yes', 'Active', '2022-07-17', 'default_Male.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_subject`
--

CREATE TABLE IF NOT EXISTS `student_subject` (
  `ss_id` int(11) NOT NULL AUTO_INCREMENT,
  `stud_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  PRIMARY KEY (`ss_id`),
  KEY `stud_id` (`stud_id`),
  KEY `subject_id` (`subject_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `student_subject`
--

INSERT INTO `student_subject` (`ss_id`, `stud_id`, `subject_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 6),
(6, 1, 7),
(7, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `stud_attendance`
--

CREATE TABLE IF NOT EXISTS `stud_attendance` (
  `sa_id` int(11) NOT NULL AUTO_INCREMENT,
  `stud_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `status` enum('P','A') DEFAULT 'P',
  `subject_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `sem` varchar(100) NOT NULL,
  PRIMARY KEY (`sa_id`),
  KEY `stud_id` (`stud_id`),
  KEY `subject_id` (`subject_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `stud_attendance`
--

INSERT INTO `stud_attendance` (`sa_id`, `stud_id`, `date`, `time`, `status`, `subject_id`, `course_id`, `sem`) VALUES
(1, 1, '2019-04-04', '10', 'P', 1, 1, '1'),
(2, 1, '2019-04-04', '11', 'P', 2, 1, '1'),
(3, 1, '2019-04-04', '12', 'A', 3, 1, '1'),
(4, 1, '2022-07-17', '10', 'P', 1, 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(50000) DEFAULT NULL,
  `no_of_hour` int(3) DEFAULT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `name`, `description`, `no_of_hour`) VALUES
(1, 'C', 'Programming Language', 50),
(2, 'e&e', 'basic electronics', 45),
(3, 'accounts', 'basic accounting', 48),
(4, 'IC', 'Indian constitution ', 44),
(5, 'maths1', 'basic maths', 48),
(6, 'english', 'basic english', 50),
(7, 'c lab', 'c programming', 50),
(8, 'e&e lab', 'electronics lab', 50),
(9, 'python', 'diploma', 40);

-- --------------------------------------------------------

--
-- Table structure for table `sub_marks`
--

CREATE TABLE IF NOT EXISTS `sub_marks` (
  `esub_id` int(100) NOT NULL AUTO_INCREMENT,
  `exam_name` varchar(500) NOT NULL,
  `stud_id` int(100) NOT NULL,
  `course_id` int(100) NOT NULL,
  `sem` int(100) NOT NULL,
  `sub1` varchar(100) NOT NULL,
  `date1` varchar(100) NOT NULL,
  `min_maks1` int(20) NOT NULL,
  `max_marks1` int(20) NOT NULL,
  `marks1` int(100) NOT NULL,
  `sub2` varchar(100) NOT NULL,
  `date2` varchar(100) NOT NULL,
  `min_maks2` int(20) NOT NULL,
  `max_marks2` int(20) NOT NULL,
  `marks2` int(100) NOT NULL,
  `sub3` varchar(100) NOT NULL,
  `date3` varchar(100) NOT NULL,
  `min_maks3` int(20) NOT NULL,
  `max_marks3` int(20) NOT NULL,
  `marks3` int(100) NOT NULL,
  `sub4` varchar(100) NOT NULL,
  `date4` varchar(100) NOT NULL,
  `min_maks4` int(20) NOT NULL,
  `max_marks4` int(20) NOT NULL,
  `marks4` int(100) NOT NULL,
  `sub5` varchar(100) NOT NULL,
  `date5` varchar(100) NOT NULL,
  `min_maks5` int(20) NOT NULL,
  `max_marks5` int(20) NOT NULL,
  `marks5` int(100) NOT NULL,
  `sub6` varchar(100) NOT NULL,
  `date6` varchar(100) NOT NULL,
  `min_maks6` int(20) NOT NULL,
  `max_marks6` int(20) NOT NULL,
  `marks6` int(100) NOT NULL,
  PRIMARY KEY (`esub_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `sub_marks`
--

INSERT INTO `sub_marks` (`esub_id`, `exam_name`, `stud_id`, `course_id`, `sem`, `sub1`, `date1`, `min_maks1`, `max_marks1`, `marks1`, `sub2`, `date2`, `min_maks2`, `max_marks2`, `marks2`, `sub3`, `date3`, `min_maks3`, `max_marks3`, `marks3`, `sub4`, `date4`, `min_maks4`, `max_marks4`, `marks4`, `sub5`, `date5`, `min_maks5`, `max_marks5`, `marks5`, `sub6`, `date6`, `min_maks6`, `max_marks6`, `marks6`) VALUES
(1, 'A', 1, 1, 1, 'e&e', '2019-04-06', 18, 50, 40, 'C', '2019-04-06', 18, 50, 40, 'Accounts', '2019-04-06', 18, 50, 40, 'English', '2019-04-06', 18, 50, 40, '', '', 0, 0, 0, '', '', 0, 0, 0),
(2, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(3, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(4, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(5, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(6, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(7, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(8, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(9, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(10, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(11, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(12, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(13, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(14, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(15, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(16, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(17, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(18, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(19, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(20, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(21, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(22, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(23, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(24, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(25, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(26, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(27, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(28, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(29, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(30, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(31, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(32, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(33, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(34, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(35, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0),
(36, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE IF NOT EXISTS `time_table` (
  `tt_id` int(20) NOT NULL AUTO_INCREMENT,
  `sem` varchar(20) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `day` varchar(50) NOT NULL,
  `date_time` varchar(50) NOT NULL,
  PRIMARY KEY (`tt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`tt_id`, `sem`, `subject`, `day`, `date_time`) VALUES
(1, '1', 'c', 'monday', '10'),
(2, '1', 'e&e', 'monday', '11'),
(3, '1', 'maths/accounts', 'monday', '12'),
(4, '1', 'english', 'monday', '1'),
(5, '1', 'maths/accounts', 'tuesday', '10'),
(6, '1', 'e&e', 'tuesday', '11'),
(7, '1', 'english', 'tuesday', '12'),
(8, '1', 'c lab', 'tuesday', '1'),
(9, '1', 'IC', 'wednesday', '10'),
(10, '1', 'maths/accounts', 'wednesday', '12');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `hintq` varchar(500) NOT NULL,
  `hinta` varchar(500) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=144 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `user_type`, `hintq`, `hinta`) VALUES
(1, 'principal', 'principal', 'principal', 'My reg email id', 'principal@jsscollege.com'),
(142, 'akhtarsameer942@gmail.com', '123456', 'student', 'My re Email Id', 'akhtarsameer942@gmail.com'),
(143, 'kishorgouda121@gmail.com', '123456', 'student', 'My re Email Id', 'kishorgouda121@gmail.com');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_subject`
--
ALTER TABLE `course_subject`
  ADD CONSTRAINT `course_subject_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_subject_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE CASCADE;

--
-- Constraints for table `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `exam_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_subject`
--
ALTER TABLE `exam_subject`
  ADD CONSTRAINT `exam_subject_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`exam_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_subject_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE CASCADE;

--
-- Constraints for table `student_marks`
--
ALTER TABLE `student_marks`
  ADD CONSTRAINT `student_marks_ibfk_1` FOREIGN KEY (`es_id`) REFERENCES `exam_subject` (`es_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_marks_ibfk_2` FOREIGN KEY (`stud_id`) REFERENCES `student_master` (`stud_id`) ON DELETE CASCADE;

--
-- Constraints for table `student_subject`
--
ALTER TABLE `student_subject`
  ADD CONSTRAINT `student_subject_ibfk_1` FOREIGN KEY (`stud_id`) REFERENCES `student_master` (`stud_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_subject_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE CASCADE;

--
-- Constraints for table `stud_attendance`
--
ALTER TABLE `stud_attendance`
  ADD CONSTRAINT `stud_attendance_ibfk_1` FOREIGN KEY (`stud_id`) REFERENCES `student_master` (`stud_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stud_attendance_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE CASCADE;
