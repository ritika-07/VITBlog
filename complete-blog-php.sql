-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 07, 2020 at 10:09 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `complete-blog-php`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `views`, `image`, `body`, `published`, `created_at`, `updated_at`) VALUES
(6, 1, 'A day in the life of a VITian', 'a-day-in-the-life-of-a-vitian', 0, 'vit.png', '&lt;p&gt;It is one of the most famous universities present in our country. When you look for engineering you cannot get a better private institution apart from VIT. The campus is very well surrounded, eco-friendly, classy. The number of students are around 25000 which provides a great exposure. The placements are amazing as most of the students return by getting a job from here. The management is very strict and handles everything smoothly. The scope of higher studies are also the best as they provide the best education as well as the guidance to achieve global success.&lt;/p&gt;\r\n\r\n&lt;p&gt;Life is a very broad term. I&amp;rsquo;m going to try and provide you with some facts. Life is good (mostly) and hard (sometimes) because it&amp;rsquo;s a nice package altogether. Career wise you get to study in one of the best engineering colleges in India.&lt;/p&gt;\r\n\r\n&lt;p&gt;The campus is pretty and huge. The infrastructure is good and the library is cool. It is a very green campus. There&amp;rsquo;s ample amount of places that you can hang out with your friends , in and out of VIT. There are many student clubs and chapters in VIT which caters to your interests. It&amp;rsquo;ll give you exposure and some work experience. As a current 2nd year I have experienced plenty of clubs and have had my friends talk about many others so I have a pretty good idea of what you&amp;#39;re going through ðŸ˜’.&lt;/p&gt;\r\n\r\n&lt;p&gt;First things first it completely depends on your interests. VIT has a club for all!&amp;nbsp;As a Btech student I&amp;#39;m kind of a tech-head, and finding a perfect tech club was really confusing early on, As there just too many TBH ðŸ˜‚.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;As per on-Campus restaurant/ cafe&lt;/strong&gt;&amp;nbsp;VIT has four on-campus food places, namely,&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;SJT canteen&lt;/li&gt;\r\n	&lt;li&gt;FC&lt;/li&gt;\r\n	&lt;li&gt;DC&lt;/li&gt;\r\n	&lt;li&gt;Darling canteen.&lt;/li&gt;\r\n	&lt;li&gt;Dominoes ðŸ˜&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;O Oh, and there&amp;rsquo;s also a juice shop near the library, which happens to be my personal favourite.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;As per out-Of-Campus restaurants/cafe: &lt;/strong&gt;There are a decent number of food places around the campus. You&amp;rsquo;ll get almost anything you want.&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Apna dhaba&lt;/li&gt;\r\n	&lt;li&gt;Punjabi mess (the place where you get wonderful paratha&amp;#39;s made by aunty)&lt;/li&gt;\r\n	&lt;li&gt;China Valley&lt;/li&gt;\r\n	&lt;li&gt;Tara ma restaurant&lt;/li&gt;\r\n	&lt;li&gt;Saleem&lt;/li&gt;\r\n	&lt;li&gt;Calcutta rolls&lt;/li&gt;\r\n	&lt;li&gt;Lalit vihar(this place is a bit far from VIT but the food is awesome)&lt;/li&gt;\r\n	&lt;li&gt;Punjabi Dhabba(the one in front of CMC)&lt;/li&gt;\r\n	&lt;li&gt;Places with some what high rates&lt;/li&gt;\r\n	&lt;li&gt;Tom&amp;#39;s Dinner&lt;/li&gt;\r\n	&lt;li&gt;Olive Kitchen&lt;/li&gt;\r\n	&lt;li&gt;GRT&lt;/li&gt;\r\n	&lt;li&gt;100&amp;#39;s heritage&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;Yes, life at VIT can get a bit challenging sometimes. But, I believe it&amp;rsquo;s all preparing you for the harsh world outside of your protected comfort zone. It will teach you to live a balanced and disciplined life. Make sure you give your best, participate in extra-curricular activities, develop hobbies, pick up opportunities and you&amp;rsquo;ll have the time of your life.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;Everything is manageable if you do it right. So, have fun, study, socialise and make memories for life.&lt;/em&gt;&lt;/p&gt;\r\n', 1, '2020-08-27 08:58:27', '2020-08-27 08:58:27'),
(7, 1, 'Printing patterns on java made easy!', 'printing-patterns-on-java-made-easy-', 0, 'java.jpeg', '&lt;h2&gt;Here is a quick an easy solution to print patterns&lt;/h2&gt;\r\n\r\n&lt;p&gt;This can help you get&amp;nbsp;started with your Java programming course if you are a B-tech student. The code is as follows:&lt;/p&gt;\r\n\r\n&lt;p&gt;import java.util.*;&lt;br /&gt;\r\npublic class DecisionMaking&lt;br /&gt;\r\n{&lt;br /&gt;\r\npublic static void main(String[] args)&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;{&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;Scanner sc = new Scanner(System.in);&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;System.out.println(&amp;quot;Enter the number&amp;quot;);&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;int num = sc.nextInt();&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;int count = 1;&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;for ( int row = 1; row &amp;lt;= num; row++)&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;{&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;for ( int column = 1; column &amp;lt;= num; column++)&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;{&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;if(column &amp;gt;= num + 1 - row)&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;System.out.print(&amp;quot;*&amp;quot;);&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;else&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;System.out.print(&amp;quot; &amp;quot;);&amp;nbsp;&amp;nbsp; &amp;nbsp;&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;}&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;for ( int column = 2; column &amp;lt;= num; column++)&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;{&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;if(column &amp;lt;= row )&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;System.out.print(&amp;quot;*&amp;quot;);&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;else&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;System.out.print(&amp;quot; &amp;quot;);&amp;nbsp;&amp;nbsp; &amp;nbsp;&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;}&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;System.out.println();&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;}&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;for ( int row = 2; row &amp;lt;= num; row++)&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;{&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;for ( int column = 1; column &amp;lt;= num; column++)&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;{&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;if(column &amp;gt;= row )&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;System.out.print(&amp;quot;*&amp;quot;);&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;else&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;System.out.print(&amp;quot; &amp;quot;);&amp;nbsp;&amp;nbsp; &amp;nbsp;&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;}&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;for ( int column = 2; column &amp;lt;= num; column++)&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;{&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;if(column &amp;lt;= num + 1 - row)&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;System.out.print(&amp;quot;*&amp;quot;);&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;else&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;System.out.print(&amp;quot; &amp;quot;);&amp;nbsp;&amp;nbsp; &amp;nbsp;&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;}&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;System.out.println();&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;}&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;}&lt;/p&gt;\r\n\r\n&lt;p&gt;}&lt;/p&gt;\r\n', 1, '2020-08-27 09:06:06', '2020-08-27 09:06:06'),
(8, 1, 'History of the VIT tank', 'history-of-the-vit-tank', 0, 'tank.png', '&lt;blockquote&gt;\r\n&lt;p&gt;I still remember it was placed next to hexagon during construction of underground bridge and students used to make fun that they got tanker to make a big hole under railway track.&amp;nbsp;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n\r\n&lt;p&gt;VIT maintains healthy relationship with vellore cantonment and few defence organizations by providing support to their causes and employee welfare. Generally these old tanks which are decommissioned will be sold to iron scrap dealers but it was given to VIT.&lt;/p&gt;\r\n\r\n&lt;p&gt;If VIT wants something from any Govt/Pvt domains they will get it very easily and i can share small incident to tell everyone about power corridors of main building.&lt;/p&gt;\r\n\r\n&lt;p&gt;Everyone knows new bus stand circle under bridge VIT maintains park with security. CMC is just 1.2 KM from that park and they want to develop and maintain it because it&amp;rsquo;s prestige for any organization and CMC,VIT are in neck to neck competition.&lt;/p&gt;\r\n\r\n&lt;p&gt;Corporation and district authorities everyone inclined towards CMC in last movement and Issue got escalated to chancellor and he made couple of calls and city corporation handed over park to VIT in a month.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Specifications:&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;The tank near smv is a decommissioned Vijayanta tank, an India made variant of the British Vicker&amp;#39;s MBT. Indian army widely used them in the 80s, they were used during operation bluestar, but were eventually replaced by the T 72 s.&lt;/p&gt;\r\n', 1, '2020-09-07 19:35:30', '2020-09-07 19:35:30'),
(14, 2, 'Test', 'test', 0, 'timetable.png', '&lt;p&gt;test&lt;/p&gt;\r\n', 0, '2020-09-07 19:36:12', '2020-09-07 19:36:12');

