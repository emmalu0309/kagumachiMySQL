-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:8889
-- 產生時間： 2025 年 01 月 20 日 03:09
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
-- 資料表結構 `productcolors`
--

CREATE TABLE `productcolors` (
  `colorsid` int NOT NULL,
  `productid` int DEFAULT NULL,
  `colorname` varchar(50) DEFAULT NULL,
  `stock` int NOT NULL,
  `minstock` int DEFAULT NULL,
  `updateat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `productcolors`
--

INSERT INTO `productcolors` (`colorsid`, `productid`, `colorname`, `stock`, `minstock`, `updateat`) VALUES
(1, 1, '白楊木', 88, NULL, NULL),
(2, 2, '梁白橡木', 116, NULL, NULL),
(3, 2, '白色', 150, NULL, NULL),
(4, 2, '深灰色', 74, NULL, NULL),
(5, 3, '梁白橡木', 0, NULL, NULL),
(6, 3, '白色', 4, NULL, NULL),
(7, 3, '深灰色', 8, NULL, NULL),
(8, 4, '淺灰色', 116, NULL, NULL),
(9, 4, '黃色', 1, NULL, NULL),
(10, 5, '白色', 18, NULL, NULL),
(11, 6, '白色', 41, NULL, NULL),
(12, 6, '梁白橡木', 0, NULL, NULL);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `productcolors`
--
ALTER TABLE `productcolors`
  ADD PRIMARY KEY (`colorsid`),
  ADD KEY `productid` (`productid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `productcolors`
--
ALTER TABLE `productcolors`
  MODIFY `colorsid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `productcolors`
--
ALTER TABLE `productcolors`
  ADD CONSTRAINT `productcolors_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
