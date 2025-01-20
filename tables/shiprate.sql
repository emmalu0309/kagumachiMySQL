-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:8889
-- 產生時間： 2025 年 01 月 19 日 09:07
-- 伺服器版本： 8.0.35
-- PHP 版本： 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `kagumachi`
--

-- --------------------------------------------------------

--
-- 資料表結構 `shiprate`
--

CREATE TABLE `shiprate` (
  `shiprateid` int NOT NULL,
  `region` varchar(50) DEFAULT NULL,
  `rate` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `shiprate`
--

INSERT INTO `shiprate` (`shiprateid`, `region`, `rate`) VALUES
(1, '台北', 1000),
(2, '新北', 1000),
(3, '基隆', 1000),
(4, '桃園', 1000),
(5, '宜蘭', 1000),
(6, '新竹', 1100),
(7, '苗栗', 1100),
(8, '台中', 1200),
(9, '彰化', 1200),
(10, '南投', 1300),
(11, '雲林', 1300),
(12, '嘉義', 1405),
(13, '台南', 1400),
(14, '高雄', 1500),
(15, '屏東', 1600),
(16, '台東', 1700),
(17, '花蓮', 1800),
(18, '澎湖', 2000),
(19, '金門', 2000),
(20, '連江', 3000);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `shiprate`
--
ALTER TABLE `shiprate`
  ADD PRIMARY KEY (`shiprateid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `shiprate`
--
ALTER TABLE `shiprate`
  MODIFY `shiprateid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
