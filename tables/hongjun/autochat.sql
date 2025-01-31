-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:8889
-- 產生時間： 2025 年 01 月 31 日 07:48
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
-- 資料表結構 `autochat`
--

CREATE TABLE `autochat` (
  `autochatid` int NOT NULL,
  `keywords` varchar(100) DEFAULT NULL,
  `answer` varchar(300) DEFAULT NULL,
  `isautochat` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `autochat`
--

INSERT INTO `autochat` (`autochatid`, `keywords`, `answer`, `isautochat`) VALUES
(1, '休假,放假', '(此為自動回覆訊息)\n\n我們的客服時間為週一至週五 09:00-18:00（國定假日除外）。如果您在休假期間有問題，請先參考Q&A或透過訂單系統查詢進度，客服將在上班後盡快回覆您！', 1),
(2, '退費,退貨,換貨', '(此為自動回覆訊息)\n\n很抱歉，我們的商品不提供退貨或換貨服務。請在購買前仔細確認商品資訊，如有任何疑問，歡迎在下單前聯繫客服，我們很樂意為您解答。', 1),
(3, '付款,付費,繳費', '(此為自動回覆訊息)\n\n我們提供信用卡付款與貨到付款，讓您選擇最方便的支付方式。', 1),
(4, '配送,運送', '(此為自動回覆訊息)\n\n我們的配送方式包含黑貓宅急便與大榮貨運，將以最快速、安全的方式將您的商品送達指定地址。', 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `autochat`
--
ALTER TABLE `autochat`
  ADD PRIMARY KEY (`autochatid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `autochat`
--
ALTER TABLE `autochat`
  MODIFY `autochatid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
