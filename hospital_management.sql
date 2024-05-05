-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2024 at 07:45 AM
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
-- Database: `hospital_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(200) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `phone` text NOT NULL,
  `date_of_birth` text NOT NULL,
  `gender` text NOT NULL,
  `address` text NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `phone`, `date_of_birth`, `gender`, `address`, `photo`) VALUES
(2, 'Samio', 'samiohasan6@gmail.com', 'Samio@123', '+8801709801305', '2001-02-24', 'male', 'Dhaka', 'admin_pic.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(200) NOT NULL,
  `patient_name` text NOT NULL,
  `doctor` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `patient_name`, `doctor`, `date`) VALUES
(1, 'Emily Davis', 'Dr. Sarah Johnson', '2024-05-14'),
(2, 'John Smith', 'Dr. Michael Lee', '2024-05-15'),
(3, 'Jessica Brown', 'Dr. David Wilson', '2024-05-16'),
(4, 'Michael Lee', 'Dr. Emily Davis', '2024-05-17'),
(5, 'Amanda White', 'Dr. Jessica Brown', '2024-05-18'),
(6, 'Matthew Taylor', 'Dr. Olivia Clark', '2024-05-19'),
(7, 'Olivia Clark', 'Dr. Amanda White', '2024-05-20'),
(8, 'Sophia Allen', 'Dr. Christopher Martinez', '2024-05-21'),
(9, 'Benjamin Carter', 'Dr. Lily Adams', '2024-05-22'),
(10, 'Lily Adams', 'Dr. Benjamin Carter', '2024-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(200) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `phone` text NOT NULL,
  `department` text NOT NULL,
  `specialization` text NOT NULL,
  `experience_year` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `name`, `email`, `password`, `phone`, `department`, `specialization`, `experience_year`) VALUES
(1, 'Dr. John Smith', 'john.smith11@gamil.com', 'password123', '+8801745342512', 'Cardiology', 'Interventional Cardiology', '12'),
(2, 'Dr. Sarah Johnson', 'sarah.johnson22@gmail.com', 'doctor456', '+8801756432154', 'Pediatrics', 'Neonatology', '8'),
(3, 'Dr. Michael Lee', 'michael.lee33@gmail.com', 'pass123', '+8801767543216', 'Orthopedics', 'Sports Medicine', '10'),
(4, 'Dr. Emily Davis', 'emily.davis44@gmail.com', 'doctor789', '+8801778654329', 'Neurology', 'Neurophysiology', '15'),
(6, 'samio hasan', 'samiohasan6@gmail.com', 'Samio@123', '+8801709801305', 'Dermatology', 'Cosmetic Dermatology', '12');

-- --------------------------------------------------------

--
-- Table structure for table `medical_equipment`
--

CREATE TABLE `medical_equipment` (
  `id` int(200) NOT NULL,
  `name` text NOT NULL,
  `price` int(200) NOT NULL,
  `quantity` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medical_equipment`
--

INSERT INTO `medical_equipment` (`id`, `name`, `price`, `quantity`) VALUES
(1, 'Stethoscope', 200, '7'),
(2, 'Blood Pressure Monitor', 100, '5'),
(3, 'Oxygen Concentrator', 1500, '2'),
(4, 'MRI Machine', 2500000, '1'),
(5, 'Ultrasound Machine', 50000, '3'),
(6, 'Defibrillator', 3000, '4'),
(7, 'Surgical Instruments Set', 1000, '8'),
(8, 'ECG Machine', 3000, '3'),
(9, 'Infusion Pump', 1500, '6'),
(10, 'Patient Monitoring System', 5000, '2');

-- --------------------------------------------------------

--
-- Table structure for table `medical_stuff`
--

