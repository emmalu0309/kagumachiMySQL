-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:8889
-- 產生時間： 2025 年 01 月 20 日 03:08
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
-- 資料表結構 `orders`
--

CREATE TABLE `orders` (
  `orderid` int NOT NULL,
  `memberid` int DEFAULT NULL,
  `orderstatus` varchar(50) DEFAULT NULL,
  `paymentmethod` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shippingmethod` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ordercity` varchar(100) DEFAULT NULL,
  `orderdate` date NOT NULL,
  `deliverydate` date DEFAULT NULL,
  `totalprice` double NOT NULL,
  `logisticsid` int DEFAULT NULL,
  `logisticsnumber` varchar(100) DEFAULT NULL,
  `estimateddeliverydate` date DEFAULT NULL,
  `orderserial` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `orders`
--

INSERT INTO `orders` (`orderid`, `memberid`, `orderstatus`, `paymentmethod`, `shippingmethod`, `ordercity`, `orderdate`, `deliverydate`, `totalprice`, `logisticsid`, `logisticsnumber`, `estimateddeliverydate`, `orderserial`) VALUES
(1, 100, '訂單完成', '信用卡', NULL, NULL, '2025-01-12', '2025-01-12', 2063, 1, '1002-6790-5761', '2025-01-14', '20250112001'),
(2, 100, '訂單完成', '信用卡', NULL, NULL, '2025-01-12', '2025-01-12', 3000, 2, '1212-3434-5656', '2025-01-15', '20250112002'),
(3, 100, '訂單完成', '信用卡', NULL, NULL, '2025-01-12', '2025-01-12', 10000, 3, '8787-9090-2121', '2025-01-16', '20250112003'),
(4, 100, '訂單完成', '現金', NULL, NULL, '2025-01-12', '2025-01-12', 5566, 1, '1002-6790-5762', '2025-01-13', '20250112004'),
(5, 101, '訂單完成', '信用卡', NULL, NULL, '2025-01-12', '2025-01-12', 2000, 1, '1002-6790-5733', '2025-01-14', '20250112005'),
(6, 102, '訂單完成', '現金', NULL, NULL, '2025-01-12', '2025-01-12', 7788, 1, '1002-6790-5711', '2025-01-13', '20250112006'),
(7, 102, '訂單完成', '信用卡', NULL, NULL, '2025-01-12', '2025-01-12', 10000, 3, '8787-9090-2109', '2025-01-16', '20250112007');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `memberid` (`memberid`),
  ADD KEY `logisticsid` (`logisticsid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`memberid`) REFERENCES `members` (`memberid`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`logisticsid`) REFERENCES `logistics` (`logisticsid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
