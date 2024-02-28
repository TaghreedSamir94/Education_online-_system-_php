-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2024 at 06:29 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `education_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `full_name` varchar(255) NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`full_name`, `admin_id`, `admin_name`, `email`, `password`) VALUES
('lighto kira', 8, 'kira', 'kom@test.bm', '$2y$10$a9TfdvEwYQrurUOCwy1G8ubKs9FijI1TqPTbaNebTGnhiv6UHiS.O'),
('Tom jerry', 15, 'Tom', 'T@asd.com', '$2y$10$.aV6QEzHmJ75fPHszj375uZqbBkFuNtHEhEXlmWRkxmkBXNCUeUWm');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_name`, `category_id`) VALUES
('Marktings', 1),
('Computer Science', 2),
('Language Learning', 3),
('Arts and Humanities', 4),
('Math and Logic', 5);

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `meeting_id` int(50) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `locatin` varchar(255) NOT NULL,
  `instructor_name` varchar(100) NOT NULL,
  `meeting_date` date NOT NULL,
  `price` double(255,2) NOT NULL,
  `description` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(500) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `category_id` int(50) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`meeting_id`, `title`, `locatin`, `instructor_name`, `meeting_date`, `price`, `description`, `content`, `image`, `active`, `category_id`) VALUES
(8, 'Blockchain Basics', 'University at Buffalo', 'Bina Ramamurthy', '2024-03-14', 300.00, ' Skills you will gain Blockchain, Cryptography, Algorithms, Problem Solving..', 'This first course of the Blockchain specialization provides a broad overview of the essential concepts of blockchain technology – by initially exploring the Bitcoin protocol followed by the Ethereum protocol – to lay the foundation necessary for developing applications and programming. You will be equipped with the knowledge needed to create nodes on your personal Ethereum blockchain, create accounts, unlock accounts, mine, transact, transfer Ethers, and check balances.       \r\n\r\nYou will learn about the decentralized peer-to-peer network, an immutable distributed ledger and the trust model that defines a blockchain. This course enables you to explain basic components of a blockchain (transaction, block, block header, and the chain) its operations (verification, validation, and consensus model) underlying algorithms, and essentials of trust (hard fork and soft fork). Content includes the hashing and cryptography foundations indispensable to blockchain programming, which is the focus of two subsequent specialization courses, Smart Contracts and Decentralized Applications (Dapps). You will work on a virtual machine image, specifically created for this course, to build an Ethereum test chain and operate on the chain. This hands-on activity will help you understand the workings of a blockchain, its transactions, blocks and mining.\r\n\r\nMain concepts are delivered through videos, demos and hands-on exercises.', 'Blockchain-Technology.png', 1, 2),
(9, 'Music Theory', 'The University of Edinburgh', 'Dr Thomas Butler', '2024-03-10', 200.00, 'Skills you will gain: Notation, Scales, Chords, Harmony, Rhythm, and Songwriting..', 'There are 6 modules in this course\r\nThis course, revised in 2022, will introduce you to the theory of music, providing you with the skills needed to read and write Western music notation, as well as to understand, analyse, and listen informedly.\r\n\r\nIt will cover material such as pitches and scales, intervals, clefs, rhythm, form, metre and time signatures, phrases and cadences, and basic harmony.\r\n\r\nThis course covers the fundamentals of Western music theory, from the absolute basics to some more advanced concepts. As such, it delivers material for beginners and offers much to experienced musicians alike.', 'e07f.jpg', 1, 4),
(10, 'First Step Korean', 'Yonsei University', 'Seung Hae Kang', '2024-05-05', 100.00, ' Skills you will gain: Grammar, Writing, Korean Language, Speech, and communications skills.', 'This is an elementary-level Korean language course, consisting of 5 lessons with 4 units, and covers 4 skills: reading, writing, listening and speaking. The main topics include basic expressions used in everyday life, such as greetings, introducing yourself, talking about your family and a daily life and so on. Each lesson covers dialogues, pronunciation, vocabulary, grammar, quizzes and role-plays. \r\n\r\nAfter completing this course, you will be able to\r\n1. read and write Korean alphabet.\r\n2. communicate in Korean with basic expressions.\r\n3. learn basic knowledge on Korean culture.\r\n\r\nIt’s fun and easy to follow! Enjoy it!', '360_F_395509261_MxaoUVUNcQBxf5Rcb1VuAmsp7136rdi4.jpg', 1, 3),
(11, 'Social Media Marketing', 'Northwestern University', 'Randy Hlavac', '2024-06-19', 350.00, 'Skills you will gain: Marketing, Social Media, Communication, Digital Marketing,and Writing', 'In a 2018 survey of businesses, Buffer found that only 29% had effective social media marketing programs.    A recent survey of consumers by Tomoson found 92% of consumers trust recommendations from other people over brand content, 70% found consumer reviews to be their second most trusted source, 47% read blogs developed by influencers and experts to discover new trends and new ideas and 35% used blogs to discover new products and services.  Also, 20% of women who used social considered products promoted by bloggers they knew.   Today, businesses and consumers use social media to make their purchase decisions.\r\n\r\nCreated in 2014, this Specialization is updated every quarter to ensure you are receiving the most up-to-date training.  The Social Media Marketing Specialization is designed to achieve two objectives.  It gives you the social analytics tools, and training to help you become an influencer on social media.  The course also gives you the knowledge and resources to build a complete social media marketing strategy – from consumer insights to final justification metrics.  In each course, you will also receive special toolkits with timely information & when you pay for the Capstone, you receive a market planning toolkit.', 'Banner_image.jpg', 1, 1),
(12, 'Introduction to Calculus', 'The University of Sydney', 'David Easdown', '2024-04-21', 500.00, 'Skills you will gain: Algebra, Calculus, Mathematical Theory & Analysis, Mathematics..', 'The focus and themes of the Introduction to Calculus course address the most important foundations for applications of mathematics in science, engineering and commerce. The course emphasises the key ideas and historical motivation for calculus, while at the same time striking a balance between theory and application, leading to a mastery of key threshold concepts in foundational mathematics. \r\n\r\nStudents taking Introduction to Calculus will: \r\n•	gain familiarity with key ideas of precalculus, including the manipulation of equations and elementary functions (first two weeks), \r\n•	develop fluency with the preliminary methodology of tangents and limits, and the definition of a derivative (third week),\r\n•	develop and practice methods of differential calculus with applications (fourth week),\r\n•	develop and practice methods of the integral calculus (fifth week).', 'Linear-Algebra.jpg', 1, 5),
(13, 'Web Development', 'University of California, Davis', 'Daniel Randall', '2024-03-08', 650.00, 'Skills you will gain: HTML and CSS, Computer Programming, Front-End Web Development, ..', 'This course is designed to start you on a path toward future studies in web development and design, no matter how little experience or technical knowledge you currently have. The web is a very big place, and if you are the typical internet user, you probably visit several websites every day, whether for business, entertainment or education. But have you ever wondered how these websites actually work? How are they built? How do browsers, computers, and mobile devices interact with the web? What skills are necessary to build a website? With almost 1 billion websites now on the internet, the answers to these questions could be your first step toward a better understanding of the internet and developing a new set of internet skills.  \r\n\r\nBy the end of this course you’ll be able to describe the structure and functionality of the world wide web, create dynamic web pages using a combination of HTML, CSS, and JavaScript, apply essential programming language concepts when creating HTML forms, select an appropriate web hosting service, and publish your webpages for the world to see. Finally, you’ll be able to develop a working model for creating your own personal or business websites in the future and be fully prepared to take the next step in a more advanced web development or design course or specialization.', 'web.jpg', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `date` date NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_id` int(50) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `users_type` enum('Instructor','Student') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`date`, `user_name`, `user_id`, `full_name`, `email`, `password`, `active`, `users_type`) VALUES
('2024-02-23', 'konan', 2, 'konan senshi', 'k@as.com', '$2y$10$5v0t2jwEb2RlcMcevk7fZ.fHWFaucuzIEXkYO7NAOdl7zE6.pX86C', 1, 'Student'),
('2024-02-23', 'Dani', 3, 'Dani felta', 'dd@asd.com', '$2y$10$eqiAKGx5FkApx4GrRkop.unxWCrmgiBPEVoNAsT5pYuejyQTZk49C', 0, 'Instructor'),
('2024-02-23', 'dexiter', 4, 'Dexter dd', 'd@didi.com', '$2y$10$BRJbRANSrQNNR0pwTsQwxeJeG94bItxRoiGzxgKvSfXXWnGR6KAVu', 0, 'Instructor'),
('2024-02-23', 'karen', 5, 'Shamshoon', 'nm@asd.com', '$2y$10$zsy5z/irmTzHTm5VWPHqK.1J5vRghLGRw4JcOnb5R77quSCT/Urma', 1, 'Student'),
('2024-02-23', 'jerry', 6, 'jerry rat', 'b@h.com', '$2y$10$.6G/MuYDm.vElKnA6Ms4VuN7Xhv06ckxksqLytsBA/cN5Cs/khf6y', 1, 'Student'),
('2024-02-23', 'gingr', 7, 'ginger mory', 'g@23.com', '$2y$10$kpLKnn7Ypx7NyuNXtoBaJOLS.yJdDxQO4G.kbK8vPnNr0a7ATL0gq', 1, 'Student'),
('2024-02-24', 'Harry_2023', 11, 'Harry Potter', 'h@hog.com', '$2y$10$lVWNMoS359zno89ZVJBQ6eeG8fdKCXLz7Q/5BFjwijU7Vr/8T9sB2', 0, 'Instructor'),
('2024-02-26', 'spongo', 16, 'Spong pop squair pants', 'spong@123.com', '$2y$10$F8xQmJSq3NUxUJfIiR71kOXiAj6I764.Jqrt8PSamCVw17WnucI8C', 1, 'Instructor'),
('2024-02-28', 'Baset', 17, 'baseet nagm', 'Baseet@asd.com', '$2y$10$Lqgl8OQZrzL6MkanZxex3.uX0tnMzNQZRC9DTKoSNd/AQOqtqdDXS', 1, 'Student'),
('2024-02-28', 'ham ham', 19, 'hamtaro ', 'h@asd.com', '$2y$10$O4Wb72m6zL9h4XLtnl7/euugJq2J9WznG0TkSwXjnWM/0k4BF/9py', 1, 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `users_meetings`
--

CREATE TABLE `users_meetings` (
  `user_id` int(50) UNSIGNED NOT NULL,
  `meeting_id` int(50) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_name` (`admin_name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`meeting_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `users_meetings`
--
ALTER TABLE `users_meetings`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meeting_id` (`meeting_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `meeting_id` int(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meetings_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_meetings`
--
ALTER TABLE `users_meetings`
  ADD CONSTRAINT `users_meetings_ibfk_1` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`meeting_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_meetings_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