CREATE TABLE `medical_stuff` (
  `id` int(200) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `phone` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medical_stuff`
--

INSERT INTO `medical_stuff` (`id`, `name`, `email`, `password`, `phone`) VALUES
(1, 'Diya Jahan', 'diyajahan45@gmail.com', 'Diya@123', '+88017086232386'),
(2, 'John Doe', 'johndoe@example.com', 'john123', '+8801712345678'),
(3, 'Alice Smith', 'alice.smith@example.com', 'alicepass', '+8801723456789'),
(4, 'Michael Johnson', 'michael.johnson@example.com', 'michaelpwd', '+8801734567890'),
(5, 'Emily Brown', 'emily.brown@example.com', 'emilypass', '+8801745678901'),
(6, 'David Wilson', 'david.wilson@example.com', 'davidpass', '+8801756789012'),
(7, 'Sarah Carter', 'sarah.carter@example.com', 'sarah123', '+8801767890123'),
(8, 'Olivia Clark', 'olivia.clark@example.com', 'oliviapass', '+8801778901234'),
(9, 'James Taylor', 'james.taylor@example.com', 'jamespass', '+8801789012345'),
(10, 'Samantha White', 'samantha.white@example.com', 'samanthapwd', '+8801790123456'),
(11, 'samio hasan', 'samiohasan6@gmail.com', 'Samio@123', '+8801709801305');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(200) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `phone` text NOT NULL,
  `blood_group` text NOT NULL,
  `gender` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `email`, `password`, `phone`, `blood_group`, `gender`) VALUES
(1, 'Abu Sufaian', 'abusufian56@gmail.com', 'Abu@2345', '+88017039229957', 'AB+', 'Male'),
(2, 'Abu Sufaian', 'abusufian56@gmail.com', 'Abu@2345', '+88017039229957', 'AB+', 'Male'),
(3, 'John Smith', 'john.smith@example.com', 'pass456', '+8801723456789', 'A-', 'Male'),
(4, 'Emily Davis', 'emily.davis@example.com', 'securepwd', '+8801734567890', 'B+', 'Female'),
(5, 'David Wilson', 'david.wilson@example.com', 'pass123', '+8801745678901', 'AB-', 'Male'),
(6, 'Jessica Brown', 'jessica.brown@example.com', 'password321', '+8801756789012', 'O-', 'Female'),
(7, 'Michael Lee', 'michael.lee@example.com', 'doctor007', '+8801767890123', 'A+', 'Male'),
(8, 'Amanda White', 'amanda.white@example.com', 'p@ssw0rd', '+8801778901234', 'B-', 'Female'),
(9, 'Matthew Taylor', 'matthew.taylor@example.com', 'doctor999', '+8801789012345', 'AB+', 'Male'),
(10, 'Olivia Clark', 'olivia.clark@example.com', 'passwordabc', '+8801790123456', 'O+', 'Female'),
(11, 'Daniel Harris', 'daniel.harris@example.com', 'securepwd123', '+8801709876543', 'A-', 'Male'),
(12, 'Sophia Allen', 'sophia.allen@example.com', 'pass321', '+8801710987654', 'B+', 'Female'),
(13, 'Benjamin Carter', 'benjamin.carter@example.com', 'passwordxyz', '+8801721098765', 'AB-', 'Male'),
(14, 'Lily Adams', 'lily.adams@example.com', 'doctor456', '+8801732109876', 'O-', 'Female'),
(15, 'Ethan Wilson', 'ethan.wilson@example.com', 'admin123', '+8801743210987', 'A+', 'Male'),
(16, 'Sophie Taylor', 'sophie.taylor@example.com', 'userpass', '+8801754321098', 'B-', 'Female'),
(17, 'Noah Johnson', 'noah.johnson@example.com', 'pass1234', '+8801765432109', 'AB+', 'Male'),
(18, 'Emma Brown', 'emma.brown@example.com', 'pass5678', '+8801776543210', 'O+', 'Female'),
(19, 'Logan Smith', 'logan.smith@example.com', 'loganspass', '+8801787654321', 'A-', 'Male'),
(20, 'Grace Lee', 'grace.lee@example.com', 'gracepass', '+8801798765432', 'B+', 'Female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_equipment`
--
ALTER TABLE `medical_equipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_stuff`
--
ALTER TABLE `medical_stuff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `medical_equipment`
--
ALTER TABLE `medical_equipment`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `medical_stuff`
--
ALTER TABLE `medical_stuff`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
