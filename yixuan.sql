-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-01-10 22:39:39
-- 伺服器版本： 10.4.24-MariaDB
-- PHP 版本： 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `yixuan`
--

-- --------------------------------------------------------

--
-- 資料表結構 `company_data`
--

CREATE TABLE `company_data` (
  `company_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `company_phone` int(100) NOT NULL,
  `contact_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_phone` int(100) NOT NULL,
  `img_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img_2` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `company_data`
--

INSERT INTO `company_data` (`company_name`, `company_phone`, `contact_name`, `contact_phone`, `img_1`, `img_2`) VALUES
('一軒文教社', 73103316, '柯榮智', 931956903, 'https://cdn.discordapp.com/attachments/887154593392390198/1193186523202453614/Messenger_creation_4e061616-d46f-4eb5-9e9f-3b07f8480539.jpg?ex=65abcc8b&is=6599578b&hm=25058cb9596de8cecacdbdb50d503f6cd0bb0e8057e5074c0aa73d17eacc741e&', 'https://cdn.discordapp.com/attachments/887154593392390198/1193180309311729734/image0.jpg?ex=65abc6c1&is=659951c1&hm=10af3f51fb724993c1dd219b25a4bed33a38cdca7f205aa3c2490f22cccb13d0&');

-- --------------------------------------------------------

--
-- 資料表結構 `main`
--

CREATE TABLE `main` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `main`
--

INSERT INTO `main` (`name`, `type`) VALUES
('作文簿', 'writing'),
('國語簿', 'chinese'),
('數學簿', 'math'),
('桌墊', 'table_pad'),
('生字簿', 'word'),
('英文簿', 'english'),
('音樂簿', 'music');

-- --------------------------------------------------------

--
-- 資料表結構 `product_data`
--

CREATE TABLE `product_data` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(255) NOT NULL,
  `img_front` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img_back` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img_content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_describe` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `product_data`
--

INSERT INTO `product_data` (`id`, `name`, `price`, `img_front`, `img_back`, `img_content`, `type`, `product_describe`) VALUES
('A13027', '空白簿', 100, 'https://cdn.discordapp.com/attachments/1194173872073875476/1194255893852860549/20240109_202508.jpg?ex=65afb079&is=659d3b79&hm=d13959dad9023e43d912045465bdaf6c370ed0e7ae91f8d0fbfae5e813adee86&', 'https://cdn.discordapp.com/attachments/1194173872073875476/1194255894351970335/20240109_202551.jpg?ex=65afb079&is=659d3b79&hm=aaf9a3685b42121b0f74532d881040cb154dc01b2bf85efb90597e2435ed03a1&', 'https://cdn.discordapp.com/attachments/1194173872073875476/1194255894746243123/20240109_202618.jpg?ex=65afb079&is=659d3b79&hm=3e1272d37ef7270060d8c5c38b12e8628eee9a32f9dd21694aabc0255d1f0037&', '數學簿', '數學作業簿 空白\r\n\r\n封面：200磅銅西卡紙\r\n內頁：80磅米色環保道\r\n林紙\r\n白色值：60~84\r\n紙色b值：正值'),
('A13031', '音樂簿', 100, 'https://cdn.discordapp.com/attachments/1194174208847118387/1194220913453973524/20240109_180331.jpg?ex=65af8fe5&is=659d1ae5&hm=fa6244a51d41f5df1ab35477cde5b2e40ae0a4196b95e045ef9de8e727f558ed&', 'https://cdn.discordapp.com/attachments/1194174208847118387/1194220926535995402/20240109_180433.jpg?ex=65af8fe8&is=659d1ae8&hm=eefbbe21755a04e33ae9ec1802e05d8c063d48a5f41f18066729ceeccfdd13e8&', 'https://cdn.discordapp.com/attachments/1194174208847118387/1194220938997284884/20240109_180511.jpg?ex=65af8feb&is=659d1aeb&hm=fd10fa10053d53a9c7d3b29cfc05aaf11f31901c3282a08d22e3a7f0eeed2891&', '音樂簿', '音樂簿\r\n\r\n封面：200磅銅西卡紙\r\n內頁：80磅米色環保\r\n道林紙\r\n白色值：60~84\r\n紙色b值：正值'),
('A16003', '16K_8x14', 100, 'https://cdn.discordapp.com/attachments/1194173805862588487/1194264782551924806/20240109_210102.jpg?ex=65afb8c0&is=659d43c0&hm=3f75f0dc4649ffc187b05d2c1acd4f9dda4f216dbc127a9bf4a44c7a7c19ff31&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194264783109771294/20240109_210117.jpg?ex=65afb8c0&is=659d43c0&hm=2311071a962c96016358b07ef72c0eda30ee2585540eb043e783300a004130d8&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194264783806021632/20240109_210129.jpg?ex=65afb8c0&is=659d43c0&hm=f91c5b4180c7ee50c1ba0dd0273cc77c687eb9b37c0ef57f5fd9ffb4f3060751&', '國語簿', '國語作業簿 8x14格\r\n\r\n封面：200磅銅西卡紙\r\n內頁：80磅米色環保道\r\n林紙\r\n白色值：60~84\r\n紙色b值：正值'),
('A16004', '16K_直行簿', 100, 'https://cdn.discordapp.com/attachments/1194173805862588487/1194262278103638076/20240109_205104.jpg?ex=65afb66b&is=659d416b&hm=93539acb0d6438c6c4807b504224c0791128f842a269811bc0892c20dd75cc86&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194262278531448852/20240109_205116.jpg?ex=65afb66b&is=659d416b&hm=de0a62b879861b28aee786752fbed282b929b05fce5b1e497595a6dab4c3351c&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194262278984441917/20240109_205136.jpg?ex=65afb66b&is=659d416b&hm=a27407c88268a12415db93d03bc9f56995cac7d774046b7a82622fa8acb4566c&', '國語簿', '國語直行簿 13行\r\n\r\n封面：200磅銅西卡紙\r\n內頁：80磅米色環保道\r\n林紙\r\n白色值：60~84\r\n紙色b值：正值'),
('A16009', '英語練習簿', 100, 'https://cdn.discordapp.com/attachments/1194174456243961926/1194221824372899880/20240109_181031.jpg?ex=65af90be&is=659d1bbe&hm=0e79940bfea7c19f69571e6753f1e59ca34ad275378482ff6de4a28e967a8f06&', 'https://cdn.discordapp.com/attachments/1194174456243961926/1194221839015215224/20240109_181044.jpg?ex=65af90c1&is=659d1bc1&hm=9963cfa97a110fcbc318c48a95977d3744a0f3b4230e5f9872abb2e8f3e13b67&', 'https://cdn.discordapp.com/attachments/1194174456243961926/1194221852038549614/20240109_181102.jpg?ex=65af90c5&is=659d1bc5&hm=aa63ce623f2dc4e68e8fa8d6288f3023431c6b3274bb1582883cb3a6a8c2c39d&', '英文簿', 'English Exercise Book\r\n英語練習簿 (附測驗頁 \r\n\r\n封面：200磅銅西卡紙\r\n內頁：80磅米色環保\r\n道林紙\r\n白色值：60~84\r\n紙色b值：正值'),
('A2002', '生字查字典', 100, 'https://cdn.discordapp.com/attachments/1194174043495075864/1194202379504062494/20240109_164911.jpg?ex=65af7ea2&is=659d09a2&hm=720e0a2db6c4631ff3fcebb08cb3016eefee689f9bdb5afe1a4f588060a056f1&', 'https://cdn.discordapp.com/attachments/1194174043495075864/1194202391134871643/20240109_164936.jpg?ex=65af7ea5&is=659d09a5&hm=78355546f22f77b9f81b63175b4b945f6fc3a27db6ed0c9f5219d34a1151c2bc&', 'https://cdn.discordapp.com/attachments/1194174043495075864/1194202402878922802/20240109_165134.jpg?ex=65af7ea8&is=659d09a8&hm=416248bfeb76dd41b81238647efe22a56227078c593acd79faa3876ead8b9c32&', '生字簿', '生字查字典練習簿\r\n\r\n16K\r\n每本48頁'),
('C13001', '16K_8x14', 100, 'https://cdn.discordapp.com/attachments/1194173805862588487/1194265160987193374/20240109_210225.jpg?ex=65afb91a&is=659d441a&hm=e221f0a021a04b6836d7e7d2fa3733341c70bd04ed48b3404c4ee3e95ef22d29&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194265161377251399/20240109_210248.jpg?ex=65afb91a&is=659d441a&hm=5e4546690ad2575cf5a7bf0eaf1a5e3d9fe8d0e88dcf5dee1878aa61149ffd0e&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194265161842839612/20240109_210311.jpg?ex=65afb91a&is=659d441a&hm=c8a515375e47cb0671d24961c368e89e347ade1aaeabac0630ac6ebcf28a4507&', '國語簿', '國語作業簿 8x14格\r\n\r\n封面：200磅銅西卡紙\r\n內頁：80磅米色環保道\r\n林紙\r\n白色值：60~84\r\n紙色b值：正值'),
('C13035', '16K_6x10', 100, 'https://cdn.discordapp.com/attachments/1194173805862588487/1194268524764471336/20240109_211547.jpg?ex=65afbc3c&is=659d473c&hm=aeb751f9327c19c01a81a68a4f83612296b2087ad1a7209e0f80fb985249fd87&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194268525251006465/20240109_211605.jpg?ex=65afbc3c&is=659d473c&hm=89f140ee491ef2766a48303623a7634bc88007d77e17467dd2c7e1c092243207&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194268525699792987/20240109_211629.jpg?ex=65afbc3c&is=659d473c&hm=2e9a993a4e32872961526e7517c2cbcf7ef4e1fd4dacfe78855fe5fe8d29022e&', '國語簿', '國語作業簿 6x10格\r\n\r\n封面：200磅銅西卡紙\r\n內頁：80磅米色環保道\r\n林紙\r\n白色值：60~84\r\n紙色b值：正值'),
('C13038', '16K_6x12', 100, 'https://cdn.discordapp.com/attachments/1194173805862588487/1194267839981428808/20240109_211321.jpg?ex=65afbb99&is=659d4699&hm=cbe2d87e414ca3bdab8f839c168d2cec35af8429c85b16e65e91ea500a224608&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194267840442814484/20240109_211332.jpg?ex=65afbb99&is=659d4699&hm=9d003e40a4d3e11605408258acf0e8d530c0ae28f625f8c00ecec47cd0b91744&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194267840954507374/20240109_211348.jpg?ex=65afbb99&is=659d4699&hm=ee89d7c8fc1f0e1476e863ced620f33ddde156f241183d8a857bf445e108e51c&', '國語簿', '國語作業簿 6x12格（無訂正欄）\r\n\r\n封面：200磅銅西卡紙\r\n內頁：80磅米色環保道\r\n林紙\r\n白色值：60~84\r\n紙色b值：正值'),
('C13049', '8格', 100, 'https://cdn.discordapp.com/attachments/1194173872073875476/1194256634596315169/20240109_202740.jpg?ex=65afb129&is=659d3c29&hm=34e4bb3ad923a7e5030bdfd064307a7f341757639dd3042b35ab65c36f3fc593&', 'https://cdn.discordapp.com/attachments/1194173872073875476/1194256635120586782/20240109_202755.jpg?ex=65afb12a&is=659d3c2a&hm=849a8cd7e4df9b8986d680fd0f98846667d09210db1421d2031d124ec8e8c913&', 'https://cdn.discordapp.com/attachments/1194173872073875476/1194256635611328602/20240109_202814.jpg?ex=65afb12a&is=659d3c2a&hm=fe47c5de6c762c1572725e27bc19dafca3f7634601b3ef9e7ab943566f8f6a44&', '數學簿', '數學作業簿 8格\r\n\r\n封面：200磅銅西卡紙\r\n內頁：80磅米色環保道\r\n林紙\r\n白色值：60~84\r\n紙色b值：正值'),
('C16009', '英語練習簿', 100, 'https://cdn.discordapp.com/attachments/1194174456243961926/1194260853214683237/20240109_204524.jpg?ex=65afb517&is=659d4017&hm=cec704a4778f47391e06325bcefa94c834a7fc7897c60fc4229b21c4b80d143b&', 'https://cdn.discordapp.com/attachments/1194174456243961926/1194260853718007851/20240109_204534.jpg?ex=65afb517&is=659d4017&hm=1c4a5b076c004b5ebb46150f5f1bfe6ef7b038a7fc0329f9458f1b10d7526ac2&', 'https://cdn.discordapp.com/attachments/1194174456243961926/1194260854200348692/20240109_204559.jpg?ex=65afb517&is=659d4017&hm=cd43dc87b8cd32aa4db43c5a516e27d4e9773a0e9b8187c03042adadb8491a2c&', '英文簿', 'English Exercise Book\r\n英語練習簿 (附測驗頁 \r\n\r\n封面：200磅銅西卡紙\r\n內頁：80磅米色環保\r\n道林紙\r\n白色值：60~84'),
('D16001', '16K_6x10', 100, 'https://cdn.discordapp.com/attachments/1194173805862588487/1194269476468838451/20240109_211937.jpg?ex=65afbd1f&is=659d481f&hm=45ca02c49d25315574e00f9ce272db5b888e5ad26d970d963771c5daadd843c1&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194269476955365437/20240109_211947.jpg?ex=65afbd1f&is=659d481f&hm=b5147d3d3a368dc6f5ce2b513b1435361eebfd23918fcc53f4738f2b16647736&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194269477471260762/20240109_212013.jpg?ex=65afbd1f&is=659d481f&hm=f816ec4cb32d54a0a625a8471b4254708c93551e03bb8f9e787b1137bc45b2a8&', '國語簿', '國語作業簿 6x10格\r\n\r\n封面：200磅銅西卡紙\r\n內頁：80磅米色環保道\r\n林紙\r\n白色值：60~84\r\n紙色b值：正值'),
('D16002', '16K_7x12', 100, 'https://cdn.discordapp.com/attachments/1194173805862588487/1194266524920320011/20240109_210802.jpg?ex=65afba5f&is=659d455f&hm=527c3c3a77fec2c089b74d8e97c051863050b7ba9aef3f1b4649c7c94243f086&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194266525360734268/20240109_210816.jpg?ex=65afba60&is=659d4560&hm=bbb17efc08af7fcbc0005733aac3e76c0ba6f2bfb284568ca5831428c4475a6e&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194266525784346684/20240109_210835.jpg?ex=65afba60&is=659d4560&hm=d7b98c549b5000b7b21bbb89dca869068a02b3d0cad0c113ec16dd55eba01880&', '國語簿', '國語作業簿 7x12格\r\n\r\n封面：200磅銅西卡紙\r\n內頁：80磅米色環保道\r\n林紙\r\n白色值：60~84\r\n紙色b值：正值'),
('D16004', '16K_直行簿', 100, 'https://cdn.discordapp.com/attachments/1194173805862588487/1194262881831751890/20240109_205334.jpg?ex=65afb6fb&is=659d41fb&hm=a45901192dd89aa621dffa24894318f7016aebdb98908e1f7b14f0637c0826e3&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194262882326687854/20240109_205344.jpg?ex=65afb6fb&is=659d41fb&hm=ede172649fccd98b101f1bbe1112e99d71141a5ca1278d814736748adbc71d9a&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194262882838392922/20240109_205408.jpg?ex=65afb6fb&is=659d41fb&hm=fe92a6cfb2a2ae0de1b602927c3a6d22656e09eb21a187c1fb4a863081bf1ccd&', '國語簿', '國語直行簿 13行\r\n\r\n封面：200磅銅西卡紙\r\n內頁：80磅米色環保道\r\n林紙\r\n白色值：60~84\r\n紙色b值：正值'),
('D16008', '英語練習簿', 100, 'https://cdn.discordapp.com/attachments/1194174456243961926/1194257371409682442/20240109_203106.jpg?ex=65afb1d9&is=659d3cd9&hm=5d7ecb9fb0ccf53c8608f6f726dc20123517f5be6612d760da9b4fdd22dfed46&', 'https://cdn.discordapp.com/attachments/1194174456243961926/1194257371904606280/20240109_203142.jpg?ex=65afb1d9&is=659d3cd9&hm=36edc12e0c7b2a31167a6819fc755d5a78437bd66a082897e5d854737759bb60&', 'https://cdn.discordapp.com/attachments/1194174456243961926/1194257372395356240/20240109_203207.jpg?ex=65afb1d9&is=659d3cd9&hm=38305c5de9e7ab6234cc6c203d3d339cc1e2af5a276873c270db539eb2f2e4df&', '英文簿', 'English Exercise Book\r\n英語練習簿\r\n\r\n封面：200磅銅西卡紙\r\n內頁：80磅米色環保\r\n道林紙\r\n白色值：60~84'),
('D16009', '英語練習簿', 100, 'https://cdn.discordapp.com/attachments/1194174456243961926/1194257915754848316/20240109_203327.jpg?ex=65afb25b&is=659d3d5b&hm=6db9f28dcfcd4c2562fc5822fde52f3a9c6a390fa6d122bcf98d3ac5dcd61693&', 'https://cdn.discordapp.com/attachments/1194174456243961926/1194257916228816946/20240109_203340.jpg?ex=65afb25b&is=659d3d5b&hm=89208a9cb3ece2a1ff9057b76477b25bba7c7b6b43885609516db920e0f37b0a&', 'https://cdn.discordapp.com/attachments/1194174456243961926/1194257916719546448/20240109_203359.jpg?ex=65afb25b&is=659d3d5b&hm=bff9170079d9718652aa4fa53f8d28b914805e4053eea686a3025997d62e9c41&', '英文簿', 'English Exercise Book\r\n英語練習簿 (附測驗頁 \r\n\r\n封面：200磅銅西卡紙\r\n內頁：80磅米色環保\r\n道林紙\r\n白色值：60~84'),
('DA002', '語詞查字典', 100, 'https://cdn.discordapp.com/attachments/1194174043495075864/1194200358818426932/20240109_154855.jpg?ex=65af7cc0&is=659d07c0&hm=0c3675418094c7fb23e9d2affa09db1f46c739f52d6dd0959f0e68eaff0819a1&', 'https://cdn.discordapp.com/attachments/1194174043495075864/1194200371023839322/20240109_154927.jpg?ex=65af7cc3&is=659d07c3&hm=b2f592cd16d73e809a7ffabf8a3dececeb713dd83f22bf6b3d14cb8273c49cde&', 'https://cdn.discordapp.com/attachments/1194174043495075864/1194200382356852829/20240109_155002.jpg?ex=65af7cc6&is=659d07c6&hm=1646e558a6739300a01acf2adde909336ac95c17a14dca3c5bad5542f7f885f1&', '生字簿', '生字語詞查字典 練習簿\r\n\r\n多樣性學習:\r\n課本生字習寫\r\n查字典,造詞\r\n造句練習'),
('E16001', '16K_6x10', 100, 'https://cdn.discordapp.com/attachments/1194173805862588487/1194269076265123941/20240109_211826.jpg?ex=65afbcc0&is=659d47c0&hm=cb8c2897014ac7173b9b5ab8441bcb475d6f30457034363c58f54190bfbc4b97&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194269077049462814/20240109_211833.jpg?ex=65afbcc0&is=659d47c0&hm=dfad5a663999be4afede14e69aab64d26fecd702c556fa6d16658683698161c9&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194269077515026503/20240109_211845.jpg?ex=65afbcc0&is=659d47c0&hm=b5633614cbb792fa0946a9fab25339821b1bbe38838c5508c340771c00354b37&', '國語簿', '國語作業簿 6x10格\r\n\r\n封面：200磅銅西卡紙\r\n內頁：80磅米色環保道\r\n林紙\r\n白色值：60~84\r\n紙色b值：正值'),
('E16002', '16K_7x12', 100, 'https://cdn.discordapp.com/attachments/1194173805862588487/1194266848666075267/20240109_210917.jpg?ex=65afbaad&is=659d45ad&hm=4809f60e8e5b8cda01f2a24d1e64756efaa2aa9993ed96032d7cdd4f1a70c2e3&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194266849131647056/20240109_210927.jpg?ex=65afbaad&is=659d45ad&hm=a5d0a76c65031adfb22a90ae1bd5084f6c2a8ab14287d96fe8d611d0dd929ac0&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194266849634943006/20240109_210953.jpg?ex=65afbaad&is=659d45ad&hm=c2504f8495318211d3b02828d19b967f6f0dde7fb31cf3b99bea4eac117db0e7&', '國語簿', '國語作業簿 7x12格\r\n\r\n封面：200磅銅西卡紙\r\n內頁：80磅米色環保道\r\n林紙\r\n白色值：60~84\r\n紙色b值：正值'),
('E16003', '16K_8x14', 100, 'https://cdn.discordapp.com/attachments/1194173805862588487/1194265594053279784/20240109_210407.jpg?ex=65afb982&is=659d4482&hm=8bf13f13f81c947e664ee77a9cf53cf15c58c72ad3ac01ecf8c1860744ad3016&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194265594648875058/20240109_210418.jpg?ex=65afb982&is=659d4482&hm=e21ab47ffce1c3505a8e02cc8241c577605ca1cbeab7b3899237b07e01b3a4b2&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194265595173142598/20240109_210454.jpg?ex=65afb982&is=659d4482&hm=9313c1d47fc06f4eab7d23d39b0cc3f085fb3b30e45750d05bfe7be70f6d5d99&', '國語簿', '國語作業簿 8x14格\r\n\r\n封面：200磅銅西卡紙\r\n內頁：80磅米色環保道\r\n林紙\r\n白色值：60~84\r\n紙色b值：正值'),
('E16005', '生字語詞簿', 100, 'https://cdn.discordapp.com/attachments/1194174043495075864/1194209251451732059/20240109_171034.jpg?ex=65af8508&is=659d1008&hm=ebad0703910cd1d5bfc9a8a1dc459a0a2e8e2d5b4dc49666898ed9dc3429637d&', 'https://cdn.discordapp.com/attachments/1194174043495075864/1194209265435541515/20240109_171156.jpg?ex=65af850c&is=659d100c&hm=e3231c2da65f492bf4d989ad828c5a84e7b07ee9b9d66a90d88e828c30b6d210&', 'https://cdn.discordapp.com/attachments/1194174043495075864/1194209894333681714/20240109_171231.jpg?ex=65af85a2&is=659d10a2&hm=4f8d0ded33823953a22eb2d42b5a8922f0a3c826552feacddec38dde3fce2add&', '生字簿', '生字語詞簿 16K\r\n\r\n封面：200磅銅西卡紙\r\n內頁：80磅米色環保\r\n道林紙\r\n白色值：60~84\r\n紙色b值：正值 '),
('EA401', '菊8K_6x12', 100, 'https://cdn.discordapp.com/attachments/1194173805862588487/1194217757345062922/20240109_175400.jpg?ex=65af8cf4&is=659d17f4&hm=2d50f7b9edb805b383fcb24c92aa4e08a39bdec14a3303a36d03a47fecfb3143&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194217769122664509/20240109_175418.jpg?ex=65af8cf7&is=659d17f7&hm=d7579ecd210129977d79145c899db26b2009e19bac75fbe4d0e4e077a0bdb485&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194217781005123615/20240109_175449.jpg?ex=65af8cfa&is=659d17fa&hm=e8308f5bdc42e43e6eb36f9946651e9204898926c6b0b6b88c27d870072dcecc&', '國語簿', '菊8K國語簿(6x12)\r\n\r\n封面：200磅銅西卡紙\r\n裝訂：膠裝\r\n內頁：80磅米色環保道\r\n林紙'),
('EWB001', '英語練習簿 ', 100, 'https://cdn.discordapp.com/attachments/1194174456243961926/1194260055659393124/20240109_204218.jpg?ex=65afb459&is=659d3f59&hm=0fe89c10446fb520f09e2f157b77409de8e5e56bc8cd5cfd39b710b7723f373f&', 'https://cdn.discordapp.com/attachments/1194174456243961926/1194260056196255764/20240109_204233.jpg?ex=65afb459&is=659d3f59&hm=17fd6387443756f5ba184f185549d4a1d885c16be4522fb041f4493bcd322084&', 'https://cdn.discordapp.com/attachments/1194174456243961926/1194260056724746361/20240109_204251.jpg?ex=65afb459&is=659d3f59&hm=ce07d0af54e65e21cb2198fa8b4f7cdc4ccbe7998fe01cc0358629fd8f4eaf37&', '英文簿', 'My English Writing Book\r\n英語練習簿 \r\n\r\n含「 可撕式測驗紙 」\r\n與 「我的閱讀筆記 」\r\n內頁：80磅道林紙\r\n白度：80 - 85\r\n光澤度：15以下'),
('G16001', '16K_6x10', 100, 'https://cdn.discordapp.com/attachments/1194173805862588487/1194268834564157510/20240109_211703.jpg?ex=65afbc86&is=659d4786&hm=384446653f5f295262de035cf921c65e1903b735098e61ad8b73dad32e29498a&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194268835184902214/20240109_211714.jpg?ex=65afbc86&is=659d4786&hm=1f99d15dabfd63b0380566b5570ba5f482b2335b57ee43d0b4708e268c272ec9&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194268835579187260/20240109_211746.jpg?ex=65afbc86&is=659d4786&hm=3a190ff5bc256b9b66546e5b55c2f5b4d8e52fa837da18936e5aa66255b20872&', '國語簿', '國語作業簿 6x10格\r\n\r\n封面：200磅銅西卡紙\r\n內頁：80磅米色環保道\r\n林紙\r\n白色值：60~84\r\n紙色b值：正值'),
('G16002', '16K_7x12', 100, 'https://cdn.discordapp.com/attachments/1194173805862588487/1194267425567412234/20240109_211057.jpg?ex=65afbb36&is=659d4636&hm=84edabce06265cda954fdaa2045f132883ccb5e6fc86095b8ef88532332dffb7&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194267426091708516/20240109_211109.jpg?ex=65afbb36&is=659d4636&hm=0be5cb862ecd03d332b01e3267e5929c49b61835dbd523ceb97b1710e332e726&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194267426553086043/20240109_211209.jpg?ex=65afbb36&is=659d4636&hm=dd4c2323085649dcf74b717bb0dff808e5e94834553932925823abb04546d3bf&', '國語簿', '國語作業簿 7x12格\r\n\r\n封面：200磅銅西卡紙\r\n內頁：80磅米色環保道\r\n林紙\r\n白色值：60~84\r\n紙色b值：正值'),
('G16003', '16K_8x14', 100, 'https://cdn.discordapp.com/attachments/1194173805862588487/1194266004742754314/20240109_210602.jpg?ex=65afb9e3&is=659d44e3&hm=71734f0f0d5f78317868799be4189d60becfc4ade2810cc3e8f79e6fd7256dd6&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194266005363490836/20240109_210610.jpg?ex=65afb9e4&is=659d44e4&hm=81a56b587c80df3bdc4b7365ea28be42bb678c46aa3a833c1be9343ea5a8b369&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194266006030393405/20240109_210633.jpg?ex=65afb9e4&is=659d44e4&hm=813d4c8f1e482f20b4b7535172caa0dc4869888ba1d61adab51a68df33355d5e&', '國語簿', '國語作業簿 8x14格\r\n\r\n封面：200磅銅西卡紙\r\n內頁：80磅米色環保道\r\n林紙\r\n白色值：60~84\r\n紙色b值：正值'),
('G16004', '16K_直行簿', 100, 'https://cdn.discordapp.com/attachments/1194173805862588487/1194263716846391307/20240109_205530.jpg?ex=65afb7c2&is=659d42c2&hm=3639fa499b6045f931c8a1a4e1d8be059c223eadfb37f86de89449907a558be6&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194263717437784167/20240109_205547.jpg?ex=65afb7c2&is=659d42c2&hm=c725f1233f32623e8c5b5d72373da814b78c29f0253852959d8bd6557891bb5b&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194263717999824977/20240109_205600.jpg?ex=65afb7c2&is=659d42c2&hm=f351e5f8105452b4757006084d9858908078f55a7c8f103164b318ce70439821&', '國語簿', '國語直行簿 13行\r\n\r\n封面：200磅銅西卡紙\r\n內頁：80磅米色環保道\r\n林紙\r\n白色值：60~84\r\n紙色b值：正值'),
('G16007', '10格', 100, 'https://cdn.discordapp.com/attachments/1194173872073875476/1194255168557023323/20240109_202227.jpg?ex=65afafcc&is=659d3acc&hm=d83c2e810d971be42532b4ced76dc0311b6037a2ce7e6b619d240803fc1a9dea&', 'https://cdn.discordapp.com/attachments/1194173872073875476/1194255169056157829/20240109_202240.jpg?ex=65afafcc&is=659d3acc&hm=fcb699f0bf0f62d831909ddffbc1e794e6f3b9bcba0cc9a64d37558d39d8ec1d&', 'https://cdn.discordapp.com/attachments/1194173872073875476/1194255169513345085/20240109_202309.jpg?ex=65afafcc&is=659d3acc&hm=90dc96a60b83b94ad9db5ee45ebc22781f22b86ffa0ebe44ebf757490a7b7692&', '數學簿', '數學作業簿 10格\r\n\r\n封面：200磅銅西卡紙\r\n內頁：80磅米色環保道\r\n林紙\r\n白色值：60~84\r\n紙色b值：正值'),
('G16009', '英語練習簿', 100, 'https://cdn.discordapp.com/attachments/1194174456243961926/1194224182293180457/20240109_181950.jpg?ex=65af92f0&is=659d1df0&hm=3b7681c2cd560f516a9e12691d5850aa21b5e40ae50b82340ce2305f2a13f35d&', 'https://cdn.discordapp.com/attachments/1194174456243961926/1194224201716994119/20240109_182004.jpg?ex=65af92f5&is=659d1df5&hm=91db4e7a596059e43bc14c0e3b0a3f6fc66609f69c1b9a7f1f55cb85ddd31c0c&', 'https://cdn.discordapp.com/attachments/1194174456243961926/1194224215583371295/20240109_182021.jpg?ex=65af92f8&is=659d1df8&hm=8ce5d984583c3c0dd783f841184628f7dc1bbb4b49be121124303e01f56b2dd7&', '英文簿', 'English Exercise Book\r\n英語練習簿 10行 \r\n(附測驗頁 \r\n\r\n封面：200磅銅西卡紙\r\n內頁：80磅米色環保\r\n道林紙\r\n白色值：60~84\r\n紙色b值：正值'),
('G16012', '16K_8x16', 100, 'https://cdn.discordapp.com/attachments/1194173805862588487/1194264237984456825/20240109_205842.jpg?ex=65afb83e&is=659d433e&hm=d9f4a5d0e64ee33064c2f54de81cba5fa4089f28635e9f7f33de110c59f594c2&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194264238471000135/20240109_205852.jpg?ex=65afb83e&is=659d433e&hm=f2fce37c88f9575b3267f63f40c502c5878269d427bde4cc1bba21240a4261cc&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194264238928166962/20240109_205930.jpg?ex=65afb83e&is=659d433e&hm=86ec96246c0f0b937829c3d87b24f9cf95f56e7f9cb40c487480f4e27e0f59da&', '國語簿', '國語作業簿 8x16格\r\n\r\n封面：200磅銅西卡紙\r\n內頁：80磅米色環保道\r\n林紙\r\n白色值：60~84\r\n紙色b值：正值'),
('GA4015', '菊8K_6x12', 100, 'https://cdn.discordapp.com/attachments/1194173805862588487/1194216796895592499/20240109_175020.jpg?ex=65af8c0f&is=659d170f&hm=2c0c10517982cf13f6ede87c46214b014d5007de75c08902740d148772091517&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194216809415573566/20240109_175033.jpg?ex=65af8c12&is=659d1712&hm=c62314d3852908a807a05129abea237787807a07aab3ba2a659014e61fca67fe&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194216822157873192/20240109_175051.jpg?ex=65af8c15&is=659d1715&hm=27409d9babcca16259e9542ea1371494ab8d747b6cbddfa9f088027b4f370b99&', '國語簿', '菊8K國語簿(6x12)\r\n\r\n封面：200磅銅西卡紙\r\n裝訂：膠裝\r\n內頁：80磅米色環保道\r\n林紙'),
('tb1', '台灣地圖', 100, 'https://cdn.discordapp.com/attachments/1194174548510253086/1194248648922501251/20240109_195430.jpg?ex=65afa9b9&is=659d34b9&hm=4e978270eb1827322174dd6e1498f6ebfc5a09bb5c260a7134be9a1408951cf4&', 'https://cdn.discordapp.com/attachments/1194174548510253086/1194248648284971029/20240109_195407.jpg?ex=65afa9b9&is=659d34b9&hm=bd6c44a15e777e2ce2edc6ef38e9e87ab4762592e7fa47d352abfdb153c12eaa&', 'https://cdn.discordapp.com/attachments/1194174548510253086/1194248648922501251/20240109_195430.jpg?ex=65afa9b9&is=659d34b9&hm=4e978270eb1827322174dd6e1498f6ebfc5a09bb5c260a7134be9a1408951cf4&', '桌墊', '台灣地圖\r\n桌墊'),
('tb2', '空白', 100, 'https://cdn.discordapp.com/attachments/1194174548510253086/1194248667075444786/20240109_195545.jpg?ex=65afa9be&is=659d34be&hm=37106a20c20a909fa5791783496b18655c9099b797d86f1404e34b8ee5623818&', 'https://cdn.discordapp.com/attachments/1194174548510253086/1194248666538582016/20240109_195517.jpg?ex=65afa9be&is=659d34be&hm=b69658068434956aa774b8f1b37d82e06b2ce66f3e635f743630cf9a956eccd9&', 'https://cdn.discordapp.com/attachments/1194174548510253086/1194248667075444786/20240109_195545.jpg?ex=65afa9be&is=659d34be&hm=37106a20c20a909fa5791783496b18655c9099b797d86f1404e34b8ee5623818&', '桌墊', '桌墊\r\n\r\n背面為空白'),
('tb3', '弟子規', 100, 'https://cdn.discordapp.com/attachments/1194174548510253086/1194248690957824060/20240109_195631.jpg?ex=65afa9c3&is=659d34c3&hm=c36a4303303711b2336ba6c6623d38898941bf3d184188ef88236e02fced09a7&', 'https://cdn.discordapp.com/attachments/1194174548510253086/1194248690408374362/20240109_195608.jpg?ex=65afa9c3&is=659d34c3&hm=b829eae04cb41de928f11fdeaf88c93b2a87d307444ec8c73b052547fe443385&', 'https://cdn.discordapp.com/attachments/1194174548510253086/1194248690957824060/20240109_195631.jpg?ex=65afa9c3&is=659d34c3&hm=c36a4303303711b2336ba6c6623d38898941bf3d184188ef88236e02fced09a7&', '桌墊', '桌墊\r\n\r\n背面含:\r\n弟子規\r\n注音符號表\r\n英文字母表\r\n九九乘法表'),
('tb4', '白板', 100, 'https://cdn.discordapp.com/attachments/1194174548510253086/1194248712491372624/20240109_195719.jpg?ex=65afa9c9&is=659d34c9&hm=b6613a65cf975925041bc85e36d125c30da9c2cbea88d139fffbbdce9f360395&', 'https://cdn.discordapp.com/attachments/1194174548510253086/1194248711979675678/20240109_195654.jpg?ex=65afa9c9&is=659d34c9&hm=294e606c69f95b1e0e473760d503359085988878985b140aac64a8ed64f3a223&', 'https://cdn.discordapp.com/attachments/1194174548510253086/1194248712491372624/20240109_195719.jpg?ex=65afa9c9&is=659d34c9&hm=b6613a65cf975925041bc85e36d125c30da9c2cbea88d139fffbbdce9f360395&', '桌墊', '桌墊\r\n\r\n背面為白板'),
('writing001', '作文簿', 100, 'https://cdn.discordapp.com/attachments/1194174516688060506/1194219033139101807/20240109_175841.jpg?ex=65af8e25&is=659d1925&hm=830d33f2440cadec82b434414657340d15ae9a549a244eb44d94d5237e6541e8&', 'https://cdn.discordapp.com/attachments/1194174516688060506/1194219046175002654/20240109_175915.jpg?ex=65af8e28&is=659d1928&hm=a6bb004e04cf26ad1d53210a89ab1dc6ce798667bd599b10a399d6a37cb38e93&', 'https://cdn.discordapp.com/attachments/1194174516688060506/1194219058946641950/20240109_175953.jpg?ex=65af8e2b&is=659d192b&hm=fcd1121a9cfc80e70e690c7e90fa2c401569b80e8e69e24ca49137fb2ed1ad19&', '作文簿', '作文簿\r\n\r\n內附文體說明\r\n短落布局指導\r\n及標點符號大點兵'),
('商11', '菊8K_6x12', 100, 'https://cdn.discordapp.com/attachments/1194173805862588487/1194214209337167942/20240109_173818.jpg?ex=65af89a6&is=659d14a6&hm=6832c5b89f70fef3621bfc51f8d2596fc5d53bb652a9eef4628696c282474ed0&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194214222259814470/20240109_173840.jpg?ex=65af89aa&is=659d14aa&hm=1c7281b4f194e14b0061b0cc9f237e24e8703195fc8ecbe6505e34b79d0c99c3&', 'https://cdn.discordapp.com/attachments/1194173805862588487/1194214233152430121/20240109_174041.jpg?ex=65af89ac&is=659d14ac&hm=dcbf024e28bd82510d315661eb1a8f0112b523ac2a950b48a6a1b3dfd761f7da&', '國語簿', '菊8K國語簿(6x12)\r\n\r\n封面：200磅銅西卡紙\r\n裝訂：膠裝\r\n內頁：80磅不反光文化\r\n道林用紙'),
('商18', '商18(生字G)', 100, 'https://cdn.discordapp.com/attachments/1194174043495075864/1194176499402686514/20240109_150852.jpg?ex=65af6688&is=659cf188&hm=5bf873525d12c2425e85e03414399b7e2e42629aa13d2afacfb32da1e692d4fe&', 'https://cdn.discordapp.com/attachments/1194174043495075864/1194176510320455732/20240109_151002.jpg?ex=65af668a&is=659cf18a&hm=4f2f8ce9d428d1a044c935a8563e0d9f4ea3a6817a0f65a22be8ab0ea637469c&', 'https://cdn.discordapp.com/attachments/1194174043495075864/1194181623390945280/20240109_152903.jpg?ex=65af6b4d&is=659cf64d&hm=d8c03cdba9b74461ef35ffd9ca64ace7be8590e6e36a35bfb33964a828a9e88a&', '生字簿', '商18(生字G)\r\n\r\n封面：200磅銅西卡\r\n裝訂：車線膠裝\r\n內頁：80磅,不反光文化\r\n道林用紙 ');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `company_data`
--
ALTER TABLE `company_data`
  ADD PRIMARY KEY (`contact_phone`);

--
-- 資料表索引 `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`name`);

--
-- 資料表索引 `product_data`
--
ALTER TABLE `product_data`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
