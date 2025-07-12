-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2025 at 11:01 AM
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
-- Database: `impulse101`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyerregistration`
--

CREATE TABLE `buyerregistration` (
  `buyer_id` int(255) NOT NULL,
  `buyer_name` varchar(30) NOT NULL,
  `buyer_phone` bigint(10) NOT NULL,
  `buyer_addr` text NOT NULL,
  `buyer_comp` varchar(100) NOT NULL,
  `buyer_license` varchar(100) NOT NULL,
  `buyer_bank` int(16) NOT NULL,
  `buyer_pan` varchar(10) NOT NULL,
  `buyer_mail` varchar(20) NOT NULL,
  `buyer_username` varchar(20) NOT NULL,
  `buyer_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `buyerregistration`
--

INSERT INTO `buyerregistration` (`buyer_id`, `buyer_name`, `buyer_phone`, `buyer_addr`, `buyer_comp`, `buyer_license`, `buyer_bank`, `buyer_pan`, `buyer_mail`, `buyer_username`, `buyer_password`) VALUES
(22, 'prasad prakash chougule', 9356467029, 'kotoli', 'BSIET', '1010', 26102005, '26102005', 'prasadprakash2610@gm', 'prasad', 'y5KDvg=='),
(23, 'Pratik Ananda Sutar', 7028480130, 'Aasurle', 'BSIET', '18112006', 18112006, '18112006', 'pratiksutar9478@gmai', 'pratik', 'y5qDvw==');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `product_id` int(255) NOT NULL,
  `phonenumber` bigint(10) NOT NULL,
  `qty` int(10) NOT NULL DEFAULT 1,
  `subtotal` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`product_id`, `phonenumber`, `qty`, `subtotal`) VALUES
(32, 8169193101, 2, 10),
(32, 8169193101, 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Crops'),
(2, 'Vegetables'),
(3, 'Fruits');

-- --------------------------------------------------------

--
-- Table structure for table `consumer`
--

CREATE TABLE `consumer` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `consumer`
--

INSERT INTO `consumer` (`id`, `name`, `email`, `pincode`, `password`, `address`, `phone`) VALUES
(5, 'bhabalomkar421', 'bhabalomkar421@gmail', '421202', 'yw==', 'm', '8828071232'),
(6, 'hello world', 'hello@world.com', '421202', 'yw==', 'world', '9999999999'),
(7, 'Abhishek Gupta', 'abhig0209@gmail.com', '400705', 'm8bf5+Y=', 'Test', '1234567890'),
(8, 'int main', 'intmain@g.com', '400705', 'yw==', '704,Raj Uday CHS , Sec-1\r\nSanpada', '7715802258');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `password` varchar(10) NOT NULL,
  `clinicName` varchar(15) NOT NULL,
  `clinicAddress` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `startTime` varchar(8) NOT NULL,
  `endTime` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `name`, `email`, `pincode`, `password`, `clinicName`, `clinicAddress`, `phone`, `startTime`, `endTime`) VALUES
(4, 'bhabalomkar421', 'bhabalomkar421@gmail', '421202', 'yw==', 'xyz', 'xyz', '8828071232', '10:00', '12:00'),
(5, 'int main', 'intmain1221@gmail.co', '421202', 'yw==', 'xyz', 'xyz', '8369619128', '10:00', '12:30'),
(6, 'god', 'es@dd.com', '421205', 'yw==', '1', '1', '9223152967', '10:00', '01:00');

-- --------------------------------------------------------

--
-- Table structure for table `farmerregistration`
--

