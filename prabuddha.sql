-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2021 at 08:55 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prabuddha`
--

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `buildId` int(11) NOT NULL,
  `buildName` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`buildId`, `buildName`) VALUES
(1, 'Main Building'),
(2, 'Engineering Building');

-- --------------------------------------------------------

--
-- Table structure for table `day_details`
--

CREATE TABLE `day_details` (
  `id` int(11) NOT NULL,
  `mon` int(1) NOT NULL DEFAULT 0,
  `l_id` int(11) NOT NULL,
  `tue` int(1) NOT NULL DEFAULT 0,
  `wed` int(1) NOT NULL DEFAULT 0,
  `thur` int(1) NOT NULL DEFAULT 0,
  `fri` int(1) NOT NULL DEFAULT 0,
  `sat` int(1) NOT NULL DEFAULT 0,
  `sun` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `day_details`
--

INSERT INTO `day_details` (`id`, `mon`, `l_id`, `tue`, `wed`, `thur`, `fri`, `sat`, `sun`) VALUES
(46, 1, 1, 1, 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lecdetails`
--

CREATE TABLE `lecdetails` (
  `ID` int(11) NOT NULL,
  `LName` varchar(30) NOT NULL,
  `EmpID` int(11) NOT NULL,
  `Faculty` varchar(30) NOT NULL,
  `Department` varchar(35) NOT NULL,
  `Center` varchar(35) NOT NULL,
  `Building` varchar(35) NOT NULL,
  `Level` int(11) NOT NULL,
  `Rank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecdetails`
--

INSERT INTO `lecdetails` (`ID`, `LName`, `EmpID`, `Faculty`, `Department`, `Center`, `Building`, `Level`, `Rank`) VALUES
(31, 'Mr K C Sirisena', 100, 'Business', 'BM', 'Malabe', 'D-block', 5, 5),
(32, 'Mr S K Munasinghe', 120, 'Computing', 'IT', 'Malabe', 'New Building', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(5) NOT NULL,
  `room_name` varchar(25) NOT NULL,
  `room_type` varchar(25) NOT NULL,
  `room_capacity` int(5) NOT NULL,
  `building_buildId1` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `room_name`, `room_type`, `room_capacity`, `building_buildId1`) VALUES
(1, 'B502', 'Laboratory', 35, 0),
(2, 'B201', 'Lecture Hall', 50, 0),
(3, 'B503', 'Laboratory', 30, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `lecturer1` varchar(55) NOT NULL,
  `lecturer2` varchar(55) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `groups` varchar(55) NOT NULL,
  `students` int(11) NOT NULL,
  `subject` varchar(10) NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `lecturer1`, `lecturer2`, `tag`, `groups`, `students`, `subject`, `duration`) VALUES
(6, 'Mr. K.G Senevirathne', 'Mr.Dinesh Silva', 'Lec', 'Y3S1.3- June', 51, 'NDM', 4),
(7, 'Ms. Samitha Karaliyadda', 'Mrs. Kalini Perera', 'Prac', 'Y3S1.4- June', 100, 'PAF', 5);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` varchar(11) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `nic` varchar(11) NOT NULL,
  `contact` varchar(11) NOT NULL,
  `course` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `nic`, `contact`, `course`) VALUES
('IT15006776', 'Karaliyadda SNKB', '942383169V', '0719868378', 'Bsc in Information Technology');

-- --------------------------------------------------------

--
-- Table structure for table `student_has_time_table`
--

CREATE TABLE `student_has_time_table` (
  `student_student_id` varchar(11) NOT NULL,
  `time_table_timeTableId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subdetails`
--

CREATE TABLE `subdetails` (
  `Year` int(11) NOT NULL,
  `Semester` int(11) NOT NULL,
  `Name` varchar(11) NOT NULL,
  `Code` varchar(11) NOT NULL,
  `Lec_hrs` int(11) NOT NULL,
  `Tute_hrs` int(11) NOT NULL,
  `Lab_hrs` int(11) NOT NULL,
  `Eva_hrs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subdetails`
--

INSERT INTO `subdetails` (`Year`, `Semester`, `Name`, `Code`, `Lec_hrs`, `Tute_hrs`, `Lab_hrs`, `Eva_hrs`) VALUES
(3, 2, 'NDM', 'IT3010', 5, 4, 2, 2),
(3, 1, 'PAF', 'IT3020', 5, 4, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `time_allocation`
--

CREATE TABLE `time_allocation` (
  `time_allocationId` int(11) NOT NULL,
  `time_details_id` int(11) NOT NULL,
  `day_details_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `time_details`
--

CREATE TABLE `time_details` (
  `id` int(11) NOT NULL,
  `no_date` int(11) NOT NULL,
  `time_hour` int(11) NOT NULL,
  `time_min` int(11) NOT NULL,
  `l_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `time_details`
--

INSERT INTO `time_details` (`id`, `no_date`, `time_hour`, `time_min`, `l_id`) VALUES
(76, 4, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `timeTableId` int(11) NOT NULL,
  `subdetails_Code` varchar(11) NOT NULL,
  `location_location_id` int(5) NOT NULL,
  `lecdetails_ID` int(11) NOT NULL,
  `time_allocation_time_allocationId` int(11) NOT NULL,
  `time_tablename` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`buildId`);

--
-- Indexes for table `day_details`
--
ALTER TABLE `day_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `l_id` (`l_id`);

--
-- Indexes for table `lecdetails`
--
ALTER TABLE `lecdetails`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `fk_location_building_idx1` (`building_buildId1`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_has_time_table`
--
ALTER TABLE `student_has_time_table`
  ADD KEY `fk_student_has_time_table_time_table1_idx` (`time_table_timeTableId`),
  ADD KEY `fk_student_has_time_table_student1_idx` (`student_student_id`);

--
-- Indexes for table `subdetails`
--
ALTER TABLE `subdetails`
  ADD PRIMARY KEY (`Code`),
  ADD UNIQUE KEY `Code_UNIQUE` (`Code`);

--
-- Indexes for table `time_allocation`
--
ALTER TABLE `time_allocation`
  ADD PRIMARY KEY (`time_allocationId`),
  ADD KEY `fk_time_details_has_day_details_day_details1_idx` (`day_details_id`),
  ADD KEY `fk_time_details_has_day_details_time_details1_idx` (`time_details_id`);

--
-- Indexes for table `time_details`
--
ALTER TABLE `time_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `l_id` (`l_id`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`timeTableId`),
  ADD KEY `fk_subdetails_has_location_location1_idx` (`location_location_id`),
  ADD KEY `fk_subdetails_has_location_subdetails1_idx` (`subdetails_Code`),
  ADD KEY `fk_time_table_lecdetails1_idx` (`lecdetails_ID`),
  ADD KEY `fk_time_table_time_allocation1_idx` (`time_allocation_time_allocationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `building`
--
ALTER TABLE `building`
  MODIFY `buildId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `day_details`
--
ALTER TABLE `day_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `lecdetails`
--
ALTER TABLE `lecdetails`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `time_details`
--
ALTER TABLE `time_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `time_allocation`
--
ALTER TABLE `time_allocation`
  ADD CONSTRAINT `fk_time_details_has_day_details_day_details1` FOREIGN KEY (`day_details_id`) REFERENCES `day_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_time_details_has_day_details_time_details1` FOREIGN KEY (`time_details_id`) REFERENCES `time_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
