-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2024 at 08:38 PM
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
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`) VALUES
(58, 2, 'It ends with us', 15, 1, 'perfume (1).jpeg'),
(60, 2, 'kwjegfyu', 5, 1, 'SharedScreenshot.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(10, 5, 'suela', 'suela@gmail.com', '044157545', 'i love you books they were awsome'),
(11, 6, 'isuf', 'isufi@gmail.com', '018956103', 'falemindrit');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(10, 2, 'dijar', '04448379641', 'dijar@gmail.com', 'cash on delivery', 'flat no. 1, muharrrem fejza, pristina, Kosovo - 123566', ', It ends with us (1) ', 15, '21-Nov-2024', 'pending'),
(11, 4, 'elda', '648948784', 'eldagashi8910@gmail.com', 'cash on delivery', 'flat no. 6559, muharrrem fejza, pristina, Kosovo - 00001111', ', It ends with us (4) ', 60, '21-Nov-2024', 'pending'),
(12, 5, 'suela', '894651320', 'eldagashi8910@gmail.com', 'cash on delivery', 'flat no. , 563, pristina, kososovo - 68522', ', bash and lucy (1) ', 5, '24-Nov-2024', 'pending'),
(13, 6, 'isuf', '454312', 'isufi_gashi@hotmail.com', 'cash on delivery', ', 6954231, pristina, kososovo - 6835241', ', The World of Abstact Art (1) , Be well Be (1) , History of modern architecture (1) ', 62, '24-Nov-2024', 'pending'),
(14, 8, 'rinor', '854231', 'rinor@gmail.com', 'cash on delivery', ', 968535, pristina, Kosovo - 8562432', ', Bash and Lucy (1) , Darknet (1) , FreeFall (1) ', 24, '24-Nov-2024', 'pending'),
(15, 9, 'Elda Gashi', '8965533', 'eldagashi8910@gmail.com', 'cash on delivery', ', 986, pristina, Kosovo - 986754', ', Bash and Lucy (1) , Darknet (1) ', 27, '26-Nov-2024', 'pending'),
(16, 10, 'kadri', '89765854986', 'kadri@gmail.com', 'cash on delivery', ', 8688, pristina, Kosovo - 98576', ', Bash and Lucy (1) , Darknet (1) , Be well Bee (1) , Boring Girls a Novel (1) ', 57, '13-Dec-2024', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(23, 'Bash and Lucy', 15, 'bash_and_lucy-2.jpg'),
(24, 'Be well Bee', 25, 'be_well_bee.jpg'),
(25, 'Boring Girls a Novel', 5, 'boring_girls_a_novel.jpg'),
(26, 'Clever Lands', 16, 'clever_lands.jpg'),
(27, 'Darknet', 12, 'darknet.jpg'),
(28, 'Economic', 25, 'economic.jpg'),
(29, 'FreeFall', 6, 'freefall.jpg'),
(30, 'History of Modern Architecure', 45, 'history_of_modern_architecture.jpg'),
(31, 'Holy Ghost', 25, 'holy_ghosts.jpg'),
(32, 'Iloyd', 4, 'lloyd.jpg'),
(33, 'NightShade', 23, 'nightshade.jpg'),
(34, 'Redical Gardening', 23, 'radical_gardening.jpg'),
(35, 'Red Queen', 56, 'red_queen.jpg'),
(36, 'Shattered', 12, 'shattered.jpg'),
(37, 'The Girl of ink and Stars', 16, 'the_girl_of_ink_and_stars.jpg'),
(38, 'The Happy Lemon', 13, 'the_happy_lemon.jpg'),
(39, 'The World', 35, 'the_world.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(3, 'elda', 'eldagashi8910@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'admin'),
(5, 'suela', 'suela@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(9, 'besart', 'besart@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