CREATE TABLE `farmerregistration` (
  `farmer_id` int(255) NOT NULL,
  `farmer_name` varchar(255) NOT NULL,
  `farmer_phone` bigint(10) NOT NULL,
  `farmer_address` text NOT NULL,
  `farmer_state` varchar(50) NOT NULL,
  `farmer_district` varchar(50) NOT NULL,
  `farmer_pan` varchar(10) NOT NULL,
  `farmer_bank` int(16) NOT NULL,
  `farmer_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `farmerregistration`
--

INSERT INTO `farmerregistration` (`farmer_id`, `farmer_name`, `farmer_phone`, `farmer_address`, `farmer_state`, `farmer_district`, `farmer_pan`, `farmer_bank`, `farmer_password`) VALUES
(95, 'prathamesh prakash lavhate', 8999054381, 'kotoli', 'MAHARASHTRA', 'Kolhapur', 'BMTPL0586N', 2012006, 'ypCCvA=='),
(96, 'Dev Dattatray Khairmode', 9623048329, 'sangli', 'MAHARASHTRA', 'Sangli', '11012007', 11012007, 'y5OCvw==');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `qty` int(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `delivery` varchar(10) NOT NULL,
  `phonenumber` bigint(10) NOT NULL,
  `total` int(10) NOT NULL,
  `payment` varchar(10) NOT NULL,
  `buyer_phonenumber` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `product_id`, `qty`, `address`, `delivery`, `phonenumber`, `total`, `payment`, `buyer_phonenumber`) VALUES
(82, 41, 1, 'Aasurle', '', 9623048329, 80, '', 7028480130),
(83, 50, 1, 'Aasurle', '', 8999054381, 35, '', 7028480130),
(84, 40, 1, 'Aasurle', '', 9623048329, 1000, '', 7028480130),
(85, 42, 1, 'Aasurle', '', 9623048329, 60, '', 7028480130),
(86, 43, 1, 'Aasurle', '', 9623048329, 300, '', 7028480130),
(87, 44, 1, 'Aasurle', '', 9623048329, 1500, '', 7028480130),
(88, 45, 1, 'Aasurle', '', 9623048329, 25, '', 7028480130),
(89, 46, 1, 'Aasurle', '', 9623048329, 120, '', 7028480130),
(90, 42, 1, 'Aasurle', '', 9623048329, 60, '', 7028480130),
(91, 43, 3, 'Aasurle', '', 9623048329, 900, '', 7028480130),
(92, 41, 2, 'Aasurle', '', 9623048329, 160, '', 7028480130),
(93, 38, 3, 'kotoli', '', 8999054381, 540, '', 9356467029),
(94, 39, 3, 'kotoli', '', 8999054381, 360, '', 9356467029),
(95, 50, 1, 'kotoli', '', 8999054381, 35, '', 9356467029),
(96, 41, 2, 'kotoli', '', 9623048329, 160, '', 9356467029),
(97, 43, 1, 'kotoli', '', 9623048329, 300, '', 9356467029),
(98, 45, 1, 'kotoli', '', 9623048329, 25, '', 9356467029),
(99, 46, 1, 'kotoli', '', 9623048329, 120, '', 9356467029);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `farmer_fk` int(255) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_cat` varchar(100) NOT NULL,
  `product_type` varchar(100) NOT NULL,
  `product_expiry` varchar(25) NOT NULL,
  `product_image` text NOT NULL,
  `product_stock` int(100) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_delivery` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `farmer_fk`, `product_title`, `product_cat`, `product_type`, `product_expiry`, `product_image`, `product_stock`, `product_price`, `product_desc`, `product_keywords`, `product_delivery`) VALUES
(38, 95, 'mango', '3', 'Devgad Alphonso', '2025-04-30', 'mango.jpeg', 1000, 180, 'Fresh Devgad Alphonso mangoes sourced from farms near Kolhapur. Naturally ripened, juicy, and aromatic – perfect for summer delights.', 'mango, alphonso, devgad, ratnagiri, fresh mangoes, kolhapur mango', 'yes'),
(39, 95, 'apple', '3', 'Simla Apple', '2025-04-30', 'apple.jpeg', 500, 120, 'Fresh Simla apples sourced from premium orchards, offering a crisp texture and sweet flavor. Ideal for snacking and culinary uses.', 'apple, simla apple, fresh apples, Kolhapur apples, premium fruits?', 'yes'),
(40, 96, 'Cherry', '3', 'Imported Sweet Cherry', '2025-04-30', 'cherry.JPG', 800, 1000, 'Premium imported sweet cherries, known for their vibrant color, juicy texture, and delightful sweetness. Perfect for snacking, desserts, and gourmet dishes.', 'cherry, sweet cherry, imported cherries, fresh cherries, Kolhapur fruits', 'yes'),
(41, 96, 'Grapes', '3', 'Black Seedless / Green Seedless (choose as per stock)', '2025-04-30', 'grapes.jpg', 700, 80, 'Fresh seedless grapes grown in Maharashtra. Juicy, sweet, and packed with natural antioxidants – ideal for snacking or juicing.', 'grapes, green grapes, black grapes, seedless grapes, Kolhapur fruits, Nashik grapes', 'yes'),
(42, 96, 'Orange', '3', 'Nagpur Santra', '2025-04-25', 'orange.jpg', 850, 60, 'Juicy and tangy Nagpur oranges, rich in Vitamin C and perfect for fresh juice or daily snacking. Hand-picked for maximum freshness and flavor.', 'orange, santra, nagpur orange, citrus fruit, Kolhapur fruits', 'yes'),
(43, 96, 'Strawberry', '3', 'Mahabaleshwar Strawberry', '2025-04-25', 'strawberry.jpg', 950, 300, 'Farm-fresh Mahabaleshwar strawberries, known for their natural sweetness, rich red color, and juiciness. Perfect for desserts, smoothies, or snacking.', 'strawberry, mahabaleshwar, fresh berries, Kolhapur fruits, farm strawberries', 'yes'),
(44, 96, 'Raspberry', '3', 'Imported Red Raspberry', '2025-04-25', 'Raspberry.jpg', 900, 1500, 'Premium imported red raspberries, rich in antioxidants and flavor. Soft, sweet-tart berries ideal for baking, smoothies, toppings, and gourmet dishes.', ' raspberry, red raspberry, imported berries, exotic fruits, Kolhapur fruits', 'yes'),
(45, 96, 'Watermelon', '3', 'Red Seedless / Regular Desi ', '2025-04-27', 'Watermelon.jpg', 750, 25, 'Refreshing, juicy watermelon – perfect for beating the summer heat. High in water content and rich in electrolytes, this summer fruit is great for hydration.', 'watermelon, tarbooj, summer fruit, seedless watermelon, Kolhapur fruits', 'yes'),
(46, 96, 'Pomegranate', '3', 'Bhagwa', '2025-04-30', 'Pomegranate.jpg', 750, 120, 'Premium Bhagwa pomegranates grown in Maharashtra. Known for their deep red arils, rich sweetness, and antioxidant properties – perfect for juices or direct consumption.', 'pomegranate, anar, bhagwa anar, Maharashtra fruit, Kolhapur fruits', 'yes'),
(47, 95, 'Beetroot', '2', ' Fresh Red Beetroot', '2025-04-28', 'Beetroot.jpg', 500, 35, 'Farm-fresh beetroot, deep red in color and rich in iron and folate. Great for salads, juices, and health-focused meals. Naturally sweet and earthy in flavor.', 'beetroot, red beet, healthy veggies, Kolhapur vegetables, root vegetables', 'yes'),
(48, 95, 'Bell pepper', '2', ' Green / Red / Yellow Bell Pepper', '2025-04-25', 'Bell pepper.jpg', 1000, 80, 'Fresh bell peppers with crisp texture and vibrant colors. Great for salads, stir-fries, pizza toppings, or stuffing. Rich in vitamins A & C and low in calories.', 'bell pepper, capsicum, green capsicum, red bell pepper, yellow capsicum, Kolhapur vegetables', 'yes'),
(49, 95, 'Brinjal', '2', 'Long Purple / Bharta Brinjal / Round Green', '2025-04-27', 'Brinjal.jpg', 950, 35, 'Fresh and tender brinjals sourced from local farms. Rich in fiber and antioxidants, perfect for bharta, curries, fries, or stuffed dishes.', ' brinjal, baingan, eggplant, purple brinjal, Kolhapur vegetables', 'yes'),
(50, 95, 'Carrot', '2', 'Vegetables, Fresh Produce', '2025-04-26', 'carrot.jpg', 750, 35, 'Fresh, juicy carrots sourced from farms across Maharashtra. Perfect for salads, juices, and Maharashtrian dishes like Gajar Halwa. High in Vitamin A, antioxidants, and dietary fiber – a healthy and tasty choice for your daily meals.', 'Fresh carrots, Maharashtra carrot, orange carrots, healthy vegetables, Gajar, organic carrots', 'yes'),
(51, 95, 'Cauliflower', '2', 'Vegetables, Fresh Produce', '2025-04-23', 'Cauliflower.jpg', 450, 45, 'Locally grown cauliflower (Phoolkobi) harvested from fertile regions of Maharashtra. Ideal for classic dishes like Kobi Chi Bhaji, Gobi Paratha, or as a healthy addition to curries and sabzis. Rich in fiber and vitamin C.', 'Cauliflower, Phoolkobi, fresh cauliflower, Maharashtra vegetables, healthy gobi', 'yes'),
(52, 95, 'Onion', '2', 'Vegetables, Fresh Produce', '2025-04-24', 'Onion.jpg', 550, 30, 'Premium quality onions (Kanda) sourced from the renowned onion belts of Maharashtra like Nashik and Ahmednagar. Essential for everyday cooking – from tadkas to gravies, salads to chutneys. Known for their strong flavor and long shelf life.', 'Onion, Kanda, Pyaaj, Nashik onion, Maharashtra produce, kitchen essential', 'yes'),
(53, 95, 'Potato', '2', 'Vegetables, Fresh Produce', '2025-04-29', 'potato.jpeg', 950, 25, 'Farm-fresh potatoes (Batata) directly from the fertile lands of Maharashtra. A staple in every kitchen – ideal for snacks like Batata Vada, curries, fries, and more. Good source of energy and dietary fiber.', 'Potato, Batata, fresh potato, Maharashtra vegetables, daily use potato, Nashik batata', 'yes'),
(54, 96, 'Brinjal', '3', 'Vegetables', '2025-04-22', 'Brinjal.jpg', 200, 45, 'good', 'fresh', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `shopkeeper`
--

CREATE TABLE `shopkeeper` (
  `id` int(255) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `password` varchar(10) NOT NULL,
  `shopName` varchar(20) NOT NULL,
  `shopAddress` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `startTime` varchar(8) NOT NULL,
  `endTime` varchar(8) NOT NULL,
  `slotInterval` int(11) NOT NULL,
  `slotUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `shopkeeper`
--

INSERT INTO `shopkeeper` (`id`, `name`, `email`, `pincode`, `password`, `shopName`, `shopAddress`, `phone`, `startTime`, `endTime`, `slotInterval`, `slotUser`) VALUES
(1, 'bhabalomkar421', 'bhabalomkar421@gmail', '421202', '020202', 'xyz', 'xyz', '8828071232', '10:30', '12:30', 30, 5),
(3, 'int main 123', 'intmain1221@gmail.co', '400705', 'yw==', 'hopes', 'no hopes', '101', '10:30', '11:30', 30, 7),
(4, 'kerela', 'es@dd.com', '421200', 'yw==', '1', 'm', '8369674856', '10:00', '12:30', 60, 5),
(5, 'Abhishek Gupta', 'abhig0209@gmail.com', '400705', 'm8bf5+Y=', 'Ganesh Grocery', 'Rose Villa Lane', '1234567890', '12:00', '22:00', 30, 5),
(6, 'omkar bhabal', 'intmain1221@gmail.co', '400705', 'yw==', 'om medical', 'navapada', '9223152967', '10:30', '17:00', 30, 5),
(7, 'Ganesh', 'ganesh@mail.com', '123456', 'm8bf5+Y=', 'Ganesh Grocery', 'Mumbai', '1234567891', '10:00', '14:00', 30, 5);

-- --------------------------------------------------------

--
-- Table structure for table `slot`
--

CREATE TABLE `slot` (
  `slot_id` int(255) NOT NULL,
  `shop_id` int(255) NOT NULL,
  `slot` varchar(10) NOT NULL,
  `vacancy` int(255) NOT NULL,
  `date` varchar(12) NOT NULL,
  `phonenumber` bigint(10) NOT NULL,
  `passcode` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `slot`
--

INSERT INTO `slot` (`slot_id`, `shop_id`, `slot`, `vacancy`, `date`, `phonenumber`, `passcode`) VALUES
(37, 6, '12:0', 5, '05/05/2020', 1234567890, 82047),
(38, 6, '12:0', 5, '13/07/2020', 1234567890, 95127),
(39, 6, '10:30', 5, '21/04/2020', 1234567890, 40661),
(40, 6, '12:0', 5, '07/04/2020', 1234567890, 27560),
(41, 6, '10:30', 5, '22/04/2020', 1234567890, 67549);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyerregistration`
--
ALTER TABLE `buyerregistration`
  ADD PRIMARY KEY (`buyer_id`),
  ADD UNIQUE KEY `buyer_username` (`buyer_username`),
  ADD UNIQUE KEY `buyer_phone` (`buyer_phone`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `consumer`
--
ALTER TABLE `consumer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farmerregistration`
--
ALTER TABLE `farmerregistration`
  ADD UNIQUE KEY `farmer_id` (`farmer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `phonenumber` (`phonenumber`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `farmer_fk` (`farmer_fk`);

--
-- Indexes for table `shopkeeper`
--
ALTER TABLE `shopkeeper`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slot`
--
ALTER TABLE `slot`
  ADD PRIMARY KEY (`slot_id`),
  ADD UNIQUE KEY `passcode` (`passcode`),
  ADD KEY `slot_ibfk_1` (`shop_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyerregistration`
--
ALTER TABLE `buyerregistration`
  MODIFY `buyer_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `consumer`
--
ALTER TABLE `consumer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `farmerregistration`
--
ALTER TABLE `farmerregistration`
  MODIFY `farmer_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `shopkeeper`
--
ALTER TABLE `shopkeeper`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `slot`
--
ALTER TABLE `slot`
  MODIFY `slot_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `slot`
--
ALTER TABLE `slot`
  ADD CONSTRAINT `slot_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `shopkeeper` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
