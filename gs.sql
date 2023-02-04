-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-02-04 05:27:09
-- サーバのバージョン： 10.4.27-MariaDB
-- PHP のバージョン: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `menu_table`
--

CREATE TABLE `menu_table` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(128) NOT NULL,
  `menu_price` int(11) NOT NULL,
  `calories` int(11) NOT NULL,
  `fat` decimal(3,1) NOT NULL,
  `cholesterol` decimal(3,1) NOT NULL,
  `carbohydrates` decimal(3,1) NOT NULL,
  `protein` decimal(3,1) NOT NULL,
  `vitamin` decimal(3,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `menu_table`
--

INSERT INTO `menu_table` (`menu_id`, `menu_name`, `menu_price`, `calories`, `fat`, `cholesterol`, `carbohydrates`, `protein`, `vitamin`) VALUES
(1, 'Lunch Set A', 900, 645, '26.7', '30.3', '9.1', '15.9', '18.0'),
(2, 'Lunch Set B', 1100, 733, '32.3', '29.7', '14.2', '4.5', '19.3'),
(3, 'Lunch Set C', 1300, 902, '36.2', '33.3', '11.1', '2.0', '17.4'),
(4, 'Lunch Set D', 800, 507, '19.7', '17.0', '18.3', '32.6', '12.4'),
(5, 'Lunch Set E', 500, 409, '12.5', '9.3', '26.0', '23.8', '28.4');

-- --------------------------------------------------------

--
-- テーブルの構造 `order_table`
--

CREATE TABLE `order_table` (
  `order_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `order_table`
--

INSERT INTO `order_table` (`order_id`, `student_id`, `menu_id`, `created_at`) VALUES
(1, 1, 1, '2023-02-01 12:47:44'),
(2, 2, 1, '2023-02-01 12:46:05'),
(3, 3, 2, '2023-02-01 12:14:10'),
(4, 4, 2, '2023-02-01 12:15:11'),
(5, 5, 2, '2023-02-01 12:33:44'),
(6, 6, 5, '2023-02-01 12:03:15'),
(7, 1, 1, '2023-02-02 12:24:51'),
(8, 2, 3, '2023-02-02 12:16:53'),
(9, 3, 3, '2023-02-02 12:03:51'),
(10, 4, 2, '2023-02-02 12:07:24'),
(11, 5, 5, '2023-02-02 12:09:28'),
(12, 6, 4, '2023-02-02 12:45:01'),
(13, 1, 2, '2023-02-03 12:14:57'),
(14, 2, 3, '2023-02-03 12:07:17'),
(15, 3, 3, '2023-02-03 12:14:29'),
(16, 4, 2, '2023-02-03 12:06:29'),
(17, 5, 1, '2023-02-03 12:00:21'),
(18, 6, 1, '2023-02-03 12:01:46'),
(19, 1, 4, '2023-02-04 12:06:47'),
(20, 2, 4, '2023-02-04 12:06:39'),
(21, 3, 4, '2023-02-04 12:08:51'),
(22, 4, 4, '2023-02-04 12:06:50'),
(23, 5, 4, '2023-02-04 12:20:49'),
(24, 6, 4, '2023-02-04 12:06:50'),
(25, 1, 2, '2023-02-05 12:11:34'),
(26, 2, 2, '2023-02-05 12:18:01'),
(27, 3, 3, '2023-02-05 12:08:57'),
(28, 4, 3, '2023-02-05 12:27:38'),
(29, 5, 1, '2023-02-05 12:25:03'),
(30, 6, 5, '2023-02-05 12:04:06'),
(31, 1, 2, '2023-02-06 12:27:08'),
(32, 2, 2, '2023-02-06 12:27:46'),
(33, 3, 3, '2023-02-06 12:29:54'),
(34, 4, 2, '2023-02-06 12:03:29'),
(35, 5, 2, '2023-02-06 12:23:12'),
(36, 6, 1, '2023-02-06 12:08:49'),
(37, 1, 1, '2023-02-07 12:25:00'),
(38, 2, 4, '2023-02-07 12:03:11'),
(39, 3, 4, '2023-02-07 12:29:49'),
(40, 4, 5, '2023-02-07 12:15:06'),
(41, 5, 5, '2023-02-07 12:11:13'),
(42, 6, 5, '2023-02-07 12:04:27');

-- --------------------------------------------------------

--
-- テーブルの構造 `students`
--

CREATE TABLE `students` (
  `id` int(6) NOT NULL,
  `photo` varchar(128) NOT NULL,
  `name` varchar(191) NOT NULL,
  `alias` varchar(191) NOT NULL,
  `quirk` varchar(191) NOT NULL,
  `course` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `students`
--

INSERT INTO `students` (`id`, `photo`, `name`, `alias`, `quirk`, `course`) VALUES
(15, '', 'Yuga Aoyama', 'Can\'t Stop Twinkling', 'Navel Laser', 'Hero Course'),
(16, '', 'Mina Ashido', 'Pinky', 'Acid', 'Hero Course'),
(17, '', 'Tsuyu Asui', 'Froppy', 'Frog', 'Hero Course'),
(18, '', 'Tenya Ida', 'Ingenium', 'Engine', 'Hero Course'),
(19, '', 'Ochaco Uraraka', 'Uravity', 'Zero Gravity', 'Hero Course'),
(20, '', 'Mashirao Ojiro', 'Tailman', 'Tail', 'Hero Course'),
(21, '', 'Denki Kaminari', 'Chargebolt', 'Electrification', 'Hero Course'),
(22, '', 'Eijiro Kirishima', 'Red Riot', 'Hardening', 'Hero Course'),
(23, '', 'Koji Koda', 'Anima', 'Anivoice', 'Hero Course'),
(24, '', 'Rikido Sato', 'Sugarman', 'Sugar Rush', 'Hero Course'),
(25, '', 'Mezo Shoji', 'Tentacole', 'Dupli-Arms', 'Hero Course'),
(26, '', 'Kyoka Jiro', 'Earphone Jack', 'Earphone Jack', 'Hero Course'),
(27, '', 'Hanta Sero', 'Cellophane', 'Tape', 'Hero Course'),
(28, '', 'Fumikage Tokoyami', 'Tsukuyomi', 'Dark Shadow', 'Hero Course'),
(29, '', 'Shoto Todoroki', 'Shoto', 'Half-Cold Half-Hot', 'Hero Course'),
(30, '', 'Toru Hagakure', 'Invisible Girl', 'Invisibility', 'Hero Course'),
(31, '', 'Katsuki Bakugo', 'Great Explosion Murder God Dynamight', 'Explosion', 'Hero Course'),
(32, '', 'Izuku Midoriya', 'Deku', 'One For All', 'Hero Course'),
(33, '', 'Minoru Mineta', 'Grape Juice', 'Pop Off', 'Hero Course'),
(34, '', 'Momo Yaoyorozu', 'Creati', 'Creation', 'Hero Course');

-- --------------------------------------------------------

--
-- テーブルの構造 `students_table`
--

CREATE TABLE `students_table` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `students_table`
--

INSERT INTO `students_table` (`student_id`, `student_name`) VALUES
(1, 'Izuku Midoriya'),
(2, 'Katsuki Bakugo'),
(3, 'Shoto Todoroki'),
(4, 'Ochaco Uraraka'),
(5, 'Tenya Ida'),
(6, 'Eijiro Kirishima');

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` int(12) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_admin` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `is_admin`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'aizawa', 'eraser', 0, '2023-01-20 09:09:04', '2023-01-20 09:09:04', NULL),
(2, 'yagi', 'allmight', 0, '2023-01-20 10:31:08', '2023-01-20 10:31:08', NULL),
(4, 'kayama', 'midnight', 0, '2023-01-20 15:54:20', '2023-01-20 15:54:20', NULL),
(5, 'aaa', 'ccc', 0, '2023-01-21 14:20:49', '2023-01-21 14:20:49', NULL);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `menu_table`
--
ALTER TABLE `menu_table`
  ADD PRIMARY KEY (`menu_id`);

--
-- テーブルのインデックス `order_table`
--
ALTER TABLE `order_table`
  ADD PRIMARY KEY (`order_id`);

--
-- テーブルのインデックス `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `students_table`
--
ALTER TABLE `students_table`
  ADD PRIMARY KEY (`student_id`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `menu_table`
--
ALTER TABLE `menu_table`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- テーブルの AUTO_INCREMENT `order_table`
--
ALTER TABLE `order_table`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- テーブルの AUTO_INCREMENT `students`
--
ALTER TABLE `students`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- テーブルの AUTO_INCREMENT `students_table`
--
ALTER TABLE `students_table`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
