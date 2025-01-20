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
-- 資料表結構 `members`
--

CREATE TABLE `members` (
  `memberid` int(11) NOT NULL,
  `realname` varchar(100) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `postalcode` int(11) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `registrationdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `members`
--

INSERT INTO `members` (`memberid`, `realname`, `gender`, `password`, `email`, `phone`, `birthday`, `postalcode`, `city`, `address`, `registrationdate`) VALUES
(1, 'Rocky01', 1, '123456', 'aaa01@yahoo.com.tw', '098765432111', '1995-06-06', 100, '臺北市', '中正區', '2025-01-19'),
(2, 'Rocky02', 1, '123456', 'aaa02@yahoo.com.tw', '0987654321', '1995-06-06', 220, '新北市', '板橋區', '2025-01-19'),
(3, 'Rocky03', 1, '123456', 'aaa03@yahoo.com.tw', '0987654321', '1995-06-06', 200, '基隆市', '仁愛區', '2025-01-19'),
(4, 'Rocky04', 1, '123456', 'aaa04@yahoo.com.tw', '0987654321', '1995-06-06', 330, '桃園市', '桃園區', '2025-01-19'),
(5, 'Rocky05', 1, '123456', 'aaa05@yahoo.com.tw', '0987654321', '1995-06-06', 302, '新竹縣', '竹北市', '2025-01-19'),
(6, 'Rocky06', 1, '123456', 'aaa06@yahoo.com.tw', '0987654321', '1995-06-06', 300, '新竹市', '東區', '2025-01-19'),
(7, 'Rocky07', 1, '123456', 'aaa07@yahoo.com.tw', '0987654321', '1995-06-06', 360, '苗栗縣', '苗栗市', '2025-01-19'),
(8, 'Rocky08', 1, '123456', 'aaa08@yahoo.com.tw', '0987654321', '1995-06-06', 400, '臺中市', '中區', '2025-01-19'),
(9, 'Rocky09', 1, '123456', 'aaa09@yahoo.com.tw', '0987654321', '1995-06-06', 540, '南投縣', '南投市', '2025-01-19'),
(10, 'Rocky10', 1, '123456', 'aaa10@yahoo.com.tw', '0987654321', '1995-06-06', 500, '彰化縣', '彰化市', '2025-01-19'),
(11, 'Rocky11', 1, '123456', 'aaa11@yahoo.com.tw', '0987654321', '1995-06-06', 640, '雲林縣', '斗六市', '2025-01-19'),
(12, 'Rocky12', 1, '123456', 'aaa12@yahoo.com.tw', '0987654321', '1995-06-06', 612, '嘉義縣', '太保市', '2025-01-19'),
(13, 'Rocky13', 1, '123456', 'aaa13@yahoo.com.tw', '0987654321', '1995-06-06', 600, '嘉義市', '東區', '2025-01-19'),
(14, 'Rocky14', 1, '123456', 'aaa14@yahoo.com.tw', '0987654321', '1995-06-06', 700, '臺南市', '中西區', '2025-01-19'),
(15, 'Rocky15', 1, '123456', 'aaa15@yahoo.com.tw', '0987654321', '1995-06-06', 811, '高雄市', '楠梓區', '2025-01-19'),
(16, 'Rocky16', 1, '123456', 'aaa16@yahoo.com.tw', '0987654321', '1995-06-06', 900, '屏東縣', '屏東市', '2025-01-19'),
(17, 'Rocky17', 1, '123456', 'aaa17@yahoo.com.tw', '0987654321', '1995-06-06', 260, '宜蘭縣', '宜蘭市', '2025-01-19'),
(18, 'Rocky18', 1, '123456', 'aaa18@yahoo.com.tw', '0987654321', '1995-06-06', 970, '花蓮縣', '花蓮市', '2025-01-19'),
(19, 'Rocky19', 1, '123456', 'aaa19@yahoo.com.tw', '0987654321', '1995-06-06', 950, '臺東縣', '臺東市', '2025-01-19'),
(20, 'Rocky20', 1, '123456', 'aaa20@yahoo.com.tw', '0987654321', '1995-06-06', 880, '澎湖縣', '馬公市', '2025-01-19'),
(21, 'Rocky21', 1, '123456', 'aaa21@yahoo.com.tw', '0987654321', '1995-06-06', 893, '金門縣', '金城鎮', '2025-01-19'),
(22, 'Rocky22', 1, '123456', 'aaa22@yahoo.com.tw', '0987654321', '1995-06-06', 209, '連江縣', '南竿鄉', '2025-01-19');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`memberid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `members`
--
ALTER TABLE `members`
  MODIFY `memberid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
