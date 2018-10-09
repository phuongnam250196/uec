-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2018 at 07:16 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uec`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(28, '2018_06_30_022324_uec_user', 1),
(29, '2018_07_01_080516_uec_area', 1),
(30, '2018_07_01_104625_uec_position', 1),
(31, '2018_07_01_104733_uec_career', 1),
(32, '2018_07_01_104809_uec_education', 1),
(33, '2018_07_01_104841_uec_formality', 1),
(34, '2018_07_01_104911_uec_skill', 1),
(35, '2018_07_01_104942_uec_yearofexp', 1),
(36, '2018_07_01_110557_uec_school', 1),
(37, '2018_07_02_033231_uec_recruitment', 1),
(38, '2018_07_02_033317_uec_post', 1),
(39, '2018_07_02_043008_uec_training', 1),
(40, '2018_07_02_045634_uec_introuec', 1),
(41, '2018_07_02_045929_uec_towardbusiness', 1),
(42, '2018_07_02_050008_uec_infostudent', 1),
(43, '2018_07_02_050153_uec_careerorientation', 1),
(44, '2018_07_02_050233_uec_jobfair', 1),
(45, '2018_07_02_050459_uec_jobapplication', 1),
(46, '2018_07_02_092328_uec_jobapp_recruitment', 1),
(47, '2018_07_02_095615_uec_enterprises', 1),
(48, '2018_07_08_113105_uec_teacher', 1),
(49, '2018_08_01_065729_uec_news', 1),
(50, '2018_08_04_104504_uec_science', 1),
(51, '2018_08_04_104659_uec_course', 1),
(52, '2018_08_04_104724_uec_specialize', 1),
(53, '2018_07_02_024904_uec_student', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uec_area`
--

