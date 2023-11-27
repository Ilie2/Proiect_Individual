-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 07:55 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

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
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `aragaz`
--

CREATE TABLE `aragaz` (
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(2, 2, 0, 'Mouse Gaming LOGITECH G502 HERO', 252, 3, 'discounts/product-1.png'),
(3, 2, 0, 'Tastatura mecanica HP HyperX Alloy 65 Red, Iluminare RGB, Negru', 225, 2, 'discounts/product-4.png'),
(4, 2, 0, 'Pachet sistem PC Gaming Pro377, Procesor Intel® Core™ I7 3,4 GHz, 16GB RAM,2TB HDD, GeForce GT710,Mo', 3240, 2, 'discounts/product-8.png'),
(24, 3, 0, 'Casti gaming cu microfon Aqirys Altair, 7.1 USB, Virtual surround, Iluminare RGB, Negre, (AQRYS_ALTA', 186, 1, 'headsets/produs1.png'),
(25, 3, 0, 'Casti gaming wireless ASUS TUF Gaming H3 Wireless, 2.4 GHz, sunet surround 7.1, difuzoare 50mm', 370, 1, 'headsets/produs2.png'),
(26, 3, 0, 'Casti gaming wireless Razer Barracuda X, Multiplatforma PC, Playstation, Switch, surround 7.1 Virtua', 560, 1, 'headsets/produs3.png');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `comment_content` text DEFAULT NULL,
  `comment_author` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `product_id`, `comment_content`, `comment_author`, `created_at`) VALUES
(1, 1, 'ffff', 'fggf', '2023-11-26 19:39:41'),
(2, 1, '223232', 'dan', '2023-11-26 23:35:23'),
(3, 1, '223232', 'dan', '2023-11-26 23:36:14'),
(7, 2, 'rr', 'dan', '2023-11-26 23:59:32'),
(8, 2, 'rr', 'dan', '2023-11-26 23:59:37');

-- --------------------------------------------------------

--
-- Table structure for table `comment_1`
--

CREATE TABLE `comment_1` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `comment_content` text DEFAULT NULL,
  `comment_author` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `discountper` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`name`, `price`, `image`, `discountper`, `id`) VALUES
('Mouse Gaming LOGITECH G502 HERO', 300, 'discounts/product-1.png', 16, 1),
('Mouse Gaming RAZER Viper Mini', 103, 'discounts/product-2.png', 12, 2),
('Mouse gaming SteelSeries Rival 3, Negru', 190, 'discounts/product-3.png', 25, 3),
('Tastatura mecanica HP HyperX Alloy 65 Red, Iluminare RGB, Negru', 300, 'discounts/product-4.png', 25, 4),
('Tastatura Marvo KG962, iluminare Rainbow, USB-C, negru', 190, 'discounts/product-5.png', 30, 5),
('Tastatura Gaming Genesis Rhod 420 RGB', 135, 'discounts/product-6.png', 28, 6),
('Kit gaming Onikuma tastatura mecanica RGB G26 89 taste si mouse RGB CW905 7 butoane 6400 DPI ', 240, 'discounts/product-7.png', 15, 7),
('Pachet sistem PC Gaming Pro377, Procesor Intel® Core™ I7 3,4 GHz, 16GB RAM,2TB HDD, GeForce GT710,Monitor 21.5\" ', 3600, 'discounts/product-8.png', 10, 8),
('Desktop PC Gaming Serioux cu procesor AMD Ryzen™ 9 5900X, 32GB DDR4, 1TB SSD, GeForce® RTX 3070 8GB GDDR6,', 8000, 'discounts/product-9.png', 21, 9);

-- --------------------------------------------------------

--
-- Table structure for table `frigider`
--

