-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2022 at 05:56 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payroll_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(30) UNSIGNED NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(2, 'CABIN W', 'cabin workers', '2022-06-23 09:07:05', '2022-11-21 10:05:46'),
(3, 'BODY W', 'Body workers', '2022-06-23 09:07:05', '2022-11-21 09:59:57'),
(4, 'AFD', 'Accounting  Department', '2022-06-23 09:07:05', '2022-11-21 09:52:31'),
(6, 'SS', 'Security', '2022-11-21 08:51:33', '2022-11-21 09:59:34'),
(7, 'CC', 'Container workers ', '2022-11-21 09:53:38', '2022-11-21 09:53:38'),
(8, 'DD', 'Drivers', '2022-11-21 09:54:34', '2022-11-21 09:54:34'),
(9, 'ccw', 'company coul workers', '2022-11-21 09:55:27', '2022-11-21 09:55:27');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(30) UNSIGNED NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(2, 'CABIN W', 'cabin workers', '2022-06-23 09:13:21', '2022-11-21 09:57:44'),
(3, 'CONTAINER W', 'container workers ', '2022-06-23 09:13:21', '2022-11-21 09:57:27'),
(4, 'Body W', 'Body Workers', '2022-06-23 09:13:21', '2022-11-21 09:58:00'),
(5, 'AC', 'Accountant', '2022-06-23 09:13:21', '2022-11-21 09:58:19'),
(6, 'DRIVER', 'Driver', '2022-06-23 09:13:21', '2022-11-21 09:58:33'),
(7, 'Company C W', 'Company Coul workers', '2022-06-23 09:13:21', '2022-11-21 09:58:53'),
(8, 'Security G', 'Security Guard', '2022-06-23 09:13:21', '2022-11-21 09:59:07');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(30) UNSIGNED NOT NULL,
  `department_id` int(30) UNSIGNED NOT NULL,
  `designation_id` int(30) UNSIGNED NOT NULL,
  `code` varchar(100) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `middle_name` varchar(250) DEFAULT '',
  `last_name` varchar(250) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(250) NOT NULL,
  `date_hired` date NOT NULL,
  `salary` float(12,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `department_id`, `designation_id`, `code`, `first_name`, `middle_name`, `last_name`, `dob`, `gender`, `email`, `date_hired`, `salary`, `status`, `created_at`, `updated_at`) VALUES
(32, 4, 5, '11', 'suresh', 'mavji', 'khambla', '1892-10-12', 'Male', 's@gmail.com', '2022-11-01', 10000.00, 1, '2022-11-21 10:02:44', '2022-11-21 10:10:08'),
(33, 7, 2, '22', 'bhatyo', 'ramesh', 'bohakiya', '1992-07-20', 'Male', 'b@gmail.com', '2022-11-01', 20000.00, 1, '2022-11-21 10:04:19', '2022-11-21 10:04:19'),
(34, 2, 3, '33', 'ramesh', 'kanji', 'khoda', '1994-01-12', 'Male', 'r@gmail.com', '2022-11-01', 30000.00, 1, '2022-11-21 10:05:23', '2022-11-21 10:05:23'),
(35, 3, 4, '44', 'amrsinh', 'jitubhai', 'patil', '1990-02-07', 'Male', 'am@gmail.com', '2022-11-01', 40000.00, 1, '2022-11-21 10:07:29', '2022-11-21 10:07:29'),
(36, 6, 8, '55', 'devabhai', 'leavabhai', 'javani', '1998-10-13', 'Male', 'deva@gmail.com', '2022-11-01', 5000.00, 1, '2022-11-21 10:09:34', '2022-11-21 10:09:34'),
(37, 9, 7, '66', 'imran', 'jehahudinbhai', 'maulana', '1992-03-04', 'Male', 'im@gmail.com', '2022-11-01', 25000.00, 1, '2022-11-21 10:12:29', '2022-11-21 10:12:29'),
(38, 8, 6, '77', 'iqbal', 'shubhanallah bhai', 'bismilaah', '2022-11-01', 'Male', 'iqbal@gmail.com', '2022-11-01', 30000.00, 1, '2022-11-21 10:15:20', '2022-11-21 10:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2022-06-18-005419', 'App\\Database\\Migrations\\Authentication', 'default', 'App', 1655945989, 1),
(2, '2022-06-23-004252', 'App\\Database\\Migrations\\Department', 'default', 'App', 1655945989, 1),
(3, '2022-06-23-004521', 'App\\Database\\Migrations\\Designation', 'default', 'App', 1655945989, 1),
(4, '2022-06-23-005222', 'App\\Database\\Migrations\\Employee', 'default', 'App', 1655945990, 1),
(5, '2022-06-23-034207', 'App\\Database\\Migrations\\Payroll', 'default', 'App', 1655956354, 2),
(6, '2022-06-23-040112', 'App\\Database\\Migrations\\Payslip', 'default', 'App', 1655964506, 3),
(7, '2022-06-23-050647', 'App\\Database\\Migrations\\PayslipEarnings', 'default', 'App', 1655964506, 3),
(8, '2022-06-23-050657', 'App\\Database\\Migrations\\PayslipDeductions', 'default', 'App', 1655964507, 3);

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

