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
('Kerala', 'World Famous Items', 'information');
('Music and Dance', 'Kathakali', 'information'),
('Music and Dance', 'Koodiyatton', 'information'),
('Music and Dance', 'Carnatic Music', 'information'),
('Music and Dance', 'Vadakkan Patukal', 'information'),
('Music and Dance', 'Margamkali', 'information');
('United States', 'Etymology', 'information'),
('United States', 'History', 'information'),
('United States', 'Climate', 'information'),
('United States', 'New York City', 'explore'),
('United States', 'Los Angeles', 'explore'),
('United States', 'Los Angeles', 'explore'),
('United States', 'Dallas–Fort Worth', 'explore'),
('United States', 'Washington, D.C.', 'explore');









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
('Music and Dance', 'Kathakali', 'Video showing artists performing Kathakali, a traditional dance form from Kerala.<br/>\r\n<video width="320" height="240" controls>  <source src="videos/kathakali.mp4" type="video/mp4"><source src="movie.ogg" type="video/ogg">Your browser does not support the video tag.</video>'),
('Kerala', 'Flora and Fauna', '<img src = "images/kerala_flora_and_fauna.jpg">\r\n<br/>\r\nA tiger from Wynad Wildlife Sanctuary.<br/>\r\n<ul>\r\n	<li>Kerala had 6 National Parks, 2 Biosphere Reserves and 2 tiger reserves.</li>\r\n	<li>There are also numerous protected conservation areas, including 1455.4 km² of the vast Nilgiri Biosphere Reserve.</li>\r\n	<li>Forests play host to such major fauna as the Asian elephant (Elephas maximus), Bengal tiger (Panthera tigris tigris), leopard (Panthera pardus)</li>\r\n</ul>'),
('Kerala', 'World Famous Items', 'Things to buy for sure when you visit Kerala : <br/>\r\n<ul>\r\n	<li>Banana chips!</li>\r\n	<li>Spices!</li>\r\n	<li>Famous Wooden "Kathakali" Face :D</li>\r\n</ul>\r\n<img src = "images/kerala_banana_chips.jpg" style = "height : 200px; width : 300px" ><br/>\r\nThe world famous banana chips are a must buy in Kerala!'),
('India', 'Etymology', 'The name India is derived from Indus, which originates from the Old Persian word Hinduš. The latter term stems from the Sanskrit word Sindhu, which was the historical local appellation for the Indus River.The ancient Greeks referred to the Indians as Indoi (?????), which translates as "the people of the Indus".'),
('India', 'Festivals', 'India is also known as the land of festivals!\r\nDiwali, Holi, Eid, etc. all are celebrated with equal enthusiasm across<br/>\r\nthe country!\r\nMajor festivals include : \r\n<ul>\r\n	<li>Diwali</li>\r\n	<li>Holi</li>\r\n	<li>Eid</li>\r\n	<li>Navratri</li>\r\n	<li>Rakshabandhan</li>\r\n</ul>\r\n<br/>\r\n<img src = "images/india_festivals.jpg" style = "height : 200; width : 300"><br/>\r\nKite flying festival during Uttarayan in Gujarat in India.<br/>'),
('Asia', 'Climate', 'The most active place on Earth for tropical cyclone activity lies northeast of the Philippines and south of Japan. The Gobi Desert is in Mongolia and the Arabian Desert stretches across much of the Middle East. The Yangtze River in China is the longest river in the continent. The Himalayas between Nepal and China is the tallest mountain range in the world. Tropical rainforests stretch across much of southern Asia and coniferous and deciduous forests lie farther north.'),
('Asia', 'Modern Conflicts', 'The region has always been prone to poilitical tensions.\r\n<br/>\r\nSome of the recent ones are : \r\n<ul>\r\n	<li>The Israeli–Palestinian conflict</li>\r\n	<li>The Syrian Civil War</li>\r\n	<li>The Sino-Indian War</li>\r\n	<li>The 2014 Thai coup d''état</li>\r\n	<li>The Islamic State of Iraq and the Levant</li>\r\n</ul>\r\n<img src = "images/asia_gaza.jpg" style = "height : 200; width : 400">\r\n<br/>\r\nRecent Gaza conflit in the region has caught the world''s attention');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 02, 2014 at 02:42 AM
-- Server version: 5.5.33
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `geographs`
--

-- --------------------------------------------------------

--
-- Table structure for table `entity_images`
--

CREATE TABLE `entity_images` (
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entity_images`
--

INSERT INTO `entity_images` (`name`, `image`) VALUES
('Australia', 'images/australia-1.jpg'),
('Australia', 'images/australia-2.jpg'),
('Australia', 'images/australia-4.jpg'),
('New South Wales', 'images/new south wales-1.jpg'),
('New South Wales', 'images/new south wales-2.jpg'),
('New South Wales', 'images/new south wales-3.jpg'),
('Sydney', 'images/sydney-1.jpg'),
('Sydney', 'images/sydney-2.jpg'),
('Sydney', 'images/sydney-3.jpg'),
('Asia', 'images/asia-1.jpg'),
('Asia', 'images/asia-2.jpg'),
('Asia', 'images/asia-3.jpg'),
('India', 'images/india-1.jpg'),
('India', 'images/india-2.jpg'),
('India', 'images/india-3.jpg'),
('Kerala', 'images/kerala-1.jpg'),
('Kerala', 'images/kerala-2.jpg'),
('Kerala', 'images/kerala-3.jpg'),
('Tourism', 'tourism-1.jpg'),
('Tourism', 'tourism-2.jpg'),
('Tourism', 'tourism-3.jpg'),
('Music and Dance', 'music and dance-1.jpg'),
('Music and Dance', 'music and dance-2.jpg'),
('Music and Dance', 'music and dance-3.jpg');
