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
-- 資料表結構 `maincategory`
--

CREATE TABLE `maincategory` (
  `maincategoryid` int NOT NULL,
  `salesid` int DEFAULT NULL,
  `categoryname` varchar(100) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `maincategory`
--

INSERT INTO `maincategory` (`maincategoryid`, `salesid`, `categoryname`, `status`) VALUES
(1, 1, '質感櫃子', 'sale'),
(2, 2, '流行桌子', 'sale'),
(3, NULL, '時尚椅子', 'sale'),
(4, 2, '實用沙發', 'sale'),
(5, NULL, '超美燈具', 'sale'),
(6, NULL, '舒適寢具', 'sale');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `maincategory`
--
ALTER TABLE `maincategory`
  ADD PRIMARY KEY (`maincategoryid`),
  ADD KEY `salesid` (`salesid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `maincategory`
--
ALTER TABLE `maincategory`
  MODIFY `maincategoryid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `maincategory`
--
ALTER TABLE `maincategory`
  ADD CONSTRAINT `maincategory_ibfk_1` FOREIGN KEY (`salesid`) REFERENCES `sales` (`salesid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
