-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2024 at 10:41 PM
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
-- Database: `web`
--

-- --------------------------------------------------------

--
-- Table structure for table `beli_album`
--

CREATE TABLE `beli_album` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `album` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `harga` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beli_album`
--

INSERT INTO `beli_album` (`id`, `nama`, `album`, `alamat`, `harga`) VALUES
(1, 'Jennie', '11th Mini Album \'SEVENTEENTH HEAVEN\' (Set)', 'Kost Putri Omika, Sinduadi, Mlati, Sleman, D.I.Y. Yogyakarta', 780000.00);

-- --------------------------------------------------------

--
-- Table structure for table `beli_paket`
--

CREATE TABLE `beli_paket` (
  `transaction_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `harga` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beli_paket`
--

INSERT INTO `beli_paket` (`transaction_id`, `nama`, `course`, `alamat`, `harga`) VALUES
(5, 'Jennie', 'LCP Basic CSS & HTML programming', 'JL. Mawar no 7, Cileunyi, Bandung, Jawa Barat', 2100000.00);

-- --------------------------------------------------------

--
-- Table structure for table `chart`
--

CREATE TABLE `chart` (
  `id` int(10) NOT NULL,
  `revenue` int(10) NOT NULL,
  `profit` int(30) NOT NULL,
  `cost` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chart`
--

INSERT INTO `chart` (`id`, `revenue`, `profit`, `cost`) VALUES
(1, 10000, 5000, 5000),
(2, 15000, 7500, 7500),
(3, 12000, 6000, 6000),
(4, 18000, 9000, 9000);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` int(10) NOT NULL,
  `instructor` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  `enrollment_limit` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `nama`, `description`, `price`, `instructor`, `start_date`, `duration`, `enrollment_limit`, `created_at`, `updated_at`) VALUES
(1, 'LCP Basic SQL Programming', 'Learn the basics of SQL programming with the LCP Basic SQL Programming course.', 550000, 'Jennie Kim', '2024-01-10', '6 months', 50, '2024-01-04 02:40:15', '2024-01-04 02:41:27'),
(2, 'LCP Basic Python Programming (Beginners)', 'Introduction to Python programming for beginners.', 1100000, 'Christhoper', '2024-01-10', '6 months', 50, '2024-01-04 02:40:15', '2024-01-04 02:41:40'),
(3, 'LCP Basic CSS & HTML Programming', 'Explore the basics of CSS and HTML programming with the LCP Basic CSS & HTML Programming course.', 700000, 'Chris Path', '2024-01-10', '6 months', 50, '2024-01-04 02:40:15', '2024-01-04 02:56:21'),
(4, 'LCP Basic Java Programming', 'Introduction to Java programming language.', 2100000, 'Dhonny Kim', '2024-01-10', '6 months', 50, '2024-01-04 02:40:15', '2024-01-04 02:56:30'),
(5, 'LCP Basic Ruby Programming', 'Learn the fundamentals of Ruby programming.', 500000, 'Ruby Jane', '2024-01-10', '6 months', 50, '2024-01-04 02:40:15', '2024-01-04 02:56:38');

-- --------------------------------------------------------

--
-- Table structure for table `datakonsumen`
--

CREATE TABLE `datakonsumen` (
  `id` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` int(15) NOT NULL,
  `joining_date` date NOT NULL,
  `booking_class` varchar(30) NOT NULL,
  `course` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datakonsumen`
--

INSERT INTO `datakonsumen` (`id`, `nama`, `email`, `contact`, `joining_date`, `booking_class`, `course`) VALUES
(1, 'John Doe', 'john.doe@email.com', 1234567890, '2024-01-02', 'python', ''),
(2, 'Jane Smith', 'jane.smith@email.com', 2147483647, '2024-01-03', '', ''),
(3, 'Ahmad Abdullah', 'ahmad.abdullah@email.com', 2147483647, '2024-01-04', '', ''),
(4, 'Maria Rodriguez', 'maria.rodriguez@email.com', 2147483647, '2024-01-05', '', ''),
(5, 'John Doe', 'john.doe@email.com', 1234567890, '2024-01-04', 'Class A', 'Programming 101'),
(6, 'Jane Smith', 'jane.smith@email.com', 2147483647, '2024-01-04', 'Class B', 'Web Development Basics'),
(7, 'Alice Johnson', 'alice.johnson@email.com', 2147483647, '2024-01-04', 'Class C', 'Data Science Fundamentals'),
(8, 'Bob Anderson', 'bob.anderson@email.com', 2147483647, '2024-01-04', 'Class A', 'Machine Learning Basics'),
(9, 'Eva Williams', 'eva.williams@email.com', 2147483647, '2024-01-04', 'Class B', 'JavaScript Fundamentals'),
(10, 'Michael Brown', 'michael.brown@email.com', 2147483647, '2024-01-04', 'Class C', 'Python for Beginners'),
(11, 'Sophia Davis', 'sophia.davis@email.com', 2147483647, '2024-01-04', 'Class A', 'Java Programming'),
(12, 'David Miller', 'david.miller@email.com', 2147483647, '2024-01-04', 'Class B', 'Database Management'),
(13, 'Olivia Martinez', 'olivia.martinez@email.com', 2147483647, '2024-01-04', 'Class C', 'Cybersecurity Basics'),
(14, 'William Taylor', 'william.taylor@email.com', 123456789, '2024-01-04', 'Class A', 'Networking Essentials');

-- --------------------------------------------------------

--
-- Table structure for table `demo`
--

CREATE TABLE `demo` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `enrollment_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `enrollment_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) NOT NULL,
  `todo` varchar(140) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `user_id` bigint(20) DEFAULT NULL,
  `token_access` text DEFAULT NULL,
  `token_refresh` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `transaction_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `username` varchar(230) NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` varchar(128) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'daisyluv', 'ama01@xyz.com', 'ama123', '2024-01-10 20:30:10', '2024-01-10 20:30:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beli_album`
--
ALTER TABLE `beli_album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beli_paket`
--
ALTER TABLE `beli_paket`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `chart`
--
ALTER TABLE `chart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datakonsumen`
--
ALTER TABLE `datakonsumen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`enrollment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `course_id` (`course_id`);

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
-- AUTO_INCREMENT for table `beli_album`
--
ALTER TABLE `beli_album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `beli_paket`
--
ALTER TABLE `beli_paket`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chart`
--
ALTER TABLE `chart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `datakonsumen`
--
ALTER TABLE `datakonsumen`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `enrollment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `datakonsumen` (`id`),
  ADD CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);

--
-- Constraints for table `todos`
--
ALTER TABLE `todos`
  ADD CONSTRAINT `todos_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `datakonsumen` (`id`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
