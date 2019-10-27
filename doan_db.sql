-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 27, 2019 at 04:06 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doan_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cau_hinh_app`
--

DROP TABLE IF EXISTS `cau_hinh_app`;
CREATE TABLE IF NOT EXISTS `cau_hinh_app` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cau_hoi_sai` int(11) NOT NULL,
  `thoi_gian_tra_loi` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cau_hinh_app`
--

INSERT INTO `cau_hinh_app` (`id`, `cau_hoi_sai`, `thoi_gian_tra_loi`, `created_at`, `updated_at`) VALUES
(1, 2, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cau_hinh_diem_cau_hoi`
--

DROP TABLE IF EXISTS `cau_hinh_diem_cau_hoi`;
CREATE TABLE IF NOT EXISTS `cau_hinh_diem_cau_hoi` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `thu_tu` int(11) NOT NULL,
  `diem` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cau_hinh_diem_cau_hoi`
--

INSERT INTO `cau_hinh_diem_cau_hoi` (`id`, `thu_tu`, `diem`, `created_at`, `updated_at`) VALUES
(1, 1, 90, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cau_hinh_tro_giup`
--

DROP TABLE IF EXISTS `cau_hinh_tro_giup`;
CREATE TABLE IF NOT EXISTS `cau_hinh_tro_giup` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `loai_tro_giup` int(11) NOT NULL,
  `thu_tu` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cau_hinh_tro_giup`
--

INSERT INTO `cau_hinh_tro_giup` (`id`, `loai_tro_giup`, `thu_tu`, `credit`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 100, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cau_hoi`
--

DROP TABLE IF EXISTS `cau_hoi`;
CREATE TABLE IF NOT EXISTS `cau_hoi` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `noi_dung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linh_vuc_id` int(11) NOT NULL,
  `phuong_an_a` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phuong_an_b` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phuong_an_c` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phuong_an_d` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dap_an` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cau_hoi_linh_vuc_id_foreign` (`linh_vuc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cau_hoi`
--

INSERT INTO `cau_hoi` (`id`, `noi_dung`, `linh_vuc_id`, `phuong_an_a`, `phuong_an_b`, `phuong_an_c`, `phuong_an_d`, `dap_an`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Loài nào là loài thuộc họ người', 1, 'Khỉ', 'Chó', 'Mèo', 'Vịt', 'Khỉ', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_luot_choi`
--

DROP TABLE IF EXISTS `chi_tiet_luot_choi`;
CREATE TABLE IF NOT EXISTS `chi_tiet_luot_choi` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `luot_choi_id` int(11) NOT NULL,
  `cau_hoi_id` int(11) NOT NULL,
  `phuong_an` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diem` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chi_tiet_luot_choi`
--

