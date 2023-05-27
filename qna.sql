-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2023 at 05:00 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `like_id` int(11) NOT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions_cat`
--

CREATE TABLE `questions_cat` (
  `cat_id` int(11) NOT NULL,
  `cat` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `questions_cat`
--

INSERT INTO `questions_cat` (`cat_id`, `cat`) VALUES
(2, 'Programming'),
(5, 'History'),
(3, 'Technology'),
(4, 'Current Affairs'),
(1, 'General'),
(6, 'Politics'),
(7, 'Sports');

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
  `image` text DEFAULT NULL,
  `verified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `Name`, `email`, `pass`, `notify`, `image`, `verified`) VALUES
(95, 'Om Patil', 'ompatil0467@gmail.com', 'OmP@til0467', NULL, NULL, 0),
(100, 'xyz', 'xyz@gmail.com', '123', NULL, NULL, 0),
(109, 'Ram More', 'ram@gmail.com', 'ram123', NULL, NULL, 0),
(113, 'xyz', 'abc@gmail.com', 'abc', NULL, NULL, 0),
(122, 'Suresh', 'suresh@gmail.com', 'Suresh@123456', NULL, NULL, 0),
(123, 'qwe', 'qwe@gmail.com', 'Abc@123456', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_answers`
--

CREATE TABLE `user_answers` (
  `answer_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` text DEFAULT NULL,
  `ans_by` varchar(55) DEFAULT NULL,
  `like_count` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_answers`
--

INSERT INTO `user_answers` (`answer_id`, `question_id`, `answer`, `ans_by`, `like_count`) VALUES
(125, 79, '2 + 2 = 4', '95', 4),
(122, 72, 'Object-oriented programming has a sweeping impact because it appeals at multiple levels and promises faster and cheaper development and maintenance. It follows a bottom-up approach to develop applications.\nThe word object-oriented is the combination of two words i.e. object and oriented. The dictionary meaning of the object is an article or entity that exists in the real world. The meaning of oriented is interested in a particular kind of thing or entity. In layman\'s terms, it is a programming pattern that rounds around an object or entity are called object-oriented programming.', '109', 1),
(121, 77, 'Artificial intelligence (AI) is a wide-ranging branch of computer science concerned with building smart machines capable of performing tasks that typically require human intelligence. While AI is an interdisciplinary science with multiple approaches, advancements in machine learning and deep learning, in particular, are creating a paradigm shift in virtually every sector of the tech industry. \n\nArtificial intelligence allows machines to model, or even improve upon, the capabilities of the human mind. And from the development of self-driving cars to the proliferation of smart assistants like Siri and Alexa, AI is increasingly becoming part of everyday life â€” and an area companies across every industry are investing in.', '109', 1),
(120, 76, 'The largest country in the world is Russia with a total area of 17,098,242 KmÂ² (6,601,665 miÂ²) and a land area of 16,376,870 KmÂ² (6,323,142 miÂ²), equivalent to 11% of the total world\'s landmass of 148,940,000 KmÂ² (57,510,000 square miles)', '109', 1),
(119, 75, 'A player is in an offside position if: any part of the head, body or feet is in the opponents\' half (excluding the halfway line) and. any part of the head, body or feet is nearer to the opponents\' goal line than both the ball and the second-last opponent', '109', 1),
(118, 74, 'Chandrachud has been appointed as the new Chief Justice of India on 9th November 2022. Justice Chandrachud is the 50th CJI and has taken over the post from Justice U.U Lalit who served a brief term as India\'s 49th Chief Justice. This article gives the list of Chief justice of India and their tenure.', '109', 1),
(117, 73, 'Rajaraja Chola I, considered as the greatest king of the Chola Empire by many, ruled between 985 and 1014 C.E. He laid the foundation for the growth of the Chola kingdom into an empire, by conquering the kingdoms of southern India and the Chola Empire expanded as far as Sri Lanka in the south, and Kalinga (Orissa) in the northeast. He fought many battles with the Chalukyas in the north and the Pandyas in the south. By conquering Vengi, Rajaraja laid the foundations for the Chalukya Chola dynasty. He invaded Sri Lanka and started a century-long Chola occupation of the island.\nHe streamlined the administrative system with the division of the country into various districts and by standardizing revenue collection through systematic land surveys. He built the magnificent Brihadisvara Temple in Thanjavur and through it enabled wealth distribution among his subjects. His successes enabled the splendid achievements of his son Rajendra Chola I under whom the empire attained the greatest extent and carried its conquest beyond the seas.', '109', 33),
(127, 79, '2 + 2  =  square root of 16\n', '109', 5),
(128, 72, 'OOP', '109', 2),
(129, 73, 'Chola King', '109', 19),
(130, 74, 'Chandrachud', '109', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_questions`
--

CREATE TABLE `user_questions` (
  `q_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `question` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `asked_by` varchar(55) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_questions`
--

INSERT INTO `user_questions` (`q_id`, `cat_id`, `question`, `description`, `asked_by`) VALUES
(73, 5, 'Who was Raj Raj Chola ?', '', '95'),
(74, 4, 'Who is present chief justice of India ?', '', '95'),
(75, 7, 'What is offside rule in football ?', '', '95'),
(76, 1, 'Which is the largest country in the world ?', '', '95'),
(77, 3, 'what is Artificial Intelligence ?', '', '95'),
(79, 1, 'What is 2 + 2', '', '95'),
(72, 2, 'What is Object-Oriented Programming?', '', '95');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`like_id`),
  ADD KEY `answer_id` (`answer_id`),
  ADD KEY `u_id` (`u_id`);

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
  MODIFY `u_id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `user_answers`
--
ALTER TABLE `user_answers`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `user_questions`
--
ALTER TABLE `user_questions`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
