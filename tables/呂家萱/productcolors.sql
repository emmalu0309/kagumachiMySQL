-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:8889
-- 產生時間： 2025 年 01 月 20 日 07:10
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
-- 資料庫： `kagu2`
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
(46, 8, '淺灰色', 10, 5, NULL),
(47, 8, '深灰色', 20, 5, NULL),
(68, 28, '灰色', 23, 5, NULL),
(69, 28, '自然色', 19, 5, NULL),
(70, 28, '白色', 27, 3, NULL),
(73, 30, '黑棕色', 9, 5, NULL),
(74, 31, '白色', 22, 5, '2025-01-19');

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
  MODIFY `colorsid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

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
