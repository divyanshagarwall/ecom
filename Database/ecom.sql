-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2024 at 01:33 PM
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
-- Database: `ecom`
--
CREATE DATABASE IF NOT EXISTS `ecom` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ecom`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(0, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(12, 'Laptops', 1),
(13, 'Phones', 1),
(16, 'Audio/Watches', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(8, 'test', 'test@gmail.com', '123456789', 'test', '2024-04-06 08:47:32');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `order_status` int(11) NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `mihpayid` varchar(255) NOT NULL,
  `payu_status` varchar(255) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `city`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `txnid`, `mihpayid`, `payu_status`, `added_on`) VALUES
(38, 12, 'agra', 'agra', 282005, 'COD', 449000, 'Success', 5, '728eab0306d46fc3d621', '', '', '2024-04-06 08:13:11'),
(39, 12, 'agra', 'agra', 282005, 'COD', 434495, 'pending', 3, '50c416ffca586e13caee', '', '', '2024-04-06 08:13:49'),
(40, 12, 'agra', 'agra', 282005, 'COD', 559300, 'pending', 2, '6ea51913c21a6bddd0b6', '', '', '2024-04-06 08:14:37'),
(41, 12, 'agra', 'agra', 282005, 'COD', 79960, 'pending', 1, 'a7882f3a8a7e6653472c', '', '', '2024-04-06 08:15:10'),
(42, 12, 'agra', 'agra', 282005, 'COD', 21990, 'pending', 4, 'df8d6461abe21e362edc', '', '', '2024-04-06 08:15:39'),
(43, 13, 'gduowqh', 'hidhf', 0, 'COD', 104293, 'pending', 1, 'ef538af10a3e7e7c5dd2', '', '', '2024-04-06 01:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`, `added_on`) VALUES
(1, 1, 3, 1, 12999, '0000-00-00 00:00:00'),
(2, 2, 3, 3, 12999, '0000-00-00 00:00:00'),
(3, 3, 7, 10, 45999, '0000-00-00 00:00:00'),
(4, 4, 7, 1, 45999, '0000-00-00 00:00:00'),
(5, 5, 7, 1, 45999, '0000-00-00 00:00:00'),
(6, 6, 7, 2, 45999, '0000-00-00 00:00:00'),
(7, 6, 6, 4, 11999, '0000-00-00 00:00:00'),
(8, 7, 10, 1, 900, '0000-00-00 00:00:00'),
(9, 8, 10, 1, 900, '0000-00-00 00:00:00'),
(10, 9, 12, 1, 289900, '0000-00-00 00:00:00'),
(11, 10, 13, 1, 134900, '0000-00-00 00:00:00'),
(12, 11, 12, 1, 288900, '0000-00-00 00:00:00'),
(13, 12, 13, 5, 124900, '0000-00-00 00:00:00'),
(14, 13, 11, 1, 79900, '0000-00-00 00:00:00'),
(15, 14, 12, 1, 288900, '0000-00-00 00:00:00'),
(16, 15, 11, 1, 79900, '0000-00-00 00:00:00'),
(17, 16, 11, 1, 79900, '0000-00-00 00:00:00'),
(18, 17, 11, 1, 79900, '0000-00-00 00:00:00'),
(19, 18, 11, 1, 79900, '0000-00-00 00:00:00'),
(20, 19, 11, 1, 79900, '0000-00-00 00:00:00'),
(21, 20, 11, 1, 79900, '0000-00-00 00:00:00'),
(22, 21, 11, 1, 79900, '0000-00-00 00:00:00'),
(23, 22, 11, 1, 79900, '0000-00-00 00:00:00'),
(24, 23, 11, 1, 79900, '0000-00-00 00:00:00'),
(25, 24, 11, 1, 79900, '0000-00-00 00:00:00'),
(26, 25, 11, 1, 79900, '0000-00-00 00:00:00'),
(27, 26, 11, 1, 79900, '0000-00-00 00:00:00'),
(28, 27, 11, 1, 79900, '0000-00-00 00:00:00'),
(29, 28, 11, 1, 79900, '0000-00-00 00:00:00'),
(30, 29, 11, 1, 79900, '0000-00-00 00:00:00'),
(31, 30, 11, 1, 79900, '0000-00-00 00:00:00'),
(32, 31, 11, 1, 79900, '0000-00-00 00:00:00'),
(33, 32, 11, 1, 79900, '0000-00-00 00:00:00'),
(34, 33, 11, 1, 79900, '0000-00-00 00:00:00'),
(35, 34, 11, 1, 79900, '0000-00-00 00:00:00'),
(36, 35, 11, 1, 79900, '0000-00-00 00:00:00'),
(37, 36, 11, 1, 79900, '0000-00-00 00:00:00'),
(38, 37, 11, 1, 79900, '0000-00-00 00:00:00'),
(39, 38, 34, 10, 44900, '0000-00-00 00:00:00'),
(40, 39, 18, 5, 86899, '0000-00-00 00:00:00'),
(41, 40, 27, 7, 79900, '0000-00-00 00:00:00'),
(42, 41, 30, 4, 19990, '0000-00-00 00:00:00'),
(43, 42, 28, 1, 21990, '0000-00-00 00:00:00'),
(44, 43, 32, 7, 14899, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Shipped'),
(4, 'Canceled'),
(5, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `meta_title` text NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `meta_title`, `meta_desc`, `meta_keyword`, `status`) VALUES
(15, 12, 'Apple MacBook Air Apple M3', 114900, 114900, 10, '509977490_l1.jpg', 'Apple MacBook Air Apple M3 - (8 GB/256 GB SSD/macOS Sonoma) MRXV3HN/A  (13 Inch, Midnight, 1.24 Kg)', 'Stylish & Portable Thin and Light Laptop\r\n13 Inch Liquid Retina display, LED-backlit Display with IPS Technology, Native Resolution at 224 pixels per inch, 500 nits Brightness\r\nLight Laptop without Optical Disk Drive', '', '', '', 1),
(16, 12, 'DELL Intel Core i5', 70742, 45999, 10, '167048233_l3.jpg', 'DELL Intel Core i5 12th Gen 1235U - (8 GB/512 GB SSD/Windows 11 Home) New Inspiron 15 Laptop Thin and Light Laptop  (14.96 inch, Carbon Black, 1.65 Kg, With MS Office)', 'Thin and Light Laptop\r\n14.96 inch Full HD WVA AG 120Hz 250 nits Narrow Border', '', '', '', 1),
(17, 12, 'HP Pavilion Intel Core i5', 87095, 72490, 10, '125369524_l2.jpg', 'HP Pavilion Intel Core i5 13th Gen 1335U - (16 GB/1 TB SSD/Windows 11 Home) 15-eg3018TU Thin and Light Laptop  (15.6 Inch, Natural Silver, 1.75 Kg, With MS Office)', 'Thin and Light Laptop\r\n15.6 Inch Full HD, IPS, micro-edge, Bright View, Brightness: 250 nits, 141 ppi, Color Gamut: 45% NTSC\r\nFinger Print Sensor', '', '', '', 1),
(18, 12, 'ASUS Vivobook Pro 15 OLED', 110990, 86899, 10, '603299257_l4.jpg', 'ASUS Vivobook Pro 15 OLED Intel Core i5 12th Gen 12450H - (16 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA GeForce RTX 3050) K6500ZC-L501WS Gaming Laptop  (15.6 Inch, Quiet Blue, 1.80 kg, With MS Office)', '15.6 Inch Full HD, OLED, 0.2ms response time, 600nits HDR peak brightness, 100% DCI-P3 color gamut, VESA CERTIFIED Display HDR True Black 600, 1.07 billion colors, PANTONE Validated, Glossy display, 70% less harmful blue light, TÜV Rheinland-certified', '', '', '', 1),
(20, 13, 'Apple iPhone 15 Pro', 134900, 127900, 10, '889980875_p1.jpg', 'Apple iPhone 15 Pro (Black Titanium, 128 GB)', '128 GB ROM\r\n15.49 cm (6.1 inch) Super Retina XDR Display\r\n48MP + 12MP + 12MP | 12MP Front Camera\r\nA17 Pro Chip, 6 Core Processor Processor', '', '', '', 1),
(21, 13, 'SAMSUNG Galaxy S24 Ultra 5G', 134999, 129999, 10, '374520112_p2.jpg', 'SAMSUNG Galaxy S24 Ultra 5G (Titanium Black, 256 GB)  (12 GB RAM)', '12 GB RAM | 256 GB ROM\r\n17.27 cm (6.8 inch) Quad HD+ Display\r\n200MP + 50MP + 12MP + 10MP | 12MP Front Camera\r\n5000 mAh Battery\r\nSnapdragon 8 Gen 3 Processor', '', '', '', 1),
(22, 13, 'OnePlus 12', 69999, 68199, 10, '620490659_p3.jpg', 'OnePlus 12 (Silky Black, 512 GB)  (16 GB RAM)', '16 GB RAM | 512 GB ROM\r\n17.32 cm (6.82 inch) Display\r\n64MP Rear Camera\r\n5400 mAh Battery', '', '', '', 1),
(23, 13, 'Google Pixel 7a', 43999, 39999, 10, '364244110_p4.jpg', 'Google Pixel 7a (Charcoal, 128 GB)  (8 GB RAM)', '8 GB RAM | 128 GB ROM\r\n15.49 cm (6.1 inch) Full HD+ Display\r\n64MP (OIS) + 13MP | 13MP Front Camera\r\n4300 mAh Battery\r\nTensor G2 Processor', '', '', '', 1),
(24, 13, 'Xiaomi Pad 6', 41999, 27999, 10, '485063652_t4.jpg', 'Xiaomi Pad 6 8 GB RAM 256 GB ROM 11.0 inch with Wi-Fi Only Tablet (Graphite grey)', '8 GB RAM | 256 GB ROM\r\n27.94 cm (11.0 inch) Display\r\n13 MP Primary Camera | 8 MP Front\r\nAndroid 13 | Battery: 8840 mAh\r\nIdeal Usage: Entertainment, High Processing Tasks\r\nProcessor: Qualcomm Snapdragon 870', '', '', '', 1),
(25, 13, 'SAMSUNG Galaxy Tab S9 Ultra', 121999, 108999, 10, '134357831_t3.jpg', 'SAMSUNG Galaxy Tab S9 Ultra 12 GB RAM 256 GB ROM 14.6 Inch with Wi-Fi Only Tablet (Gray)', '12 GB RAM | 256 GB ROM | Expandable Upto 1 TB\r\n37.08 cm (14.6 Inch) WUXGA+ Display\r\n13.0 MP Primary Camera | 12 MP Front\r\nAndroid 13 | Battery: 10090 mAH Lithium Ion\r\nIdeal Usage: Entertainment, High Processing Tasks\r\nProcessor: Snapdragon 8 Gen 2', '', '', '', 1),
(26, 13, 'Apple iPad Air', 74900, 72599, 10, '964694195_t2.jpg', 'Apple iPad Air (5th gen) 256 GB ROM 10.9 Inch with Wi-Fi Only (Space Grey)', '256 GB ROM\r\n27.69 cm (10.9 Inch) Display\r\n12.0 MP Primary Camera | 12 MP Front\r\niPadOS 15 | Battery: Lithium Polymer\r\nIdeal Usage: Business, Reading and Browsing\r\nProcessor: Apple M1 Chip', '', '', '', 1),
(27, 13, 'Apple iPad Pro', 81900, 79900, 10, '458312589_t1.jpg', 'Apple iPad Pro (4th Gen) 128 GB ROM 11.0 inch with Wi-Fi Only (Space Grey)', '128 GB ROM\r\n27.94 cm (11.0 inch) Full HD Display\r\n12 MP Primary Camera | 12 MP Front\r\niPadOS 16 | Battery: Lithium Polymer\r\nIdeal Usage: Entertainment, High Processing Tasks\r\nProcessor: Apple M2 chip', '', '', '', 1),
(28, 16, 'Apple AirPods Pro (2nd generation)', 26900, 21990, 10, '370159575_1.jpg', 'Apple AirPods Pro (2nd generation) with Active Noise Cancellation, Spatial Audio Bluetooth Headset  (White, True Wireless)', 'With Mic:Yes\r\nConnector type: No\r\nActive Noise Cancellation reduces unwanted background noise\r\nAdaptive Transparency lets outside sounds in while reducing loud environmental noise\r\nPersonalised Spatial Audio with dynamic head tracking places sound all around you', '', '', '', 1),
(29, 16, 'SONY WF-C500', 8990, 5890, 10, '211955205_2.jpg', 'SONY WF-C500 IPX4/20Hrs Battery Life Bluetooth Headset  (Black, True Wireless)', 'With Mic:Yes\r\nBluetooth version: 5\r\nWireless range: 10 m\r\nBattery life: 20 Hrs | Charging time: 2.5 Hrs\r\nSplash-proof and sweat-proof with an IPX4 rating\r\nBuilt-In Mic - Easier, clearer hands-free calling\r\nComfort - Small and light for a great fit and all day wear', '', '', '', 1),
(30, 16, 'SONY WH-1000XM4', 29990, 19990, 10, '182339351_3.jpg', 'SONY WH-1000XM4 Bluetooth Headset  (Black, On the Ear)', 'With Mic:Yes\r\nConnector type: Yes', '', '', '', 1),
(31, 16, 'JBL Tune 770NC', 9999, 6549, 10, '372742236_4.jpg', 'JBL Tune 770NC Active Noise Cancelling, 70Hr Playtime, Fast Pair & Multi Connect Bluetooth Headset  (Black, On the Ear)', 'With Mic:Yes\r\nBluetooth version: 5.3\r\nBattery life: 70 hrs\r\nActive Noise Cancelling Headphones\r\nCustomize your listening experience\r\nJBL Pure Bass Sound |MultiPoint Connectivity allowing to a connect upto 2 Devices\r\nFast Charging: 5 min = 3 Hours', '', '', '', 1),
(32, 16, 'JBL Charge 5', 18999, 14899, 10, '615638503_5.jpg', 'JBL Charge 5 with 20Hr Playtime,IP67 Rating,7500 mAh Powerbank, Portable 40 W Bluetooth Speaker  (Black, Stereo Channel)', 'Power Output(RMS): 40 W\r\nPower Source: Battery\r\nBattery life: 20 hrs | Charging time: 4 hrs\r\nBluetooth Version: 5.1\r\nWireless range: 10 m\r\nWireless music streaming via Bluetooth\r\nLong lasting battery delivers up to 20 hours of playtime\r\nTake the Charge with you anywhere due to its IP67 waterproof and dustproof rating', '', '', '', 1),
(33, 16, 'SONY SRS-XB100', 5990, 3990, 10, '493101198_6.jpg', 'SONY SRS-XB100 Portable Super-Compact,Waterproof, 16Hrs Batt, Extra Bass,Built-In Mic Bluetooth Speaker  (Black, Stereo Channel)', 'Wireless music streaming via Bluetooth\r\nTake it wherever you want:The durable exterior & strap make this speaker ready for just go any where.Hang it at your backpack,on your wrist, or even from a tree when you are out in the sun, & the downwards-facing speaker will project the sound.\r\nUSB Type-C port :Charge the XB100 with the USB Type-C port.\r\nLong live your music :The XB100 has upto 16 hours of battery life, so that you & your friends can listen to music all day & into the night.\r\nSmall speaker that packs a powerful, clear sound : Music is the soundtrack to our lives, & we want you to be able to enjoy your tunes wherever you are. So we have packed powerful, clear sound into a portable body.\r\nSustainability in mind : The XB100 body & strap are partially made from recycled plastic materials to help reduce the environmental impact.\r\nListen loud and clear from a compact speaker\r\nBluetooth Connection and Fast Pair :In one tap, the Sony XB100 enablesquick effortless Bluetooth pairing with your Android devices.', '', '', '', 1),
(34, 16, 'Apple Watch Series 9', 44900, 44900, 10, '575589577_7.jpg', 'Apple Watch Series 9 GPS 45mm Midnight Aluminium Case with Midnight Sport Band - S/M  (Midnight Strap, Free Size)', 'Powerful sensors, Advanced health features.\r\nWith Call Function\r\nTouchscreen\r\nFitness & Outdoor\r\nBattery Runtime: Upto 18 hrs', '', '', '', 1),
(35, 16, 'SAMSUNG Galaxy Watch6', 42999, 34099, 10, '777264638_8.jpg', 'SAMSUNG Galaxy Watch6 Classic Bluetooth  (Black Strap, 43mm)', 'Introducing Contactless Secure Payments : make payments from your wrist with a simple Tap & Pay feature enabled by Samsung Wallet\r\nPremium Watch : Designed with finest materials - Sapphire Crystal Glass & Armor Aluminum Dial. IP68 / 5ATM Water & Dust Resistance\r\nAdvanced Sleep Coaching: Know your sleep with our new and improved sleep tracking technology. Plan your bedtime, detect snoring, understand and track your sleep on your wrist.\r\nPersonalized HR: Create your own customized HR zones with just 10min of outdoor running. Maximize the output of your workouts with Zone alerts (Warm-up, Fat burn, Cardio etc.)\r\nWith Call Function\r\nTouchscreen\r\nFitness & Outdoor', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE `product_review` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` varchar(20) NOT NULL,
  `review` text NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_review`
--

INSERT INTO `product_review` (`id`, `product_id`, `user_id`, `rating`, `review`, `status`, `added_on`) VALUES
(28, 35, 12, '⭐ ⭐ ⭐ ⭐ (Very Good)', 'test', 1, '2024-04-06 08:47:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(12, 'test0', 'test0', 'test@gmail.com', '1234567890', '2024-04-06 08:11:27'),
(13, 'test1', 'test1', 'test1@gmail.com', '1234567890', '2024-04-06 08:11:37'),
(14, 'test2', 'test2', 'test2@gmail.com', '1234567890', '2024-04-06 08:11:43'),
(15, 'test3', 'test3', 'test3@gmail.com', '1234567890', '2024-04-06 08:11:50'),
(16, 'efaegae', '1', 'gegege1', '1165165165', '2024-04-06 01:16:45'),
(17, '565', 'dcs5', 'gjkl', '0122', '2024-04-06 01:17:56'),
(18, '12', 'nindcd', 'hsl', '01215', '2024-04-06 01:21:26'),
(19, '561', 'csdcws', '1535', '51515', '2024-04-06 01:22:05');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `added_on`) VALUES
(22, 7, 13, '2024-02-17 08:31:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `product_review`
--
ALTER TABLE `product_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-04-24 18:32:11', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"en_GB\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