-- --------------------------------------------------------

--
-- Table structure for table `post_topic`
--

CREATE TABLE `post_topic` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_topic`
--

INSERT INTO `post_topic` (`id`, `post_id`, `topic_id`) VALUES
(2, 6, 3),
(1, 7, 1),
(6, 14, 4);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `slug`) VALUES
(1, 'Technology', 'technology'),
(2, 'Academics', 'academics'),
(3, 'Entertainment', 'entertainment'),
(4, 'test1', 'test1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Author','Admin') DEFAULT 'Author',
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `role`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Ritika', 'ritika.kayal2018@vitstudent.ac.in', 'Admin', 'password', '2020-08-24 10:39:58', '2020-08-24 10:39:58'),
(2, 'Nitish123', 'nitish.gopinath2018@vitstudent.ac.in', 'Admin', '1a1dc91c907325c69271ddf0c944bc72', '2020-08-24 14:40:57', '2020-08-24 14:40:57'),
(3, 'test', 'test@gmail.com', 'Author', '098f6bcd4621d373cade4e832627b4f6', '2020-08-24 16:36:11', '2020-08-24 16:36:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post_topic`
--
ALTER TABLE `post_topic`
  ADD PRIMARY KEY (`id`,`topic_id`),
  ADD UNIQUE KEY `post_id` (`post_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `post_topic`
--
ALTER TABLE `post_topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `post_topic`
--
ALTER TABLE `post_topic`
  ADD CONSTRAINT `post_topic_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `post_topic_ibfk_2` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
