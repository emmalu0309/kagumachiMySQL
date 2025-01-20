-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:8889
-- 產生時間： 2025 年 01 月 20 日 03:06
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
-- 資料表結構 `members`
--

CREATE TABLE `members` (
  `memberid` int NOT NULL,
  `realname` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `postalcode` int DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `registrationdate` date DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `birthday` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `members`
--

INSERT INTO `members` (`memberid`, `realname`, `password`, `email`, `phone`, `postalcode`, `city`, `address`, `registrationdate`, `gender`, `birthday`) VALUES
(100, '布萊德大帥', '$2a$10$7.L9kYgI5OlERRxdqx02WeLj9grXznKJbHMCT744U1lKGPvIHKXWy', 'brad@big.com', '0912-345-677', 407, '台中市', '西屯區不來的大公司', '2024-11-28', 0, '1990-05-10'),
(101, '軒瑋帥哥', '$2a$10$cBM9yHV7Vr3oAqDl43ZypeZjMYfAyOIDVa5GTnZ7JtpOsbdFZ873q', 'wei1@abc.com', '0987-878-787', 500, '彰化縣', '彰化市中山路二段416號', '2025-01-01', 0, '8787-08-07'),
(102, '崇瑋老哥', '$2a$10$JeaccYSIPPOLjjmxC8eer.HkshegRQi6t.YC061KRkAOP76D1eNlG', 'wei2@abc.com', '0987-878-787', 438, '台中市', '外埔區崇瑋好色', '2025-01-01', 1, '8787-08-07');

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
  MODIFY `memberid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