CREATE TABLE `payrolls` (
  `id` int(30) UNSIGNED NOT NULL,
  `code` varchar(100) NOT NULL,
  `title` varchar(250) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payrolls`
--

INSERT INTO `payrolls` (`id`, `code`, `title`, `from_date`, `to_date`, `created_at`, `updated_at`) VALUES
(6, 'November#001', 'November payroll', '2022-11-01', '2022-11-30', '2022-11-21 10:16:51', '2022-11-21 10:16:51');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_deductions`
--

CREATE TABLE `payroll_deductions` (
  `payslip_id` int(30) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `amount` float(12,2) NOT NULL DEFAULT 0.00,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payroll_deductions`
--

INSERT INTO `payroll_deductions` (`payslip_id`, `name`, `amount`, `created_at`, `updated_at`) VALUES
(17, 'not working properly', 6000.00, '2022-11-21 10:21:24', '2022-11-21 10:21:24'),
(19, 'bad behavouir', 100.00, '2022-11-21 10:23:55', '2022-11-21 10:23:55');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_earnings`
--

CREATE TABLE `payroll_earnings` (
  `payslip_id` int(30) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `amount` float(12,2) NOT NULL DEFAULT 0.00,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payroll_earnings`
--

INSERT INTO `payroll_earnings` (`payslip_id`, `name`, `amount`, `created_at`, `updated_at`) VALUES
(14, 'bonus', 2000.00, '2022-11-21 10:17:55', '2022-11-21 10:17:55'),
(15, 'overtime', 500.00, '2022-11-21 10:18:53', '2022-11-21 10:18:53'),
(17, 'diwaali bonus', 5000.00, '2022-11-21 10:21:24', '2022-11-21 10:21:24'),
(18, 'diwaali bonus', 500.00, '2022-11-21 10:22:29', '2022-11-21 10:22:29'),
(19, 'diwali', 500.00, '2022-11-21 10:23:55', '2022-11-21 10:23:55');

-- --------------------------------------------------------

--
-- Table structure for table `payslips`
--

CREATE TABLE `payslips` (
  `id` int(30) UNSIGNED NOT NULL,
  `payroll_id` int(30) UNSIGNED NOT NULL,
  `employee_id` int(30) UNSIGNED NOT NULL,
  `salary` float(12,2) NOT NULL DEFAULT 0.00,
  `present` float(12,2) NOT NULL DEFAULT 0.00,
  `late_undertime` float(12,2) NOT NULL DEFAULT 0.00,
  `witholding_tax` float(12,2) NOT NULL DEFAULT 0.00,
  `net` float(12,2) NOT NULL DEFAULT 0.00,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payslips`
--

INSERT INTO `payslips` (`id`, `payroll_id`, `employee_id`, `salary`, `present`, `late_undertime`, `witholding_tax`, `net`, `created_at`, `updated_at`) VALUES
(14, 6, 32, 10000.00, 20.00, 20.00, 0.00, 11071.97, '2022-11-21 10:17:55', '2022-11-21 10:17:55'),
(15, 6, 33, 20000.00, 25.00, 0.00, 0.00, 23227.27, '2022-11-21 10:18:53', '2022-11-21 10:18:53'),
(16, 6, 34, 30000.00, 25.00, 0.00, 100.00, 34290.91, '2022-11-21 10:19:53', '2022-11-21 10:19:53'),
(17, 6, 35, 40000.00, 21.00, 10.00, 0.00, 37143.94, '2022-11-21 10:21:24', '2022-11-21 10:21:24'),
(18, 6, 36, 5000.00, 28.00, 20.00, 0.00, 6854.17, '2022-11-21 10:22:29', '2022-11-21 10:22:29'),
(19, 6, 37, 25000.00, 30.00, 0.00, 20.00, 34470.91, '2022-11-21 10:23:55', '2022-11-21 10:23:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'KENIL', 'khumbal@gmail.com', '$2y$10$Rg2rMYk01s517EysfOYZNuniQ6jhGz.Yq2NXu04IrYwS0XhJcWHby', '2022-06-23 09:35:38', '2022-08-26 13:38:54'),
(2, 'harsh', 'hk@gmail.com', '$2y$10$jocpaOa5AHEYwh0nNW34IOYaa9KUxz6G8M8hmeUuGwbI943RMuW6S', '2022-08-26 13:42:43', '2022-10-20 10:57:11'),
(4, 'sarthak', 'sarthk@gmail.com', '$2y$10$VrgXNVp0m3StP38.wufnEulDm3buF3TiDzMWZZUv0QSA6dTN3ShKC', '2022-11-21 09:07:17', '2022-11-21 09:07:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `designation_id` (`designation_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_deductions`
--
ALTER TABLE `payroll_deductions`
  ADD KEY `payslip_id` (`payslip_id`);

--
-- Indexes for table `payroll_earnings`
--
ALTER TABLE `payroll_earnings`
  ADD KEY `payslip_id` (`payslip_id`);

--
-- Indexes for table `payslips`
--
ALTER TABLE `payslips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payroll_id` (`payroll_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(30) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(30) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(30) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` int(30) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payslips`
--
ALTER TABLE `payslips`
  MODIFY `id` int(30) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `employees_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `payroll_deductions`
--
ALTER TABLE `payroll_deductions`
  ADD CONSTRAINT `payroll_deductions_payslip_id_foreign` FOREIGN KEY (`payslip_id`) REFERENCES `payslips` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `payroll_earnings`
--
ALTER TABLE `payroll_earnings`
  ADD CONSTRAINT `payroll_earnings_payslip_id_foreign` FOREIGN KEY (`payslip_id`) REFERENCES `payslips` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `payslips`
--
ALTER TABLE `payslips`
  ADD CONSTRAINT `payslips_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `payslips_payroll_id_foreign` FOREIGN KEY (`payroll_id`) REFERENCES `payrolls` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
