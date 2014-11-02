-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 01, 2014 at 11:00 PM
-- Server version: 5.5.33
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `Geo-Graphs`
--

-- --------------------------------------------------------

--
-- Table structure for table `edge_list`
--

CREATE TABLE `edge_list` (
  `Source` varchar(50) NOT NULL,
  `Destination` varchar(50) NOT NULL,
  `Relation` varchar(50) NOT NULL DEFAULT 'information'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `edge_list`
--

INSERT INTO `edge_list` (`Source`, `Destination`, `Relation`) VALUES
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
('Kerala', 'World Famous Items', 'information');










-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 01, 2014 at 11:27 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `geographs`
--

-- --------------------------------------------------------

--
-- Table structure for table `entity_information`
--

CREATE TABLE IF NOT EXISTS `entity_information` (
  `source` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `html` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entity_information`
--

INSERT INTO `entity_information` (`source`, `destination`, `html`) VALUES
('Australia', 'Cuisines', 'Australian cuisine refers to the cuisine of Australia and its indigenous and colonial societies. Indigenous Australians have occupied the lands of Australia for some 40,000 to 60,000 years, during which time they developed a unique hunter gatherer diet, known as "bush tucker", drawn from regional Australian flora and fauna such as the kangaroo.'),
('Australia', 'Climate', '<img src="images/Australia-climate-map_MJC01.png";'),
('New South Wales', 'Demographics', 'The estimated population of New South Wales at the end of June 2010 was 7.24 million people. The population grew by 1.5% over the preceding year, lower than the national rate of 1.7%.\r\n\r\nThe principal ancestries of New South Wales''s residents (as surveyed in 2011) are:\r\n<ul>\r\n	<li>\r\n	25.0% Australian</li><li>\r\n    24.2% English</li><li>\r\n    7.4% Irish</li><li>\r\n    6.0% Scottish</li><li>\r\n    4.3% Chinese</li>\r\n	</ul>\r\n\r\n62.9% of NSW''s population is based in Sydney.\r\n'),
('Sydney', 'Urban Structure', '<img src="images/250px-Sydney_02_11_2008.JPG">\r\n'),
('Sydney', 'History', 'The History of Sydney begins in prehistoric times with the occupation of the district by Australian Aborigines, whose ancestors came to Australia between 15,000 and 45,000 years ago. The modern history of the city began with the arrival of a First Fleet of British ships in 1788 and the foundation of a penal colony by Great Britain.<br />\r\n\r\nSydney established an elected city council in 1840 and was from 1788-1900 the capital of the British colony of New South Wales. In 1901, Sydney became a state capital, when New South Wales voted to join the Australian Federation. Sydney today is Australia''s largest city and a major international capital of culture and finance. The city has played host to many international events, including the 2000 Summer Olympics.<br />\r\n'),
('Tourism', 'Opera House', '\r\n<img src="images/Sydney-Opera-House-Quiz.jpg" alt="The Sydney Opera House is a multi-venue performing arts centre in Sydney, New South Wales, Australia.">\r\n<br/>The Sydney Opera House is a multi-venue performing arts centre in Sydney, New South Wales, Australia.'),
('Tourism', 'Harbour Bridge', '\r\n<img src="images/harbour-bridge-1718.jpg" >\r\n<br />The Sydney Harbour Bridge is a steel through arch bridge across Sydney Harbour that carries rail, vehicular, bicycle and pedestrian traffic between the Sydney central business district and the North Shore.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
