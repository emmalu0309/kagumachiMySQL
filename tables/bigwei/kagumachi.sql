-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2025-01-26 19:48:18
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.1.25

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
-- 資料表結構 `carts`
--

CREATE TABLE `carts` (
  `cartsid` int(10) NOT NULL,
  `memberid` int(10) DEFAULT NULL,
  `productid` int(10) DEFAULT NULL,
  `colorsid` int(10) DEFAULT NULL,
  `quantity` int(10) NOT NULL,
  `ispurchase` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `finance`
--

CREATE TABLE `finance` (
  `financeid` int(10) NOT NULL,
  `date` date DEFAULT NULL,
  `item` varchar(100) DEFAULT NULL,
  `details` varchar(100) DEFAULT NULL,
  `money` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `incomestatement`
--

CREATE TABLE `incomestatement` (
  `incomestatementid` int(10) NOT NULL,
  `productid` int(10) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `productcost` int(10) DEFAULT NULL,
  `operatingrevenue` int(10) DEFAULT NULL,
  `operatingexpenses` int(10) DEFAULT NULL,
  `grossprofit` int(10) DEFAULT NULL,
  `nonoperatingincomeandexpenses` int(10) DEFAULT NULL,
  `incometax` int(10) DEFAULT NULL,
  `netprofitaftertax` int(10) NOT NULL,
  `capitalstock` int(10) NOT NULL,
  `earningspershare` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `logistics`
--

CREATE TABLE `logistics` (
  `logisticsid` int(10) NOT NULL,
  `comname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `logistics`
--

INSERT INTO `logistics` (`logisticsid`, `comname`) VALUES
(1, '黑貓宅急便	'),
(2, '宅配通'),
(3, '嘉里大榮');

-- --------------------------------------------------------

--
-- 資料表結構 `maincategory`
--

CREATE TABLE `maincategory` (
  `maincategoryid` int(10) NOT NULL,
  `salesid` int(10) DEFAULT NULL,
  `categoryname` varchar(100) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `maincategory`
--

INSERT INTO `maincategory` (`maincategoryid`, `salesid`, `categoryname`, `status`) VALUES
(1, 1, '質感櫃子', 'sale'),
(2, 2, '流行桌子', 'sale'),
(3, 1, '時尚椅子', 'sale'),
(4, 2, '實用沙發', 'sale'),
(5, 3, '超美燈具', 'sale'),
(6, 3, '舒適寢具', 'sale');

-- --------------------------------------------------------

--
-- 資料表結構 `members`
--

CREATE TABLE `members` (
  `memberid` int(10) NOT NULL,
  `realname` varchar(100) DEFAULT NULL,
  `gender` int(10) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `postalcode` int(10) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `registrationdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `members`
--

INSERT INTO `members` (`memberid`, `realname`, `gender`, `password`, `email`, `phone`, `birthday`, `postalcode`, `city`, `address`, `registrationdate`) VALUES
(100, '布萊德大帥', 0, '$2a$10$7.L9kYgI5OlERRxdqx02WeLj9grXznKJbHMCT744U1lKGPvIHKXWy', 'brad@big.com', '0912-345-677', '1990-05-10', 407, '台中市', '西屯區不來的大公司', '2024-11-28'),
(101, '軒瑋帥哥', 0, '$2a$10$cBM9yHV7Vr3oAqDl43ZypeZjMYfAyOIDVa5GTnZ7JtpOsbdFZ873q', 'wei1@abc.com', '0987-878-787', '8787-08-07', 500, '彰化縣', '彰化市中山路二段416號', '2025-01-01'),
(102, '崇瑋老哥', 1, '$2a$10$JeaccYSIPPOLjjmxC8eer.HkshegRQi6t.YC061KRkAOP76D1eNlG', 'wei2@abc.com', '0987-878-787', '8787-08-07', 438, '台中市', '外埔區崇瑋好色', '2025-01-01');

-- --------------------------------------------------------

--
-- 資料表結構 `message`
--

CREATE TABLE `message` (
  `messageid` int(10) NOT NULL,
  `receiverid` int(10) DEFAULT NULL,
  `senderid` int(10) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `isfrontread` tinyint(1) DEFAULT NULL,
  `isbackread` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `message`
--

INSERT INTO `message` (`messageid`, `receiverid`, `senderid`, `content`, `timestamp`, `isfrontread`, `isbackread`) VALUES
(1, NULL, 101, '我好帥', NULL, 1, 0),
(2, NULL, 102, '我真酷', NULL, 1, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `mykeep`
--

CREATE TABLE `mykeep` (
  `mykeepid` int(10) NOT NULL,
  `memberid` int(10) DEFAULT NULL,
  `productid` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `mykeep`
--

INSERT INTO `mykeep` (`mykeepid`, `memberid`, `productid`) VALUES
(10, 102, 1),
(11, 102, 2),
(12, 102, 3),
(13, 102, 4),
(14, 102, 5),
(15, 102, 6),
(36, 100, 4),
(44, 101, 7),
(45, 101, 11),
(46, 101, 12);

-- --------------------------------------------------------

--
-- 資料表結構 `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderdetailid` int(10) NOT NULL,
  `orderid` int(10) DEFAULT NULL,
  `productid` int(10) DEFAULT NULL,
  `colorsid` int(11) DEFAULT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `orderdetails`
--

INSERT INTO `orderdetails` (`orderdetailid`, `orderid`, `productid`, `colorsid`, `quantity`) VALUES
(1, 1, 1, 1, 10),
(2, 1, 2, 3, 20),
(3, 2, 1, 1, 40);

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) NOT NULL,
  `memberid` int(10) DEFAULT NULL,
  `orderstatus` varchar(50) DEFAULT NULL,
  `paymentmethod` varchar(100) DEFAULT NULL,
  `shippingmethod` varchar(100) DEFAULT NULL,
  `ordercity` varchar(100) DEFAULT NULL,
  `orderdate` date NOT NULL,
  `deliverydate` date DEFAULT NULL,
  `totalprice` double NOT NULL,
  `logisticsid` int(10) DEFAULT NULL,
  `logisticsnumber` varchar(100) DEFAULT NULL,
  `estimateddeliverydate` datetime DEFAULT NULL,
  `orderserial` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `recipient` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `orders`
--

INSERT INTO `orders` (`orderid`, `memberid`, `orderstatus`, `paymentmethod`, `shippingmethod`, `ordercity`, `orderdate`, `deliverydate`, `totalprice`, `logisticsid`, `logisticsnumber`, `estimateddeliverydate`, `orderserial`, `district`, `phone`, `address`, `recipient`) VALUES
(1, 100, '訂單完成', '信用卡', NULL, NULL, '2025-01-12', '2025-01-12', 2063, 1, '1002-6790-5761', '2025-01-14 00:00:00', '20250112001', NULL, NULL, NULL, NULL),
(2, 100, '訂單完成', '信用卡', NULL, NULL, '2025-01-12', '2025-01-12', 3000, 2, '1212-3434-5656', '2025-01-15 00:00:00', '20250112002', NULL, NULL, NULL, NULL),
(3, 100, '訂單完成', '信用卡', NULL, NULL, '2025-01-12', '2025-01-12', 10000, 3, '8787-9090-2121', '2025-01-16 00:00:00', '20250112003', NULL, NULL, NULL, NULL),
(4, 100, '訂單完成', '現金', NULL, NULL, '2025-01-12', '2025-01-12', 5566, 1, '1002-6790-5762', '2025-01-13 00:00:00', '20250112004', NULL, NULL, NULL, NULL),
(5, 101, '訂單完成', '信用卡', NULL, NULL, '2025-01-12', '2025-01-12', 2000, 1, '1002-6790-5733', '2025-01-14 00:00:00', '20250112005', NULL, NULL, NULL, NULL),
(6, 102, '訂單完成', '現金', NULL, NULL, '2025-01-12', '2025-01-12', 7788, 1, '1002-6790-5711', '2025-01-13 00:00:00', '20250112006', NULL, NULL, NULL, NULL),
(7, 102, '訂單完成', '信用卡', NULL, NULL, '2025-01-12', '2025-01-12', 10000, 3, '8787-9090-2109', '2025-01-16 00:00:00', '20250112007', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `productid` int(10) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `productdescription` varchar(10000) DEFAULT NULL,
  `maincategoryid` int(10) DEFAULT NULL,
  `subcategoryid` int(10) DEFAULT NULL,
  `supplierid` int(10) DEFAULT NULL,
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `depth` double DEFAULT NULL,
  `unitprice` int(10) DEFAULT NULL,
  `discountprice` int(10) DEFAULT NULL,
  `productcost` int(10) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `unitsold` int(10) DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `reviewcount` int(10) DEFAULT NULL,
  `updateat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`productid`, `productname`, `productdescription`, `maincategoryid`, `subcategoryid`, `supplierid`, `width`, `height`, `depth`, `unitprice`, `discountprice`, `productcost`, `status`, `unitsold`, `rating`, `reviewcount`, `updateat`) VALUES
(1, '墊腳凳', NULL, 3, 12, 1, 10, 20, 30, 800, 729, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '收納櫃', NULL, 1, 4, 2, 35, 35, 25, NULL, 500, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '收納櫃', NULL, 1, 4, 1, 35, 35, 35, NULL, 700, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '沙發床', NULL, 4, 17, 2, 100, 110, 120, NULL, 5499, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Led工作燈', NULL, 5, 21, 2, 20, 30, 40, NULL, 1799, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '書桌/工作桌', NULL, 2, 9, 2, 150, 200, 100, NULL, 5299, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '三人座沙發附2張電動躺椅', NULL, 4, 17, 1, 259, 94, 98, 29990, 29990, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '雙人座沙發', NULL, 4, 17, 1, 177, 86, 66, 11900, 11900, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '轉角沙發床附收納空間', NULL, 4, 18, 2, 140, 151, 204, 12990, 12990, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '三人座沙發', NULL, 4, 17, 1, 204, 89, 78, 29022, 18000, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '三人座沙發', NULL, 4, 17, 1, 204, 89, 79, 27900, 27900, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '內嵌式門片', NULL, 1, 4, 1, 33, 37, 33, 300, 300, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '桌子', NULL, 2, 7, 1, 100, 60, 74, 799, 799, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '書桌及椅子', NULL, 3, 13, 1, 41, 61, 37, 1348, 1348, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '檯燈, 閱讀燈, 工作燈', NULL, 5, 21, 1, 17, 56, 12, 349, 330, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '單人床框', NULL, 6, 23, 1, 209, 32, 98, 2999, 2999, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '雙人座沙發', NULL, 4, 17, 1, 165, 69, 80, 8990, 7000, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `productcolors`
--

CREATE TABLE `productcolors` (
  `colorsid` int(10) NOT NULL,
  `productid` int(10) DEFAULT NULL,
  `colorname` varchar(50) DEFAULT NULL,
  `stock` int(10) NOT NULL,
  `minstock` int(10) DEFAULT NULL,
  `updateat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `productcolors`
--

INSERT INTO `productcolors` (`colorsid`, `productid`, `colorname`, `stock`, `minstock`, `updateat`) VALUES
(1, 1, '白楊木', 88, 10, NULL),
(2, 2, '梁白橡木', 116, 5, NULL),
(3, 2, '白色', 150, 20, NULL),
(4, 2, '深灰色', 74, 21, NULL),
(5, 3, '梁白橡木', 0, 5, NULL),
(6, 3, '白色', 4, 10, NULL),
(7, 3, '深灰色', 8, 10, NULL),
(8, 4, '淺灰色', 116, 20, NULL),
(9, 4, '黃色', 1, 10, NULL),
(10, 5, '白色', 18, 10, NULL),
(11, 6, '白色', 41, 10, NULL),
(12, 6, '梁白橡木', 0, 10, NULL),
(13, 7, '深灰', 50, 10, NULL),
(14, 7, '米色', 50, 10, NULL),
(19, 11, '金屬', 55, 10, NULL),
(20, 11, '黑色', 54, 10, NULL),
(21, 12, '深米色/木材', 6, 10, NULL),
(22, 12, '淺綠色/木頭', 10, 10, NULL),
(23, 8, '黑色', 55, 10, NULL),
(24, 13, '染白橡木', 33, 5, NULL),
(25, 13, '白色', 51, 5, NULL),
(26, 13, '黑色', 44, 5, NULL),
(27, 14, '白色', 15, 10, NULL),
(28, 14, '黑色', 5, 10, NULL),
(29, 15, '白色/黑色', 6, 10, NULL),
(30, 9, '深灰色', 15, 5, NULL),
(31, 9, '藍色', 16, 5, NULL),
(32, 16, '白色', 6, 5, NULL),
(33, 16, '深灰色', 15, 5, NULL),
(34, 17, '松木', 14, 5, NULL),
(35, 18, '灰色', 18, 5, NULL),
(36, 18, ' 鐵鏽色', 25, 5, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `productimages`
--

CREATE TABLE `productimages` (
  `imageid` int(10) NOT NULL,
  `productid` int(10) DEFAULT NULL,
  `colorsid` int(10) DEFAULT NULL,
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
(12, 6, 12, 'https://www.ikea.com.tw/dairyfarm/tw/images/359/0735976_PE740310_S4.webp', NULL, NULL),
(13, 7, 13, 'https://www.ikea.com.tw/dairyfarm/tw/images/279/1327901_PE944575_S4.webp', 1, NULL),
(14, 7, 14, 'https://www.ikea.com.tw/dairyfarm/tw/images/279/1327921_PE944584_S4.webp', 1, NULL),
(19, 11, 19, 'https://www.ikea.com.tw/dairyfarm/tw/images/021/0602109_PE680178_S4.webp', 1, NULL),
(20, 11, 20, 'https://www.ikea.com.tw/dairyfarm/tw/images/210/0321002_PE514786_S4.webp', 1, NULL),
(21, 12, 21, 'https://www.ikea.com.tw/dairyfarm/tw/images/090/0609054_PE684295_S4.webp', 1, NULL),
(22, 12, 22, 'https://www.ikea.com.tw/dairyfarm/tw/images/021/0602122_PE680191_S4.webp', 1, NULL),
(23, 8, 23, 'https://www.ikea.com.tw/dairyfarm/tw/images/629/0562963_PE663653_S4.webp', 1, NULL),
(24, 13, 24, 'https://www.ikea.com.tw/dairyfarm/tw/images/406/0640669_PE699974_S4.webp', 1, NULL),
(25, 13, 25, 'https://www.ikea.com.tw/dairyfarm/tw/images/406/0640670_PE699977_S4.webp', 1, NULL),
(26, 13, 26, 'https://www.ikea.com.tw/dairyfarm/tw/images/242/0624220_PE691690_S4.webp', 1, NULL),
(27, 14, 27, 'https://www.ikea.com.tw/dairyfarm/tw/images/371/0737165_PE740925_S4.webp', 1, NULL),
(28, 14, 28, 'https://www.ikea.com.tw/dairyfarm/tw/images/371/0737166_PE740909_S4.webp', 1, NULL),
(29, 15, 29, 'https://www.ikea.com.tw/dairyfarm/tw/images/155/1115579_PE872140_S4.webp', 1, NULL),
(30, 9, 30, 'https://www.ikea.com.tw/dairyfarm/tw/images/756/0175610_PE328883_S4.webp', 1, NULL),
(31, 9, 31, 'https://www.ikea.com.tw/dairyfarm/tw/images/902/0690243_PE723167_S4.webp', 1, NULL),
(32, 16, 32, 'https://www.ikea.com.tw/dairyfarm/tw/images/093/0609308_PE684439_S4.webp', 1, NULL),
(33, 16, 33, 'https://www.ikea.com.tw/dairyfarm/tw/images/093/0609306_PE684440_S4.webp', 1, NULL),
(34, 17, 34, 'https://www.ikea.com.tw/dairyfarm/tw/images/550/0655004_PE708894_S4.webp', 1, NULL),
(35, 18, 35, 'https://www.ikea.com.tw/dairyfarm/tw/images/419/1041903_PE841183_S4.webp', 1, NULL),
(36, 18, 36, 'https://www.ikea.com.tw/dairyfarm/tw/images/139/1213901_PE911374_S4.webp', 1, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `reviews`
--

CREATE TABLE `reviews` (
  `reviewid` int(10) NOT NULL,
  `memberid` int(10) DEFAULT NULL,
  `productid` int(10) DEFAULT NULL,
  `rating` int(10) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `sales`
--

CREATE TABLE `sales` (
  `salesid` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `salesdesc` varchar(100) DEFAULT NULL,
  `discount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `sales`
--

INSERT INTO `sales` (`salesid`, `name`, `salesdesc`, `discount`) VALUES
(1, '吳活動', '無敘述', 1),
(2, '活動1', '9折活動', 0.9),
(3, '活動2', '8折活動', 0.8);

-- --------------------------------------------------------

--
-- 資料表結構 `shiprate`
--

CREATE TABLE `shiprate` (
  `shiprateid` int(10) NOT NULL,
  `region` varchar(50) DEFAULT NULL,
  `rate` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `shiprate`
--

INSERT INTO `shiprate` (`shiprateid`, `region`, `rate`) VALUES
(1, '台北', 1000),
(2, '新北', 1000),
(3, '基隆', 1000),
(4, '桃園', 1000),
(5, '宜蘭', 1000),
(6, '新竹', 1100),
(7, '苗栗', 1100),
(8, '台中', 1200),
(9, '彰化', 1200),
(10, '南投', 1300),
(11, '雲林', 1300),
(12, '嘉義', 1405),
(13, '台南', 1400),
(14, '高雄', 1500),
(15, '屏東', 1600),
(16, '台東', 1700),
(17, '花蓮', 1800),
(18, '澎湖', 2000),
(19, '金門', 2000),
(20, '連江', 3000);

-- --------------------------------------------------------

--
-- 資料表結構 `subcategory`
--

CREATE TABLE `subcategory` (
  `subcategoryid` int(10) NOT NULL,
  `maincategoryid` int(10) DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- 資料表結構 `suppliers`
--

CREATE TABLE `suppliers` (
  `supplierid` int(10) NOT NULL,
  `subcategoryid` int(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `suppliers`
--

INSERT INTO `suppliers` (`supplierid`, `subcategoryid`, `name`, `address`, `phone`, `contact`, `status`) VALUES
(1, 1, '廠商1', '台中市', '09XXX', '業務1', '合作中'),
(2, 2, '廠商2', '台北市', '090909111', '業務1', '合作中');

-- --------------------------------------------------------

--
-- 資料表結構 `website`
--

CREATE TABLE `website` (
  `websiteid` int(10) NOT NULL,
  `websitename` varchar(50) DEFAULT NULL,
  `aboutus` varchar(500) DEFAULT NULL,
  `qa` varchar(2000) DEFAULT NULL,
  `logo` varchar(300) DEFAULT NULL,
  `footerinstagramlink` varchar(100) DEFAULT NULL,
  `footerfacebooklink` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `website`
--

INSERT INTO `website` (`websiteid`, `websitename`, `aboutus`, `qa`, `logo`, `footerinstagramlink`, `footerfacebooklink`) VALUES
(1, 'KaguMachi', '家具町的品牌定位將結合上述競爭者的優勢並突破其局限，以日系極簡設計為核心，融入自然材質與耐用工藝，提供具有設計美感且功能實用的家具，同時將以合理的價格策略和精緻的細節滿足多層次客群的需求，填補高端與平價市場之間的空白，建立一個具有專屬品牌魅力的家具網站。', 'Q:我需要註冊帳號才能購物嗎？\nA:是的，您可以點擊網站右上角的「註冊」按鈕，填寫基本信息完成註冊。部分網站支持訪客結帳。\n\nQ:如果忘記密碼，該怎麼辦？\nA:請點擊「忘記密碼」並輸入您的註冊郵箱，我們會發送重設密碼的鏈接到您的郵箱。\n\nQ:有哪些支付方式可以選擇？\nA:我們支持多種支付方式，包括信用卡、支付寶、微信支付、Apple Pay 以及銀行轉賬等。\n\nQ:運費是多少？是否提供免費運送？\nA:運費視您的訂單金額和配送地址而定。訂單滿 NT$1,000 可享免費配送，詳細運費資訊請參考配送政策。\n\nQ:下單後多久能收到商品？\nA:一般情況下，訂單會在 1-2 個工作日內處理，配送時間視地區而定，通常需 3-7 個工作日。\n\nQ:下單後可以修改或取消訂單嗎？\nA:如果訂單尚未發貨，您可以聯繫我們的客服進行修改或取消。一旦訂單已發貨，則無法更改。\n\nQ:如何查詢訂單的配送進度？\nA:您可以登入帳戶並進入「我的訂單」頁面查看配送狀態。訂單發貨後，我們會通過郵件提供追蹤號。\n\nQ:商品不滿意，可以退換貨嗎？\nA:是的，您可以在收到商品後的 7 天內申請退換貨，但商品需保持原狀。詳情請參考退換貨政策。\n\nQ:有問題需要幫助，該如何聯繫客服？\nA:您可以通過「聯繫我們」頁面提交表單，或撥打客服熱線（0800-XXX-XXX）。我們的工作時間為每週一至五，上午 9:00 至下午 6:00。\n', 'https://i.imgur.com/e0PrRkG.jpg', 'https://www.instagram.com/', 'https://www.facebook.com/');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`cartsid`),
  ADD KEY `memberid` (`memberid`),
  ADD KEY `productid` (`productid`),
  ADD KEY `colorsid` (`colorsid`);

--
-- 資料表索引 `finance`
--
ALTER TABLE `finance`
  ADD PRIMARY KEY (`financeid`);

--
-- 資料表索引 `incomestatement`
--
ALTER TABLE `incomestatement`
  ADD PRIMARY KEY (`incomestatementid`),
  ADD KEY `productid` (`productid`);

--
-- 資料表索引 `logistics`
--
ALTER TABLE `logistics`
  ADD PRIMARY KEY (`logisticsid`);

--
-- 資料表索引 `maincategory`
--
ALTER TABLE `maincategory`
  ADD PRIMARY KEY (`maincategoryid`),
  ADD KEY `salesid` (`salesid`);

--
-- 資料表索引 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`memberid`);

--
-- 資料表索引 `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`messageid`);

--
-- 資料表索引 `mykeep`
--
ALTER TABLE `mykeep`
  ADD PRIMARY KEY (`mykeepid`),
  ADD KEY `memberid` (`memberid`),
  ADD KEY `productid` (`productid`);

--
-- 資料表索引 `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderdetailid`),
  ADD KEY `orderid` (`orderid`),
  ADD KEY `productid` (`productid`),
  ADD KEY `colorsid` (`colorsid`);

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `memberid` (`memberid`),
  ADD KEY `logisticsid` (`logisticsid`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`),
  ADD KEY `maincategoryid` (`maincategoryid`),
  ADD KEY `subcategoryid` (`subcategoryid`),
  ADD KEY `supplierid` (`supplierid`);

--
-- 資料表索引 `productcolors`
--
ALTER TABLE `productcolors`
  ADD PRIMARY KEY (`colorsid`),
  ADD KEY `productid` (`productid`);

--
-- 資料表索引 `productimages`
--
ALTER TABLE `productimages`
  ADD PRIMARY KEY (`imageid`),
  ADD KEY `productid` (`productid`),
  ADD KEY `colorsid` (`colorsid`);

--
-- 資料表索引 `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`reviewid`),
  ADD KEY `memberid` (`memberid`),
  ADD KEY `productid` (`productid`);

--
-- 資料表索引 `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`salesid`);

--
-- 資料表索引 `shiprate`
--
ALTER TABLE `shiprate`
  ADD PRIMARY KEY (`shiprateid`);

--
-- 資料表索引 `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`subcategoryid`),
  ADD KEY `maincategoryid` (`maincategoryid`);

--
-- 資料表索引 `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplierid`),
  ADD KEY `subcategoryid` (`subcategoryid`);

--
-- 資料表索引 `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`websiteid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `carts`
--
ALTER TABLE `carts`
  MODIFY `cartsid` int(10) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `finance`
--
ALTER TABLE `finance`
  MODIFY `financeid` int(10) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `incomestatement`
--
ALTER TABLE `incomestatement`
  MODIFY `incomestatementid` int(10) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `logistics`
--
ALTER TABLE `logistics`
  MODIFY `logisticsid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `maincategory`
--
ALTER TABLE `maincategory`
  MODIFY `maincategoryid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `members`
--
ALTER TABLE `members`
  MODIFY `memberid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `message`
--
ALTER TABLE `message`
  MODIFY `messageid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `mykeep`
--
ALTER TABLE `mykeep`
  MODIFY `mykeepid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `orderdetailid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `productcolors`
--
ALTER TABLE `productcolors`
  MODIFY `colorsid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `productimages`
--
ALTER TABLE `productimages`
  MODIFY `imageid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `reviews`
--
ALTER TABLE `reviews`
  MODIFY `reviewid` int(10) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `sales`
--
ALTER TABLE `sales`
  MODIFY `salesid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `shiprate`
--
ALTER TABLE `shiprate`
  MODIFY `shiprateid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `subcategoryid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplierid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `website`
--
ALTER TABLE `website`
  MODIFY `websiteid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`memberid`) REFERENCES `members` (`memberid`),
  ADD CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`),
  ADD CONSTRAINT `carts_ibfk_3` FOREIGN KEY (`colorsid`) REFERENCES `productcolors` (`colorsid`);

--
-- 資料表的限制式 `incomestatement`
--
ALTER TABLE `incomestatement`
  ADD CONSTRAINT `incomestatement_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`);

--
-- 資料表的限制式 `maincategory`
--
ALTER TABLE `maincategory`
  ADD CONSTRAINT `maincategory_ibfk_1` FOREIGN KEY (`salesid`) REFERENCES `sales` (`salesid`);

--
-- 資料表的限制式 `mykeep`
--
ALTER TABLE `mykeep`
  ADD CONSTRAINT `mykeep_ibfk_1` FOREIGN KEY (`memberid`) REFERENCES `members` (`memberid`),
  ADD CONSTRAINT `mykeep_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`);

--
-- 資料表的限制式 `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`orderid`) REFERENCES `orders` (`orderid`),
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`),
  ADD CONSTRAINT `orderdetails_ibfk_3` FOREIGN KEY (`colorsid`) REFERENCES `productcolors` (`colorsid`);

--
-- 資料表的限制式 `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`memberid`) REFERENCES `members` (`memberid`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`logisticsid`) REFERENCES `logistics` (`logisticsid`);

--
-- 資料表的限制式 `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`maincategoryid`) REFERENCES `maincategory` (`maincategoryid`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`subcategoryid`) REFERENCES `subcategory` (`subcategoryid`),
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`supplierid`) REFERENCES `suppliers` (`supplierid`);

--
-- 資料表的限制式 `productcolors`
--
ALTER TABLE `productcolors`
  ADD CONSTRAINT `productcolors_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`);

--
-- 資料表的限制式 `productimages`
--
ALTER TABLE `productimages`
  ADD CONSTRAINT `productimages_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`),
  ADD CONSTRAINT `productimages_ibfk_2` FOREIGN KEY (`colorsid`) REFERENCES `productcolors` (`colorsid`);

--
-- 資料表的限制式 `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`memberid`) REFERENCES `members` (`memberid`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`);

--
-- 資料表的限制式 `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`maincategoryid`) REFERENCES `maincategory` (`maincategoryid`);

--
-- 資料表的限制式 `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_ibfk_1` FOREIGN KEY (`subcategoryid`) REFERENCES `subcategory` (`subcategoryid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
