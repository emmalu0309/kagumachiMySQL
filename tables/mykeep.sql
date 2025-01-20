-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:8889
-- 產生時間： 2025 年 01 月 20 日 03:07
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
-- 資料表結構 `mykeep`
--

CREATE TABLE `mykeep` (
  `mykeepid` int NOT NULL,
  `memberid` int DEFAULT NULL,
  `productid` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `mykeep`
--

INSERT INTO `mykeep` (`mykeepid`, `memberid`, `productid`) VALUES
(4, 100, 4),
(5, 100, 5),
(7, 101, 4),
(10, 102, 1),
(11, 102, 2),
(12, 102, 3),
(13, 102, 4),
(14, 102, 5),
(15, 102, 6);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `mykeep`
--
ALTER TABLE `mykeep`
  ADD PRIMARY KEY (`mykeepid`),
  ADD KEY `memberid` (`memberid`),
  ADD KEY `productid` (`productid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `mykeep`
--
ALTER TABLE `mykeep`
  MODIFY `mykeepid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `mykeep`
--
ALTER TABLE `mykeep`
  ADD CONSTRAINT `mykeep_ibfk_1` FOREIGN KEY (`memberid`) REFERENCES `members` (`memberid`),
  ADD CONSTRAINT `mykeep_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