CREATE TABLE `frigider` (
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `frigider`
--

INSERT INTO `frigider` (`name`, `price`, `image`, `id`) VALUES
('Frigider cu doua usi Arctic AD54240M30W, 223 l, Garden Fresh, Termostat ajustabil, MixZone, Safety Glass, Usa reversibila, Clasa F (clasificare energetica veche Clasa A+), H 146.5 cm, Alb', 999, 'frigidere/produs1.jpg', 14);

-- --------------------------------------------------------

--
-- Table structure for table `headsets`
--

CREATE TABLE `headsets` (
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `headsets`
--

INSERT INTO `headsets` (`name`, `price`, `image`, `id`) VALUES
('Casti gaming cu microfon Aqirys Altair, 7.1 USB, Virtual surround, Iluminare RGB, Negre, (AQRYS_ALTAIRWH)', 186, 'headsets/produs1.png', 4),
('Casti gaming wireless ASUS TUF Gaming H3 Wireless, 2.4 GHz, sunet surround 7.1, difuzoare 50mm', 370, 'headsets/produs2.png', 5),
('Casti gaming wireless Razer Barracuda X, Multiplatforma PC, Playstation, Switch, surround 7.1 Virtual', 560, 'headsets/produs3.png', 6);

-- --------------------------------------------------------

--
-- Table structure for table `keyboards`
--

CREATE TABLE `keyboards` (
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keyboards`
--

INSERT INTO `keyboards` (`name`, `price`, `image`, `id`) VALUES
('Tastatura gaming mecanica A+ K75, iluminare rainbow, Neagra', 110, 'keyboards/product1.png', 7),
('Tastatura Mecanica Wireless, Fir Dongle 2.4Ghz ROYAL KLUDGE', 360, 'keyboards/product2.png', 8),
('Tastatura mecanica gaming HyperX Alloy Origins Core, RGB, Switch HX-Blue', 290, 'keyboards/product3.png', 9);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mice`
--

CREATE TABLE `mice` (
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mice`
--

INSERT INTO `mice` (`name`, `price`, `image`, `id`) VALUES
('Mouse gaming Logitech G102, 8000 dpi, RGB, Negru', 300, 'mice/mouse1.png', 1),
('Mouse gaming T-Dagger Lance Corporal, Negru, T-TGM107', 120, 'mice/mouse2.png', 2),
('Mouse gaming Corsair M65 Pro RGB, senzor optic 12000DPI, Negru ', 250, 'mice/mouse3.png', 3);

-- --------------------------------------------------------

--
-- Table structure for table `microunde`
--

CREATE TABLE `microunde` (
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 4, 'Alexandru', '0770751534', '0', 'cash on delivery', '0', '0', 420, '2023-10-31', 'pending'),
(2, 4, 'Alexandru', '0770751534', '0', 'credit card', '0', '0', 670, '2023-10-31', 'pending'),
(3, 4, 'Alexandru', '0770751534', '0', 'cash on delivery', '0', '0', 360, '2023-10-31', 'pending'),
(4, 4, 'Alexandru', '0770751534', '0', 'cash on delivery', '0', '0', 1320, '2023-10-31', 'pending'),
(5, 4, 'Alexandru', '0770751534', '0', 'cash on delivery', '0', '0', 186, '2023-11-03', 'pending'),
(6, 4, 'Alexandru', '45', '0', 'cash on delivery', '0', '0', 300, '2023-11-07', 'pending'),
(7, 4, 'Alexandru', '45', '0', 'cash on delivery', '0', '0', 91, '2023-11-14', 'pending'),
(8, 4, 'Alexandru', '45', '0', 'cash on delivery', '0', '0', 999, '2023-11-14', 'pending'),
(9, 4, 'Alexandru', '45', '0', 'cash on delivery', '0', '0', 300, '2023-11-14', 'pending'),
(10, 4, 'Alexandru', '0770765923', '0', 'cash on delivery', '0', '0', 2960, '2023-11-14', 'pending'),
(11, 4, 'Alexandru', '0770765923', '0', 'cash on delivery', '0', '0', 370, '2023-11-17', 'pending'),
(12, 4, 'Alexandru', '0770765923', '0', 'cash on delivery', '0', '0', 370, '2023-11-21', 'pending'),
(13, 4, 'Alexandru Benteu', '0770765923', '0', 'cash on delivery', '0', '0', 120, '2023-11-21', 'pending'),
(14, 4, 'Alexandru Benteu', '0770765923', '0', 'cash on delivery', '0', '0', 370, '2023-11-21', 'pending'),
(15, 4, 'Alexandru', '0770765923', 'alexandrescudan19@gmail.com', 'cash on delivery', 'flat no. 156, liviu R, Timisoara, Timis, Romania - 123456', 'Casti gaming cu microfon Aqirys Altair, 7.1 USB, Virtual surround, Iluminare RGB, Negre, (AQRYS_ALTA (186 x 1) - Casti gaming wireless ASUS TUF Gaming H3 Wireless, 2.4 GHz, sunet surround 7.1, difuzoare 50mm (370 x 1) - ', 556, '2023-11-21', 'pending'),
(16, 4, 'Alexandru', '0770765923', 'alexandrescudan19@gmail.com', 'cash on delivery', 'flat no. 156, liviu R, Timisoara, Timis, Romania - 123456', 'Casti gaming wireless Razer Barracuda X, Multiplatforma PC, Playstation, Switch, surround 7.1 Virtua (560 x 1) - Casti gaming wireless ASUS TUF Gaming H3 Wireless, 2.4 GHz, sunet surround 7.1, difuzoare 50mm (370 x 1) - ', 930, '2023-11-21', 'pending'),
(17, 4, 'Alexandru', '0770765923', 'alexandrescudan19@gmail.com', 'credit card', 'flat no. 156, liviu R, Timisoara, Timis, Romania - 123456', 'Casti gaming wireless Razer Barracuda X, Multiplatforma PC, Playstation, Switch, surround 7.1 Virtua (560 x 1) - Casti gaming wireless ASUS TUF Gaming H3 Wireless, 2.4 GHz, sunet surround 7.1, difuzoare 50mm (370 x 1) - ', 930, '2023-11-21', 'pending'),
(18, 4, 'Alexandru Benteu', '0770751534', 'alex.benteu@benzone.work', 'cash on delivery', 'flat no. 156, liviu R, Timisoara, Timis, Romania - 123456', 'Casti gaming cu microfon Aqirys Altair, 7.1 USB, Virtual surround, Iluminare RGB, Negre, (AQRYS_ALTA (186 x 1) - Sistem Gaming Lenovo IdeaCentre 5 14ACN6 cu procesor AMD Ryzen™ 5 5600G pana la 4.40 GHz, 16GB DDR4, (2600 x 1) - ', 2786, '2023-11-21', 'pending'),
(19, 4, 'Alexandrescu Ilie', '0770751534', 'alexandrescudan19@gmail.com', 'cash on delivery', 'flat no. 156, liviu Rebreanu, Timisoara, Timis, Romania - 123456', 'Mouse Gaming LOGITECH G502 HERO (252 x 1) - Mouse Gaming RAZER Viper Mini (91 x 1) - Mouse gaming SteelSeries Rival 3, Negru (143 x 1) - Tastatura Marvo KG962, iluminare Rainbow, USB-C, negru (133 x 1) - ', 619, '2023-11-21', 'pending'),
(20, 4, 'Alexandrescu Ilie', '0770751534', 'alexandrescudan19@gmail.com', 'cash on delivery', 'flat no. 156, liviu Rebreanu, Timisoara, Timis, Romania - 123456', 'Casti gaming wireless Razer Barracuda X, Multiplatforma PC, Playstation, Switch, surround 7.1 Virtua (560 x 1) - Mouse gaming Corsair M65 Pro RGB, senzor optic 12000DPI, Negru  (250 x 1) - Sistem Desktop PC Gaming Lenovo Legion T5 26AMR5 cu procesor AMD Ryzen™ 5 5600G pana la 4.40GHz, 16G (6110 x 1) - Frigider cu doua usi Arctic AD54240M30W, 223 l, Garden Fresh, Termostat ajustabil, MixZone, Safety G (999 x 1) - ', 7919, '2023-11-21', 'pending'),
(21, 4, 'Alexandru Benteu', '4444444444', 'alex.benteu@benzone.work', 'cash on delivery', 'flat no. 156, liviu R, Timisoara, Timis, Romania - 123456', 'Mouse Gaming RAZER Viper Mini (91 x 1) - ', 91, '2023-11-25', 'pending'),
(22, 4, 'Alexandru Benteu', '4444444444', 'alex.benteu@benzone.work', 'cash on delivery', 'flat no. 156, liviu R, Timisoara, Timis, Romania - 123456', 'Casti gaming wireless ASUS TUF Gaming H3 Wireless, 2.4 GHz, sunet surround 7.1, difuzoare 50mm (370 x 1) - Sistem Gaming Lenovo IdeaCentre 5 14ACN6 cu procesor AMD Ryzen™ 5 5600G pana la 4.40 GHz, 16GB DDR4, (2600 x 1) - Mouse Gaming RAZER Viper Mini (91 x 1) - Frigider cu doua usi Arctic AD54240M30W, 223 l, Garden Fresh, Termostat ajustabil, MixZone, Safety G (999 x 1) - ', 4060, '2023-11-27', 'pending'),
(23, 4, 'Alexandru Benteu', '8888888888', 'alex.benteu@benzone.work', 'cash on delivery', 'flat no. 156, liviu R, Timisoara, Timis, Romania - 123456', 'Mouse gaming T-Dagger Lance Corporal, Negru, T-TGM107 (120 x 1) - ', 120, '2023-11-27', 'pending'),
(24, 4, 'Alexandru', '7777777777', 'alexandrescudan19@gmail.com', 'cash on delivery', 'flat no. 156, liviu R, Timisoara, Timis, Romania - 123456', 'Mouse gaming Logitech G102, 8000 dpi, RGB, Negru (300 x 1) - ', 300, '2023-11-27', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `pcgaming`
--

CREATE TABLE `pcgaming` (
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pcgaming`
--

INSERT INTO `pcgaming` (`name`, `price`, `image`, `id`) VALUES
('Sistem Gaming Lenovo IdeaCentre 5 14ACN6 cu procesor AMD Ryzen™ 5 5600G pana la 4.40 GHz, 16GB DDR4, 512GB SSD M.2 2280 PCIe NVMe, NVIDIA GeForce GTX 1650 SUPER 4GB GDDR6, No OS', 2600, 'pcgaming/produs1.png', 10),
('Sistem Desktop PC Gaming Lenovo Legion T5 26AMR5 cu procesor AMD Ryzen™ 5 5600G pana la 4.40GHz, 16GB DDR4, 512GB SSD M.2 PCIe, GeForce RTX 3060 12GB GDDR6, No OS', 6110, 'pcgaming/produs2.png', 12),
('Sistem Gaming HP Pavilion cu procesor Intel® Core™ i5-10400 pana la 4.30 GHz, Comet Lake, 8GB DDR4, 512GB SSD, NVIDIA GeForce GTX 1650 SUPER 4GB, Windows 11 Home, Shadow Black', 2900, 'pcgaming/produs3.png', 13);

-- --------------------------------------------------------

--
-- Table structure for table `user_form`
--

CREATE TABLE `user_form` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_form`
--

INSERT INTO `user_form` (`id`, `name`, `email`, `password`) VALUES
(3, 'Shingen3', 'test02@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(4, 'Singren12', 'alexandrescudan19@gmail.com', 'ba0a5587353d249bc38b6511db3f1202');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aragaz`
--
ALTER TABLE `aragaz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comments_discounts` (`product_id`);

--
-- Indexes for table `comment_1`
--
ALTER TABLE `comment_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frigider`
--
ALTER TABLE `frigider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `headsets`
--
ALTER TABLE `headsets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keyboards`
--
ALTER TABLE `keyboards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mice`
--
ALTER TABLE `mice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `microunde`
--
ALTER TABLE `microunde`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pcgaming`
--
ALTER TABLE `pcgaming`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comment_1`
--
ALTER TABLE `comment_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `headsets`
--
ALTER TABLE `headsets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `keyboards`
--
ALTER TABLE `keyboards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mice`
--
ALTER TABLE `mice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `pcgaming`
--
ALTER TABLE `pcgaming`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_form`
--
ALTER TABLE `user_form`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `discounts` (`id`),
  ADD CONSTRAINT `fk_comments_discounts` FOREIGN KEY (`product_id`) REFERENCES `discounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
