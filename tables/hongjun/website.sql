-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:8889
-- 產生時間： 2025 年 01 月 20 日 01:31
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
-- 資料表結構 `website`
--

CREATE TABLE `website` (
  `websiteid` int NOT NULL,
  `websitename` varchar(50) DEFAULT NULL,
  `aboutus` varchar(500) DEFAULT NULL,
  `qa` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `logo` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
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
-- 資料表索引 `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`websiteid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `website`
--
ALTER TABLE `website`
  MODIFY `websiteid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
