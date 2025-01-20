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
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `productdescription` varchar(10000) DEFAULT NULL,
  `maincategoryid` int(11) DEFAULT NULL,
  `subcategoryid` int(11) DEFAULT NULL,
  `supplierid` int(11) DEFAULT NULL,
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `depth` double DEFAULT NULL,
  `unitprice` int(11) DEFAULT NULL,
  `discountprice` int(11) DEFAULT NULL,
  `productcost` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `unitsold` int(11) DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `reviewcount` int(11) DEFAULT NULL,
  `updateat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`productid`, `productname`, `productdescription`, `maincategoryid`, `subcategoryid`, `supplierid`, `width`, `height`, `depth`, `unitprice`, `discountprice`, `productcost`, `status`, `unitsold`, `rating`, `reviewcount`, `updateat`) VALUES
(1, '墊腳凳', NULL, NULL, NULL, NULL, 10, 20, 30, 800, 729, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '收納櫃', NULL, NULL, NULL, NULL, 35, 35, 25, 600, 500, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '收納櫃', NULL, NULL, NULL, NULL, 35, 35, 35, 800, 700, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '沙發床', NULL, NULL, NULL, NULL, 100, 110, 120, 6500, 5499, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Led工作燈', NULL, NULL, NULL, NULL, 20, 30, 40, 2000, 1799, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '書桌/工作桌', NULL, NULL, NULL, NULL, 150, 200, 100, 6000, 5299, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '三門衣櫃/衣櫥', NULL, NULL, NULL, NULL, 117, 176, 56, 4000, 3199, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '桌子', NULL, NULL, NULL, NULL, 125, 75, 75, 3500, 2999, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`),
  ADD KEY `maincategoryid` (`maincategoryid`),
  ADD KEY `subcategoryid` (`subcategoryid`),
  ADD KEY `supplierid` (`supplierid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`maincategoryid`) REFERENCES `maincategory` (`maincategoryid`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`subcategoryid`) REFERENCES `subcategory` (`subcategoryid`),
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`supplierid`) REFERENCES `suppliers` (`supplierid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
