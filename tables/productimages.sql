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
-- 資料表結構 `productimages`
--

CREATE TABLE `productimages` (
  `imageid` int NOT NULL,
  `productid` int DEFAULT NULL,
  `colorsid` int DEFAULT NULL,
  `imageurl` varchar(1000) DEFAULT NULL,
  `isprimary` tinyint(1) DEFAULT NULL,
  `updatedat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `productimages`
--

INSERT INTO `productimages` (`imageid`, `productid`, `colorsid`, `imageurl`, `isprimary`, `updatedat`) VALUES
(1, 1, 1, 'https://www.ikea.com.tw/dairyfarm/tw/images/282/0728262_PE736144_S4.webp', NULL, NULL),
(2, 2, 2, 'https://www.ikea.com.tw/dairyfarm/tw/images/123/1212322_PE910595_S4.webp', NULL, NULL),
(3, 2, 3, 'https://www.ikea.com.tw/dairyfarm/tw/images/123/1212317_PE910594_S4.webp', NULL, NULL),
(4, 2, 4, 'https://www.ikea.com.tw/dairyfarm/tw/images/254/0625407_PE692252_S4.webp', NULL, NULL),
(5, 3, 5, 'https://www.ikea.com.tw/dairyfarm/tw/images/123/1212322_PE910595_S4.webp', NULL, NULL),
(6, 3, 6, 'https://www.ikea.com.tw/dairyfarm/tw/images/123/1212317_PE910594_S4.webp', NULL, NULL),
(7, 3, 7, 'https://www.ikea.com.tw/dairyfarm/tw/images/254/0625407_PE692252_S4.webp', NULL, NULL),
(8, 4, 8, 'https://www.ikea.com.tw/dairyfarm/tw/images/946/1194665_PE902051_S4.webp', NULL, NULL),
(9, 4, 9, 'https://www.ikea.com.tw/dairyfarm/tw/images/658/1265821_PE927821_S4.webp', NULL, NULL),
(10, 5, 10, 'https://www.ikea.com.tw/dairyfarm/tw/images/694/0869469_PE781440_S4.webp', NULL, NULL),
(11, 6, 11, 'https://www.ikea.com.tw/dairyfarm/tw/images/359/0735975_PE740309_S4.webp', NULL, NULL),
(12, 6, 12, 'https://www.ikea.com.tw/dairyfarm/tw/images/359/0735976_PE740310_S4.webp', NULL, NULL);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `productimages`
--
ALTER TABLE `productimages`
  ADD PRIMARY KEY (`imageid`),
  ADD KEY `productid` (`productid`),
  ADD KEY `colorsid` (`colorsid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `productimages`
--
ALTER TABLE `productimages`
  MODIFY `imageid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `productimages`
--
ALTER TABLE `productimages`
  ADD CONSTRAINT `productimages_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`),
  ADD CONSTRAINT `productimages_ibfk_2` FOREIGN KEY (`colorsid`) REFERENCES `productcolors` (`colorsid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
