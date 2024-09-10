-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 10, 2024 at 08:15 AM
-- Server version: 10.5.24-MariaDB
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qof8ecixsb37_khanhduymobile`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `gender` tinyint(2) NOT NULL DEFAULT 1,
  `fullname` varchar(60) NOT NULL,
  `lever` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(2) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `email`, `phone`, `gender`, `fullname`, `lever`, `status`, `created_at`, `updated_at`) VALUES
(1, '123Boss', '8a134c42eee93eb7cc8a57cb1278aae5', 'admin@gmail.com', '0999999999', 1, 'Boss shop', 1, 1, '2022-05-02 15:50:38', '2022-05-14 17:17:09');

-- --------------------------------------------------------

--
-- Table structure for table `advertise`
--

CREATE TABLE `advertise` (
  `id` int(10) UNSIGNED NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `rules` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertise`
--

INSERT INTO `advertise` (`id`, `manufacturer_id`, `product_id`, `photo`, `rules`, `created_at`, `deleted_at`, `updated_at`) VALUES
(6, 10, 8, '1723572920.webp', 1, NULL, NULL, '2024-08-14 01:15:20'),
(7, 9, 15, '1723573559.jpg', 1, NULL, NULL, '2024-08-14 01:25:59'),
(8, 11, 7, '1723572125.webp', 1, NULL, NULL, '2024-08-14 01:02:05'),
(9, 10, 8, '1723572929.webp', 1, NULL, NULL, '2024-08-14 01:15:29'),
(18, 14, 0, '1722041982.jpg', 2, NULL, NULL, '2024-07-27 07:59:42'),
(19, 23, 0, '1722041958.jpg', 2, NULL, NULL, '2024-07-27 07:59:18'),
(20, 9, 0, '1722041894.jpg', 2, '2022-05-14 22:21:02', NULL, '2024-07-27 07:58:14'),
(21, 24, 0, '1722042078.jpg', 3, '2024-07-27 08:01:18', NULL, '2024-07-27 08:01:41');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `description`, `created_at`) VALUES
(1, 'Điện Thoại', 'Điện Thoại Xịn', '2024-08-09 08:46:38'),
(2, 'Laptop', 'Laptop tốt', '2024-08-09 08:47:00'),
(3, 'Tai Nghe', 'Tai nghe bao nét', '2024-08-09 09:25:03'),
(4, 'Chuột ', 'Chuột xịn', '2024-08-09 16:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_lap_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `product_lap_id`, `content`, `status`, `created_at`) VALUES
(236, 50, 7, 0, 'HahahahhaahhaahahahahhaHHhHH', 1, '2024-07-30 06:39:53'),
(237, 52, 15, 0, 'bao giờ giảm giá 100% ?', 1, '2024-07-30 06:48:07'),
(238, 37, 7, 0, 'SADSADSADSADSASDA', 1, '2024-07-31 03:02:59'),
(239, 37, 7, 0, '<scrip>\r\nalert(\'hello\')</script>', 1, '2024-07-31 03:03:35'),
(244, 37, 7, 0, '<scrip>\r\nalert(\'hello\')</script>', 1, '2024-07-31 03:06:00'),
(245, 57, 30, 0, 'dsadsadsa', 1, '2024-08-10 11:17:39'),
(246, 57, 30, 0, 'dsadsadsa', 1, '2024-08-10 11:17:44'),
(247, 57, 30, 0, 'dsadsadsa', 1, '2024-08-10 11:17:51'),
(248, 57, 30, 0, 'dsadsadsa', 1, '2024-08-10 11:43:47'),
(249, 51, 30, 0, 'hello', 1, '2024-08-13 05:36:21'),
(250, 51, 35, 0, '<scrip>alert(\"hacked!\")</script>', 1, '2024-08-13 05:42:40'),
(251, 57, 32, 0, 'Điện thoại Samsung Galaxy S23 FE 5G Có tuyệt vời không', 1, '2024-08-14 01:20:03');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1,
  `gender` tinyint(2) NOT NULL DEFAULT 1,
  `address` varchar(200) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `phone`, `status`, `gender`, `address`, `token`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'long3', 'long3@gmail.com', '202cb962ac59075b964b07152d234b70', '321', 1, 1, '123 meo2', NULL, '2022-05-05 16:35:47', '2024-07-20 10:10:05', '2022-05-20 16:49:09'),
