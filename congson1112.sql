-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2023 at 11:15 AM
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
-- Database: `congson1112`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_brand`
--

CREATE TABLE `db_brand` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_brand`
--

INSERT INTO `db_brand` (`id`, `name`, `slug`, `image`, `sort_order`, `metakey`, `metadesc`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 'Lamborghini Veneno', 'xe-1', 'hinh1.jpg', 0, 'efvcwe', 'wefvqef', NULL, NULL, 1, NULL, 1),
(2, 'W Motors Lykan Hypersport', 'xe-2', 'hinh2.jpg', 0, 'efvcwe', 'wefvqef', NULL, NULL, 1, NULL, 1),
(3, 'Bugatti Veyron Vivere By Mansory', 'xe-3', 'hinh3.jpg', 0, 'efvcwe', 'wefvqef', NULL, NULL, 1, NULL, 1),
(4, 'Bugatti Chiron Sport', 'xe-4', 'hinh4.jpg', 0, 'efvcwe', 'wefvqef', NULL, NULL, 1, NULL, 1),
(5, 'Ferrari Sergio Pininfarina', 'xe-5', 'hinh5.jpg', 0, 'efvcwe', 'wefvqef', NULL, NULL, 1, NULL, 1),
(6, 'Ford Thunderbird', 'xe-6', 'hinh6.jpg', 0, 'efvcwe', 'wefvqef', NULL, NULL, 1, NULL, 1),
(7, 'Maserati A6GCS/53', 'xe-7', 'hinh7.jpg', 0, 'efvcwe', 'wefvqef', NULL, NULL, 1, NULL, 1),
(8, 'BMW 507', 'xe-8', 'hinh8.jpg', 0, 'efvcwe', 'wefvqef', NULL, NULL, 1, NULL, 1),
(9, 'Chevrolet Corvette (C1)', 'xe-9', 'hinh9.jpg', 1, 'vsvs', 'sdvsdvsv', '2023-06-30 00:36:43', '2023-06-30 00:36:43', 1, NULL, 1),
(10, 'Dodge Charger 1969', 'xe-10', 'hinh10.jpg', 0, 'efvcwe', 'wefvqef', NULL, NULL, 1, NULL, 1),
(11, 'Rolls-Royce Phantom VIII', 'xe-11', 'hinh11.jpg', 0, 'efvcwe', 'wefvqef', NULL, NULL, 1, NULL, 1),
(12, 'Bentley Mulsanne', 'xe-12', 'hinh12.jpg', 0, 'efvcwe', 'wefvqef', NULL, NULL, 1, NULL, 1),
(13, 'Maybach S650', 'xe-13', 'hinh13.jpg', 0, 'efvcwe', 'wefvqef', NULL, NULL, 1, NULL, 1),
(14, 'Range Rover SV Autobiography', 'xe-14', 'hinh14.jpg', 0, 'efvcwe', 'wefvqef', NULL, NULL, 1, NULL, 1),
(15, 'Rolls-Royce Cullinan', 'xe-15', 'hinh15.jpg', 1, 'vsvs', 'sdvsdvsv', '2023-06-30 00:36:43', '2023-06-30 00:36:43', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_category`
--

CREATE TABLE `db_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `slug`, `image`, `parent_id`, `sort_order`, `metakey`, `metadesc`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 'Mẫu xe sang trọng', 'sang-trong', 'hinh1.jpg', 0, 5, 'dasfd', 'dasf', NULL, '2023-06-30 00:37:33', 1, 1, 1),
(2, 'Mẫu xe thể thao', 'the-thao', 'hinh2.jpg', 0, 4, 'effe', 'wefwef', NULL, NULL, 1, NULL, 1),
(3, 'Mẫu xe cổ điển', 'co-dien', 'hinh3.jpg', 0, 5, 'wefw', 'dasf', NULL, NULL, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_contact`
--

CREATE TABLE `db_contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `replay_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_contact`
--

INSERT INTO `db_contact` (`id`, `user_id`, `name`, `email`, `phone`, `title`, `content`, `replay_id`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 1, 'Trịnh Công Sơn', 'trinhcongson@email.com', '0981212201', 'bsfbsr', 'nsnnst', 1, NULL, NULL, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_member`
--

CREATE TABLE `db_member` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gioitinh` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `roles` varchar(255) NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_member`
--

INSERT INTO `db_member` (`id`, `name`, `email`, `phone`, `gioitinh`, `username`, `password`, `address`, `image`, `roles`, `created_by`, `created_at`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Nguyễn Thị Ngọc', 'nguyenngoc@email.com', '0981212201', 'nu', 'truclan', '11122001', 'vietnam', 'avt1.jpg', 'sbrfbhsr', 1, NULL, NULL, NULL, 2),
(2, 'Nguyễn Lê Trúc Lan', 'nguyenletruclan@email.com', '0981212201', 'nu', 'truclan', '11122001', 'vietnam', 'avt2.jpg', 'sbrfbhsr', 1, NULL, NULL, NULL, 2),
(3, 'Lê Thị Ngọc', 'lethingocn@email.com', '0981212201', 'nu', 'ngoc', '11122001', 'vietnam', 'avt3.jpg', 'sbrfbhsr', 1, NULL, NULL, NULL, 2),
(4, 'Mai Trúc Anh', 'trucanh@email.com', '0981212201', 'nu', 'anh', '11122001', 'vietnam', 'avt4.jpg', 'sbrfbhsr', 1, NULL, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `db_menu`
--

CREATE TABLE `db_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `table_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `position` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_menu`
--

INSERT INTO `db_menu` (`id`, `name`, `link`, `table_id`, `parent_id`, `position`, `type`, `sort_order`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 'Trang Chủ', '/', 0, 0, 'mainmenu', 'sfrgrs', 0, NULL, NULL, 1, NULL, 1),
(2, 'Sản Phẩm', 'san-pham', 0, 0, 'mainmenu', 'gegege', 0, NULL, NULL, 1, NULL, 1),
(3, 'Chính sách điều khoản', 'chinh-sach', 0, 0, 'mainmenu', 'gegege', 0, NULL, NULL, 1, NULL, 1),
(4, 'Giới Thiệu', 'gioi-thieu', 0, 0, 'mainmenu', 'gegege', 0, NULL, NULL, 1, NULL, 1),
(5, 'Danh mục sản phẩm', 'danh-muc-san-pham', 0, 0, 'mainmenu', 'sfrgrs', 0, NULL, NULL, 1, NULL, 1),
(9, 'Liên Hệ', 'lien-he', 0, 0, 'mainmenu', 'sfrgrs', 0, NULL, NULL, 1, NULL, 1),
(10, 'Chính sách mua hàng', 'chinh-sach-mua-hang', 0, 3, 'mainmenu', 'gegege', 0, NULL, NULL, 1, NULL, 1),
(11, 'Chính sách đổi trả', 'chinh-sach-doi-tra', 0, 3, 'mainmenu', 'gegege', 0, NULL, NULL, 1, NULL, 1),
(12, 'Chính sách vận chuyển', 'chinh-sach-van-chuyen', 0, 3, 'mainmenu', 'sfrgrs', 0, NULL, NULL, 1, NULL, 1),
(13, 'Mẫu xe công suất lớn', 'danh-muc-san-pham/cong-suat-lon', 0, 5, 'mainmenu', 'sfrgrs', 0, NULL, NULL, 1, NULL, 1),
(15, 'Mẫu xe thể thao', 'danh-muc-san-pham/the-thao', 0, 5, 'mainmenu', 'sfrgrs', 0, NULL, NULL, 1, NULL, 1),
(16, 'Mẫu xe sang trọng', 'danh-muc-san-pham/sang-trong', 0, 5, 'mainmenu', 'sfrgrs', 0, NULL, NULL, 1, NULL, 1),
(32, 'Chính sách bảo hành', 'chinh-sach-bao-hanh', 0, 3, 'mainmenu', 'sfrgrs', 0, NULL, NULL, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_order`
--

CREATE TABLE `db_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_post`
--

CREATE TABLE `db_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `detail` mediumtext NOT NULL,
  `relay_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_post`
--

INSERT INTO `db_post` (`id`, `topic_id`, `title`, `slug`, `detail`, `relay_id`, `created_at`, `updated_at`, `updated_by`, `status`) VALUES
(1, 0, 'Mẫu xe sang trọng', 'xe-sang-trong', 'vrssrr', 1, NULL, NULL, NULL, 1),
(2, 0, 'Mẫu xe công suất lớn', 'xe-cong-suat-lon', 'sbvfvrr', 2, NULL, NULL, NULL, 1),
(3, 0, 'Mẫu xe quý tộc', 'xe-quy-toc', 'sbvfvrr', 3, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_postdetail`
--

CREATE TABLE `db_postdetail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `detail` mediumtext NOT NULL,
  `relay_id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_postdetail`
--

INSERT INTO `db_postdetail` (`id`, `post_id`, `title`, `slug`, `detail`, `relay_id`, `sort_order`, `created_at`, `updated_at`, `updated_by`, `status`) VALUES
(1, 1, 'Mẫu xe công suất lớn', 'mau-xe-cong-suat-lon', 'egg', 2, 0, NULL, NULL, NULL, 2),
(2, 2, 'Mẫu xe sang trọng', 'mau-xe-sang-trong', 'eggdvz', 3, 0, NULL, NULL, NULL, 2),
(3, 3, 'Mẫu xe nổi tiếng', 'mau-xe-noi-tieng', 'eggdvz', 3, 0, NULL, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `db_product`
--

CREATE TABLE `db_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `price_sale` double(8,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `detail` mediumtext NOT NULL,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_product`
--

INSERT INTO `db_product` (`id`, `category_id`, `brand_id`, `name`, `slug`, `price`, `price_sale`, `image`, `qty`, `detail`, `metakey`, `metadesc`, `created_by`, `created_at`, `updated_at`, `updated_by`, `status`) VALUES
(1, 2, 1, 'Lamborghini Veneno', 'xe-1', 100000.00, 90000.00, 'hinh1.jpg', 3, 'dwed', 'wffdsbsfb', 'wff', 1, NULL, '2023-06-30 01:43:15', 1, 1),
(2, 2, 1, 'W Motors Lykan Hypersport', 'xe-2', 130000.00, 120000.00, 'hinh2.jpg', 4, 'efdcwe', 'fwej', 'fwe', 1, NULL, '2023-06-29 00:40:04', 1, 1),
(3, 2, 1, 'Bugatti Veyron Vivere By Mansory', 'xe-3', 120000.00, 110000.00, 'hinh3.jpg', 3, 'dwed', 'efdhehheh', 'wff', 1, NULL, '2023-06-29 00:08:46', 1, 1),
(4, 2, 1, 'Bugatti Chiron Sport', 'xe-4', 130000.00, 120000.00, 'hinh4.jpg', 4, 'efdcwe', 'wdcf', 'fwe', 1, NULL, NULL, NULL, 1),
(5, 2, 1, 'Ferrari Sergio Pininfarina', 'xe-5', 140000.00, 130000.00, 'hinh5.jpg', 5, 'dwed', 'efd', 'wff', 1, NULL, NULL, NULL, 1),
(6, 3, 1, 'Ford Thunderbird', 'xe-6', 150000.00, 140000.00, 'hinh6.jpg', 6, 'efdcwe', 'wdcf', 'fwe', 1, NULL, NULL, NULL, 1),
(7, 3, 1, 'Maserati A6GCS/53', 'xe-7', 160000.00, 150000.00, 'hinh7.jpg', 7, 'dwed', 'efd', 'wff', 1, NULL, NULL, NULL, 1),
(8, 3, 1, 'BMW 507', 'xe-8', 170000.00, 160000.00, 'hinh8.jpg', 8, 'efdcwe', 'wdcf', 'fwe', 1, NULL, NULL, NULL, 1),
(9, 3, 1, 'Chevrolet Corvette (C1)', 'xe-9', 100000.00, 90000.00, 'hinh9.jpg', 3, 'dwed', 'wffdsbsfb', 'wff', 1, NULL, '2023-06-30 01:43:15', 1, 1),
(10, 3, 1, 'Dodge Charger 1969', 'xe-10', 130000.00, 120000.00, 'hinh10.jpg', 4, 'efdcwe', 'fwej', 'fwe', 1, NULL, '2023-06-29 00:40:04', 1, 1),
(11, 1, 1, 'Rolls-Royce Phantom VIII', 'xe-11', 120000.00, 110000.00, 'hinh11.jpg\r\n', 3, 'dwed', 'efdhehheh', 'wff', 1, NULL, '2023-06-29 00:08:46', 1, 1),
(12, 1, 1, 'Bentley Mulsanne', 'xe-12', 130000.00, 120000.00, 'hinh12.jpg', 4, 'efdcwe', 'wdcf', 'fwe', 1, NULL, NULL, NULL, 1),
(13, 1, 1, 'Maybach S650', 'xe-13', 140000.00, 130000.00, 'hinh13.jpg', 5, 'dwed', 'efd', 'wff', 1, NULL, NULL, NULL, 1),
(14, 1, 1, 'Range Rover SV Autobiograph', 'xe-14', 150000.00, 140000.00, 'hinh14.jpg', 6, 'efdcwe', 'wdcf', 'fwe', 1, NULL, NULL, NULL, 1),
(15, 1, 1, 'Rolls-Royce Cullinan', 'xe-15', 160000.00, 150000.00, 'hinh15.jpg', 7, 'dwed', 'efd', 'wff', 1, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_singlepage`
--

CREATE TABLE `db_singlepage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_singlepage`
--

INSERT INTO `db_singlepage` (`id`, `name`, `link`, `slug`, `sort_order`, `created_by`, `created_at`, `updated_at`, `updated_by`, `status`) VALUES
(2, 'Sản Phẩm', 'san-pham', 'san-pham', 0, 1, NULL, NULL, NULL, 2),
(3, 'Liên Hệ', 'lien-he', 'lien-he', 0, 1, NULL, NULL, NULL, 2),
(4, 'Giới Thiệu', 'gioi-thieu', 'gioi-thieu', 0, 1, NULL, NULL, NULL, 2),
(5, 'Chính sách mua hàng', 'chinh-sach-mua-hang', 'chinh-sach-mua-hang', 0, 1, NULL, NULL, NULL, 2),
(6, 'Chính sách đổi trả', 'chinh-sach-doi-tra', 'chinh-sach-doi-tra', 0, 1, NULL, NULL, NULL, 2),
(7, 'Chính sách vận chuyển', 'chinh-sach-van-chuyen', 'chinh-sach-van-chuyen', 0, 1, NULL, NULL, NULL, 2),
(8, 'Chính sách bảo hành', 'chinh-sach-bao-hanh', 'chinh-sach-bao-hanh', 0, 1, NULL, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `db_slider`
--

CREATE TABLE `db_slider` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL,
  `position` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_slider`
--

INSERT INTO `db_slider` (`id`, `name`, `link`, `sort_order`, `position`, `image`, `parent_id`, `created_by`, `created_at`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'xe1', 'xe-1', 0, 'slidershow', 'slider1.jpg', 0, 1, NULL, NULL, NULL, 1),
(2, 'xe2', 'xe-2', 0, 'slidershow', 'slider2.jpg', 0, 1, NULL, NULL, NULL, 1),
(3, 'xe3', 'xe-3', 0, 'slidershow', 'slider3.jpg', 0, 1, NULL, NULL, NULL, 1),
(4, 'xe4', 'xe-4', 0, 'slidershow', 'slider4.png', 0, 1, NULL, NULL, NULL, 1),
(5, 'xe5', 'xe-5', 0, 'slidershow', 'slider5.jpg', 0, 1, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_topic`
--

CREATE TABLE `db_topic` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_topic`
--

INSERT INTO `db_topic` (`id`, `name`, `slug`, `parent_id`, `metakey`, `metadesc`, `created_by`, `created_at`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'detai1', 'de-tai-1', 0, 'tdjhgd', 'hghgd', 1, NULL, NULL, NULL, 1),
(2, 'detai2', 'de-tai-2', 0, 'tdjhgd', 'hghgd', 1, NULL, NULL, NULL, 1),
(3, 'detai3', 'de-tai-3', 0, 'tdjhgd', 'hghgd', 1, NULL, NULL, NULL, 1),
(4, 'detai4', 'de-tai-4', 0, 'tdjhgd', 'hghgd', 1, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE `db_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `roles` varchar(255) NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id`, `name`, `email`, `phone`, `username`, `password`, `address`, `image`, `roles`, `created_by`, `created_at`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Trịnh Công Sơn', 'trinhcongson@email.com', '09812122001', 'trinhcongson', '11122001', 'fvbssfvb', 'avt.jpg', 'tdjtt', 1, NULL, NULL, NULL, 1),
(2, 'Nguyễn Thị Ngọc', 'trinhcongson@email.com', '09812122001', 'trinhcongson', '11122001', 'fvbssfvb', 'avt1.jpg', 'tdjtt', 1, NULL, NULL, NULL, 1),
(3, 'Nguyễn Thị Lan', 'trinhcongson@email.com', '09812122001', 'trinhcongson', '11122001', 'fvbssfvb', 'avt2.jpg', 'tdjtt', 1, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_05_31_020455_create_brand_table', 1),
(3, '2023_05_31_020639_create_category_table', 1),
(4, '2023_05_31_020729_create_contact_table', 1),
(5, '2023_05_31_121342_create_menu_table', 1),
(6, '2023_05_31_121355_create_order_table', 1),
(7, '2023_05_31_121505_create_orderdetail_table', 1),
(8, '2023_05_31_121515_create_product_table', 1),
(9, '2023_05_31_121523_create_post_table', 1),
(10, '2023_05_31_121534_create_slider_table', 1),
(11, '2023_05_31_121543_create_topic_table', 1),
(12, '2023_05_31_121602_create_user_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_brand`
--
ALTER TABLE `db_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_member`
--
ALTER TABLE `db_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_menu`
--
ALTER TABLE `db_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_post`
--
ALTER TABLE `db_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_postdetail`
--
ALTER TABLE `db_postdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_singlepage`
--
ALTER TABLE `db_singlepage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_topic`
--
ALTER TABLE `db_topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_brand`
--
ALTER TABLE `db_brand`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_member`
--
ALTER TABLE `db_member`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `db_menu`
--
ALTER TABLE `db_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_post`
--
ALTER TABLE `db_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `db_postdetail`
--
ALTER TABLE `db_postdetail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `db_singlepage`
--
ALTER TABLE `db_singlepage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `db_topic`
--
ALTER TABLE `db_topic`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