INSERT INTO `chi_tiet_luot_choi` (`id`, `luot_choi_id`, `cau_hoi_id`, `phuong_an`, `diem`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'A', 1000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `goi_credit`
--

DROP TABLE IF EXISTS `goi_credit`;
CREATE TABLE IF NOT EXISTS `goi_credit` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten_goi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` int(11) NOT NULL,
  `so_tien` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `goi_credit`
--

INSERT INTO `goi_credit` (`id`, `ten_goi`, `credit`, `so_tien`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Gói A', 100, 50000, NULL, NULL, NULL),
(2, 'Gói B', 150, 70000, NULL, NULL, NULL),
(3, 'Gói C', 200, 90000, NULL, NULL, NULL),
(4, 'Gói D', 250, 110000, NULL, NULL, NULL),
(5, 'Gói E', 300, 130000, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lich_su_mua_credit`
--

DROP TABLE IF EXISTS `lich_su_mua_credit`;
CREATE TABLE IF NOT EXISTS `lich_su_mua_credit` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nguoi_choi_id` int(11) NOT NULL,
  `goi_credit_id` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `so_tien` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lich_su_mua_credit`
--

INSERT INTO `lich_su_mua_credit` (`id`, `nguoi_choi_id`, `goi_credit_id`, `credit`, `so_tien`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 100, 10000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `linh_vuc`
--

DROP TABLE IF EXISTS `linh_vuc`;
CREATE TABLE IF NOT EXISTS `linh_vuc` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten_linh_vuc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `linh_vuc`
--

INSERT INTO `linh_vuc` (`id`, `ten_linh_vuc`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Toán', NULL, NULL, '2019-10-22 23:41:43'),
(2, 'Lý', NULL, NULL, NULL),
(3, 'Hóa', NULL, NULL, NULL),
(4, 'Anh', NULL, NULL, NULL),
(5, 'Sinh', NULL, '2019-10-11 00:54:28', '2019-10-11 00:54:28'),
(8, 'Sử', NULL, '2019-10-11 01:20:27', '2019-10-11 01:20:27'),
(7, 'Địa', NULL, '2019-10-11 01:13:25', '2019-10-11 01:13:25'),
(9, 'Công Nghệ', NULL, '2019-10-12 23:52:30', '2019-10-12 23:52:30'),
(10, 'Giáo dục công dân', NULL, '2019-10-12 23:53:22', '2019-10-12 23:53:22'),
(17, 'Xàm', NULL, '2019-10-23 00:24:31', '2019-10-23 00:24:31');

-- --------------------------------------------------------

--
-- Table structure for table `luot_choi`
--

DROP TABLE IF EXISTS `luot_choi`;
CREATE TABLE IF NOT EXISTS `luot_choi` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nguoi_choi_id` int(11) NOT NULL,
  `so_cau` int(11) NOT NULL,
  `diem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_gio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `luot_choi`
--

INSERT INTO `luot_choi` (`id`, `nguoi_choi_id`, `so_cau`, `diem`, `ngay_gio`, `created_at`, `updated_at`) VALUES
(1, 1, 4, '100', '11/12/2017', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(12, '2019_10_05_012346_create_table_linh-vuc', 1),
(13, '2019_10_05_045354_create_table_nguoi_choi', 1),
(14, '2019_10_05_051038_create_table_lich_su_mua_credit', 1),
(15, '2019_10_05_052219_create_table_goi_credit', 1),
(16, '2019_10_05_052541_create_table_cau_hoi', 1),
(17, '2019_10_05_054054_create_table_chi_tiet_luot_choi', 1),
(18, '2019_10_05_055555_create_table_luot_choi', 1),
(19, '2019_10_05_055909_create_table_cau_hinh_diem_cau_hoi', 1),
(20, '2019_10_05_060154_create_table_cau_hinh_app', 1),
(21, '2019_10_05_060446_create_table_quan_tri_vien', 1),
(22, '2019_10_05_061115_ceate_table_cau_hinh_tro_giup', 1),
(23, '2019_10_06_234123_them_linh_vuc_controller', 1),
(24, '2019_10_09_060032_create_table_them_khoa_ngoai', 2);

-- --------------------------------------------------------

--
-- Table structure for table `nguoi_choi`
--

DROP TABLE IF EXISTS `nguoi_choi`;
CREATE TABLE IF NOT EXISTS `nguoi_choi` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten_dang_nhap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_khau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh_dai_dien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diem_cao_nhat` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nguoi_choi`
--

INSERT INTO `nguoi_choi` (`id`, `ten_dang_nhap`, `mat_khau`, `email`, `hinh_dai_dien`, `diem_cao_nhat`, `credit`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'TrungNB', 'trung123', 'khactrung01203375867@gmail.com', '', 10000, 10, NULL, NULL, NULL),
(2, 'ThinhBL', 'thinh123', 'thinhzjzai@gmail.com', '', 8000, 2, NULL, NULL, NULL),
(3, 'TyBT', 'ty123', 'truongthy@gmail.com', '', 9000, 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quan_tri_vien`
--

DROP TABLE IF EXISTS `quan_tri_vien`;
CREATE TABLE IF NOT EXISTS `quan_tri_vien` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten_dang_nhap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_khau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ho_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quan_tri_vien`
--

INSERT INTO `quan_tri_vien` (`id`, `ten_dang_nhap`, `mat_khau`, `ho_ten`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'TrungPham', '123', 'Phạm Khắc Trung', NULL, NULL, NULL),
(2, 'TyTruong', '123', 'Trương Văn Ty', NULL, NULL, NULL),
(3, 'ThinhTran', '123', 'Trần Văn Thịnh', NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
