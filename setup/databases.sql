-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 02, 2014 at 12:25 AM
-- Server version: 5.5.33
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `geographs`
--

-- --------------------------------------------------------

--
-- Table structure for table `edge_list`
--

CREATE TABLE `edge_list` (
  `Source` varchar(50) NOT NULL,
  `Destination` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'information'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `edge_list`
--

INSERT INTO `edge_list` (`Source`, `Destination`, `type`) VALUES
('Australia', 'Climate', 'information'),
('Australia', 'History', 'information'),
('Australia', 'Etymology', 'information'),
('Australia', 'Cuisines', 'information'),
('Australia', 'Demographics', 'information'),
('Australia', 'New South Wales', 'explore'),
('Australia', 'Tasmania', 'explore'),
('Australia', 'South Australia', 'explore'),
('Australia', 'Victoria', 'explore'),
('Australia', 'Western Australia', 'explore'),
('Australia', 'Queensland', 'explore'),
('New South Wales', 'Government', 'information'),
('New South Wales', 'Sport', 'information'),
('New South Wales', 'Climate', 'information'),
('New South Wales', 'Transport', 'information'),
('New South Wales', 'Demographics', 'information'),
('New South Wales', 'Sydney', 'explore'),
('New South Wales', 'Port Macquire', 'explore'),
('New South Wales', 'Newcastle', 'explore'),
('New South Wales', 'Wagga Wagga', 'explore'),
('New South Wales', 'Orange', 'explore'),
('New South Wales', 'Wollongong', 'explore'),
('Sydney', 'Religion', 'information'),
('Sydney', 'Entertainment', 'information'),
('Sydney', 'History', 'information'),
('Sydney', 'Urban Structure', 'information'),
('Sydney', 'International Education', 'information'),
('Sydney', 'Tourism', 'information'),
('Tourism', 'Watson Bay', 'information'),
('Tourism', 'Opera House', 'information'),
('Tourism', 'Harbour Bridge', 'information'),
('Tourism', 'Australian Museum', 'information'),
('Tourism', 'The Rocks', 'information'),
('Asia', 'Etymology', 'information'),
('Asia', 'Political Geography', 'information'),
('Asia', 'Climate', 'information'),
('Asia', 'History', 'information'),
('Asia', 'Modern Conflicts', 'information'),
('Asia', 'India', 'explore'),
('Asia', 'Nepal', 'explore'),
('Asia', 'Mongolia', 'explore'),
('Asia', 'Singapore', 'explore'),
('Asia', 'Russia', 'explore'),
('Asia', 'Brunei', 'explore'),
('Asia-2', 'South Korea', 'explore'),
('Asia-2', 'Japan', 'explore'),
('Asia-2', 'Iran', 'explore'),
('Asia-2', 'Qatar', 'explore'),
('Asia-2', 'Kuwait', 'explore'),
('India', 'Etymology', 'information'),
('India', 'Culture and Literature', 'information'),
('India', 'Architecture', 'information'),
('India', 'Religions', 'information'),
('India', 'History', 'information'),
('India', 'Festivals', 'information'),
('India', 'Biodiversity', 'information'),
('India', 'Punjab', 'explore'),
('India', 'Kerala', 'explore'),
('India', 'Assam', 'explore'),
('India', 'Jammu and Kashmir', 'explore'),
('India', 'Goa', 'explore'),
('India', 'Madhya Pradesh', 'explore'),
('India', 'Sikkim', 'explore'),
('Kerala', 'Etymology', 'information'),
('Kerala', 'Music and Dance', 'information'),
('Kerala', 'Clothing', 'information'),
('Kerala', 'Flora and Fauna', 'information'),
('Kerala', 'World Famous Items', 'information'),
('Music and Dance', 'Kathakali', 'information'),
('Music and Dance', 'Koodiyatton', 'information'),
('Music and Dance', 'Carnatic Music', 'information'),
('Music and Dance', 'Vadakkan Patukal', 'information'),
('Music and Dance', 'Margamkali', 'information');