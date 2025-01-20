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
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `productid` int NOT NULL,
  `productname` varchar(100) NOT NULL,
  `productdescription` varchar(10000) DEFAULT NULL,
  `maincategoryid` int DEFAULT NULL,
  `subcategoryid` int DEFAULT NULL,
  `supplierid` int DEFAULT NULL,
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `depth` double DEFAULT NULL,
  `unitprice` int DEFAULT NULL,
  `discountprice` int DEFAULT NULL,
  `productcost` int DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `unitsold` int DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `reviewcount` int DEFAULT NULL,
  `updateat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`productid`, `productname`, `productdescription`, `maincategoryid`, `subcategoryid`, `supplierid`, `width`, `height`, `depth`, `unitprice`, `discountprice`, `productcost`, `status`, `unitsold`, `rating`, `reviewcount`, `updateat`) VALUES
(8, '三人座沙發', '棉和聚酯纖維混紡布料，染成不同顏色，賦予漂亮的效果；堅韌耐用的編織特性，布料紋路清晰  提供10年品質保證；欲知更多細則，請參閱品質保證書  這款沙發具有輕鬆時尚和簡潔的外觀，配有剪裁精美的軟布套和舒適的筒型彈簧。纖細的椅腳強化了穩固透氣外觀  簡潔和諧的線條與富有表現力的外型相互結合，在沙發上放上靠墊和萬用毯，讓它變得更個性化  備有不同尺寸和外形，大、小空間都合適  ÄPPLARYD沙發超級舒適，配有柔軟的沙發套和蓬鬆的靠枕，以及可貼合身體和承托各種姿勢的筒型彈簧，無論是坐著或是放鬆身軀躺下來也很舒適', 4, 17, 1, 231, 47, 93, 26990, NULL, 10000, 'Active', NULL, NULL, NULL, NULL),
(28, '三人座沙發', '布套的耐光等級5(抗褪色，等級1-8)；依據工業標準，耐光等級4以上適合居家空間使用  布套的耐磨性通過15,000次測試，表示家具適合居家日常生活使用  這張椅子經過測試並符合相關的強度和耐用性標準。 測試模擬產品的典型使用情況，並以體重不超過 110 公斤的人的使用為基礎', 4, 17, 2, 205, 43, 94, 16990, NULL, 9999, 'Active', NULL, NULL, NULL, NULL),
(30, '滑門衣櫃', '滑門打開時不佔空間，可提供更多空間擺放家具  對整個家庭來說，家應是安全的地方；產品附安全配件，讓你將衣櫃固定在牆上  根據空間和個人需求，可單獨使用，或搭配其他RAKKESTAD衣櫃', 1, 1, 1, 117, 176, 55, 4999, NULL, 999, 'Active', NULL, NULL, NULL, NULL),
(31, '吧台椅', '弧形座椅設計，讓你坐得更舒適  特殊表面處理，使座椅格外耐磨  單手就能調整高度  貼心的放腳處設計，讓你坐得更舒', 3, 15, 2, 38, 84, 36, 4499, NULL, 598, 'Active', NULL, NULL, NULL, '2025-01-19');

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
  MODIFY `productid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
