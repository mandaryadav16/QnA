-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2018 at 09:19 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qna`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions_cat`
--

CREATE TABLE `questions_cat` (
  `cat_id` int(11) NOT NULL,
  `cat` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions_cat`
--

INSERT INTO `questions_cat` (`cat_id`, `cat`) VALUES
(2, 'Programming'),
(5, 'Marketing'),
(3, 'Security'),
(4, 'AI and IOT'),
(1, 'General'),
(6, 'Networking'),
(7, 'Graphics');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(60) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `notify` int(11) DEFAULT NULL,
  `image` text,
  `verified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `Name`, `email`, `pass`, `notify`, `image`, `verified`) VALUES
(42, 'Hasnain Abid Khanzada', 'haniabidkz@gmail.com', 'killerkz@)!^megamind@)!^', 0, 'images/Hasnain Abid Khanzada.jpg', 1),
(64, 'Syed Mohsin Ali', 'mohsin_1995@yahoo.com', '123456789', 0, 'images/Syed Mohsin Ali.jpg', 1),
(65, 'Ghazal khan', 'khanzadaghazal@gmail.com', 'pakistan123', 1, 'images/default.jpeg', 1),
(66, 'Maaz', 'maazmehtabuddin95@gmail.com', '123456789', 0, 'images/default.jpeg', 1),
(67, 'Affan Shahab', 'affan.shahab@outlook.com', 'LatestExperience', 1, 'images/default.jpeg', 1),
(68, 'Umair Malik', 'umairmalikavan@gmail.com', 'Um787898', 0, 'images/default.jpeg', 1),
(69, 'vipod dd', 'lekuyec@vipepe.com', 'keeping1234', 0, 'images/default.jpeg', 1),
(70, 'Affan Shaikh', 'affansheikh16@gmail.com', 'desire720', 0, 'images/default.jpeg', 1),
(71, 'Zaid Imtiaz', 'zaid296imtiaz@gmail.com', 'hahaha12345', 1, 'images/default.jpeg', 1),
(72, 'Moiz khan', 'moixahmed333@yahoo.com', 'moizkhan', 0, 'images/default.jpeg', 1),
(73, 'maaz mehtab', 'maaz95@gmail.com', '12121212', 0, 'images/default.jpeg', 0),
(74, 'Segeriou Rami', 'vickyvk019@gmail.com', 'vicky645', 0, 'images/default.jpeg', 1),
(75, 'izharkhokhar', 'izharkhokhar00@gmail.com', 'warjyareo', 0, 'images/default.jpeg', 1),
(76, 'Jeet Kumar ', 'jeetkramnani@gmail.com', 'jeetkramnani123', 0, 'images/default.jpeg', 1),
(77, 'Ravendhar Kumar Lalwani', 'lalwanir4@gmail.com', 'google37', 0, 'images/default.jpeg', 0),
(78, 'abdul', 'abdulmaroofy@gmail.com', '4277736abc', 0, 'images/default.jpeg', 0),
(79, 'Rixo', 'm.rizwan0549@gmail.com', 'Uzumymw5400549', 0, 'images/default.jpeg', 0),
(80, 'Usman Shaikh', 'mythz1996@hotmail.com', 'hayabusa1300', 0, 'images/default.jpeg', 1),
(87, 'hasnain', 'haniabidkz34334@gmail.com', 'killerkz@)!^megamind@)!^', NULL, NULL, 0),
(90, 'sdsdsd', 'kkkk343434@gmail.com', 'sdsd', NULL, NULL, 0),
(92, 'Khanzada', 'haniabidkz32@gmail.com', 'khanzada', NULL, NULL, 0),
(94, 'Hasnain Abid Khanzada', 'haniabidkz2017@gmail.com', 'khanzada', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_answers`
--

CREATE TABLE `user_answers` (
  `answer_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` text,
  `ans_by` varchar(55) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_answers`
--

INSERT INTO `user_answers` (`answer_id`, `question_id`, `answer`, `ans_by`) VALUES
(115, 71, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quis faucibus sem, eget tincidunt tortor. Sed faucibus condimentum dapibus. In tempor, odio congue placerat euismod, urna ligula eleifend nisi, at porta nisl libero a lacus. Pellentesque ac commodo arcu. Vivamus ornare mi sed erat aliquam rhoncus. ', '94'),
(116, 69, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quis faucibus sem, eget tincidunt tortor. Sed faucibus condimentum dapibus. In tempor, odio congue placerat euismod, urna ligula eleifend nisi, at porta nisl libero a lacus. Pellentesque ac commodo arcu. Vivamus ornare mi sed erat aliquam rhoncus.', '94'),
(114, 69, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quis faucibus sem, eget tincidunt tortor. Sed faucibus condimentum dapibus. In tempor, odio congue placerat euismod, urna ligula eleifend nisi, at porta nisl libero a lacus. Pellentesque ac commodo arcu. Vivamus ornare mi sed erat aliquam rhoncus. ', '94'),
(112, 69, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quis faucibus sem, eget tincidunt tortor. Sed faucibus condimentum dapibus. In tempor, odio congue placerat euismod, urna ligula eleifend nisi, at porta nisl libero a lacus. Pellentesque ac commodo arcu. Vivamus ornare mi sed erat aliquam rhoncus. ', '94'),
(113, 69, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quis faucibus sem, eget tincidunt tortor. Sed faucibus condimentum dapibus. In tempor, odio congue placerat euismod, urna ligula eleifend nisi, at porta nisl libero a lacus. Pellentesque ac commodo arcu. Vivamus ornare mi sed erat aliquam rhoncus. ', '94'),
(110, 69, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quis faucibus sem, eget tincidunt tortor. Sed faucibus condimentum dapibus. In tempor, odio congue placerat euismod, urna ligula eleifend nisi, at porta nisl libero a lacus. Pellentesque ac commodo arcu. Vivamus ornare mi sed erat aliquam rhoncus. ', '94'),
(111, 69, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quis faucibus sem, eget tincidunt tortor. Sed faucibus condimentum dapibus. In tempor, odio congue placerat euismod, urna ligula eleifend nisi, at porta nisl libero a lacus. Pellentesque ac commodo arcu. Vivamus ornare mi sed erat aliquam rhoncus. ', '94'),
(108, 69, '', '94'),
(109, 69, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quis faucibus sem, eget tincidunt tortor. Sed faucibus condimentum dapibus. In tempor, odio congue placerat euismod, urna ligula eleifend nisi, at porta nisl libero a lacus. Pellentesque ac commodo arcu. Vivamus ornare mi sed erat aliquam rhoncus. ', '94'),
(107, 69, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quis faucibus sem, eget tincidunt tortor. Sed faucibus condimentum dapibus. In tempor, odio congue placerat euismod, urna ligula eleifend nisi, at porta nisl libero a lacus. Pellentesque ac commodo arcu. Vivamus ornare mi sed erat aliquam rhoncus. ', '94'),
(106, 64, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quis faucibus sem, eget tincidunt tortor. Sed faucibus condimentum dapibus. In tempor, odio congue placerat euismod, urna ligula eleifend nisi, at porta nisl libero a lacus. Pellentesque ac commodo arcu. Vivamus ornare mi sed erat aliquam rhoncus. ', '94'),
(104, 65, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quis faucibus sem, eget tincidunt tortor. Sed faucibus condimentum dapibus. In tempor, odio congue placerat euismod, urna ligula eleifend nisi, at porta nisl libero a lacus. Pellentesque ac commodo arcu. Vivamus ornare mi sed erat aliquam rhoncus. ', '94'),
(105, 65, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quis faucibus sem, eget tincidunt tortor. Sed faucibus condimentum dapibus. In tempor, odio congue placerat euismod, urna ligula eleifend nisi, at porta nisl libero a lacus. Pellentesque ac commodo arcu. Vivamus ornare mi sed erat aliquam rhoncus. ', '94'),
(103, 67, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quis faucibus sem, eget tincidunt tortor. Sed faucibus condimentum dapibus. In tempor, odio congue placerat euismod, urna ligula eleifend nisi, at porta nisl libero a lacus. Pellentesque ac commodo arcu. Vivamus ornare mi sed erat aliquam rhoncus. ', '94'),
(102, 67, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quis faucibus sem, eget tincidunt tortor. Sed faucibus condimentum dapibus. In tempor, odio congue placerat euismod, urna ligula eleifend nisi, at porta nisl libero a lacus. Pellentesque ac commodo arcu. Vivamus ornare mi sed erat aliquam rhoncus. ', '94'),
(101, 67, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quis faucibus sem, eget tincidunt tortor. Sed faucibus condimentum dapibus. In tempor, odio congue placerat euismod, urna ligula eleifend nisi, at porta nisl libero a lacus. Pellentesque ac commodo arcu. Vivamus ornare mi sed erat aliquam rhoncus. ', '94'),
(100, 66, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quis faucibus sem, eget tincidunt tortor. Sed faucibus condimentum dapibus. In tempor, odio congue placerat euismod, urna ligula eleifend nisi, at porta nisl libero a lacus. Pellentesque ac commodo arcu. Vivamus ornare mi sed erat aliquam rhoncus. ', '94'),
(90, 58, 'xcxcc', '42'),
(91, 58, 'fgfgfgfg', '42'),
(92, 59, 'sdsdsdsd', '42'),
(93, 59, 'ddfdfdfdf', '42'),
(94, 61, 'dfdffdf', '42'),
(95, 61, 'dfdfdf', '42'),
(96, 62, 'fdfdfdfdfd', '42'),
(97, 62, 'fgfgfgfggfg', '42'),
(98, 63, 'fdfdfdfdf', '42'),
(99, 64, 'sdsd', '94'),
(89, 56, 'sdsdsdsdsd', '64'),
(88, 56, 'sdsdsdsdsd', '64');

-- --------------------------------------------------------

--
-- Table structure for table `user_questions`
--

CREATE TABLE `user_questions` (
  `q_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `question` text,
  `description` text,
  `asked_by` varchar(55) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_questions`
--

INSERT INTO `user_questions` (`q_id`, `cat_id`, `question`, `description`, `asked_by`) VALUES
(66, 2, 'What are the top 10 websites built with Nodejs?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quis faucibus sem, eget tincidunt tortor. Sed faucibus condimentum dapibus. In tempor, odio congue placerat euismod, urna ligula eleifend nisi, at porta nisl libero a lacus. Pellentesque ac commodo arcu. Vivamus ornare mi sed erat aliquam rhoncus', '94'),
(67, 5, 'Where can I find remote work as a developer?', '', '94'),
(68, 3, 'What is the best JavaScript framework used in Laravel?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quis faucibus sem, eget tincidunt tortor. Sed faucibus condimentum dapibus. In tempor, odio congue placerat euismod, urna ligula eleifend nisi, at porta nisl libero a lacus. Pellentesque ac commodo arcu. Vivamus ornare mi sed erat aliquam rhoncus. Aenean vehicula egestas sapien eu faucibus. Maecenas dictum sit amet sem vitae faucibus. Etiam scelerisque felis urna, quis mattis tortor suscipit vitae. Vestibulum mattis sodales turpis, vel gravida dui accumsan a. Nam a sollicitudin nibh. Proin vel nisi in lacus dignissim facilisis. Nam eu scelerisque tellus. In faucibus nulla sed dignissim fermentum.\r\n\r\n', '94'),
(65, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quis faucibus sem, eget tincidunt tortor', 'In tempor, odio congue placerat euismod, urna ligula eleifend nisi, at porta nisl libero a lacus. Pellentesque ac commodo arcu. Vivamus ornare mi sed erat aliquam rhoncus. Aenean vehicula egestas sapien eu faucibus. Maecenas dictum sit amet sem vitae faucibus. Etiam scelerisque felis urna, quis mattis tortor suscipit vitae. Vestibulum mattis sodales turpis, vel gravida dui accumsan a. Nam a sollicitudin nibh. Proin vel nisi in lacus dignissim facilisis. ', '94'),
(64, 1, 'What is PHP?', 'sdsdss', '94'),
(69, 4, 'What are the advantages of Adobe Dreamweaver?', '', '94'),
(70, 6, 'What are the advantages of Adobe Dreamweaver?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quis faucibus sem, eget tincidunt tortor. Sed faucibus condimentum dapibus. In tempor, odio congue placerat euismod, urna ligula eleifend nisi, at porta nisl libero a lacus. Pellentesque ac commodo arcu. Vivamus ornare mi sed erat aliquam rhoncus. Aenean vehicula egestas sapien eu faucibus. Maecenas dictum sit amet sem vitae faucibus. Etiam scelerisque felis urna, quis mattis tortor suscipit vitae. Vestibulum mattis sodales turpis, vel gravida dui accumsan a. Nam a sollicitudin nibh. Proin vel nisi in lacus dignissim facilisis. Nam eu scelerisque tellus. In faucibus nulla sed dignissim fermentum.\r\n\r\n', '94'),
(71, 2, 'What are some habits of a good coder?', '', '94');

--
-- Indexes for dumped tables
--

-- Table for like button
-- Table: user_answers
CREATE TABLE user_answers (
  answer_id INT PRIMARY KEY,
  question_id INT,
  ans_by INT,
  answer TEXT,
  like_count INT,
  FOREIGN KEY (question_id) REFERENCES user_questions(q_id),
  FOREIGN KEY (ans_by) REFERENCES users(u_id)
);

-- Table: likes
CREATE TABLE likes (
  like_id INT PRIMARY KEY,
  answer_id INT(11),
  u_id INT(11),
  FOREIGN KEY (answer_id) REFERENCES user_answers(answer_id),
  FOREIGN KEY (u_id) REFERENCES users(u_id)
);






--
-- Indexes for table `questions_cat`
--
ALTER TABLE `questions_cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_answers`
--
ALTER TABLE `user_answers`
  ADD PRIMARY KEY (`answer_id`),
  ADD KEY `par_ind10` (`ans_by`),
  ADD KEY `par_ind11` (`question_id`);

--
-- Indexes for table `user_questions`
--
ALTER TABLE `user_questions`
  ADD PRIMARY KEY (`q_id`),
  ADD KEY `par_ind8` (`cat_id`),
  ADD KEY `par_ind9` (`asked_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions_cat`
--
ALTER TABLE `questions_cat`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `user_answers`
--
ALTER TABLE `user_answers`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `user_questions`
--
ALTER TABLE `user_questions`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
