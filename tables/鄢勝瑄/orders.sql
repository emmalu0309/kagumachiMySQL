-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2025 年 01 月 20 日 08:01
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

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
  `orderid` int(11) NOT NULL,
  `memberid` int(11) DEFAULT NULL,
  `orderserial` varchar(100) DEFAULT NULL,
  `orderstatus` varchar(50) DEFAULT NULL,
  `paymentmethod` varchar(100) DEFAULT NULL,
  `shippingmethod` varchar(100) DEFAULT NULL,
  `ordercity` varchar(100) DEFAULT NULL,
  `orderdate` date NOT NULL,
  `deliverydate` date DEFAULT NULL,
  `totalprice` double NOT NULL,
  `logisticsid` int(11) DEFAULT NULL,
  `logisticsnumber` varchar(100) DEFAULT NULL,
  `estimateddeliverydate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `orders`
--

INSERT INTO `orders` (`orderid`, `memberid`, `orderserial`, `orderstatus`, `paymentmethod`, `shippingmethod`, `ordercity`, `orderdate`, `deliverydate`, `totalprice`, `logisticsid`, `logisticsnumber`, `estimateddeliverydate`) VALUES
(1, 1, '20250101001', '準備中', '貨到付款', '貨運', '臺北市', '2025-01-01', NULL, 1000, 2, '0000000001', NULL),
(2, 2, '20250101002', '運送中', '信用卡', '貨運', '新北市', '2025-01-01', NULL, 2000, 2, '0000000002', NULL),
(3, 3, '20250101003', '運送中', '信用卡', '貨運', '基隆市', '2025-01-01', NULL, 3000, 2, '0000000003', NULL),
(4, 4, '20250102001', '準備中', '貨到付款', '貨運', '桃園市', '2025-01-02', NULL, 1000, 2, '0000000004', NULL),
(5, 5, '20250102002', '運送中', '信用卡', '貨運', '新竹縣', '2025-01-02', NULL, 2000, 2, '0000000005', NULL),
(6, 6, '20250102003', '運送中', '信用卡', '貨運', '新竹市', '2025-01-02', NULL, 3000, 2, '0000000006', NULL),
(7, 7, '20250104001', '準備中', '貨到付款', '貨運', '苗栗縣', '2025-01-04', NULL, 1000, 2, '0000000007', NULL),
(8, 8, '20250104002', '運送中', '信用卡', '貨運', '臺中市', '2025-01-04', NULL, 2000, 2, '0000000008', NULL),
(9, 9, '20250104003', '運送中', '信用卡', '貨運', '南投縣', '2025-01-04', NULL, 3000, 2, '0000000009', NULL),
(10, 10, '20250105001', '準備中', '貨到付款', '貨運', '彰化縣', '2025-01-05', NULL, 1000, 2, '0000000010', NULL),
(11, 11, '20250105002', '運送中', '信用卡', '貨運', '雲林縣', '2025-01-05', NULL, 2000, 2, '0000000011', NULL),
(12, 12, '20250105003', '運送中', '信用卡', '貨運', '嘉義縣', '2025-01-05', NULL, 3000, 2, '0000000012', NULL),
(13, 13, '20250106001', '準備中', '貨到付款', '貨運', '嘉義市', '2025-01-06', NULL, 1000, 2, '0000000013', NULL),
(14, 14, '20250106002', '運送中', '信用卡', '貨運', '臺南市', '2025-01-06', NULL, 2000, 2, '0000000014', NULL),
(15, 15, '20250106003', '運送中', '信用卡', '貨運', '高雄市', '2025-01-06', NULL, 3000, 2, '0000000015', NULL),
(16, 16, '20250107001', '準備中', '貨到付款', '貨運', '屏東縣', '2025-01-07', NULL, 1000, 2, '0000000016', NULL),
(17, 17, '20250107002', '運送中', '信用卡', '貨運', '宜蘭縣', '2025-01-07', NULL, 2000, 2, '0000000017', NULL),
(18, 18, '20250107003', '運送中', '信用卡', '貨運', '花蓮縣', '2025-01-07', NULL, 3000, 2, '0000000018', NULL),
(19, 19, '20250108001', '準備中', '貨到付款', '貨運', '臺東縣', '2025-01-08', NULL, 1000, 2, '0000000019', NULL),
(20, 20, '20250108002', '運送中', '信用卡', '貨運', '澎湖縣', '2025-01-08', NULL, 2000, 2, '0000000020', NULL),
(21, 21, '20250108003', '運送中', '信用卡', '貨運', '金門縣', '2025-01-08', NULL, 3000, 2, '0000000021', NULL),
(22, 22, '20250108004', '運送中', '信用卡', '貨運', '連江縣', '2025-01-08', NULL, 4000, 2, '0000000022', NULL);

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
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
