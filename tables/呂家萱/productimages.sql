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
(82, 8, 46, 'https://www.ikea.com.tw/dairyfarm/tw/images/929/0992909_PE820327_S4.jpg', 1, NULL),
(83, 8, 46, 'https://www.ikea.com.tw/dairyfarm/tw/images/237/1023710_PE833226_S4.jpg', 0, NULL),
(84, 8, 46, 'https://www.ikea.com.tw/dairyfarm/tw/images/315/1031506_PE836510_S4.jpg', 0, NULL),
(85, 8, 46, 'https://www.ikea.com.tw/dairyfarm/tw/images/392/1039252_PE840104_S4.jpg', 0, NULL),
(86, 8, 47, 'https://www.ikea.com.tw/dairyfarm/tw/images/929/0992907_PE820325_S4.jpg', 1, NULL),
(87, 8, 47, 'https://www.ikea.com.tw/dairyfarm/tw/images/237/1023709_PE833227_S4.jpg', 0, NULL),
(88, 8, 47, 'https://www.ikea.com.tw/dairyfarm/tw/images/315/1031505_PE836505_S4.jpg', 0, NULL),
(89, 8, 47, 'https://www.ikea.com.tw/dairyfarm/tw/images/392/1039252_PE840104_S4.jpg', 0, NULL),
(116, 28, 68, 'https://www.ikea.com.tw/dairyfarm/tw/images/506/0950638_PE800559_S4.jpg', 1, NULL),
(117, 28, 68, 'https://www.ikea.com.tw/dairyfarm/tw/images/506/0950639_PE800557_S4.jpg', 0, NULL),
(118, 28, 68, 'https://www.ikea.com.tw/dairyfarm/tw/images/506/0950621_PE800550_S4.jpg', 0, NULL),
(119, 28, 68, 'https://www.ikea.com.tw/dairyfarm/tw/images/128/1012884_PE829043_S4.jpg', 0, NULL),
(120, 28, 69, 'https://www.ikea.com.tw/dairyfarm/tw/images/506/0950636_PE800560_S4.jpg', 1, NULL),
(121, 28, 69, 'https://www.ikea.com.tw/dairyfarm/tw/images/873/0987372_PE817509_S4.jpg', 0, NULL),
(122, 28, 69, 'https://www.ikea.com.tw/dairyfarm/tw/images/873/0987386_PE817514_S2.jpg', 0, NULL),
(123, 28, 69, 'https://www.ikea.com.tw/dairyfarm/tw/images/128/1012884_PE829043_S4.jpg', 0, NULL),
(124, 28, 70, 'https://www.ikea.com.tw/dairyfarm/tw/images/506/0950634_PE800555_S4.jpg', 1, NULL),
(125, 28, 70, 'https://www.ikea.com.tw/dairyfarm/tw/images/855/0985520_PE816658_S4.jpg', 0, NULL),
(126, 28, 70, 'https://www.ikea.com.tw/dairyfarm/tw/images/855/0985575_PE816677_S2.jpg', 0, NULL),
(127, 28, 70, 'https://www.ikea.com.tw/dairyfarm/tw/images/128/1012884_PE829043_S4.jpg', 0, NULL),
(130, 30, 73, 'https://www.ikea.com.tw/dairyfarm/tw/images/239/0823992_PE776023_S4.jpg', 1, NULL),
(131, 30, 73, 'https://www.ikea.com.tw/dairyfarm/tw/images/984/0998401_PE823024_S4.jpg', 0, NULL),
(132, 30, 73, 'https://www.ikea.com.tw/dairyfarm/tw/images/239/0823993_PE776024_S4.jpg', 0, NULL),
(133, 30, 73, 'https://www.ikea.com.tw/dairyfarm/tw/images/468/0946835_PE798278_S2.jpg', 0, NULL),
(134, 31, 74, 'https://www.ikea.com.tw/dairyfarm/tw/images/280/0728069_PE736042_S4.jpg', 1, NULL),
(135, 31, 74, 'https://www.ikea.com.tw/dairyfarm/tw/images/502/1250259_PE923662_S4.jpg', 0, NULL),
(136, 31, 74, 'https://www.ikea.com.tw/dairyfarm/tw/images/502/1250261_PE923663_S4.jpg', 0, NULL),
(137, 31, 74, 'https://www.ikea.com.tw/dairyfarm/tw/images/744/0874487_PE594767_S4.jpg', 0, NULL),
(138, 31, 74, 'https://www.ikea.com.tw/dairyfarm/tw/images/495/0949565_PE799858_S4.jpg', 0, NULL);

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
  MODIFY `imageid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

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