(35, 'toan1', 'toan1@gmail.com', '100ed97f6f776fc4bf78f00a00e0ee19', '0963836224', 1, 1, 'Hà Nội', NULL, '2023-01-11 09:51:35', NULL, '2023-01-11 09:51:35'),
(36, 'toan2', 'toan2@gmail.com', '100ed97f6f776fc4bf78f00a00e0ee19', '0963836224', 1, 1, 'Thái Bình', NULL, '2023-01-11 09:52:22', '2024-07-20 10:09:58', '2023-01-11 09:52:22'),
(37, 'Nguyễn Khánh Duy', 'dynguyenak1@gmail.com', 'e019d24c66e9255d5b9a555713709b5f', 'qewewq', 1, 1, 'Bien hoa', NULL, '2024-07-17 21:39:31', NULL, '2024-07-31 09:59:48'),
(38, 'Mễ Ngọc', '123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0399902410', 1, 0, 'tan thanh an chu', NULL, '2024-07-23 07:41:45', NULL, '2024-07-23 07:41:45'),
(39, 'ABC', 'nnu858585@gmail.com', '202cb962ac59075b964b07152d234b70', '0372757362', 1, 0, 'Đồng Nai', NULL, '2024-07-30 08:46:26', NULL, '2024-07-30 08:46:26'),
(47, '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', 1, 1, '', NULL, '2024-07-30 08:48:11', NULL, '2024-07-30 08:48:11'),
(48, 'Lê Nguyên Huy', 'lovepoitys@gmail.com', '202cb962ac59075b964b07152d234b70', '0943090202', 1, 1, '', NULL, '2024-07-30 08:48:23', NULL, '2024-07-30 08:48:23'),
(49, 'Duongw Duy', 'ngoduong323447@gmail.com', '202cb962ac59075b964b07152d234b70', '123456789', 1, 1, 'nothing', NULL, '2024-07-30 08:50:33', NULL, '2024-07-30 08:52:12'),
(50, 'ngoc', 'ngocntmpi00225@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '0344988704', 1, 0, '', NULL, '2024-07-30 08:50:42', NULL, '2024-07-30 13:37:41'),
(51, 'nam1', 'namphg1412@gmail.com', 'f1279a444d25cf7671d3b67c73142c3e', '0323456768', 1, 1, 'Việt Nam', NULL, '2024-07-30 13:13:43', NULL, '2024-08-13 23:59:53'),
(52, 'Tiểu My cute', 'tieumynk160405@gmail.com', '8338ec8606ed4e863cfe55928c7c4d13', '0344929704', 1, 1, 'Biên Hoà', NULL, '2024-07-30 13:47:08', NULL, '2024-07-30 13:47:08'),
(53, 'test', 'test@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '1111111111', 1, 0, 'test', NULL, '2024-07-30 17:05:39', NULL, '2024-07-30 17:05:39'),
(54, 'aaa', 'aa@gmail.com', '47bce5c74f589f4867dbd57e9ca9f808', '1111222345', 1, 1, 'qqq', NULL, '2024-07-30 17:10:55', NULL, '2024-07-30 17:10:55'),
(55, '1;DROP TABLE users', 'sdfF@gmail.com', '47bce5c74f589f4867dbd57e9ca9f808', '2345678900', 0, 1, 'ccc', NULL, '2024-07-30 17:12:49', '2024-08-10 00:22:18', '2024-07-30 17:12:49'),
(57, 'Duy', 'dynguyenak@gmail.com', '8ba280fb8a2eb438664808cc0030848f', '0399902410', 1, 1, 'Tt', NULL, '2024-07-31 08:57:21', NULL, '2024-08-14 21:04:35'),
(58, 'alo1234', 'alo1234@gmail.com', 'cc82a23b7e37dbfaa2cee8c249fcf6fc', '1234567890', 1, 1, 'alo', NULL, '2024-08-03 08:50:04', NULL, '2024-08-03 08:50:04'),
(59, 'LÊ CHÂN THIỆN TÂM', 'tamlct@iotsoftvn.com', 'd41d8cd98f00b204e9800998ecf8427e', '0385442221', 1, 1, 'A40, KP5, Bửu Long, Biên Hòa, Đồng Nai', NULL, '2024-08-14 09:40:41', NULL, '2024-08-14 09:40:41');

-- --------------------------------------------------------

--
-- Table structure for table `forgot_password`
--

CREATE TABLE `forgot_password` (
  `customer_id` int(11) NOT NULL,
  `token` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forgot_password`
--

INSERT INTO `forgot_password` (`customer_id`, `token`, `created_at`) VALUES
(50, '66a88a40f0136', '2024-07-30 06:37:52'),
(53, '66a8bb962d703', '2024-07-30 10:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `manufactures`
--

CREATE TABLE `manufactures` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `phone` char(15) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `rules` tinyint(3) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufactures`
--

INSERT INTO `manufactures` (`id`, `name`, `address`, `phone`, `photo`, `rules`, `created_at`, `deleted_at`, `updated_at`) VALUES
(5, 'Bphone', 'Việt Nam', '0202022', 'https://media.vov.vn/uploaded/rgjxainnqfs/2018_09_25/bphone_jwsl.jpg', 0, NULL, NULL, NULL),
(6, 'Xiaomi', 'Tàu', '+8912121212', 'https://cdn.sforum.vn/sforum/wp-content/uploads/2021/03/Xiaomi-Mi-Logo.jpg', 1, NULL, NULL, NULL),
(9, 'Apple', 'Mỹ', '3232323232', 'https://www.apple.com/newsroom/images/2024/03/apples-worldwide-developers-conference-returns-june-10-2024/tile/Apple-WWDC24-event-announcement-hero-lp.jpg.og.jpg?202405161717', 1, NULL, NULL, NULL),
(10, 'SamSung', 'Hàn quóc', '-980004448', 'https://images.samsung.com/is/image/samsung/assets/vn/about-us/brand/logo/mo/360_197_1.png?$FB_TYPE_B_PNG$', 1, NULL, NULL, NULL),
(11, 'Oppo', 'Tàu', '-00444111', 'https://cdn.tgdd.vn/Files/2019/03/12/1154295/oppo-logo-old_600x277.jpg', 1, NULL, NULL, NULL),
(14, 'Asus', 'Tàu', '+999', 'https://phucgia.com.vn/wp-content/uploads/2020/03/logo-Asus.jpg', 2, '2022-05-09 18:44:37', NULL, '2022-05-09 18:44:37'),
(20, 'HP', 'Nhật', '+999', 'https://logos-world.net/wp-content/uploads/2020/11/Hewlett-Packard-Logo-1981-2008.png', 2, '2022-05-09 19:20:06', NULL, '2022-05-09 19:20:06'),
(22, 'Dell', 'Mỹ tho', '+888', 'https://rubee.com.vn/admin/webroot/upload/image/images/bai-viet/dell-old-logo.jpg', 2, '2022-05-09 19:34:47', NULL, '2022-05-09 19:34:47'),
(23, 'MSI', 'Tân bắc, Đài loan', '+777', 'https://logos-world.net/wp-content/uploads/2020/11/MSI-Logo.png', 2, '2022-05-09 19:36:42', NULL, '2022-05-09 19:36:42'),
(24, 'Apple(macbook)', 'mỹ tho', '+9999', 'https://www.apple.com/v/apple-events/home/af/images/meta/overview__bcphzsdb4fpu_og.png?202406081017', 2, '2022-05-10 13:21:11', NULL, '2022-05-10 13:21:11'),
(32, 'SONY', 'tan thanh an chu', '0399902410', 'https://www.sony.com.vn/image/a65d25160f409a2f8f23299be205450d?fmt=jpeg&wid=960&qlt=43', 3, '2024-08-13 23:27:20', NULL, '2024-08-13 23:27:20'),
(33, 'Logitech', 'tan thanh an chu', '0399902410', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF_r854cQwO_Q0GCxIPDqi2C_oSvlGnFQCyA&s', 4, '2024-08-14 00:13:58', NULL, '2024-08-14 00:13:58'),
(34, 'Xioami', 'Việt Nam', '0323456768', 'https://upload.wikimedia.org/wikipedia/commons/a/ae/Xiaomi_logo_%282021-%29.svg', 3, '2024-08-15 00:36:49', NULL, '2024-08-15 00:36:49');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name_receiver` varchar(60) NOT NULL,
  `phone_receiver` varchar(20) NOT NULL,
  `address_receiver` varchar(200) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1,
  `total_price` float NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `name_receiver`, `phone_receiver`, `address_receiver`, `status`, `total_price`, `created_at`, `deleted_at`, `updated_at`) VALUES
(43, 57, 'Duy', '0399902410', 'Tt', 1, 27999000, '2024-08-10 11:18:57', NULL, '2024-08-10 11:18:57'),
(44, 51, 'nam1', '0323456768', 'Việt Nam', 2, 11190000, '2024-08-13 05:36:56', NULL, '2024-08-13 05:36:56'),
(45, 51, 'nam1', '0323456768', 'Việt Nam', 1, 18250000, '2024-08-13 16:20:34', NULL, '2024-08-13 16:20:34'),
(46, 51, 'nam1', '0323456768', 'Việt Nam', 1, 27190000, '2024-08-13 16:21:04', NULL, '2024-08-13 16:21:04'),
(47, 57, 'Duy', '0399902410', 'Tt', 1, 21490000, '2024-08-13 19:13:35', NULL, '2024-08-13 19:13:35'),
(48, 57, 'Duy', '0399902410', 'Tt', 1, 84449000, '2024-08-13 19:15:10', NULL, '2024-08-13 19:15:10'),
(49, 57, 'Duy', '0399902410', 'Tt', 2, 13050000, '2024-08-14 02:39:37', NULL, '2024-08-14 02:39:37'),
(50, 57, 'Duy', '0399902410', 'Tt', 1, 27999000, '2024-08-14 02:43:43', NULL, '2024-08-14 02:43:43');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`order_id`, `product_id`, `quantity`, `created_at`, `deleted_at`, `updated_at`) VALUES
(43, 30, 1, '2024-08-10 18:18:57', NULL, '2024-08-10 18:18:57'),
(48, 30, 1, '2024-08-14 02:15:10', NULL, '2024-08-14 02:15:10'),
(50, 30, 1, '2024-08-14 09:43:43', NULL, '2024-08-14 09:43:43'),
(46, 31, 1, '2024-08-13 23:21:04', NULL, '2024-08-13 23:21:04'),
(44, 32, 1, '2024-08-13 12:36:56', NULL, '2024-08-13 12:36:56'),
(47, 34, 1, '2024-08-14 02:13:35', NULL, '2024-08-14 02:13:35'),
(49, 35, 1, '2024-08-14 09:39:37', NULL, '2024-08-14 09:39:37'),
(46, 36, 1, '2024-08-13 23:21:04', NULL, '2024-08-13 23:21:04'),
(48, 37, 1, '2024-08-14 02:15:10', NULL, '2024-08-14 02:15:10'),
(48, 38, 1, '2024-08-14 02:15:10', NULL, '2024-08-14 02:15:10'),
(45, 40, 1, '2024-08-13 23:20:34', NULL, '2024-08-13 23:20:34'),
(48, 42, 1, '2024-08-14 02:15:10', NULL, '2024-08-14 02:15:10'),
(48, 47, 1, '2024-08-14 02:15:10', NULL, '2024-08-14 02:15:10'),
(48, 49, 1, '2024-08-14 02:15:10', NULL, '2024-08-14 02:15:10');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `descriptions` text NOT NULL,
  `slug` text NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `photo`, `category_id`, `price`, `descriptions`, `slug`, `manufacturer_id`, `created_at`, `deleted_at`, `updated_at`) VALUES
(30, 'iPhone 15 Pro Max', '1723526451.webp', 1, 27999000, 'iPhone 15 Pro Max - Đỉnh Cao Công Nghệ, Tương Lai Trong Tầm Tay\n\nTổng Quan:\niPhone 15 Pro Max, siêu phẩm mới nhất từ Apple, đại diện cho bước đột phá về công nghệ di động. Với thiết kế sang trọng, hiệu năng mạnh mẽ và hệ thống camera tiên tiến, iPhone 15 Pro Max là sự lựa chọn hoàn hảo cho những ai yêu thích công nghệ hiện đại.\n\nThiết Kế Đẳng Cấp:\niPhone 15 Pro Max sở hữu thiết kế kim loại nguyên khối, kết hợp cùng mặt kính cường lực Ceramic Shield, mang đến vẻ ngoài bóng bẩy và khả năng chống trầy xước vượt trội. Màn hình Super Retina XDR 6.7 inch cung cấp hình ảnh sắc nét, sống động với độ phân giải cao và công nghệ ProMotion 120Hz giúp trải nghiệm mượt mà hơn bao giờ hết.\n\nHiệu Năng Vượt Trội:\nĐược trang bị chip A17 Bionic mới nhất, iPhone 15 Pro Max không chỉ nhanh hơn mà còn tiết kiệm năng lượng hơn. Chip A17 Bionic với công nghệ 5nm mang lại khả năng xử lý đồ họa và AI mạnh mẽ, cho phép bạn thỏa sức trải nghiệm các tựa game đỉnh cao và ứng dụng nặng một cách trơn tru.\n\nHệ Thống Camera Chuyên Nghiệp:\nVới cụm 3 camera sau 48MP, iPhone 15 Pro Max cho phép bạn chụp ảnh với độ chi tiết và sắc nét đáng kinh ngạc. Công nghệ LiDAR giúp cải thiện khả năng lấy nét trong điều kiện thiếu sáng, đồng thời mở ra khả năng chụp ảnh chân dung và AR ấn tượng. Camera trước 12MP với tính năng Deep Fusion mang đến những bức ảnh selfie hoàn hảo ngay cả trong điều kiện ánh sáng yếu.\n\nThời Lượng Pin Khủng:\nPin của iPhone 15 Pro Max có dung lượng lớn, hỗ trợ sạc nhanh 30W và sạc không dây MagSafe. Bạn có thể sử dụng cả ngày dài mà không cần lo lắng về việc sạc pin.\n\nKết Nối Và Bảo Mật:\niPhone 15 Pro Max hỗ trợ mạng 5G, mang lại tốc độ tải xuống và duyệt web nhanh chóng. Cùng với đó, công nghệ Face ID thế hệ mới cho phép nhận diện khuôn mặt nhanh hơn, an toàn hơn.\n\nNhững Điểm Nổi Bật:\n\nMàn hình Super Retina XDR 6.7 inch, ProMotion 120Hz\nChip A17 Bionic với công nghệ 5nm\nCụm 3 camera sau 48MP, hỗ trợ LiDAR\nPin dung lượng lớn, hỗ trợ sạc nhanh 30W\nHỗ trợ mạng 5G, Face ID thế hệ mới\nKết Luận:\niPhone 15 Pro Max không chỉ là một chiếc điện thoại, mà còn là biểu tượng của sự đẳng cấp và công nghệ tiên tiến. Với những cải tiến vượt bậc, đây chắc chắn là lựa chọn hàng đầu cho những ai đang tìm kiếm một chiếc smartphone mạnh mẽ, đẹp mắt và đầy đủ tính năng.', 'Thông tin màn hình\r\nCông nghệ màn hình	Dynamic Island\r\nMàn hình Luôn Bật\r\nCông nghệ ProMotion với tốc độ làm mới thích ứng lên đến 120Hz\r\nMàn hình HDR\r\nTrue Tone\r\nDải màu rộng (P3)\r\nHaptic Touch\r\nTỷ lệ tương phản 2.000.000:1 (tiêu chuẩn)\r\nĐộ sáng tối đa 1.000 nit (tiêu chuẩn); độ sáng đỉnh 1.600 nit (HDR); độ sáng đỉnh 2.000 nit (ngoài trời)\r\nLớp phủ kháng dầu chống in dấu vân tay\r\nHỗ trợ hiển thị đồng thời nhiều ngôn ngữ và ký tự\r\nĐộ phân giải	Độ phân giải 2796x1290 pixel với mật độ điểm ảnh 460 ppi\r\nMàn hình rộng	Màn hình toàn phần OLED 6,7 inch (theo đường chéo)', 9, '2024-08-10 00:03:35', NULL, '2024-08-10 00:03:35'),
(31, 'OPPO Reno7 Z 5G5', '1723525930.webp', 1, 10500000, 'OPPO Reno7 Z 5G - Hiệu Năng Mạnh Mẽ, Trải Nghiệm 5G Vượt Trội\\n\\n\nTổng Quan:\\n\nOPPO Reno7 Z 5G, chiếc smartphone tầm trung mới nhất của OPPO, không chỉ gây ấn tượng với thiết kế thời thượng mà còn sở hữu những tính năng vượt trội, mang lại trải nghiệm 5G mượt mà, nhanh chóng. Đây là lựa chọn hoàn hảo cho người dùng yêu thích công nghệ và mong muốn một chiếc điện thoại đáp ứng tốt mọi nhu cầu hàng ngày.\\n\\n\n\nThiết Kế Thời Thượng:\\n\nOPPO Reno7 Z 5G có thiết kế siêu mỏng với độ dày chỉ 7.55mm, mang đến vẻ ngoài tinh tế và hiện đại. Mặt lưng được làm từ chất liệu cao cấp với hiệu ứng chuyển màu đẹp mắt, kết hợp cùng cụm camera được thiết kế độc đáo, tạo nên điểm nhấn nổi bật.\\n\\n\n\nMàn Hình Sắc Nét:\\n\nSở hữu màn hình AMOLED 6.43 inch, OPPO Reno7 Z 5G mang đến chất lượng hiển thị sắc nét, màu sắc rực rỡ với độ phân giải Full HD+. Tần số quét 60Hz cùng độ sáng tối đa lên đến 600 nits giúp người dùng có thể trải nghiệm hình ảnh mượt mà, rõ nét ngay cả dưới ánh sáng mạnh.\\n\\n\n\nHiệu Năng Mạnh Mẽ:\\n\nĐược trang bị vi xử lý Qualcomm Snapdragon 695 5G, OPPO Reno7 Z 5G đảm bảo hiệu suất vượt trội, hỗ trợ tốt mọi tác vụ từ lướt web, xem phim đến chơi game. Bộ nhớ RAM 8GB cùng khả năng mở rộng RAM ảo thêm 5GB giúp thiết bị hoạt động mượt mà khi chạy đa nhiệm, không giật lag.\\n\\n\n\nCamera Chụp Ảnh Đỉnh Cao:\\n\nHệ thống 3 camera sau bao gồm cảm biến chính 64MP, camera macro 2MP và cảm biến độ sâu 2MP, giúp người dùng dễ dàng chụp được những bức ảnh rõ nét và đầy chi tiết. Camera trước 16MP với công nghệ AI mang đến những bức ảnh selfie chân thực và rạng rỡ.\\n\\n\n\nPin Khủng, Sạc Nhanh:\\n\nOPPO Reno7 Z 5G sở hữu viên pin dung lượng 4,500mAh, đủ sức đáp ứng nhu cầu sử dụng cả ngày dài. Công nghệ sạc nhanh SuperVOOC 33W cho phép sạc đầy pin trong thời gian ngắn, giúp bạn luôn sẵn sàng cho mọi hoạt động.\\n\\n\n\nKết Nối 5G Tốc Độ Cao:\\n\nHỗ trợ kết nối 5G, OPPO Reno7 Z 5G mang lại tốc độ truy cập internet vượt trội, tải xuống và truyền phát dữ liệu nhanh chóng, đáp ứng nhu cầu giải trí và công việc của người dùng trong thời đại số.\\n\\n\n\nNhững Điểm Nổi Bật:\\n\\n\n\nThiết kế siêu mỏng, mặt lưng chuyển màu tinh tế\\n\nMàn hình AMOLED 6.43 inch, độ phân giải Full HD+\\n\nVi xử lý Qualcomm Snapdragon 695 5G, RAM 8GB\\n\nCamera chính 64MP, hỗ trợ AI\\n\nPin 4,500mAh, sạc nhanh SuperVOOC 33W\\n\nKết nối 5G tốc độ cao\\n\\n\nKết Luận:\\n\nOPPO Reno7 Z 5G là một chiếc smartphone lý tưởng trong phân khúc tầm trung, hội tụ đầy đủ các yếu tố từ thiết kế, hiệu năng đến khả năng kết nối 5G mạnh mẽ. Đây chắc chắn sẽ là sự lựa chọn hoàn hảo cho những ai đang tìm kiếm một chiếc điện thoại hiện đại, đa năng và giá cả hợp lý.\\n', 'Màn hình Chính: 6.43 inch, Chính: AMOLED, FHD+, 1080 x 2400 Pixels Camera sau 64.0 MP + 8.0 MP + 2.0 MP Camera Selfie 32.0 MP RAM 8 GB Bộ nhớ trong 256 GB CPU MediaTek Dimensity 900 5G GPU Mali-', 11, '2024-08-13 12:12:10', NULL, '2024-08-13 12:12:10'),
(32, 'Điện thoại Samsung Galaxy S23 FE 5G', '1723526233.webp', 1, 11190000, 'Samsung Galaxy S23 FE 5G - Trải Nghiệm Hiệu Suất Cao, Thiết Kế Đẳng Cấp\\n\\n\n\nTổng Quan:\\n\nSamsung Galaxy S23 FE 5G là phiên bản Fan Edition của dòng Galaxy S23, mang đến sự kết hợp hoàn hảo giữa thiết kế tinh tế và hiệu năng mạnh mẽ. Với các tính năng cao cấp cùng kết nối 5G hiện đại, Samsung Galaxy S23 FE 5G là lựa chọn lý tưởng cho những ai tìm kiếm một chiếc điện thoại tầm trung nhưng vẫn đảm bảo chất lượng và hiệu suất cao.\\n\\n\n\nThiết Kế Sang Trọng:\\n\nSamsung Galaxy S23 FE 5G có thiết kế thanh lịch với khung viền kim loại chắc chắn và mặt lưng kính bóng bẩy. Màn hình tràn viền Infinity-O với kích thước 6.4 inch mang đến trải nghiệm thị giác đỉnh cao, trong khi cảm biến vân tay siêu âm dưới màn hình giúp bảo mật nhanh chóng và tiện lợi.\\n\\n\n\nMàn Hình Chất Lượng Cao:\\n\nTrang bị màn hình Dynamic AMOLED 2X với độ phân giải Full HD+, Samsung Galaxy S23 FE 5G mang đến màu sắc sống động và độ tương phản tuyệt vời. Tần số quét 120Hz giúp mọi chuyển động trên màn hình trở nên mượt mà hơn, từ lướt web đến chơi game.\\n\\n\n\nHiệu Năng Vượt Trội:\\n\nSamsung Galaxy S23 FE 5G được trang bị vi xử lý Exynos 2200 (hoặc Snapdragon 8 Gen 1 tùy thị trường), cùng với RAM 8GB, giúp đáp ứng mượt mà mọi tác vụ từ công việc đến giải trí. Dung lượng bộ nhớ trong 128GB/256GB cho phép bạn lưu trữ thoải mái mà không cần lo lắng về không gian.\\n\\n\n\nCamera Sắc Nét:\\n\nHệ thống 3 camera sau với cảm biến chính 50MP, camera góc siêu rộng 12MP và camera tele 8MP mang lại khả năng chụp ảnh đa dạng từ mọi góc độ. Camera trước 32MP với công nghệ AI nâng cao giúp bạn có được những bức ảnh selfie rõ nét và đẹp mắt trong mọi điều kiện ánh sáng.\\n\\n\n\nPin Dung Lượng Lớn, Sạc Nhanh:\\n\nViên pin 4,500mAh của Samsung Galaxy S23 FE 5G hỗ trợ sạc nhanh 25W, giúp bạn nhanh chóng nạp đầy năng lượng và sẵn sàng cho mọi hoạt động. Thêm vào đó, thiết bị còn hỗ trợ sạc không dây và sạc ngược không dây, mang đến sự tiện lợi tối đa.\\n\\n\n\nKết Nối 5G Siêu Tốc:\\n\nSamsung Galaxy S23 FE 5G hỗ trợ kết nối 5G, cho phép bạn truy cập internet với tốc độ cao, mang lại trải nghiệm lướt web, xem video trực tuyến và tải xuống nhanh chóng hơn bao giờ hết.\\n\\n\n\nNhững Điểm Nổi Bật:\\n\\n\n\nThiết kế sang trọng, màn hình Infinity-O 6.4 inch\\n\nMàn hình Dynamic AMOLED 2X, tần số quét 120Hz\\n\nVi xử lý Exynos 2200/Snapdragon 8 Gen 1, RAM 8GB\\n\nCamera chính 50MP, góc siêu rộng 12MP, tele 8MP\\n\nPin 4,500mAh, hỗ trợ sạc nhanh 25W, sạc không dây\\n\nKết nối 5G tốc độ cao\\n\\n\nKết Luận:\\n\nSamsung Galaxy S23 FE 5G là sự lựa chọn hoàn hảo cho những ai tìm kiếm một chiếc smartphone với thiết kế đẳng cấp, hiệu năng mạnh mẽ và khả năng kết nối 5G siêu tốc. Đây chắc chắn là một trong những sản phẩm đáng cân nhắc trong phân khúc tầm trung hiện nay.\\n', 'Độ phân giải camera\r\nGóc rộng: 50MP\r\nGóc siêu rộng: 12MP\r\nZoom quang 3X: 8MP\r\n10MP (F2.4)\r\nBộ nhớ trong\r\n128GB\r\nSố khe SIM\r\nSIM Kép (SIM 1 + SIM 2 or Embedded SIM)\r\nMạng di động\r\nCó hỗ trợ 5G\r\nHệ điều hành\r\nAndroid\r\nVi xử lý\r\nExynos 2200\r\nCông nghệ màn hình\r\nDynamic AMOLED 2X\r\nĐộ phân giải\r\n2340 x 1080\r\nKích thước màn hình\r\n6.4\"\r\nDung lượng pin sản phẩm\r\n4500mAh', 10, '2024-08-13 12:17:13', NULL, '2024-08-13 12:17:13'),
(33, 'Samsung Galaxy Z Flip6', '1723526693.webp', 1, 26990000, 'Samsung Galaxy Z Flip6 - Thiết Kế Độc Đáo, Đẳng Cấp Hiệu Năng\\n\\n\n\nTổng Quan:\\n\nSamsung Galaxy Z Flip6 là phiên bản tiếp theo của dòng điện thoại gập nổi tiếng của Samsung, mang đến trải nghiệm sử dụng độc đáo và thời thượng. Với thiết kế nhỏ gọn nhưng đầy mạnh mẽ, Galaxy Z Flip6 là sự kết hợp hoàn hảo giữa phong cách và công nghệ tiên tiến.\\n\\n\n\nThiết Kế Gập Độc Đáo:\\n\nSamsung Galaxy Z Flip6 tiếp tục duy trì thiết kế gập ngang đặc trưng, giúp nó trở nên nhỏ gọn và tiện lợi khi mang theo. Khi mở ra, bạn sẽ có một màn hình lớn 6.7 inch AMOLED chất lượng cao, mang đến trải nghiệm thị giác tuyệt vời. Bên ngoài là màn hình phụ Super AMOLED 1.9 inch, giúp bạn dễ dàng kiểm tra thông báo, thời gian, và nhiều tính năng khác mà không cần mở máy.\\n\\n\n\nMàn Hình Sắc Nét:\\n\nGalaxy Z Flip6 sở hữu màn hình Dynamic AMOLED 2X với độ phân giải Full HD+, mang lại màu sắc sống động và độ tương phản cao. Tần số quét 120Hz giúp mọi chuyển động trên màn hình trở nên mượt mà, lý tưởng cho cả việc lướt web, xem video hay chơi game.\\n\\n\n\nHiệu Năng Vượt Trội:\\n\nSamsung Galaxy Z Flip6 được trang bị vi xử lý Snapdragon 8 Gen 2, kết hợp với RAM 8GB/12GB, mang lại hiệu suất mạnh mẽ để xử lý mọi tác vụ từ công việc đến giải trí. Bộ nhớ trong 128GB/256GB cung cấp không gian lưu trữ rộng rãi, cho phép bạn lưu trữ thoải mái mà không lo hết dung lượng.\\n\\n\n\nCamera Chất Lượng Cao:\\n\nHệ thống camera kép với cảm biến chính 12MP và camera góc siêu rộng 12MP trên Galaxy Z Flip6 cho phép bạn chụp những bức ảnh chất lượng cao từ mọi góc độ. Camera trước 10MP hỗ trợ tính năng tự động lấy nét, giúp bạn có được những bức ảnh selfie đẹp mắt và rõ nét.\\n\\n\n\nPin Đủ Dùng Cả Ngày:\\n\nSamsung Galaxy Z Flip6 được trang bị pin 3,700mAh, hỗ trợ sạc nhanh 25W và sạc không dây, đảm bảo rằng bạn luôn có đủ năng lượng cho cả ngày dài hoạt động. Thêm vào đó, tính năng sạc ngược không dây giúp bạn dễ dàng sạc các thiết bị khác khi cần thiết.\\n\\n\n\nKết Nối 5G Siêu Tốc:\\n\nVới kết nối 5G, Galaxy Z Flip6 mang lại tốc độ truy cập internet siêu nhanh, cho phép bạn trải nghiệm các dịch vụ trực tuyến, tải xuống và truyền phát video với tốc độ ấn tượng.\\n\\n\n\nNhững Điểm Nổi Bật:\\n\\n\n\nThiết kế gập độc đáo, màn hình Dynamic AMOLED 2X 6.7 inch\\n\nMàn hình phụ Super AMOLED 1.9 inch tiện lợi\\n\nVi xử lý Snapdragon 8 Gen 2, RAM 8GB/12GB\\n\nCamera kép 12MP, camera trước 10MP\\n\nPin 3,700mAh, hỗ trợ sạc nhanh 25W, sạc không dây\\n\nKết nối 5G tốc độ cao\\n\\n\nKết Luận:\\n\nSamsung Galaxy Z Flip6 là chiếc smartphone đẳng cấp, kết hợp hoàn hảo giữa thiết kế thời thượng và công nghệ tiên tiến. Với hiệu năng mạnh mẽ và kết nối 5G, đây chắc chắn là sự lựa chọn lý tưởng cho những ai muốn sở hữu một thiết bị công nghệ cao với phong cách độc đáo.\\n', 'Độ phân giải camera\r\n50 MP + 12 MP\r\n10 MP\r\nHệ điều hành\r\nOneUI 6.1.1 / Android 14\r\nBộ nhớ trong\r\n256GB\r\nMạng di động\r\nHỗ trợ 5G\r\nSố khe SIM\r\n1 Nano-sim & 1 E-sim\r\n2 E-sim\r\nVi xử lý\r\nSnapdragon 8 Gen 3\r\nCông nghệ màn hình\r\nMH chính: Dynamic AMOLED 2X\r\nMH phụ: Super AMOLED\r\nĐộ phân giải\r\nMH chính: 2640 x 1080\r\nMH phụ: 748 x 720\r\nKích thước màn hình\r\nMH chính: 6.7\"\r\nMH phụ: 3.4\"\r\nDung lượng pin sản phẩm\r\n4000mAh', 10, '2024-08-13 12:24:53', NULL, '2024-08-13 12:24:53'),
(34, 'Điện Thoại AI - Samsung Galaxy S24', '1723526798.pngtrim', 1, 21490000, 'Samsung Galaxy S24 - Trí Tuệ Nhân Tạo Đột Phá, Hiệu Năng Vượt Trội\\n\\n\n\nTổng Quan:\\n\nSamsung Galaxy S24 là thế hệ điện thoại thông minh mới nhất của Samsung, mang đến trải nghiệm đột phá với tích hợp công nghệ trí tuệ nhân tạo (AI) tiên tiến. Đây là thiết bị lý tưởng cho những người dùng mong muốn một chiếc điện thoại không chỉ mạnh mẽ về hiệu năng mà còn thông minh và tiện lợi trong mọi tình huống.\\n\\n\n\nThiết Kế Sang Trọng:\\n\nSamsung Galaxy S24 sở hữu thiết kế nguyên khối với khung viền kim loại cao cấp và mặt lưng kính Gorilla Glass Victus 2 bền bỉ. Màn hình tràn viền 6.8 inch Dynamic AMOLED 2X với độ phân giải QHD+ mang đến trải nghiệm hình ảnh sống động và sắc nét đến từng chi tiết.\\n\\n\n\nMàn Hình Siêu Nét:\\n\nMàn hình của Galaxy S24 hỗ trợ tần số quét 120Hz, giúp mọi thao tác trở nên mượt mà hơn. Công nghệ HDR10+ đảm bảo màu sắc trung thực và độ sáng tối ưu, giúp bạn trải nghiệm nội dung số ở đẳng cấp cao nhất.\\n\\n\n\nHiệu Năng Mạnh Mẽ:\\n\nSamsung Galaxy S24 được trang bị vi xử lý Snapdragon 8 Gen 3 (hoặc Exynos 2400 tùy thị trường), kết hợp với RAM 12GB/16GB, mang lại hiệu suất đỉnh cao. Dung lượng lưu trữ từ 256GB đến 1TB giúp bạn thoải mái lưu trữ dữ liệu, hình ảnh và ứng dụng mà không lo thiếu không gian.\\n\\n\n\nCamera AI Đỉnh Cao:\\n\nHệ thống 4 camera sau với cảm biến chính 108MP, camera góc siêu rộng 12MP, camera tele 10MP với zoom quang 10x, và cảm biến ToF mang đến khả năng chụp ảnh chuyên nghiệp. Công nghệ AI tích hợp giúp tối ưu hóa từng bức ảnh, từ nhận diện khung cảnh đến điều chỉnh ánh sáng và màu sắc.\\n\\n\n\nPin Lâu Dài, Sạc Nhanh:\\n\nSamsung Galaxy S24 được trang bị pin dung lượng 5,000mAh, hỗ trợ sạc nhanh 45W và sạc không dây 25W. Với công nghệ quản lý pin AI, thiết bị tối ưu hóa thời gian sử dụng, đảm bảo năng lượng suốt cả ngày.\\n\\n\n\nKết Nối 5G và AI Tiên Tiến:\\n\nSamsung Galaxy S24 không chỉ hỗ trợ kết nối 5G siêu tốc, mà còn tích hợp AI để tối ưu hóa trải nghiệm người dùng. Từ việc quản lý tác vụ, cải thiện hiệu suất đến tối ưu hóa pin, AI sẽ biến Galaxy S24 thành người trợ lý thông minh trong mọi tình huống.\\n\\n\n\nNhững Điểm Nổi Bật:\\n\\n\n\nThiết kế sang trọng, màn hình Dynamic AMOLED 2X 6.8 inch\\n\nTần số quét 120Hz, độ phân giải QHD+, HDR10+\\n\nVi xử lý Snapdragon 8 Gen 3/Exynos 2400, RAM 12GB/16GB\\n\nCamera chính 108MP, AI tối ưu hóa hình ảnh\\n\nPin 5,000mAh, hỗ trợ sạc nhanh 45W và sạc không dây\\n\nKết nối 5G siêu tốc, tích hợp AI thông minh\\n\\n\nKết Luận:\\n\nSamsung Galaxy S24 là lựa chọn hoàn hảo cho những ai mong muốn một chiếc smartphone không chỉ mạnh mẽ về hiệu năng mà còn thông minh nhờ AI tích hợp. Đây là sản phẩm tiên tiến nhất của Samsung, mang đến trải nghiệm công nghệ đỉnh cao.\\n', 'Độ phân giải camera\r\n50.0 MP + 10.0 MP + 12.0 MP\r\n(F1.8 , F2.4 , F2.2)\r\n12.0 MP\r\nSố khe SIM\r\nNano-SIM (4FF),Embedded-SIM\r\nBộ nhớ trong\r\n512GB\r\nVi xử lý\r\nExynos 2400\r\nCông nghệ màn hình\r\nDynamic AMOLED 2X\r\nĐộ phân giải\r\n2340 x 1080\r\nKích thước màn hình\r\n6.2\"\r\nDung lượng pin sản phẩm\r\n4000mAh', 10, '2024-08-13 12:26:38', NULL, '2024-08-13 12:26:38'),
(35, 'Xiaomi 13 Pro', '1723527722.webp', 1, 13050000, 'Xiaomi 13 Pro - Hiệu Năng Đỉnh Cao, Công Nghệ Hàng Đầu\\n\\n\n\nTổng Quan:\\n\nXiaomi 13 Pro là chiếc flagship mới nhất từ Xiaomi, được thiết kế để mang đến trải nghiệm đỉnh cao với hiệu năng mạnh mẽ, camera vượt trội và màn hình chất lượng hàng đầu. Đây là sự lựa chọn hoàn hảo cho những ai đam mê công nghệ và tìm kiếm một chiếc smartphone toàn diện về mọi mặt.\\n\\n\n\nThiết Kế Cao Cấp:\\n\nXiaomi 13 Pro có thiết kế sang trọng với khung viền kim loại và mặt lưng kính cường lực bóng bẩy. Màn hình cong 6.73 inch AMOLED mang đến cảm giác cầm nắm thoải mái và trải nghiệm thị giác tuyệt vời. Với các đường viền siêu mỏng và tỷ lệ màn hình so với thân máy cao, Xiaomi 13 Pro thực sự nổi bật về mặt thẩm mỹ.\\n\\n\n\nMàn Hình Chất Lượng:\\n\nTrang bị màn hình AMOLED độ phân giải QHD+ và hỗ trợ tần số quét 120Hz, Xiaomi 13 Pro mang lại chất lượng hiển thị sắc nét và mượt mà. Công nghệ Dolby Vision và HDR10+ giúp tăng cường độ tương phản và màu sắc, mang đến trải nghiệm xem phim, chơi game đầy ấn tượng.\\n\\n\n\nHiệu Năng Mạnh Mẽ:\\n\nXiaomi 13 Pro được trang bị vi xử lý Snapdragon 8 Gen 2, kết hợp với RAM 12GB/16GB, giúp thiết bị hoạt động mạnh mẽ trong mọi tác vụ, từ công việc đến giải trí. Bộ nhớ trong từ 256GB đến 512GB cung cấp không gian lưu trữ rộng rãi cho tất cả các ứng dụng, game và dữ liệu cá nhân.\\n\\n\n\nCamera Đỉnh Cao:\\n\nHệ thống 3 camera sau với cảm biến chính 50MP, camera góc siêu rộng 50MP và camera tele 50MP, kết hợp công nghệ Leica, mang đến khả năng chụp ảnh chuyên nghiệp. AI tích hợp giúp tối ưu hóa từng bức ảnh, từ độ nét đến màu sắc, mang lại những bức hình chân thực và sống động.\\n\\n\n\nPin Dung Lượng Lớn, Sạc Nhanh:\\n\nXiaomi 13 Pro sở hữu viên pin dung lượng 4,820mAh, hỗ trợ sạc nhanh 120W, cho phép sạc đầy pin chỉ trong vài phút. Ngoài ra, máy còn hỗ trợ sạc không dây 50W và sạc ngược không dây, mang đến sự tiện lợi tối đa cho người dùng.\\n\\n\n\nKết Nối 5G Siêu Tốc:\\n\nVới kết nối 5G, Xiaomi 13 Pro mang lại tốc độ truy cập internet siêu nhanh, giúp bạn dễ dàng lướt web, xem video trực tuyến và tải xuống dữ liệu với tốc độ ấn tượng. Tính năng này đặc biệt hữu ích trong môi trường làm việc di động.\\n\\n\n\nNhững Điểm Nổi Bật:\\n\\n\n\nThiết kế cao cấp, màn hình cong AMOLED 6.73 inch\\n\nĐộ phân giải QHD+, tần số quét 120Hz, hỗ trợ Dolby Vision\\n\nVi xử lý Snapdragon 8 Gen 2, RAM 12GB/16GB\\n\nHệ thống 3 camera 50MP, công nghệ Leica, AI tối ưu hóa\\n\nPin 4,820mAh, sạc nhanh 120W, sạc không dây 50W\\n\nKết nối 5G tốc độ cao\\n\\n\nKết Luận:\\n\nXiaomi 13 Pro là sự lựa chọn lý tưởng cho những ai muốn sở hữu một chiếc smartphone mạnh mẽ với thiết kế tinh tế và công nghệ tiên tiến. Với hiệu năng đỉnh cao và camera chất lượng, đây chắc chắn là một trong những sản phẩm hàng đầu trên thị trường hiện nay.\\n\n\n', 'LTPO AMOLED, 1 tỷ màu, 120Hz, Dolby Vision, HDR10+, 1200 nits (HBM), 1900 nits (tối đa)\r\n6.73 inches, 2K (1440 x 3200 pixels), tỷ lệ 20:9\r\nCorning Gorilla Glass Victus', 6, '2024-08-13 12:42:02', NULL, '2024-08-13 12:42:02'),
(36, 'Laptop MSI Modern A5M 239VN', '1723560764.webp', 2, 16690000, 'MSI Modern A5M 239VN - Thiết Kế Thanh Lịch, Hiệu Năng Ấn Tượng\\n\\n\n\nTổng Quan:\\n\nMSI Modern A5M 239VN là chiếc laptop hoàn hảo dành cho người dùng văn phòng và sinh viên, nổi bật với thiết kế thanh lịch và hiệu năng ấn tượng. Với cấu hình mạnh mẽ, chiếc laptop này đáp ứng tốt các nhu cầu làm việc, học tập, và giải trí hàng ngày.\\n\\n\n\nThiết Kế Thanh Lịch:\\n\nMSI Modern A5M 239VN có thiết kế gọn nhẹ và tinh tế với trọng lượng chỉ 1.6kg, dễ dàng mang theo bên mình. Lớp vỏ kim loại cao cấp không chỉ tạo nên vẻ ngoài sang trọng mà còn giúp bảo vệ máy khỏi va đập và trầy xước trong quá trình sử dụng.\\n\\n\n\nMàn Hình Sắc Nét:\\n\nLaptop được trang bị màn hình 15.6 inch IPS với độ phân giải Full HD (1920 x 1080), mang đến hình ảnh sắc nét và màu sắc chân thực. Góc nhìn rộng và khả năng chống chói giúp bạn làm việc hiệu quả ngay cả trong môi trường ánh sáng mạnh.\\n\\n\n\nHiệu Năng Mạnh Mẽ:\\n\nMSI Modern A5M 239VN được trang bị vi xử lý AMD Ryzen 5 5625U, kết hợp với RAM 8GB DDR4, cho phép xử lý mượt mà các tác vụ đa nhiệm, từ duyệt web, xử lý văn bản đến chỉnh sửa ảnh và video cơ bản. Ổ cứng SSD 512GB NVMe không chỉ mang đến tốc độ khởi động nhanh mà còn cung cấp không gian lưu trữ rộng rãi cho dữ liệu cá nhân.\\n\\n\n\nBàn Phím và Touchpad:\\n\nBàn phím của MSI Modern A5M 239VN được thiết kế với độ nảy tốt, hành trình phím êm ái, tạo cảm giác thoải mái khi gõ phím trong thời gian dài. Touchpad rộng rãi, nhạy bén và hỗ trợ đa điểm, giúp bạn dễ dàng điều khiển và thao tác.\\n\\n\n\nKết Nối Đa Dạng:\\n\nLaptop được trang bị đầy đủ các cổng kết nối cần thiết như USB Type-C, USB 3.2, HDMI, và khe đọc thẻ nhớ microSD, giúp bạn dễ dàng kết nối với các thiết bị ngoại vi và truyền dữ liệu một cách nhanh chóng.\\n\\n\n\nThời Lượng Pin Ấn Tượng:\\n\nVới viên pin dung lượng lớn, MSI Modern A5M 239VN có thể hoạt động liên tục trong nhiều giờ, giúp bạn yên tâm làm việc mà không lo gián đoạn. Ngoài ra, công nghệ sạc nhanh giúp bạn nhanh chóng sạc đầy pin khi cần thiết.\\n\\n\n\nNhững Điểm Nổi Bật:\\n\\n\n\nThiết kế gọn nhẹ, vỏ kim loại cao cấp\\n\nMàn hình 15.6 inch IPS Full HD, góc nhìn rộng, chống chói\\n\nVi xử lý AMD Ryzen 5 5625U, RAM 8GB DDR4\\n\nỔ cứng SSD 512GB NVMe, khởi động nhanh, lưu trữ rộng rãi\\n\nBàn phím êm ái, Touchpad nhạy bén\\n\nĐầy đủ cổng kết nối: USB Type-C, HDMI, microSD\\n\nThời lượng pin dài, hỗ trợ sạc nhanh\\n\\n\nKết Luận:\\n\nMSI Modern A5M 239VN là lựa chọn hoàn hảo cho những ai đang tìm kiếm một chiếc laptop văn phòng với thiết kế đẹp mắt, hiệu năng ổn định và khả năng di động cao. Với cấu hình mạnh mẽ và các tính năng tiên tiến, đây chắc chắn là người bạn đồng hành đáng tin cậy trong công việc và học tập.\\n', 'Dung lượng RAM: 8GB\r\n\r\nỔ cứng: 512GB NVMe PCIe Gen3x4 SSD, 2 khe M.2 SSD NVMe PCIe Gen3x4\r\n\r\nLoại CPU: AMD RyzenTM 7 5700U\r\n\r\nKích thước màn hình: 15.6 inches', 23, '2024-08-13 21:52:44', NULL, '2024-08-13 21:52:44'),
(37, 'Laptop Asus Vivobook A415EA EB1474W', '1723560902.webp', 2, 15690000, 'Laptop Asus VivoBook A415EA EB1474W - Thiết kế hiện đại, hiệu năng tối ưu Laptop Asus VivoBook A415EA EB1474W được hãng Asus cho ra mắt đóng vai trò là người bạn đồng hành đắc lực trong laptop học tập - văn phòng. Được sở hữu lối thiết kế đơn giản nhưng cũng rất thanh lịch, với những thông số kỹ thuật khá ổn định, cùng mình tìm hiểu thêm ở bài viết dưới đây nhé. Thiết kế gọn nhẹ và thanh lịch, nắp lưng chắc chắn Laptop Asus VivoBook A415EA EB1474W được sở hữu với thiết kế gọn nhẹ và thanh lịch có độ mỏng 17.9 mm và chỉ 1.4 kg sẽ khẳng định tiện lợi của sản phẩm, bạn dễ dàng bỏ vừa balo mang đi học tập hoặc đi làm việc khắp mọi nơi. Nắp lưng của laptop được hoàn thiện đơn giản chắc chắn nhưng vẫn có tính thẩm mỹ. Thiết kế gọn nhẹ và thanh lịch, nắp lưng chắc chắn Hiệu năng tối ưu nâng cao hiệu suất công việc, ổ cứng hiện đại Laptop Asus VivoBook A415EA EB1474W có hiệu năng tối ưu cùng bộ CPU Intel Core i5 thế hệ thứ 11 hiện đại xung nhịp trung bình 2.4 GHz đạt tối ưu đến 4.2 GHz, mọi thao tác sẽ mượt mà và hiệu quả hơn, giúp nâng cao hiệu suất công việc. Hiệu năng tối ưu nâng cao hiệu suất công việc, ổ cứng hiện đại Laptop còn được trang bị ổ cứng hiện đại SSD 512GB NVMe PCIe giúp nâng cao tốc độ khởi động ứng dụng nhanh chóng, tiết kiệm được thời gian, hiệu quả năng suất của công việc sẽ được cải thiện rất đáng kể.', 'Dung lượng RAM: 8GB\r\n\r\nỔ cứng: 512GB M.2 NVMe™ PCIe® 3.0 SSD\r\n\r\nLoại CPU: Intel® Core™ i5-1135G7\r\n\r\nKích thước màn hình: 14 inches', 14, '2024-08-13 21:55:02', NULL, '2024-08-13 21:55:02'),
(38, 'Laptop Asus gaming Rog Strix G15 G513IH-HN015W', '1723561004.webp', 2, 18890000, 'Laptop Asus gaming Rog Strix G15 G513IH-HN015W - Cấu hình mạnh mẽ chiến game Asus ROG Strix G15 G513IH-HN015TW là chiếc laptop có cấu hình mạnh mẽ, đáp ứng được hầu hết các tựa game trên thị trường hiện nay. Ngay cả khi hoạt động trong nhiều giờ liền máy vẫn khá mát mẻ do có hệ thống tản nhiệt cao cấp. Nếu bạn là một game thủ hay người dùng muốn tìm máy có cấu hình cao thì đừng bỏ qua chiếc laptop Asus chất lượng này. Thiết kế mạnh mẽ Asus ROG Strix G15 G513IH-HN015TW có ngoại hình vô cùng mạnh mẽ với màu sắc trang nhã. Khung máy có kích thước nhỏ hơn đến 7% so với thế hệ trước giúp bạn có thể chơi bất cứ tựa game nào mà bạn muốn. Thiết kế mạnh mẽ Những đường cắt hay biểu tượng trên máy cũng được thiết kế tinh tế. Dù đặt ở bất cứ vị trí nào máy cũng cực kỳ thu hút và ấn tượng. Hệ thống đèn chiếu sáng mặt đáy cùng hệ thống Aura Sync nổi bật từ logo kim loại của ROG càng khiến Asus ROG Strix G15 thu hút hơn. Đèn LED RGB tỏa sáng rực rỡ Hệ thống đèn LED nhiều màu sắc vừa có khả năng tăng cường độ bảo mật đèn LED vừa tạo nên hiệu ứng ánh sáng nổi bật tại mắt đáy. Mặt lưng được làm bằng chất liệu nhôm cứng cáp cho cảm giác khung máy trở nên bóng bẩy hơn. Phần chiếu nghỉ tay được phủ bằng soft-touch cho cảm giác khá dễ chịu và thoải mái. Đèn LED RGB tỏa sáng rực rỡ Hệ thống tản nhiệt tốt Asus ROG Strix G15 G513IH-HN015TW có hệ thống tản nhiệt siêu khủng. Với keo tản nhiệt kim loại lỏng trên CPU máy sở hữu khả năng làm mát vô cùng tuyệt vời. So với phương pháp làm mát truyền thống thì phương pháp này có tính vượt trội hơn nhiều lần. Hệ thống tản nhiệt tốt Chúng hoạt động theo nguyên tắc, đi lên đến 6 ống đồng và 4 khe tản nhiệt có kích thước lớn. Lúc này ROG Strix series sẽ hoạt động mạnh, làm mát nhưng rất êm ái. Độ ồn ở mức khá thấp giúp cho game thủ không cảm thấy bị phân tâm. Ngay cả khi chơi liên tục trong nhiều giờ đồng hồ, máy cũng nóng lên không đáng kể. Đây là một trong những tính năng được rất nhiều game thủ yêu thích. Bàn di chuột lớn hơn Bàn di chuột của Asus ROG Strix G15 G513IH-HN015TW R7 có diện tích lớn hơn. Việc này thuận tiện hơn khi bạn cần sử máy hàng ngày. Thiết kế này giúp bạn có không gian lớn hơn để làm việc. Khi thực hiện các thao tác, động tác độ chính xác sẽ cao hơn và cảm giác bàn tay được thoải mái hơn nhiều lần. Bàn di chuột cứng được phủ một lớp nhám mang đến cảm giác mềm mại; mượt mà khi chạm vào. Bàn di chuột lớn hơn Chiến game siêu mượt Khả năng chiến game của Asus ROG Strix G15 G513IH-HN015TW được đánh giá rất xuất sắc. Với màn hình FHD 144Hz cùng Adaptive-Sync giúp loại bỏ hiện tượng xé viền. Không chỉ vậy, nhà sản xuất luôn chú trọng đến trải nghiệm cho người dùng khi thiết kế viền chỉ mỏng 4,5mm ở 3 cạnh. Bạn hoàn toàn tập trung vào những trận chiến mà không bị bất cứ yếu tố nào làm phân tâm. Chiến game siêu mượt Mua ngay laptop Asus ROG Strix G15 G513IH-HN015TW chính hãng tại CellphoneS Với thiết kế đẹp mắt, hiệu năng mạnh mẽ, hệ thống tản nhiệt siêu khủng... laptop Asus ROG Strix G15 G513IH-HN015TW là một trong những chiếc laptop gaming mà game thủ nào cũng mong muốn sở hữu.', 'Dung lượng RAM: 8GB\r\n\r\nỔ cứng: 512GB SSD NVMe M.2 PCIe Gen 3 x 4\r\n\r\nLoại CPU: AMD Ryzen 7 4800H\r\n\r\nKích thước màn hình: 15.6 inches', 14, '2024-08-13 21:56:44', NULL, '2024-08-13 21:56:44'),
(39, 'Laptop HP 240 G8 3D0A4PA', '1723561383.webp', 2, 16890000, 'Laptop HP 240 G8 3D0A4PA- Hiệu năng mạnh mẽ vượt trội Laptop HP 240 G8 3D0A4PA là dòng sản phẩm máy tính xách tay cao cấp được thiết kế với hiệu năng mạnh mẽ, hứa hẹn sẽ mang đến cho người dùng khám phá những giờ phút chơi game tuyệt vời và ngập tràn cảm hứng. Trọng lượng nhỏ gọn, thiết kế nguyên khối sang trọng Laptop HP 240 G8 3D0A4PA được thiết kế với thân máy mỏng, viền màn hình siêu mỏng mang đến cho người dùng sự tiện lợi khi được hãng thiết kế với kích thước nhỏ gọn chỉ 14 inch IPS Full HD. Nhờ đó mà trọng lượng của chiếc HP này khá nhỏ gọn với 1.47kg giúp người dùng dễ dàng di chuyển hơn. Trọng lượng nhỏ gọn, thiết kế nguyên khối sang trọng Toàn bộ vỏ bọc bên ngoài chiếc laptop HP 240 G8 3D0A4PA được thiết kế nguyên khối với gam màu bạc mang lại sự sang trọng, hiện đại phù hợp với mọi không gian làm việc của bạn. Chiếc laptop được bảo vệ bởi lớp vỏ ngoài chắc chắn tránh được các tác động bên ngoài như va chạm, trầy xước,... Hiệu năng mạnh mẽ vượt trội, hệ điều hành Windows 10 Laptop HP 240 G8 3D0A4PA được chính hãng này trang bị cho con chip Intel thế hệ mới mang đến hiệu năng cực tốt. Với tốc độ xung nhịp cao hỗ trợ tối đa người dùng khi thao tác với các tác vụ nâng cao. Laptop HP 240 G8 3D0A4PA là một trong những sản phẩm laptop hoạt động mạnh mẽ được hãng thiết kế hỗ trợ bộ ram DDR4 có dung lượng vừa phải giúp bạn hoàn toàn có thể trải nghiệm được nhiều tính năng, phần mềm mượt mà. Hiệu năng mạnh mẽ vượt trội, hệ điều hành Windows 10 Chiếc laptop HP 240 G8 3D0A4PA được trang bị hệ điều hành Windows 10 giúp bạn có thể sử dụng những phần mềm game cao cấp.', 'Dung lượng RAM: 4GB\r\n\r\nỔ cứng: 512GB SSD PCle NVMe\r\n\r\nLoại CPU: Intel Core i5-1135G7 2.40 GHz up to 4.20 GHz, 8MB\r\n\r\nKích thước màn hình: 14 inches', 20, '2024-08-13 22:03:03', NULL, '2024-08-13 22:03:03'),
(40, 'MacBook Air M1 13\"', '1723561650.webp', 2, 18250000, 'Năm 2020, Apple đã nâng cấp chiếc MacBook Air của mình với một hiệu năng vô cùng mạnh mẽ, tích hợp chip M1 thuộc thế hệ Apple Silicon có khả năng tối ưu hoá tốt, đem lại trải nghiệm sử dụng, làm việc, học tập và giải trí ấn tượng cho người dùng.', 'Xung nhịp cơ bản: 3.2 GHz\r\nCông nghệ CPU: Apple M1\r\nSố hiệu CPU: Apple - M1\r\nCard đồ hoạ rời: GPU tích hợp\r\nKhả năng nâng cấp ổ cứng: Không hỗ trợ nâng cấp\r\nLoại RAM: LPDDR4X\r\nKhả năng nâng cấp RAM: Không hỗ trợ nâng cấp\r\nRAM: 8GB\r\nỔ cứng mặc định: 256GB SSD\r\nKích thước màn hình: 13.3 inch\r\nĐộ phân giải: 2560x1600\r\nKết nối không dây: Wi-Fi 6, Bluetooth 5.0\r\nHệ điều hành: macOS\r\nKích thước: 304.1 x 212.4 x 4.1 ~ 16.1 (mm)\r\nTrọng lượng: 1.29kg', 24, '2024-08-13 22:07:30', NULL, '2024-08-13 22:07:30'),
(41, 'Macbook Pro 14 inch | Chính hãng Apple Việt Nam', '1723561793.webp', 2, 49990000, 'Macbook Pro 14 inch - Chiếc Macbook đáng mong đợi nhất 2021 Kế thừa những tinh hoa từ đời MacBook tốt nhất cùng với những nâng cấp đáng kể trong nhiều năm qua, Macbook Pro 14 inch dự kiến sẽ là mẫu laptop làm cho giới công nghệ \"phát sốt\", cũng như là cỗ máy xử lý công việc tối ưu hiệu quả. Thiết kế lưng máy phẳng tối giản, màn hình XDR Retina 14 inch rực rỡ Macbook Pro 14 inch Máy sẽ mang kiểu dáng được Apple tái thiết kế lại cho dòng MacBook Pro năm 2021. MacBook Pro 14 inch 2021 sẽ được làm phẳng tối giản ở các cạnh nhằm tạo vẻ hiện đại cho máy. Đặc biệt, máy sẽ được trang bị khe cắm thẻ SDXC. Đây chính là điểm ưu đối với các nhiếp ảnh gia hoặc người dùng không chuộng cổng USB-C để sao lưu dữ liệu. Macbook Pro 14 2021 sẽ có màn hình kích thước 14 inch và sử dụng công nghệ màn hình Liquid Retina XDR tiên tiến. Tấm nền sẽ cải thiện độ sáng và độ bão hòa trên màn hình một cách đáng kể, qua đó giúp cho những công việc thiết kế đồ họa hay giải trí trở nên tốt hơn. Bộ vi xử lý hiệu năng mạnh mẽ cần thiết cho mọi công việc Macbook Pro 14 inch Thời gian gần đây Apple đã tự mình phát triển thành công bộ vi xử lý riêng, mang tên Apple M1 Pro chip, cho các dòng MacBook của hãng. Và đối với MacBook Pro 14 inch 2021, Apple mang đến cho dòng máy này con chip Apple M1 Pro Chip - thế hệ nối tiếp của Apple M1 trước đó. Chip Apple có lõi bên trong và kết hợp với chip đồ họa riêng biệt mạnh gấp nhiều lần trước đó, giúp cho máy hoàn toàn phù hợp để sử dụng phần mềm đồ họa nặng, cũng như vận hành mượt mà những tựa game cấu hình cao. Máy được Apple trang bị công nghệ hiện đại chứa đựng RAM cùng vị trí như GPU và CPU, do đó mà với dung lượng RAM ổn định, chiếc máy vẫn sẽ vận hành với hiệu năng tốt nhất. Ngoài ra, cũng đáng chú ý đó là Mac Pro 2021 14 inch sẽ hoàn toàn tương thích với công nghệ Wi-Fi 6 mới nhất. Bởi vì các đời MacBook Pro chạy chip M1 trước đó vốn đã có sẵn Wi-Fi 6, nên sẽ không ngạc nhiên khi MacBook Pro 14 2021 cũng được lắp đặt khả năng kết nối mới nhất này. Thời lượng pin đáp ứng làm việc và giải trí Macbook Pro 14 inch Hẳn bạn còn nhớ MacBook Pro chạy chip M1 trước đó có thời lượng sử dụng lên đến nhiều giờ. Vì thế bạn hoàn toàn yên tâm về thời gian sử dụng, bởi MacBook Pro 2021 14 inch sẽ có viên pin cung cấp cho máy khi hoạt động liên tục. Kết hợp cùng với khả năng giảm lượng pin tiêu thụ trên chip, có thể khẳng định thời lượng pin trên MacBook Pro 14 inch 2021 sẽ làm hài lòng tất cả người dùng. Ngoài ra, cũng đáng chú ý rằng âm thanh trên Macbook Pro 14 inch cũng được nâng cấp đáng kể. Âm thanh của máy được tinh chỉnh nhằm tạo âm thanh cân bằng hơn, bass sâu hơn, và tích hợp microphone chống ồn giúp cho cuộc trò chuyện video call trở nên suôn sẻ & rõ tiếng. Hiệu năng tản nhiệt ổn định, tản nhiệt hiệu quả Macbook Pro 14 inch Phần tản nhiệt chính với cấu trúc quạt bên trong, cũng như bảng mạch chủ tạo không gian thoát nhiệt hiệu quả hơn. Nhờ đó, bạn có thể yên tâm sử dụng MacBook Pro 14 inch và giải trí hoặc làm việc đồ họa nặng mà không phải lo nóng máy. Hệ thống tản nhiệt sẽ làm cho trải nghiệm dùng máy của bạn ổn định hơn nhiều lần. Một chi tiết khác cũng đáng chú ý đó là cổng MagSafe. Apple đã quyết định mang cổng MagSafe lên dòng MacBook Pro mới, mà khởi đầu chính là MacBook Pro 14 inch. Hơn nữa, với sự phổ biến của MagSafe đối với người dùng iPhone, không ngạc nhiên khi sắp tới Apple sẽ trang bị cổng MagSafe cho MacBook Pro 2021 14 inch để đảm bảo người dùng có thể sử dụng cùng loại phụ kiện cho nhiều thiết bị. Mua Macbook Pro 14 inch 2021 tại CellphoneS Có thể thấy, đây hứa hẹn sẽ là chiếc laptop hấp dẫn nhất trong năm 2021, và sẽ là thiết bị đồng hành cùng bạn trong mọi công việc.', 'Dung lượng RAM: 16GB\r\n\r\nỔ cứng: 512GB SSD\r\n\r\nLoại CPU: M1 Pro/M1 Max\r\n\r\nKích thước màn hình: 14.2 inches', 24, '2024-08-13 22:09:53', NULL, '2024-08-13 22:09:53'),
(42, 'Laptop Asus Gaming TUF FX506LH HN188W', '1723561958.webp', 2, 16990000, 'Laptop ASUS Gaming TUF FX506LH-HN188W - Chiếc máy gaming giá rẻ Laptop ASUS TUF Gaming F15 FX506LH-HN188W là laptop chuẩn gaming và đây sẽ là dòng máy không làm mọi người dùng phải thất vọng vì thông số cấu hình và tính năng của máy. Hãy cùng đi sâu hơn vào những con số lý tưởng laptop Asus Gaming bên dưới nội dung dưới đây nhé. Chuẩn gaming nhẹ nhàng nhưng bền bỉ Laptop ASUS Gaming TUF FX506LH-HN188W có trọng lượng vào khoảng 2.2kg. Có thể thấy đây là mẫu thiết kế tuy không quá nhẹ như những chiếc máy phổ thông nhưng gần như là hoàn hảo dành cho một mẫu laptop gaming. Laptop ASUS Gaming TUF FX506LH-HN188W Chưa kể, laptop ASUS Gaming TUF FX506LH-HN188W còn vượt qua được những thử nghiệm MIL-STD-810G nghiêm ngặt bao gồm phơi nhiễm bức xạ mặt trời, độ cao và nhiệt độ cao. Vì thế mà độ bền của laptop này bền bỉ hơn bao giờ hết. Màn hình siêu mỏng, bứt phá hiệu năng Laptop ASUS TUF F15 FX506LH-HN188W được sử dụng màn hình kích thước 15.6 inches Full HD IPS đi kèm màn hình Nano-Edge mới với viền màn hình siêu mỏng, gói gọn trong 6.5 mm giúp mở rộng thêm không gian hiển thị lên nhiều lần. Laptop ASUS Gaming TUF FX506LH-HN188W Ngoài ra, laptop ASUS TUF F15 FX506LH-HN188W được cung cấp hiệu năng bởi con chip Intel Core i5-10300H, xung nhịp tối đa 4.5GHz 4 nhân và 8 luồng. Đây là chip có hiệu năng mạnh mẽ giúp người sử dụng chạy trên trên mọi tựa game với lối đồ họa khác nhau hay đảm nhận các tác vụ văn phòng mượt mà. Kết hợp cùng với đó là CPU mạnh mẽ được gia cố bởi NVIDIA GeForce GTX 1650 4GB GDDR6, góp phần tạo nên chất lượng của laptop. Điều này còn giúp cho laptop có khả năng phản hồi cao với các tác vụ đồ họa nặng với hình ảnh đầu ra mượt mà nhất.', 'Dung lượng RAM: 8GB\r\n\r\nỔ cứng: 512GB M.2 NVMe™ PCIe® 3.0\r\n\r\nLoại CPU: Intel® Core™ i5-10300H\r\n\r\nKích thước màn hình: 15.6 inches', 14, '2024-08-13 22:12:38', NULL, '2024-08-13 22:12:38'),
(43, 'Laptop Dell Inspiron 15 3520-5810BLK 102F0', '1723563133.webp', 2, 12990000, 'Laptop Dell Inspiron 15 3520-5810BLK 102F0 trang bị con chip Core i5-1155G7 thế hệ 11 với hiệu năng ấn tượng, 8GB RAM nâng cấp tối đa đến 16GB thoải mái lưu trữ. Laptop Dell Inspiron 15 3520-5810BLK 102F0 cảm ứng với thiết kế nhỏ gọn, trọng lượng chỉ 1.9kg , màn hình 15.6 inch chất lượng Full HD cực rõ nét.\r\nLaptop Dell Inspiron 15 3520-5810BLK 102F0 - Kết hợp hoàn hảo thiết kế hiện đại và hiệu năng mạnh mẽ.\r\nLà chiếc laptop Dell Inspiron tầm trung, Dell Inspiron 15 3520-5810BLK 102F0 gây ấn tượng với thiết kế màn hình cảm ứng thời thượng và hiệu năng mạnh mẽ, xử lý tác vụ êm mượt với Core i5-1155G7.\r\nIntel core i5 thế hệ 11 cùng 8GB ram xử lý tốt mọi tác vụ\r\nKhông chỉ được đánh giá cao ở thiết kế, Dell Inspiron 15 3520-5810BLK 102F0 còn dễ dàng chinh phục mọi ứng dụng nặng nề với con chip intel Core i5-1155G7 4 nhân 8 luồng cùng xung nhịp tối đa lên đến 4.2Ghz. \r\nKết hợp với một dòng CPU thế hệ mới, máy còn được trang bị 8GB RAM cùng khả năng nâng cấp tối đa lên đến 16GB. Do đó người dùng hoàn toàn có thể yên tâm rằng chiếc laptop này có thể xử lý tốt nhiều phần mềm cùng lúc mà không lo bị tràn ram.', 'Intel Iris Xe Graphics\r\nRAM 8GB\r\nintel Core i5-1155G7 4 nhân 8 luồng - 4.2Ghz.\r\n15.6 inches', 22, '2024-08-13 22:32:13', NULL, '2024-08-13 22:32:13'),
(44, 'Xiaomi 14 Ultra', '1723565844.webp', 1, 28990000, 'Xiaomi 14 Ultra là một trong những smartphone hàng đầu với nhiều tính năng và công nghệ tiên tiến. Thiết bị này được trang bị bộ vi xử lý Snapdragon 8 Gen 3, đảm bảo hiệu năng mượt mà và khả năng đa nhiệm vượt trội. Màn hình máy có công nghệ LTPO AMOLED, cung cấp hình ảnh sắc nét với độ phân giải QHD+, khả năng hiển thị 68 tỷ màu, cùng tốc độ làm mới 120Hz. Camera trên thiết bị này nổi bật với cảm biến chính 50MP, hỗ trợ quay video 8K và nhiều tính năng cao cấp khác như zoom quang 10x. Cùng với đó là viên pin 5000mAh kèm theo khả năng sạc nhanh 90W có dây.', 'Độ phân giải camera\r\n50MP\r\n32MP\r\nHệ điều hành\r\nXiaomi HyperOS\r\nBộ nhớ trong\r\n512GB\r\nMạng di động\r\n5G\r\nSố khe SIM\r\nDual SIM\r\nVi xử lý\r\nSnapdragon 8 Gen 3\r\nCông nghệ màn hình\r\nAMOLED\r\nĐộ phân giải\r\n3200 x 1440\r\nKích thước màn hình\r\n6.73\"\r\nDung lượng pin sản phẩm\r\n5000mAh', 6, '2024-08-13 23:17:24', NULL, '2024-08-13 23:17:24'),
(45, 'Điện thoại Xiaomi 13T', '1723565955.webp', 1, 10990000, 'Bên cạnh mẫu Pro thì Xiaomi 13T cũng được giới yêu thích công nghệ săn đón bởi sở hữu các thông số ấn tượng. Chiếc smartphone này được trang bị màn hình AMOLED 6.67 inch với độ phân giải 1,5K sắc nét và độ sáng lên đến 2600 nites. Bên trong là bộ vi xử lý MediaTek Dimensity 8200-Ultra kết hợp với RAM lên đến 12GB và bộ nhớ trong chuẩn UFS 4.0 với phiên bản lưu trữ tới 256 GB. Vì vậy, cả về thiết kế và cấu hình, Xiaomi 13T là sự lựa chọn hoàn hảo cho mọi nhu cầu.', 'Độ phân giải camera\r\nCamera chính Leica: Sony IMX707 50MP f/1.9 OIS\r\nCamera telephoto Leica: 50MP f/1.9\r\nCamera góc siêu rộng Leica: 12MP f/2.2\r\n20MP f/2.2\r\nHệ điều hành\r\nMIUI 14 trên nền tảng Android 13\r\nBộ nhớ trong\r\n256GB\r\nMạng di động\r\n2G, 3G, 4G, 5G\r\nSố khe SIM\r\n2 nano SIM\r\nVi xử lý\r\nMediaTek Dimensity 8200-Ultra\r\nCông nghệ màn hình\r\nAMOLED\r\nĐộ phân giải\r\n2712 x 1220\r\nKích thước màn hình\r\n6.67\"\r\nDung lượng pin sản phẩm\r\n5000mAh', 6, '2024-08-13 23:19:15', NULL, '2024-08-13 23:19:15'),
(46, 'Tai nghe chụp tai (không dây) SONY WH-CH520', '1723567223.webp', 3, 1190000, 'Thiết kế chụp tai thời thượng cùng công nghệ DSEE\r\nVới 3 lựa chọn màu sắc là màu đen, xanh dương và màu kem, tai nghe không dây SONY WH-CH520 cung cấp nhiều lựa chọn cho phong cách của bạn. Dù là trẻ trung, năng động hay nhẹ nhàng, nữ tính thì dòng tai nghe này đều có thể cân hết.\r\n\r\nTai nghe có thiết kế nhỏ gọn, trọng lượng nhẹ, và khả năng xoay chụp tai giúp tai nghe trở thành người bạn đồng hành lý tưởng cho mọi chuyến du lịch của bạn.\r\n\r\nBằng công nghệ kỹ thuật số Digital Sound Enhancement Engine (DSEE), âm thanh bị nén sẽ được tăng cường và phục hồi lại thành phần tần số cao, đem lại trải nghiệm âm thanh chân thật và sống động hơn. Bên cạnh đó, ứng dụng Sony Headphones Connect cũng cho phép bạn tùy chỉnh âm thanh xung quanh để điều chỉnh trải nghiệm nghe của bạn theo sở thích cá nhân.\r\n\r\nĐặc biệt, cơ chế tăng cường âm thanh kỹ thuật số (DSEE) giúp khôi phục các yếu tố tần số cao bị mất đi khi nhạc ở dạng nén, tạo ra âm thanh chất lượng cao gần giống với bản ghi gốc.', 'Tính năng khác: Bộ màng loa: 30mm, Điều khiển âm lượng, Cơ chế tăng cường âm thanh kỹ thuật số (DSEE) khôi phục các hòa âm và độ sống động bị mất trong quá trình nén nhạc thông thường\r\nCổng sạc: USB Type-C', 32, '2024-08-13 23:40:23', NULL, '2024-08-13 23:40:23'),
(47, 'Tai nghe Bluetooth chụp tai Sony ULT900N Wear', '1723567344.webp', 3, 4490000, 'Tai nghe Bluetooth chụp tai Sony ULT900 Wear - Chính hãng là một lựa chọn hoàn hảo dành cho người dùng muốn trải nghiệm âm nhạc chất lượng cao. Dòng tai nghe được Sony thiết kế hiện tại, cung cấp âm thanh rõ ràng nhờ công nghệ chống ồn ANC cùng với khả năng kết nối Bluetooth đa điểm tiện lợi. Đặc biệt, người dùng có thể điều khiển tai nghe thông qua cảm ứng nút ULT, sử dụng trong thời gian 30 giờ mà không lo hết pin giữa chừng.', 'Tính năng khác: Màng loa 40mm, công nghệ âm thanh tiên tiến hàng đầu, Thiết kế over-ear hiện đại, tinh tế, Mic đàm thoại cao cấp, cảm biến thông minh, Chức năng Head tracking\r\nCổng sạc: Type-C', 32, '2024-08-13 23:42:24', NULL, '2024-08-13 23:42:24'),
(48, 'Tai nghe chụp tai Gaming Sony Inzone H7', '1723567447.webp', 3, 1990000, 'Tai nghe chụp tai Gaming Sony Inzone H7 sở hữu nhiều ưu điểm như công nghệ âm thanh 360 Spatial Sound, micro thu âm rõ ràng, thiết kế thoải mái và thời lượng pin lên đến 40 giờ bên cạnh khả năng kết nối xa bán kính 10m, bộ màng loa 40mm cùng nam châm Neodymium mang đến âm thanh mạnh mẽ, sống động và chi tiết. Với những ưu điểm này, Inzone H7 là lựa chọn lý tưởng cho những game thủ đang tìm kiếm một chiếc tai nghe chơi game chất lượng cao, thời lượng pin bền bỉ và có mức giá hợp lý.', 'Tính năng khác: Công nghệ 360 Spatial Sound giúp phát hiện vị trí của đối thủ, nghe rõ tiếng bước chân, Âm trầm mạnh mẽ có khả năng tái hiện chân thật từng tiếng nổ cũng như tiếng động cơ, Đệm tai được làm từ chất liệu mềm mại thoáng khí ôm sát tai tạo cảm giác đeo thoải mái, Thời lượng pin siêu bền bỉ khi có thể sử dụng lên đến 40 giờ liên tục chỉ với một lần sạc, NAM CHÂM: Neodymium, TẦN SỐ PHẢN HỒI: 5 Hz – 20.000 Hz (JEITA)', 32, '2024-08-13 23:44:07', NULL, '2024-08-13 23:44:07'),
(49, 'Chuột game Logitech G102 GEN2 (USB/RGB)', '1723569353.webp', 4, 390000, 'Dù có mức giá rất bình dân nhưng chuột Logitech G102 Lightsync RGB lại được trang bị led  RGB 16,8 triệu màu .Chọn một màu hay trộn 3 màu, hiệu ứng có sẵn hay tạo hiệu ứng của riêng bạn . Sự lựa chọn là của bạn ! Bạn còn có thể đồng bộ chuột với thiết bị LIGHTSYNC của Logitech G khác giúp góc máy trở nên đồng bộ và độc đáo hơn.', 'KÍCH THƯỚC\r\n\r\nChiều cao: 116,6 mm\r\n\r\nChiều rộng: 62,15 mm\r\n\r\nChiều dày: 38,2 mm\r\n\r\nTrọng lượng: 85 g, (chỉ chuột)\r\n\r\nĐộ dài dây: 2,1 m\r\n\r\nTHÔNG SỐ KỸ THUẬT\r\n\r\nChiếu sáng RGB LIGHTSYNC\r\n\r\n6 nút có thể lập trình\r\n\r\nĐộ phân giải: 200 – 8.000 dpi\r\n\r\nĐỘ NHẠY\r\n\r\nĐịnh dạng dữ liệu USB: 16 bit/trục\r\n\r\nTần suất gửi tín hiệu USB: 1000Hz (1ms)\r\n\r\nBộ vi xử lý: 32-bit ARM', 33, '2024-08-14 00:15:53', NULL, '2024-08-14 00:15:53'),
(50, 'Chuột không dây Logitech Pebble M350', '1723569593.webp', 4, 470000, '- Logitech Pebble M350 được thiết kế mỏng hơn, vẫn vừa vặn tự nhiên trong lòng bàn tay, các cạnh bo tròn mềm mại tạo cảm giác cầm nắm rất thoải mái\r\n\r\n- Sử dụng pin AA, chuột có chế độ tự động chuyển sang chế độ tiết kiệm pin khi nghỉ ngơi\r\n\r\n- Kết nối với máy tính bàn, máy tính xách tay hoặc máy tính bảng thông qua Bluetooth hoặc đầu thu USB.\r\n\r\n- Nhấp chuột và cuộn yên tĩnh giúp bạn làm việc tại nhà, trong quán cà phê hoặc thư viện mà không làm phiền đến người xung quanh', 'Độ phân giải (DPI): 1000 DPI', 33, '2024-08-14 00:19:53', NULL, '2024-08-14 00:19:53'),
(51, 'Chuột không dây Logitech MX Anywhere 3S', '1723569768.webp', 4, 1530000, 'Trải nghiệm chất lượng hơn với tuổi thọ pin lên đến 70 ngày chỉ với 1 lần sạc\r\nChuột không dây Logitech MX Anywhere 3S với thiết kế kết nối không dây tiện lợi cùng màu đen huyền bí sẽ hài hòa với máy tính bàn hay laptop của bạn. Với tính năng Quiet Clicks của chuột Logitech giúp bạn tập trung vào công việc mà không bị mất tập trung. Trải nghiệm cảm biến 8k DPI nhanh chóng, chuẩn trong từng cú nhấp chuột.', 'Kích thước\r\n\r\nChiều cao: 100,5 mm\r\n\r\nChiều rộng: 65 mm\r\n\r\nChiều dày: 34,4 mm\r\n\r\nTrọng lượng: 99 g\r\n\r\nThông số kỹ thuật\r\n\r\nCông nghệ cảm biến\r\n\r\nDarkfield có độ chính xác cao\r\n\r\nGiá trị danh nghĩa: 1000 DPI\r\n\r\nDPI (Giá trị tối đa và tối thiểu): 200-8000 DPI (có thể thiết lập với các mức tăng là 50 DPI)\r\n\r\nNút\r\n\r\n6 nút (Nhấp chuột Trái/Phải, Tiếp theo/Quay lại, Chuyển chế độ nút cuộn, Nhấp chuột giữa)', 33, '2024-08-14 00:22:48', NULL, '2024-08-14 00:22:48'),
(52, 'Laptop HP Pavilion 14-dv2072TU-7C0W1PA', '1723570318.webp', 2, 18790000, 'Lịch lãm, sang trọng hiện đang là xu hướng khi người dùng chọn mua máy tính xách tay để xử lý các tác vụ văn phòng. Với Laptop HP Pavilion 14-dv2072TU-7C0W1PA, thiết bị không những sở hữu vẻ ngoài vô cùng đơn giản, sang trọng mà còn đem lại hiệu suất vượt trội trong tầm giá. Điều này vô cùng hữu ích khi thiết bị này dễ dàng xử lý mượt mà mọi công việc hằng ngày và vô cùng linh động để mang đi nhiều nơi.', 'Xung nhịp cơ bản: 1.2 GHz\r\nCông nghệ CPU: Intel Core i7\r\nSố hiệu CPU: i7 - 1255U\r\nCard đồ hoạ rời: GPU tích hợp\r\nKhả năng nâng cấp RAM: 16 GB\r\nKhả năng nâng cấp ổ cứng: (Có thể tháo ra, lắp thanh khác tối đa 1 TB)\r\nLoại RAM: DDR4\r\nRAM: 8GB\r\nỔ cứng mặc định: 512GB SSD\r\nKích thước màn hình: 14 inch\r\nĐộ phân giải: 1920x1080\r\nKết nối không dây: Bluetooth 5.2 combo, MediaTek Wi-Fi 6 MT7921 (2x2)\r\nHệ điều hành: Windows 11 Home\r\nKích thước: 32.5 x 21.66 x 1.7 cm\r\nTrọng lượng: 1.4kg', 20, '2024-08-14 00:31:58', NULL, '2024-08-14 00:31:58'),
(53, 'Laptop Gaming HP Victus 15-fa0115TX 7C0X1PA', '1723570529.webp', 2, 18990000, 'Ở thời điểm hiện tại, Laptop như là một người bạn đồng hành đắc lực của người dùng trong quá trình học tập, làm việc. Với mức giá thành phải chăng, laptop Gaming HP Victus 15-fa0115TX 7C0X1PA đang “khuấy đảo” giới game thủ nhờ ngoại hình sang trọng, hiện đại nhưng hiệu năng vô cùng mạnh mẽ. Có thể thấy, thiết bị này là lựa chọn sáng giá nếu bạn đang có nhu cầu tìm một chiếc Laptop Gaming với giá thành dễ tiếp cận.', 'Xung nhịp cơ bản: 2.5 GHz\r\nCông nghệ CPU: Intel Core i5\r\nSố hiệu CPU: i5 - 12500H\r\nCard đồ hoạ rời: RTX 3050\r\nKhả năng nâng cấp RAM: 32GB\r\nKhả năng nâng cấp ổ cứng: không có khe bổ sung, nâng cấp khe mặc định lên bộ nhớ cao hơn\r\nLoại RAM: DDR4\r\nRAM: 8GB\r\nỔ cứng mặc định: 512GB SSD\r\nKích thước màn hình: 15.6 inch\r\nĐộ phân giải: 1920x1080\r\nKết nối không dây: WiFi 802.11ax (Wifi 6) , Bluetooth 5.3\r\nHệ điều hành: Windows 11 Home SL Windows 11\r\nKích thước: 357.9 x 255 x 23.5 mm\r\nTrọng lượng: 2.33kg', 20, '2024-08-14 00:35:29', NULL, '2024-08-14 00:35:29'),
(54, 'Laptop Dell XPS 13 Plus 9320-5CG56', '1723570727.webp', 2, 49990000, 'Ở thời điểm hiện tại, sự hoàn hảo của laptop không chỉ nằm ở thiết kế đẹp mắt mà còn phải đáp ứng được nhu cầu sử dụng của người dùng. Và Dell XPS 13 Plus 9320-5CG56 chính là một trong số những chiếc laptop đáp ứng được cả hai yêu cầu trên. Với thiết kế sang trọng, nhỏ gọn cùng hiệu năng mạnh mẽ, máy tính xách tay dòng Dell XPS này trở thành một trong những mẫu laptop văn phòng hàng đầu hiện nay.', 'Xung nhịp cơ bản: 3.4Ghz\r\nCông nghệ CPU: Intel Core i7\r\nSố hiệu CPU: i7 - 1260P\r\nCard đồ hoạ rời: GPU tích hợp\r\nKhả năng nâng cấp RAM: Không hỗ trợ nâng cấp\r\nKhả năng nâng cấp ổ cứng: 2 khay SSD (2230 - 2280)\r\nLoại RAM: LPDDR5\r\nRAM: 16GB\r\nỔ cứng mặc định: 512GB SSD\r\nKích thước màn hình: 13.4 inch\r\nĐộ phân giải: 3456x2160\r\nKết nối không dây: Intel® KillerTM Wi-Fi 6E 1675 (AX211) 2x2 + Bluetooth 5.2 Wireless Card\r\nHệ điều hành: Windows 11 Home\r\nKích thước: 15.28 mm x 295.30 mm x 199.04 mm\r\nTrọng lượng: 1.26kg', 22, '2024-08-14 00:38:47', NULL, '2024-08-14 00:38:47'),
(55, 'Laptop Dell Vostro 14 3430 (71021669)', '1723570866.webp', 2, 17790000, 'Laptop Dell Vostro 14 3430 (71021669) - Chính hãng được trang bị bộ vi xử lý Intel Core i5 1335U có xung nhịp cơ bản là 1.30 GHz và xung nhịp tối đa 4,6 GHz. Đi kèm với đó là RAM 16GB mang đến khả năng hoạt động mượt mà cùng bộ nhớ trong lớn lên đến 512GB. Để người dùng có những trải nghiệm thị giác tốt nhất, Dell còn trang bị thêm màn hình chống chói có kích thước 14 inch cùng độ phân giải 1920x1080 px, hứa hẹn mang đến những hình ảnh cực kỳ bắt mắt.', 'Xung nhịp cơ bản: 1.30 GHz\r\nCông nghệ CPU: Intel Core i5\r\nSố hiệu CPU: i5 - 1335U\r\nCard đồ hoạ rời: GPU tích hợp\r\nKhả năng nâng cấp RAM: 16GB\r\nKhả năng nâng cấp ổ cứng: Nâng cấp SSD mặc định lên dung lượng cao hơn\r\nLoại RAM: DDR4\r\nRAM: 16GB\r\nỔ cứng mặc định: 512GB SSD\r\nKích thước màn hình: 14 inch\r\nĐộ phân giải: 1920x1080\r\nKết nối không dây: Wi-Fi 802.11 a/b/g/n/ac, Bluetooth 5.3\r\nHệ điều hành: Windows 11 Home\r\nKích thước: 323.67 x 219.76 x 18.48 mm\r\nTrọng lượng: 1.44kg', 22, '2024-08-14 00:41:06', NULL, '2024-08-14 00:41:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `advertise`
--
ALTER TABLE `advertise`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_lap_id` (`product_lap_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `forgot_password`
--
ALTER TABLE `forgot_password`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `manufactures`
--
ALTER TABLE `manufactures`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_ibfk_1` (`customer_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`product_id`,`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `products_ibfk_1` (`manufacturer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `advertise`
--
ALTER TABLE `advertise`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `manufactures`
--
ALTER TABLE `manufactures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