CREATE TABLE `uec_area` (
  `id` int(10) UNSIGNED NOT NULL,
  `area_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_describe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uec_area`
--

INSERT INTO `uec_area` (`id`, `area_name`, `area_describe`, `area_slug`, `created_at`, `updated_at`) VALUES
(1, 'fdsf', 'fsdf', 'fsdf', NULL, NULL),
(2, 'Hà Nội', 'fdsfds', 'ha-noi', '2018-09-03 07:40:18', '2018-09-03 07:40:18');

-- --------------------------------------------------------

--
-- Table structure for table `uec_career`
--

CREATE TABLE `uec_career` (
  `id` int(10) UNSIGNED NOT NULL,
  `career_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `career_describe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `career_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uec_career`
--

INSERT INTO `uec_career` (`id`, `career_name`, `career_describe`, `career_slug`, `created_at`, `updated_at`) VALUES
(1, 'IT phần mềm', 'fdsf', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uec_careerorientation`
--

CREATE TABLE `uec_careerorientation` (
  `id` int(10) UNSIGNED NOT NULL,
  `careerorientation_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `careerorientation_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `careerorientation_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `careerorientation_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `careerorientation_status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uec_careerorientation`
--

INSERT INTO `uec_careerorientation` (`id`, `careerorientation_name`, `careerorientation_slug`, `careerorientation_img`, `careerorientation_content`, `careerorientation_status`, `created_at`, `updated_at`) VALUES
(2, 'Định hướng nghề nghiệp', 'dinh-huong-nghe-nghiep', 'dota_2_shadow_fiend_art_dark_111921_300x168.jpg', '<p>Trung t&acirc;m Kết nối Đại học-Doanh nghiệp (UEC-TLU) v&agrave; Nh&agrave; trường đang ph&aacute;t triển c&aacute;c sinh hoạt nhằm gi&uacute;p sinh vi&ecirc;n c&oacute; th&ecirc;m kỹ năng t&igrave;m kiếm việc l&agrave;m khi sắp tốt nghiệp hoặc khi đ&atilde; tốt nghiệp rồi.</p>\r\n\r\n<p>Hiện nay, với sự hỗ trợ t&agrave;i ch&iacute;nh của&nbsp;<a href=\"http://uec.local:8888/public/Layout/Frontend/#\">Tổ chức Đại học Ph&aacute;p ngữ</a>&nbsp;(AUF) tại Ch&acirc;u &Aacute;-Th&aacute;i B&igrave;nh Dương, Trung t&acirc;m UEC đang chuẩn bị một lớp tự học trực tuyến, nhằm gi&uacute;p sinh vi&ecirc;n Nh&agrave; trường trong việc định hướng nghề nghiệp.</p>\r\n\r\n<p>C&aacute;c doanh nghiệp quan t&acirc;m đến việc đồng tổ chức c&aacute;c hoạt dộng v&agrave; sự kiện d&agrave;nh cho sinh vi&ecirc;n nhằm ph&aacute;t huy kỹ năng t&igrave;m kiếm việc l&agrave;m cho họ c&oacute; thể li&ecirc;n hệ với ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p><strong>Th&ocirc;ng tin li&ecirc;n lạc:</strong>&nbsp;c&ocirc; Đinh Th&uacute;y Quỳnh (thuky-uec@thanglong.edu.vn ; ĐT: 0906 263 326)</p>', NULL, '2018-10-02 07:35:26', '2018-10-02 09:48:44'),
(3, 'Ngày Định Hướng Nghề nghiệp 11/02/2018:', 'ngay-dinh-huong-nghe-nghiep-11022018', 'bbgv.png', '<p>Trong th&aacute;ng 04/2018, Trung t&acirc;m UEC-TLU đ&atilde; tổ chức một hội thảo về định hướng nghề nghiệp, gi&uacute;p sinh vi&ecirc;n học tập c&aacute;ch soạn l&yacute; lịch CV v&agrave; chuẩn bị cho c&aacute;c cuộc phỏng vấn v&agrave;o ng&agrave;y 21 th&aacute;ng 04/2018. Xem nội dung&nbsp;<a href=\"http://uec.local:8888/public/Layout/Frontend/#\">tại đ&acirc;y</a>.</p>', NULL, '2018-10-02 09:41:15', '2018-10-02 09:48:10'),
(4, 'Ngày Định Hướng Nghề nghiệp 21/04/2018:', 'ngay-dinh-huong-nghe-nghiep-21042018', 'audi_r8_regula_tuning_oxigin_oxrock_r20_96478_1280x720.jpg', '<p>Trong th&aacute;ng 04/2018, Trung t&acirc;m UEC-TLU đ&atilde; tổ chức một hội thảo về định hướng nghề nghiệp, gi&uacute;p sinh vi&ecirc;n học tập c&aacute;ch soạn l&yacute; lịch CV v&agrave; chuẩn bị cho c&aacute;c cuộc phỏng vấn v&agrave;o ng&agrave;y 21 th&aacute;ng 04/2018. Xem nội dung&nbsp;<a href=\"http://uec.local:8888/public/Layout/Frontend/#\">tại đ&acirc;y</a>.</p>', NULL, '2018-10-02 09:41:46', '2018-10-02 09:41:46');

-- --------------------------------------------------------

--
-- Table structure for table `uec_course`
--

CREATE TABLE `uec_course` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uec_course`
--

INSERT INTO `uec_course` (`id`, `course_name`, `created_at`, `updated_at`) VALUES
(1, 'dsfsdf', '2018-08-07 21:12:30', '2018-08-13 07:32:19'),
(2, 'K22', '2018-08-07 21:12:34', '2018-08-07 21:12:34'),
(3, 'K23', '2018-08-07 21:12:38', '2018-08-07 21:12:38'),
(4, 'K24', '2018-08-07 21:12:41', '2018-08-07 21:12:41'),
(5, 'K25', '2018-08-07 21:12:48', '2018-08-07 21:12:48'),
(6, 'K26', '2018-08-07 21:12:51', '2018-08-07 21:12:51'),
(7, 'K27', '2018-08-07 21:12:54', '2018-08-07 21:12:54'),
(8, 'K28', '2018-08-07 21:12:57', '2018-08-07 21:12:57'),
(9, 'K29', '2018-08-07 21:13:00', '2018-08-07 21:13:00'),
(10, 'K30', '2018-08-07 21:13:04', '2018-08-07 21:13:04'),
(11, 'K31', '2018-08-07 21:13:07', '2018-08-07 21:13:07');

-- --------------------------------------------------------

--
-- Table structure for table `uec_education`
--

CREATE TABLE `uec_education` (
  `id` int(10) UNSIGNED NOT NULL,
  `education_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `education_describe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `education_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uec_education`
--

INSERT INTO `uec_education` (`id`, `education_name`, `education_describe`, `education_slug`, `created_at`, `updated_at`) VALUES
(1, 'Đại họi', 'fdsf', 'dai-hoi', '2018-09-03 07:39:41', '2018-09-03 07:39:41');

-- --------------------------------------------------------

--
-- Table structure for table `uec_enterprises`
--

CREATE TABLE `uec_enterprises` (
  `id` int(10) UNSIGNED NOT NULL,
  `enterprise_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enterprise_full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enterprise_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enterprise_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enterprise_size` int(11) DEFAULT NULL,
  `enterprise_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enterprise_tax_code` int(11) DEFAULT NULL,
  `enterprise_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enterprise_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enterprise_web` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enterprise_fanpage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enterprise_describe` longtext COLLATE utf8mb4_unicode_ci,
  `enterprise_people_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enterprise_people_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enterprise_tick` tinyint(1) DEFAULT NULL,
  `enterprise_status` tinyint(4) DEFAULT NULL,
  `area_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uec_enterprises`
--

INSERT INTO `uec_enterprises` (`id`, `enterprise_name`, `enterprise_full_name`, `enterprise_slug`, `enterprise_logo`, `enterprise_size`, `enterprise_address`, `enterprise_tax_code`, `enterprise_email`, `enterprise_phone`, `enterprise_web`, `enterprise_fanpage`, `enterprise_describe`, `enterprise_people_name`, `enterprise_people_phone`, `enterprise_tick`, `enterprise_status`, `area_id`, `created_at`, `updated_at`) VALUES
(2, 'fdsf', 'fdsfsdf', 'fdsfsdf', 'flowers_bush_greenhouse_115817_300x168.jpg', 2, 'fds', 2223, 'ds@gmail.com', '234', 'fsf', NULL, 'fdsf', NULL, NULL, NULL, NULL, 1, '2018-08-17 08:14:29', '2018-08-17 08:14:29'),
(3, 'adfd', 'fdsfaaaaa', 'fdsfaaaaa', 'dota_2_shadow_fiend_art_dark_111921_300x168.jpg', 2, 'fdsf', 22222222, 'v@gmail.com', '24234', 'dfd', NULL, 'fd', NULL, NULL, NULL, NULL, 1, '2018-08-17 08:15:13', '2018-08-17 08:15:13');

-- --------------------------------------------------------

--
-- Table structure for table `uec_formality`
--

CREATE TABLE `uec_formality` (
  `id` int(10) UNSIGNED NOT NULL,
  `formality_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `formality_describe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `formality_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uec_formality`
--

INSERT INTO `uec_formality` (`id`, `formality_name`, `formality_describe`, `formality_slug`, `created_at`, `updated_at`) VALUES
(1, 'fulltime', 'fdsfsd', 'fulltime', '2018-09-03 07:39:50', '2018-09-03 07:39:50');

-- --------------------------------------------------------

--
-- Table structure for table `uec_infostudent`
--

CREATE TABLE `uec_infostudent` (
  `id` int(10) UNSIGNED NOT NULL,
  `infostudent_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `infostudent_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `infostudent_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `infostudent_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `infostudent_status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uec_infostudent`
--

INSERT INTO `uec_infostudent` (`id`, `infostudent_name`, `infostudent_slug`, `infostudent_img`, `infostudent_content`, `infostudent_status`, `created_at`, `updated_at`) VALUES
(1, 'Thông tin sinh viên', 'thong-tin-sinh-vien', 'chevrolet_corvette_stingray_c7_95549_1280x720.jpg', '<p>Trung t&acirc;m Kết nối Đại học-Doanh nghiệp của Trường Đại Học Thăng Long (UEC-TLU) l&agrave; một đơn vị được Trường Đại Học hăng Long th&agrave;nh lập theo quyết định 05/QĐHĐQT-ĐHTL, ng&agrave;y 01 th&aacute;ng 03 năm 2017, do GS Ho&agrave;ng Xu&acirc;n S&iacute;nh, chủ tịch Hội đồng Quản trị, đ&atilde; k&yacute;.</p>\r\n\r\n<p>Trung t&acirc;m c&oacute; nhiệm vụ tăng cường mỗi quan hệ hợp t&aacute;c giữa Trường Đại Học Thăng Long với doanh nghiệp Việt Nam v&agrave; nước ngo&agrave;i, nhằm ph&aacute;t triển những kỹ năng l&agrave;m việc v&agrave; kỹ năng t&igrave;m việc l&agrave;m của sinh vi&ecirc;n Trường Đại Học Thăng Long, g&oacute;p phần cho sự ph&aacute;t triển th&ocirc;ng minh v&agrave; bền vững của x&atilde; hội Việt Nam.</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i mong muốn được kết nối với c&aacute;c doanh nghiệp, đặc biệt l&agrave; cựu sinh vi&ecirc;n của Trường ĐH Thăng Long, nhằm tạo điều kiện cho sinh vi&ecirc;n của Trường t&igrave;m được một nơi thực tập, s&aacute;t với thực tế l&agrave;m việc trong ng&agrave;nh, v&agrave; nhận được sự đ&oacute;ng g&oacute;p của c&aacute;c doanh nghiệp trong việc cải tiến nội dung đ&agrave;o tạo trở n&ecirc;n thiết thực hơn.</p>\r\n\r\n<p><strong>Để t&igrave;m hiểu th&ecirc;m:</strong></p>\r\n\r\n<ul>\r\n	<li><a href=\"http://uec.local:8888/public/Layout/Frontend/#\">Đọc thư ngỏ hướng về c&aacute;c doanh nh&acirc;n</a></li>\r\n	<li><a href=\"http://uec.local:8888/public/Layout/Frontend/#\">Tải flyer giới thiệu Trung t&acirc;m UEC-TLU</a></li>\r\n	<li><a href=\"http://uec.local:8888/public/Layout/Frontend/#\">Tải t&agrave;i liệu giới thiệu c&aacute;c ng&agrave;nh đ&agrave;o tạo của Trường Đại Học Thăng Long</a></li>\r\n</ul>', NULL, '2018-08-13 07:51:26', '2018-10-02 07:24:26');

-- --------------------------------------------------------

--
-- Table structure for table `uec_introuec`
--

CREATE TABLE `uec_introuec` (
  `id` int(10) UNSIGNED NOT NULL,
  `introuec_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introuec_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introuec_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introuec_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `introuec_status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uec_introuec`
--

INSERT INTO `uec_introuec` (`id`, `introuec_name`, `introuec_slug`, `introuec_img`, `introuec_content`, `introuec_status`, `created_at`, `updated_at`) VALUES
(6, 'UEC là gì? Ai sáng lập?', 'uec-la-gi-ai-sang-lap', 'audi_r8_regula_tuning_oxigin_oxrock_r20_96478_1280x720.jpg', '<p><img class=\"left\" src=\"http://uec.local:8888/public/Layout/Frontend/images/giothieu.png\" style=\"float:left; margin-left:10px; margin-right:10px; width:300px\" /></p>\r\n\r\n<h1><small>GIỚI THIỆU TRUNG T&Acirc;M UEC</small></h1>\r\n\r\n<p>Để giới thiệu Trung t&acirc;m Kết nối Đại học-Doanh nghiệp của Trường Đại Học Thăng Long, anh chị c&oacute; thể tải c&aacute;c vật liệu sau đ&acirc;y:</p>\r\n\r\n<p>Kiến tạo một m&ocirc;i trường gi&aacute;o dục l&agrave;nh mạnh trong đ&oacute; lu&ocirc;n đề cao t&iacute;nh trung thực, t&igrave;nh y&ecirc;u thương con người v&agrave; tinh thần hợp t&aacute;c lao động như phương ch&acirc;m h&agrave;ng đầu.</p>\r\n\r\n<p>Đ&agrave;o tạo sinh vi&ecirc;n c&oacute; tri thức v&agrave; kỹ năng l&agrave;m việc ở bậc đại học v&agrave; sau đại học với chất lượng tốt, đ&aacute;p ứng y&ecirc;u cầu cấp b&aacute;ch về nguồn nh&acirc;n lực c&oacute; tr&igrave;nh độ cao của x&atilde; hội; bằng c&aacute;ch tạo ra những điều kiện học tập tốt, thực h&agrave;nh ứng dụng tối ưu trong bối cảnh to&agrave;n cầu h&oacute;a gi&aacute;o dục, trong một thế giới hội nhập phẳng v&agrave; nhanh. Ch&uacute;ng t&ocirc;i đ&atilde; v&agrave; đang nỗ lực g&oacute;p phần đưa sinh vi&ecirc;n của m&igrave;nh tới c&aacute;c địa chỉ gi&aacute;o dục ti&ecirc;n tiến trong khu vực v&agrave; tr&ecirc;n thế giới nhằm duy tr&igrave; t&iacute;nh li&ecirc;n tục trong học tập, thực tập v&agrave; nghi&ecirc;n cứu.</p>\r\n\r\n<p>T&iacute;ch cực triển khai c&ocirc;ng t&aacute;c nghi&ecirc;n cứu khoa học nhằm phục vụ c&ocirc;ng việc dạy ở bậc đại học, sau đại học ở chất lượng cao. Đ&acirc;y cũng l&agrave; nhiệm vụ quan trọng của một trường Đại học hướng tới đ&agrave;o tạo cho trường v&agrave; x&atilde; hội một đội ngũ những nh&agrave; khoa học c&oacute; năng lực nghi&ecirc;n cứu, đưa tri thức ứng dụng thực tiễn đời sống.</p>\r\n\r\n<p>Nỗ lực x&acirc;y dựng trường trở th&agrave;nh một Trung t&acirc;m Văn h&oacute;a, Gi&aacute;o dục, Khoa học v&agrave; C&ocirc;ng nghệ tiến tiến &ndash; hiện đại.</p>\r\n\r\n<p><em>Như vậy lẽ đương nhi&ecirc;n để thực hiện sứ mạng tr&ecirc;n sự gắn kết giữa trường Đại học v&agrave; Doanh nghiệp l&agrave; một sự gắn kết bắt buộc m&agrave; thiếu n&oacute; x&atilde; hội sẽ kh&ocirc;ng nhận được những lợi &iacute;ch tối thiết như n&oacute; phải được nhận.</em></p>\r\n\r\n<p><em>Trong sự kết nối ba th&agrave;nh phần n&oacute;i tr&ecirc;n th&igrave; cả ba b&ecirc;n đều mang lại lợi &iacute;ch cho nhau. Song, với ba th&agrave;nh phần kết nối, sinh vi&ecirc;n l&agrave; vi&ecirc;n gạch n&oacute;ng nhất trong l&ograve; đ&agrave;o tạo nh&acirc;n lực do vậy ngo&agrave;i sự chủ động thay đổi chương tr&igrave;nh đ&agrave;o tạo theo hướng b&aacute;m s&aacute;t thực tế của doanh nghiệp th&igrave; việc sớm định hướng x&acirc;y dựng cho sinh vi&ecirc;n đức t&iacute;nh tự tin, thể hiện bản lĩnh, trải nghiệm tự nghi&ecirc;n cứu, tự n&acirc;ng cao tri thức v&agrave; ho&agrave;n thiện c&aacute;ch l&agrave;m việc nh&oacute;m cũng l&agrave; một mục ti&ecirc;u then chốt. Bằng v&agrave;o những tố chất tr&ecirc;n sinh vi&ecirc;n kh&ocirc;ng những chủ động t&igrave;m kiếm m&ocirc;i trường học tập, m&agrave; c&ograve;n sẽ mang lại cho ch&iacute;nh những Doanh nghiệp tuyển dụng họ c&aacute;c s&aacute;ng tạo t&aacute;o bạo được khơi l&ecirc;n từ g&oacute;c nh&igrave;n thực tiễn trong đơn đặt h&agrave;ng đ&agrave;o tạo của ch&iacute;nh Doanh nghiệp đối với Nh&agrave; trường.</em></p>\r\n\r\n<p><em>Đ&oacute; l&agrave; l&yacute; do tại sao ch&uacute;ng t&ocirc;i đ&atilde; tham gia một dự &aacute;n hợp t&aacute;c quốc tế nhằm gi&uacute;p tăng cường mọi tương t&aacute;c giữa Nh&agrave; Trường v&agrave; c&aacute;c Doanh nghiệp, dẫn đến sự th&agrave;nh lập của Trung t&acirc;m Kết nối Đại học &ndash; Doanh Nghiệp (University-Enterprise Center, UEC) của Trường Đại học Thăng Long.</em></p>\r\n\r\n<p><em>T&oacute;m lại, ch&uacute;ng t&ocirc;i hết sức hy vọng m&ocirc; h&igrave;nh kết hợp Đại học &ndash; Doanh nghiệp sẽ được tăng cường, đẩy mạnh, nh&acirc;n rộng đấy l&agrave; nền tảng để Nh&agrave; trường n&acirc;ng cao hơn nữa chất lượng đ&agrave;o tạo đ&aacute;p ứng nhu cầu x&atilde; hội, tạo niềm tin ở x&atilde; hội v&agrave; t&acirc;m l&yacute; chủ động m&agrave; an t&acirc;m đối với c&aacute;c Doanh nghiệp.</em></p>\r\n\r\n<h3 style=\"color:#aaaaaa; font-style:italic\"><em>H&agrave; Nội, ng&agrave;y 5 th&aacute;ng 12/2017&nbsp;<br />\r\nVũm đốc Trung t&acirc;m UEC-TLU&nbsp;<br />\r\nuec-tlu@thanglong.edu.vn Đỗ Quỳnh&nbsp;<br />\r\nPh&oacute; Hiệu trưởng, ki&ecirc;m Gi&aacute;</em></h3>\r\n\r\n<p><em><strong><img alt=\"\" src=\"http://localhost:8080/uec/public/upload/files/forza_horizon_2_racing_2014_playground_games_turn_10_studios_100194_1280x720.jpg\" /></strong></em></p>', NULL, '2018-09-27 03:37:36', '2018-10-02 07:11:55');

-- --------------------------------------------------------

--
-- Table structure for table `uec_jobapplication`
--

CREATE TABLE `uec_jobapplication` (
  `id` int(10) UNSIGNED NOT NULL,
  `jobapplication_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobapplication_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobapplication_salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobapplication_purpose` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobapplication_transcript` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobapplication_tick` tinyint(1) DEFAULT NULL,
  `jobapplication_status` tinyint(4) DEFAULT NULL,
  `area_id` int(10) UNSIGNED DEFAULT NULL,
  `career_id` int(10) UNSIGNED DEFAULT NULL,
  `education_id` int(10) UNSIGNED DEFAULT NULL,
  `yearofexp_id` int(10) UNSIGNED DEFAULT NULL,
  `formality_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uec_jobapplication`
--

INSERT INTO `uec_jobapplication` (`id`, `jobapplication_name`, `jobapplication_slug`, `jobapplication_salary`, `jobapplication_purpose`, `jobapplication_transcript`, `jobapplication_tick`, `jobapplication_status`, `area_id`, `career_id`, `education_id`, `yearofexp_id`, `formality_id`, `user_id`, `student_id`, `created_at`, `updated_at`) VALUES
(3, 'Lập trình C++', 'lap-trinh-c', '2000000', 'Rèn luyện kĩ năng và nâng cao tay nghề.', NULL, NULL, 0, 2, 1, 1, 2, 1, 36, 11, '2018-09-09 08:09:08', '2018-09-09 08:09:08'),
(4, 'Lập trình Cd', 'lap-trinh-cd', '23424234', 'fsdf', NULL, NULL, 0, 2, 1, 1, 2, 1, 35, 12, '2018-09-12 10:51:35', '2018-09-12 10:51:35'),
(5, 'Lap trinh java cor', 'lap-trinh-java-cor', '2000000', 'dfdsf', NULL, NULL, 0, 2, 1, 1, 2, 1, 37, 17, '2018-09-13 09:05:35', '2018-09-13 09:05:35'),
(6, 'sdfdsfsd', 'sdfdsfsd', '234234324', 'fdsf', NULL, NULL, 0, 2, 1, 1, 2, 1, 45, 5101, '2018-09-27 07:30:01', '2018-09-27 07:30:01');

-- --------------------------------------------------------

--
-- Table structure for table `uec_jobapp_recruitment`
--

CREATE TABLE `uec_jobapp_recruitment` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `student_id` int(10) DEFAULT NULL,
  `jobapplication_id` int(10) UNSIGNED NOT NULL,
  `recruitment_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_work` int(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uec_jobapp_recruitment`
--

INSERT INTO `uec_jobapp_recruitment` (`id`, `user_id`, `student_id`, `jobapplication_id`, `recruitment_id`, `status`, `active_work`, `created_at`, `updated_at`) VALUES
(21, 36, 11, 3, 4, 'pending', 0, '2018-09-12 09:00:45', '2018-09-12 09:00:45'),
(22, 36, 11, 3, 3, 'pending', 0, '2018-09-12 09:18:10', '2018-09-12 09:18:10'),
(23, 36, 11, 3, 3, 'pending', 0, '2018-09-12 10:45:34', '2018-09-12 10:45:34'),
(24, 35, 12, 4, 3, 'pending', 0, '2018-09-12 10:52:06', '2018-09-12 10:52:06'),
(34, 37, 17, 5, 5, 'pending', 0, '2018-09-13 21:21:10', '2018-09-13 21:21:10'),
(35, 37, 17, 5, 8, 'pending', 0, '2018-09-14 05:46:43', '2018-09-14 05:46:43'),
(36, 37, 17, 5, 9, 'work', 1, '2018-09-16 05:11:43', '2018-09-16 08:45:07'),
(37, 37, 17, 5, 6, 'pending', 0, '2018-09-16 05:12:09', '2018-09-16 05:12:09'),
(38, 35, 12, 4, 9, 'work', 2, '2018-09-16 06:33:01', '2018-09-16 09:18:28'),
(39, 35, 12, 4, 10, 'pending', 2, '2018-09-17 05:20:30', '2018-09-17 08:07:00'),
(40, 35, 12, 4, 9, 'pending', 2, '2018-09-17 08:03:11', '2018-09-18 08:51:02'),
(41, 36, 11, 3, 10, 'work', 1, '2018-09-18 06:24:47', '2018-09-18 08:57:36'),
(42, 36, 11, 3, 9, 'pending', 0, '2018-09-23 01:32:00', '2018-09-23 01:32:00'),
(43, 36, 11, 3, 6, 'pending', 0, '2018-09-23 01:33:13', '2018-09-23 01:33:13'),
(50, 45, 5101, 6, 10, 'work', 1, '2018-09-27 08:27:30', '2018-09-27 21:21:57');

-- --------------------------------------------------------

--
-- Table structure for table `uec_jobfair`
--

CREATE TABLE `uec_jobfair` (
  `id` int(10) UNSIGNED NOT NULL,
  `jobfair_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobfair_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobfair_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobfair_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobfair_status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uec_jobfair`
--

INSERT INTO `uec_jobfair` (`id`, `jobfair_name`, `jobfair_slug`, `jobfair_img`, `jobfair_content`, `jobfair_status`, `created_at`, `updated_at`) VALUES
(1, 'JOB FAIR 2018', 'job-fair-2018', 'dota_2_shadow_fiend_art_dark_111921_300x168.jpg', '<p>Chương tr&igrave;nh Job Fair 2018, dự kiến sẽ được tổ chức v&agrave;o ng&agrave;y 11 th&aacute;ng 04/2018, đ&atilde; bị ho&atilde;n lại cho đến th&aacute;ng 06 hoặc th&aacute;ng 07/2018. L&yacute; do l&agrave; Trường Đại Học Thăng Long đang tập trung cho việc kiểm định chất lượng đại học v&agrave; do chỉ c&oacute; &iacute;t sinh vi&ecirc;n đ&atilde; quan t&acirc;m đến sự kiện đ&oacute; v&agrave;o ng&agrave;y 11/04/2018.</p>\r\n\r\n<p><em>Trung t&acirc;m UEC-TLU th&agrave;nh thật xin lỗi về sự gi&atilde;n đoạn n&agrave;y ngo&agrave;i &yacute; muốn của ch&uacute;ng t&ocirc;i !</em></p>\r\n\r\n<p>C&aacute;c doanh nghiệp quan t&acirc;m đến việc đồng tổ chức c&aacute;c hoạt dộng v&agrave; sự kiện d&agrave;nh cho sinh vi&ecirc;n nhằm ph&aacute;t huy kỹ năng t&igrave;m kiếm việc l&agrave;m cho họ c&oacute; thể li&ecirc;n hệ với ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p>Trung t&acirc;m UEC-TLU đ&atilde; thay chương tr&igrave;nh Job Fair 2018 (11 th&aacute;ng 04/2018) bằng một buổi hội thảo về&nbsp;<a href=\"http://uec.local:8888/public/Layout/Frontend/#\">định hướng nghề nghiệp</a>&nbsp;sẽ được tổ chức ng&agrave;y thứ bảy 21 th&aacute;ng 04/2018. Ai quan t&acirc;m đến c&oacute; thể truy cập th&ocirc;ng tin&nbsp;<a href=\"http://uec.local:8888/public/Layout/Frontend/#\">tại đ&acirc;y</a>.</p>', NULL, '2018-08-16 08:07:54', '2018-10-02 09:59:47'),
(2, 'Jobfair 2016 - Ngày hội việc làm sinh viên tlu', 'jobfair-2016-ngay-hoi-viec-lam-sinh-vien-tlu', 'flowers_bush_greenhouse_115817_300x168.jpg', '<p>hay</p>', NULL, '2018-10-02 01:37:03', '2018-10-02 01:37:03'),
(3, 'Jobfair 2017 - Bạn là ai? Bạn muốn thành công? Hãy đến với chúng tôi!!', 'jobfair-2017-ban-la-ai-ban-muon-thanh-cong-hay-den-voi-chung-toi', 'dota_2_shadow_fiend_art_dark_111921_300x168.jpg', '<p>&quot;Ronaldo ra đi để lại qu&aacute; nhiều khoảng trống cho Real Madrid giống như việc bạn kh&ocirc;ng thể d&ugrave;ng một ng&oacute;n tay để che &aacute;nh nắng mặt trời. Cậu ấy l&agrave; ch&acirc;n s&uacute;t chủ lực khi kho&aacute;c &aacute;o đội b&oacute;ng. T&ocirc;i buồn v&igrave; ng&agrave;y h&ocirc;m nay, CSKA chỉ c&oacute; một cơ hội trong khi Real c&oacute; h&agrave;ng t&aacute; nhưng kh&ocirc;ng tận dụng được&quot;. Trung vệ Nacho cũng tỏ ra tiếc nuối v&igrave; &quot;chẳng thể l&agrave;m g&igrave; để giữ ch&acirc;n được Ronaldo hồi h&egrave; vừa qua&quot;.&nbsp;</p>\r\n\r\n<p>Cả hai cầu thủ n&agrave;y đều kết th&uacute;c những t&acirc;m sự của m&igrave;nh bằng c&acirc;u n&oacute;i &quot;dập khu&ocirc;n mẫu&quot;:&nbsp;&quot;Nhưng ch&uacute;ng t&ocirc;i kh&ocirc;ng thể sống m&atilde;i trong qu&aacute; khứ v&agrave; phải tiến l&ecirc;n&quot; giống như l&agrave; được học chung từ một thầy.</p>\r\n\r\n<p>Họ&nbsp;vẫn c&ograve;n đang kho&aacute;c &aacute;o Real Madrid n&ecirc;n r&otilde; r&agrave;ng c&oacute; l&yacute; do để &quot;sợ&quot; Sergio Ramos. Trung vệ người T&acirc;y Ban Nha l&agrave; người tỏ ra &quot;th&ugrave; địch&quot; nhất với Ronaldo sau khi cầu thủ n&agrave;y chuyển sang Juventus.</p>\r\n\r\n<p>&quot;Mất đi một cầu thủ quan trọng như Ronaldo c&oacute; thể hơi phiền nhưng Real Madrid lu&ocirc;n l&agrave; một tập thể mạnh v&agrave; ch&uacute;ng t&ocirc;i sẽ gặt h&aacute;i được những danh hiệu&nbsp;tiếp theo m&agrave; kh&ocirc;ng cần cậu ta&quot;.&nbsp;</p>\r\n\r\n<p><img alt=\"Real Madrid 3 trận 0 bàn thắng: Nội bộ hỗn loạn vì Ronaldo - 3\" src=\"https://cdn.24h.com.vn/upload/4-2018/images/2018-10-03/Noi-bo-Real-luc-duc-vi-Ronaldo-Nguoi-nho-ke-ramos-660-1538558096-170-width660height371.jpg\" style=\"height:300px; width:100%\" /></p>\r\n\r\n<p>Ramos sẵn s&agrave;ng chỉ tr&iacute;ch Ronaldo v&igrave; lợi &iacute;ch của Real Madrid</p>\r\n\r\n<p>Đ&oacute; l&agrave; những lời phản ph&aacute;o đanh th&eacute;p của đội trưởng Real hồi th&aacute;ng 7 vừa qua sau khi Ronaldo n&oacute;i Juventus giống như l&agrave; nh&agrave;. D&ugrave; thật t&acirc;m hay &quot;diễn&quot; th&igrave; Ramos đ&atilde; đ&uacute;ng khi tung ra những lời ph&aacute;t biểu ở thời điểm đ&oacute; để vực dậy tinh thần đồng đội.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, mọi thứ đang đi ngược với những g&igrave; trung vệ người T&acirc;y Ban Nha ph&aacute;t biểu v&agrave;&nbsp;đ&atilde; c&oacute; những cầu thủ c&ocirc;ng khai về &quot;nỗi&nbsp;nhớ&quot;&nbsp;Ronaldo. Nếu kh&ocirc;ng sớm cải thiện phong độ th&igrave; chẳng mấy m&agrave; ph&ograve;ng thay đồ của đội b&oacute;ng Ho&agrave;ng gia T&acirc;y Ban Nha lục đục v&igrave; một người đ&atilde; ra đi.</p>', NULL, '2018-10-02 01:38:21', '2018-10-03 07:36:41'),
(4, 'Jobfair 2018 - Tài năng của bạn là chìa khóa thành công cho doanh nghiệp', 'jobfair-2018-tai-nang-cua-ban-la-chia-khoa-thanh-cong-cho-doanh-nghiep', 'project_cars_lykan_hypersport_hypersport_104438_1920x1080.jpg', '<p>a</p>', NULL, '2018-10-02 01:39:09', '2018-10-02 01:39:09'),
(5, 'Jobfair 2018 - Tương lai trong tầm tay hay trong suy nghĩ. Đến với chúng tôi để làm chủ nó (lần 2)', 'jobfair-2018-tuong-lai-trong-tam-tay-hay-trong-suy-nghi-den-voi-chung-toi-de-lam-chu-no-lan-2', 'need_for_speed_rivals_lamborghini_aventador_lamborghini_veneno_dodge_srt_viper_93936_1280x720.jpg', '<p>a</p>', NULL, '2018-10-02 01:40:19', '2018-10-02 01:40:19'),
(6, 'Jobfair 2019 - Tìm hiểu về công nghệ 4.0 và quy trình làm việc mới', 'jobfair-2019-tim-hieu-ve-cong-nghe-40-va-quy-trinh-lam-viec-moi', 'tulips_flowers_different_cat_bench_25488_300x168.jpg', '<p>a</p>', NULL, '2018-10-02 01:42:06', '2018-10-02 01:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `uec_news`
--

CREATE TABLE `uec_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uec_news`
--

INSERT INTO `uec_news` (`id`, `news_name`, `news_slug`, `news_img`, `news_content`, `news_status`, `created_at`, `updated_at`) VALUES
(1, 'Tử tế đi', 'tu-te-di', 'flowers_bush_greenhouse_115817_300x168.jpg', '<p>fsdffffffff</p>', NULL, '2018-08-16 07:54:36', '2018-08-16 09:00:26'),
(2, 'dsfsdf', 'dsfsdf', 'audi_r8_regula_tuning_oxigin_oxrock_r20_96478_1280x720.jpg', '<p><strong>fdsfdsfdsf</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://localhost:8080/uec/public/upload/files/audi_r8_regula_tuning_oxigin_oxrock_r20_96478_1280x720.jpg\" /></strong></p>', NULL, '2018-09-22 20:51:31', '2018-09-22 20:51:31'),
(4, 'Cận cảnh nơi thanh sắt rơi đè chết cô gái đi đường', 'can-canh-noi-thanh-sat-roi-de-chet-co-gai-di-duong', '1538135619-979-can-canh-noi-thanh-sat-roi-de-chet-co-gai-di-duong-toa-nha--1--1538133322-width660height495.jpg', '<h2>Cần trục b&ecirc;n tr&aacute;i đặt tr&ecirc;n n&oacute;c t&ograve;a nh&agrave; bất ngờ tuột khỏi vị tr&iacute;, rơi tr&uacute;ng c&ocirc; g&aacute;i đang chạy xe m&aacute;y tr&ecirc;n đường L&ecirc; Văn Lương l&agrave;m nạn nh&acirc;n tử vong.</h2>\r\n\r\n<p>https://cdn.24h.com.vn/upload/3-2018/images/2018-09-28/1538135619-979-can-canh-noi-thanh-sat-roi-de-chet-co-gai-di-duong-toa-nha--1--1538133322-width660height495.jpg<img alt=\"\" src=\"http://localhost:8888/public/upload/images/images/baiviet/1538135619-979-can-canh-noi-thanh-sat-roi-de-chet-co-gai-di-duong-toa-nha--1--1538133322-width660height495.jpg\" style=\"height:225px; width:300px\" />Khoảng 18h ng&agrave;y 27/9, khi đang đi xe m&aacute;y tr&ecirc;n đường L&ecirc; Văn Lương, chị Dương Thị Hằng (SN1987, qu&ecirc; Bắc Ninh) v&agrave; &ocirc;ng&nbsp;Cường (SN 1956, ở H&agrave; Nội) bất ngờ bị thanh sắt từ rơi tr&uacute;ng người. Hậu quả chị Hằng chết tại chỗ, &ocirc;ng&nbsp;Cường bị thương.</p>', NULL, '2018-09-28 10:14:27', '2018-09-28 10:14:27'),
(5, 'Làm việc tại Christinas (Hà Nội và Sapa)', 'lam-viec-tai-christinas-ha-noi-va-sapa', 'hiring-chef-300x193.jpg', '<p>C&ocirc;ng ty&nbsp;<a href=\"https://www.christinas.vn/\" target=\"_blank\">Christinas</a>&nbsp;tại Việt Nam hoạt động trong 3 lĩnh vực của ng&agrave;nh Du lịch l&agrave; &nbsp; (1) Home-stay Service (2) Motorbike Trip (3) Nh&agrave; h&agrave;ng The Joi &ndash; Restaurant.</p>\r\n\r\n<p>Do đ&oacute; lu&ocirc;n lu&ocirc;n t&igrave;m nguồn nh&acirc;n lực để phat triển.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://uec.thanglong.edu.vn/wp-content/uploads/2018/09/hiring-chef.jpg\"><img alt=\"\" src=\"http://uec.thanglong.edu.vn/wp-content/uploads/2018/09/hiring-chef-300x193.jpg\" style=\"height:193px; width:300px\" /></a>Đặc biệt Christinas Việt Nam đang t&igrave;m một người đầu bếp c&oacute; nhiều kinh nghiệm v&agrave; biết tiếng Anh để l&agrave;m việc tại Nh&agrave; h&agrave;ng The Joi Restaurant tại Sapa. Lương c&oacute; thể từ 1.000 đến 3.000 $ Mỹ, t&ugrave;y theo kinh nghiệm. Để biết th&ecirc;m về vị tr&iacute; tuyển dụng n&agrave;y, vui l&ograve;ng xem&nbsp;<a href=\"https://www.christinas.vn/joinus/listing/66/\" target=\"_blank\">m&ocirc; tả của c&ocirc;ng việc</a>&nbsp;(bằng tiếng Anh).</p>', NULL, '2018-10-02 01:48:47', '2018-10-02 01:48:47'),
(6, 'Workshop khởi nghiệp với Nguyễn Tiến Mạnh – 29/09/2018', 'workshop-khoi-nghiep-voi-nguyen-tien-manh-29092018', 'innerpiece-768x397.png', '<p><a href=\"http://uec.thanglong.edu.vn/wp-content/uploads/2018/09/innerpiece.png\"><img alt=\"\" src=\"http://uec.thanglong.edu.vn/wp-content/uploads/2018/09/innerpiece-1024x530.png\" style=\"height:272px; width:525px\" /></a>Khoa To&aacute;n Tin v&agrave; C&acirc;u Lạc Bộ sinh Vi&ecirc;n Tin Học (TLIT ) của Trường Đại Học Thăng Long đ&atilde; mời anh Nguyễn Tiến Mạnh, CEO của startup InnerPierce, đến chia sẻ kinh nghiệm khởi nghiệp v&agrave; giới thiệu dự &aacute;n&nbsp;<a href=\"https://primeengine.io/\" target=\"_blank\">Prime Engine</a>, một c&ocirc;ng nghệ nền tảng gi&uacute;p bạn s&aacute;ng tạo v&iacute; dụ để học lập tr&igrave;nh game, để t&iacute;ch hợp v&agrave;o dự &aacute;n một giải ph&aacute;p m&ocirc; phỏng đồ họa, &acirc;m thanh, vật l&yacute; &hellip;&nbsp; hoặc để ph&aacute;t triển sản phẩm (game 3D, m&ocirc; phỏng tương t&aacute;c về gi&aacute;o dục, y tế, giao th&ocirc;ng, &hellip;, phim ngắn 3D ).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Table of Contents</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://uec.thanglong.edu.vn/vi/workshop-khoi-nghiep-voi-nguyen-tien-manh-29-09-2018/#Noi_dung_cua_Hoi_thao_ve_khoi_nghiep\">Nội dung của Hội thảo về khởi nghiệp</a></li>\r\n	<li><a href=\"https://uec.thanglong.edu.vn/vi/workshop-khoi-nghiep-voi-nguyen-tien-manh-29-09-2018/#Timeline_hoi_thao\">Timeline hội thảo</a>\r\n	<ul>\r\n		<li><a href=\"https://uec.thanglong.edu.vn/vi/workshop-khoi-nghiep-voi-nguyen-tien-manh-29-09-2018/#9h-10h30_Chia_se_ve_van_de_khoi_nghiep_va_phuong_phap_nghien_cuu_hoc_tap\">9h-10h30: Chia sẻ về vấn đề khởi nghiệp v&agrave; phương ph&aacute;p nghi&ecirc;n cứu học tập</a></li>\r\n		<li><a href=\"https://uec.thanglong.edu.vn/vi/workshop-khoi-nghiep-voi-nguyen-tien-manh-29-09-2018/#10h45-11h45_Gioi_thieu_ve_du_an_Prime_Engine\">10h45-11h45: Giới thiệu về dự &aacute;n Prime Engine</a></li>\r\n	</ul>\r\n	</li>\r\n	<li><a href=\"https://uec.thanglong.edu.vn/vi/workshop-khoi-nghiep-voi-nguyen-tien-manh-29-09-2018/#Huong_dan_dat_cau_hoi_lien_quan_den_khoi_nghiep\">Hướng dẫn đặt c&acirc;u hỏi li&ecirc;n quan đến khởi nghiệp:</a></li>\r\n	<li><a href=\"https://uec.thanglong.edu.vn/vi/workshop-khoi-nghiep-voi-nguyen-tien-manh-29-09-2018/#Dang_ky_tham_gia_hoi_thao_ngay_29092018\">Đăng k&yacute; tham gia hội thảo ng&agrave;y 29/09/2018</a></li>\r\n	<li><a href=\"https://uec.thanglong.edu.vn/vi/workshop-khoi-nghiep-voi-nguyen-tien-manh-29-09-2018/#Tham_khao_them_ve_anh_Manh\">Tham khảo th&ecirc;m về anh Mạnh</a></li>\r\n</ul>\r\n\r\n<h1>Nội dung của Hội thảo về khởi nghiệp</h1>\r\n\r\n<p>Nội dung chia sẻ về khởi nghiệp của anh Tiến Mạnh sẽ như sau:</p>\r\n\r\n<ol>\r\n	<li>Qu&aacute; tr&igrave;nh x&acirc;y dựng v&agrave; ph&aacute;t triển &yacute; tưởng, cho đến khi khởi nghiệp v&agrave; th&agrave;nh lập c&ocirc;ng ty, những kh&oacute; khăn gặp phải v&agrave; c&aacute;ch giải quyết ra sao: t&ocirc;i sẽ chia ra 3 mảng ch&iacute;nh trong khởi nghiệp để chia sẻ đ&oacute; l&agrave; t&igrave;m kiếm &yacute; tưởng, ph&aacute;t triển dự &aacute;n, dự &aacute;n khởi nghiệp</li>\r\n	<li>Kỹ năng kinh doanh v&agrave; vận h&agrave;nh doanh nghiệp: t&ocirc;i chia sẻ điều quan trọng nhất trong tiến h&agrave;nh c&ocirc;ng việc cũng như vận h&agrave;nh doanh nghiệp v&agrave; c&aacute;c kỹ năng cần thiết để thực thi nhiệm vụ n&agrave;y</li>\r\n	<li>C&aacute;ch thức x&acirc;y dựng kế hoạch kinh doanh: c&aacute;c yếu tố của một bản kế hoạch kinh doanh ho&agrave;n hảo</li>\r\n</ol>\r\n\r\n<p>Sau mỗi phần chia sẻ cho từng vấn đề tr&ecirc;n, 3-5 ph&uacute;t sẽ được d&agrave;nh ra để c&aacute;c bạn sinh vi&ecirc;n đặt c&acirc;u hỏi.</p>', NULL, '2018-10-02 01:50:24', '2018-10-02 01:50:24'),
(7, 'Lễ tân (bán thời gian) tại Phòng Gym Song Hong MMA', 'le-tan-ban-thoi-gian-tai-phong-gym-song-hong-mma', 'songhongMMA.png', '<p><a href=\"http://uec.thanglong.edu.vn/wp-content/uploads/2018/09/songhongMMA.png\"><img alt=\"\" src=\"http://uec.thanglong.edu.vn/wp-content/uploads/2018/09/songhongMMA.png\" style=\"height:178px; width:181px\" /></a>Ph&ograve;ng Gym Song Hong Multi-Martial Arts đang cần tuyển một người l&agrave;m việc b&aacute;n thời gian để phục vụ tại vị tr&iacute; Lễ t&acirc;n.</p>\r\n\r\n<ul>\r\n	<li>Y&ecirc;u cầu ứng cử vi&ecirc;n phải biết n&oacute;i tiếng Anh.</li>\r\n	<li>Thời gian l&agrave;m việc c&aacute;c ng&agrave;y thứ ba, thứ năm v&agrave; thứ s&aacute;u từ 9:00 đến 21:00.</li>\r\n	<li>Lương th&aacute;ng 3 triệu đồng, k&egrave;m th&ecirc;m nhiều thuận lợi như d&ugrave;ng ph&ograve;ng Gym miễn ph&iacute;, v&agrave; sẽ c&oacute; nhiều thời gian rỗi để học v&agrave; l&agrave;m c&aacute;c b&agrave;i của m&igrave;nh.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&aacute;c bạn quan t&acirc;m đến c&oacute; thể tải phiếu m&ocirc; tả c&ocirc;ng việc v&agrave; c&aacute;c quyền lợi (bằng tiếng Anh) :&nbsp;<a href=\"http://uec.thanglong.edu.vn/wp-content/uploads/2018/09/SongHong-MMA-GYM-job.pdf\" target=\"_blank\">SongHong-MMA-GYM-job.pdf</a></p>\r\n\r\n<p>Tham khao trang Facebook Song Hong MMA&nbsp;<a href=\"https://www.facebook.com/SongHongMMA\" target=\"_blank\">tại đ&acirc;y</a>.</p>', NULL, '2018-10-02 01:52:01', '2018-10-02 01:52:01'),
(8, 'Nhà hàng Savoor cần tìm sinh viên làm nhân viên bàn.', 'nha-hang-savoor-can-tim-sinh-vien-lam-nhan-vien-ban', 'audi_r8_regula_tuning_oxigin_oxrock_r20_96478_1280x720.jpg', '<p><a href=\"http://uec.thanglong.edu.vn/wp-content/uploads/2018/09/savoor.png\"><img alt=\"\" src=\"http://uec.thanglong.edu.vn/wp-content/uploads/2018/09/savoor.png\" style=\"height:197px; width:239px\" /></a>Nh&agrave; h&agrave;ng SAVOOR, &shy; 46 T&ocirc; Ngọc V&acirc;n, Quảng An, T&acirc;y Hồ, H&agrave; Nội, cần tuyển 01 nh&acirc;n vi&ecirc;n b&agrave;n (đang l&agrave; sinh vi&ecirc;n hoặc đ&atilde; ra trường). &shy;</p>\r\n\r\n<ul>\r\n	<li>Y&ecirc;u cầu : biết tiếng Anh giao tiếp,</li>\r\n	<li>&shy; sẽ được đ&agrave;o tạo kỹ năng phục vụ b&agrave;n &amp; tiếng Anh n&acirc;ng cao. &shy;</li>\r\n	<li>Thời gian l&agrave;m việc:<br />\r\n	&ndash; theo ca: 08:00 &shy; 15:00 &amp; 15:00 &shy; 22:00<br />\r\n	&ndash; hoặc linh hoạt: 08:00 &shy; 22:00.</li>\r\n</ul>\r\n\r\n<h1>Quyền lợi:</h1>\r\n\r\n<ul>\r\n	<li>&shy; Mỗi tuần được nghỉ việc 01 ng&agrave;y. &shy;</li>\r\n	<li>Được cung cấp c&aacute;c bữa ăn h&agrave;ng ng&agrave;y trong thời gian l&agrave;m việc tại nh&agrave; h&agrave;ng. &shy;</li>\r\n	<li>Được đ&agrave;o tạo nấu c&aacute;c m&oacute;n &Acirc;u tại nh&agrave; h&agrave;ng.</li>\r\n	<li>&shy; Được đ&agrave;o tạo &amp; thực h&agrave;nh tiếng Anh n&acirc;ng cao tại nơi l&agrave;m việc. &shy;</li>\r\n	<li>Lương thoả thuận &amp; hấp dẫn (<strong>TỐI THIỂU 20k/h</strong>)</li>\r\n</ul>\r\n\r\n<p><a href=\"http://uec.thanglong.edu.vn/wp-content/uploads/2018/09/panini.png\"><img alt=\"\" src=\"http://uec.thanglong.edu.vn/wp-content/uploads/2018/09/panini.png\" style=\"height:70px; width:200px\" /></a></p>\r\n\r\n<p>C&aacute;c bạn n&agrave;o quan t&acirc;m c&oacute; thể tải th&ocirc;ng tin đầy đủ ở dạng PDF:&nbsp;<a href=\"http://uec.thanglong.edu.vn/wp-content/uploads/2018/09/Savoor-job.pdf\">Savoor-job.pdf</a></p>\r\n\r\n<hr />\r\n<ul>\r\n	<li>CV của ứng vi&ecirc;n/ sinh vi&ecirc;n xin gửi về địa chỉ: info@savoor.com.vn hoặc careers@savoor.com.vn</li>\r\n	<li>Th&ocirc;ng tin chi tiết về nh&agrave; h&agrave;ng tại&nbsp;<a href=\"https://www.savoor.com.vn/\" target=\"_blank\">www.savoor.com.vn</a>.<br />\r\n	Mọi li&ecirc;n hệ trực tiếp qua mobile: 090 210 69 46 (Ms. Annie or Ms Nga).</li>\r\n</ul>\r\n\r\n<hr />\r\n<p>Trung t&acirc;m UEC-TLU c&aacute;m ơn&nbsp;<a href=\"http://ceecvn.org/\" target=\"_blank\">Ph&ograve;ng CEEC tại Việt Nam</a>&nbsp;đ&atilde; gửi th&ocirc;ng tin tuyển dụng n&agrave;y đến ch&uacute;ng t&ocirc;i.</p>', NULL, '2018-10-02 01:52:50', '2018-10-03 06:49:15'),
(9, 'Internship tại British Business Group Vietnam (BBGV)', 'internship-tai-british-business-group-vietnam-bbgv', 'bbgv.png', '<p><img alt=\"\" src=\"http://uec.thanglong.edu.vn/wp-content/uploads/2018/09/bbgv.png\" style=\"height:99px; width:166px\" />BBGV đang t&igrave;m một thực tập vi&ecirc;n đầy nh&acirc;n t&agrave;i để hỗ trợ cho c&aacute;c dự &aacute;n của BBGV. Đ&acirc;y sẽ l&agrave; cơ hội để l&agrave;m việc trong một m&ocirc;i trường kinh doanh đẳng cấp&nbsp; quốc tế v&agrave; g&acirc;y n&ecirc;n kinh nghiệm l&agrave;m việc cho c&aacute;c thực tập sinh.</p>\r\n\r\n<p>Vị tr&iacute; thực tập từ 01/10/2018 đến 31/12/2018, tại H&agrave; Nội, thời gian l&agrave;m việc full-time (kh&ocirc;ng c&oacute; lương).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://bbgv.org/\" target=\"_blank\"><strong>BBGV</strong></a>&nbsp;l&agrave; một tổ chức phi ch&iacute;nh phủ kh&ocirc;ng v&igrave; lợi nhuận được th&agrave;nh lập v&agrave;o năm 1991 v&agrave; đ&atilde; trở th&agrave;nh nh&oacute;m kinh doanh nước ngo&agrave;i đầu ti&ecirc;n nhận giấy ph&eacute;p hoạt động tại Việt Nam v&agrave;o năm 1998. Hiện nay BBGV bao gồm hơn 500 th&agrave;nh vi&ecirc;n. Một trong những mục đ&iacute;ch của BBGV l&agrave; tạo điều kiện thuận lợi cho sự ph&aacute;t triển c&aacute;c quan hệ thương mại giữa th&agrave;nh vi&ecirc;n BBGV v&agrave; c&aacute;c doanh nghiệp của Việt Nam.</p>\r\n\r\n<p>Trụ sở BBGV được đặt tại H&agrave; Nội, 25 phố L&ecirc; Đại H&agrave;nh (Quận Hai B&agrave; Trưng).</p>\r\n\r\n<p>Để xem chi tiết c&ocirc;ng việc v&agrave; những quyền lợi k&egrave;m theo, vui l&ograve;ng tải t&agrave;i liệu PDF&nbsp;(tiếng Anh) sau đ&acirc;y :&nbsp;<a href=\"http://uec.thanglong.edu.vn/wp-content/uploads/2018/09/BBGV-Internship.pdf\" target=\"_blank\">BBGV-Internship.pdf</a></p>\r\n\r\n<hr />\r\n<p>Trung t&acirc;m UEC-TLU c&aacute;m ơn&nbsp;<a href=\"http://ceecvn.org/\" target=\"_blank\">Ph&ograve;ng CEEC tại Việt Nam</a>&nbsp;đ&atilde; gửi th&ocirc;ng tin tuyển dụng n&agrave;y đến ch&uacute;ng t&ocirc;i.</p>', NULL, '2018-10-02 01:54:00', '2018-10-02 01:54:00');

-- --------------------------------------------------------

--
-- Table structure for table `uec_position`
--

CREATE TABLE `uec_position` (
  `id` int(10) UNSIGNED NOT NULL,
  `position_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_describe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uec_position`
--

INSERT INTO `uec_position` (`id`, `position_name`, `position_describe`, `position_slug`, `created_at`, `updated_at`) VALUES
(1, 'Nhân viên', 'fdsfsdlfj', 'nhan-vien', '2018-09-03 07:40:34', '2018-09-03 07:40:34');

-- --------------------------------------------------------

--
-- Table structure for table `uec_post`
--

CREATE TABLE `uec_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uec_recruitment`
--

CREATE TABLE `uec_recruitment` (
  `id` int(10) UNSIGNED NOT NULL,
  `recruitment_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recruitment_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recruitment_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recruitment_salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recruitment_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recruitment_age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recruitment_gender` tinyint(4) NOT NULL,
  `recruitment_deadline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recruitment_tick` tinyint(1) DEFAULT NULL,
  `recruitment_status` tinyint(4) DEFAULT NULL,
  `recruitment_describe` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `recruitment_benefit` longtext COLLATE utf8mb4_unicode_ci,
  `recruitment_requirements` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_id` int(10) UNSIGNED NOT NULL,
  `yearofexp_id` int(10) UNSIGNED NOT NULL,
  `position_id` int(10) UNSIGNED NOT NULL,
  `education_id` int(10) UNSIGNED NOT NULL,
  `formality_id` int(10) UNSIGNED NOT NULL,
  `career_id` int(10) UNSIGNED NOT NULL,
  `enterprise_id` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uec_recruitment`
--

INSERT INTO `uec_recruitment` (`id`, `recruitment_name`, `recruitment_slug`, `recruitment_img`, `recruitment_salary`, `recruitment_amount`, `recruitment_age`, `recruitment_gender`, `recruitment_deadline`, `recruitment_tick`, `recruitment_status`, `recruitment_describe`, `recruitment_benefit`, `recruitment_requirements`, `area_id`, `yearofexp_id`, `position_id`, `education_id`, `formality_id`, `career_id`, `enterprise_id`, `created_at`, `updated_at`) VALUES
(3, 'Lập trình php', 'lap-trinh-php', 'flowers_bush_greenhouse_115817_300x168.jpg', '2000000', '2', 'fdsf', 1, '2018-09-27', NULL, 3, 'Sau giờ nghỉ, Argentina có nhiều sự thay đổi về nhân sự. Thêm vào đó, Guatemala quyết tâm chơi rắn để gỡ gạc danh dự. Chính bởi vậy chất lượng trận đấu bị ảnh hưởng nặng nề. Không có thêm bàn thắng nào được ghi nhưng có đến 6 chiếc thẻ vàng chia đều cho 2 bên để hạ nhiệt những cái đầu nóng.', 'fsdffsf', 'fsdf', 2, 2, 1, 1, 1, 1, 1, '2018-09-03 08:17:52', '2018-09-03 08:17:52'),
(4, 'Lập trình nOdejs', 'lap-trinh-nodejs', 'dota_2_shadow_fiend_art_dark_111921_300x168.jpg', '2323', '2', 'dsfd', 1, '2018-09-01', NULL, 2, 'Sau giờ nghỉ, Argentina có nhiều sự thay đổi về nhân sự. Thêm vào đó, Guatemala quyết tâm chơi rắn để gỡ gạc danh dự. Chính bởi vậy chất lượng trận đấu bị ảnh hưởng nặng nề. Không có thêm bàn thắng nào được ghi nhưng có đến 6 chiếc thẻ vàng chia đều cho 2 bên để hạ nhiệt những cái đầu nóng.', 'fdsf', 'fds', 2, 1, 1, 1, 1, 1, 1, '2018-09-03 08:53:53', '2018-09-03 10:18:57'),
(5, 'Lập trình java 22', 'lap-trinh-java-22', 'grand_theft_auto_v_gta_5_helicopter_sky_building_108437_1280x720.jpg', '2222222222', '2', 'fdsf', 1, '2018-09-08', NULL, 2, 'Argentina tấn công dồn dập với liên tiếp các tình huống bắn phá nguy hiểm. Thế nhưng, mọi chuyện chỉ thực sự khác biệt sau quả phạt đền phút 27. Gonzalo Martinez khai thông bế tắc với cú dứt điểm đầy quyết đoán.', NULL, 'fdf', 1, 2, 1, 1, 1, 1, 1, '2018-09-03 08:56:51', '2018-09-04 03:37:40'),
(6, 'Tuyển QC', 'tuyen-qc', 'forza_horizon_2_racing_2014_playground_games_turn_10_studios_100194_1280x720.jpg', '10000000', '2', 'Trên 12 tuổi', 2, '2018-09-30', NULL, 1, 'Làm việc theo yêu cầufdsfds', 'Sinh nhật, Nghỉ trưa', 'Biết HTML, CSS', 2, 2, 1, 1, 1, 1, 4, '2018-09-13 09:23:20', '2018-09-14 07:21:58'),
(7, 'sdfsdfdsf', 'sdfsdfdsf', 'audi_r8_regula_tuning_oxigin_oxrock_r20_96478_1280x720.jpg', '43242342', '32', '2 năm', 1, '2018-09-09', NULL, 1, 'fdsf fsdfdsf', 'fdsf', 'fsd', 2, 2, 1, 1, 1, 1, 4, '2018-09-13 09:37:34', '2018-09-14 07:21:14'),
(8, 'Lập trình C++', 'lap-trinh-c', 'siji_vocaloid_hatsune_miku_station_train_girl_snow_99127_300x168.jpg', '2000000', '2', 'Trên 20 tuổi', 1, '2018-09-20', NULL, 1, 'Ronaldo đang ráo riết tập luyện cùng các đồng đội ở Juventus để chuẩn bị cho cuộc tiếp đón Sassuolo tại vòng 4 Serie A diễn ra ngày mai, lúc 20h00, ngày 16/9 (giờ Việt Nam). Tân binh trị giá 122 triệu euro đang rất khát khao chứng tỏ giá trị của mình khi đã không thể ghi bàn ở 3 vòng đầu tiên của giải đấu số 1 nước Ý.', 'Ronaldo đang ráo riết tập luyện cùng các đồng đội ở Juventus để chuẩn bị cho cuộc tiếp đón Sassuolo tại vòng 4 Serie A diễn ra ngày mai, lúc 20h00, ngày 16/9 (giờ Việt Nam). Tân binh trị giá 122 triệu euro đang rất khát khao chứng tỏ giá trị của mình khi đã không thể ghi bàn ở 3 vòng đầu tiên của giải đấu số 1 nước Ý.', 'Ronaldo đang ráo riết tập luyện cùng các đồng đội ở Juventus để chuẩn bị cho cuộc tiếp đón Sassuolo tại vòng 4 Serie A diễn ra ngày mai, lúc 20h00, ngày 16/9 (giờ Việt Nam). Tân binh trị giá 122 triệu euro đang rất khát khao chứng tỏ giá trị của mình khi đã không thể ghi bàn ở 3 vòng đầu tiên của giải đấu số 1 nước Ý.', 2, 2, 1, 1, 1, 1, 2, '2018-09-14 02:12:40', '2018-09-14 02:12:40'),
(9, 'Lai xe tu che', 'lai-xe-tu-che', 'forza_horizon_2_racing_2014_playground_games_turn_10_studios_100194_1280x720.jpg', '423423423', '2', '22', 1, '2018-09-21', NULL, 2, 'Bộ Thông tin và Truyền thông (TT&TT) đã chính thức công bố kế hoạch chuyển đổi thuê bao di động 11 số sang 10 số của tất cả nhà mạng di động hiện nay là Viettel, VinaPhone, MobiFone, Vietnamobile và Gmobile. Theo đó, có khoảng 60 triệu thuê bao 11 số sẽ chuyển sang thuê bao 10 số, bắt đầu từ ngày 15/9/2018 và kết thúc vào ngày 30/6/2019.', 'Bộ Thông tin và Truyền thông (TT&TT) đã chính thức công bố kế hoạch chuyển đổi thuê bao di động 11 số sang 10 số của tất cả nhà mạng di động hiện nay là Viettel, VinaPhone, MobiFone, Vietnamobile và Gmobile. Theo đó, có khoảng 60 triệu thuê bao 11 số sẽ chuyển sang thuê bao 10 số, bắt đầu từ ngày 15/9/2018 và kết thúc vào ngày 30/6/2019.', 'Bộ Thông tin và Truyền thông (TT&TT) đã chính thức công bố kế hoạch chuyển đổi thuê bao di động 11 số sang 10 số của tất cả nhà mạng di động hiện nay là Viettel, VinaPhone, MobiFone, Vietnamobile và Gmobile. Theo đó, có khoảng 60 triệu thuê bao 11 số sẽ chuyển sang thuê bao 10 số, bắt đầu từ ngày 15/9/2018 và kết thúc vào ngày 30/6/2019.', 2, 2, 1, 1, 1, 1, 4, '2018-09-14 05:51:38', '2018-09-14 07:26:15');

-- --------------------------------------------------------

--
-- Table structure for table `uec_school`
--

CREATE TABLE `uec_school` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_web` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_describe` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_tick` tinyint(1) DEFAULT NULL,
  `school_status` tinyint(4) DEFAULT NULL,
  `area_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uec_school`
--

INSERT INTO `uec_school` (`id`, `school_code`, `school_name`, `school_slug`, `school_logo`, `school_address`, `school_email`, `school_phone`, `school_web`, `school_describe`, `school_tick`, `school_status`, `area_id`, `created_at`, `updated_at`) VALUES
(1, 'TLU', 'Đại học thăng long', 'dai-hoc-thang-long', 'dota_2_shadow_fiend_art_dark_111921_300x168.jpg', 'dsfds22222222', 'ba@gmail.com', '423424', 'https://thanglong.edu.vn', 'Trwowng dejp lem', NULL, NULL, 2, '2018-08-17 09:32:36', '2018-10-08 08:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `uec_science`
--

CREATE TABLE `uec_science` (
  `id` int(10) UNSIGNED NOT NULL,
  `science_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uec_science`
--

INSERT INTO `uec_science` (`id`, `science_name`, `created_at`, `updated_at`) VALUES
(1, 'Toán Tin', '2018-08-07 21:11:19', '2018-08-07 21:11:19'),
(2, 'Ngôn Ngữ', '2018-08-07 21:11:32', '2018-08-07 21:11:32'),
(3, 'Kinh tế - Quản lý', '2018-08-07 21:11:48', '2018-08-07 21:11:48'),
(4, 'Thanh Nhạc 2', '2018-08-07 21:11:59', '2018-08-07 23:49:09'),
(5, 'fsdsdas', '2018-08-08 02:09:17', '2018-08-13 07:31:21'),
(6, 'fsdf', '2018-09-26 03:52:38', '2018-09-26 03:52:38');

-- --------------------------------------------------------

--
-- Table structure for table `uec_skill`
--

CREATE TABLE `uec_skill` (
  `id` int(10) UNSIGNED NOT NULL,
  `skill_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skill_describe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skill_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uec_skill`
--

INSERT INTO `uec_skill` (`id`, `skill_name`, `skill_describe`, `skill_slug`, `created_at`, `updated_at`) VALUES
(1, 'junio', 'fdsfds', 'junio', '2018-09-03 07:40:06', '2018-09-03 07:40:06');

-- --------------------------------------------------------

--
-- Table structure for table `uec_specialize`
--

CREATE TABLE `uec_specialize` (
  `id` int(10) UNSIGNED NOT NULL,
  `specialize_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `science_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uec_specialize`
--

INSERT INTO `uec_specialize` (`id`, `specialize_name`, `science_id`, `created_at`, `updated_at`) VALUES
(1, 'Toán Ứng Dụng', 1, '2018-08-07 21:13:38', '2018-08-07 21:13:38'),
(2, 'Ngôn ngữ Anh', 2, '2018-08-07 21:27:44', '2018-08-07 21:27:44'),
(3, 'Nhạc Thiếu Nhi', 2, '2018-08-07 21:27:54', '2018-08-07 22:16:28'),
(4, 'Khoa Học Máy Tính', 1, '2018-08-07 21:28:04', '2018-08-07 21:28:04'),
(5, 'Truyền thông và mạng máy tính', 1, '2018-08-07 21:28:16', '2018-08-07 21:28:16'),
(6, 'Ngôn ngữ Nhật', 2, '2018-08-07 21:28:25', '2018-08-07 21:28:25'),
(7, 'b 2 2', 3, '2018-08-07 22:10:04', '2018-08-07 22:19:28'),
(8, 'Quản lý khách sạn', 3, '2018-08-07 22:50:15', '2018-08-07 22:50:15'),
(9, 'Ngôn ngữ Trung', 2, '2018-08-07 22:52:18', '2018-08-07 22:52:18'),
(10, 'a', 2, '2018-08-07 22:53:44', '2018-08-07 22:53:44'),
(11, 'as', 2, '2018-08-07 22:54:16', '2018-08-07 22:54:16'),
(13, 's', 2, '2018-08-07 22:58:21', '2018-08-07 22:58:21'),
(14, 's', 2, '2018-08-07 22:59:52', '2018-08-07 22:59:52'),
(15, 's', 1, '2018-08-07 23:00:33', '2018-08-07 23:00:33'),
(16, 'sf', 4, '2018-08-07 23:02:29', '2018-08-13 07:31:50'),
(17, 's', 3, '2018-08-07 23:02:43', '2018-08-13 07:31:58'),
(18, 'ass', 1, '2018-08-07 23:02:56', '2018-08-07 23:02:56'),
(20, 's', 3, '2018-08-07 23:05:12', '2018-08-07 23:05:12'),
(21, 'sf', 4, '2018-08-07 23:05:27', '2018-08-07 23:05:27'),
(22, 'd', 1, '2018-08-07 23:05:49', '2018-08-07 23:05:49');

-- --------------------------------------------------------

--
-- Table structure for table `uec_student`
--

CREATE TABLE `uec_student` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_birthday` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_gender` tinyint(4) DEFAULT NULL,
  `student_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialize_id` int(10) DEFAULT NULL,
  `course_id` int(10) DEFAULT NULL,
  `science_id` int(10) DEFAULT NULL,
  `student_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_class_only` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_head_teacher` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_home_town` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_employment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_employment_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_company_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_timeserving` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_company_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_tick` tinyint(1) DEFAULT NULL,
  `student_status` tinyint(4) DEFAULT NULL,
  `area_id` int(10) UNSIGNED DEFAULT NULL,
  `teacher_add_student` int(1) DEFAULT NULL,
  `student_nation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_distribution` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_number_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_so_bang` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_sendEmailforEnterprise` int(1) DEFAULT NULL,
  `student_receiveEmail` int(1) DEFAULT NULL,
  `student_addinUEC` int(1) DEFAULT NULL,
  `student_year_ourschool` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input_source` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uec_student`
--

INSERT INTO `uec_student` (`id`, `student_code`, `student_name`, `student_slug`, `student_img`, `student_birthday`, `student_gender`, `student_phone`, `student_email`, `specialize_id`, `course_id`, `science_id`, `student_class`, `student_class_only`, `student_head_teacher`, `student_address`, `student_home_town`, `student_employment_status`, `student_employment_name`, `student_company_position`, `student_company_name`, `student_timeserving`, `student_company_address`, `student_tick`, `student_status`, `area_id`, `teacher_add_student`, `student_nation`, `student_country`, `student_distribution`, `student_number_code`, `student_so_bang`, `student_sendEmailforEnterprise`, `student_receiveEmail`, `student_addinUEC`, `student_year_ourschool`, `input_source`, `created_at`, `updated_at`) VALUES
(5101, 'a432423423', 'fsdfdsf', 'fsdfdsf', '1538135619-979-can-canh-noi-thanh-sat-roi-de-chet-co-gai-di-duong-toa-nha--1--1538133322-width660height495.jpg', '2018-09-06', 1, '43242342', 'a@gmail.com', 1, 1, 1, 'fsdfsdf', NULL, 'fsdf', 'fdsf', NULL, NULL, 'fsdf', 'fsdf', 'fsdf', 'fdsf', 'fsd', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-27 07:18:14', '2018-10-08 09:35:45'),
(5102, 'A099888', 'Triệu Hải Anh', 'trieu-hai-anh', '1538135619-979-can-canh-noi-thanh-sat-roi-de-chet-co-gai-di-duong-toa-nha--1--1538133322-width660height495.jpg', NULL, 2, NULL, NULL, 1, 1, 1, 'TI27g1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-08 09:39:24'),
(5319, 'A09988', 'Phan Văn Cường', NULL, NULL, '2012-12-12 00:00:00', 1, '12312312', NULL, 1, NULL, 1, 'TM22', 'TC26g2', NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5321, 'A099881', 'Lê Văn Lượng', NULL, NULL, '2012-12-12 00:00:00', 1, '321312', NULL, 2, NULL, 3, 'TI27g1', 'TC26g2', NULL, NULL, 'Vĩnh Phúc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5322, 'A099882', 'Đỗ Mỹ Linh', NULL, NULL, '2012-12-12 00:00:00', 1, '312312312', NULL, 1, NULL, 1, 'TC26g2', 'TC26g2', NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5323, 'A099883', 'Nguyễn Thị Liên', NULL, NULL, '2012-12-12 00:00:00', 0, '312321', NULL, 1, NULL, 4, 'TC26g2', 'TC26g2', NULL, NULL, 'Vĩnh Phúc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5324, 'A099884', 'Bùi Phúc Long', 'bui-phuc-long', '1538135619-979-can-canh-noi-thanh-sat-roi-de-chet-co-gai-di-duong-toa-nha--1--1538133322-width660height495.jpg', NULL, 1, '3123213', NULL, 2, 1, 3, 'TI27g1', 'TC26g2', NULL, NULL, 'Vĩnh Phúc', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-08 09:39:15'),
(5325, 'A099885', 'Kim Nhật Anh', NULL, NULL, '2012-12-12 00:00:00', 0, '3213213', NULL, 1, NULL, 1, 'TC26g2', 'TC26g2', NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5326, 'A099886', 'Trương Đình Triểu', NULL, NULL, '2012-12-12 00:00:00', 1, '3213213', NULL, 1, NULL, 3, 'TI27g1', 'TC26g2', NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5327, 'A099887', 'Mã Ngọc Tú', NULL, NULL, '2012-12-12 00:00:00', 0, '3123123', NULL, 2, NULL, 2, 'TC26g2', 'TC26g2', NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5328, 'A099889', 'Đàm Như Ngọc', NULL, NULL, '2012-12-12 00:00:00', 1, '3123123', NULL, 3, NULL, 1, 'TI27g1', 'TC26g2', NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5329, 'A04598', 'Lê Xuân Minh', NULL, NULL, '1980-05-07 00:00:00', 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Phú Thọ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'TT1332', '1415758', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5330, 'A06517', 'Lại Thu Huyền', NULL, NULL, '1984-01-23 00:00:00', 2, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Trung bình', 'QL12321', '1415759', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5331, 'A08351', 'Vũ Hữu Trung', NULL, NULL, '1986-10-23 00:00:00', 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'TT1330', '1415760', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5332, 'A11324', 'Hứa Ngọc Huyền', NULL, NULL, '1988-07-05 00:00:00', 2, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12245', '1415761', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5333, 'A14378', 'Đoàn Đình Đảng', NULL, NULL, '1991-01-06 00:00:00', 1, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Yên Bái', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12280', '1415762', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5334, 'A15970', 'Đỗ Thị An', NULL, NULL, '1992-11-30 00:00:00', 2, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hưng Yên', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Trung bình', 'QL12320', '1415763', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5335, 'A16402', 'Nguyễn Thu Hằng', NULL, NULL, '1992-09-28 00:00:00', 2, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Hải Phòng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'TA1198', '229481', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5336, 'A18042', 'Nguyễn Hoàng Tú', NULL, NULL, '1992-11-29 00:00:00', 1, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Trung bình', 'QL12322', '1415764', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5337, 'A18124', 'Trần Văn Tiến', 'tran-van-tien', NULL, NULL, 1, NULL, NULL, 6, 1, 1, NULL, NULL, NULL, NULL, '1 Định', NULL, 'fsdf', 'fsdf', 'fdsf', NULL, NULL, 1, 1, 1, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12294', '1415765', NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-08 09:23:24'),
(5338, 'A18326', 'Nguyễn Thị Hậu', NULL, NULL, '1993-10-08 00:00:00', 2, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Bắc Ninh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12311', '1415766', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5339, 'A18663', 'Lê Minh Quang', NULL, NULL, '1993-10-30 00:00:00', 1, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12312', '1415767', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5340, 'A19038', 'Lê Hà Chi', NULL, NULL, '1993-12-03 00:00:00', 2, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'TN0347', '229482', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5341, 'A19126', 'Vũ Khánh Huyền', NULL, NULL, '1993-08-23 00:00:00', 2, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12295', '1415768', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5342, 'A19203', 'Đào Thị Tố Uyên', NULL, NULL, '1993-09-10 00:00:00', 2, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hải Dương', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12246', '1415769', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5343, 'A19339', 'Trần Diễm Quỳnh', NULL, NULL, '1993-12-26 00:00:00', 2, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'TA1199', '229483', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5344, 'A19402', 'Nguyễn Minh Thảo', NULL, NULL, '1993-10-24 00:00:00', 2, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12307', '1415770', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5345, 'A19571', 'Lê Minh Cường', NULL, NULL, '1993-05-06 00:00:00', 1, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12253', '1415771', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5346, 'A19597', 'Trần 1 Khánh', NULL, NULL, '1993-05-18 00:00:00', 1, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'TN0348', '229484', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5347, 'A19640', 'Phạm Thanh Duyên', NULL, NULL, '1992-11-04 00:00:00', 2, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12275', '1415772', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5348, 'A19647', 'Nguyễn Thị Diệu Linh', NULL, NULL, '1993-10-14 00:00:00', 2, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12318', '1415773', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5349, 'A19770', 'Phạm Thị Huyền Trang', NULL, NULL, '1993-08-18 00:00:00', 2, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '1 Định', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12289', '1415774', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5350, 'A19949', 'Nguyễn Hương Trà', NULL, NULL, '1993-05-14 00:00:00', 2, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Tây', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12290', '1415775', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5351, 'A19981', 'Nguyễn Thanh Tùng', NULL, NULL, '1993-05-27 00:00:00', 1, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Hải Dương', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12264', '1415776', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5352, 'A20017', 'Vũ Thị Quỳnh Anh', NULL, NULL, '1993-01-16 00:00:00', 2, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12300', '1415777', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5353, 'A20077', 'Nguyễn Thị Thư', NULL, NULL, '1993-02-12 00:00:00', 2, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Vĩnh Phúc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12247', '1415778', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5354, 'A20141', 'Nguyễn Mỹ Hằng', NULL, NULL, '1993-07-18 00:00:00', 2, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12319', '1415779', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5355, 'A20364', 'Lữ Thị Hòa', NULL, NULL, '1994-09-28 00:00:00', 2, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'Nghệ An', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Thái', 'Việt Nam', 'Khá', 'CX0252', '1415780', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5356, 'A20389', 'Nguyễn Phương Thúy', NULL, NULL, '1994-04-21 00:00:00', 2, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '1 Định', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Trung bình', 'QL12323', '1415781', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5357, 'A20496', 'Bùi Yến Nhi', NULL, NULL, '1994-12-12 00:00:00', 2, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12308', '1415782', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5358, 'A20502', 'Trương Bích Ngọc', NULL, NULL, '1994-10-27 00:00:00', 2, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'TA1180', '229485', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5359, 'A20545', 'Đỗ Thùy Trang', NULL, NULL, '1994-04-19 00:00:00', 2, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12301', '1415783', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5360, 'A20590', 'Đinh Công Tuấn', NULL, NULL, '1994-10-13 00:00:00', 1, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Ninh Bình', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12315', '1415784', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5361, 'A20592', 'Hoàng Trang Thu', NULL, NULL, '1994-01-04 00:00:00', 2, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Giỏi', 'TA1177', '229486', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5362, 'A20629', 'Tạ Đào Chinh', NULL, NULL, '1993-01-04 00:00:00', 2, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'Hòa Bình', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'TN0354', '229487', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5363, 'A20650', 'Lại Nguyệt Cầm', NULL, NULL, '1993-06-10 00:00:00', 2, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Liên bang Nga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'TA1191', '229488', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5364, 'A20750', 'Nguyễn Thanh Hải', NULL, NULL, '1994-10-12 00:00:00', 1, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Bắc Ninh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12265', '1415785', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5365, 'A20997', 'Nguyễn Hà My', NULL, NULL, '1994-03-07 00:00:00', 2, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Thái Bình', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12284', '1415786', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5366, 'A21015', 'Phạm Thị Trà My', NULL, NULL, '1994-03-21 00:00:00', 2, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12302', '1415787', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5367, 'A21102', 'Hoàng Bình Hậu', NULL, NULL, '1993-02-22 00:00:00', 2, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'TA1192', '229489', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5368, 'A21183', 'Vương Thiên Anh', NULL, NULL, '1994-06-11 00:00:00', 2, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12256', '1415789', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5369, 'A21274', 'Phạm Thu Hương', NULL, NULL, '1994-10-02 00:00:00', 2, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'NZ0122', '229490', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5370, 'A21298', 'Lê Anh Như', NULL, NULL, '1994-08-04 00:00:00', 2, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, 'Thanh Hóa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'TT1329', '1415790', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5371, 'A21350', 'Dương Thùy Linh', NULL, NULL, '1994-10-06 00:00:00', 2, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Bắc Giang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12248', '1415791', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5372, 'A21377', 'Trần Ngọc Đường', NULL, NULL, '1994-04-23 00:00:00', 1, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12316', '1415792', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5373, 'A21500', 'Lê Hoàng Hà', NULL, NULL, '1994-08-07 00:00:00', 2, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12313', '1415793', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5374, 'A21515', 'Đặng Thị Hương', NULL, NULL, '1993-01-30 00:00:00', 2, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'TA1186', '229491', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5375, 'A21627', 'Đặng Thị Thu Hằng', NULL, NULL, '1995-01-02 00:00:00', 2, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12266', '1415794', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5376, 'A21644', 'Trần Anh Dũng', NULL, NULL, '1994-08-25 00:00:00', 1, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12303', '1415795', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5377, 'A21681', 'Trần Hồng Minh', NULL, NULL, '1994-12-03 00:00:00', 2, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'TN0352', '229492', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5378, 'A21692', 'Hà Thanh Trung', NULL, NULL, '1994-11-26 00:00:00', 1, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12304', '1415796', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5379, 'A21754', 'Bùi Thị Thu Hằng', NULL, NULL, '1993-02-13 00:00:00', 2, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '1 Định', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12314', '1415797', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5380, 'A21771', 'Nguyễn Thị Thùy Dương', NULL, NULL, '1993-04-25 00:00:00', 2, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'TN0355', '229493', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5381, 'A21796', 'Nguyễn Thành Long', NULL, NULL, '1994-02-05 00:00:00', 1, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'TT1325', '1415798', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5382, 'A21816', 'Nguyễn Minh Ngọc', NULL, NULL, '1994-04-28 00:00:00', 2, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'XV0127', '1415799', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5383, 'A21848', 'Trần Thế Chung', NULL, NULL, '1994-12-05 00:00:00', 1, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12257', '1415800', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5384, 'A21876', 'Lưu Văn Linh', NULL, NULL, '1992-10-04 00:00:00', 1, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, '1 Định', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12291', '1415601', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5385, 'A21943', 'Nguyễn Thu Trang', NULL, NULL, '1994-09-26 00:00:00', 2, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12267', '1415602', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5386, 'A21966', 'Phạm Tuấn Anh', NULL, NULL, '1993-06-16 00:00:00', 1, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Thái Bình', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12317', '1415603', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5387, 'A21975', 'Nguyễn Thiên Thanh', NULL, NULL, '1994-10-13 00:00:00', 2, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12233', '1415604', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5388, 'A22083', 'Mai Xuân Anh', NULL, NULL, '1992-09-12 00:00:00', 1, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Huế', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12292', '1415605', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5389, 'A22109', 'Nguyễn Thị Hoa Trà', NULL, NULL, '1994-02-04 00:00:00', 2, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12276', '1415606', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5390, 'A22239', 'Nguyễn Hải Phượng', NULL, NULL, '1994-11-22 00:00:00', 2, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'Quảng Ninh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Giỏi', 'CX0248', '1415607', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5391, 'A22296', 'Dương Trung Kiên', NULL, NULL, '1995-05-15 00:00:00', 1, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Thanh Hoá', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12309', '1415608', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5392, 'A22299', 'Nguyễn Đức Bình', NULL, NULL, '1995-12-18 00:00:00', 1, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12258', '1415609', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5393, 'A22302', 'Đặng Vân Anh', NULL, NULL, '1995-03-08 00:00:00', 2, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, 'Thái Nguyên', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'XV0126', '1415610', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5394, 'A22326', 'Đào Bích Thủy', NULL, NULL, '1995-02-15 00:00:00', 2, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'TP Hồ Chí Minh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12281', '1415611', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5395, 'A22374', 'Ngô Phúc Thành', NULL, NULL, '1995-02-13 00:00:00', 1, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12241', '1415612', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5396, 'A22380', 'Nguyễn Đức Tú', NULL, NULL, '1995-01-13 00:00:00', 1, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12282', '1415613', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5397, 'A22428', 'Nguyễn Thanh Hải', NULL, NULL, '1995-05-10 00:00:00', 1, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'TA1195', '229494', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5398, 'A22472', 'Phạm Thu Trang', NULL, NULL, '1994-09-09 00:00:00', 2, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'TA1187', '229495', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5399, 'A22477', 'Nguyễn Anh Quân', NULL, NULL, '1995-08-13 00:00:00', 1, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12236', '1415614', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5400, 'A22483', 'Nguyễn Công Quyền', NULL, NULL, '1995-02-05 00:00:00', 1, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '1 Định', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12310', '1415615', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5401, 'A22523', 'Nguyễn Minh Đức', NULL, NULL, '1995-05-15 00:00:00', 1, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Xuất sắc', 'TA1174', '229496', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5402, 'A22531', 'Nguyễn Thị Hồng Hoa', NULL, NULL, '1995-11-27 00:00:00', 2, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, 'Vĩnh Phúc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'SP0158', '1415616', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5403, 'A22562', 'Nguyễn Thị Hà Thu', NULL, NULL, '1995-10-27 00:00:00', 2, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'TN0353', '229497', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5404, 'A22588', 'Nguyễn Ngọc Mai', NULL, NULL, '1995-01-03 00:00:00', 2, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'TN0349', '229498', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5405, 'A22589', 'Phạm Linh Chi', NULL, NULL, '1995-01-01 00:00:00', 2, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12296', '1415617', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5406, 'A22599', 'Nguyễn Ngọc Thúy', NULL, NULL, '1994-09-21 00:00:00', 2, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Phú Thọ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'TA1196', '229499', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5407, 'A22614', 'Lương Phương Thảo', NULL, NULL, '1995-07-21 00:00:00', 2, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Quảng Ninh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12259', '1415618', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5408, 'A22634', 'Nguyễn Ngọc Phương Thảo', NULL, NULL, '1995-12-17 00:00:00', 2, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Giỏi', 'TA1175', '229500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5409, 'A22663', 'Ngô Thái Hà', NULL, NULL, '1994-05-15 00:00:00', 2, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'TA1183', '229501', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5410, 'A22674', 'Nguyễn Thị Thanh Thúy', NULL, NULL, '1995-07-19 00:00:00', 2, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'Hải Phòng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'CX0251', '1415619', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5411, 'A22678', 'Trần Huyền Trang', NULL, NULL, '1995-09-23 00:00:00', 2, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'TN0351', '229502', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5412, 'A22685', 'Dương Linh Hương', NULL, NULL, '1995-11-17 00:00:00', 2, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12260', '1415620', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5413, 'A22718', 'Nguyễn Thị Bích Hồng', NULL, NULL, '1995-05-31 00:00:00', 2, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12261', '1415621', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5414, 'A22724', 'Vũ Đức Chinh', NULL, NULL, '1995-12-31 00:00:00', 1, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Tây', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'TT1326', '1415622', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5415, 'A22740', 'Nguyễn Thụy Thúy Vy', NULL, NULL, '1995-03-16 00:00:00', 2, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'TP Hồ Chí Minh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'TN0345', '229503', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5416, 'A22765', 'Đặng Hồng Nhung', NULL, NULL, '1995-03-16 00:00:00', 2, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12283', '1415623', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5417, 'A22793', 'Bạch Văn Hưng', NULL, NULL, '1995-11-21 00:00:00', 1, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'TT1331', '1415624', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5418, 'A22806', 'Nguyễn Yến Ly', NULL, NULL, '1995-05-09 00:00:00', 2, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12268', '1415625', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5419, 'A22808', 'Trần Chí Thành', NULL, NULL, '1995-09-04 00:00:00', 1, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'TA1184', '229504', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5420, 'A22825', 'Đỗ Linh Ngọc', NULL, NULL, '1995-12-30 00:00:00', 2, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12305', '1415626', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5421, 'A22828', 'Lê Hà Vân', NULL, NULL, '1995-12-08 00:00:00', 2, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'TA1188', '229505', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5422, 'A22831', 'Phí Hoàng Long', NULL, NULL, '1995-03-29 00:00:00', 1, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'SP0156', '1415627', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5423, 'A22845', 'Nguyễn Hương Ly', NULL, NULL, '1995-11-07 00:00:00', 2, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12269', '1415628', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5424, 'A22865', 'Trần Hùng Anh', NULL, NULL, '1995-01-25 00:00:00', 1, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Giỏi', 'TN0344', '229506', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5425, 'A22883', 'Nguyễn Đức Anh', NULL, NULL, '1993-07-17 00:00:00', 1, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12242', '1415629', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5426, 'A22899', 'Dương Thị Thu Uyên', NULL, NULL, '1995-01-08 00:00:00', 2, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'SN0363', '1415630', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5427, 'A22900', 'Đinh Thị Hồng Hạnh', NULL, NULL, '1995-07-12 00:00:00', 2, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'XV0125', '1415631', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5428, 'A22923', 'Phạm Thị Hồng Hạnh', NULL, NULL, '1995-06-12 00:00:00', 2, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'Quảng Ninh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Giỏi', 'TN0343', '229507', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5429, 'A22940', 'Nguyễn Thị Phương', NULL, NULL, '1995-09-05 00:00:00', 2, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hưng Yên', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12270', '1415632', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5430, 'A22954', 'Vũ Thị Minh Huế', NULL, NULL, '1995-06-02 00:00:00', 2, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, 'Tuyên Quang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'SN0368', '1415633', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5431, 'A23002', 'Nguyễn Lan Chi', NULL, NULL, '1995-12-25 00:00:00', 2, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12277', '1415634', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5432, 'A23040', 'Đỗ Hiền Phương', NULL, NULL, '1995-05-15 00:00:00', 2, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Khánh Hòa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'TA1193', '229508', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5433, 'A23046', 'Phạm Thu Thảo', NULL, NULL, '1995-04-20 00:00:00', 2, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'TN0350', '229509', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5434, 'A23071', 'Nguyễn Hương Giang', NULL, NULL, '1995-07-24 00:00:00', 2, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12278', '1415635', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5435, 'A23080', 'Thái Thị Minh Thúy', NULL, NULL, '1995-01-03 00:00:00', 2, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Nghệ An', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'TA1189', '229510', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5436, 'A23133', 'Phạm Minh Kiều', NULL, NULL, '1995-11-06 00:00:00', 2, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12271', '1415636', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5437, 'A23252', 'Trần Thị Thư', NULL, NULL, '1994-07-10 00:00:00', 2, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'TA1181', '229511', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5438, 'A23316', 'Đỗ Thu Hằng', NULL, NULL, '1995-12-27 00:00:00', 2, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Giang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12272', '1415637', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5439, 'A23324', 'Phạm Thị Thu Thanh', NULL, NULL, '1995-08-28 00:00:00', 2, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'SN0369', '1415638', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5440, 'A23328', 'Nguyễn Ngọc Quỳnh', NULL, NULL, '1995-08-06 00:00:00', 2, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, 'Thanh Hoá', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'SN0365', '1415639', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5441, 'A23341', 'Nguyễn Thị Huyền Trang', NULL, NULL, '1995-09-12 00:00:00', 2, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Phú Thọ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Giỏi', 'TA1176', '229512', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5442, 'A23368', 'Trần Ngọc Trung', NULL, NULL, '1995-01-08 00:00:00', 1, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12297', '1415640', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5443, 'A23423', 'Phan Thị Lan Anh', NULL, NULL, '1995-05-27 00:00:00', 2, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, 'Hưng Yên', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'SN0362', '1415641', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5444, 'A23435', 'Đặng Thị Dung', NULL, NULL, '1995-12-27 00:00:00', 2, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, 'Bắc Giang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'SN0370', '1415642', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5445, 'A23489', 'Phạm Thị Vân', NULL, NULL, '1995-01-12 00:00:00', 2, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'TA1185', '229513', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5446, 'A23499', 'Trần Hồng Ngọc', NULL, NULL, '1995-02-27 00:00:00', 2, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12243', '1415643', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5447, 'A23520', 'Lê Hương Giang', NULL, NULL, '1995-05-05 00:00:00', 2, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12279', '1415644', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5448, 'A23540', 'Phạm Mai Hải Yến', NULL, NULL, '1995-03-23 00:00:00', 2, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'NZ0123', '229214', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5449, 'A23575', 'Trần Quang Dũng', NULL, NULL, '1995-03-26 00:00:00', 1, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12286', '1415645', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5450, 'A23612', 'Lương Minh Tuấn', NULL, NULL, '1995-02-04 00:00:00', 1, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'Thái Bình', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'TT1327', '1415646', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5451, 'A23643', 'Nguyễn Thị Thu Phương', NULL, NULL, '1994-02-09 00:00:00', 2, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Bắc Giang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Knh', 'Việt Nam', 'Khá', 'QL12249', '1415647', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5452, 'A23660', 'Nguyễn Hồng Vân', NULL, NULL, '1995-08-27 00:00:00', 2, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12237', '1415648', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5453, 'A23721', 'Nguyễn Duy Thùy', NULL, NULL, '1995-02-15 00:00:00', 1, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, 'Điện Biên', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'SN0364', '1415649', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5454, 'A23729', 'Vũ Thảo Phương', NULL, NULL, '1995-07-31 00:00:00', 2, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'TA1194', '229215', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5455, 'A23734', 'Nguyễn Đức Huy', NULL, NULL, '1995-12-05 00:00:00', 1, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12287', '1415650', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5456, 'A23742', 'Đoàn Mạnh Cường', NULL, NULL, '1995-12-22 00:00:00', 1, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'Hưng Yên', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12288', '1415651', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5457, 'A23780', 'Hồ Anh Tú', NULL, NULL, '1995-12-13 00:00:00', 1, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12250', '1415652', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5458, 'A23817', 'Nguyễn Xuân Chung', NULL, NULL, '1995-05-31 00:00:00', 1, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'SN0366', '1415653', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5459, 'A23850', 'Nguyễn Ngọc Chi', NULL, NULL, '1995-07-16 00:00:00', 2, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'TA1182', '229216', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5460, 'A23910', 'Trần Thanh Hiền', NULL, NULL, '1995-02-27 00:00:00', 2, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12306', '1415654', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5461, 'A23923', 'Ngô Minh Đức', NULL, NULL, '1993-02-05 00:00:00', 1, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Ninh Bình', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12298', '1415655', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5462, 'A23924', 'Nguyễn Hồng Quân', NULL, NULL, '1995-09-23 00:00:00', 1, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, 'Hải Dương', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'SN0367', '1415656', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5463, 'A23950', 'Lương Duy Anh', NULL, NULL, '1995-06-10 00:00:00', 1, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12299', '1415657', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5464, 'A23954', 'Phạm Thị Ngọc Anh', NULL, NULL, '1995-05-03 00:00:00', 2, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'Bắc Giang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'CX0249', '1415658', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5465, 'A23973', 'Thân Thương Huyền', NULL, NULL, '1995-12-28 00:00:00', 2, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'SN0371', '1415659', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5466, 'A23985', 'Đỗ Văn Quang', NULL, NULL, '1995-02-20 00:00:00', 1, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'TT1328', '1415660', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5467, 'A24006', 'Nguyễn Đức Trung', NULL, NULL, '1995-03-12 00:00:00', 1, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'SN0372', '1415661', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5468, 'A24014', 'Hà Phan Anh', NULL, NULL, '1995-11-03 00:00:00', 1, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'TA1197', '229217', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5469, 'A24021', 'Đặng Đình Phong', NULL, NULL, '1995-05-19 00:00:00', 1, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'Hải Dương', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12273', '1415662', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5470, 'A24049', 'Dương Tuấn Anh', NULL, NULL, '1995-05-24 00:00:00', 1, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Lâm Đồng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'TA1178', '229218', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5471, 'A24095', 'Vũ Quang Huy', NULL, NULL, '1994-11-03 00:00:00', 1, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12251', '1415663', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5472, 'A24096', 'Hoàng Tiến Mạnh', NULL, NULL, '1995-02-17 00:00:00', 1, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12293', '1415664', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5473, 'A24104', 'Ngô Thu Trang', NULL, NULL, '1995-09-22 00:00:00', 2, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12274', '1415665', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5474, 'A24122', 'Nguyễn Thị Thúy Hằng', NULL, NULL, '1995-11-21 00:00:00', 2, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'TN0346', '229219', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5475, 'A24139', 'La Minh Đức', NULL, NULL, '1994-05-26 00:00:00', 1, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Giỏi', 'TN0342', '229220', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5476, 'A24142', 'Lê Trường Giang', NULL, NULL, '1994-03-27 00:00:00', 1, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, 'Thái Bình', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'SP0157', '1415666', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5477, 'A24281', 'Phạm Thị ánh Hằng', NULL, NULL, '1995-10-22 00:00:00', 2, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'SP0155', '1415689', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5478, 'A24283', 'Nguyễn Tuấn Anh', NULL, NULL, '1995-12-25 00:00:00', 1, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'CX0250', '1415667', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5479, 'A24307', 'Nguyễn Tất Lộc', NULL, NULL, '1996-04-19 00:00:00', 1, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, '1 Hà', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12244', '1415668', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5480, 'A24408', 'Hoàng Minh Trang', NULL, NULL, '1995-02-03 00:00:00', 2, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Xuất sắc', 'TA1173', '229221', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5481, 'A24468', 'Nguyễn Thu Hằng', NULL, NULL, '1996-08-12 00:00:00', 2, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Bắc Ninh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12254', '1415669', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5482, 'A24491', 'Trương Minh Ngọc', NULL, NULL, '1996-12-24 00:00:00', 2, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Xuất sắc', 'TA1172', '229222', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5483, 'A24531', 'Nguyễn Hồng Ngọc', NULL, NULL, '1996-03-30 00:00:00', 2, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'TA1179', '229223', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5484, 'A24639', 'Nguyễn Trà My', NULL, NULL, '1996-05-10 00:00:00', 2, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12231', '1415670', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5485, 'A24772', 'Lê Hà Phương', NULL, NULL, '1995-08-05 00:00:00', 2, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Xuất sắc', 'TN0341', '229224', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5486, 'A24802', 'Trần Phương Thu', NULL, NULL, '1996-07-26 00:00:00', 2, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Hòa Bình', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12238', '1415671', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5487, 'A24840', 'Nguyễn Trung Kiên', NULL, NULL, '1995-09-05 00:00:00', 1, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Thanh Hóa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12239', '1415672', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5488, 'A24926', 'Trần Tú Anh', NULL, NULL, '1996-12-09 00:00:00', 2, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Xuất sắc', 'QL12226', '1415673', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5489, 'A24992', 'Lê Thị Thu Trang', NULL, NULL, '1996-10-08 00:00:00', 2, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12234', '1415674', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uec_student` (`id`, `student_code`, `student_name`, `student_slug`, `student_img`, `student_birthday`, `student_gender`, `student_phone`, `student_email`, `specialize_id`, `course_id`, `science_id`, `student_class`, `student_class_only`, `student_head_teacher`, `student_address`, `student_home_town`, `student_employment_status`, `student_employment_name`, `student_company_position`, `student_company_name`, `student_timeserving`, `student_company_address`, `student_tick`, `student_status`, `area_id`, `teacher_add_student`, `student_nation`, `student_country`, `student_distribution`, `student_number_code`, `student_so_bang`, `student_sendEmailforEnterprise`, `student_receiveEmail`, `student_addinUEC`, `student_year_ourschool`, `input_source`, `created_at`, `updated_at`) VALUES
(5490, 'A24995', 'Trần Thị Thanh', NULL, NULL, '1994-10-16 00:00:00', 2, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Xuất sắc', 'QL12225', '1415675', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5491, 'A25018', 'Bùi Huy Hoàng', NULL, NULL, '1994-07-21 00:00:00', 1, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Giỏi', 'QL12227', '1415676', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5492, 'A25034', 'Nguyễn Diệp Anh', NULL, NULL, '1996-08-01 00:00:00', 2, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12262', '1415677', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5493, 'A25092', 'Nguyễn Thị Tuyết', NULL, NULL, '1996-01-16 00:00:00', 2, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Tây', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12230', '1415678', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5494, 'A25202', 'Trần Thị Lan Hương', NULL, NULL, '1996-12-14 00:00:00', 2, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Xuất sắc', 'TN0340', '229225', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5495, 'A25376', 'Trần Thị Hương Mai', NULL, NULL, '1996-12-23 00:00:00', 2, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12252', '1415679', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5496, 'A25406', 'Nguyễn Hồng Hạnh', NULL, NULL, '1996-03-04 00:00:00', 2, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Giỏi', 'QL12228', '1415680', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5497, 'A25408', 'Nguyễn Linh Trang', NULL, NULL, '1996-06-09 00:00:00', 2, NULL, NULL, 2, 3, 1, 'fdsf', NULL, 'fdsf', 'fsdf', 'Hà Nội', '1', 'Lập trình web', 'nhân viên', 'abc', '3 tháng', '12 nguyễn Thi', NULL, 1, 2, NULL, 'Kinh', 'Việt Nam', 'Giỏi', 'QL12229', '1415681', NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-06 06:59:51'),
(5498, 'A25435', 'Phạm Thị Linh Chi', NULL, NULL, '1996-03-03 00:00:00', 2, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Tây', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12240', '1415682', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5499, 'A25762', 'Trần Hải Đăng', NULL, NULL, '1996-06-25 00:00:00', 1, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, '1 Định', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12263', '1415683', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5500, 'A25803', 'Ngô Hoàng Tùng', NULL, NULL, '1996-10-26 00:00:00', 1, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12255', '1415684', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5501, 'A25874', 'Nguyễn Thu Hương', NULL, NULL, '1996-10-26 00:00:00', 2, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Quảng Ninh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12232', '1415685', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5502, 'A25913', 'Phan Thị Hoa', NULL, NULL, '1994-06-05 00:00:00', 2, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'Nghệ An', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'QL12285', '1415686', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5503, 'A25955', 'Vũ Thị Minh Thúy', NULL, NULL, '1995-07-31 00:00:00', 2, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Phú Yên', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'QL12235', '1415687', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5504, 'A26167', 'Nguyễn Đại Dương', NULL, NULL, '1996-08-09 00:00:00', 1, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'Khá', 'TT1324', '1415688', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5505, 'A26174', 'Nguyễn Thị Loan', NULL, NULL, '1996-10-17 00:00:00', 2, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Quảng Ninh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Kinh', 'Việt Nam', 'T.B.Khá', 'TA1190', '229226', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5506, 'a1231231231', 'Trần Phương nam', NULL, NULL, NULL, 1, '324324324', 'f@gmail.com', 5, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, '2018-10-05 01:01:09', '2018-10-05 01:01:09');

-- --------------------------------------------------------

--
-- Table structure for table `uec_teacher`
--

CREATE TABLE `uec_teacher` (
  `id` int(10) UNSIGNED NOT NULL,
  `teacher_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_birthday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `science_id` int(10) DEFAULT NULL,
  `teacher_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_tick` tinyint(1) DEFAULT NULL,
  `teacher_status` tinyint(4) DEFAULT NULL,
  `area_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uec_teacher`
--

INSERT INTO `uec_teacher` (`id`, `teacher_name`, `teacher_slug`, `teacher_img`, `teacher_birthday`, `teacher_email`, `teacher_phone`, `science_id`, `teacher_address`, `teacher_tick`, `teacher_status`, `area_id`, `created_at`, `updated_at`) VALUES
(1, 'aadf', 'aadf', '1538135619-979-can-canh-noi-thanh-sat-roi-de-chet-co-gai-di-duong-toa-nha--1--1538133322-width660height495.jpg', '2018-10-27', 's@gmail.com', '234324', 1, 'fdsf', NULL, NULL, 1, '2018-08-17 09:56:03', '2018-10-08 07:36:14'),
(2, 'aaaaaaaaa', 'aaaaaaaaa', 'guy_anime_computer_tears_sadness_room_96990_300x168.jpg', '2018/01/01', 'as@gmail.com', '323333', 3, 'fd', NULL, NULL, 1, '2018-08-18 20:26:44', '2018-08-18 20:26:44'),
(3, 'Đỗ Mỹ Hạnh', 'do-my-hanh', NULL, '2013-12-12 00:00:00', 'dmh@gmail.com', '98767876', 1, '12 Kim Giang', NULL, NULL, 1, NULL, NULL),
(4, 'Đỗ Thị Nguyên', 'do-thi-nguyen', 'tulips_flowers_different_cat_bench_25488_300x168.jpg', '2018-10-06', 'dtn@gmail.com', '5345345', 1, '43 Nguyễn Trãi', NULL, NULL, 2, '2018-10-08 07:59:08', '2018-10-08 07:59:08');

-- --------------------------------------------------------

--
-- Table structure for table `uec_towardbusiness`
--

CREATE TABLE `uec_towardbusiness` (
  `id` int(10) UNSIGNED NOT NULL,
  `towardbusiness_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `towardbusiness_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `towardbusiness_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `towardbusiness_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `towardbusiness_status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uec_towardbusiness`
--

INSERT INTO `uec_towardbusiness` (`id`, `towardbusiness_name`, `towardbusiness_slug`, `towardbusiness_img`, `towardbusiness_content`, `towardbusiness_status`, `created_at`, `updated_at`) VALUES
(1, 'HƯỚNG VỀ DOANH NGHIỆP', 'huong-ve-doanh-nghiep', '1538135619-979-can-canh-noi-thanh-sat-roi-de-chet-co-gai-di-duong-toa-nha--1--1538133322-width660height495.jpg', '<p>Trung t&acirc;m Kết nối Đại học-Doanh nghiệp của Trường Đại Học Thăng Long (UEC-TLU) l&agrave; một đơn vị được Trường Đại Học hăng Long th&agrave;nh lập theo quyết định 05/QĐHĐQT-ĐHTL, ng&agrave;y 01 th&aacute;ng 03 năm 2017, do GS Ho&agrave;ng Xu&acirc;n S&iacute;nh, chủ tịch Hội đồng Quản trị, đ&atilde; k&yacute;.</p>\r\n\r\n<p>Trung t&acirc;m c&oacute; nhiệm vụ tăng cường mỗi quan hệ hợp t&aacute;c giữa Trường Đại Học Thăng Long với doanh nghiệp Việt Nam v&agrave; nước ngo&agrave;i, nhằm ph&aacute;t triển những kỹ năng l&agrave;m việc v&agrave; kỹ năng t&igrave;m việc l&agrave;m của sinh vi&ecirc;n Trường Đại Học Thăng Long, g&oacute;p phần cho sự ph&aacute;t triển th&ocirc;ng minh v&agrave; bền vững của x&atilde; hội Việt Nam.</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i mong muốn được kết nối với c&aacute;c doanh nghiệp, đặc biệt l&agrave; cựu sinh vi&ecirc;n của Trường ĐH Thăng Long, nhằm tạo điều kiện cho sinh vi&ecirc;n của Trường t&igrave;m được một nơi thực tập, s&aacute;t với thực tế l&agrave;m việc trong ng&agrave;nh, v&agrave; nhận được sự đ&oacute;ng g&oacute;p của c&aacute;c doanh nghiệp trong việc cải tiến nội dung đ&agrave;o tạo trở n&ecirc;n thiết thực hơn.</p>\r\n\r\n<p><strong>Để t&igrave;m hiểu th&ecirc;m:</strong></p>\r\n\r\n<ul>\r\n	<li><a href=\"http://uec.local:8888/public/Layout/Frontend/#\">Đọc thư ngỏ hướng về c&aacute;c doanh nh&acirc;n</a></li>\r\n	<li><a href=\"http://uec.local:8888/public/Layout/Frontend/#\">Tải flyer giới thiệu Trung t&acirc;m UEC-TLU</a></li>\r\n	<li>Tải t&agrave;i liệu giới thiệu c&aacute;c ng&agrave;nh đ&agrave;o tạo của Trường Đại Học Thăng Long do&nbsp;<a href=\"http://uec.local:8888/public/Layout/Frontend/#\">sinh vi&ecirc;n CLB BOSS</a>&nbsp;v&agrave; Trung t&acirc;m UEC-TLU thực hiện (<a href=\"http://uec.local:8888/public/Layout/Frontend/#\">Gioi-Thieu-Dai-hoc-Thang-Long-UEC</a>, PDF 3,5 MB).</li>\r\n	<li>Tham khảo bản quyết định th&agrave;nh lập TTKNĐHDN-ĐHTL :&nbsp;<a href=\"http://uec.local:8888/public/Layout/Frontend/#\">QD-TTKNDHDN</a></li>\r\n</ul>', NULL, '2018-08-13 11:02:10', '2018-10-07 05:20:57');

-- --------------------------------------------------------

--
-- Table structure for table `uec_training`
--

CREATE TABLE `uec_training` (
  `id` int(10) UNSIGNED NOT NULL,
  `training_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `training_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `training_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `training_amount_student` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `training_timeserving` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `training_deadline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `training_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `training_describe` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `training_tick` tinyint(1) DEFAULT NULL,
  `training_status` tinyint(4) DEFAULT NULL,
  `area_id` int(10) UNSIGNED NOT NULL,
  `skill_id` int(10) UNSIGNED NOT NULL,
  `enterprise_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uec_training`
--

INSERT INTO `uec_training` (`id`, `training_name`, `training_slug`, `training_img`, `training_amount_student`, `training_timeserving`, `training_deadline`, `training_address`, `training_describe`, `training_tick`, `training_status`, `area_id`, `skill_id`, `enterprise_id`, `created_at`, `updated_at`) VALUES
(1, 'aaaaaaaaa', 'aaaaaaaaa', 'forza_horizon_2_racing_2014_playground_games_turn_10_studios_100194_1280x720.jpg', 'fsdf', 'fdsfs', '2018-09-09', 'fdsf', 'fdsf', NULL, NULL, 2, 1, 1, '2018-09-04 10:08:19', '2018-09-17 08:23:48'),
(2, 'Lập trình java', 'lap-trinh-java', 'dota_2_shadow_fiend_art_dark_111921_300x168.jpg', '20', '3 tháng', '2018-09-16', '123 Nguyễn Thị Giang, Thành Đô', 'Học để biết, ak', NULL, NULL, 2, 1, 2, '2018-09-06 02:58:28', '2018-09-06 02:58:53'),
(3, 'Lập trình .NET cho người bắt đầu', 'lap-trinh-net-cho-nguoi-bat-dau', 'flowers_bush_greenhouse_115817_300x168.jpg', '2', '3', '2018-09-13', '123 Nguyễn Trãi', '3 tháng làm được bài tập về nhà', NULL, NULL, 2, 1, 38, '2018-09-13 18:42:15', '2018-09-13 18:42:15'),
(4, 'Lập trình React', 'lap-trinh-react', 'dota_2_shadow_fiend_art_dark_111921_300x168.jpg', '2', '4', '2018-09-16', '12 Nguyễn Xiển', 'Làm demo', NULL, NULL, 2, 1, 38, '2018-09-13 18:46:47', '2018-09-13 18:46:47'),
(5, 'Lập trình Hệ thống', 'lap-trinh-he-thong', 'flowers_bush_greenhouse_115817_300x168.jpg', '2', '3', '2018-09-14', '1 Nguyễn Thái', 'Demo 2', NULL, NULL, 2, 1, 4, '2018-09-13 18:49:13', '2018-10-05 23:12:29'),
(6, 'Lap ke hoach2', 'lap-ke-hoach2', 'flowers_bush_greenhouse_115817_300x168.jpg', '2', '3', '2018-09-28', '3 yeen binh', 'fdsfdsfsdfsd', NULL, NULL, 2, 1, 4, '2018-09-15 02:59:39', '2018-09-16 05:04:41'),
(7, 'Lập trình Node js', 'lap-trinh-node-js', 'need_for_speed_rivals_lamborghini_veneno_dodge_srt_viper_maserati_granturismo_mc_stradale_93935_300x168.jpg', '12', '6 tháng', '2018-10-28', '12 kim giang', 'Học để đi làm', NULL, NULL, 2, 1, 4, '2018-10-05 23:13:54', '2018-10-05 23:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `uec_training_student`
--

CREATE TABLE `uec_training_student` (
  `id` int(10) NOT NULL,
  `training_id` int(10) DEFAULT NULL,
  `student_id` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `status_save` int(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uec_training_student`
--

INSERT INTO `uec_training_student` (`id`, `training_id`, `student_id`, `status`, `status_save`, `created_at`, `updated_at`) VALUES
(13, 1, 11, 1, 1, '2018-09-18 07:13:00', '2018-09-18 07:13:15'),
(15, 5, 11, 1, 1, '2018-09-18 07:15:25', '2018-09-18 07:16:12');

-- --------------------------------------------------------

--
-- Table structure for table `uec_user`
--

CREATE TABLE `uec_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_mail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_level` tinyint(4) NOT NULL,
  `enterprise_id` int(10) UNSIGNED DEFAULT NULL,
  `teacher_id` int(10) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uec_user`
--

INSERT INTO `uec_user` (`id`, `user_name`, `password`, `user_full_name`, `user_phone`, `user_mail`, `user_address`, `user_level`, `enterprise_id`, `teacher_id`, `student_id`, `school_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Christa Herman', '$2y$10$U7I4WKhTCgOtsXCqRx7l1O45bWR4p62lRpFX30pu3WE2C07qxLOEC', NULL, '(542) 224-9011 x77877', 'beatty.eve@hotmail.com', '33954 Esteban Villages Apt. 778\nEast Heleneside, KS 44310-1737', 1, NULL, NULL, NULL, NULL, 'FkhxJg80TH', NULL, NULL),
(4, 'Mr. Salvatore Boyer I', '$2y$10$xG7tjnCy.DpEPBjPQCoQRutIWOKmlFUTun486hbp98jQt2EmLHVyO', NULL, '+1 (959) 916-6138', 'devonte44@nicolas.com', '69324 Elisabeth Island\nJamisonshire, UT 62962-3489', 1, NULL, NULL, NULL, NULL, 'CtME1gy3IS', NULL, NULL),
(5, 'Ernie Lowe', '$2y$10$509fupNHdVNa8L8V/uEjEelv5vNXVd20YQhiD7QRTToTNcWFRX9ja', NULL, '641.437.8758', 'ashly86@armstrong.com', '3607 Kaycee Road\nNorth Bethany, CT 89642', 1, NULL, NULL, NULL, NULL, 'B6bfydUFXm', NULL, NULL),
(6, 'Mr. Oren Collins', '$2y$10$7UWCnwBuOgO0Y/XVNCpdae07bEtsjCcIDG./BLbI68mCU6w/d51xC', NULL, '(460) 269-6478 x8549', 'shields.melody@yahoo.com', '960 Howell Ports\nLake Abdul, TN 82363-1174', 1, NULL, NULL, NULL, NULL, 'KV3vplI1gj', NULL, NULL),
(7, 'Henriette Fadel', '$2y$10$7pSvFWDzMzci25o8F0es9eesO3ssbonwJ/ldK3b3a0JoSz1e7B7vW', NULL, '528.600.9263', 'cummerata.eusebio@stark.net', '86521 Runte Spur Apt. 495\nSouth Shaniaside, DE 53749', 1, NULL, NULL, NULL, NULL, '8puuB7Tw0H', NULL, NULL),
(8, 'Paris Padberg', '$2y$10$BjWod4OMJbwqGmqa.WpuweY2EqE5rcJhw228ZOdB76cufUIPE9Lp.', NULL, '441.234.7078 x29359', 'antonina.collier@steuber.org', '2175 Zechariah Inlet Suite 503\nLazaroview, RI 12497', 1, NULL, NULL, NULL, NULL, 'CWeZ2X5cFq', NULL, NULL),
(9, 'Alexzander Purdy', '$2y$10$cv4kB8P8xxDZahQVZKDFx.pBlbJ.6uKIreqILJxdiVx3hbQKnjy7G', NULL, '669.962.6704 x308', 'darrin54@hotmail.com', '4109 Abbott Mountains Suite 440\nAgustinfort, NH 16082-4061', 1, NULL, NULL, NULL, NULL, 'HQhLh6l5CX', NULL, NULL),
(10, 'Cleora Heller', '$2y$10$nfWk19YQAvvoOPvzc0cCDeE/r6P2h.6KipvVGZckU/TCJXJf182Lu', NULL, '+1-984-788-9483', 'loma.koch@hotmail.com', '55524 Grace Estate\nNorth Theronview, CA 83634-4637', 1, NULL, NULL, NULL, NULL, 'VPmf5CNVWo', NULL, NULL),
(11, 'Bettie Barrows MD', '$2y$10$q9c0J5wofA689RGVc..g8uYGUdAgObz.plBn9f26Kck9BcJ37HQRy', NULL, '753-930-0690', 'tillman.clotilde@hotmail.com', '513 Friesen Lodge\nWolfside, VA 64497-1552', 1, NULL, NULL, NULL, NULL, 'WMECZlwGmx', NULL, NULL),
(12, 'A123456', '$2y$10$0u6Btgt7/j1x0xHw05KWZuW6Q8o3MmV8p7WjM0PmHnCN3BZgzFvAe', NULL, '01654524503', 'phuongnam250196@gmail.com', '250 Kim Giang', 1, NULL, NULL, NULL, NULL, 'E6bHU9sASAvlUXBeFIwzAvZET6G659qNHPe6nFOR3TEtT5P21ktndRgDVgDm', NULL, NULL),
(17, 'a2222', '$2y$10$ypM9KS1ISXX9hTI3BVKQSO4R4UShlReGMgcxO2JQJcoFjsagayubm', NULL, NULL, NULL, NULL, 2, 3, NULL, NULL, NULL, NULL, '2018-08-19 07:57:43', '2018-08-19 07:57:43'),
(19, 'a123456789', '$2y$10$azuHSc.2QEf2LOcg0Vr7GebL8tlokC00Oqt5ilq1PJxgMiBUER27m', NULL, NULL, NULL, NULL, 2, 2, NULL, NULL, NULL, 'F0lnrQcXrvrtYGAN7R2bVS0rZVmlp1luVvLotpdkHw5RbgQQIyj5ybwJnZnu', '2018-08-19 08:12:08', '2018-08-19 08:12:08'),
(20, 'gv123456', '$2y$10$qLNZdmq0CTrulb8y92lHTucFgLmrURWH5vtX11oM9hLi9u/RvEzmK', NULL, NULL, NULL, NULL, 4, NULL, 1, NULL, NULL, 'zkBPC5fd8lNXSBoJFEErkphIrAjyl0enz9h5xbssQdnbQYzR61bhERXw4mKu', '2018-08-19 09:12:42', '2018-09-24 07:14:10'),
(24, 'A08102', '$2y$10$I/Qm3YTZsSE9gGMkUavIDu0tnEvC.oCh01H4p614lRkAFgTb9sBKW', NULL, NULL, NULL, NULL, 5, NULL, NULL, 2, NULL, NULL, '2018-09-07 10:02:58', '2018-09-07 10:02:58'),
(26, 'A08121', '$2y$10$jar8dYPa3OX7HbSJi3NeVu06v.fzoFi/UXTcXHcRS/8AG9cvXsSzO', NULL, NULL, NULL, NULL, 5, NULL, NULL, 5, NULL, NULL, '2018-09-07 10:04:45', '2018-09-07 10:04:45'),
(28, 'A08117', '$2y$10$rFeM9i0J27QXbT0G47kj3.c0CkxRbXBjISqdoUk6J6sjDZbZlHZOy', NULL, NULL, NULL, NULL, 5, NULL, NULL, 4, NULL, NULL, '2018-09-07 10:13:45', '2018-09-07 10:13:45'),
(30, 'A08143', '$2y$10$uluZ774zCRPn5hJ.8hSSmOzWho.lwoVHp346gxQqXtmmVg3QrHtmq', NULL, NULL, NULL, NULL, 5, NULL, NULL, 7, NULL, '6UNh1gA7tB51eq2VBxn4ZRjkdsR5RBRgdQVUIk4hyqTRFB1ZA3UMzbnEZoPH', '2018-09-07 10:14:44', '2018-09-07 10:14:44'),
(32, 'A08145', '$2y$10$HrBoUQflyobyEN9frhyVgewTEMWPe/ticm29n8MUcCCKTU9BCzFi.', NULL, NULL, NULL, NULL, 5, NULL, NULL, 8, NULL, NULL, '2018-09-07 10:19:28', '2018-09-07 10:19:28'),
(35, 'A08196', '$2y$10$qlSnXElluN.x0EZh./gSaej01Pwwdv6FKRq4vjyTPq1YScgXd5BnC', NULL, NULL, NULL, NULL, 5, NULL, NULL, 12, NULL, 'KSovpOhVodDmLcFpQoROTOygZ4WEcbocuGJaSqPj0EqHjfyJMss47eoDPw1O', '2018-09-07 23:10:48', '2018-09-07 23:10:48'),
(36, 'A08188', '$2y$10$MWYBb.T.bQ/f2WfNmwkKpeJNmMzMPjCqLbCuJBuH6cK7UvOY9litK', NULL, NULL, NULL, NULL, 5, NULL, NULL, 11, NULL, 'jK3jI1miipjkyxCZzetWcOm35ICcoAonkclSpDCWfX15OMo8FVeh5eRkRsN6', '2018-09-07 23:14:49', '2018-09-07 23:59:36'),
(37, 'A08268', '$2y$10$fAvrauYeynX6dSM1DYXfeuNueogA5Ls5ktqrPXun.VjDWUnq3nFci', NULL, NULL, NULL, NULL, 5, NULL, NULL, 17, NULL, 'duaEsk8xgZu9b5LkNtoy1avhNUV1zHnevKGl9l060WHEOY60Um7bZExYbQQr', '2018-09-13 09:04:31', '2018-09-13 09:04:31'),
(39, 'abc', '$2y$10$WLhcRQZzBhP/RrYn2hJSaOADRYSNCewxcB.BxzohyBCXHkeS1ff4W', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 123123, NULL, '2018-09-25 09:18:21', '2018-09-25 09:18:21'),
(40, 'sdf', '$2y$10$6uOlO4CK2pMtoFj9th0G1uhRkTrJyzodeaw27XhbqELjhtj9/H8kK', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, '2018-09-25 09:19:32', '2018-09-25 09:19:32'),
(41, 'faaaaaaaaaaa', '$2y$10$V7gJ16hAWvi8Kh2qOmq/HeIRXk7AGrJwpMty2KikDurUHmFve.5JC', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, '2018-09-25 09:20:06', '2018-09-25 09:20:06'),
(42, 'dfdsfsd', '$2y$10$pyq08BhuRvvSDIFHh6fSre75GT1PyTRegLmJ8dFNunv8LcsZJu.lW', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 1, NULL, '2018-09-25 09:20:43', '2018-09-25 09:20:43'),
(43, 'aaaaaaaaaa', '$2y$10$NaeMTyeYYkHjTytmrU.4f.wHKOzUaA9wEaYZ.lRuN3hRh/BYroJhy', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 1, NULL, '2018-09-25 09:22:10', '2018-09-25 09:22:10'),
(44, 'pdt123', '$2y$10$wxb2DOG2ijaWa3vnciAFw.cZIDj0iJc2SrjENDLQ1dVU1Rforhxku', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 1, 'Q241uNcroNylkbUkTzbiyJZquZ4Cis9E9UnlWAhwtJRCUv4QzRQ9Q1Msqi14', '2018-09-26 04:03:22', '2018-09-26 04:45:14'),
(45, 'a432423423', '$2y$10$fHp1EspCg9N9fLbz7Rh7E.38KShXfX1sbVJ1/9QRsyCuK1VTAPoim', NULL, NULL, NULL, NULL, 5, NULL, NULL, 5101, NULL, 'MJvDNMJTacIVByxSeqaFDgdVcxQQxv4YYEFarCWTtj2vJinnnWIF9qxRVgYx', '2018-09-27 07:18:40', '2018-09-27 07:18:40'),
(46, 'A25408', '$2y$10$JRflsDremZUF5teZfemjfeOW0dDjRM/PEOutX/cTzjdjC3.tsKGQ.', NULL, NULL, NULL, NULL, 5, NULL, NULL, 5497, NULL, 'yvuwXU2xou9o5t143d1TaBUQFGK6MjOngriIdIOwjngmbK3DtocHHZgOQSYz', '2018-10-05 03:20:37', '2018-10-06 06:03:05'),
(49, 'gv01', '$2y$10$g2J1x8e9FJuI7faB7gl7QegwFZU/rM/XCUWLXC3LKm4VbzK8ztvzy', NULL, NULL, NULL, NULL, 4, NULL, 2, NULL, NULL, NULL, '2018-10-07 08:01:26', '2018-10-07 08:01:26'),
(50, 'dn01', '$2y$10$hwG/VLxZ.QQoRkVcPWm.MOE/lowOCqeGeMjifUnruIkO2OT2sHgBW', NULL, NULL, NULL, NULL, 2, 3, NULL, NULL, NULL, NULL, '2018-10-07 21:07:02', '2018-10-07 21:07:02'),
(51, 'dn02', '$2y$10$p3Cg0SqkrW82SdcvEfKB0eQEBxr2JP43AblErb.yMU/geGW8gHPmy', NULL, NULL, NULL, NULL, 2, 2, NULL, NULL, NULL, NULL, '2018-10-07 21:07:15', '2018-10-07 21:07:15'),
(52, 'dn03', '$2y$10$/hQbbbgb2INqydymjR42FuCT6i91JGDFUf3BuPZgbixPzr3d3jZyK', NULL, NULL, NULL, NULL, 2, 3, NULL, NULL, NULL, NULL, '2018-10-07 21:07:27', '2018-10-07 21:07:27'),
(53, 'àdsfs', '$2y$10$o7bID6LbmCYdMbcuK/xR4OlC476Gr92zMxrFVq8oURg0bRqHM9RpO', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, '2018-10-07 21:08:13', '2018-10-07 21:08:13'),
(54, 'fsdf', '$2y$10$iCEzLLRpWwH/8avqMxyWwulmJSY4BgcX7txv309FFouRuctvN2956', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, '2018-10-07 21:08:46', '2018-10-07 21:08:46');

-- --------------------------------------------------------

--
-- Table structure for table `uec_yearofexp`
--

CREATE TABLE `uec_yearofexp` (
  `id` int(10) UNSIGNED NOT NULL,
  `yearofexp_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yearofexp_describe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yearofexp_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uec_yearofexp`
--

INSERT INTO `uec_yearofexp` (`id`, `yearofexp_name`, `yearofexp_describe`, `yearofexp_slug`, `created_at`, `updated_at`) VALUES
(1, 'gfdg', 'gfdg', 'gfdg', '2018-08-18 20:02:53', '2018-08-18 20:02:53'),
(2, 'Trên 2 năm', 'kdsjfls', 'tren-2-nam', '2018-09-01 03:12:36', '2018-09-01 03:12:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uec_area`
--
ALTER TABLE `uec_area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uec_career`
--
ALTER TABLE `uec_career`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uec_careerorientation`
--
ALTER TABLE `uec_careerorientation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uec_course`
--
ALTER TABLE `uec_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uec_education`
--
ALTER TABLE `uec_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uec_enterprises`
--
ALTER TABLE `uec_enterprises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uec_formality`
--
ALTER TABLE `uec_formality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uec_infostudent`
--
ALTER TABLE `uec_infostudent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uec_introuec`
--
ALTER TABLE `uec_introuec`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uec_jobapplication`
--
ALTER TABLE `uec_jobapplication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uec_jobapp_recruitment`
--
ALTER TABLE `uec_jobapp_recruitment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uec_jobfair`
--
ALTER TABLE `uec_jobfair`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uec_news`
--
ALTER TABLE `uec_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uec_position`
--
ALTER TABLE `uec_position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uec_post`
--
ALTER TABLE `uec_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uec_recruitment`
--
ALTER TABLE `uec_recruitment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uec_school`
--
ALTER TABLE `uec_school`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uec_science`
--
ALTER TABLE `uec_science`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uec_skill`
--
ALTER TABLE `uec_skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uec_specialize`
--
ALTER TABLE `uec_specialize`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uec_student`
--
ALTER TABLE `uec_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uec_teacher`
--
ALTER TABLE `uec_teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uec_towardbusiness`
--
ALTER TABLE `uec_towardbusiness`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uec_training`
--
ALTER TABLE `uec_training`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uec_training_student`
--
ALTER TABLE `uec_training_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uec_user`
--
ALTER TABLE `uec_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uec_yearofexp`
--
ALTER TABLE `uec_yearofexp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `uec_area`
--
ALTER TABLE `uec_area`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uec_career`
--
ALTER TABLE `uec_career`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uec_careerorientation`
--
ALTER TABLE `uec_careerorientation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `uec_course`
--
ALTER TABLE `uec_course`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `uec_education`
--
ALTER TABLE `uec_education`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uec_enterprises`
--
ALTER TABLE `uec_enterprises`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `uec_formality`
--
ALTER TABLE `uec_formality`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uec_infostudent`
--
ALTER TABLE `uec_infostudent`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uec_introuec`
--
ALTER TABLE `uec_introuec`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `uec_jobapplication`
--
ALTER TABLE `uec_jobapplication`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `uec_jobapp_recruitment`
--
ALTER TABLE `uec_jobapp_recruitment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `uec_jobfair`
--
ALTER TABLE `uec_jobfair`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `uec_news`
--
ALTER TABLE `uec_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `uec_position`
--
ALTER TABLE `uec_position`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uec_post`
--
ALTER TABLE `uec_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uec_recruitment`
--
ALTER TABLE `uec_recruitment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `uec_school`
--
ALTER TABLE `uec_school`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uec_science`
--
ALTER TABLE `uec_science`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `uec_skill`
--
ALTER TABLE `uec_skill`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uec_specialize`
--
ALTER TABLE `uec_specialize`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `uec_student`
--
ALTER TABLE `uec_student`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5507;

--
-- AUTO_INCREMENT for table `uec_teacher`
--
ALTER TABLE `uec_teacher`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `uec_towardbusiness`
--
ALTER TABLE `uec_towardbusiness`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uec_training`
--
ALTER TABLE `uec_training`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `uec_training_student`
--
ALTER TABLE `uec_training_student`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `uec_user`
--
ALTER TABLE `uec_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `uec_yearofexp`
--
ALTER TABLE `uec_yearofexp`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
