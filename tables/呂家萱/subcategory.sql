-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:8889
-- 產生時間： 2025 年 01 月 20 日 07:11
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
-- 資料表結構 `subcategory`
--

CREATE TABLE `subcategory` (
  `subcategoryid` int NOT NULL,
  `maincategoryid` int DEFAULT NULL,
  `categoryname` varchar(100) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `subcategory`
--

INSERT INTO `subcategory` (`subcategoryid`, `maincategoryid`, `categoryname`, `status`) VALUES
(1, 1, '衣櫃', 'sale'),
(2, 1, '鞋櫃', 'sale'),
(3, 1, '書櫃', 'sale'),
(4, 1, '櫥櫃', 'sale'),
(5, 1, '電視櫃', 'sale'),
(6, 1, '浴櫃', 'sale'),
(7, 2, '餐桌', 'sale'),
(8, 2, '茶几', 'sale'),
(9, 2, '書桌', 'sale'),
(10, 2, '升降桌', 'sale'),
(11, 3, '餐椅', 'sale'),
(12, 3, '小椅凳', 'sale'),
(13, 3, '辦公椅', 'sale'),
(14, 3, '電競椅', 'sale'),
(15, 3, '吧台椅', 'sale'),
(16, 4, '單人沙發', 'sale'),
(17, 4, '雙人沙發', 'sale'),
(18, 4, 'L型沙發', 'sale'),
(19, 5, '坎燈', 'sale'),
(20, 5, '吊燈', 'sale'),
(21, 5, '檯燈', 'sale'),
(22, 5, '壁燈', 'sale'),
(23, 6, '床架', 'sale'),
(24, 6, '床墊', 'sale'),
(25, 6, '床包/棉被/枕頭', 'sale');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`subcategoryid`),
  ADD KEY `maincategoryid` (`maincategoryid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `subcategoryid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`maincategoryid`) REFERENCES `maincategory` (`maincategoryid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
