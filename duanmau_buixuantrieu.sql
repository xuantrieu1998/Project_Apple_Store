-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th6 26, 2024 lúc 02:29 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duanmau_buixuantrieu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `role` varchar(10) NOT NULL DEFAULT 'user',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT 'Normal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `user_name`, `full_name`, `password`, `email`, `avatar`, `birthday`, `address`, `tel`, `role`, `created_at`, `status`) VALUES
(1, 'trieuadmin', 'Bùi Xuân Triều', 'Nhdm0905', 'nguyenhadiemmy090598@gmail.com', 'IMG_4597.JPG', '1998-12-23', 'Tổ 20 Thôn 4 Xã Bình Triều', '0901927763', 'admin', '2024-06-04 16:59:12', 'Normal'),
(3, 'xuantrieu', 'Bùi Xuân Triều', 'Nhdm0905', 'buixuantrieu23121998@gmail.com', 'IMG_3469.jpg', '1998-12-23', 'Tổ 20 Thôn 4 Xã Bình Triều', '0901927763', 'user', '2024-06-04 17:15:10', 'Lock'),
(4, 'diemmy', NULL, 'Nhdm0905', 'diemmy@gmail.com', NULL, NULL, NULL, NULL, 'user', '2024-06-04 17:45:39', 'Normal'),
(5, 'buixuantrieu', 'Nguyễn Hà Diễm My', 'Nhdm090598', 'ds@gmail.com', '407919981_1802218826873940_3153245800751188815_n.jpg', '2024-06-05', '61 Lê Văn Hưu', '0901927763', 'user', '2024-06-14 10:21:33', 'Normal'),
(6, 'lemanhquyet', 'Nguyễn Hà Diễm my', 'Nhdm0905', 'ssdsdsfsfsf@gmail.com', '6-e1704512223455.png', '2024-06-06', 'Tổ 20 Thôn 4 Xã Bình Triều', '0901927763', 'user', '2024-06-17 08:13:36', 'Normal');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `user_id`, `quantity`) VALUES
(28, 8, 3, 2),
(29, 7, 3, 1),
(30, 9, 3, 1),
(31, 10, 3, 1),
(34, 7, 6, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `create_at`, `update_at`) VALUES
(6, 'IPhone ', '2024-05-28 22:39:00', '2024-05-31 19:06:26'),
(7, 'IPad', '2024-05-28 22:39:06', '2024-05-31 19:06:20'),
(8, 'AirPod', '2024-05-28 22:39:13', '2024-05-28 22:39:13'),
(15, 'MacBook', '2024-05-29 10:27:09', '2024-05-31 19:06:08'),
(16, 'Accessories', '2024-05-29 10:28:34', '2024-05-29 10:43:15'),
(17, 'LoudSpeaker', '2024-05-31 11:32:22', '2024-05-31 11:44:14'),
(18, 'Apple Watch', '2024-05-31 20:56:01', '2024-05-31 20:56:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `address` varchar(100) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `payment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total_price`, `create_at`, `address`, `tel`, `customer_name`, `payment`) VALUES
(13, 3, 27040800, '2024-05-08 16:50:27', 'Tổ 20 Thôn 4 Xã Bình Triều', '0901927763', 'Bùi Xuân Triều', 'Thanh toán khi nhận hàng'),
(14, 3, 117244200, '2024-04-10 08:09:18', 'Tổ 20 Thôn 4 Xã Bình Triều', '0901927763', 'Bùi Xuân Triều', 'Thanh toán khi nhận hàng'),
(15, 3, 14174000, '2024-03-14 09:56:13', 'Tổ 20 Thôn 4 Xã Bình Triều', '0901927763', 'Bùi Xuân Triều', 'Thanh toán khi nhận hàng'),
(16, 3, 274960000, '2024-06-14 09:56:58', 'Tổ 20 Thôn 4 Xã Bình Triều', '0901927763', 'Bùi Xuân Triều', 'Thanh toán khi nhận hàng'),
(17, 3, 48220200, '2024-02-14 09:57:16', 'Tổ 20 Thôn 4 Xã Bình Triều', '0901927763', 'Bùi Xuân Triều', 'Thanh toán khi nhận hàng'),
(21, 6, 116518400, '2024-06-17 08:15:29', 'Tổ 20 Thôn 4 Xã Bình Triều', '0901927763', 'Nguyễn Hà Diễm my', 'Thanh toán khi nhận hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `product_id`, `status`, `quantity`, `price`, `order_id`) VALUES
(13, 7, 'Nhận hàng thành công', 2, 27040800, 13),
(14, 7, 'Đã hủy đơn hàng', 6, 81122400, 14),
(15, 8, 'Đã xác nhận đơn hàng', 1, 870400, 14),
(16, 9, 'Nhận hàng thành công', 1, 35251400, 14),
(17, 10, 'Đang chờ xác nhận đơn hàng', 1, 2511000, 15),
(18, 14, 'Đang chờ xác nhận đơn hàng', 1, 6021000, 15),
(19, 12, 'Đang chờ xác nhận đơn hàng', 1, 5642000, 15),
(20, 28, 'Đang chờ xác nhận đơn hàng', 3, 224970000, 16),
(21, 32, 'Đang chờ xác nhận đơn hàng', 1, 49990000, 16),
(22, 11, 'Đang chờ xác nhận đơn hàng', 2, 48220200, 17),
(28, 8, 'Đã xác nhận đơn hàng', 3, 2611200, 21),
(29, 9, 'Nhận hàng thành công', 3, 105754200, 21),
(30, 10, 'Đã hủy đơn hàng', 1, 2511000, 21),
(31, 12, 'Đang chờ xác nhận đơn hàng', 1, 5642000, 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` text NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `sale` double NOT NULL DEFAULT 0,
  `des` text NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`, `sale`, `des`, `view`, `create_at`, `update_at`, `category_id`) VALUES
(7, 'Iphone 13 128GB', 'Iphone-13-128GB.webp', 17790000, 0.24, 'The iPhone 13, released by Apple in September 2021, is part of the 15th generation of iPhones. Here is a detailed description of the iPhone 13 with 128GB of storage', 6, '2024-05-31 11:37:25', '2024-05-31 11:49:49', 6),
(8, 'Polymer 5000mAh Magnetic Type C 12W', 'Pinduphong1.webp', 1280000, 0.32, 'The Anker MagGo A1611 power bank is a modern product with many outstanding features, a convenient design, and advanced technology. Here is a detailed description of the product.', 11, '2024-05-31 11:56:36', '2024-05-31 22:00:39', 6),
(9, 'Iphone 15 Pro Max 512GB', 'Iphone-15-ProMax-512GB.webp', 40990000, 0.14, 'The iPhone 15 Pro Max is Apple is flagship smartphone for 2023, offering top-tier features, advanced technology, and a sleek design. Here is a detailed description of the iPhone 15 Pro Max with 512GB of storage', 4, '2024-05-31 19:05:08', '2024-05-31 19:05:08', 6),
(10, 'Loa Bluetooth Marshall Willen', 'LoaBluetool-1.webp', 2790000, 0.1, 'Loa Bluetooth Marshall Willen', 2, '2024-05-31 19:08:03', '2024-05-31 19:08:03', 17),
(11, 'MacBook Air 13 inch M2 8GB/256GB', 'Macbook-Air-M2-13inch.webp', 27090000, 0.11, 'MacBook Air 13 inch M2 8GB/256GB', 0, '2024-05-31 19:10:52', '2024-05-31 19:10:52', 15),
(12, 'AirPods Pro (2nd Gen) USB-C', 'AirPod-1.webp', 6200000, 0.09, 'AirPods Pro (2nd Gen) USB-C', 2, '2024-05-31 19:13:29', '2024-05-31 19:13:29', 8),
(13, 'Loa Bluetooth JBL Go 3', 'LoaBluetool-2.webp', 1090000, 0.18, 'Loa Bluetooth JBL Go 3', 0, '2024-05-31 19:15:25', '2024-05-31 19:15:25', 17),
(14, 'Loa Bluetooth Marshall Stockwell II', 'LoaBluetool-3.webp', 6690000, 0.1, 'Loa Bluetooth Marshall Stockwell II', 0, '2024-05-31 19:19:06', '2024-05-31 19:19:06', 17),
(15, 'Loa Bluetooth Marshall Acton III', 'LoaBluetool-4.webp', 7990000, 0.1, 'Loa Bluetooth Marshall Acton III', 0, '2024-05-31 19:20:16', '2024-05-31 19:20:16', 17),
(16, 'Loa Bluetooth Marshall Woburn III', 'LoaBluetool-5.webp', 17990000, 0.1, 'Loa Bluetooth Marshall Woburn III', 0, '2024-05-31 19:29:03', '2024-05-31 19:29:03', 17),
(17, 'iPhone 15 Plus 128GB', 'Iphone-15-128GB.webp', 25990000, 0.14, 'iPhone 15 Plus 128GB', 0, '2024-05-31 19:30:25', '2024-05-31 19:30:25', 6),
(18, 'iPad 10 WiFi 64GB', 'Ipad-10-64GB.webp', 11490000, 0.07, 'iPad 10 WiFi 64GB', 0, '2024-05-31 19:37:26', '2024-05-31 19:37:26', 7),
(19, 'Iphone 12 256GB', 'Iphone12-256GB.webp', 16790000, 0.1, 'Iphone 12 256GB', 0, '2024-05-31 19:40:05', '2024-05-31 19:40:05', 6),
(20, 'Iphone 14 Plus 128GB', 'iphone-14-plus-gold-128GB.webp', 22290000, 0.13, 'Iphone 14 Plus 128GB', 0, '2024-05-31 19:42:51', '2024-05-31 19:42:51', 6),
(21, 'Iphone 14 Pro Max 256GB', 'Iphone-14-ProMax-256GB.webp', 31890000, 0.09, 'Iphone 14 Pro Max 256GB', 1, '2024-05-31 19:47:21', '2024-05-31 22:46:48', 6),
(22, 'Iphone 15 Pro 128GB', 'Iphone-15-Pro-128GB.webp', 28990000, 0.11, 'Iphone 15 Pro 128GB', 0, '2024-05-31 19:49:42', '2024-05-31 19:49:42', 6),
(23, 'Iphone 11 64GB', 'Iphone-11-64GB.webp', 11790000, 0.26, 'Iphone 11 64GB', 0, '2024-05-31 19:56:02', '2024-05-31 19:56:02', 6),
(24, 'Ipad Air 5 Wifi', 'Ipad-Air-5.webp', 19490000, 0.03, 'Ipad Air 5 Wifi', 0, '2024-05-31 19:58:22', '2024-05-31 19:58:22', 7),
(25, 'iPad Pro M2 11 inch WiFi 1TB', 'Ipad-12-pro-11.webp', 39390000, 0.05, 'iPad Pro M2 11 inch WiFi 1TB', 0, '2024-05-31 20:01:01', '2024-05-31 20:01:01', 7),
(26, 'iPad Air 6 M2 13 inch WiFi', 'Ipad-Air-6-M2-13.webp', 24990000, 0, 'iPad Air 6 M2 13 inch WiFi', 0, '2024-05-31 20:04:05', '2024-05-31 20:04:05', 7),
(27, 'iPad Pro M4 11 inch Nano WiFi', 'Ipad-Pro-M4-11.webp', 59990000, 0, 'iPad Pro M4 11 inch Nano WiFi', 0, '2024-05-31 20:06:53', '2024-05-31 20:06:53', 7),
(28, 'iPad Pro M4 13 inch Nano 5G', 'Ipad-M4-2TB.webp', 74990000, 0, 'iPad Pro M4 13 inch Nano 5G', 0, '2024-05-31 20:08:06', '2024-05-31 20:08:06', 7),
(29, 'MacBook Air 15 inch M3', 'MB-A15M3.webp', 42990000, 0.05, 'MacBook Air 15 inch M3', 0, '2024-05-31 20:09:45', '2024-05-31 20:09:45', 15),
(30, 'MacBook Air 15 inch M2 Sạc 70W', 'MB-A15M270W.webp', 32990000, 0.16, 'MacBook Air 15 inch M2 Sạc 70W', 0, '2024-05-31 20:10:59', '2024-05-31 20:10:59', 15),
(31, 'MacBook Air 13 inch M2 10GPU', 'MB-A13-M2-10GPU.webp', 29990000, 0, 'MacBook Air 13 inch M2 10GPU', 0, '2024-05-31 20:16:06', '2024-05-31 20:16:06', 15),
(32, 'MacBook Pro 14 inch M3 Pro', 'MB-PR14-M3.webp', 49990000, 0, 'MacBook Pro 14 inch M3 Pro', 0, '2024-05-31 20:17:07', '2024-05-31 20:17:07', 15),
(33, 'MacBook Air 13 inch M1', 'MB-A13M1.webp', 19590000, 0.05, 'MacBook Air 13 inch M1', 0, '2024-05-31 20:18:40', '2024-05-31 20:18:40', 15),
(34, 'Apple Watch SE 2022 GPS', 'AW-1.webp', 9990000, 0.2, 'Apple Watch SE 2022 GPS', 0, '2024-05-31 20:56:25', '2024-05-31 20:56:25', 18),
(35, 'Apple Watch Series 9 GPS 41mm', 'AW-2.webp', 10490000, 0.12, 'Apple Watch Series 9 GPS 41mm', 0, '2024-05-31 20:57:53', '2024-05-31 20:57:53', 18),
(36, 'Apple Watch Series 9 GPS ', 'AW-3.webp', 13890000, 0, 'Apple Watch Series 9 GPS ', 0, '2024-05-31 20:58:50', '2024-05-31 20:58:50', 18),
(37, 'Apple Watch Series 9 GPS', 'AW-4.webp', 20290000, 0, 'Apple Watch Series 9 GPS', 0, '2024-05-31 20:59:40', '2024-05-31 20:59:40', 18),
(38, 'Apple Watch Ultra 2 GPS', 'AW-5.webp', 21990000, 0.06, 'Apple Watch Ultra 2 GPS', 0, '2024-05-31 21:00:24', '2024-05-31 21:00:24', 18),
(39, 'Apple Watch Ultra 2 GPS', 'AW-6.webp', 21990000, 0, 'Apple Watch Ultra 2 GPS', 0, '2024-05-31 21:01:11', '2024-05-31 21:01:11', 18),
(40, 'AirPods 3 sạc Lightning', 'AP-1.webp', 4490000, 0.13, 'AirPods 3 sạc Lightning', 0, '2024-05-31 21:03:02', '2024-05-31 21:03:02', 8),
(41, 'AirPods 2 sạc Lightning', 'AP-2.webp', 3490000, 0.22, 'AirPods 2 sạc Lightning', 0, '2024-05-31 21:03:39', '2024-05-31 21:03:39', 8),
(42, 'Loa Bluetooth JBL Partybox 320', 'L-1.webp', 15900000, 0, 'Loa Bluetooth JBL Partybox 320', 0, '2024-05-31 21:04:26', '2024-05-31 21:04:26', 17),
(43, 'Tai nghe Bluetooth True Wireless', 'L-2.webp', 5490000, 0.1, 'Tai nghe Bluetooth True Wireless', 0, '2024-05-31 21:07:08', '2024-05-31 21:07:08', 17),
(44, 'AirTag', 'PK-1.webp', 800000, 0, 'AirTag', 0, '2024-05-31 21:08:07', '2024-05-31 21:09:03', 6),
(45, 'Pin sạc dự phòng 20000mAh PD 20W', 'PK-2.webp', 1600000, 0.2, 'Pin sạc dự phòng 20000mAh PD 20W', 0, '2024-05-31 21:08:54', '2024-05-31 21:08:54', 16),
(46, 'Cáp Type C - Lightning MFI Anker', 'PK-3.webp', 500000, 0.22, 'Cáp Type C - Lightning MFI Anker', 0, '2024-05-31 21:09:57', '2024-05-31 21:09:57', 16),
(47, 'Adapter chuyển đổi Type C sang Gigabit', 'PK-4.webp', 990000, 0.3, 'Adapter chuyển đổi Type C sang Gigabit', 0, '2024-05-31 21:16:43', '2024-05-31 21:16:43', 16),
(48, 'Apple Pencil Pro', 'PK-5.webp', 3490000, 0, 'Apple Pencil Pro', 0, '2024-05-31 21:34:55', '2024-05-31 21:34:55', 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rate` int(11) NOT NULL DEFAULT 0,
  `create_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `comment`, `rate`, `create_at`) VALUES
(25, 3, 9, 'Sản phẩm tốt\r\n', 4, '2024-06-10 08:10:52'),
(26, 6, 9, 'Hàng bị bể', 3, '2024-06-17 08:21:39');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
