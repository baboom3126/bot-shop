-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-11-26 22:14:27
-- 伺服器版本： 10.4.17-MariaDB
-- PHP 版本： 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `demo`
--
CREATE DATABASE IF NOT EXISTS `demo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `demo`;

-- --------------------------------------------------------

--
-- 資料表結構 `student`
--

CREATE TABLE `student` (
  `ID` varchar(100) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `GENDER` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `student`
--

INSERT INTO `student` (`ID`, `NAME`, `GENDER`) VALUES
('1', 'David', 'Male'),
('2', 'Amy', 'Female'),
('3', 'cheryl', 'female'),
('31', '3', '45'),
('4', 'Bob', 'Male'),
('33', 'test', 'Male'),
('33', 'test', 'Male'),
('58', 'testssss', 'Male'),
('k123', 'cheryl', 'female');
--
-- 資料庫： `mis`
--
CREATE DATABASE IF NOT EXISTS `mis` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mis`;

-- --------------------------------------------------------

--
-- 資料表結構 `botorder`
--

CREATE TABLE `botorder` (
  `BotOrderId` varchar(100) NOT NULL,
  `LineUid` varchar(100) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `botorderdetail`
--

CREATE TABLE `botorderdetail` (
  `BotOrderDetailId` varchar(100) DEFAULT NULL,
  `BotOrderId` varchar(100) DEFAULT NULL,
  `ProductName` varchar(100) DEFAULT NULL,
  `ProductNum` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `linefriend`
--

CREATE TABLE `linefriend` (
  `LineFriendUid` varchar(100) NOT NULL,
  `LineFriendName` varchar(100) DEFAULT NULL,
  `LineFriendPicture` varchar(255) DEFAULT NULL,
  `LineFriendDescription` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `linefriend`
--

INSERT INTO `linefriend` (`LineFriendUid`, `LineFriendName`, `LineFriendPicture`, `LineFriendDescription`) VALUES
('U4fc7f077c078b37a1a221892f8235d85', 'NULL', NULL, NULL),
('U649eccc9550a94b6a4b5af38439bcf09', 'David', 'https://sprofile.line-scdn.net/0h_Hi83hTtAGdEQRYKJ4x-GDQRAw1nMFl1PyFGVHQRWQUsdkc5YCNLB3EUXwJwcEZlOC5KVnRIWgdIUncBWhf8U0NxXlB9dE81aSBPhw', '🙃'),
('Ubac041966204ac081198d34a47ff7943', 'yu', 'https://sprofile.line-scdn.net/0h_Hi83hTtAGdEQRYKJ4x-GDQRAw1nMFl1PyFGVHQRWQUsdkc5YCNLB3EUXwJwcEZlOC5KVnRIWgdIUncBWhf8U0NxXlB9dE81aSBPhw', '(Hideyoshi)'),
('Uc2ea5bd07d6343a0ada665d880f0f5c9', 'Null', NULL, NULL),
('Ucd9e55818615bd466a901b713547be49', 'David', NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `linemessage`
--

CREATE TABLE `linemessage` (
  `LineMessageId` varchar(100) NOT NULL,
  `LineFriendUid` varchar(100) DEFAULT NULL,
  `LineMessageContent` varchar(100) DEFAULT NULL,
  `LineReplyToken` varchar(100) DEFAULT NULL,
  `LineMessageTime` datetime(6) DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `linemessage`
--

INSERT INTO `linemessage` (`LineMessageId`, `LineFriendUid`, `LineMessageContent`, `LineReplyToken`, `LineMessageTime`, `CreateTime`) VALUES
('013fa510-3bcf-4b26-92a2-76285d427d59', 'U649eccc9550a94b6a4b5af38439bcf09', 'nana', '95a3cb56ea3b4ea9ad0c35b601e1e8d8', '2021-05-10 22:59:13.115000', '2021-05-10 22:59:12'),
('0286d34a-fea5-4b78-a980-c186f263e15b', 'U649eccc9550a94b6a4b5af38439bcf09', '<123>', '275399fd0c5a4a119a353637c592aff9', '2021-06-25 15:05:57.181000', '2021-06-25 15:05:57'),
('0355dac7-2ddf-4748-902e-c54b87294268', 'U649eccc9550a94b6a4b5af38439bcf09', 'saveraev', '7c8ba7010d1741478d25f24504a4707f', '2021-05-10 21:15:02.700000', '2021-05-10 21:15:01'),
('040581b2-b1ef-44e8-ab49-9a1744a41900', 'U649eccc9550a94b6a4b5af38439bcf09', '1231231', 'edd5995e561b4adbbc5e242d2248aa74', '2021-05-08 19:54:43.853000', '2021-05-08 19:54:44'),
('07432251-dc9c-4dc1-ab4e-91f269e70134', 'U649eccc9550a94b6a4b5af38439bcf09', '\'\'', 'f5c8ae23851041fe907571d875a15695', '2021-06-25 15:03:37.895000', '2021-06-25 15:03:38'),
('09235905-089e-4092-9927-40370a32e383', 'U649eccc9550a94b6a4b5af38439bcf09', '<1>', '4458625dabb54613b0e7605bfcd2dea1', '2021-06-25 15:07:28.104000', '2021-06-25 15:07:29'),
('0c9eb624-21dd-480d-8bb3-ca4503da32dd', 'U649eccc9550a94b6a4b5af38439bcf09', 'hi', '311556e8525c4b44b9ee7376b9226c23', '2021-05-05 16:56:05.149000', '2021-05-05 16:56:15'),
('1012a502-6162-4a8f-9397-30ebf7bb6840', 'U649eccc9550a94b6a4b5af38439bcf09', 'test', '01458df512a742258495faa67e826951', '2021-06-22 14:14:00.398000', '2021-06-22 14:14:01'),
('108f88d4-2526-4f53-84ae-3fbe75a5450c', 'U649eccc9550a94b6a4b5af38439bcf09', 'asdfasdf', '2e9eba8ec1214a3ba27f56f2350d9b9f', '2021-05-11 10:31:34.502000', '2021-05-11 10:31:35'),
('139a2465-c747-41f7-bfc3-c17661fe41e2', 'U649eccc9550a94b6a4b5af38439bcf09', '取消訂單', 'd53e6f671a124ff7b6ee1973dcdfc6b3', '2021-05-10 22:53:31.046000', '2021-05-10 22:53:29'),
('1762a83d-5b6f-451d-b799-01bc9e3d38f7', 'U649eccc9550a94b6a4b5af38439bcf09', '123', '2c7212ab7fc742d981b1bbdd1a6226b5', '2021-05-10 19:08:46.340000', '2021-05-10 19:08:45'),
('186b5f5c-2933-4896-b503-3ca1ab68db85', 'U649eccc9550a94b6a4b5af38439bcf09', '透過機器人訂餐', '7633db6eaa8944c2b79fedd906775faa', '2021-04-07 14:26:22.179000', '2021-04-07 14:26:23'),
('18b1637e-4d6a-450c-9439-c958d1bcfa2d', 'U649eccc9550a94b6a4b5af38439bcf09', 'j4hjy3t34t', 'e76cf9d976df407f8a7551e01bb9d65d', '2021-05-08 19:45:40.080000', '2021-05-08 19:45:40'),
('1a8b7a5f-c07b-466d-a8cf-0694596b366c', 'U649eccc9550a94b6a4b5af38439bcf09', '\"\"', '10c5c47a725741cca6eb0380ce6af64e', '2021-06-25 14:59:58.036000', '2021-06-25 14:59:59'),
('1b8c4a9d-f007-4962-b7be-92bd095eae1f', 'U649eccc9550a94b6a4b5af38439bcf09', '我要查詢1\' or \'1\' = \'1\' UNION select Email,Email,Password FROM member -- \'', '11a4bf9c01ab4160bc7b0fb80e55b09c', '2021-04-07 14:27:56.135000', '2021-04-07 14:27:57'),
('1bdc4337-abb3-421f-bc7f-81a2a58201ee', 'U649eccc9550a94b6a4b5af38439bcf09', 'union', 'd608043c3ea0455d8a5d158e6bf66f33', '2021-06-25 15:00:39.034000', '2021-06-25 15:00:39'),
('1c9a66f6-5548-4613-992e-1016f671dd2d', 'U649eccc9550a94b6a4b5af38439bcf09', '1231twer', '06aee2d800924feabe650ebac360fbcc', '2021-05-08 19:44:25.120000', '2021-05-08 19:44:25'),
('1d3960e3-f333-42de-a43e-27e558c6a4f4', 'U649eccc9550a94b6a4b5af38439bcf09', '取消訂單', '0584de7fbf1b42449fef85b5205757d8', '2021-04-07 14:26:07.659000', '2021-04-07 14:26:08'),
('1db479e9-5bf1-4e32-8faa-0c249e3a58d1', 'U649eccc9550a94b6a4b5af38439bcf09', '<123123>', 'cd3f7016c22b4020bae219f9e4c8e14a', '2021-06-25 15:08:38.631000', '2021-06-25 15:08:39'),
('1ecd29e7-f7cd-45fd-952f-1ff8d74b47b0', 'U649eccc9550a94b6a4b5af38439bcf09', '123123', 'a6950352220d40e686bbba84d4b39e3a', '2021-05-08 18:05:08.609000', '2021-05-08 18:05:09'),
('1fccb44b-fa15-4e6e-9063-6360eb5be0b6', 'U649eccc9550a94b6a4b5af38439bcf09', 'awdwad', '2fb35abe00474609b55a200c8d412e58', '2021-05-10 19:07:00.977000', '2021-05-10 19:07:00'),
('237cc587-a449-4a08-bdf9-9c5a903a5fb1', 'U649eccc9550a94b6a4b5af38439bcf09', 'ehjej', 'b14d13d7889c4b788af9949fbd23efc5', '2021-05-08 19:16:49.730000', '2021-05-08 19:16:50'),
('24825212-60e9-468c-a9b4-262c36208fe0', 'U649eccc9550a94b6a4b5af38439bcf09', 'hi', 'de93fa8845474aadbf5f49a212443a31', '2021-05-08 17:36:49.340000', '2021-05-08 17:36:50'),
('26d507f7-a05f-4dab-86ea-4be892e7deda', 'U649eccc9550a94b6a4b5af38439bcf09', 'testest', '26d5873c81174b1c85449b24843a601f', '2021-02-23 07:15:33.115000', '2021-02-23 07:15:33'),
('2b618ef5-617c-4b56-b139-90abd005ae89', 'U649eccc9550a94b6a4b5af38439bcf09', 'serwsere', 'a9cc6dc19f6d4a06b2014d3240608dcb', '2021-05-08 18:37:03.854000', '2021-05-08 18:37:04'),
('2cafb418-7d1c-41ab-b483-6d8b730713c2', 'Ucd9e55818615bd466a901b713547be49', '送出訂單', 'f94f81d522b94d629caa6cd784c9f00b', '2021-10-06 23:00:17.337000', '2021-10-06 23:00:18'),
('318eb3f3-8670-49bc-9729-532792dd188f', 'U649eccc9550a94b6a4b5af38439bcf09', '123', '2d486ed84df04e3d9b9a626960e93247', '2021-06-25 14:27:34.060000', '2021-06-25 14:27:35'),
('369ecca9-fd6e-45ff-921a-43288b37e9bd', 'U649eccc9550a94b6a4b5af38439bcf09', '123', '329ed2bc47c64740807f3152646d48c1', '2021-06-24 09:10:00.600000', '2021-06-24 09:10:02'),
('377351ca-6886-4286-a061-8b1d419933ae', 'U649eccc9550a94b6a4b5af38439bcf09', 'wqeqew', '7e563195933a4e3da7b45585ee05be63', '2021-06-25 14:20:40.399000', '2021-06-25 14:20:42'),
('38f81d97-060f-4083-9cf3-9f566cd9c9f7', 'U649eccc9550a94b6a4b5af38439bcf09', '取消訂單', 'ed02c636526f4114869cac6f35028e50', '2021-05-10 21:41:29.181000', '2021-05-10 21:41:27'),
('39284c4e-d1a4-4f50-b16d-0171cb144ea7', 'U649eccc9550a94b6a4b5af38439bcf09', 'hellol', 'ba52ca80b8bc4df3ac8e42cb6eeb1958', '2021-06-24 00:12:19.666000', '2021-06-24 00:12:21'),
('3c665606-6c00-4cc1-a305-9ffaadf8eadf', 'U649eccc9550a94b6a4b5af38439bcf09', '\\n', 'd89ef207f9f84175828aa892d045798e', '2021-05-08 19:56:22.280000', '2021-05-08 19:56:22'),
('3e53feb1-f98e-4fb5-a56e-ea08f270176e', 'U649eccc9550a94b6a4b5af38439bcf09', '#123123', 'e8b19bab91a5486fb2308689a395ec63', '2021-06-25 15:03:35.630000', '2021-06-25 15:03:36'),
('3ee4e458-6faa-4de4-b914-801beb1b669d', 'U649eccc9550a94b6a4b5af38439bcf09', '<123', '647be212e05349a69d688178167c0311', '2021-06-25 14:30:21.229000', '2021-06-25 14:30:22'),
('3f8b7cf6-6a6f-4e95-a9ed-19f73c2927ce', 'U649eccc9550a94b6a4b5af38439bcf09', 'test', 'da65ce2a97ce46e88dca06167e78a9e6', '2021-05-10 19:10:44.270000', '2021-05-10 19:10:43'),
('40541a4b-5291-488d-bfc7-869444510b2f', 'U649eccc9550a94b6a4b5af38439bcf09', 'jrtjrjj', 'a4bd114b883c4d90997dd8371ccc6edb', '2021-05-08 19:18:07.139000', '2021-05-08 19:18:08'),
('41a004e2-60d5-4929-83ef-25733dd4995b', 'U649eccc9550a94b6a4b5af38439bcf09', '地址:台中市南區興大路140號', 'acde9b5c3f9b45e0a7133b5cabf51bba', '2021-02-20 23:57:08.109000', '2021-02-23 15:22:37'),
('42fb1e89-4734-48a1-bec1-dad90fd29825', 'U649eccc9550a94b6a4b5af38439bcf09', '地址:台中市南區興大路140號', 'acde9b5c3f9b45e0a7133b5cabf51bba', '2021-02-20 23:57:08.109000', '2021-02-23 15:22:31'),
('44fda9e9-2969-4583-a729-b0e221daecc9', 'U649eccc9550a94b6a4b5af38439bcf09', 'bvava', 'f8147fcb9b2a473b834faf771e97012a', '2021-05-10 21:17:44.768000', '2021-05-10 21:17:44'),
('49868bc2-2eab-4808-bcad-a7d7c4bc4b70', 'U649eccc9550a94b6a4b5af38439bcf09', '我要查詢1\' = \'1\' UNION select TABLE_SCHEMA,TABLE_NAME,create_time FROM INFORMATION_SCHEMA.TABLES where T', '6a9deb38d2754a2cad117e66eedf2f37', '2021-04-07 14:27:12.800000', '2021-04-07 14:27:13'),
('49fc762b-1fac-4cd5-9d29-9eea356b2b9f', 'U649eccc9550a94b6a4b5af38439bcf09', '<123>', '17a02f885ed74d8cb48c40753d95140e', '2021-06-25 15:07:21.218000', '2021-06-25 15:07:22'),
('4aed8667-bf73-4c0a-ba09-0d15c573dcc0', 'U649eccc9550a94b6a4b5af38439bcf09', '送出訂單', '393fd2d10caf4cd3b4faa68e56356be3', '2021-04-07 14:26:46.766000', '2021-04-07 14:26:47'),
('4b1f5d46-5dd2-409b-b4a6-c90fbdf73576', 'U649eccc9550a94b6a4b5af38439bcf09', 'ｔｅｓｔｓｔｅ', 'ee27f7f06704487b898a0315f9a0199b', '2021-02-23 07:15:31.830000', '2021-02-23 07:15:32'),
('4c7e45ae-1671-42a5-959d-7faf3ce4a6c0', 'U649eccc9550a94b6a4b5af38439bcf09', '訂單新增 1個 雞腿便當', 'b71cf86e137b4780a5e6923b2ef01a52', '2021-04-07 14:26:32.989000', '2021-04-07 14:26:33'),
('4d7d3b97-8c83-433f-86ae-643d942a2031', 'U649eccc9550a94b6a4b5af38439bcf09', '<123>', '9207529e2fdc494494704b159077238b', '2021-06-25 15:06:09.557000', '2021-06-25 15:06:10'),
('4d8ddd58-9ead-4a5d-9f3f-9f8166ba08c8', 'U649eccc9550a94b6a4b5af38439bcf09', '取消訂單', '7ecceb8e06f64f4e9aa84a5df0697f0b', '2021-05-05 17:00:48.981000', '2021-05-05 17:00:49'),
('4e35c5f4-7aff-4b47-9f8e-cdca4dda6df2', 'U649eccc9550a94b6a4b5af38439bcf09', 'git commit -m \"Commit message\"', '09bf3ed081c249e3b75a0c275094ba0f', '2021-05-10 22:53:28.732000', '2021-05-10 22:53:27'),
('4e3d4597-05c2-49b8-81bc-47cf7210b66d', 'U649eccc9550a94b6a4b5af38439bcf09', 'herhjewrjhewjh', '0291ace094dc4007938e922ce49eb615', '2021-05-08 19:14:58.241000', '2021-05-08 19:14:59'),
('4fbe5de5-24c5-4d26-9e15-9603d5ce9291', 'U649eccc9550a94b6a4b5af38439bcf09', '地址:台中市南區興大路140號', 'acde9b5c3f9b45e0a7133b5cabf51bba', '2021-02-20 23:57:08.109000', '2021-02-23 15:16:28'),
('50a1b324-d01a-4f97-bc55-3a171f3d2c24', 'U649eccc9550a94b6a4b5af38439bcf09', '透過機器人訂餐', '938b7c42180e4baa86782163217db677', '2021-05-08 17:36:56.249000', '2021-05-08 17:36:57'),
('54b2ca84-62d7-4c01-a589-5b8ebf64886f', 'U649eccc9550a94b6a4b5af38439bcf09', 'asdf', '04107c6673ec477b9aa51ea1f69035ea', '2021-05-10 22:48:05.635000', '2021-05-10 22:48:04'),
('59329f0f-431e-4f98-a387-5759841bb84f', 'U649eccc9550a94b6a4b5af38439bcf09', 'testset', '350cabf5765b4a5f949da2898b7a3a5b', '2021-05-08 18:40:10.463000', '2021-05-08 18:40:11'),
('5be2f693-ee1b-4424-a6b3-f5debff8e2d9', 'U649eccc9550a94b6a4b5af38439bcf09', '123', '21c71abbd92940e0b42e18c98cb50abb', '2021-07-20 10:56:52.841000', '2021-07-20 10:57:07'),
('631f63a1-b172-4c8a-8a7b-72e662f90e86', 'U649eccc9550a94b6a4b5af38439bcf09', 'hello', 'f348d7470d7c4b78b1038ea52a058e71', '2021-05-10 18:35:02.640000', '2021-05-10 18:35:02'),
('64b84469-e538-40cc-a179-21076974335f', 'U649eccc9550a94b6a4b5af38439bcf09', '透過機器人訂餐', '36e2a42cc75d490a9bb7698f56748d00', '2021-07-20 10:57:02.869000', '2021-07-20 10:57:06'),
('68e1938d-bfde-403f-8a0b-fb7d7e93db10', 'U649eccc9550a94b6a4b5af38439bcf09', '123', 'ecc493ff38e14329959f6ce40b8e81ab', '2021-06-22 15:45:10.543000', '2021-06-22 15:45:11'),
('6b079b8d-9c3d-4ee6-a188-65b44d5435b6', 'U649eccc9550a94b6a4b5af38439bcf09', '<123>', '351057663a1e4f31a2e9b87780c86d5e', '2021-06-25 15:07:16.564000', '2021-06-25 15:07:17'),
('6b2b9ca2-06e1-4941-bd34-7f07e42c2499', 'U649eccc9550a94b6a4b5af38439bcf09', 'asdfasdf', '054c5066df1e412298e73cc56437a012', '2021-05-11 10:30:48.304000', '2021-05-11 10:30:50'),
('6c21cc07-1903-4749-be58-347c9b863a2e', 'U649eccc9550a94b6a4b5af38439bcf09', 'herhoijoi', '79fd1619d2514e15b2648318de49d7bb', '2021-05-08 19:54:43.352000', '2021-05-08 19:54:44'),
('6c5c6bc4-fea3-4481-9c05-f8e77ff3e412', 'U649eccc9550a94b6a4b5af38439bcf09', '查詢我的訂單', '3fff34ab61684f7c9485bc0de5138361', '2021-07-30 09:44:01.461000', '2021-07-30 09:44:02'),
('6cf47579-4506-4a36-ab70-be687e723171', 'U649eccc9550a94b6a4b5af38439bcf09', '<123>', 'b5ece808bcb649629b61d6ffbaef50df', '2021-06-25 15:06:57.940000', '2021-06-25 15:06:58'),
('6d2ff7a9-adfc-4f61-94ea-b53f4864b87b', 'U649eccc9550a94b6a4b5af38439bcf09', '查詢我的訂單', '1dc040a45fba42cbbd3ccfd148450564', '2021-03-15 19:46:17.132000', '2021-03-15 19:46:18'),
('6d368595-174b-49b5-b331-4d4e2490586b', 'U649eccc9550a94b6a4b5af38439bcf09', '我要查詢E81B2', '17327bcc57d742f8974b95850896180e', '2021-07-30 09:44:05.574000', '2021-07-30 09:44:06'),
('6e82752a-5560-4e0c-a48e-54fe744d303c', 'U649eccc9550a94b6a4b5af38439bcf09', '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@', '478762e1e02344d58b1345b19498d2f6', '2021-05-08 18:10:35.278000', '2021-05-08 18:10:36'),
('6ee8f07b-91ff-405c-aa2e-aecb07c459bd', 'U649eccc9550a94b6a4b5af38439bcf09', '\'\'123\'', 'ca908f13c29b4b608a66caae1dd70d8e', '2021-06-25 14:59:59.183000', '2021-06-25 14:59:59'),
('6f0c60e6-d832-47bf-9583-abee0a6c8a9d', 'U649eccc9550a94b6a4b5af38439bcf09', '透過機器人訂餐', '7741e62e622d44918ee4b596a068381f', '2021-05-10 13:31:24.575000', '2021-05-10 13:31:26'),
('6f7c783a-0ec8-42a8-8f63-3408498d5bb6', 'U649eccc9550a94b6a4b5af38439bcf09', '我要查詢1\' or \'1\' = \'1\' UNION select Email,Email,Password FROM member -- \'', 'f5f25cf6d80047c2918eac5885c0c6b9', '2021-04-07 15:31:02.473000', '2021-04-07 15:31:03'),
('7316afdd-a505-4ab0-a32a-888f671e9734', 'U649eccc9550a94b6a4b5af38439bcf09', '\'123\' <123>', '486353cc15d04a388e41d83990d17d99', '2021-06-25 15:00:11.013000', '2021-06-25 15:00:11'),
('73ee87fa-3a08-4f93-86b3-13494802fa5d', 'U649eccc9550a94b6a4b5af38439bcf09', 'testset', 'bb656bbf89e340f8aa63110bf6579898', '2021-05-08 18:40:31.613000', '2021-05-08 18:40:32'),
('766c732c-1ee5-4cf5-866f-0cbb87c5d00d', 'U649eccc9550a94b6a4b5af38439bcf09', '123', '04589c3bf22f44388df6e0755239f489', '2021-05-08 18:06:03.419000', '2021-05-08 18:06:04'),
('76a13e2a-2cef-4683-b248-887327adc3de', 'U649eccc9550a94b6a4b5af38439bcf09', 'hi', 'ea189d712f8f4e54a3fe260e8478e189', '2021-05-10 19:10:43.739000', '2021-05-10 19:10:43'),
('7bfbf42d-b424-4851-adf3-13a235fc1805', 'U649eccc9550a94b6a4b5af38439bcf09', '查詢我的訂單', '49f6d628233f4bc89508b0ae43aae246', '2021-11-05 14:29:09.115000', '2021-11-05 14:29:10'),
('7bfc1f31-54f7-4504-9c16-5e0ddde4eaab', 'U649eccc9550a94b6a4b5af38439bcf09', '123', 'f4f6a7579ff54e06a4778e5f68d45a46', '2021-05-08 18:05:02.690000', '2021-05-08 18:05:04'),
('7d213636-791c-468c-8202-941f2ae0286b', 'U649eccc9550a94b6a4b5af38439bcf09', '取消訂單', '0557acb1b2a34115818d2ac97ba4b5f0', '2021-05-08 17:37:00.209000', '2021-05-08 17:37:00'),
('81d0a361-5aca-46e0-95a9-fc1ef8b17895', 'U649eccc9550a94b6a4b5af38439bcf09', 'test', '417da2da77474a52b61c5a387a50f82e', '2021-05-10 19:08:44.927000', '2021-05-10 19:08:44'),
('8229ba20-fa0d-4b14-9780-ce5fb9ae902b', 'U649eccc9550a94b6a4b5af38439bcf09', '<1231>', '85e7cfa80b5647699fe3fd9ca0b161e8', '2021-06-25 15:08:23.985000', '2021-06-25 15:08:25'),
('840c32a1-f51e-48e3-a4bb-4569597cd2c8', 'U649eccc9550a94b6a4b5af38439bcf09', 'ojenoeawh', '909b99c0af124dd2b02520dafe2c6173', '2021-05-08 19:56:12.321000', '2021-05-08 19:56:12'),
('8439d15f-957c-495d-b823-54b43d4684aa', 'U649eccc9550a94b6a4b5af38439bcf09', 'tesas', 'eb61d2b2f31548dd902bc4f57cefe2e7', '2021-05-10 22:41:26.866000', '2021-05-10 22:41:25'),
('867be996-a01d-4856-aa60-cb120c6bb069', 'U649eccc9550a94b6a4b5af38439bcf09', '<><s123', '5a2e5fb42e8c4993ae43526b7fcc04b5', '2021-06-25 14:30:04.908000', '2021-06-25 14:30:05'),
('86d6eb49-f998-4d2d-b28e-fd4d4ae990d1', 'U649eccc9550a94b6a4b5af38439bcf09', '<123123123>', '07c6878aac034f52aff6c44b578bb404', '2021-06-25 15:14:04.940000', '2021-06-25 15:14:05'),
('876221a9-d483-47b4-bc9f-3d74918834aa', 'U649eccc9550a94b6a4b5af38439bcf09', 'tasgasdva', '288a4e6dd0614299b5c2489332ae5661', '2021-05-10 20:30:33.682000', '2021-05-10 20:30:32'),
('886633cb-6984-4045-9e78-b3281593fc84', 'U649eccc9550a94b6a4b5af38439bcf09', 'test', 'bb1f1743b512430fbe77b9967764941b', '2021-06-22 14:09:22.979000', '2021-06-22 14:09:24'),
('89ea589e-680d-4d23-8f84-b888cb8c6311', 'U649eccc9550a94b6a4b5af38439bcf09', '123', '6a8eae0863a743b3ae4f7cedcf9d76ee', '2021-05-11 10:05:31.483000', '2021-05-11 10:05:32'),
('8d9a2048-0128-4d31-b463-b1b6342ba59a', 'U649eccc9550a94b6a4b5af38439bcf09', '123123123', 'c2b31f4b660d4bb687f5125eb5a67627', '2021-05-08 19:56:12.931000', '2021-05-08 19:56:13'),
('8ed2ef33-a55d-4bd4-bef4-788c8c0c663f', 'U649eccc9550a94b6a4b5af38439bcf09', '11111111111', '4862d5aada6b496da8083f7a8e94d3b8', '2021-05-08 19:19:30.012000', '2021-05-08 19:19:30'),
('8fa0ab02-01b0-4df7-9d5c-a7fd45607fae', 'U649eccc9550a94b6a4b5af38439bcf09', '<123>', '51068cd85f664d3fba9b2a2a071a4fb9', '2021-06-25 15:05:50.547000', '2021-06-25 15:05:51'),
('900671c9-0116-4e1e-9d25-3960925a7bdb', 'U649eccc9550a94b6a4b5af38439bcf09', '訂單新增 1個 招牌便當', '0d0d15cb9b9f49d482ee7a51e2f84c65', '2021-04-07 14:26:38.812000', '2021-04-07 14:26:39'),
('9251fdd6-3384-4b42-93ae-8454c7a76f9a', 'U649eccc9550a94b6a4b5af38439bcf09', '13123123', '0321f0ee363c43f0a2ad7a6ff9e044ff', '2021-05-08 18:08:13.769000', '2021-05-08 18:08:14'),
('950925a9-d923-459e-b589-675b5c242f47', 'U649eccc9550a94b6a4b5af38439bcf09', '地址:台中市南區興大路140號', 'acde9b5c3f9b45e0a7133b5cabf51bba', '2021-02-20 23:57:08.109000', '2021-02-23 15:16:49'),
('9568a2cd-2d78-4255-8f83-72a0507804ae', 'U649eccc9550a94b6a4b5af38439bcf09', '取消訂單', '0cc128f370e449a4b67898470b0e1d51', '2021-07-30 09:43:58.495000', '2021-07-30 09:43:59'),
('958352bb-20c5-48b0-9a27-c2cedf1fe93a', 'U649eccc9550a94b6a4b5af38439bcf09', 'gsgsadg', 'ffa64766c29c49cb80216ede1e489d6d', '2021-05-08 20:19:05.636000', '2021-05-08 20:19:06'),
('9aad2146-5b41-425d-973a-d24fb329d3c2', 'U649eccc9550a94b6a4b5af38439bcf09', 'asdfavzxcv', 'b5e654ff0982467fa5c3d534798da396', '2021-05-11 10:32:01.838000', '2021-05-11 10:32:04'),
('9ab0a8a1-1609-499a-b085-f6863db53c7b', 'U649eccc9550a94b6a4b5af38439bcf09', 'vzxcvswe', 'a6fe2870a6d442ce99a69cc5d138e4a6', '2021-05-10 19:37:28.683000', '2021-05-10 19:37:28'),
('9ae42140-315d-4b0b-98d2-4dfa0bd81744', 'U649eccc9550a94b6a4b5af38439bcf09', '我要查詢5F3D0', '517a5f342e53433481cdbe829732d34d', '2021-04-07 15:30:28.030000', '2021-04-07 15:30:29'),
('9f879351-987b-4dfd-969e-5e4fc5496693', 'U649eccc9550a94b6a4b5af38439bcf09', 'rghhh334t', '96aadc61a7c4494cb453cfafe2a97363', '2021-05-08 18:40:35.543000', '2021-05-08 18:40:36'),
('a026d034-bd9a-484e-bf1c-6e2ad9db08cd', 'U649eccc9550a94b6a4b5af38439bcf09', 'hiu', '037a18bc0b2f4248baecb07f4887d71c', '2021-05-10 19:08:45.825000', '2021-05-10 19:08:44'),
('a060dabd-69ba-4a13-a77f-546c3db01c43', 'U649eccc9550a94b6a4b5af38439bcf09', 'rejerjerjertj', '3db38e5837fd458e853a18622b097003', '2021-05-08 19:16:44.880000', '2021-05-08 19:16:45'),
('a084f494-0fe5-4148-940c-f6177592d77b', 'U649eccc9550a94b6a4b5af38439bcf09', '我要查詢A5729', '80f5f5a192604759b86d5e3eac55320e', '2021-03-15 19:46:21.527000', '2021-03-15 19:46:22'),
('a18b0264-6da4-42a7-b12a-22622cbdcda8', 'U649eccc9550a94b6a4b5af38439bcf09', '123123', 'f5da5ea0bd164e168ff8e12f4ac1d0e4', '2021-05-08 18:10:30.000000', '2021-05-08 18:10:30'),
('a37949fb-47e4-490d-910d-d9bcf7d23fa1', 'U649eccc9550a94b6a4b5af38439bcf09', 'test', '04b6a22091bc40bbb80d62b0c725940e', '2021-06-24 00:12:18.629000', '2021-06-24 00:12:20'),
('a4ca8e60-ed6b-4144-b204-21bb54874a7d', 'U649eccc9550a94b6a4b5af38439bcf09', '123', '39f9e4c24ff843af9dcb72c973fb0693', '2021-05-08 17:49:02.769000', '2021-05-08 17:49:03'),
('a761384a-4264-4108-b1e1-ff4b65d06bde', 'U649eccc9550a94b6a4b5af38439bcf09', '123', 'cc1de0a3b98b405a8b0e3b2bf51b10ef', '2021-05-08 18:04:25.850000', '2021-05-08 18:04:27'),
('a82155d1-d12d-45c4-9953-ba6a953f8c91', 'U649eccc9550a94b6a4b5af38439bcf09', 'test', 'fc443cbe744447c1b38681701bd8481f', '2021-06-22 14:01:03.345000', '2021-06-22 14:01:04'),
('a92a8c4e-3c99-493f-9890-fce1fb5e933b', 'U649eccc9550a94b6a4b5af38439bcf09', '\'123\'', '78a4e2848be946c2b36c8ae26f39d4d2', '2021-06-25 15:03:52.317000', '2021-06-25 15:03:53'),
('aa41c201-aa7d-4fe9-a91f-58c1d0783e27', 'U649eccc9550a94b6a4b5af38439bcf09', '我要查詢1\' or \'1\' = \'1\' UNION select Email,Email,Password FROM member -- \'', 'd9cc8de7458e4d1b91ba514655db26e7', '2021-03-15 20:08:30.209000', '2021-03-15 20:08:31'),
('ac4bd1c9-0c5d-445f-8340-4b047b8592bb', 'U649eccc9550a94b6a4b5af38439bcf09', '透過機器人訂餐', '038afd7ae79247d5af05ea14bd5004d1', '2021-05-05 17:00:42.284000', '2021-05-05 17:00:43'),
('ad4da425-ae5e-4683-9745-1f4bffbbdd7e', 'U649eccc9550a94b6a4b5af38439bcf09', '查詢我的訂單', '446ea96c330c457d974973d3da27d14a', '2021-11-05 14:28:49.515000', '2021-11-05 14:28:50'),
('af20b3ad-582b-4243-9d16-7cb9edd99cdf', 'Ucd9e55818615bd466a901b713547be49', '訂單新增 1個 排骨便當', 'd4f366d890c54a8989d233e526d6b3da', '2021-10-06 23:00:04.042000', '2021-10-06 23:00:05'),
('b14483fe-7b2e-4c2c-8296-dc1336763194', 'U649eccc9550a94b6a4b5af38439bcf09', 'babbs', '941b0c3016aa4b269c2e91f5904e2a01', '2021-05-10 22:53:23.146000', '2021-05-10 22:53:22'),
('b259251b-998c-44de-a20a-3ad4c437a146', 'U649eccc9550a94b6a4b5af38439bcf09', '123', '65c4546a7300441ebd14316ab53dfc7c', '2021-06-22 15:22:49.314000', '2021-06-22 15:22:50'),
('b48ee47c-a0a7-46b9-a734-017cf9c66604', 'U649eccc9550a94b6a4b5af38439bcf09', 'union', 'f6c1804e73b64a14a5e64dedf7907d6e', '2021-05-08 20:16:42.057000', '2021-05-08 20:16:42'),
('b948398a-59b1-4746-a022-f6103f7aaee9', 'U649eccc9550a94b6a4b5af38439bcf09', '<123>', '739904ee32b64a0fbe646a873f4c58f8', '2021-06-25 15:14:07.554000', '2021-06-25 15:14:07'),
('b9c42953-5202-41e0-ab4c-a0f05e508f7e', 'U649eccc9550a94b6a4b5af38439bcf09', 'laskjflkwegw', '0a834c46e79a4a47a3b8a78be4d6b9ce', '2021-05-08 19:52:11.520000', '2021-05-08 19:52:12'),
('baec8230-744c-491c-b1ba-9b00f53342d4', 'U649eccc9550a94b6a4b5af38439bcf09', '123', 'b066696aceae4e3289c9df1b87f1d5ad', '2021-05-11 10:01:02.858000', '2021-05-11 10:01:04'),
('bb6d0654-324c-43eb-b59d-8346e003f0af', 'U649eccc9550a94b6a4b5af38439bcf09', '查詢我的訂單', '306cdce34ef9425088a339d9b76f163a', '2021-05-18 10:24:59.691000', '2021-05-18 10:25:00'),
('bbe3cfe2-93f9-4724-8cac-05bd1c9e7c8b', 'U649eccc9550a94b6a4b5af38439bcf09', 'test', '01c88466cea14264a970b5cac9060786', '2021-05-08 20:16:37.626000', '2021-05-08 20:16:38'),
('bced455f-bcac-4207-bb1b-dadb57b318b7', 'U649eccc9550a94b6a4b5af38439bcf09', '地址:台中市南區興大路140號', 'acde9b5c3f9b45e0a7133b5cabf51bba', '2021-02-20 23:57:08.109000', '2021-02-23 11:08:22'),
('be089c61-d284-4f99-9033-1d878b049894', 'U649eccc9550a94b6a4b5af38439bcf09', '透過機器人訂餐', 'c3882f9e958b4551974488038a8806a8', '2021-09-26 16:59:05.504000', '2021-09-26 16:59:06'),
('bfa87818-149b-45d7-aa17-43693e3d1680', 'U649eccc9550a94b6a4b5af38439bcf09', '123', 'a539f22044084f49ab01495f737186b4', '2021-05-08 17:48:50.769000', '2021-05-08 17:48:51'),
('c0a7d5bb-0617-4ce3-a9e0-cbaa48ff6985', 'U649eccc9550a94b6a4b5af38439bcf09', 'test', '8ba86be10e6d43d9ab631dd7e1ad2adb', '2021-05-08 18:36:58.463000', '2021-05-08 18:36:59'),
('cce8c49a-53d9-4c14-bfcc-7edf74c5d06c', 'U649eccc9550a94b6a4b5af38439bcf09', 'ㄅ', '7a16e6ce88814c4ba45f09f7172e854f', '2021-05-11 10:05:04.696000', '2021-05-11 10:05:05'),
('cda4bb09-5eba-42de-be51-22d079d62693', 'U649eccc9550a94b6a4b5af38439bcf09', '<123>', 'eed3d52f6305401c9644d0ffa258a51a', '2021-06-25 15:13:51.678000', '2021-06-25 15:13:52'),
('d37e90f6-74fd-45e9-9aca-a1ce3e207325', 'U649eccc9550a94b6a4b5af38439bcf09', '台中市南區興大路140號', 'e71dc198b7614184b3232d2fc3c18d4d', '2021-04-07 14:26:59.052000', '2021-04-07 14:26:59'),
('d7ef87ca-0af1-49b4-8e43-040aef919303', 'U649eccc9550a94b6a4b5af38439bcf09', '查詢我的訂單', 'b7260f4e6b364e97873c8af8149a6603', '2021-04-07 15:30:11.986000', '2021-04-07 15:30:22'),
('d9f0078a-bf37-48ab-9eb0-24cbfb34c1a5', 'Ucd9e55818615bd466a901b713547be49', '透過機器人訂餐', '1d9e246309b0461cb5fc4bbf4eb338ce', '2021-10-06 22:50:49.570000', '2021-10-06 22:50:50'),
('da046b16-a072-431b-aec3-a8c1a1ba72e2', 'U649eccc9550a94b6a4b5af38439bcf09', '\'\'123\'', 'f092ed5d62564e73bd676c9c0270514a', '2021-06-25 15:12:26.208000', '2021-06-25 15:12:26'),
('dabeb145-d46a-4a47-8a7f-7260da7cba74', 'U649eccc9550a94b6a4b5af38439bcf09', '\'123\'', 'bccc9ef1194d43278336a1d0cbc9ae41', '2021-06-25 15:03:47.785000', '2021-06-25 15:03:48'),
('e1338303-499b-48cd-83a7-020874a4f98c', 'U649eccc9550a94b6a4b5af38439bcf09', '取消訂單', '4968ef97b7aa404bb110ed2ef4a05b79', '2021-05-10 21:32:19.294000', '2021-05-10 21:32:18'),
('e39d0617-5a49-46aa-97df-15ce9446c6ed', 'U649eccc9550a94b6a4b5af38439bcf09', 'test', 'fd526582c549484aa5a6471d921e428c', '2021-05-11 08:34:14.257000', '2021-05-11 08:34:15'),
('e60b9d70-9e28-48ea-886f-e60c123c0821', 'U649eccc9550a94b6a4b5af38439bcf09', '透過機器人訂餐', '03cef4b243a44ee0b7f3c6890922974a', '2021-04-07 14:25:44.981000', '2021-04-07 14:25:58'),
('e7e315ba-46ee-4792-8325-eb0c52e3c0af', 'Ucd9e55818615bd466a901b713547be49', '透過機器人訂餐', 'a8e0e6346aed4b899eb44883b908e4d1', '2021-10-06 22:38:46.015000', '2021-10-06 22:38:46'),
('edb6e153-1e04-4596-9855-684c6c25dfd1', 'Ucd9e55818615bd466a901b713547be49', '訂單新增 1個 雞腿便當', '3a1f116f6611466fa475e5407a4bdfe5', '2021-10-06 22:57:40.835000', '2021-10-06 22:57:41'),
('edf50dd2-5f58-4955-b4a9-9785ae268470', 'U649eccc9550a94b6a4b5af38439bcf09', '123', '2b1bb6dd0f24420393813139f2b23405', '2021-05-08 17:57:25.009000', '2021-05-08 17:57:25'),
('eeae1ada-0707-4ed4-887a-07fe874e7bef', 'U649eccc9550a94b6a4b5af38439bcf09', '我要查詢1\' or \'1\' = \'1\' UNION select Email,MemberName,Password FROM member -- \'', '47ff143223e449aa918995d7024ebe79', '2021-11-05 14:32:32.763000', '2021-11-05 14:32:34'),
('f0aa0baf-3a1d-430c-abb8-470e1e3e3640', 'U649eccc9550a94b6a4b5af38439bcf09', '123', '0be31ecd3a6f47b98b46cf526ff7415a', '2021-06-23 14:08:57.072000', '2021-06-23 14:08:58'),
('f39d5287-d7e5-4d88-9ea8-b9e97c3e5740', 'U649eccc9550a94b6a4b5af38439bcf09', '2213t2t', 'd25f6cd1bec24242b7d6c4ff6b5bfdd0', '2021-05-08 19:51:55.451000', '2021-05-08 19:51:56'),
('f4828b7c-128b-4bda-ac20-113cf89d824c', 'U649eccc9550a94b6a4b5af38439bcf09', '我要查詢1\' or \'1\' = \'1\' UNION select Email,MemberName,Password FROM member -- \'', '171b3b97075044948b25e84c7937aa43', '2021-11-05 14:29:51.653000', '2021-11-05 14:29:52'),
('f5eb5181-5f42-4987-9e25-ddc71dd95293', 'U649eccc9550a94b6a4b5af38439bcf09', '123132', 'b5e9ca645868487bbcd44abfd2bc0af6', '2021-05-08 19:16:52.080000', '2021-05-08 19:16:52'),
('f60650a0-5db4-4e25-94ff-76f502d27ecc', 'U649eccc9550a94b6a4b5af38439bcf09', '123123', '7c3144593dc841d8b05b691c06c9e724', '2021-05-08 18:07:53.309000', '2021-05-08 18:07:53'),
('f6d64b87-8f4d-433c-bc15-87868bd8e8a4', 'U649eccc9550a94b6a4b5af38439bcf09', '123123', '0dea5e10048c414aae1855dbcc33cf93', '2021-05-11 10:31:37.239000', '2021-05-11 10:31:37'),
('fbae64b4-4715-4a4c-ac29-58e79d4cb4f4', 'U649eccc9550a94b6a4b5af38439bcf09', '透過機器人訂餐', '48678ccbde734762a44f2de28821e07f', '2021-10-06 22:32:26.120000', '2021-10-06 22:32:32');

-- --------------------------------------------------------

--
-- 資料表結構 `lineorder`
--

CREATE TABLE `lineorder` (
  `Id` varchar(100) NOT NULL,
  `LineOrderUserUid` varchar(100) DEFAULT NULL,
  `ProductName` varchar(100) DEFAULT NULL,
  `ProductCount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `lineuserstatus`
--

CREATE TABLE `lineuserstatus` (
  `Id` varchar(100) NOT NULL,
  `LineUserUId` varchar(100) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `ModifyTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `lineuserstatus`
--

INSERT INTO `lineuserstatus` (`Id`, `LineUserUId`, `Status`, `ModifyTime`) VALUES
('15471590-ae8b-411d-ab6a-5452d613e659', 'U649eccc9550a94b6a4b5af38439bcf09', '正在訂餐', '2021-10-06 22:32:34');

-- --------------------------------------------------------

--
-- 資料表結構 `member`
--

CREATE TABLE `member` (
  `MemberId` varchar(100) NOT NULL,
  `MemberName` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Birthday` varchar(100) DEFAULT NULL,
  `LineUid` varchar(100) DEFAULT NULL,
  `FacebookUid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `member`
--

INSERT INTO `member` (`MemberId`, `MemberName`, `Email`, `Password`, `Birthday`, `LineUid`, `FacebookUid`) VALUES
('7aa5fc04-56fc-4b17-b01e-5f25f02ddf14', 'David', 'km101km@gmail.com', 'p@ssw0rd', '19970619', 'U649eccc9550a94b6a4b5af38439bcf09', ''),
('a05631da-83c4-4fe8-975a-bed33afd11f0', 'David', 'baboom3126@smail.nchu.edu.tw', '123', '19900619', 'Ucd9e55818615bd466a901b713547be49', ''),
('e2884b9e-6ff5-4296-adbc-692d4adbb297', 'yu', 'testmail@gmail.com', 'password123', '1999088', 'Ubac041966204ac081198d34a47ff7943', '');

-- --------------------------------------------------------

--
-- 資料表結構 `order`
--

CREATE TABLE `order` (
  `OrderId` varchar(100) NOT NULL,
  `OrderMemberId` varchar(100) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `OrderTime` varchar(100) DEFAULT NULL,
  `DeliverAddress` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `order`
--

INSERT INTO `order` (`OrderId`, `OrderMemberId`, `Status`, `OrderTime`, `DeliverAddress`) VALUES
('0A93E', 'a05631da-83c4-4fe8-975a-bed33afd11f0', '進行中', '2021-10-06 23:00:48.485', '台中市南區興大路145號'),
('5F3D0', '7aa5fc04-56fc-4b17-b01e-5f25f02ddf14', '進行中', '2021-04-07 14:27:01.202', '台中市南區興大路140號'),
('73C64', '7aa5fc04-56fc-4b17-b01e-5f25f02ddf14', '進行中', '2021-02-22 02:20:12.516', '台中市南區興大路140號'),
('A5729', '7aa5fc04-56fc-4b17-b01e-5f25f02ddf14', '進行中', '2021-02-22 02:59:58.914', '36wahsjeskak'),
('AED13', '7aa5fc04-56fc-4b17-b01e-5f25f02ddf14', '進行中', '2021-02-22 02:59:03.848', 'Ri3eiwjasysu'),
('B25CD', 'a05631da-83c4-4fe8-975a-bed33afd11f0', '進行中', '2021-10-06 23:26:35.247', '台中市南區興大路145號'),
('CBCE8', '7aa5fc04-56fc-4b17-b01e-5f25f02ddf14', '進行中', '2021-02-22 02:17:11.167', '台中市南區興大路140號'),
('E81B2', '7aa5fc04-56fc-4b17-b01e-5f25f02ddf14', '進行中', '2021-02-22 03:14:50.100', '地址:台中市南區興大路140號');

-- --------------------------------------------------------

--
-- 資料表結構 `orderdetail`
--

CREATE TABLE `orderdetail` (
  `OrderDetailId` varchar(100) NOT NULL,
  `OrderId` varchar(100) DEFAULT NULL,
  `ProductId` varchar(100) DEFAULT NULL,
  `ProductNum` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `orderdetail`
--

INSERT INTO `orderdetail` (`OrderDetailId`, `OrderId`, `ProductId`, `ProductNum`) VALUES
('018ec4b5-f6ba-4228-8c74-685100e2a7dd', 'E81B2', '0e205f24-2b3d-4973-a2ed-70babb5cceac', '1'),
('106d95c5-6938-4dfb-9b50-cde8a4e39980', '73C64', 'aa71ff30-3921-46ba-9f03-f596c31a247c', '1'),
('2a36b48c-2a53-4947-9c39-8a480afe0411', 'CBCE8', '8ae2b9a3-809e-4011-ae2d-11ff92a7bb98', '1'),
('2ce0c723-c69e-4c42-8b4d-c178df4e281b', 'AED13', 'aa71ff30-3921-46ba-9f03-f596c31a247c', '1'),
('3a807d0e-750a-4154-aa66-19738ac9de57', '0A93E', '0e205f24-2b3d-4973-a2ed-70babb5cceac', '1'),
('4568c0a9-a1f6-47c8-a507-04306ef1e8d6', 'AED13', '8ae2b9a3-809e-4011-ae2d-11ff92a7bb98', '1'),
('5338fbe3-4afc-4e9a-97f6-d60072b4f51d', 'AED13', '0e205f24-2b3d-4973-a2ed-70babb5cceac', '3'),
('8249e669-b133-441d-a80b-93bed6f4fc98', '5F3D0', '8ae2b9a3-809e-4011-ae2d-11ff92a7bb98', '1'),
('8e94735c-4ed4-4efd-a4a5-377bd46ec32b', '0A93E', 'aa71ff30-3921-46ba-9f03-f596c31a247c', '1'),
('9368c3a8-baad-4c2d-ba94-4245e22b61cd', '73C64', '8ae2b9a3-809e-4011-ae2d-11ff92a7bb98', '2'),
('bc439467-ebeb-4f67-86ea-4acd24cd399c', 'B25CD', '0e205f24-2b3d-4973-a2ed-70babb5cceac', '2'),
('c82336ce-8ec4-49dc-9889-08facce39631', 'A5729', '0e205f24-2b3d-4973-a2ed-70babb5cceac', '1'),
('d715e00f-4a74-4892-bc69-ad6d1533a3b7', 'CBCE8', '0e205f24-2b3d-4973-a2ed-70babb5cceac', '1'),
('dac80027-7e3d-4e37-9015-7b6e09876ae0', 'B25CD', '8ae2b9a3-809e-4011-ae2d-11ff92a7bb98', '1'),
('e0e0d743-f8a8-42e0-bef0-454f38ab3862', '73C64', '0e205f24-2b3d-4973-a2ed-70babb5cceac', '3'),
('fb4877fd-8689-473c-bb5b-05694c64d1ef', '5F3D0', '0e205f24-2b3d-4973-a2ed-70babb5cceac', '1');

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `ProductId` varchar(100) NOT NULL,
  `ProductName` varchar(100) DEFAULT NULL,
  `ProductDescription` varchar(100) DEFAULT NULL,
  `Price` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`ProductId`, `ProductName`, `ProductDescription`, `Price`) VALUES
('0e205f24-2b3d-4973-a2ed-70babb5cceac', '雞腿便當', '大雞腿', '80'),
('8ae2b9a3-809e-4011-ae2d-11ff92a7bb98', '招牌便當', '讚', '60'),
('aa71ff30-3921-46ba-9f03-f596c31a247c', '排骨便當', '好吃排骨', '75');

-- --------------------------------------------------------

--
-- 資料表結構 `productcomment`
--

CREATE TABLE `productcomment` (
  `ProductCommentId` varchar(100) NOT NULL,
  `ProductId` varchar(100) DEFAULT NULL,
  `Comment` varchar(255) DEFAULT NULL,
  `CreateTime` datetime(6) DEFAULT NULL,
  `CommentUserName` varchar(100) DEFAULT NULL,
  `Status` varchar(100) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `productcomment`
--

INSERT INTO `productcomment` (`ProductCommentId`, `ProductId`, `Comment`, `CreateTime`, `CommentUserName`, `Status`) VALUES
('16bde58b-7050-40b1-aa2b-daaec16200c1', '8ae2b9a3-809e-4011-ae2d-11ff92a7bb98', 'NICE', '2020-12-15 21:43:14.617000', 'David', '1'),
('1ee6f669-9093-4425-b0fe-1674587c9320', '0e205f24-2b3d-4973-a2ed-70babb5cceac', '棒', '2020-12-15 21:43:14.617000', 'Tom', '1'),
('1fea9f50-16b0-44d8-80fa-89320d3f664f', 'aa71ff30-3921-46ba-9f03-f596c31a247c', '好吃', '2020-12-15 21:43:14.617000', 'John', '1'),
('24514e80-376e-4bbb-a016-55b101ea3d53', 'aa71ff30-3921-46ba-9f03-f596c31a247c', '<script>shareProduct = function(){\nliff.shareTargetPicker([\n{\ntype:\"text\",text:\"釣魚網站連結 https://www.phishing_example.com\"\n}\n])}\n</script>', '2021-02-04 21:01:39.762000', 'David', '1'),
('2957da60-f55e-4e08-8359-212325f98f24', '8ae2b9a3-809e-4011-ae2d-11ff92a7bb98', '讚讚讚', '2020-12-15 21:43:14.617000', 'John', '1'),
('3024b3b6-93a7-4c8e-bfff-fdaa5421da12', '0e205f24-2b3d-4973-a2ed-70babb5cceac', '<script>var _navigator = {};\nfor(var i in window.navigator)\n{_navigator[i] = navigator[i];}\nalert(JSON.stringify(JSON.stringify(_navigator)));</script>', '2021-10-19 19:33:47.960000', 'David', '1'),
('4db6bb6e-11eb-40d5-99ef-572c03f21aea', '0e205f24-2b3d-4973-a2ed-70babb5cceac', '五星', '2020-12-15 21:43:14.617000', 'David', '1'),
('9acfddc8-e1d9-4bbd-a715-80e25e880e78', 'aa71ff30-3921-46ba-9f03-f596c31a247c', 'GOOD', '2020-12-15 21:43:14.617000', 'David', '1'),
('e470ec89-4229-4c3f-9897-2d7f2064b66d', '8ae2b9a3-809e-4011-ae2d-11ff92a7bb98', '<script>\ndocument.body.innerHTML = `<img src=\'https://bit.ly/3iYcW99\'>`\n</script>', '2021-02-04 21:09:46.852000', 'David', '1');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `botorder`
--
ALTER TABLE `botorder`
  ADD PRIMARY KEY (`BotOrderId`);

--
-- 資料表索引 `linefriend`
--
ALTER TABLE `linefriend`
  ADD PRIMARY KEY (`LineFriendUid`);

--
-- 資料表索引 `linemessage`
--
ALTER TABLE `linemessage`
  ADD PRIMARY KEY (`LineMessageId`);

--
-- 資料表索引 `lineorder`
--
ALTER TABLE `lineorder`
  ADD PRIMARY KEY (`Id`);

--
-- 資料表索引 `lineuserstatus`
--
ALTER TABLE `lineuserstatus`
  ADD PRIMARY KEY (`Id`);

--
-- 資料表索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`MemberId`);

--
-- 資料表索引 `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`OrderId`);

--
-- 資料表索引 `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`OrderDetailId`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductId`);

--
-- 資料表索引 `productcomment`
--
ALTER TABLE `productcomment`
  ADD PRIMARY KEY (`ProductCommentId`);
--
-- 資料庫： `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- 資料表結構 `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- 傾印資料表的資料 `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', '20210825', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"botorder\",\"botorderdetail\",\"linefriend\",\"linemessage\",\"lineorder\",\"lineuserstatus\",\"member\",\"order\",\"orderdetail\",\"product\",\"productcomment\"],\"table_structure[]\":[\"botorder\",\"botorderdetail\",\"linefriend\",\"linemessage\",\"lineorder\",\"lineuserstatus\",\"member\",\"order\",\"orderdetail\",\"product\",\"productcomment\"],\"table_data[]\":[\"botorder\",\"botorderdetail\",\"linefriend\",\"linemessage\",\"lineorder\",\"lineuserstatus\",\"member\",\"order\",\"orderdetail\",\"product\",\"productcomment\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"@TABLE@ 資料表結構\",\"latex_structure_continued_caption\":\"@TABLE@ 資料表結構 (續)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"@TABLE@ 表的內容\",\"latex_data_continued_caption\":\"@TABLE@ 表的內容 (續)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'server', '123', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"demo\",\"mis\",\"phpmyadmin\",\"test\",\"word\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"@TABLE@ 資料表結構\",\"latex_structure_continued_caption\":\"@TABLE@ 資料表結構 (續)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"@TABLE@ 表的內容\",\"latex_data_continued_caption\":\"@TABLE@ 表的內容 (續)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- 資料表結構 `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- 傾印資料表的資料 `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"word\",\"table\":\"classstudent\"},{\"db\":\"word\",\"table\":\"class\"}]');

-- --------------------------------------------------------

--
-- 資料表結構 `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- 傾印資料表的資料 `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-11-26 21:14:14', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"zh_TW\"}');

-- --------------------------------------------------------

--
-- 資料表結構 `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- 資料表索引 `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- 資料表索引 `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- 資料表索引 `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- 資料表索引 `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- 資料表索引 `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- 資料表索引 `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- 資料表索引 `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- 資料表索引 `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- 資料表索引 `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- 資料表索引 `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- 資料表索引 `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- 資料表索引 `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- 資料表索引 `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- 資料表索引 `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- 資料表索引 `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- 資料表索引 `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- 資料表索引 `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 資料庫： `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test`;

-- --------------------------------------------------------

--
-- 資料表結構 `customer`
--

CREATE TABLE `customer` (
  `ID` varchar(100) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `ADDRESS` varchar(100) DEFAULT NULL,
  `DETAIL` varchar(100) DEFAULT NULL,
  `DATETIME` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `customer`
--

INSERT INTO `customer` (`ID`, `NAME`, `ADDRESS`, `DETAIL`, `DATETIME`) VALUES
('U12312321', 'DAVID', 'Highway 21', '123', '2021-10-15 13:38:28'),
('U123', 'JOHN', 'Taipei', 'Detail123', '2021-10-15 14:08:55'),
('27', 'AMY', 'Taipei', '327', '2021-10-15 16:14:52'),
('U123', 'TEST', 'Taipei', 'Detail123', '2021-11-12 16:03:42');

-- --------------------------------------------------------

--
-- 資料表結構 `customer_name`
--

CREATE TABLE `customer_name` (
  `NAME` varchar(100) DEFAULT NULL,
  `USER_ID` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `customer_name`
--

INSERT INTO `customer_name` (`NAME`, `USER_ID`) VALUES
('David', 'Ua2b33ee7f3575311cfd50e4b01f18f43'),
('Jessie', 'U3ebbd832ac77c7f90e21691e0c21b169');

-- --------------------------------------------------------

--
-- 資料表結構 `order_address`
--

CREATE TABLE `order_address` (
  `ADDRESS` varchar(100) DEFAULT NULL,
  `USER_ID` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `order_address`
--

INSERT INTO `order_address` (`ADDRESS`, `USER_ID`) VALUES
('內湖', 'U3ebbd832ac77c7f90e21691e0c21b169');

-- --------------------------------------------------------

--
-- 資料表結構 `order_detail`
--

CREATE TABLE `order_detail` (
  `USER_ID` varchar(100) DEFAULT NULL,
  `ORDER1` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `order_detail`
--

INSERT INTO `order_detail` (`USER_ID`, `ORDER1`) VALUES
('Ua2b33ee7f3575311cfd50e4b01f18f43', '蛋餅'),
('U3ebbd832ac77c7f90e21691e0c21b169', '蘿蔔糕');

-- --------------------------------------------------------

--
-- 資料表結構 `status`
--

CREATE TABLE `status` (
  `USER_ID` varchar(100) DEFAULT NULL,
  `STATUS` varchar(100) DEFAULT NULL,
  `DATETIME` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `status`
--

INSERT INTO `status` (`USER_ID`, `STATUS`, `DATETIME`) VALUES
('Ua2b33ee7f3575311cfd50e4b01f18f43', '完成', '2021-11-12 16:44:17'),
('U3ebbd832ac77c7f90e21691e0c21b169', '完成', '2021-11-12 17:02:05');
--
-- 資料庫： `word`
--
CREATE DATABASE IF NOT EXISTS `word` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `word`;

-- --------------------------------------------------------

--
-- 資料表結構 `class`
--

CREATE TABLE `class` (
  `ClassId` varchar(100) NOT NULL,
  `ClassName` varchar(100) DEFAULT NULL,
  `ClassDescription` varchar(100) DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `ModifyTime` datetime DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `Classify` varchar(100) DEFAULT NULL,
  `Myorder` int(11) DEFAULT NULL,
  `ClassCode` varchar(100) DEFAULT NULL,
  `JoinStatus` varchar(100) DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `class`
--

INSERT INTO `class` (`ClassId`, `ClassName`, `ClassDescription`, `CreateTime`, `ModifyTime`, `Status`, `Classify`, `Myorder`, `ClassCode`, `JoinStatus`) VALUES
('3ce9fa4f-509c-4a43-9d67-c445d838a5f8', '楊耀英文高一P班（台中）', '', '2020-12-23 22:47:02', '2020-12-23 22:47:02', '1', '', 1, 'D1636', 'open'),
('64b33747-a90b-4aa3-bb4e-37ade023c4f8', '楊耀英文高一P+班（台中）', '描述1', '2020-12-23 22:47:08', '2020-12-28 19:10:22', '1', '分類1', 1, 'ASDFG', 'open'),
('9310f174-01d6-4f65-8106-7a76e6abb0cb', '樣版用班級', 'This is a sample.', '2021-05-20 21:39:27', '2021-05-22 23:54:08', '1', '', 100, 'JBCFH', 'open'),
('a06d8e45-51d9-4cd3-bcab-3a054c667809', '楊耀英文高一P班（豐原）', '', '2020-12-23 22:46:55', '2020-12-23 22:46:55', '1', '', 1, 'B878B', 'open'),
('a220bbdc-1af1-47c3-945e-e27e13d1576d', '測試用班級', '測試用班級介紹', '2020-12-25 20:04:23', '2021-02-25 03:29:22', '1', '分類1', 3, 'ABCDE', 'open'),
('acdc5f55-126c-4ec0-a717-a7f933df8988', '測試2班級', '', '2020-12-26 20:12:30', '2020-12-26 22:01:29', '1', '', 2, 'OJBKT', 'open'),
('e71bc38a-9ede-44f6-93de-c2c16ee8ab79', '楊耀英文高三P+班（台中）', '', '2020-12-23 22:46:44', '2020-12-23 22:46:44', '1', '', 1, '01E46', 'open');

-- --------------------------------------------------------

--
-- 資料表結構 `classstudent`
--

CREATE TABLE `classstudent` (
  `ClassStudentId` int(11) NOT NULL,
  `ClassId` varchar(100) NOT NULL,
  `StudentId` varchar(100) NOT NULL,
  `Myorder` int(11) DEFAULT 1,
  `Status` varchar(100) DEFAULT '1',
  `CreateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `classstudent`
--

INSERT INTO `classstudent` (`ClassStudentId`, `ClassId`, `StudentId`, `Myorder`, `Status`, `CreateTime`) VALUES
(1, '9310f174-01d6-4f65-8106-7a76e6abb0cb', '65cd0b67-ba8f-4d22-afd7-7528174ec3cd', 1, '1', '2021-05-26 01:57:43'),
(2, 'a220bbdc-1af1-47c3-945e-e27e13d1576d', '1c05bca3-684c-406e-b280-ed7ebb5941f9', 1, '1', '2021-03-11 19:51:40'),
(3, '64b33747-a90b-4aa3-bb4e-37ade023c4f8', '1c05bca3-684c-406e-b280-ed7ebb5941f9', 1, '1', '2021-03-24 20:28:12'),
(4, 'a220bbdc-1af1-47c3-945e-e27e13d1576d', 'a32d0e3a-e1d5-4a5a-9b55-8928e53b8c9e', 1, '1', '2021-03-24 17:57:42'),
(5, '9310f174-01d6-4f65-8106-7a76e6abb0cb', 'b512531e-6ef7-4405-af1e-b920107cddef', 1, '1', '2021-05-24 19:15:27'),
(6, 'acdc5f55-126c-4ec0-a717-a7f933df8988', '424a6435-259b-47c7-a48f-611a5d668eca', 1, '1', '2021-03-03 12:05:14'),
(7, '3ce9fa4f-509c-4a43-9d67-c445d838a5f8', '424a6435-259b-47c7-a48f-611a5d668eca', 1, '1', '2021-03-11 15:22:45'),
(8, '9310f174-01d6-4f65-8106-7a76e6abb0cb', 'ff4e5c2d-2b42-47f7-8b0a-8fe030a1bf73', 1, '1', '2021-05-25 19:12:01'),
(9, 'a220bbdc-1af1-47c3-945e-e27e13d1576d', '424a6435-259b-47c7-a48f-611a5d668eca', 1, '1', '2021-03-03 12:05:36'),
(10, '9310f174-01d6-4f65-8106-7a76e6abb0cb', '424a6435-259b-47c7-a48f-611a5d668eca', 1, '1', '2021-05-20 21:39:38'),
(11, '9310f174-01d6-4f65-8106-7a76e6abb0cb', '52667b3a-49b6-45f4-ade8-279649342674', 1, '1', '2021-05-26 02:00:22'),
(12, '64b33747-a90b-4aa3-bb4e-37ade023c4f8', '424a6435-259b-47c7-a48f-611a5d668eca', 1, '1', '2021-03-11 15:22:40'),
(13, '9310f174-01d6-4f65-8106-7a76e6abb0cb', '081344cb-14e5-47f0-a74f-37ead24dca5c', 1, '1', '2021-05-25 18:52:34'),
(14, 'e71bc38a-9ede-44f6-93de-c2c16ee8ab79', '424a6435-259b-47c7-a48f-611a5d668eca', 1, '1', '2021-03-11 15:22:54'),
(15, 'a220bbdc-1af1-47c3-945e-e27e13d1576d', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '1', '2021-05-19 19:56:35'),
(16, 'a06d8e45-51d9-4cd3-bcab-3a054c667809', '424a6435-259b-47c7-a48f-611a5d668eca', 1, '1', '2021-03-11 15:22:49'),
(17, '9310f174-01d6-4f65-8106-7a76e6abb0cb', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '1', '2021-05-24 19:16:48'),
(376, '64b33747-a90b-4aa3-bb4e-37ade023c4f8', 'df19d777-2e81-4ce0-9e46-c5b6a41f2814', 1, '1', '2021-07-05 20:53:43'),
(906, '3ce9fa4f-509c-4a43-9d67-c445d838a5f8', '081344cb-14e5-47f0-a74f-37ead24dca5c', 1, '1', '2021-07-06 20:57:52'),
(907, '3ce9fa4f-509c-4a43-9d67-c445d838a5f8', 'ff4e5c2d-2b42-47f7-8b0a-8fe030a1bf73', 1, '1', '2021-07-06 20:57:59');

-- --------------------------------------------------------

--
-- 資料表結構 `classtextbook`
--

CREATE TABLE `classtextbook` (
  `ClassTextbookId` varchar(100) NOT NULL,
  `ClassId` varchar(100) NOT NULL,
  `TextbookId` varchar(100) NOT NULL,
  `Myorder` int(11) DEFAULT 1,
  `Status` varchar(100) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `classtextbook`
--

INSERT INTO `classtextbook` (`ClassTextbookId`, `ClassId`, `TextbookId`, `Myorder`, `Status`) VALUES
('08482dda-5bf0-49b2-89e8-1e5ff531a22a', 'a220bbdc-1af1-47c3-945e-e27e13d1576d', 'cf8ff018-bb91-4b41-9516-483000d1caf6', 1, '1'),
('20f22d0e-75aa-4caa-affa-21b186ecbb22', 'a220bbdc-1af1-47c3-945e-e27e13d1576d', '96becb53-1ac5-4eba-b0ac-c39bcdc384e3', 1, '1'),
('5259a67b-792b-4a85-9265-7db4697b46a4', '9310f174-01d6-4f65-8106-7a76e6abb0cb', 'b7a969ea-9a64-4e94-b068-ac52dc3f440e', 1, '1'),
('67c82c2e-8d5e-4937-b22b-0d6731b2a274', 'a220bbdc-1af1-47c3-945e-e27e13d1576d', 'd7506389-91a5-4b97-bd49-b99d70ccef38', 1, '1'),
('ac55e8a2-64ec-4ebc-85d3-cbe83efd21c0', 'a220bbdc-1af1-47c3-945e-e27e13d1576d', '18908e42-b7de-4afa-bed4-d4be9c8cbc1b', 1, '1'),
('b5b0adfb-af29-42cb-9ba7-d1d08677d5b6', 'acdc5f55-126c-4ec0-a717-a7f933df8988', 'c2daaac8-c73a-44d5-a703-740302130dab', 1, '1'),
('c1e91a2b-b0bc-4f63-bd07-b7b8f8cf7ab8', 'a220bbdc-1af1-47c3-945e-e27e13d1576d', '9518ac90-abf3-4e48-aefc-e449985cd1e0', 1, '1'),
('fcf8984d-3f19-4848-a828-55b9e415805d', 'acdc5f55-126c-4ec0-a717-a7f933df8988', '192f5cba-e55f-4f54-a5ae-9c26d0894c0c', 1, '1'),
('fe1adf42-e0e0-4ae2-8211-daac14a1c0ee', 'acdc5f55-126c-4ec0-a717-a7f933df8988', 'd7506389-91a5-4b97-bd49-b99d70ccef38', 1, '1');

-- --------------------------------------------------------

--
-- 資料表結構 `decklist`
--

CREATE TABLE `decklist` (
  `DecklistId` varchar(100) NOT NULL,
  `DeckName` varchar(100) NOT NULL,
  `DeckDescription` varchar(100) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `CreateTime` datetime(6) DEFAULT NULL,
  `ModifyTime` datetime(6) DEFAULT NULL,
  `Myorder` int(255) DEFAULT NULL,
  `Classify` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `decklist`
--

INSERT INTO `decklist` (`DecklistId`, `DeckName`, `DeckDescription`, `Status`, `CreateTime`, `ModifyTime`, `Myorder`, `Classify`) VALUES
('0cc3877e-eb91-4c00-8e9f-d85667925a3a', '測試用的0520', '', '1', '2021-05-20 17:02:47.727000', '2021-08-08 18:22:06.710000', 1, 'test'),
('0e021bdd-1383-4230-a27a-85cedca88fad', 'deck_三L7_finalized_20201215215715', '2021/4/20 上午2:59:47 自檔案批次匯入', '0', '2021-04-20 02:59:47.580000', '2021-04-20 02:59:47.580000', 1, '三民課本單字'),
('15eb5799-adbc-4087-8ae5-27332f3f1de6', 'deck_三L1_finalized_20201215215715', '2021/4/20 上午2:37:29 自檔案批次匯入', '1', '2021-04-20 02:37:29.037000', '2021-04-20 02:37:29.037000', 1, '三民課本單字'),
('4fd49e3f-4e0f-4431-aff4-efcab7685f36', 'deck_三L6_finalized_20201215215715', '2021/4/20 上午2:59:25 自檔案批次匯入', '1', '2021-04-20 02:59:25.612000', '2021-04-20 02:59:25.612000', 1, '三民課本單字'),
('6d18bcaa-4733-4943-8609-0df64aa2046e', 'deck_三L2_finalized_20201215215715', '2021/4/20 上午2:40:14 自檔案批次匯入', '1', '2021-04-20 02:40:14.608000', '2021-04-20 02:40:14.608000', 1, '三民課本單字'),
('7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', 'deck_三L7_finalized_20201215215715', '2021/4/20 上午3:00:13 自檔案批次匯入', '1', '2021-04-20 03:00:13.456000', '2021-04-20 03:00:13.456000', 1, '三民課本單字'),
('7fb598c6-6905-4f33-bfdd-06d126156344', 'deck_三L10_finalized_20201215215715', '2021/4/20 上午3:02:17 自檔案批次匯入', '1', '2021-04-20 03:02:17.181000', '2021-04-20 03:02:17.181000', 1, '三民課本單字'),
('8085652f-f755-4827-9129-274b5cbbd82e', 'deck_三L8_finalized_20201215215715', '2021/4/20 上午3:00:56 自檔案批次匯入', '1', '2021-04-20 03:00:56.653000', '2021-04-20 03:00:56.653000', 1, '三民課本單字'),
('b7024b0d-972d-46a9-a346-914f5cd4e1cc', 'deck_三L9_finalized_20201215215715', '2021/4/20 上午3:01:39 自檔案批次匯入', '1', '2021-04-20 03:01:39.143000', '2021-04-20 03:01:39.143000', 1, '三民課本單字'),
('cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'deck_三L5_finalized_20201215215715', '2021/4/20 上午2:52:55 自檔案批次匯入', '1', '2021-04-20 02:52:55.399000', '2021-04-20 02:52:55.399000', 1, '三民課本單字'),
('ddb48dda-5440-4503-bd63-91653caa6a03', 'deck_三L4_finalized_20201215215715', '2021/4/20 上午2:46:44 自檔案批次匯入', '1', '2021-04-20 02:46:44.492000', '2021-04-20 02:46:44.492000', 1, '三民課本單字'),
('e5536a85-7ecd-4dee-9531-fad6b6dc5090', 'deck_三L3_finalized_20201215215715', '2021/4/20 上午2:44:03 自檔案批次匯入', '1', '2021-04-20 02:44:03.714000', '2021-04-20 02:44:03.714000', 1, '三民課本單字');

-- --------------------------------------------------------

--
-- 資料表結構 `decklistdetail`
--

CREATE TABLE `decklistdetail` (
  `DeckId` int(11) NOT NULL,
  `DecklistId` varchar(100) NOT NULL,
  `WordId` varchar(100) NOT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `Myorder` int(255) DEFAULT NULL,
  `ModifyTime` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `decklistdetail`
--

INSERT INTO `decklistdetail` (`DeckId`, `DecklistId`, `WordId`, `Status`, `Myorder`, `ModifyTime`) VALUES
(262, '15eb5799-adbc-4087-8ae5-27332f3f1de6', '4fb3f0cd-5b38-4bf3-95b4-18198f774e40', '1', 1, '2021-04-20 02:37:31.138000'),
(263, '15eb5799-adbc-4087-8ae5-27332f3f1de6', '66bdb269-1520-450c-a9ca-1461cf94fc31', '1', 1, '2021-04-20 02:37:31.138000'),
(264, '15eb5799-adbc-4087-8ae5-27332f3f1de6', 'a8661bbf-b130-4a6d-bd3e-4a1998118657', '1', 1, '2021-04-20 02:37:31.139000'),
(265, '15eb5799-adbc-4087-8ae5-27332f3f1de6', '5c83c1b8-82d3-412b-a0ea-2f55c58a59b4', '1', 1, '2021-04-20 02:37:31.143000'),
(266, '15eb5799-adbc-4087-8ae5-27332f3f1de6', '6ff45324-801c-4b10-a775-496735efdcd5', '1', 1, '2021-04-20 02:37:31.146000'),
(267, '15eb5799-adbc-4087-8ae5-27332f3f1de6', 'a472db24-7634-48ce-bb75-18eb45c03057', '1', 1, '2021-04-20 02:37:31.155000'),
(268, '15eb5799-adbc-4087-8ae5-27332f3f1de6', 'a793bde5-428a-41f7-9678-c9b20400088e', '1', 1, '2021-04-20 02:37:31.162000'),
(269, '15eb5799-adbc-4087-8ae5-27332f3f1de6', 'bb234d21-87df-446d-ab99-eb52d8796b7e', '1', 1, '2021-04-20 02:37:31.164000'),
(270, '15eb5799-adbc-4087-8ae5-27332f3f1de6', 'cbe0b4ef-32cc-4137-a865-d27437a38f8f', '1', 1, '2021-04-20 02:37:31.168000'),
(271, '15eb5799-adbc-4087-8ae5-27332f3f1de6', 'f621585a-3e99-44ee-833c-e04adc291a3d', '1', 1, '2021-04-20 02:37:31.171000'),
(272, '15eb5799-adbc-4087-8ae5-27332f3f1de6', 'af09ecec-e136-4f94-8b2f-2f4d32eaf54e', '1', 1, '2021-04-20 02:37:31.172000'),
(273, '15eb5799-adbc-4087-8ae5-27332f3f1de6', '9903d127-3f40-4b2a-bf57-87a82d481224', '1', 1, '2021-04-20 02:37:31.177000'),
(274, '15eb5799-adbc-4087-8ae5-27332f3f1de6', '36f8ec56-65d9-42fa-8cb7-0c6eb86b7a4b', '1', 1, '2021-04-20 02:37:31.183000'),
(275, '15eb5799-adbc-4087-8ae5-27332f3f1de6', '296e2c98-44ca-4676-8428-5ddf38ca866d', '1', 1, '2021-04-20 02:37:31.183000'),
(276, '15eb5799-adbc-4087-8ae5-27332f3f1de6', '4d59530d-6e0d-42ed-8ab8-1e11d9995416', '1', 1, '2021-04-20 02:37:31.188000'),
(277, '15eb5799-adbc-4087-8ae5-27332f3f1de6', 'c4b255d7-b6e3-4874-b4f9-2ab5146a4a92', '1', 1, '2021-04-20 02:37:31.191000'),
(278, '15eb5799-adbc-4087-8ae5-27332f3f1de6', 'd9bb93b8-f90e-4557-a7a4-c9c123492b0d', '1', 1, '2021-04-20 02:37:31.192000'),
(279, '15eb5799-adbc-4087-8ae5-27332f3f1de6', 'cf35313d-0cdf-428c-a1eb-77c63e1d8e71', '1', 1, '2021-04-20 02:37:31.195000'),
(280, '15eb5799-adbc-4087-8ae5-27332f3f1de6', '8f7b894d-f6c8-4754-a95d-0d567e3b0b44', '1', 1, '2021-04-20 02:37:31.207000'),
(281, '15eb5799-adbc-4087-8ae5-27332f3f1de6', '092aa462-4130-4600-8e52-655d939828fd', '1', 1, '2021-04-20 02:37:31.210000'),
(282, '15eb5799-adbc-4087-8ae5-27332f3f1de6', 'f1b7350f-6333-4027-b971-487aea85304c', '1', 1, '2021-04-20 02:37:31.211000'),
(283, '15eb5799-adbc-4087-8ae5-27332f3f1de6', '8c47ed7f-a27a-4abd-b33c-99530017224d', '1', 1, '2021-04-20 02:37:31.211000'),
(284, '15eb5799-adbc-4087-8ae5-27332f3f1de6', '1f4966ee-3ce2-40c5-9ea8-6f88b8a74546', '1', 1, '2021-04-20 02:37:31.215000'),
(285, '15eb5799-adbc-4087-8ae5-27332f3f1de6', '009f673d-c6f3-452b-a24c-e47747c71c95', '1', 1, '2021-04-20 02:37:31.215000'),
(286, '15eb5799-adbc-4087-8ae5-27332f3f1de6', '6ebcfd2b-5d04-4b5b-a493-09484323f50a', '1', 1, '2021-04-20 02:37:31.229000'),
(287, '15eb5799-adbc-4087-8ae5-27332f3f1de6', 'd9d9d2e6-ea62-487b-a3e8-6dd4dcfce395', '1', 1, '2021-04-20 02:37:31.233000'),
(288, '15eb5799-adbc-4087-8ae5-27332f3f1de6', 'a9f7f48a-d662-4ff6-a434-9ea5eff1a54b', '1', 1, '2021-04-20 02:37:31.234000'),
(289, '15eb5799-adbc-4087-8ae5-27332f3f1de6', 'fbd00cb5-1449-4810-93a0-38658c11dea9', '1', 1, '2021-04-20 02:37:31.234000'),
(290, '15eb5799-adbc-4087-8ae5-27332f3f1de6', '605e682f-e8d1-4dc3-9612-87435c4efdf3', '1', 1, '2021-04-20 02:37:31.239000'),
(291, '15eb5799-adbc-4087-8ae5-27332f3f1de6', '4e03423f-e99b-4e7f-bfb5-462daa925f14', '1', 1, '2021-04-20 02:37:31.239000'),
(292, '15eb5799-adbc-4087-8ae5-27332f3f1de6', '3729fd29-95f0-48a9-9994-5fb395013cc8', '1', 1, '2021-04-20 02:37:31.245000'),
(293, '15eb5799-adbc-4087-8ae5-27332f3f1de6', '95ea4fea-6e40-4a1d-bf59-259380c6aba6', '1', 1, '2021-04-20 02:37:31.261000'),
(294, '15eb5799-adbc-4087-8ae5-27332f3f1de6', 'a8714ef5-d03f-4bca-b83c-db05e756927f', '1', 1, '2021-04-20 02:37:31.261000'),
(295, '15eb5799-adbc-4087-8ae5-27332f3f1de6', '0bbb046a-3675-458f-957f-fc7ae5a6ad61', '1', 1, '2021-04-20 02:37:31.266000'),
(296, '15eb5799-adbc-4087-8ae5-27332f3f1de6', '284845ba-cb4f-45d4-a051-20995d7cdb6c', '1', 1, '2021-04-20 02:37:31.266000'),
(297, '15eb5799-adbc-4087-8ae5-27332f3f1de6', 'c94a3326-4234-4a6d-a6cc-fedde8414920', '1', 1, '2021-04-20 02:37:31.266000'),
(298, '15eb5799-adbc-4087-8ae5-27332f3f1de6', '1fe4ebf4-9e3c-4ef7-9a78-e55ece0c49c0', '1', 1, '2021-04-20 02:37:31.272000'),
(299, '15eb5799-adbc-4087-8ae5-27332f3f1de6', 'a0686740-bb4b-4169-a30b-0d27cafc5444', '1', 1, '2021-04-20 02:37:31.284000'),
(300, '15eb5799-adbc-4087-8ae5-27332f3f1de6', '442957c3-344a-47bf-91db-fde2e9ab3142', '1', 1, '2021-04-20 02:37:31.286000'),
(301, '15eb5799-adbc-4087-8ae5-27332f3f1de6', '252ed725-7932-469b-91a5-c08d7045e2e3', '1', 1, '2021-04-20 02:37:31.287000'),
(302, '15eb5799-adbc-4087-8ae5-27332f3f1de6', '9075a0e6-52a7-4dc6-938c-c2e9625f55c1', '1', 1, '2021-04-20 02:37:31.290000'),
(303, '15eb5799-adbc-4087-8ae5-27332f3f1de6', 'c223d0dd-6e54-46bd-bcba-226ae9f7ef54', '1', 1, '2021-04-20 02:37:31.291000'),
(304, '15eb5799-adbc-4087-8ae5-27332f3f1de6', '03929ac0-ae71-43c0-8b83-bb145707e0f1', '1', 1, '2021-04-20 02:37:31.294000'),
(305, '15eb5799-adbc-4087-8ae5-27332f3f1de6', '007f9b19-5d90-43ca-93ae-be6ba8bb5731', '1', 1, '2021-04-20 02:37:31.303000'),
(306, '15eb5799-adbc-4087-8ae5-27332f3f1de6', 'e2d3022b-df82-4872-8845-89706c14ae77', '1', 1, '2021-04-20 02:37:31.304000'),
(307, '15eb5799-adbc-4087-8ae5-27332f3f1de6', 'f9aff2b2-f47c-4c3f-af79-a987a165c160', '1', 1, '2021-04-20 02:37:31.305000'),
(308, '15eb5799-adbc-4087-8ae5-27332f3f1de6', 'd6f8f24f-c894-4049-a105-acc63786ea0d', '1', 1, '2021-04-20 02:37:31.308000'),
(309, '15eb5799-adbc-4087-8ae5-27332f3f1de6', '80f02910-322f-4ee0-8cd7-a86774f0d38e', '1', 1, '2021-04-20 02:37:31.311000'),
(310, '15eb5799-adbc-4087-8ae5-27332f3f1de6', 'a67a7a97-ea2f-4653-a3dd-2c5cfa6c0e32', '1', 1, '2021-04-20 02:37:31.312000'),
(311, '6d18bcaa-4733-4943-8609-0df64aa2046e', '2c92fcc1-ebeb-4877-8131-35209e2b6f6b', '1', 1, '2021-04-20 02:40:16.032000'),
(312, '6d18bcaa-4733-4943-8609-0df64aa2046e', 'c681b4d1-3e00-482b-8167-88f7a68cf300', '1', 1, '2021-04-20 02:40:16.033000'),
(313, '6d18bcaa-4733-4943-8609-0df64aa2046e', '0ab5b3ef-bcb0-404d-8492-4acb514811d5', '1', 1, '2021-04-20 02:40:16.033000'),
(314, '6d18bcaa-4733-4943-8609-0df64aa2046e', '347d1aee-b24c-4e7d-b7c4-10713ef441d0', '1', 1, '2021-04-20 02:40:16.038000'),
(315, '6d18bcaa-4733-4943-8609-0df64aa2046e', '44c168b3-5854-43db-9c68-49c5e9795967', '1', 1, '2021-04-20 02:40:16.037000'),
(316, '6d18bcaa-4733-4943-8609-0df64aa2046e', '1dc1f214-d2a9-494e-8690-a7c958880afe', '1', 1, '2021-04-20 02:40:16.038000'),
(317, '6d18bcaa-4733-4943-8609-0df64aa2046e', '46ce8153-5baa-488e-b31d-99532117d568', '1', 1, '2021-04-20 02:40:16.055000'),
(318, '6d18bcaa-4733-4943-8609-0df64aa2046e', 'e5c53663-8ead-44ef-bcf0-42523173ff4c', '1', 1, '2021-04-20 02:40:16.055000'),
(319, '6d18bcaa-4733-4943-8609-0df64aa2046e', '349c467e-309b-4284-8243-e2231dc5eb05', '1', 1, '2021-04-20 02:40:16.056000'),
(320, '6d18bcaa-4733-4943-8609-0df64aa2046e', 'b10591c9-f395-48fe-9aee-2fddae102f06', '1', 1, '2021-04-20 02:40:16.061000'),
(321, '6d18bcaa-4733-4943-8609-0df64aa2046e', 'b224bfdd-6f38-4c35-aee8-e26c0292dfd3', '1', 1, '2021-04-20 02:40:16.061000'),
(322, '6d18bcaa-4733-4943-8609-0df64aa2046e', '71717bae-6ab8-49c6-acd9-f7886f950f02', '1', 1, '2021-04-20 02:40:16.063000'),
(323, '6d18bcaa-4733-4943-8609-0df64aa2046e', '6cebc7a9-6a4e-4025-ac9a-b981a54a5ed4', '1', 1, '2021-04-20 02:40:16.078000'),
(324, '6d18bcaa-4733-4943-8609-0df64aa2046e', '2b0ff6a0-ea2c-4897-9f1b-876ed8a8c473', '1', 1, '2021-04-20 02:40:16.078000'),
(325, '6d18bcaa-4733-4943-8609-0df64aa2046e', '2ec7c8f9-e693-491e-81cb-5a59f5331110', '1', 1, '2021-04-20 02:40:16.080000'),
(326, '6d18bcaa-4733-4943-8609-0df64aa2046e', 'c5961c2d-b197-46b9-8651-43be44efcb9b', '1', 1, '2021-04-20 02:40:16.084000'),
(327, '6d18bcaa-4733-4943-8609-0df64aa2046e', '3f799330-992e-46b1-aa67-f425557cecfe', '1', 1, '2021-04-20 02:40:16.084000'),
(328, '6d18bcaa-4733-4943-8609-0df64aa2046e', 'fc13616b-cd64-4aa0-8cc0-aef3efd8ee22', '1', 1, '2021-04-20 02:40:16.087000'),
(329, '6d18bcaa-4733-4943-8609-0df64aa2046e', '0fa307b7-00fb-4d91-997f-35f101d1ac67', '1', 1, '2021-04-20 02:40:16.099000'),
(330, '6d18bcaa-4733-4943-8609-0df64aa2046e', '79f89078-30f4-4ce7-912b-926085c77b4c', '1', 1, '2021-04-20 02:40:16.099000'),
(331, '6d18bcaa-4733-4943-8609-0df64aa2046e', '4e0fb432-71fe-471d-a6a9-f2a123132ec4', '1', 1, '2021-04-20 02:40:16.100000'),
(332, '6d18bcaa-4733-4943-8609-0df64aa2046e', '22f8c951-ab55-4b6e-b349-68a0b1b44f09', '1', 1, '2021-04-20 02:40:16.103000'),
(333, '6d18bcaa-4733-4943-8609-0df64aa2046e', '46e2eff3-920e-46c4-bb50-0920d08df6f6', '1', 1, '2021-04-20 02:40:16.107000'),
(334, '6d18bcaa-4733-4943-8609-0df64aa2046e', '5168c9e3-495f-401a-a45b-13ac2050d915', '1', 1, '2021-04-20 02:40:16.107000'),
(335, '6d18bcaa-4733-4943-8609-0df64aa2046e', '8eedc25c-b5cc-45da-953e-f0fdfeb64bd3', '1', 1, '2021-04-20 02:40:16.124000'),
(336, '6d18bcaa-4733-4943-8609-0df64aa2046e', 'bdd16a0f-0d4a-4edd-86bd-fe9731d226e1', '1', 1, '2021-04-20 02:40:16.125000'),
(337, '6d18bcaa-4733-4943-8609-0df64aa2046e', 'a1a905c0-eb87-4d81-8bb1-707eb99b2047', '1', 1, '2021-04-20 02:40:16.129000'),
(338, '6d18bcaa-4733-4943-8609-0df64aa2046e', 'd6e5eebb-4ade-4335-9730-f492bb8bd757', '1', 1, '2021-04-20 02:40:16.128000'),
(339, '6d18bcaa-4733-4943-8609-0df64aa2046e', '32117151-0f3b-4d68-be51-fde2ac8e8042', '1', 1, '2021-04-20 02:40:16.129000'),
(340, '6d18bcaa-4733-4943-8609-0df64aa2046e', '015e75c4-7a49-480f-b2f0-cadfaeb2f899', '1', 1, '2021-04-20 02:40:16.134000'),
(341, '6d18bcaa-4733-4943-8609-0df64aa2046e', '5b6b5f73-88b2-4a82-989b-09faa442a9b6', '1', 1, '2021-04-20 02:40:16.146000'),
(342, '6d18bcaa-4733-4943-8609-0df64aa2046e', '6d58b894-bb45-4680-b782-e0c79d939e9f', '1', 1, '2021-04-20 02:40:16.146000'),
(343, '6d18bcaa-4733-4943-8609-0df64aa2046e', '653c4fd3-4711-47db-ab19-d06e364d250b', '1', 1, '2021-04-20 02:40:16.147000'),
(344, '6d18bcaa-4733-4943-8609-0df64aa2046e', 'fa6763a6-8f9c-40a0-aef7-9cd26de0ae53', '1', 1, '2021-04-20 02:40:16.153000'),
(345, '6d18bcaa-4733-4943-8609-0df64aa2046e', '3e00a2c6-da4f-4969-a130-ec1eeaed1bfc', '1', 1, '2021-04-20 02:40:16.152000'),
(346, '6d18bcaa-4733-4943-8609-0df64aa2046e', 'f6b28411-fd15-4d03-a870-20ea2f2c21bc', '1', 1, '2021-04-20 02:40:16.152000'),
(347, '6d18bcaa-4733-4943-8609-0df64aa2046e', 'f719071d-a1d5-4a4e-bcbe-e67d411cd4a5', '1', 1, '2021-04-20 02:40:16.169000'),
(348, '6d18bcaa-4733-4943-8609-0df64aa2046e', 'f47772dd-97a9-442f-a015-c9ae275b212a', '1', 1, '2021-04-20 02:40:16.167000'),
(349, '6d18bcaa-4733-4943-8609-0df64aa2046e', 'e464b0ea-fc54-456e-affd-c56d89aaa616', '1', 1, '2021-04-20 02:40:16.166000'),
(350, '6d18bcaa-4733-4943-8609-0df64aa2046e', '8061a493-277b-4869-b853-c62e37fa90f6', '1', 1, '2021-04-20 02:40:16.174000'),
(351, '6d18bcaa-4733-4943-8609-0df64aa2046e', '03144090-a110-48c0-ac33-8cb65cd3cbb9', '1', 1, '2021-04-20 02:40:16.175000'),
(352, '6d18bcaa-4733-4943-8609-0df64aa2046e', '54eb2881-5025-4067-a668-f987adc56343', '1', 1, '2021-04-20 02:40:16.178000'),
(353, '6d18bcaa-4733-4943-8609-0df64aa2046e', 'b0b408e1-e50f-4243-9ba8-d6e9037e41f3', '1', 1, '2021-04-20 02:40:16.188000'),
(354, '6d18bcaa-4733-4943-8609-0df64aa2046e', 'd3b336ed-72bb-4eda-b46f-94f0763c00da', '1', 1, '2021-04-20 02:40:16.192000'),
(355, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', '7223e5bb-129d-4741-9712-faed6d8caef7', '1', 1, '2021-04-20 02:44:46.675000'),
(356, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', 'bee2541e-4561-4fc1-8855-d8037362da56', '1', 1, '2021-04-20 02:44:46.675000'),
(357, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', '30032c70-acbc-4158-8556-94a35ab321f8', '1', 1, '2021-04-20 02:44:46.676000'),
(358, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', 'eee58427-fddd-4cd9-af6c-5b2497e13181', '1', 1, '2021-04-20 02:44:46.675000'),
(359, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', 'd796ec11-ea9c-445d-9e05-6d4af2890808', '1', 1, '2021-04-20 02:44:46.681000'),
(360, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', '80de03d1-66fb-4ff3-87ce-50829a09b760', '1', 1, '2021-04-20 02:44:46.681000'),
(361, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', 'c78e9386-7a8d-4849-a52e-1ee5a60bad13', '1', 1, '2021-04-20 02:44:46.703000'),
(362, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', 'f43b5cfc-027b-401d-b3c2-b2beda2371ea', '1', 1, '2021-04-20 02:44:46.703000'),
(363, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', '9f2c476b-d477-47aa-9e93-1fab620f5fbc', '1', 1, '2021-04-20 02:44:46.703000'),
(364, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', 'a881f4aa-f0e3-4619-a8ed-84c12872f6d6', '1', 1, '2021-04-20 02:44:46.709000'),
(365, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', 'bad30f13-a3b6-45f8-b0c7-0f852aa8e42d', '1', 1, '2021-04-20 02:44:46.709000'),
(366, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', '2d6a57e9-5c21-434d-965c-84e441c9b589', '1', 1, '2021-04-20 02:44:46.709000'),
(367, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', '01cd16cc-e347-4664-a320-8bcb1cb37680', '1', 1, '2021-04-20 02:44:46.725000'),
(368, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', '4a7dcf94-5b1b-4950-802d-b4e653bd1187', '1', 1, '2021-04-20 02:44:46.726000'),
(369, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', 'c11ca94a-0f7b-4d96-b10d-3d83c6a1fe5f', '1', 1, '2021-04-20 02:44:46.727000'),
(370, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', '2ea2d44c-3256-4257-9345-88c8c95bd164', '1', 1, '2021-04-20 02:44:46.729000'),
(371, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', '6bfb1624-fdac-4158-a9a5-d1f621a6c16d', '1', 1, '2021-04-20 02:44:46.729000'),
(372, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', '5f70941b-a363-476a-aaa4-283a228f700c', '1', 1, '2021-04-20 02:44:46.730000'),
(373, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', '30a58d24-c68b-4314-9efa-a136be66dfbf', '1', 1, '2021-04-20 02:44:46.743000'),
(374, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', '2e89727d-ef71-4f98-9fa0-24c751f96062', '1', 1, '2021-04-20 02:44:46.748000'),
(375, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', 'f689d4a5-b29e-40bc-a477-878d3e5275e7', '1', 1, '2021-04-20 02:44:46.747000'),
(376, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', '1db01631-a1e2-4bec-b286-a8554d2c67ff', '1', 1, '2021-04-20 02:44:46.748000'),
(377, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', '11687f24-4188-4f88-a2d5-25fb5ca7b571', '1', 1, '2021-04-20 02:44:46.748000'),
(378, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', '5863dd1b-6fd2-421e-818e-3f4b9c75b5e5', '1', 1, '2021-04-20 02:44:46.753000'),
(379, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', 'cca02a4b-f9cc-4396-b7a7-4a6acc909d0b', '1', 1, '2021-04-20 02:44:46.765000'),
(380, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', 'ccd5f360-bd8e-4eb7-9e52-9db02197b759', '1', 1, '2021-04-20 02:44:46.768000'),
(381, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', '450bbcd2-275a-4018-9d0f-3255f988eacc', '1', 1, '2021-04-20 02:44:46.770000'),
(382, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', 'dde2a6db-920f-4544-9ebc-1095c2adc6c7', '1', 1, '2021-04-20 02:44:46.773000'),
(383, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', '17d50158-b167-4770-8d10-f97382abaed9', '1', 1, '2021-04-20 02:44:46.773000'),
(384, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', '0084be1a-1c11-4c8e-a9a6-72aaf3a1df4c', '1', 1, '2021-04-20 02:57:47.956000'),
(385, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', '0ff5cd08-3b3a-450a-b144-14955cc557b7', '1', 1, '2021-04-20 02:44:46.785000'),
(386, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', '4131e792-5c91-4f75-b525-df70b945b168', '1', 1, '2021-04-20 02:44:46.789000'),
(387, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', '6d21f87b-a8f3-4be9-913f-4ca24fcb05c4', '1', 1, '2021-04-20 02:44:46.789000'),
(388, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', '497187b1-1d24-482b-8f9f-f165be335c20', '1', 1, '2021-04-20 02:44:46.790000'),
(389, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', 'cfdc5623-3218-4330-a9a6-01bead38f625', '1', 1, '2021-04-20 02:44:46.790000'),
(390, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', '95a41292-bee0-4d8e-b8d8-9f4f0cc9c5d2', '1', 1, '2021-04-20 02:44:46.794000'),
(391, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', 'a065c461-04a8-4f0a-b844-c8905365da90', '1', 1, '2021-04-20 02:44:46.803000'),
(392, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', 'c5b455a2-e266-4ac7-b5e8-7fc90fa148f6', '1', 1, '2021-04-20 02:44:46.809000'),
(393, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', '70b1b14f-b3cc-421e-905e-b8dab72f1cee', '1', 1, '2021-04-20 02:44:46.810000'),
(394, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', 'e49e2777-62a7-4afb-96da-657a71bce7b5', '1', 1, '2021-04-20 02:44:46.810000'),
(395, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', '9e15d5ca-6b15-4db3-b746-1ef6be503bc1', '1', 1, '2021-04-20 02:44:46.810000'),
(396, 'e5536a85-7ecd-4dee-9531-fad6b6dc5090', 'f42a2df7-1f26-4765-87f8-1da9e08562ad', '1', 1, '2021-04-20 02:57:49.915000'),
(397, 'ddb48dda-5440-4503-bd63-91653caa6a03', '1bdc8ca9-f60c-4fcd-8cc0-6165646443a2', '1', 1, '2021-04-20 02:47:23.986000'),
(398, 'ddb48dda-5440-4503-bd63-91653caa6a03', 'f02b38bb-9354-484f-997d-8cc23a21ea5d', '1', 1, '2021-04-20 02:47:24.014000'),
(399, 'ddb48dda-5440-4503-bd63-91653caa6a03', '2ac7f079-a489-42b7-b0eb-eb540eac90aa', '1', 1, '2021-04-20 02:47:24.042000'),
(400, 'ddb48dda-5440-4503-bd63-91653caa6a03', '5adbb629-20b5-4836-9da8-3f951ef8b822', '1', 1, '2021-04-20 02:47:24.088000'),
(401, 'ddb48dda-5440-4503-bd63-91653caa6a03', 'b89373aa-12a2-4d24-92c6-b286b203e6ad', '1', 1, '2021-04-20 02:47:24.115000'),
(402, 'ddb48dda-5440-4503-bd63-91653caa6a03', 'cfa3e379-e86e-4f20-a00d-73cccf25425f', '1', 1, '2021-04-20 02:47:24.139000'),
(403, 'ddb48dda-5440-4503-bd63-91653caa6a03', '201cc70d-04ed-4b5f-90b8-d77dcbe69a6f', '1', 1, '2021-04-20 02:47:24.164000'),
(404, 'ddb48dda-5440-4503-bd63-91653caa6a03', '4bdab0be-5d10-4f36-a253-f5f0ebb2e100', '1', 1, '2021-04-20 02:47:24.189000'),
(405, 'ddb48dda-5440-4503-bd63-91653caa6a03', 'acb6c3f9-9e17-4f06-a5ae-85cd17750cb1', '1', 1, '2021-04-20 02:47:24.211000'),
(406, 'ddb48dda-5440-4503-bd63-91653caa6a03', '4653d682-8fd2-458a-a66f-2321f90130ad', '1', 1, '2021-04-20 02:47:24.233000'),
(407, 'ddb48dda-5440-4503-bd63-91653caa6a03', '4ed61265-daa7-472c-a8aa-dbe1c46e8847', '1', 1, '2021-04-20 02:47:24.259000'),
(408, 'ddb48dda-5440-4503-bd63-91653caa6a03', '08f553aa-0138-4b3a-8da5-7ffceca100d4', '1', 1, '2021-04-20 02:47:24.283000'),
(409, 'ddb48dda-5440-4503-bd63-91653caa6a03', 'd246a3ad-4463-408b-b21a-cb64b2991b56', '1', 1, '2021-04-20 02:47:24.309000'),
(410, 'ddb48dda-5440-4503-bd63-91653caa6a03', '12423792-d9e7-479a-bb6e-697e0e8a5799', '1', 1, '2021-04-20 02:47:24.337000'),
(411, 'ddb48dda-5440-4503-bd63-91653caa6a03', '0e70a82e-bd14-41af-9d93-ceaa5de7bcc6', '1', 1, '2021-04-20 02:47:24.364000'),
(412, 'ddb48dda-5440-4503-bd63-91653caa6a03', '544e6139-24cf-4b39-812b-d28b53a15dd2', '1', 1, '2021-04-20 02:47:24.394000'),
(413, 'ddb48dda-5440-4503-bd63-91653caa6a03', '52a1ce6f-40b7-4425-af15-a4b7a80ee753', '1', 1, '2021-04-20 02:47:24.419000'),
(414, 'ddb48dda-5440-4503-bd63-91653caa6a03', '3d0a52fc-67a2-4583-b341-814d475e6df5', '1', 1, '2021-04-20 02:47:24.443000'),
(415, 'ddb48dda-5440-4503-bd63-91653caa6a03', '30527a8c-fce6-4d9d-8619-5b89a1704610', '1', 1, '2021-04-20 02:47:24.468000'),
(416, 'ddb48dda-5440-4503-bd63-91653caa6a03', 'ae440a60-493c-4ed4-9ac5-56aba24308b8', '1', 1, '2021-04-20 02:47:24.495000'),
(417, 'ddb48dda-5440-4503-bd63-91653caa6a03', 'be0be9bc-1d99-4f74-a793-346ba709b40a', '1', 1, '2021-04-20 02:47:24.518000'),
(418, 'ddb48dda-5440-4503-bd63-91653caa6a03', '9a2e2748-7dda-49e7-83a8-b6ddbb327709', '1', 1, '2021-04-20 02:47:24.543000'),
(419, 'ddb48dda-5440-4503-bd63-91653caa6a03', 'cd83e1f5-5007-4f21-8dfe-bf98cb1d43b4', '1', 1, '2021-04-20 02:47:24.571000'),
(420, 'ddb48dda-5440-4503-bd63-91653caa6a03', 'aa2dabec-5e99-4b31-8b66-8d7c9a0342fa', '1', 1, '2021-04-20 02:47:24.597000'),
(421, 'ddb48dda-5440-4503-bd63-91653caa6a03', '77084070-c90a-4434-83f9-7c01fcbe95b8', '1', 1, '2021-04-20 02:47:24.625000'),
(422, 'ddb48dda-5440-4503-bd63-91653caa6a03', '9259b2eb-f191-4dfc-89c3-c6cb7e37f73a', '1', 1, '2021-04-20 02:47:24.649000'),
(423, 'ddb48dda-5440-4503-bd63-91653caa6a03', 'f5f3af38-a9f1-4a51-99c5-cf4921ff9f09', '1', 1, '2021-04-20 02:47:24.675000'),
(424, 'ddb48dda-5440-4503-bd63-91653caa6a03', '5386c013-183e-46a6-a241-f1c480b53d9c', '1', 1, '2021-04-20 02:47:24.701000'),
(425, 'ddb48dda-5440-4503-bd63-91653caa6a03', '95ec26b8-4ea2-429f-b5b2-c22f9de50b52', '1', 1, '2021-04-20 02:47:24.733000'),
(426, 'ddb48dda-5440-4503-bd63-91653caa6a03', '635e5a69-96ff-49c2-b773-26c775d293af', '1', 1, '2021-04-20 02:47:24.759000'),
(427, 'ddb48dda-5440-4503-bd63-91653caa6a03', 'dcdcae73-9c78-4372-bd8e-3a4c6eecda7e', '1', 1, '2021-04-20 02:47:24.786000'),
(428, 'ddb48dda-5440-4503-bd63-91653caa6a03', 'ba615524-3e59-4c46-9b42-6a75f9b0c2f8', '1', 1, '2021-04-20 02:47:24.814000'),
(429, 'ddb48dda-5440-4503-bd63-91653caa6a03', '5abee4ef-ec66-41cf-a3de-5aaced1145bd', '1', 1, '2021-04-20 02:47:24.839000'),
(430, 'ddb48dda-5440-4503-bd63-91653caa6a03', 'd7875b88-9a86-4707-9ea9-276f62c8db75', '1', 1, '2021-04-20 02:47:24.863000'),
(431, 'ddb48dda-5440-4503-bd63-91653caa6a03', 'f0972f67-bbc4-42d4-9e7a-f8fe2eb6c978', '1', 1, '2021-04-20 02:47:24.888000'),
(432, 'ddb48dda-5440-4503-bd63-91653caa6a03', '00a585b2-56e6-4aec-b69f-a88235a1f87d', '1', 1, '2021-04-20 02:47:24.912000'),
(433, 'ddb48dda-5440-4503-bd63-91653caa6a03', '46945a99-ee17-4a14-a806-fd31a734d9b4', '1', 1, '2021-04-20 02:47:24.936000'),
(434, 'ddb48dda-5440-4503-bd63-91653caa6a03', 'cf08f3db-ec0c-4218-9add-8cae6e674e66', '1', 1, '2021-04-20 02:47:24.963000'),
(435, 'ddb48dda-5440-4503-bd63-91653caa6a03', 'e29e8151-cc45-467a-ac83-9168ee5f3c0f', '1', 1, '2021-04-20 02:47:24.989000'),
(436, 'ddb48dda-5440-4503-bd63-91653caa6a03', '92a94222-a0a2-4270-822f-71be6e932384', '1', 1, '2021-04-20 02:47:25.012000'),
(437, 'ddb48dda-5440-4503-bd63-91653caa6a03', '2fabbe18-aae7-42e4-b05d-8dd87015b664', '1', 1, '2021-04-20 02:47:25.034000'),
(438, 'ddb48dda-5440-4503-bd63-91653caa6a03', 'd230423e-6191-4b3d-8ec6-9db3a89406d1', '1', 1, '2021-04-20 02:47:25.058000'),
(439, 'ddb48dda-5440-4503-bd63-91653caa6a03', '8f600478-570a-4e28-b6bc-0d9e32159803', '1', 1, '2021-04-20 02:47:25.079000'),
(440, 'ddb48dda-5440-4503-bd63-91653caa6a03', '435be1a7-f690-46c3-8561-479ee7ac3e38', '1', 1, '2021-04-20 02:47:25.101000'),
(441, 'ddb48dda-5440-4503-bd63-91653caa6a03', 'f184c45d-7d72-49eb-90d0-48b90f5a1e4a', '1', 1, '2021-04-20 02:47:25.125000'),
(442, 'ddb48dda-5440-4503-bd63-91653caa6a03', 'f1a3132e-50b3-4a79-8a84-66812754aed9', '1', 1, '2021-04-20 02:47:25.151000'),
(443, 'ddb48dda-5440-4503-bd63-91653caa6a03', '494535c7-27ea-41ac-bb73-3afde375d231', '1', 1, '2021-04-20 02:47:25.177000'),
(444, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '428f404a-8a4e-4b29-83eb-83e257d98175', '1', 1, '2021-04-20 02:52:57.411000'),
(445, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '60a12a73-a9ea-4f43-a903-f6a8fddd5f58', '1', 1, '2021-04-20 02:52:57.438000'),
(446, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'dcb3ecb1-44eb-4b8f-9c43-97ed6cdf2cb2', '1', 1, '2021-04-20 02:52:57.467000'),
(447, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'b13ab96f-6009-485d-bec3-f9cd4ec5c3b5', '1', 1, '2021-04-20 02:52:57.490000'),
(448, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'ee55a54b-fe2c-4539-8d1c-20297f05045a', '1', 1, '2021-04-20 02:52:57.515000'),
(449, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'eb0893d4-f542-481f-bbec-99f343d31990', '1', 1, '2021-04-20 02:52:57.539000'),
(450, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '082a092a-99dc-4d7c-8660-588862d8e57a', '1', 1, '2021-04-20 02:52:57.565000'),
(451, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '403c62b6-5fca-4695-8c05-91870c980486', '1', 1, '2021-04-20 02:52:57.587000'),
(452, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '6f2087b6-8879-45a4-898d-a75c0f2d282f', '1', 1, '2021-04-20 02:52:57.611000'),
(453, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'd13e44cd-b2c9-4683-92cc-bce21c7fdf31', '1', 1, '2021-04-20 02:52:57.634000'),
(454, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '1d9a5e98-50ca-4ff7-abbc-542a5bcc3780', '1', 1, '2021-04-20 02:52:57.658000'),
(455, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'cb82a021-369f-4bd3-acfa-4b9fb43a8c73', '1', 1, '2021-04-20 02:52:57.682000'),
(456, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'e6cc9f97-15b7-4f70-80da-6dbe8ba31990', '1', 1, '2021-04-20 02:52:57.706000'),
(457, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '04a47172-106c-490c-bd68-5f74df3b53b8', '1', 1, '2021-04-20 02:52:57.733000'),
(458, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '5d121f66-6df2-4ce0-8578-c4307986f481', '1', 1, '2021-04-20 02:52:57.758000'),
(459, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'c0d47bbf-1129-44c8-a940-be54eff3a758', '1', 1, '2021-04-20 02:52:57.783000'),
(460, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'f654a04f-0180-4c60-b791-0f5c9b9154c7', '1', 1, '2021-04-20 02:52:57.808000'),
(461, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '8f720cc6-41f7-4e28-bcd2-8b1307bc10f5', '1', 1, '2021-04-20 02:52:57.833000'),
(462, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '372b778c-64a3-4ffa-9105-debce92467e0', '1', 1, '2021-04-20 02:52:57.857000'),
(463, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'c5e5c121-f029-490c-9994-d7c17f10a5e5', '1', 1, '2021-04-20 02:52:57.882000'),
(464, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '253dae18-16fc-439c-843a-a22f384c9a38', '1', 1, '2021-04-20 02:52:57.911000'),
(465, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'e8ebfce5-d115-4ff1-a0e8-c0d8c11ee8ed', '1', 1, '2021-04-20 02:52:57.940000'),
(466, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'ecc41c20-d2e8-495c-83da-f6431657e6af', '1', 1, '2021-04-20 02:52:57.967000'),
(467, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'ae152a5c-6f1d-4f45-a90c-f9c0982b00fa', '1', 1, '2021-04-20 02:52:57.993000'),
(468, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '141f2725-dedc-4b36-a440-8ce944a2f9ef', '1', 1, '2021-04-20 02:52:58.018000'),
(469, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '6eca20d7-6c35-4ef0-af76-e9e630881efa', '1', 1, '2021-04-20 02:52:58.041000'),
(470, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'd9839da2-7379-437c-ba6e-62cd2eeeef78', '1', 1, '2021-04-20 02:52:58.061000'),
(471, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '4362a0d2-36b7-44ac-8d85-dddd5fe541b1', '1', 1, '2021-04-20 02:52:58.083000'),
(472, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '456f4c3b-60be-4fb5-a61b-e988cc991f08', '1', 1, '2021-04-20 02:52:58.105000'),
(473, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'f53fcbd4-0f28-41dd-a314-e56074726e4e', '1', 1, '2021-04-20 02:52:58.127000'),
(474, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '1435cb86-1f05-4a54-91b4-a91494affa19', '1', 1, '2021-04-20 02:52:58.149000'),
(475, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '26edff09-06b4-4330-a275-40460a8c3d81', '1', 1, '2021-04-20 02:52:58.171000'),
(476, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'fe4922d2-3e72-43d5-babe-72e0da67cbc5', '1', 1, '2021-04-20 02:52:58.195000'),
(477, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '702b944a-6c94-4cf9-b116-8e124a084daf', '1', 1, '2021-04-20 02:52:58.217000'),
(478, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'ec5d8235-2d0c-4873-ac6d-76964217b1a5', '1', 1, '2021-04-20 02:52:58.238000'),
(479, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '4be9a648-acd6-4704-812f-ba7fa19708d3', '1', 1, '2021-04-20 02:52:58.260000'),
(480, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'd0885df7-af2e-47bb-a0c2-c645a4933b53', '1', 1, '2021-04-20 02:52:58.286000'),
(481, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'a80fb459-2576-4d44-86c2-cf7488ade6d5', '1', 1, '2021-04-20 02:52:58.308000'),
(482, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'e82bafa6-7780-4c7a-b8d6-7f4c363bc210', '1', 1, '2021-04-20 02:52:58.330000'),
(483, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '5a0cf89f-0492-420b-89c7-213c7f559ddd', '1', 1, '2021-04-20 02:52:58.360000'),
(484, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '24977dd2-59d7-43be-b7a3-fed088daa1c0', '1', 1, '2021-04-20 02:52:58.382000'),
(485, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'b2aea6dc-f02f-4761-8235-8d68077a1a82', '1', 1, '2021-04-20 02:52:58.403000'),
(486, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '7a071dd1-8d8b-4673-8a6a-0efacc780195', '1', 1, '2021-04-20 02:52:58.429000'),
(487, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '82f179fc-b618-4a9c-a7ca-d0be6acf0814', '1', 1, '2021-04-20 02:52:58.451000'),
(488, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '22f7bc15-6cc5-45bd-b1ca-c345fc407deb', '1', 1, '2021-04-20 02:52:58.474000'),
(489, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '8359d3bd-2774-4969-9811-0937dd5f83f8', '1', 1, '2021-04-20 02:52:58.499000'),
(490, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'd2970091-e35f-4169-8239-9377503cec00', '1', 1, '2021-04-20 02:52:58.527000'),
(491, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'dcce5eaf-fcd5-420e-b307-790f6ec78174', '1', 1, '2021-04-20 02:52:58.549000'),
(492, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'ca8bcee7-7004-4da1-b54e-5f4a09443353', '1', 1, '2021-04-20 02:52:58.578000'),
(493, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'a117238c-fcdc-48ab-9da8-267964fabbf8', '1', 1, '2021-04-20 02:52:58.603000'),
(494, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '8f2054ac-180b-4bbc-890a-f880c5db2d0e', '1', 1, '2021-04-20 02:52:58.627000'),
(495, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'ea84350b-380b-44d2-90ab-eba318fdaadb', '1', 1, '2021-04-20 02:52:58.651000'),
(496, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '5150014f-83b2-407e-b485-086cff1e62fd', '1', 1, '2021-04-20 02:52:58.673000'),
(497, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'b09103c9-031a-40d1-8a86-f9761ccab62f', '1', 1, '2021-04-20 02:52:58.699000'),
(498, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', '49c72879-935a-4e67-807a-d20001a66cbf', '1', 1, '2021-04-20 02:52:58.723000'),
(499, 'cbd1bd7e-13f0-49dd-884e-6950bd33dc71', 'ef9c7089-1eaa-4c34-9651-ef9b5d6982ab', '1', 1, '2021-04-20 02:52:58.747000'),
(500, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '96594cea-148f-48c3-88f8-55fae4ca1ec4', '1', 1, '2021-04-20 02:59:27.422000'),
(501, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '6c7a0e66-ec47-4fad-97e9-f8ce043e6e38', '1', 1, '2021-04-20 02:59:27.452000'),
(502, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '3eef41f7-5faa-4608-b25e-a0d68283f3db', '1', 1, '2021-04-20 02:59:27.477000'),
(503, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '2198fb72-9fac-4e29-9d1e-3ef371bde9ee', '1', 1, '2021-04-20 02:59:27.503000'),
(504, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', 'c5c05075-58c6-4914-8788-70e6c578df7f', '1', 1, '2021-04-20 02:59:27.530000'),
(505, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', 'a5dfb87e-9e81-476d-918c-97de9c0ed0bd', '1', 1, '2021-04-20 02:59:27.558000'),
(506, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '55acffec-f863-48e8-a543-5814fb3534f8', '1', 1, '2021-04-20 02:59:27.582000'),
(507, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', 'e65f43b8-cce6-4b05-9417-388ca9e443ee', '1', 1, '2021-04-20 02:59:27.603000'),
(508, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '2a05a877-98e7-42d6-9d7b-df4e857e7058', '1', 1, '2021-04-20 02:59:27.629000'),
(509, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', 'b53c1863-4a2f-4453-97dc-92e5ce22805d', '1', 1, '2021-04-20 02:59:27.655000'),
(510, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '3fd54f0f-42ce-4723-9084-f687e61cdf10', '1', 1, '2021-04-20 02:59:27.680000'),
(511, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '99411ab0-973a-4a79-b279-09ae1f830e59', '1', 1, '2021-04-20 02:59:27.706000'),
(512, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '50828f2d-6c3e-4f30-bbaf-7024276aa7b2', '1', 1, '2021-04-20 02:59:27.733000'),
(513, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '0294a70e-39bb-46e0-88cd-1334337b92fe', '1', 1, '2021-04-20 02:59:27.761000'),
(514, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '46ad785a-75d5-4f8b-a4ea-9482fe090ef4', '1', 1, '2021-04-20 02:59:27.789000'),
(515, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', 'af58b835-efd7-42b5-ac31-682c766bd6a5', '1', 1, '2021-04-20 02:59:27.811000'),
(516, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '2cbd91b0-1740-42af-a958-5540e65e07ee', '1', 1, '2021-04-20 02:59:27.834000'),
(517, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '94c6d607-303b-45a7-b63d-066818c576d2', '1', 1, '2021-04-20 02:59:27.859000'),
(518, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', 'd4a50ed9-4f9e-420b-abae-2c5933dd5f24', '1', 1, '2021-04-20 02:59:27.881000'),
(519, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '1471cd18-2e91-48f7-90dc-47c5ae37e2a5', '1', 1, '2021-04-20 02:59:27.904000'),
(520, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '67a88f8f-027d-45d8-ab1b-b082aa607195', '1', 1, '2021-04-20 02:59:27.929000'),
(521, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', 'bd1fbcc5-bd2a-4a9b-a631-94c3f5e19905', '1', 1, '2021-04-20 02:59:27.956000'),
(522, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', 'f8ece7a7-4188-46f9-aea6-dfd53b693b45', '1', 1, '2021-04-20 02:59:27.979000'),
(523, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', 'de513f0c-7245-4a22-be7b-bedf13373cc6', '1', 1, '2021-04-20 02:59:28.003000'),
(524, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '2a2658c8-ff9a-4ff1-a3b2-311c2f807c37', '1', 1, '2021-04-20 02:59:28.026000'),
(525, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '591c82f6-0669-44ad-b93d-38b99f1c06bf', '1', 1, '2021-04-20 02:59:28.048000'),
(526, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', 'b12adeba-cad2-4a06-aa7b-c936fbd516c6', '1', 1, '2021-04-20 02:59:28.070000'),
(527, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '7e0440cc-cb5e-4cac-9b17-30d8a3c4b42e', '1', 1, '2021-04-20 02:59:28.094000'),
(528, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', 'b926db60-a449-4e47-adfc-1c85c5c90669', '1', 1, '2021-04-20 02:59:28.119000'),
(529, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '90215943-de50-4676-90c6-1072611eea95', '1', 1, '2021-04-20 02:59:28.143000'),
(530, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '699ad43a-b42c-4a26-b34d-f347ebbea8ef', '1', 1, '2021-04-20 02:59:28.167000'),
(531, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', 'b0b5ab1c-4e21-4874-aed2-383c37616353', '1', 1, '2021-04-20 02:59:28.188000'),
(532, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '651d6372-3c2b-4e9b-affb-b8be3ea15132', '1', 1, '2021-04-20 02:59:28.212000'),
(533, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', 'f8fcd409-8a95-44fc-a718-1e862a0f2237', '1', 1, '2021-04-20 02:59:28.233000'),
(534, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '7ce1f6ae-2f40-4568-9a8c-b7544deafcb6', '1', 1, '2021-04-20 02:59:28.255000'),
(535, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '902278c3-3b26-4e96-a8c2-772bc01fdbdb', '1', 1, '2021-04-20 02:59:28.276000'),
(536, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '5fbcadd7-6f76-40b6-96f4-25bcae83349b', '1', 1, '2021-04-20 02:59:28.298000'),
(537, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '5ca3c78f-b539-41b4-b6fc-fc3997268356', '1', 1, '2021-04-20 02:59:28.319000'),
(538, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '1563c5a3-1d84-4227-8db4-3a9d730da69d', '1', 1, '2021-04-20 02:59:28.341000'),
(539, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', 'ea8fe188-82b4-4b51-91fb-42aa2e616e4e', '1', 1, '2021-04-20 02:59:28.365000'),
(540, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '12d45269-a633-4f86-90a8-88af7e287eea', '1', 1, '2021-04-20 02:59:28.389000'),
(541, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', 'fa4718c7-2f7a-4155-8785-094f52afb221', '1', 1, '2021-04-20 02:59:28.415000'),
(542, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '094e258f-99cd-4df0-8cf0-1bb91c375558', '1', 1, '2021-04-20 02:59:28.440000'),
(543, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '6d44c10f-d1ca-4bd4-a789-237cfad33a4a', '1', 1, '2021-04-20 02:59:28.463000'),
(544, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', 'c2097f3f-45e0-4324-a4c4-ed95d951638e', '1', 1, '2021-04-20 02:59:28.487000'),
(545, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '74db1f1e-eaaf-4f9a-a926-cee327523f04', '1', 1, '2021-04-20 02:59:28.512000'),
(546, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', 'd0bc3ea9-dcfc-4e34-b11a-9d817f5eed98', '1', 1, '2021-04-20 02:59:28.540000'),
(547, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '9a71da4c-2c6c-4016-90d6-16f4f4cd3466', '1', 1, '2021-04-20 02:59:28.565000'),
(548, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '6dd8ce01-7998-469e-91e7-12df0a439f7c', '1', 1, '2021-04-20 02:59:28.590000'),
(549, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '420f2ec6-5766-4b07-9d08-179963b99411', '1', 1, '2021-04-20 02:59:28.614000'),
(550, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', 'd9d3bb63-8c3d-4cf5-a048-0d2115648f0d', '1', 1, '2021-04-20 02:59:28.639000'),
(551, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', 'e486aa78-0a7f-4d40-9802-b72293bb364c', '1', 1, '2021-04-20 02:59:28.661000'),
(552, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '086f7e56-557b-4cbf-870f-8e698109c7f2', '1', 1, '2021-04-20 02:59:28.686000'),
(553, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '6989c28e-703d-4480-a6a6-71bd597e0ece', '1', 1, '2021-04-20 02:59:28.711000'),
(554, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', 'a26babce-2d4f-47ce-9979-aedfa6d747b3', '1', 1, '2021-04-20 02:59:28.741000'),
(555, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '2ff08d12-07e0-4877-bc2f-28f209efa342', '1', 1, '2021-04-20 02:59:28.768000'),
(556, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', 'beb1bfe8-bf3b-4724-8d25-d63142cd92cf', '1', 1, '2021-04-20 02:59:28.793000'),
(557, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '5dce8642-02c4-415c-81b4-321dd3fe7697', '1', 1, '2021-04-20 02:59:28.815000'),
(558, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '71c52de7-543d-4d2f-99c9-20d83ac2849d', '1', 1, '2021-04-20 02:59:28.839000'),
(559, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', 'a31da318-6d98-4db8-922f-8818b21e0207', '1', 1, '2021-04-20 02:59:28.860000'),
(560, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '1f7c129e-5b6c-40f2-9604-f01cb0ae84cb', '1', 1, '2021-04-20 02:59:28.882000'),
(561, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '1bcf3fcf-e94a-4697-bd5d-ff0f79a1b1b7', '1', 1, '2021-04-20 02:59:28.906000'),
(562, '4fd49e3f-4e0f-4431-aff4-efcab7685f36', '3aca4148-0876-489b-bff8-e0928f2a827e', '1', 1, '2021-04-20 02:59:28.926000'),
(563, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', 'd45047e8-33d7-4eac-81ed-74961bb899f3', '1', 1, '2021-04-20 03:00:15.192000'),
(564, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', '5248753d-9c47-4e09-93c9-5cc4764d8eeb', '1', 1, '2021-04-20 03:00:15.218000'),
(565, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', '1d7f628a-8656-4c53-9ad4-061990439eba', '1', 1, '2021-04-20 03:00:15.243000'),
(566, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', 'e9f7c56c-6332-4a7b-a89a-9b226e249dc9', '1', 1, '2021-04-20 03:00:15.270000'),
(567, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', '9b0b0040-e5e6-4a97-babe-789ae24005bc', '1', 1, '2021-04-20 03:00:15.295000'),
(568, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', '65a1c46d-c5b5-4ec1-b1d2-e92b00ea6933', '1', 1, '2021-04-20 03:00:15.320000'),
(569, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', '8e81d4e8-6472-4533-85cf-463d4e68b5c1', '1', 1, '2021-04-20 03:00:15.343000'),
(570, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', '22f8ce84-19b0-4836-b081-82cfa1905995', '1', 1, '2021-04-20 03:00:15.369000'),
(571, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', '978eccbd-ac8f-459d-bd27-8e33924263cf', '1', 1, '2021-04-20 03:00:15.395000'),
(572, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', '38db5cd2-7068-4bd7-9620-7a3165258e01', '1', 1, '2021-04-20 03:00:15.421000'),
(573, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', '4189a96b-150e-44e1-bbac-f466ea0c8d01', '1', 1, '2021-04-20 03:00:15.450000'),
(574, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', '38b6d361-51e5-4119-8ea8-b0ad08914154', '1', 1, '2021-04-20 03:00:15.475000'),
(575, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', 'b0aaca64-7678-48ec-ab27-82c108b4c5ab', '1', 1, '2021-04-20 03:00:15.500000'),
(576, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', '72d6a8be-82f3-4761-8828-ea1449a32a30', '1', 1, '2021-04-20 03:00:15.525000'),
(577, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', 'c1488c76-94ac-425c-901c-1f233ef8ed8b', '1', 1, '2021-04-20 03:00:15.549000'),
(578, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', 'c280e5fb-49b6-4bc4-8b3b-9e75cba4c717', '1', 1, '2021-04-20 03:00:15.578000'),
(579, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', 'eb92dd3b-dd45-4f0e-85e8-96d0ccec7ec8', '1', 1, '2021-04-20 03:00:15.602000'),
(580, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', '982cdf66-b407-4cb1-848c-bf546c2457ba', '1', 1, '2021-04-20 03:00:15.629000'),
(581, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', 'a034b171-727e-427f-857a-7015e45c1e0e', '1', 1, '2021-04-20 03:00:15.654000'),
(582, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', '9bc7120b-e5d0-412b-b33c-05444b4e5ccb', '1', 1, '2021-04-20 03:00:15.678000'),
(583, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', 'aa8d238c-75af-42c8-8092-95a2b7988e0a', '1', 1, '2021-04-20 03:00:15.702000'),
(584, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', 'c0076b8e-6b03-4c7d-abf4-c18fdf2da667', '1', 1, '2021-04-20 03:00:15.732000'),
(585, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', 'e2578603-f0c5-45b8-9c29-84c8c8bf3af6', '1', 1, '2021-04-20 03:00:15.759000'),
(586, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', 'b6f8eb1b-5563-466c-a23e-9777ade5c3d2', '1', 1, '2021-04-20 03:00:15.781000'),
(587, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', 'f4955313-f6f9-4d26-ac54-f0d7261604e3', '1', 1, '2021-04-20 03:00:15.805000'),
(588, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', '11490d6b-11bb-4ae4-9d79-83e9d83dd9b0', '1', 1, '2021-04-20 03:00:15.830000'),
(589, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', 'bed1feae-2f97-4760-b6ed-f0c190d73e16', '1', 1, '2021-04-20 03:00:15.855000'),
(590, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', '08388ebd-c9ab-4f60-b3f8-b361993ce7c2', '1', 1, '2021-04-20 03:00:15.883000'),
(591, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', '90fa06dd-54bc-4b26-a99d-593d53612411', '1', 1, '2021-04-20 03:00:15.909000'),
(592, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', 'aa5ad664-e469-4160-be93-f09b532244e6', '1', 1, '2021-04-20 03:00:15.934000'),
(593, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', '88afe462-0878-4b8c-b8a6-57893946e205', '1', 1, '2021-04-20 03:00:15.958000'),
(594, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', '4c088731-b68c-4afd-a2ea-eee37c6b8b26', '1', 1, '2021-04-20 03:00:15.980000'),
(595, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', '4bc26b22-b8ac-4019-b373-812755174230', '1', 1, '2021-04-20 03:00:16.005000'),
(596, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', '2d0ec0bd-1282-4f78-a7ba-dfb684e2180a', '1', 1, '2021-04-20 03:00:16.030000'),
(597, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', '42ae1b35-094e-4b5f-83ed-d4315f9c40aa', '1', 1, '2021-04-20 03:00:16.053000'),
(598, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', '2e5d7e5d-48ca-4f2e-b4ce-010e87ad8673', '1', 1, '2021-04-20 03:00:16.079000'),
(599, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', 'ecc3763f-b071-4c0f-9b1f-5a8d727bd793', '1', 1, '2021-04-20 03:00:16.105000'),
(600, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', '07ffa40c-d6ad-4557-9d41-fa89aad8438d', '1', 1, '2021-04-20 03:00:16.128000'),
(601, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', 'd4bd6b67-335d-41ff-aaaa-cdad3c5a84b8', '1', 1, '2021-04-20 03:00:16.149000'),
(602, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', '0039bb2b-1453-4050-8860-9fc183b51eca', '1', 1, '2021-04-20 03:00:16.173000'),
(603, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', '3f787edd-293c-4240-9f5e-21704706c683', '1', 1, '2021-04-20 03:00:16.197000'),
(604, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', 'c4015f64-f365-4238-8b4a-bb7e7960b53a', '1', 1, '2021-04-20 03:00:16.218000'),
(605, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', '2156fcde-a29d-4907-9b4e-cec6af7b220d', '1', 1, '2021-04-20 03:00:16.239000'),
(606, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', 'cd5d0b58-1f39-4b5c-a1cf-6a497dee022c', '1', 1, '2021-04-20 03:00:16.262000'),
(607, '7dab8b9b-8a0a-4d2b-bc1c-940cebac8b48', '6ce4dbd1-6619-430e-b85b-2dafbf2c5045', '1', 1, '2021-04-20 03:00:16.285000'),
(608, '8085652f-f755-4827-9129-274b5cbbd82e', '297e836a-94b9-4192-9465-ff8418d0ce66', '1', 1, '2021-04-20 03:00:58.552000'),
(609, '8085652f-f755-4827-9129-274b5cbbd82e', 'bf29bddc-f349-4cd1-a3b5-37bd67fa93b0', '1', 1, '2021-04-20 03:00:58.578000'),
(610, '8085652f-f755-4827-9129-274b5cbbd82e', '20fda2de-7c3e-47ba-b123-c2c5692db901', '1', 1, '2021-04-20 03:00:58.601000'),
(611, '8085652f-f755-4827-9129-274b5cbbd82e', '483ff135-9647-49a8-ae76-704601164e89', '1', 1, '2021-04-20 03:00:58.626000'),
(612, '8085652f-f755-4827-9129-274b5cbbd82e', 'bca21bbb-364b-4c0e-8d50-483bd5948f5a', '1', 1, '2021-04-20 03:00:58.654000'),
(613, '8085652f-f755-4827-9129-274b5cbbd82e', '215513af-e3a4-484a-a9d5-74bd400d3036', '1', 1, '2021-04-20 03:00:58.679000'),
(614, '8085652f-f755-4827-9129-274b5cbbd82e', 'aacdf51f-3dff-4f5c-8452-c2d3215a57f9', '1', 1, '2021-04-20 03:00:58.701000'),
(615, '8085652f-f755-4827-9129-274b5cbbd82e', 'f22b2bcd-e378-4f96-bc42-db980a22b872', '1', 1, '2021-04-20 03:00:58.724000'),
(616, '8085652f-f755-4827-9129-274b5cbbd82e', 'e0e23dbf-3c17-4d45-b5d6-699a4a32f9f7', '1', 1, '2021-04-20 03:00:58.747000'),
(617, '8085652f-f755-4827-9129-274b5cbbd82e', 'd5abb954-c360-4fe9-8c17-3209590d1002', '1', 1, '2021-04-20 03:00:58.769000'),
(618, '8085652f-f755-4827-9129-274b5cbbd82e', '359417e1-fbfc-44cd-9494-c6745da9227e', '1', 1, '2021-04-20 03:00:58.791000'),
(619, '8085652f-f755-4827-9129-274b5cbbd82e', '0baccf97-ecb5-4f21-af55-94e9cd4f6e27', '1', 1, '2021-04-20 03:00:58.814000'),
(620, '8085652f-f755-4827-9129-274b5cbbd82e', '7528233b-48ac-4e66-b626-410196547156', '1', 1, '2021-04-20 03:00:58.836000'),
(621, '8085652f-f755-4827-9129-274b5cbbd82e', '0c2a73b4-1133-4c5a-b8a2-c1ad33ffacef', '1', 1, '2021-04-20 03:00:58.859000'),
(622, '8085652f-f755-4827-9129-274b5cbbd82e', '89abfd6d-eae1-4c7a-93b0-84306b81ff01', '1', 1, '2021-04-20 03:00:58.880000'),
(623, '8085652f-f755-4827-9129-274b5cbbd82e', 'f76f1248-b1ae-42de-ba96-0284cc4709f2', '1', 1, '2021-04-20 03:00:58.900000'),
(624, '8085652f-f755-4827-9129-274b5cbbd82e', 'ee917d19-8053-4623-9133-bd61e8398788', '1', 1, '2021-04-20 03:00:58.924000'),
(625, '8085652f-f755-4827-9129-274b5cbbd82e', 'dad9921a-7cf1-4b4f-982e-bf71f857b950', '1', 1, '2021-04-20 03:00:58.946000'),
(626, '8085652f-f755-4827-9129-274b5cbbd82e', '54848fce-faa8-43a8-bf5b-9e777c92d62a', '1', 1, '2021-04-20 03:00:58.971000'),
(627, '8085652f-f755-4827-9129-274b5cbbd82e', '9308c183-65d8-4f3f-8120-fdf61feafc81', '1', 1, '2021-04-20 03:00:58.995000'),
(628, '8085652f-f755-4827-9129-274b5cbbd82e', 'b0d2d8c2-dc1a-4bb8-be11-a70691649f16', '1', 1, '2021-04-20 03:00:59.024000'),
(629, '8085652f-f755-4827-9129-274b5cbbd82e', '27a097d9-70b6-4efb-a298-7a4206f03dc8', '1', 1, '2021-04-20 03:00:59.054000'),
(630, '8085652f-f755-4827-9129-274b5cbbd82e', '1b8fea6e-a9dc-48df-9e71-e78bb33d1586', '1', 1, '2021-04-20 03:00:59.080000'),
(631, '8085652f-f755-4827-9129-274b5cbbd82e', '68afe15b-e6ee-43c5-92e6-654a1b986757', '1', 1, '2021-04-20 03:00:59.102000'),
(632, '8085652f-f755-4827-9129-274b5cbbd82e', 'd654d6c7-5a8e-4545-8671-15ee700e6957', '1', 1, '2021-04-20 03:00:59.126000'),
(633, '8085652f-f755-4827-9129-274b5cbbd82e', '8b7fcef9-14d3-4e70-aebd-01351d521f41', '1', 1, '2021-04-20 03:00:59.150000'),
(634, '8085652f-f755-4827-9129-274b5cbbd82e', '47b4df7f-76f6-49d1-8721-713009c9963e', '1', 1, '2021-04-20 03:00:59.178000'),
(635, '8085652f-f755-4827-9129-274b5cbbd82e', 'd7cd2060-a018-41b4-9c41-eaba5ea2997f', '1', 1, '2021-04-20 03:00:59.201000'),
(636, '8085652f-f755-4827-9129-274b5cbbd82e', 'c8b4ca04-1343-4365-a3d7-0f4edc7f7869', '1', 1, '2021-04-20 03:00:59.227000'),
(637, '8085652f-f755-4827-9129-274b5cbbd82e', '2c1a0a5e-7a03-406b-982e-bcf212d272d8', '1', 1, '2021-04-20 03:00:59.252000'),
(638, '8085652f-f755-4827-9129-274b5cbbd82e', '9e40b6cd-ead9-445e-a70a-f7a59dcd86b6', '1', 1, '2021-04-20 03:00:59.278000'),
(639, '8085652f-f755-4827-9129-274b5cbbd82e', '81225f98-991f-46af-b0e9-ccbaa1947f5a', '1', 1, '2021-04-20 03:00:59.302000'),
(640, '8085652f-f755-4827-9129-274b5cbbd82e', '9da3c1a8-3975-4bf5-9bce-1041e01075a4', '1', 1, '2021-04-20 03:00:59.328000'),
(641, '8085652f-f755-4827-9129-274b5cbbd82e', '88d60bdf-09fe-4bfe-baff-107e21f8bbce', '1', 1, '2021-04-20 03:00:59.350000'),
(642, '8085652f-f755-4827-9129-274b5cbbd82e', 'eaebf57d-4849-40cb-8e99-5c2e12092e6f', '1', 1, '2021-04-20 03:00:59.380000'),
(643, '8085652f-f755-4827-9129-274b5cbbd82e', 'd2a9dfa7-9611-45cb-8591-f6b88267cd1b', '1', 1, '2021-04-20 03:00:59.405000'),
(644, '8085652f-f755-4827-9129-274b5cbbd82e', '50ee6f3d-2460-4c84-8a24-a9c23f119c81', '1', 1, '2021-04-20 03:00:59.431000'),
(645, '8085652f-f755-4827-9129-274b5cbbd82e', 'ddedc60e-190f-4ea6-b5d7-0844ed726f38', '1', 1, '2021-04-20 03:00:59.459000'),
(646, '8085652f-f755-4827-9129-274b5cbbd82e', '0f855308-64da-4af2-a12f-c328764e8fe4', '1', 1, '2021-04-20 03:00:59.483000'),
(647, '8085652f-f755-4827-9129-274b5cbbd82e', '4078244f-097b-411b-9b1f-c801a219c7d1', '1', 1, '2021-04-20 03:00:59.511000'),
(648, '8085652f-f755-4827-9129-274b5cbbd82e', 'f06db259-1f91-44aa-98a1-483ed5413131', '1', 1, '2021-04-20 03:00:59.538000'),
(649, '8085652f-f755-4827-9129-274b5cbbd82e', '43d5175c-349d-4a49-b8e5-2acc6582f869', '1', 1, '2021-04-20 03:00:59.569000'),
(650, '8085652f-f755-4827-9129-274b5cbbd82e', '79e55c08-ebf1-4336-9005-40edc361d5b9', '1', 1, '2021-04-20 03:00:59.593000'),
(651, '8085652f-f755-4827-9129-274b5cbbd82e', '37dce084-cc74-4539-b383-3f3ad8fa4c23', '1', 1, '2021-04-20 03:00:59.617000'),
(652, '8085652f-f755-4827-9129-274b5cbbd82e', '26d1811c-fdf9-468d-849e-aaa0f163964a', '1', 1, '2021-04-20 03:00:59.645000'),
(653, '8085652f-f755-4827-9129-274b5cbbd82e', 'd06bfd00-142f-4f76-b692-5179228dd789', '1', 1, '2021-04-20 03:00:59.673000'),
(654, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '1b156c12-e8bc-4ad0-bbdc-dc443a5de251', '1', 1, '2021-04-20 03:01:40.773000'),
(655, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', 'dafc778b-07f7-4ee8-9c23-ebfb28086363', '1', 1, '2021-04-20 03:01:40.797000'),
(656, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '6a1216f9-ed39-4f36-86a0-58c750cfe690', '1', 1, '2021-04-20 03:01:40.820000'),
(657, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '7ba1ffb4-1c5c-4405-bce8-d7377086f66b', '1', 1, '2021-04-20 03:01:40.842000'),
(658, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '80a6a532-df5d-4d18-809d-f7c222ae4153', '1', 1, '2021-04-20 03:01:40.866000'),
(659, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '054031e0-dca2-4975-aebc-e1ad2c7d224b', '1', 1, '2021-04-20 03:01:40.889000'),
(660, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '18ed897a-710b-41f1-a82c-708fce16c01b', '1', 1, '2021-04-20 03:01:40.913000'),
(661, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '44c010c9-77f2-4de3-ab6e-87e0314190d1', '1', 1, '2021-04-20 03:01:40.937000'),
(662, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '600b7bf9-636d-489a-8b09-bafaf0a35ea6', '1', 1, '2021-04-20 03:01:40.961000'),
(663, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '5305ed00-e963-40ac-bbdd-3cbef8748454', '1', 1, '2021-04-20 03:01:40.983000'),
(664, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', 'd704b7df-485d-4eff-bd3a-475be48d6d6d', '1', 1, '2021-04-20 03:01:41.004000'),
(665, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', 'fa6d3299-331e-4863-97c0-a752f701b4e1', '1', 1, '2021-04-20 03:01:41.025000'),
(666, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', 'c93fb912-e6d9-4e1f-812f-3425a4a256eb', '1', 1, '2021-04-20 03:01:41.045000');
INSERT INTO `decklistdetail` (`DeckId`, `DecklistId`, `WordId`, `Status`, `Myorder`, `ModifyTime`) VALUES
(667, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '2aee91dd-1d67-49f4-8d99-b414ac51d082', '1', 1, '2021-04-20 03:01:41.065000'),
(668, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', 'f43f99fc-81b1-4d36-b103-516a20761b09', '1', 1, '2021-04-20 03:01:41.084000'),
(669, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '4d7c30cf-c3b5-4c61-9b97-38fa430d3292', '1', 1, '2021-04-20 03:01:41.104000'),
(670, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '5fe221ef-be11-4907-99ca-4da2a3fb293d', '1', 1, '2021-04-20 03:01:41.124000'),
(671, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '3b40a593-247d-40d8-96bc-89f185b01a16', '1', 1, '2021-04-20 03:01:41.144000'),
(672, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '4b8befb5-d6ed-44fa-ba32-c10a26ea3f5f', '1', 1, '2021-04-20 03:01:41.163000'),
(673, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', 'c37727b7-58fe-4891-803e-d2e514e0802d', '1', 1, '2021-04-20 03:01:41.185000'),
(674, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '9ac23d7d-dc37-49b5-bcb7-1dc2893ebcec', '1', 1, '2021-04-20 03:01:41.207000'),
(675, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', 'faa55226-0693-4884-8555-764dce61baa8', '1', 1, '2021-04-20 03:01:41.231000'),
(676, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', 'c9e31566-cdba-45a3-b52c-e92a86abf0da', '1', 1, '2021-04-20 03:01:41.255000'),
(677, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '475ba056-19cd-4994-9d16-5af265b28d4e', '1', 1, '2021-04-20 03:01:41.284000'),
(678, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', 'e6424385-527b-4bac-9c88-478bfab904ab', '1', 1, '2021-04-20 03:01:41.306000'),
(679, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', 'efb2f79c-d5ea-4459-bc5f-6454dc70f82a', '1', 1, '2021-04-20 03:01:41.327000'),
(680, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '037f5386-6fb9-468a-b9c5-a2180dc51a62', '1', 1, '2021-04-20 03:01:41.348000'),
(681, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '06441132-7eff-45e3-9e53-c1973e638016', '1', 1, '2021-04-20 03:01:41.371000'),
(682, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', 'd5bc09a8-8257-40df-b1ae-729519351c8c', '1', 1, '2021-04-20 03:01:41.391000'),
(683, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '4b073875-883e-43f9-9810-05dcbea0e94e', '1', 1, '2021-04-20 03:01:41.414000'),
(684, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '98d91fff-e422-4910-aee8-d7e4357c1412', '1', 1, '2021-04-20 03:01:41.437000'),
(685, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '55de0634-cc03-47a4-acce-250550d17674', '1', 1, '2021-04-20 03:01:41.465000'),
(686, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '63e716bd-a8d9-4ac9-b035-c4d717333d14', '1', 1, '2021-04-20 03:01:41.489000'),
(687, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '3d533718-13ae-4755-964a-6225442a4ad2', '1', 1, '2021-04-20 03:01:41.514000'),
(688, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '89436eca-6488-4ad2-9ddf-c851cfc9d3ec', '1', 1, '2021-04-20 03:01:41.538000'),
(689, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', 'ec108045-4e74-4315-8721-989b7fdf8262', '1', 1, '2021-04-20 03:01:41.561000'),
(690, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '5203c54b-3198-4754-af85-a6c103583ed3', '1', 1, '2021-04-20 03:01:41.582000'),
(691, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '811119b0-b709-49a0-9617-939214b96980', '1', 1, '2021-04-20 03:01:41.602000'),
(692, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '2f3d9d03-c1f9-4d0a-b60e-66dee29b3822', '1', 1, '2021-04-20 03:01:41.624000'),
(693, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '0120bd3b-76fe-4bbe-bd2e-baee6cbe0188', '1', 1, '2021-04-20 03:01:41.645000'),
(694, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '59dce32d-81f7-4db4-83a6-6e0d98de95d9', '1', 1, '2021-04-20 03:01:41.675000'),
(695, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '5d0bd307-31a5-46ef-af53-04f00e07a147', '1', 1, '2021-04-20 03:01:41.697000'),
(696, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '3d515849-1082-41ee-a27a-bfcf806b4003', '1', 1, '2021-04-20 03:01:41.719000'),
(697, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '071c3b0d-f21c-4f19-8d8e-b0dc2fea8ff1', '1', 1, '2021-04-20 03:01:41.741000'),
(698, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '372e4526-b968-4a42-9bcc-528cd306cee9', '1', 1, '2021-04-20 03:01:41.765000'),
(699, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '719b3bd9-73a6-4227-befc-2d1fe90abeb0', '1', 1, '2021-04-20 03:01:41.789000'),
(700, 'b7024b0d-972d-46a9-a346-914f5cd4e1cc', '43986bc4-314a-4933-99e6-32c009077972', '1', 1, '2021-04-20 03:01:41.814000'),
(701, '7fb598c6-6905-4f33-bfdd-06d126156344', '976e1ba8-ca73-4fa5-a984-5098909eadf4', '1', 1, '2021-04-20 03:02:18.819000'),
(702, '7fb598c6-6905-4f33-bfdd-06d126156344', 'f5748a65-8d95-4047-b1a7-8079a0a774d7', '1', 1, '2021-04-20 03:02:18.848000'),
(703, '7fb598c6-6905-4f33-bfdd-06d126156344', '3d204610-1e22-4555-a5a6-3bd2ac5e1aa9', '1', 1, '2021-04-20 03:02:18.873000'),
(704, '7fb598c6-6905-4f33-bfdd-06d126156344', '28986c11-e8eb-4723-8e9b-c8fd9fb2f978', '1', 1, '2021-04-20 03:02:18.899000'),
(705, '7fb598c6-6905-4f33-bfdd-06d126156344', '3bf3ed29-bca1-4c3c-b878-9d302876506b', '1', 1, '2021-04-20 03:02:18.923000'),
(706, '7fb598c6-6905-4f33-bfdd-06d126156344', '97231425-18d9-4b5e-ac7e-63b5ac9e2c5c', '1', 1, '2021-04-20 03:02:18.949000'),
(707, '7fb598c6-6905-4f33-bfdd-06d126156344', 'b8704614-93b8-4850-84a3-85e3a971ad46', '1', 1, '2021-04-20 03:02:18.974000'),
(708, '7fb598c6-6905-4f33-bfdd-06d126156344', 'e2d78fbb-917e-4da9-8599-1717f96e48a7', '1', 1, '2021-04-20 03:02:19.000000'),
(709, '7fb598c6-6905-4f33-bfdd-06d126156344', '299e55eb-1fa3-49b8-b762-b29f1bc1c625', '1', 1, '2021-04-20 03:02:19.028000'),
(710, '7fb598c6-6905-4f33-bfdd-06d126156344', 'a38a1a08-6014-4d41-adb1-ecd2427a86ed', '1', 1, '2021-04-20 03:02:19.054000'),
(711, '7fb598c6-6905-4f33-bfdd-06d126156344', '5589ffea-9a88-4567-b5e5-f8157984e021', '1', 1, '2021-04-20 03:02:19.079000'),
(712, '7fb598c6-6905-4f33-bfdd-06d126156344', 'c6e0855c-bdc6-4faf-a866-5f7fce883b3d', '1', 1, '2021-04-20 03:02:19.106000'),
(713, '7fb598c6-6905-4f33-bfdd-06d126156344', '2c50815a-6f22-42e7-a031-51dc18b29ef7', '1', 1, '2021-04-20 03:02:19.134000'),
(714, '7fb598c6-6905-4f33-bfdd-06d126156344', '46264c6d-8f89-4911-968a-d784b052e8e8', '1', 1, '2021-04-20 03:02:19.157000'),
(715, '7fb598c6-6905-4f33-bfdd-06d126156344', '42ef345c-ca0f-43c2-8228-1eddd1db2335', '1', 1, '2021-04-20 03:02:19.183000'),
(716, '7fb598c6-6905-4f33-bfdd-06d126156344', 'ba5ef830-9fa8-4ad1-9ec1-6be6c52ae48c', '1', 1, '2021-04-20 03:02:19.217000'),
(717, '7fb598c6-6905-4f33-bfdd-06d126156344', '40f7d1ca-9be5-4b44-a308-fa07b23aa7ef', '1', 1, '2021-04-20 03:02:19.241000'),
(718, '7fb598c6-6905-4f33-bfdd-06d126156344', '927a693f-0747-49ca-af82-83d8214f61a7', '1', 1, '2021-04-20 03:02:19.266000'),
(719, '7fb598c6-6905-4f33-bfdd-06d126156344', '236fbf7a-f836-463b-85d4-0d18dca3d503', '1', 1, '2021-04-20 03:02:19.292000'),
(720, '7fb598c6-6905-4f33-bfdd-06d126156344', '90c4c6dd-8b1b-4511-8ffa-1b59774585f7', '1', 1, '2021-04-20 03:02:19.316000'),
(721, '7fb598c6-6905-4f33-bfdd-06d126156344', '719aa8e4-59d1-4404-998f-a7af706d7c70', '1', 1, '2021-04-20 03:02:19.340000'),
(722, '7fb598c6-6905-4f33-bfdd-06d126156344', '5ac9779e-0d02-4694-9699-fafacb071893', '1', 1, '2021-04-20 03:02:19.364000'),
(723, '7fb598c6-6905-4f33-bfdd-06d126156344', 'e21f8275-020b-4ea9-ade1-55d632c26fbe', '1', 1, '2021-04-20 03:02:19.387000'),
(724, '7fb598c6-6905-4f33-bfdd-06d126156344', 'e03148a1-abbb-4638-9ac5-0689976e6022', '1', 1, '2021-04-20 03:02:19.410000'),
(725, '7fb598c6-6905-4f33-bfdd-06d126156344', '89b97c2c-98e8-43ec-a04a-a066e3292ced', '1', 1, '2021-04-20 03:02:19.433000'),
(726, '7fb598c6-6905-4f33-bfdd-06d126156344', '469eb040-2fcc-4a2c-8320-a3f3d5098fc9', '1', 1, '2021-04-20 03:02:19.455000'),
(727, '7fb598c6-6905-4f33-bfdd-06d126156344', '4166367c-276a-41a5-85e0-db41a63d32fd', '1', 1, '2021-04-20 03:02:19.478000'),
(728, '7fb598c6-6905-4f33-bfdd-06d126156344', 'cdba20c7-8512-48f9-b6db-524d78281dac', '1', 1, '2021-04-20 03:02:19.503000'),
(729, '7fb598c6-6905-4f33-bfdd-06d126156344', '5932a24d-bb99-4874-9d64-1ad7be89dad6', '1', 1, '2021-04-20 03:02:19.528000'),
(730, '7fb598c6-6905-4f33-bfdd-06d126156344', 'e009dc44-44f5-4eb3-b98b-445471375996', '1', 1, '2021-04-20 03:02:19.556000'),
(731, '7fb598c6-6905-4f33-bfdd-06d126156344', '3e6503cb-2664-4f49-a118-a0b04e850b77', '1', 1, '2021-04-20 03:02:19.580000'),
(732, '7fb598c6-6905-4f33-bfdd-06d126156344', '9da8bd11-fe8d-4aff-9783-b0a1e533dda8', '1', 1, '2021-04-20 03:02:19.603000'),
(733, '7fb598c6-6905-4f33-bfdd-06d126156344', 'e7379ff3-0216-404a-84d4-08e9b1aab208', '1', 1, '2021-04-20 03:02:19.640000'),
(734, '7fb598c6-6905-4f33-bfdd-06d126156344', '8087cf6c-a012-4ccc-b7be-e1c4de752abc', '1', 1, '2021-04-20 03:02:19.670000'),
(735, '7fb598c6-6905-4f33-bfdd-06d126156344', '2edd7785-555b-4d59-a25e-cf80127d2b06', '1', 1, '2021-04-20 03:02:19.698000'),
(736, '7fb598c6-6905-4f33-bfdd-06d126156344', '341c86dd-7449-4394-b136-d705103948b0', '1', 1, '2021-04-20 03:02:19.724000'),
(737, '7fb598c6-6905-4f33-bfdd-06d126156344', 'f2881781-27f0-4aa0-85a8-21631018f3b5', '1', 1, '2021-04-20 03:02:19.749000'),
(738, '7fb598c6-6905-4f33-bfdd-06d126156344', 'f53d2865-7f64-4c65-90a3-bdd222c9cece', '1', 1, '2021-04-20 03:02:19.776000'),
(739, '7fb598c6-6905-4f33-bfdd-06d126156344', '9c5cfab7-6578-4048-b809-d7d9a51df40b', '1', 1, '2021-04-20 03:02:19.804000'),
(740, '7fb598c6-6905-4f33-bfdd-06d126156344', 'fd5c9f18-7ba0-42df-b710-6f4ba8644aa9', '1', 1, '2021-04-20 03:02:19.833000'),
(741, '7fb598c6-6905-4f33-bfdd-06d126156344', '33610af5-cc27-4f43-af06-7790c6ac9341', '1', 1, '2021-04-20 03:02:19.856000'),
(742, '7fb598c6-6905-4f33-bfdd-06d126156344', 'd48094f1-3f44-4c37-a53b-53c3c254a7c9', '1', 1, '2021-04-20 03:02:19.877000'),
(743, '7fb598c6-6905-4f33-bfdd-06d126156344', '9b3cf670-456d-41bb-b239-b16f9ec6bd95', '1', 1, '2021-04-20 03:02:19.902000'),
(744, '7fb598c6-6905-4f33-bfdd-06d126156344', '7da5a96a-95fd-4818-997b-7e0b229f55d6', '1', 1, '2021-04-20 03:02:19.926000'),
(745, '7fb598c6-6905-4f33-bfdd-06d126156344', '22e7794f-5d13-42a1-92c8-00e112ac7c8f', '1', 1, '2021-04-20 03:02:19.957000'),
(746, '0cc3877e-eb91-4c00-8e9f-d85667925a3a', 'f0972f67-bbc4-42d4-9e7a-f8fe2eb6c978', '1', 1, '2021-05-20 17:13:41.095000'),
(747, '0cc3877e-eb91-4c00-8e9f-d85667925a3a', '15763a60-0769-4b86-8c19-31a6c829f6e0', '1', 1, '2021-05-20 17:25:12.865000'),
(748, '0cc3877e-eb91-4c00-8e9f-d85667925a3a', 'ddea02ea-b511-4068-9d2b-c98dfee639d0', '1', 1, '2021-05-20 17:25:18.895000'),
(749, '0cc3877e-eb91-4c00-8e9f-d85667925a3a', '738a956f-1ae4-4085-b23c-e100a6ead87a', '1', 1, '2021-05-20 17:26:36.710000'),
(750, '0cc3877e-eb91-4c00-8e9f-d85667925a3a', '892aa9d2-c72f-438e-9681-ff3ecba5bf4a', '1', 1, '2021-05-20 17:26:36.711000'),
(751, '0cc3877e-eb91-4c00-8e9f-d85667925a3a', 'ad21cc06-0ee5-4f2b-a7cf-8a608d06114a', '1', 1, '2021-05-20 17:26:36.738000'),
(752, '0cc3877e-eb91-4c00-8e9f-d85667925a3a', 'ada50327-c540-427d-b074-456e3206a73c', '1', 1, '2021-05-20 17:26:36.872000'),
(753, '0cc3877e-eb91-4c00-8e9f-d85667925a3a', 'd8eadefa-f760-464c-9037-29d2a55415ae', '1', 1, '2021-05-20 17:26:44.267000'),
(754, '0cc3877e-eb91-4c00-8e9f-d85667925a3a', 'a645e2de-7286-4baf-a8eb-024b50826b22', '1', 1, '2021-05-20 17:26:44.673000'),
(755, '0cc3877e-eb91-4c00-8e9f-d85667925a3a', '421ce747-f0d7-42d7-a0ea-e5d6378ec1fa', '1', 1, '2021-05-20 17:26:44.757000'),
(756, '0cc3877e-eb91-4c00-8e9f-d85667925a3a', '61e66cb3-76d0-434c-886a-7d6973a3fd77', '1', 1, '2021-05-20 17:27:08.609000'),
(757, '0cc3877e-eb91-4c00-8e9f-d85667925a3a', '6a2f15be-804b-40fe-9550-ab7296e8a8a4', '1', 1, '2021-05-20 17:27:08.767000'),
(758, '0cc3877e-eb91-4c00-8e9f-d85667925a3a', '76cf9850-9905-4cae-ab47-b0087aa291ab', '1', 1, '2021-05-20 17:27:09.469000');

-- --------------------------------------------------------

--
-- 資料表結構 `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `student`
--

CREATE TABLE `student` (
  `StudentId` varchar(100) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Status` varchar(100) DEFAULT '0',
  `CreateTime` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `student`
--

INSERT INTO `student` (`StudentId`, `StudentName`, `Email`, `Password`, `Status`, `CreateTime`) VALUES
('0526b2c0-3298-4258-9c89-5e73aaa60ee7', 'test0324', 'test0324@gmail.com', '1d4b16a2b69e9ea6ea95a2eed6d2f542', '0', '2021-03-24 18:00:20.716'),
('074d3d34-a8db-42d5-a929-9e822baba7b0', '測試學生1', 'test1@gmail.com', '1d4b16a2b69e9ea6ea95a2eed6d2f542', '0', '2021-05-19 19:56:48.561'),
('081344cb-14e5-47f0-a74f-37ead24dca5c', 'Johnd', 'babel3126372@gmail.com', 'c0e4aaaf42e94fdb78207f21eef2dc07', '0', '2021-05-25 11:17:31.142'),
('1c05bca3-684c-406e-b280-ed7ebb5941f9', 'David', 'km101km@gmail.com', '1d4b16a2b69e9ea6ea95a2eed6d2f542', '1', '2021-03-22 00:00:00'),
('424a6435-259b-47c7-a48f-611a5d668eca', 'Baboom', 'baboom3126@gmail.com', '1d4b16a2b69e9ea6ea95a2eed6d2f542', '1', '2021-03-22 00:00:00'),
('52667b3a-49b6-45f4-ade8-279649342674', 'Mario', 'mariolkk945@gmail.com', '713c89e463636248bfd4b13f6ef88222', '0', '2021-05-26 02:00:22.649'),
('65cd0b67-ba8f-4d22-afd7-7528174ec3cd', 'Lkk945', 'yu2211shan@gmail.com', 'd2a06c01abdce7b14380b613fbe4e8a6', '0', '2021-05-26 01:57:43.726'),
('a32d0e3a-e1d5-4a5a-9b55-8928e53b8c9e', 'test123', 'test123@gmail.com', '1d4b16a2b69e9ea6ea95a2eed6d2f542', '0', '2021-03-23 05:03:38.825'),
('b512531e-6ef7-4405-af1e-b920107cddef', '瑞', 'alpacalatte029211@gmail.com', 'b798c64265b3cdbe49f196497754f419', '0', '2021-05-24 18:09:01.705'),
('df19d777-2e81-4ce0-9e46-c5b6a41f2814', 'test', '123@gmail.com', '1d4b16a2b69e9ea6ea95a2eed6d2f542', '0', '2021-03-23 04:59:19.157'),
('ff4e5c2d-2b42-47f7-8b0a-8fe030a1bf73', 'test2', 'test2@gmail.com', '1d4b16a2b69e9ea6ea95a2eed6d2f542', '0', '2021-05-25 19:12:01.919');

-- --------------------------------------------------------

--
-- 資料表結構 `studentverify`
--

CREATE TABLE `studentverify` (
  `StudentVerifyId` varchar(100) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `VerifyCode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `testresult`
--

CREATE TABLE `testresult` (
  `TestResultId` varchar(100) NOT NULL,
  `StudentId` varchar(100) NOT NULL,
  `TestMode` int(11) NOT NULL,
  `CreateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `testresult`
--

INSERT INTO `testresult` (`TestResultId`, `StudentId`, `TestMode`, `CreateTime`) VALUES
('07027b7c-65e7-4b15-b534-74cbb6ced5de', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 14:57:14'),
('18601418-a64f-41be-b04f-ab78387c46e7', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 14:56:35'),
('1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '074d3d34-a8db-42d5-a929-9e822baba7b0', 2, '2021-08-01 15:41:31'),
('1f8f1c17-ad5d-4cd9-9f9b-a2f0599a3b27', '424a6435-259b-47c7-a48f-611a5d668eca', 2, '2021-07-29 16:04:48'),
('23aa7270-236f-4f0c-a5ea-a6c2a69b49ba', '074d3d34-a8db-42d5-a929-9e822baba7b0', 2, '2021-08-01 15:46:52'),
('252f2ac9-4b08-46a5-b8f1-770152a02329', '074d3d34-a8db-42d5-a929-9e822baba7b0', 2, '2021-08-01 15:49:54'),
('28964a6f-8787-4b29-866d-de6ab9d8eede', '424a6435-259b-47c7-a48f-611a5d668eca', 1, '2021-07-29 16:46:14'),
('2d0be6f3-a16a-47fc-b118-d4b353e97b78', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 16:11:33'),
('2e433cf6-0ad1-4285-84c7-65635b26258c', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 15:38:10'),
('2f181b1f-11b1-4cea-ac4e-1e839cc05ca1', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 16:08:33'),
('330578f1-e609-4dfb-b3c1-81800dd1e390', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 15:31:49'),
('3eb6b2cc-1200-480c-bd81-ca089bda7258', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 15:18:03'),
('44face88-4be1-4803-be23-89992c4f80be', '074d3d34-a8db-42d5-a929-9e822baba7b0', 2, '2021-07-29 20:24:08'),
('55b31de4-3f54-484f-940c-21f50ccfb2ad', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 15:07:07'),
('5762d046-f51b-48fe-8447-68b2237e7f42', '074d3d34-a8db-42d5-a929-9e822baba7b0', 2, '2021-08-01 16:21:51'),
('57f60f9c-f5f6-4d88-8f67-7927b56f6fe3', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 15:03:52'),
('58140fb2-4898-490c-b8ff-22e23cdc159b', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 16:08:26'),
('5b8a63a2-60b5-471c-9f90-ddcfa9cbb0cc', '424a6435-259b-47c7-a48f-611a5d668eca', 2, '2021-07-29 16:50:34'),
('5cc2cb37-1b65-446b-be33-0c78554abf8d', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 15:03:31'),
('79b793a3-cfb3-42b7-ab77-42c107a1c70c', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 16:15:38'),
('886ac97a-de83-4492-93c4-bda7dc1e41b7', '074d3d34-a8db-42d5-a929-9e822baba7b0', 2, '2021-08-01 15:47:36'),
('8a822d54-68d2-4b74-9f39-effe867dfffc', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 15:16:37'),
('8b02ce7c-6899-405a-a9dc-759c7a3f7170', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 15:04:28'),
('8ebee1d8-e97a-4342-b50f-bee59afad29c', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 15:31:01'),
('90f9a7de-6260-43ce-83ad-4d6e65d62ebb', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 15:07:46'),
('914d3b53-692c-42a3-92ff-f0d5bb069dbc', '074d3d34-a8db-42d5-a929-9e822baba7b0', 2, '2021-07-29 20:22:08'),
('93fbf410-b8a6-43d6-8a9e-22042e5f93c1', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 15:06:13'),
('9706af85-a2a6-4b53-a449-bdd9bf91e06d', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 15:28:52'),
('a2a93d57-7999-4e9a-bd8f-3c121d6790e4', '424a6435-259b-47c7-a48f-611a5d668eca', 1, '2021-07-29 15:38:25'),
('ab6d0a93-d708-48e3-9f30-e4b591be62b7', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 15:33:26'),
('aed20c3f-bd50-40bb-818f-d118a27491ea', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 15:41:04'),
('afe2fc56-d0e6-46ee-99ee-4358c9065844', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 16:11:35'),
('ba0b8e5d-8842-4ab8-b3ba-8adc36293593', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 15:58:04'),
('bae3dd41-ca6f-4957-a6df-36dc0c83e570', '424a6435-259b-47c7-a48f-611a5d668eca', 2, '2021-07-29 00:50:12'),
('bfb5e644-8fce-4870-873c-4c21d540578f', '074d3d34-a8db-42d5-a929-9e822baba7b0', 2, '2021-08-01 15:51:52'),
('cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '074d3d34-a8db-42d5-a929-9e822baba7b0', 2, '2021-08-01 15:53:13'),
('cfc248ba-25d3-493a-841b-a32baab2d2b7', '424a6435-259b-47c7-a48f-611a5d668eca', 2, '2021-07-29 16:11:53'),
('d7872678-ec43-4d10-978e-9bbc54eec66b', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 16:04:44'),
('d865eee8-2ff6-4c9e-89ce-c5da3847cdc0', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 15:30:11'),
('dc498605-c63e-4df7-a000-fb3ae0605fa1', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 16:11:37'),
('ddc4edff-5d35-4a5d-b62d-f89d3c80e8f2', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 15:32:39'),
('e41e3f74-4c57-408b-862e-83e4bbc317db', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 14:58:11'),
('e6d0940f-3265-422e-abd8-cbcf884ddeec', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 16:08:47'),
('e9fd8e4b-1006-4675-be46-cc43c06d43c0', '424a6435-259b-47c7-a48f-611a5d668eca', 5, '2021-07-29 16:39:47'),
('f18f149f-c666-4fbc-a4ff-c08fbf59140b', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 16:04:11'),
('f4269635-affc-44c9-b386-c550ab670476', '074d3d34-a8db-42d5-a929-9e822baba7b0', 1, '2021-08-01 16:16:10'),
('fc9bee9e-084b-45e9-ba53-36ba8fe9ddd9', '074d3d34-a8db-42d5-a929-9e822baba7b0', 2, '2021-07-05 18:14:42');

-- --------------------------------------------------------

--
-- 資料表結構 `testresultchapter`
--

CREATE TABLE `testresultchapter` (
  `id` int(11) NOT NULL,
  `TestResultId` varchar(100) DEFAULT NULL,
  `TestChapterId` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `testresultchapter`
--

INSERT INTO `testresultchapter` (`id`, `TestResultId`, `TestChapterId`) VALUES
(7, 'fc9bee9e-084b-45e9-ba53-36ba8fe9ddd9', '2eebd9f4-6c60-42bf-8628-f50b226ee877'),
(8, 'bae3dd41-ca6f-4957-a6df-36dc0c83e570', '2b537e90-f4fd-4d56-8c54-ee962ab986b2'),
(9, 'bae3dd41-ca6f-4957-a6df-36dc0c83e570', 'df1811dc-d4a1-4f71-abc1-8ff3d2eda417'),
(10, 'a2a93d57-7999-4e9a-bd8f-3c121d6790e4', '2d5e8e30-6429-4182-b70e-68caaebc328c'),
(11, '1f8f1c17-ad5d-4cd9-9f9b-a2f0599a3b27', 'df1811dc-d4a1-4f71-abc1-8ff3d2eda417'),
(12, '1f8f1c17-ad5d-4cd9-9f9b-a2f0599a3b27', 'd5759203-f813-41cc-8898-58c4c55338fa'),
(13, 'cfc248ba-25d3-493a-841b-a32baab2d2b7', 'df1811dc-d4a1-4f71-abc1-8ff3d2eda417'),
(14, 'cfc248ba-25d3-493a-841b-a32baab2d2b7', 'd5759203-f813-41cc-8898-58c4c55338fa'),
(15, 'e9fd8e4b-1006-4675-be46-cc43c06d43c0', 'df1811dc-d4a1-4f71-abc1-8ff3d2eda417'),
(16, 'e9fd8e4b-1006-4675-be46-cc43c06d43c0', 'd5759203-f813-41cc-8898-58c4c55338fa'),
(17, '28964a6f-8787-4b29-866d-de6ab9d8eede', '2d5e8e30-6429-4182-b70e-68caaebc328c'),
(18, '5b8a63a2-60b5-471c-9f90-ddcfa9cbb0cc', '2eebd9f4-6c60-42bf-8628-f50b226ee877'),
(19, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '149d1996-070b-4a9e-af28-0d1965e03b25'),
(20, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'f2914579-a8de-4b63-ad6b-bfd57557409b'),
(21, '44face88-4be1-4803-be23-89992c4f80be', '149d1996-070b-4a9e-af28-0d1965e03b25'),
(22, '44face88-4be1-4803-be23-89992c4f80be', 'f2914579-a8de-4b63-ad6b-bfd57557409b'),
(23, '18601418-a64f-41be-b04f-ab78387c46e7', '149d1996-070b-4a9e-af28-0d1965e03b25'),
(24, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '149d1996-070b-4a9e-af28-0d1965e03b25'),
(25, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '149d1996-070b-4a9e-af28-0d1965e03b25'),
(26, '5cc2cb37-1b65-446b-be33-0c78554abf8d', '2b537e90-f4fd-4d56-8c54-ee962ab986b2'),
(27, '55b31de4-3f54-484f-940c-21f50ccfb2ad', '2b537e90-f4fd-4d56-8c54-ee962ab986b2'),
(28, '3eb6b2cc-1200-480c-bd81-ca089bda7258', '2b537e90-f4fd-4d56-8c54-ee962ab986b2'),
(29, '9706af85-a2a6-4b53-a449-bdd9bf91e06d', '2b537e90-f4fd-4d56-8c54-ee962ab986b2'),
(30, 'd865eee8-2ff6-4c9e-89ce-c5da3847cdc0', '2b537e90-f4fd-4d56-8c54-ee962ab986b2'),
(31, '8ebee1d8-e97a-4342-b50f-bee59afad29c', '2b537e90-f4fd-4d56-8c54-ee962ab986b2'),
(32, '330578f1-e609-4dfb-b3c1-81800dd1e390', '2b537e90-f4fd-4d56-8c54-ee962ab986b2'),
(33, 'ddc4edff-5d35-4a5d-b62d-f89d3c80e8f2', '2b537e90-f4fd-4d56-8c54-ee962ab986b2'),
(34, 'ab6d0a93-d708-48e3-9f30-e4b591be62b7', '2b537e90-f4fd-4d56-8c54-ee962ab986b2'),
(35, '2e433cf6-0ad1-4285-84c7-65635b26258c', '2b537e90-f4fd-4d56-8c54-ee962ab986b2'),
(36, 'aed20c3f-bd50-40bb-818f-d118a27491ea', '2b537e90-f4fd-4d56-8c54-ee962ab986b2'),
(37, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'f2914579-a8de-4b63-ad6b-bfd57557409b'),
(38, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '8a2501f6-2bec-4f3c-8de4-a2983c4e837c'),
(39, '23aa7270-236f-4f0c-a5ea-a6c2a69b49ba', 'f2914579-a8de-4b63-ad6b-bfd57557409b'),
(40, '23aa7270-236f-4f0c-a5ea-a6c2a69b49ba', '8a2501f6-2bec-4f3c-8de4-a2983c4e837c'),
(41, '886ac97a-de83-4492-93c4-bda7dc1e41b7', 'f2914579-a8de-4b63-ad6b-bfd57557409b'),
(42, '886ac97a-de83-4492-93c4-bda7dc1e41b7', '8a2501f6-2bec-4f3c-8de4-a2983c4e837c'),
(43, '252f2ac9-4b08-46a5-b8f1-770152a02329', 'f2914579-a8de-4b63-ad6b-bfd57557409b'),
(44, '252f2ac9-4b08-46a5-b8f1-770152a02329', '8a2501f6-2bec-4f3c-8de4-a2983c4e837c'),
(45, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'f2914579-a8de-4b63-ad6b-bfd57557409b'),
(46, 'bfb5e644-8fce-4870-873c-4c21d540578f', '8a2501f6-2bec-4f3c-8de4-a2983c4e837c'),
(47, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'f2914579-a8de-4b63-ad6b-bfd57557409b'),
(48, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '8a2501f6-2bec-4f3c-8de4-a2983c4e837c'),
(49, 'ba0b8e5d-8842-4ab8-b3ba-8adc36293593', '2b537e90-f4fd-4d56-8c54-ee962ab986b2'),
(50, 'ba0b8e5d-8842-4ab8-b3ba-8adc36293593', 'df1811dc-d4a1-4f71-abc1-8ff3d2eda417'),
(51, 'f18f149f-c666-4fbc-a4ff-c08fbf59140b', '2b537e90-f4fd-4d56-8c54-ee962ab986b2'),
(52, 'f18f149f-c666-4fbc-a4ff-c08fbf59140b', 'df1811dc-d4a1-4f71-abc1-8ff3d2eda417'),
(53, 'd7872678-ec43-4d10-978e-9bbc54eec66b', '2b537e90-f4fd-4d56-8c54-ee962ab986b2'),
(54, 'd7872678-ec43-4d10-978e-9bbc54eec66b', 'df1811dc-d4a1-4f71-abc1-8ff3d2eda417'),
(55, '58140fb2-4898-490c-b8ff-22e23cdc159b', '2b537e90-f4fd-4d56-8c54-ee962ab986b2'),
(56, '58140fb2-4898-490c-b8ff-22e23cdc159b', 'df1811dc-d4a1-4f71-abc1-8ff3d2eda417'),
(57, '2f181b1f-11b1-4cea-ac4e-1e839cc05ca1', '2b537e90-f4fd-4d56-8c54-ee962ab986b2'),
(58, '2f181b1f-11b1-4cea-ac4e-1e839cc05ca1', 'df1811dc-d4a1-4f71-abc1-8ff3d2eda417'),
(59, 'e6d0940f-3265-422e-abd8-cbcf884ddeec', '2b537e90-f4fd-4d56-8c54-ee962ab986b2'),
(60, 'e6d0940f-3265-422e-abd8-cbcf884ddeec', 'df1811dc-d4a1-4f71-abc1-8ff3d2eda417'),
(61, '2d0be6f3-a16a-47fc-b118-d4b353e97b78', '2b537e90-f4fd-4d56-8c54-ee962ab986b2'),
(62, '2d0be6f3-a16a-47fc-b118-d4b353e97b78', 'df1811dc-d4a1-4f71-abc1-8ff3d2eda417'),
(63, 'afe2fc56-d0e6-46ee-99ee-4358c9065844', '2b537e90-f4fd-4d56-8c54-ee962ab986b2'),
(64, 'afe2fc56-d0e6-46ee-99ee-4358c9065844', 'df1811dc-d4a1-4f71-abc1-8ff3d2eda417'),
(65, 'dc498605-c63e-4df7-a000-fb3ae0605fa1', '2b537e90-f4fd-4d56-8c54-ee962ab986b2'),
(66, 'dc498605-c63e-4df7-a000-fb3ae0605fa1', 'df1811dc-d4a1-4f71-abc1-8ff3d2eda417'),
(67, '79b793a3-cfb3-42b7-ab77-42c107a1c70c', '2b537e90-f4fd-4d56-8c54-ee962ab986b2'),
(68, '79b793a3-cfb3-42b7-ab77-42c107a1c70c', 'df1811dc-d4a1-4f71-abc1-8ff3d2eda417'),
(69, 'f4269635-affc-44c9-b386-c550ab670476', '2b537e90-f4fd-4d56-8c54-ee962ab986b2'),
(70, 'f4269635-affc-44c9-b386-c550ab670476', 'df1811dc-d4a1-4f71-abc1-8ff3d2eda417'),
(71, '5762d046-f51b-48fe-8447-68b2237e7f42', '2b537e90-f4fd-4d56-8c54-ee962ab986b2'),
(72, '5762d046-f51b-48fe-8447-68b2237e7f42', 'df1811dc-d4a1-4f71-abc1-8ff3d2eda417'),
(73, '5762d046-f51b-48fe-8447-68b2237e7f42', 'd5759203-f813-41cc-8898-58c4c55338fa');

-- --------------------------------------------------------

--
-- 資料表結構 `testresultdetail`
--

CREATE TABLE `testresultdetail` (
  `TestResultDetailId` int(11) NOT NULL,
  `TestResultId` varchar(100) NOT NULL,
  `WordId` varchar(100) NOT NULL,
  `Score` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `testresultdetail`
--

INSERT INTO `testresultdetail` (`TestResultDetailId`, `TestResultId`, `WordId`, `Score`) VALUES
(205, 'fc9bee9e-084b-45e9-ba53-36ba8fe9ddd9', 'ba9856e7-d34d-48b9-9048-b0790736e252', 'good'),
(206, 'fc9bee9e-084b-45e9-ba53-36ba8fe9ddd9', '8dea43f6-d21c-4acf-a6af-6e68aa8bd119', 'good'),
(207, 'fc9bee9e-084b-45e9-ba53-36ba8fe9ddd9', '3d79aa34-1bd5-42e8-a938-9bc21f4c2a46', 'normal'),
(208, 'fc9bee9e-084b-45e9-ba53-36ba8fe9ddd9', '757efcb4-dbdb-4fae-bbd7-ad6ad912ed3f', 'normal'),
(209, 'fc9bee9e-084b-45e9-ba53-36ba8fe9ddd9', '5aa39d91-c34a-490e-8a09-507163e6e690', 'normal'),
(210, 'fc9bee9e-084b-45e9-ba53-36ba8fe9ddd9', 'a9965f38-b3ff-4f3f-9bf3-2d5d343cb65b', 'bad'),
(211, 'bae3dd41-ca6f-4957-a6df-36dc0c83e570', '6f2f186e-90f6-4582-b0eb-868c648b3f4e', 'good'),
(212, 'bae3dd41-ca6f-4957-a6df-36dc0c83e570', 'dbe5ded6-74e2-45bc-aa88-61db3c8dcc62', 'good'),
(213, 'bae3dd41-ca6f-4957-a6df-36dc0c83e570', '2ac7f079-a489-42b7-b0eb-eb540eac90aa', 'good'),
(214, 'bae3dd41-ca6f-4957-a6df-36dc0c83e570', '1a669a92-ffe0-4c1e-9ac1-a6a35deb73b6', 'good'),
(215, 'bae3dd41-ca6f-4957-a6df-36dc0c83e570', '0d9b2034-dbc0-456d-b09a-8bffce7d8ef9', 'normal'),
(216, 'bae3dd41-ca6f-4957-a6df-36dc0c83e570', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'normal'),
(217, 'bae3dd41-ca6f-4957-a6df-36dc0c83e570', '1f4966ee-3ce2-40c5-9ea8-6f88b8a74546', 'normal'),
(218, 'bae3dd41-ca6f-4957-a6df-36dc0c83e570', '469eb040-2fcc-4a2c-8320-a3f3d5098fc9', 'bad'),
(219, 'a2a93d57-7999-4e9a-bd8f-3c121d6790e4', 'e762c29a-181f-4221-93a4-a8ed37ea7798', 'good'),
(220, 'a2a93d57-7999-4e9a-bd8f-3c121d6790e4', '994af216-7489-40ca-a1d7-6c8f9c5726ab', 'good'),
(221, 'a2a93d57-7999-4e9a-bd8f-3c121d6790e4', '7310f099-d057-4384-9109-771a8b35141b', 'normal'),
(222, '1f8f1c17-ad5d-4cd9-9f9b-a2f0599a3b27', '0f3727df-adb9-40fa-9910-6a62951f3193', 'good'),
(223, '1f8f1c17-ad5d-4cd9-9f9b-a2f0599a3b27', '0d9b2034-dbc0-456d-b09a-8bffce7d8ef9', 'good'),
(224, '1f8f1c17-ad5d-4cd9-9f9b-a2f0599a3b27', '1f4966ee-3ce2-40c5-9ea8-6f88b8a74546', 'normal'),
(225, '1f8f1c17-ad5d-4cd9-9f9b-a2f0599a3b27', 'f4adf6d0-14e0-4a01-b70f-8b323fd6d8b3', 'normal'),
(226, '1f8f1c17-ad5d-4cd9-9f9b-a2f0599a3b27', 'c1765455-73fa-4d1e-b143-0e1dd360abdd', 'bad'),
(227, 'cfc248ba-25d3-493a-841b-a32baab2d2b7', '0f3727df-adb9-40fa-9910-6a62951f3193', 'good'),
(228, 'cfc248ba-25d3-493a-841b-a32baab2d2b7', '0d9b2034-dbc0-456d-b09a-8bffce7d8ef9', 'good'),
(229, 'cfc248ba-25d3-493a-841b-a32baab2d2b7', '1f4966ee-3ce2-40c5-9ea8-6f88b8a74546', 'normal'),
(230, 'cfc248ba-25d3-493a-841b-a32baab2d2b7', 'f4adf6d0-14e0-4a01-b70f-8b323fd6d8b3', 'normal'),
(231, 'cfc248ba-25d3-493a-841b-a32baab2d2b7', 'c1765455-73fa-4d1e-b143-0e1dd360abdd', 'bad'),
(232, 'e9fd8e4b-1006-4675-be46-cc43c06d43c0', '0f3727df-adb9-40fa-9910-6a62951f3193', 'correct'),
(233, 'e9fd8e4b-1006-4675-be46-cc43c06d43c0', 'c1765455-73fa-4d1e-b143-0e1dd360abdd', 'correct'),
(234, 'e9fd8e4b-1006-4675-be46-cc43c06d43c0', '1f4966ee-3ce2-40c5-9ea8-6f88b8a74546', 'wrong'),
(235, 'e9fd8e4b-1006-4675-be46-cc43c06d43c0', 'f4adf6d0-14e0-4a01-b70f-8b323fd6d8b3', 'wrong'),
(236, 'e9fd8e4b-1006-4675-be46-cc43c06d43c0', '0d9b2034-dbc0-456d-b09a-8bffce7d8ef9', 'wrong'),
(237, '28964a6f-8787-4b29-866d-de6ab9d8eede', '7310f099-d057-4384-9109-771a8b35141b', 'good'),
(238, '28964a6f-8787-4b29-866d-de6ab9d8eede', 'e762c29a-181f-4221-93a4-a8ed37ea7798', 'bad'),
(239, '28964a6f-8787-4b29-866d-de6ab9d8eede', '994af216-7489-40ca-a1d7-6c8f9c5726ab', 'bad'),
(240, '5b8a63a2-60b5-471c-9f90-ddcfa9cbb0cc', 'ba9856e7-d34d-48b9-9048-b0790736e252', 'good'),
(241, '5b8a63a2-60b5-471c-9f90-ddcfa9cbb0cc', '3d79aa34-1bd5-42e8-a938-9bc21f4c2a46', 'good'),
(242, '5b8a63a2-60b5-471c-9f90-ddcfa9cbb0cc', 'a9965f38-b3ff-4f3f-9bf3-2d5d343cb65b', 'good'),
(243, '5b8a63a2-60b5-471c-9f90-ddcfa9cbb0cc', '2a2aa180-a2b8-4a9f-9ee0-a8c1148a5d4f', 'normal'),
(244, '5b8a63a2-60b5-471c-9f90-ddcfa9cbb0cc', '8dea43f6-d21c-4acf-a6af-6e68aa8bd119', 'normal'),
(245, '5b8a63a2-60b5-471c-9f90-ddcfa9cbb0cc', '5aa39d91-c34a-490e-8a09-507163e6e690', 'bad'),
(246, '5b8a63a2-60b5-471c-9f90-ddcfa9cbb0cc', '757efcb4-dbdb-4fae-bbd7-ad6ad912ed3f', 'bad'),
(247, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'd9d9d2e6-ea62-487b-a3e8-6dd4dcfce395', 'good'),
(248, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '347d1aee-b24c-4e7d-b7c4-10713ef441d0', 'good'),
(249, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'd9bb93b8-f90e-4557-a7a4-c9c123492b0d', 'good'),
(250, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'bdd16a0f-0d4a-4edd-86bd-fe9731d226e1', 'good'),
(251, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'd3b336ed-72bb-4eda-b46f-94f0763c00da', 'good'),
(252, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'fc13616b-cd64-4aa0-8cc0-aef3efd8ee22', 'good'),
(253, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'c681b4d1-3e00-482b-8167-88f7a68cf300', 'good'),
(254, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'c4b255d7-b6e3-4874-b4f9-2ab5146a4a92', 'good'),
(255, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '46ce8153-5baa-488e-b31d-99532117d568', 'good'),
(256, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '66bdb269-1520-450c-a9ca-1461cf94fc31', 'good'),
(257, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '3f799330-992e-46b1-aa67-f425557cecfe', 'good'),
(258, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'a8714ef5-d03f-4bca-b83c-db05e756927f', 'good'),
(259, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'fbd00cb5-1449-4810-93a0-38658c11dea9', 'good'),
(260, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '092aa462-4130-4600-8e52-655d939828fd', 'good'),
(261, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'e2d3022b-df82-4872-8845-89706c14ae77', 'good'),
(262, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'a9f7f48a-d662-4ff6-a434-9ea5eff1a54b', 'good'),
(263, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '284845ba-cb4f-45d4-a051-20995d7cdb6c', 'good'),
(264, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '9075a0e6-52a7-4dc6-938c-c2e9625f55c1', 'good'),
(265, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'a0686740-bb4b-4169-a30b-0d27cafc5444', 'good'),
(266, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '8eedc25c-b5cc-45da-953e-f0fdfeb64bd3', 'good'),
(267, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '9903d127-3f40-4b2a-bf57-87a82d481224', 'good'),
(268, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '4d59530d-6e0d-42ed-8ab8-1e11d9995416', 'good'),
(269, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'e464b0ea-fc54-456e-affd-c56d89aaa616', 'good'),
(270, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'c5961c2d-b197-46b9-8651-43be44efcb9b', 'good'),
(271, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '653c4fd3-4711-47db-ab19-d06e364d250b', 'good'),
(272, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '5168c9e3-495f-401a-a45b-13ac2050d915', 'good'),
(273, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'b224bfdd-6f38-4c35-aee8-e26c0292dfd3', 'good'),
(274, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '2b0ff6a0-ea2c-4897-9f1b-876ed8a8c473', 'good'),
(275, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'a67a7a97-ea2f-4653-a3dd-2c5cfa6c0e32', 'good'),
(276, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '03929ac0-ae71-43c0-8b83-bb145707e0f1', 'good'),
(277, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '0fa307b7-00fb-4d91-997f-35f101d1ac67', 'good'),
(278, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '6ebcfd2b-5d04-4b5b-a493-09484323f50a', 'good'),
(279, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'd6f8f24f-c894-4049-a105-acc63786ea0d', 'good'),
(280, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'cbe0b4ef-32cc-4137-a865-d27437a38f8f', 'good'),
(281, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '36f8ec56-65d9-42fa-8cb7-0c6eb86b7a4b', 'good'),
(282, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '605e682f-e8d1-4dc3-9612-87435c4efdf3', 'good'),
(283, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '03144090-a110-48c0-ac33-8cb65cd3cbb9', 'good'),
(284, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '71717bae-6ab8-49c6-acd9-f7886f950f02', 'good'),
(285, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '296e2c98-44ca-4676-8428-5ddf38ca866d', 'good'),
(286, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '252ed725-7932-469b-91a5-c08d7045e2e3', 'good'),
(287, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'a1a905c0-eb87-4d81-8bb1-707eb99b2047', 'good'),
(288, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'e5c53663-8ead-44ef-bcf0-42523173ff4c', 'good'),
(289, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'f621585a-3e99-44ee-833c-e04adc291a3d', 'good'),
(290, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '95ea4fea-6e40-4a1d-bf59-259380c6aba6', 'good'),
(291, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'af09ecec-e136-4f94-8b2f-2f4d32eaf54e', 'good'),
(292, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'f47772dd-97a9-442f-a015-c9ae275b212a', 'good'),
(293, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'f6b28411-fd15-4d03-a870-20ea2f2c21bc', 'good'),
(294, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '015e75c4-7a49-480f-b2f0-cadfaeb2f899', 'good'),
(295, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '009f673d-c6f3-452b-a24c-e47747c71c95', 'good'),
(296, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '79f89078-30f4-4ce7-912b-926085c77b4c', 'good'),
(297, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '4fb3f0cd-5b38-4bf3-95b4-18198f774e40', 'good'),
(298, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '0bbb046a-3675-458f-957f-fc7ae5a6ad61', 'good'),
(299, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '54eb2881-5025-4067-a668-f987adc56343', 'good'),
(300, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '6d58b894-bb45-4680-b782-e0c79d939e9f', 'good'),
(301, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '4e03423f-e99b-4e7f-bfb5-462daa925f14', 'good'),
(302, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'a793bde5-428a-41f7-9678-c9b20400088e', 'good'),
(303, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '1dc1f214-d2a9-494e-8690-a7c958880afe', 'good'),
(304, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'fa6763a6-8f9c-40a0-aef7-9cd26de0ae53', 'good'),
(305, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '3729fd29-95f0-48a9-9994-5fb395013cc8', 'good'),
(306, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '0ab5b3ef-bcb0-404d-8492-4acb514811d5', 'normal'),
(307, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '1fe4ebf4-9e3c-4ef7-9a78-e55ece0c49c0', 'normal'),
(308, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '2c92fcc1-ebeb-4877-8131-35209e2b6f6b', 'normal'),
(309, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '32117151-0f3b-4d68-be51-fde2ac8e8042', 'normal'),
(310, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '8f7b894d-f6c8-4754-a95d-0d567e3b0b44', 'normal'),
(311, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '2ec7c8f9-e693-491e-81cb-5a59f5331110', 'normal'),
(312, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '6ff45324-801c-4b10-a775-496735efdcd5', 'normal'),
(313, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'f719071d-a1d5-4a4e-bcbe-e67d411cd4a5', 'normal'),
(314, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '8c47ed7f-a27a-4abd-b33c-99530017224d', 'normal'),
(315, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '22f8c951-ab55-4b6e-b349-68a0b1b44f09', 'normal'),
(316, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '6cebc7a9-6a4e-4025-ac9a-b981a54a5ed4', 'normal'),
(317, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'b0b408e1-e50f-4243-9ba8-d6e9037e41f3', 'normal'),
(318, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'f9aff2b2-f47c-4c3f-af79-a987a165c160', 'normal'),
(319, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'bb234d21-87df-446d-ab99-eb52d8796b7e', 'normal'),
(320, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'a472db24-7634-48ce-bb75-18eb45c03057', 'normal'),
(321, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'cf35313d-0cdf-428c-a1eb-77c63e1d8e71', 'normal'),
(322, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'd6e5eebb-4ade-4335-9730-f492bb8bd757', 'normal'),
(323, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '5c83c1b8-82d3-412b-a0ea-2f55c58a59b4', 'normal'),
(324, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '1f4966ee-3ce2-40c5-9ea8-6f88b8a74546', 'normal'),
(325, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '349c467e-309b-4284-8243-e2231dc5eb05', 'normal'),
(326, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '8061a493-277b-4869-b853-c62e37fa90f6', 'bad'),
(327, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '80f02910-322f-4ee0-8cd7-a86774f0d38e', 'bad'),
(328, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'f1b7350f-6333-4027-b971-487aea85304c', 'bad'),
(329, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'b10591c9-f395-48fe-9aee-2fddae102f06', 'bad'),
(330, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'a8661bbf-b130-4a6d-bd3e-4a1998118657', 'bad'),
(331, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '4e0fb432-71fe-471d-a6a9-f2a123132ec4', 'bad'),
(332, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'c223d0dd-6e54-46bd-bcba-226ae9f7ef54', 'bad'),
(333, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '442957c3-344a-47bf-91db-fde2e9ab3142', 'bad'),
(334, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '5b6b5f73-88b2-4a82-989b-09faa442a9b6', 'bad'),
(335, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', 'c94a3326-4234-4a6d-a6cc-fedde8414920', 'bad'),
(336, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '44c168b3-5854-43db-9c68-49c5e9795967', 'bad'),
(337, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '007f9b19-5d90-43ca-93ae-be6ba8bb5731', 'bad'),
(338, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '3e00a2c6-da4f-4969-a130-ec1eeaed1bfc', 'bad'),
(339, '914d3b53-692c-42a3-92ff-f0d5bb069dbc', '46e2eff3-920e-46c4-bb50-0920d08df6f6', 'bad'),
(340, '44face88-4be1-4803-be23-89992c4f80be', 'd9d9d2e6-ea62-487b-a3e8-6dd4dcfce395', 'good'),
(341, '44face88-4be1-4803-be23-89992c4f80be', '347d1aee-b24c-4e7d-b7c4-10713ef441d0', 'good'),
(342, '44face88-4be1-4803-be23-89992c4f80be', 'd9bb93b8-f90e-4557-a7a4-c9c123492b0d', 'good'),
(343, '44face88-4be1-4803-be23-89992c4f80be', 'bdd16a0f-0d4a-4edd-86bd-fe9731d226e1', 'good'),
(344, '44face88-4be1-4803-be23-89992c4f80be', 'd3b336ed-72bb-4eda-b46f-94f0763c00da', 'good'),
(345, '44face88-4be1-4803-be23-89992c4f80be', 'fc13616b-cd64-4aa0-8cc0-aef3efd8ee22', 'good'),
(346, '44face88-4be1-4803-be23-89992c4f80be', 'c681b4d1-3e00-482b-8167-88f7a68cf300', 'good'),
(347, '44face88-4be1-4803-be23-89992c4f80be', 'c4b255d7-b6e3-4874-b4f9-2ab5146a4a92', 'good'),
(348, '44face88-4be1-4803-be23-89992c4f80be', '46ce8153-5baa-488e-b31d-99532117d568', 'good'),
(349, '44face88-4be1-4803-be23-89992c4f80be', '66bdb269-1520-450c-a9ca-1461cf94fc31', 'good'),
(350, '44face88-4be1-4803-be23-89992c4f80be', '3f799330-992e-46b1-aa67-f425557cecfe', 'good'),
(351, '44face88-4be1-4803-be23-89992c4f80be', 'a8714ef5-d03f-4bca-b83c-db05e756927f', 'good'),
(352, '44face88-4be1-4803-be23-89992c4f80be', 'fbd00cb5-1449-4810-93a0-38658c11dea9', 'good'),
(353, '44face88-4be1-4803-be23-89992c4f80be', '092aa462-4130-4600-8e52-655d939828fd', 'good'),
(354, '44face88-4be1-4803-be23-89992c4f80be', 'e2d3022b-df82-4872-8845-89706c14ae77', 'good'),
(355, '44face88-4be1-4803-be23-89992c4f80be', 'a9f7f48a-d662-4ff6-a434-9ea5eff1a54b', 'good'),
(356, '44face88-4be1-4803-be23-89992c4f80be', '284845ba-cb4f-45d4-a051-20995d7cdb6c', 'good'),
(357, '44face88-4be1-4803-be23-89992c4f80be', '9075a0e6-52a7-4dc6-938c-c2e9625f55c1', 'good'),
(358, '44face88-4be1-4803-be23-89992c4f80be', 'a0686740-bb4b-4169-a30b-0d27cafc5444', 'good'),
(359, '44face88-4be1-4803-be23-89992c4f80be', '8eedc25c-b5cc-45da-953e-f0fdfeb64bd3', 'good'),
(360, '44face88-4be1-4803-be23-89992c4f80be', '9903d127-3f40-4b2a-bf57-87a82d481224', 'good'),
(361, '44face88-4be1-4803-be23-89992c4f80be', '4d59530d-6e0d-42ed-8ab8-1e11d9995416', 'good'),
(362, '44face88-4be1-4803-be23-89992c4f80be', 'e464b0ea-fc54-456e-affd-c56d89aaa616', 'good'),
(363, '44face88-4be1-4803-be23-89992c4f80be', 'c5961c2d-b197-46b9-8651-43be44efcb9b', 'good'),
(364, '44face88-4be1-4803-be23-89992c4f80be', '653c4fd3-4711-47db-ab19-d06e364d250b', 'good'),
(365, '44face88-4be1-4803-be23-89992c4f80be', '5168c9e3-495f-401a-a45b-13ac2050d915', 'good'),
(366, '44face88-4be1-4803-be23-89992c4f80be', 'b224bfdd-6f38-4c35-aee8-e26c0292dfd3', 'good'),
(367, '44face88-4be1-4803-be23-89992c4f80be', '2b0ff6a0-ea2c-4897-9f1b-876ed8a8c473', 'good'),
(368, '44face88-4be1-4803-be23-89992c4f80be', 'a67a7a97-ea2f-4653-a3dd-2c5cfa6c0e32', 'good'),
(369, '44face88-4be1-4803-be23-89992c4f80be', '03929ac0-ae71-43c0-8b83-bb145707e0f1', 'good'),
(370, '44face88-4be1-4803-be23-89992c4f80be', '0fa307b7-00fb-4d91-997f-35f101d1ac67', 'good'),
(371, '44face88-4be1-4803-be23-89992c4f80be', '6ebcfd2b-5d04-4b5b-a493-09484323f50a', 'good'),
(372, '44face88-4be1-4803-be23-89992c4f80be', 'd6f8f24f-c894-4049-a105-acc63786ea0d', 'good'),
(373, '44face88-4be1-4803-be23-89992c4f80be', 'cbe0b4ef-32cc-4137-a865-d27437a38f8f', 'good'),
(374, '44face88-4be1-4803-be23-89992c4f80be', '36f8ec56-65d9-42fa-8cb7-0c6eb86b7a4b', 'good'),
(375, '44face88-4be1-4803-be23-89992c4f80be', '605e682f-e8d1-4dc3-9612-87435c4efdf3', 'good'),
(376, '44face88-4be1-4803-be23-89992c4f80be', '03144090-a110-48c0-ac33-8cb65cd3cbb9', 'good'),
(377, '44face88-4be1-4803-be23-89992c4f80be', '71717bae-6ab8-49c6-acd9-f7886f950f02', 'good'),
(378, '44face88-4be1-4803-be23-89992c4f80be', '296e2c98-44ca-4676-8428-5ddf38ca866d', 'good'),
(379, '44face88-4be1-4803-be23-89992c4f80be', '252ed725-7932-469b-91a5-c08d7045e2e3', 'good'),
(380, '44face88-4be1-4803-be23-89992c4f80be', 'a1a905c0-eb87-4d81-8bb1-707eb99b2047', 'good'),
(381, '44face88-4be1-4803-be23-89992c4f80be', 'e5c53663-8ead-44ef-bcf0-42523173ff4c', 'good'),
(382, '44face88-4be1-4803-be23-89992c4f80be', 'f621585a-3e99-44ee-833c-e04adc291a3d', 'good'),
(383, '44face88-4be1-4803-be23-89992c4f80be', '95ea4fea-6e40-4a1d-bf59-259380c6aba6', 'good'),
(384, '44face88-4be1-4803-be23-89992c4f80be', 'af09ecec-e136-4f94-8b2f-2f4d32eaf54e', 'good'),
(385, '44face88-4be1-4803-be23-89992c4f80be', 'f47772dd-97a9-442f-a015-c9ae275b212a', 'good'),
(386, '44face88-4be1-4803-be23-89992c4f80be', 'f6b28411-fd15-4d03-a870-20ea2f2c21bc', 'good'),
(387, '44face88-4be1-4803-be23-89992c4f80be', '015e75c4-7a49-480f-b2f0-cadfaeb2f899', 'good'),
(388, '44face88-4be1-4803-be23-89992c4f80be', '009f673d-c6f3-452b-a24c-e47747c71c95', 'good'),
(389, '44face88-4be1-4803-be23-89992c4f80be', '79f89078-30f4-4ce7-912b-926085c77b4c', 'good'),
(390, '44face88-4be1-4803-be23-89992c4f80be', '4fb3f0cd-5b38-4bf3-95b4-18198f774e40', 'good'),
(391, '44face88-4be1-4803-be23-89992c4f80be', '0bbb046a-3675-458f-957f-fc7ae5a6ad61', 'good'),
(392, '44face88-4be1-4803-be23-89992c4f80be', '54eb2881-5025-4067-a668-f987adc56343', 'good'),
(393, '44face88-4be1-4803-be23-89992c4f80be', '6d58b894-bb45-4680-b782-e0c79d939e9f', 'good'),
(394, '44face88-4be1-4803-be23-89992c4f80be', '4e03423f-e99b-4e7f-bfb5-462daa925f14', 'good'),
(395, '44face88-4be1-4803-be23-89992c4f80be', 'a793bde5-428a-41f7-9678-c9b20400088e', 'good'),
(396, '44face88-4be1-4803-be23-89992c4f80be', '1dc1f214-d2a9-494e-8690-a7c958880afe', 'good'),
(397, '44face88-4be1-4803-be23-89992c4f80be', 'fa6763a6-8f9c-40a0-aef7-9cd26de0ae53', 'good'),
(398, '44face88-4be1-4803-be23-89992c4f80be', '3729fd29-95f0-48a9-9994-5fb395013cc8', 'good'),
(399, '44face88-4be1-4803-be23-89992c4f80be', '0ab5b3ef-bcb0-404d-8492-4acb514811d5', 'normal'),
(400, '44face88-4be1-4803-be23-89992c4f80be', '1fe4ebf4-9e3c-4ef7-9a78-e55ece0c49c0', 'normal'),
(401, '44face88-4be1-4803-be23-89992c4f80be', '2c92fcc1-ebeb-4877-8131-35209e2b6f6b', 'normal'),
(402, '44face88-4be1-4803-be23-89992c4f80be', '32117151-0f3b-4d68-be51-fde2ac8e8042', 'normal'),
(403, '44face88-4be1-4803-be23-89992c4f80be', '8f7b894d-f6c8-4754-a95d-0d567e3b0b44', 'normal'),
(404, '44face88-4be1-4803-be23-89992c4f80be', '2ec7c8f9-e693-491e-81cb-5a59f5331110', 'normal'),
(405, '44face88-4be1-4803-be23-89992c4f80be', '6ff45324-801c-4b10-a775-496735efdcd5', 'normal'),
(406, '44face88-4be1-4803-be23-89992c4f80be', 'f719071d-a1d5-4a4e-bcbe-e67d411cd4a5', 'normal'),
(407, '44face88-4be1-4803-be23-89992c4f80be', '8c47ed7f-a27a-4abd-b33c-99530017224d', 'normal'),
(408, '44face88-4be1-4803-be23-89992c4f80be', '22f8c951-ab55-4b6e-b349-68a0b1b44f09', 'normal'),
(409, '44face88-4be1-4803-be23-89992c4f80be', '6cebc7a9-6a4e-4025-ac9a-b981a54a5ed4', 'normal'),
(410, '44face88-4be1-4803-be23-89992c4f80be', 'b0b408e1-e50f-4243-9ba8-d6e9037e41f3', 'normal'),
(411, '44face88-4be1-4803-be23-89992c4f80be', 'f9aff2b2-f47c-4c3f-af79-a987a165c160', 'normal'),
(412, '44face88-4be1-4803-be23-89992c4f80be', 'bb234d21-87df-446d-ab99-eb52d8796b7e', 'normal'),
(413, '44face88-4be1-4803-be23-89992c4f80be', 'a472db24-7634-48ce-bb75-18eb45c03057', 'normal'),
(414, '44face88-4be1-4803-be23-89992c4f80be', 'cf35313d-0cdf-428c-a1eb-77c63e1d8e71', 'normal'),
(415, '44face88-4be1-4803-be23-89992c4f80be', 'd6e5eebb-4ade-4335-9730-f492bb8bd757', 'normal'),
(416, '44face88-4be1-4803-be23-89992c4f80be', '5c83c1b8-82d3-412b-a0ea-2f55c58a59b4', 'normal'),
(417, '44face88-4be1-4803-be23-89992c4f80be', '1f4966ee-3ce2-40c5-9ea8-6f88b8a74546', 'normal'),
(418, '44face88-4be1-4803-be23-89992c4f80be', '349c467e-309b-4284-8243-e2231dc5eb05', 'normal'),
(419, '44face88-4be1-4803-be23-89992c4f80be', '8061a493-277b-4869-b853-c62e37fa90f6', 'bad'),
(420, '44face88-4be1-4803-be23-89992c4f80be', '80f02910-322f-4ee0-8cd7-a86774f0d38e', 'bad'),
(421, '44face88-4be1-4803-be23-89992c4f80be', 'f1b7350f-6333-4027-b971-487aea85304c', 'bad'),
(422, '44face88-4be1-4803-be23-89992c4f80be', 'b10591c9-f395-48fe-9aee-2fddae102f06', 'bad'),
(423, '44face88-4be1-4803-be23-89992c4f80be', 'a8661bbf-b130-4a6d-bd3e-4a1998118657', 'bad'),
(424, '44face88-4be1-4803-be23-89992c4f80be', '4e0fb432-71fe-471d-a6a9-f2a123132ec4', 'bad'),
(425, '44face88-4be1-4803-be23-89992c4f80be', 'c223d0dd-6e54-46bd-bcba-226ae9f7ef54', 'bad'),
(426, '44face88-4be1-4803-be23-89992c4f80be', '442957c3-344a-47bf-91db-fde2e9ab3142', 'bad'),
(427, '44face88-4be1-4803-be23-89992c4f80be', '5b6b5f73-88b2-4a82-989b-09faa442a9b6', 'bad'),
(428, '44face88-4be1-4803-be23-89992c4f80be', 'c94a3326-4234-4a6d-a6cc-fedde8414920', 'bad'),
(429, '44face88-4be1-4803-be23-89992c4f80be', '44c168b3-5854-43db-9c68-49c5e9795967', 'bad'),
(430, '44face88-4be1-4803-be23-89992c4f80be', '007f9b19-5d90-43ca-93ae-be6ba8bb5731', 'bad'),
(431, '44face88-4be1-4803-be23-89992c4f80be', '3e00a2c6-da4f-4969-a130-ec1eeaed1bfc', 'bad'),
(432, '44face88-4be1-4803-be23-89992c4f80be', '46e2eff3-920e-46c4-bb50-0920d08df6f6', 'bad'),
(433, '18601418-a64f-41be-b04f-ab78387c46e7', '8c47ed7f-a27a-4abd-b33c-99530017224d', 'good'),
(434, '18601418-a64f-41be-b04f-ab78387c46e7', 'a472db24-7634-48ce-bb75-18eb45c03057', 'good'),
(435, '18601418-a64f-41be-b04f-ab78387c46e7', 'cbe0b4ef-32cc-4137-a865-d27437a38f8f', 'good'),
(436, '18601418-a64f-41be-b04f-ab78387c46e7', '9903d127-3f40-4b2a-bf57-87a82d481224', 'good'),
(437, '18601418-a64f-41be-b04f-ab78387c46e7', 'c223d0dd-6e54-46bd-bcba-226ae9f7ef54', 'good'),
(438, '18601418-a64f-41be-b04f-ab78387c46e7', '4fb3f0cd-5b38-4bf3-95b4-18198f774e40', 'good'),
(439, '18601418-a64f-41be-b04f-ab78387c46e7', '66bdb269-1520-450c-a9ca-1461cf94fc31', 'good'),
(440, '18601418-a64f-41be-b04f-ab78387c46e7', 'cf35313d-0cdf-428c-a1eb-77c63e1d8e71', 'good'),
(441, '18601418-a64f-41be-b04f-ab78387c46e7', '80f02910-322f-4ee0-8cd7-a86774f0d38e', 'good'),
(442, '18601418-a64f-41be-b04f-ab78387c46e7', 'bb234d21-87df-446d-ab99-eb52d8796b7e', 'good'),
(443, '18601418-a64f-41be-b04f-ab78387c46e7', 'd9d9d2e6-ea62-487b-a3e8-6dd4dcfce395', 'good'),
(444, '18601418-a64f-41be-b04f-ab78387c46e7', '5c83c1b8-82d3-412b-a0ea-2f55c58a59b4', 'good'),
(445, '18601418-a64f-41be-b04f-ab78387c46e7', 'a0686740-bb4b-4169-a30b-0d27cafc5444', 'good'),
(446, '18601418-a64f-41be-b04f-ab78387c46e7', '284845ba-cb4f-45d4-a051-20995d7cdb6c', 'good'),
(447, '18601418-a64f-41be-b04f-ab78387c46e7', '9075a0e6-52a7-4dc6-938c-c2e9625f55c1', 'good'),
(448, '18601418-a64f-41be-b04f-ab78387c46e7', 'f9aff2b2-f47c-4c3f-af79-a987a165c160', 'good'),
(449, '18601418-a64f-41be-b04f-ab78387c46e7', 'd9bb93b8-f90e-4557-a7a4-c9c123492b0d', 'good'),
(450, '18601418-a64f-41be-b04f-ab78387c46e7', 'a793bde5-428a-41f7-9678-c9b20400088e', 'good'),
(451, '18601418-a64f-41be-b04f-ab78387c46e7', '442957c3-344a-47bf-91db-fde2e9ab3142', 'good'),
(452, '18601418-a64f-41be-b04f-ab78387c46e7', '6ebcfd2b-5d04-4b5b-a493-09484323f50a', 'good'),
(453, '18601418-a64f-41be-b04f-ab78387c46e7', '1f4966ee-3ce2-40c5-9ea8-6f88b8a74546', 'good'),
(454, '18601418-a64f-41be-b04f-ab78387c46e7', '8f7b894d-f6c8-4754-a95d-0d567e3b0b44', 'good'),
(455, '18601418-a64f-41be-b04f-ab78387c46e7', '1fe4ebf4-9e3c-4ef7-9a78-e55ece0c49c0', 'normal'),
(456, '18601418-a64f-41be-b04f-ab78387c46e7', '007f9b19-5d90-43ca-93ae-be6ba8bb5731', 'normal'),
(457, '18601418-a64f-41be-b04f-ab78387c46e7', 'a9f7f48a-d662-4ff6-a434-9ea5eff1a54b', 'normal'),
(458, '18601418-a64f-41be-b04f-ab78387c46e7', 'f621585a-3e99-44ee-833c-e04adc291a3d', 'normal'),
(459, '18601418-a64f-41be-b04f-ab78387c46e7', '605e682f-e8d1-4dc3-9612-87435c4efdf3', 'normal'),
(460, '18601418-a64f-41be-b04f-ab78387c46e7', '3729fd29-95f0-48a9-9994-5fb395013cc8', 'normal'),
(461, '18601418-a64f-41be-b04f-ab78387c46e7', 'a8714ef5-d03f-4bca-b83c-db05e756927f', 'normal'),
(462, '18601418-a64f-41be-b04f-ab78387c46e7', '4d59530d-6e0d-42ed-8ab8-1e11d9995416', 'normal'),
(463, '18601418-a64f-41be-b04f-ab78387c46e7', '6ff45324-801c-4b10-a775-496735efdcd5', 'normal'),
(464, '18601418-a64f-41be-b04f-ab78387c46e7', '4e03423f-e99b-4e7f-bfb5-462daa925f14', 'normal'),
(465, '18601418-a64f-41be-b04f-ab78387c46e7', '092aa462-4130-4600-8e52-655d939828fd', 'normal'),
(466, '18601418-a64f-41be-b04f-ab78387c46e7', '95ea4fea-6e40-4a1d-bf59-259380c6aba6', 'normal'),
(467, '18601418-a64f-41be-b04f-ab78387c46e7', '36f8ec56-65d9-42fa-8cb7-0c6eb86b7a4b', 'normal'),
(468, '18601418-a64f-41be-b04f-ab78387c46e7', 'fbd00cb5-1449-4810-93a0-38658c11dea9', 'normal'),
(469, '18601418-a64f-41be-b04f-ab78387c46e7', '0bbb046a-3675-458f-957f-fc7ae5a6ad61', 'normal'),
(470, '18601418-a64f-41be-b04f-ab78387c46e7', 'a8661bbf-b130-4a6d-bd3e-4a1998118657', 'normal'),
(471, '18601418-a64f-41be-b04f-ab78387c46e7', 'c94a3326-4234-4a6d-a6cc-fedde8414920', 'bad'),
(472, '18601418-a64f-41be-b04f-ab78387c46e7', '009f673d-c6f3-452b-a24c-e47747c71c95', 'bad'),
(473, '18601418-a64f-41be-b04f-ab78387c46e7', 'f1b7350f-6333-4027-b971-487aea85304c', 'bad'),
(474, '18601418-a64f-41be-b04f-ab78387c46e7', '03929ac0-ae71-43c0-8b83-bb145707e0f1', 'bad'),
(475, '18601418-a64f-41be-b04f-ab78387c46e7', 'a67a7a97-ea2f-4653-a3dd-2c5cfa6c0e32', 'bad'),
(476, '18601418-a64f-41be-b04f-ab78387c46e7', 'af09ecec-e136-4f94-8b2f-2f4d32eaf54e', 'bad'),
(477, '18601418-a64f-41be-b04f-ab78387c46e7', '296e2c98-44ca-4676-8428-5ddf38ca866d', 'bad'),
(478, '18601418-a64f-41be-b04f-ab78387c46e7', 'c4b255d7-b6e3-4874-b4f9-2ab5146a4a92', 'bad'),
(479, '18601418-a64f-41be-b04f-ab78387c46e7', 'd6f8f24f-c894-4049-a105-acc63786ea0d', 'bad'),
(480, '18601418-a64f-41be-b04f-ab78387c46e7', 'e2d3022b-df82-4872-8845-89706c14ae77', 'bad'),
(481, '18601418-a64f-41be-b04f-ab78387c46e7', '252ed725-7932-469b-91a5-c08d7045e2e3', 'bad'),
(482, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '8c47ed7f-a27a-4abd-b33c-99530017224d', 'good'),
(483, '07027b7c-65e7-4b15-b534-74cbb6ced5de', 'a472db24-7634-48ce-bb75-18eb45c03057', 'good'),
(484, '07027b7c-65e7-4b15-b534-74cbb6ced5de', 'cbe0b4ef-32cc-4137-a865-d27437a38f8f', 'good'),
(485, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '9903d127-3f40-4b2a-bf57-87a82d481224', 'good'),
(486, '07027b7c-65e7-4b15-b534-74cbb6ced5de', 'c223d0dd-6e54-46bd-bcba-226ae9f7ef54', 'good'),
(487, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '4fb3f0cd-5b38-4bf3-95b4-18198f774e40', 'good'),
(488, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '66bdb269-1520-450c-a9ca-1461cf94fc31', 'good'),
(489, '07027b7c-65e7-4b15-b534-74cbb6ced5de', 'cf35313d-0cdf-428c-a1eb-77c63e1d8e71', 'good'),
(490, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '80f02910-322f-4ee0-8cd7-a86774f0d38e', 'good'),
(491, '07027b7c-65e7-4b15-b534-74cbb6ced5de', 'bb234d21-87df-446d-ab99-eb52d8796b7e', 'good'),
(492, '07027b7c-65e7-4b15-b534-74cbb6ced5de', 'd9d9d2e6-ea62-487b-a3e8-6dd4dcfce395', 'good'),
(493, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '5c83c1b8-82d3-412b-a0ea-2f55c58a59b4', 'good'),
(494, '07027b7c-65e7-4b15-b534-74cbb6ced5de', 'a0686740-bb4b-4169-a30b-0d27cafc5444', 'good'),
(495, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '284845ba-cb4f-45d4-a051-20995d7cdb6c', 'good'),
(496, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '9075a0e6-52a7-4dc6-938c-c2e9625f55c1', 'good'),
(497, '07027b7c-65e7-4b15-b534-74cbb6ced5de', 'f9aff2b2-f47c-4c3f-af79-a987a165c160', 'good'),
(498, '07027b7c-65e7-4b15-b534-74cbb6ced5de', 'd9bb93b8-f90e-4557-a7a4-c9c123492b0d', 'good'),
(499, '07027b7c-65e7-4b15-b534-74cbb6ced5de', 'a793bde5-428a-41f7-9678-c9b20400088e', 'good'),
(500, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '442957c3-344a-47bf-91db-fde2e9ab3142', 'good'),
(501, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '6ebcfd2b-5d04-4b5b-a493-09484323f50a', 'good'),
(502, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '1f4966ee-3ce2-40c5-9ea8-6f88b8a74546', 'good'),
(503, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '8f7b894d-f6c8-4754-a95d-0d567e3b0b44', 'good'),
(504, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '1fe4ebf4-9e3c-4ef7-9a78-e55ece0c49c0', 'normal'),
(505, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '007f9b19-5d90-43ca-93ae-be6ba8bb5731', 'normal'),
(506, '07027b7c-65e7-4b15-b534-74cbb6ced5de', 'a9f7f48a-d662-4ff6-a434-9ea5eff1a54b', 'normal'),
(507, '07027b7c-65e7-4b15-b534-74cbb6ced5de', 'f621585a-3e99-44ee-833c-e04adc291a3d', 'normal'),
(508, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '605e682f-e8d1-4dc3-9612-87435c4efdf3', 'normal'),
(509, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '3729fd29-95f0-48a9-9994-5fb395013cc8', 'normal'),
(510, '07027b7c-65e7-4b15-b534-74cbb6ced5de', 'a8714ef5-d03f-4bca-b83c-db05e756927f', 'normal'),
(511, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '4d59530d-6e0d-42ed-8ab8-1e11d9995416', 'normal'),
(512, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '6ff45324-801c-4b10-a775-496735efdcd5', 'normal'),
(513, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '4e03423f-e99b-4e7f-bfb5-462daa925f14', 'normal'),
(514, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '092aa462-4130-4600-8e52-655d939828fd', 'normal'),
(515, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '95ea4fea-6e40-4a1d-bf59-259380c6aba6', 'normal'),
(516, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '36f8ec56-65d9-42fa-8cb7-0c6eb86b7a4b', 'normal'),
(517, '07027b7c-65e7-4b15-b534-74cbb6ced5de', 'fbd00cb5-1449-4810-93a0-38658c11dea9', 'normal'),
(518, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '0bbb046a-3675-458f-957f-fc7ae5a6ad61', 'normal'),
(519, '07027b7c-65e7-4b15-b534-74cbb6ced5de', 'a8661bbf-b130-4a6d-bd3e-4a1998118657', 'normal'),
(520, '07027b7c-65e7-4b15-b534-74cbb6ced5de', 'c94a3326-4234-4a6d-a6cc-fedde8414920', 'bad'),
(521, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '009f673d-c6f3-452b-a24c-e47747c71c95', 'bad'),
(522, '07027b7c-65e7-4b15-b534-74cbb6ced5de', 'f1b7350f-6333-4027-b971-487aea85304c', 'bad'),
(523, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '03929ac0-ae71-43c0-8b83-bb145707e0f1', 'bad'),
(524, '07027b7c-65e7-4b15-b534-74cbb6ced5de', 'a67a7a97-ea2f-4653-a3dd-2c5cfa6c0e32', 'bad'),
(525, '07027b7c-65e7-4b15-b534-74cbb6ced5de', 'af09ecec-e136-4f94-8b2f-2f4d32eaf54e', 'bad'),
(526, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '296e2c98-44ca-4676-8428-5ddf38ca866d', 'bad'),
(527, '07027b7c-65e7-4b15-b534-74cbb6ced5de', 'c4b255d7-b6e3-4874-b4f9-2ab5146a4a92', 'bad'),
(528, '07027b7c-65e7-4b15-b534-74cbb6ced5de', 'd6f8f24f-c894-4049-a105-acc63786ea0d', 'bad'),
(529, '07027b7c-65e7-4b15-b534-74cbb6ced5de', 'e2d3022b-df82-4872-8845-89706c14ae77', 'bad'),
(530, '07027b7c-65e7-4b15-b534-74cbb6ced5de', '252ed725-7932-469b-91a5-c08d7045e2e3', 'bad'),
(531, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '8c47ed7f-a27a-4abd-b33c-99530017224d', 'good'),
(532, 'e41e3f74-4c57-408b-862e-83e4bbc317db', 'a472db24-7634-48ce-bb75-18eb45c03057', 'good'),
(533, 'e41e3f74-4c57-408b-862e-83e4bbc317db', 'cbe0b4ef-32cc-4137-a865-d27437a38f8f', 'good'),
(534, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '9903d127-3f40-4b2a-bf57-87a82d481224', 'good'),
(535, 'e41e3f74-4c57-408b-862e-83e4bbc317db', 'c223d0dd-6e54-46bd-bcba-226ae9f7ef54', 'good'),
(536, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '4fb3f0cd-5b38-4bf3-95b4-18198f774e40', 'good'),
(537, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '66bdb269-1520-450c-a9ca-1461cf94fc31', 'good'),
(538, 'e41e3f74-4c57-408b-862e-83e4bbc317db', 'cf35313d-0cdf-428c-a1eb-77c63e1d8e71', 'good'),
(539, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '80f02910-322f-4ee0-8cd7-a86774f0d38e', 'good'),
(540, 'e41e3f74-4c57-408b-862e-83e4bbc317db', 'bb234d21-87df-446d-ab99-eb52d8796b7e', 'good'),
(541, 'e41e3f74-4c57-408b-862e-83e4bbc317db', 'd9d9d2e6-ea62-487b-a3e8-6dd4dcfce395', 'good'),
(542, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '5c83c1b8-82d3-412b-a0ea-2f55c58a59b4', 'good'),
(543, 'e41e3f74-4c57-408b-862e-83e4bbc317db', 'a0686740-bb4b-4169-a30b-0d27cafc5444', 'good'),
(544, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '284845ba-cb4f-45d4-a051-20995d7cdb6c', 'good'),
(545, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '9075a0e6-52a7-4dc6-938c-c2e9625f55c1', 'good'),
(546, 'e41e3f74-4c57-408b-862e-83e4bbc317db', 'f9aff2b2-f47c-4c3f-af79-a987a165c160', 'good'),
(547, 'e41e3f74-4c57-408b-862e-83e4bbc317db', 'd9bb93b8-f90e-4557-a7a4-c9c123492b0d', 'good'),
(548, 'e41e3f74-4c57-408b-862e-83e4bbc317db', 'a793bde5-428a-41f7-9678-c9b20400088e', 'good'),
(549, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '442957c3-344a-47bf-91db-fde2e9ab3142', 'good'),
(550, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '6ebcfd2b-5d04-4b5b-a493-09484323f50a', 'good'),
(551, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '1f4966ee-3ce2-40c5-9ea8-6f88b8a74546', 'good'),
(552, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '8f7b894d-f6c8-4754-a95d-0d567e3b0b44', 'good'),
(553, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '1fe4ebf4-9e3c-4ef7-9a78-e55ece0c49c0', 'normal'),
(554, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '007f9b19-5d90-43ca-93ae-be6ba8bb5731', 'normal'),
(555, 'e41e3f74-4c57-408b-862e-83e4bbc317db', 'a9f7f48a-d662-4ff6-a434-9ea5eff1a54b', 'normal'),
(556, 'e41e3f74-4c57-408b-862e-83e4bbc317db', 'f621585a-3e99-44ee-833c-e04adc291a3d', 'normal'),
(557, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '605e682f-e8d1-4dc3-9612-87435c4efdf3', 'normal'),
(558, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '3729fd29-95f0-48a9-9994-5fb395013cc8', 'normal'),
(559, 'e41e3f74-4c57-408b-862e-83e4bbc317db', 'a8714ef5-d03f-4bca-b83c-db05e756927f', 'normal'),
(560, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '4d59530d-6e0d-42ed-8ab8-1e11d9995416', 'normal'),
(561, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '6ff45324-801c-4b10-a775-496735efdcd5', 'normal'),
(562, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '4e03423f-e99b-4e7f-bfb5-462daa925f14', 'normal'),
(563, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '092aa462-4130-4600-8e52-655d939828fd', 'normal'),
(564, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '95ea4fea-6e40-4a1d-bf59-259380c6aba6', 'normal'),
(565, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '36f8ec56-65d9-42fa-8cb7-0c6eb86b7a4b', 'normal'),
(566, 'e41e3f74-4c57-408b-862e-83e4bbc317db', 'fbd00cb5-1449-4810-93a0-38658c11dea9', 'normal'),
(567, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '0bbb046a-3675-458f-957f-fc7ae5a6ad61', 'normal'),
(568, 'e41e3f74-4c57-408b-862e-83e4bbc317db', 'a8661bbf-b130-4a6d-bd3e-4a1998118657', 'normal'),
(569, 'e41e3f74-4c57-408b-862e-83e4bbc317db', 'c94a3326-4234-4a6d-a6cc-fedde8414920', 'bad'),
(570, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '009f673d-c6f3-452b-a24c-e47747c71c95', 'bad'),
(571, 'e41e3f74-4c57-408b-862e-83e4bbc317db', 'f1b7350f-6333-4027-b971-487aea85304c', 'bad'),
(572, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '03929ac0-ae71-43c0-8b83-bb145707e0f1', 'bad'),
(573, 'e41e3f74-4c57-408b-862e-83e4bbc317db', 'a67a7a97-ea2f-4653-a3dd-2c5cfa6c0e32', 'bad'),
(574, 'e41e3f74-4c57-408b-862e-83e4bbc317db', 'af09ecec-e136-4f94-8b2f-2f4d32eaf54e', 'bad'),
(575, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '296e2c98-44ca-4676-8428-5ddf38ca866d', 'bad'),
(576, 'e41e3f74-4c57-408b-862e-83e4bbc317db', 'c4b255d7-b6e3-4874-b4f9-2ab5146a4a92', 'bad'),
(577, 'e41e3f74-4c57-408b-862e-83e4bbc317db', 'd6f8f24f-c894-4049-a105-acc63786ea0d', 'bad'),
(578, 'e41e3f74-4c57-408b-862e-83e4bbc317db', 'e2d3022b-df82-4872-8845-89706c14ae77', 'bad'),
(579, 'e41e3f74-4c57-408b-862e-83e4bbc317db', '252ed725-7932-469b-91a5-c08d7045e2e3', 'bad'),
(580, '5cc2cb37-1b65-446b-be33-0c78554abf8d', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'good'),
(581, '5cc2cb37-1b65-446b-be33-0c78554abf8d', '469eb040-2fcc-4a2c-8320-a3f3d5098fc9', 'good'),
(582, '5cc2cb37-1b65-446b-be33-0c78554abf8d', '6f2f186e-90f6-4582-b0eb-868c648b3f4e', 'good'),
(583, '5cc2cb37-1b65-446b-be33-0c78554abf8d', '1a669a92-ffe0-4c1e-9ac1-a6a35deb73b6', 'good'),
(584, '5cc2cb37-1b65-446b-be33-0c78554abf8d', '2ac7f079-a489-42b7-b0eb-eb540eac90aa', 'good'),
(585, '5cc2cb37-1b65-446b-be33-0c78554abf8d', 'dbe5ded6-74e2-45bc-aa88-61db3c8dcc62', 'normal'),
(586, '55b31de4-3f54-484f-940c-21f50ccfb2ad', 'dbe5ded6-74e2-45bc-aa88-61db3c8dcc62', 'normal'),
(587, '3eb6b2cc-1200-480c-bd81-ca089bda7258', 'dbe5ded6-74e2-45bc-aa88-61db3c8dcc62', 'normal'),
(588, '9706af85-a2a6-4b53-a449-bdd9bf91e06d', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'good'),
(589, '9706af85-a2a6-4b53-a449-bdd9bf91e06d', '469eb040-2fcc-4a2c-8320-a3f3d5098fc9', 'good'),
(590, '9706af85-a2a6-4b53-a449-bdd9bf91e06d', '6f2f186e-90f6-4582-b0eb-868c648b3f4e', 'good'),
(591, '9706af85-a2a6-4b53-a449-bdd9bf91e06d', '1a669a92-ffe0-4c1e-9ac1-a6a35deb73b6', 'good'),
(592, '9706af85-a2a6-4b53-a449-bdd9bf91e06d', '2ac7f079-a489-42b7-b0eb-eb540eac90aa', 'good'),
(593, '9706af85-a2a6-4b53-a449-bdd9bf91e06d', 'dbe5ded6-74e2-45bc-aa88-61db3c8dcc62', 'normal'),
(594, 'd865eee8-2ff6-4c9e-89ce-c5da3847cdc0', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'good'),
(595, 'd865eee8-2ff6-4c9e-89ce-c5da3847cdc0', '469eb040-2fcc-4a2c-8320-a3f3d5098fc9', 'good'),
(596, 'd865eee8-2ff6-4c9e-89ce-c5da3847cdc0', '6f2f186e-90f6-4582-b0eb-868c648b3f4e', 'good'),
(597, 'd865eee8-2ff6-4c9e-89ce-c5da3847cdc0', '1a669a92-ffe0-4c1e-9ac1-a6a35deb73b6', 'good'),
(598, 'd865eee8-2ff6-4c9e-89ce-c5da3847cdc0', '2ac7f079-a489-42b7-b0eb-eb540eac90aa', 'good'),
(599, 'd865eee8-2ff6-4c9e-89ce-c5da3847cdc0', 'dbe5ded6-74e2-45bc-aa88-61db3c8dcc62', 'normal'),
(600, '8ebee1d8-e97a-4342-b50f-bee59afad29c', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'good'),
(601, '8ebee1d8-e97a-4342-b50f-bee59afad29c', '469eb040-2fcc-4a2c-8320-a3f3d5098fc9', 'good'),
(602, '8ebee1d8-e97a-4342-b50f-bee59afad29c', '6f2f186e-90f6-4582-b0eb-868c648b3f4e', 'good'),
(603, '8ebee1d8-e97a-4342-b50f-bee59afad29c', '1a669a92-ffe0-4c1e-9ac1-a6a35deb73b6', 'good'),
(604, '8ebee1d8-e97a-4342-b50f-bee59afad29c', '2ac7f079-a489-42b7-b0eb-eb540eac90aa', 'good'),
(605, '8ebee1d8-e97a-4342-b50f-bee59afad29c', 'dbe5ded6-74e2-45bc-aa88-61db3c8dcc62', 'normal'),
(606, '330578f1-e609-4dfb-b3c1-81800dd1e390', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'good'),
(607, '330578f1-e609-4dfb-b3c1-81800dd1e390', '469eb040-2fcc-4a2c-8320-a3f3d5098fc9', 'good'),
(608, '330578f1-e609-4dfb-b3c1-81800dd1e390', '6f2f186e-90f6-4582-b0eb-868c648b3f4e', 'good'),
(609, '330578f1-e609-4dfb-b3c1-81800dd1e390', '1a669a92-ffe0-4c1e-9ac1-a6a35deb73b6', 'good'),
(610, '330578f1-e609-4dfb-b3c1-81800dd1e390', '2ac7f079-a489-42b7-b0eb-eb540eac90aa', 'good'),
(611, '330578f1-e609-4dfb-b3c1-81800dd1e390', 'dbe5ded6-74e2-45bc-aa88-61db3c8dcc62', 'normal'),
(612, 'ddc4edff-5d35-4a5d-b62d-f89d3c80e8f2', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'good'),
(613, 'ddc4edff-5d35-4a5d-b62d-f89d3c80e8f2', '469eb040-2fcc-4a2c-8320-a3f3d5098fc9', 'good'),
(614, 'ddc4edff-5d35-4a5d-b62d-f89d3c80e8f2', '6f2f186e-90f6-4582-b0eb-868c648b3f4e', 'good'),
(615, 'ddc4edff-5d35-4a5d-b62d-f89d3c80e8f2', '1a669a92-ffe0-4c1e-9ac1-a6a35deb73b6', 'good'),
(616, 'ddc4edff-5d35-4a5d-b62d-f89d3c80e8f2', '2ac7f079-a489-42b7-b0eb-eb540eac90aa', 'good'),
(617, 'ddc4edff-5d35-4a5d-b62d-f89d3c80e8f2', 'dbe5ded6-74e2-45bc-aa88-61db3c8dcc62', 'normal'),
(618, 'ab6d0a93-d708-48e3-9f30-e4b591be62b7', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'good'),
(619, 'ab6d0a93-d708-48e3-9f30-e4b591be62b7', '469eb040-2fcc-4a2c-8320-a3f3d5098fc9', 'good'),
(620, 'ab6d0a93-d708-48e3-9f30-e4b591be62b7', '6f2f186e-90f6-4582-b0eb-868c648b3f4e', 'good'),
(621, 'ab6d0a93-d708-48e3-9f30-e4b591be62b7', '1a669a92-ffe0-4c1e-9ac1-a6a35deb73b6', 'good'),
(622, 'ab6d0a93-d708-48e3-9f30-e4b591be62b7', '2ac7f079-a489-42b7-b0eb-eb540eac90aa', 'good'),
(623, 'ab6d0a93-d708-48e3-9f30-e4b591be62b7', 'dbe5ded6-74e2-45bc-aa88-61db3c8dcc62', 'normal'),
(624, '2e433cf6-0ad1-4285-84c7-65635b26258c', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'good'),
(625, '2e433cf6-0ad1-4285-84c7-65635b26258c', '469eb040-2fcc-4a2c-8320-a3f3d5098fc9', 'good'),
(626, '2e433cf6-0ad1-4285-84c7-65635b26258c', '6f2f186e-90f6-4582-b0eb-868c648b3f4e', 'good'),
(627, '2e433cf6-0ad1-4285-84c7-65635b26258c', '1a669a92-ffe0-4c1e-9ac1-a6a35deb73b6', 'good'),
(628, '2e433cf6-0ad1-4285-84c7-65635b26258c', '2ac7f079-a489-42b7-b0eb-eb540eac90aa', 'good'),
(629, '2e433cf6-0ad1-4285-84c7-65635b26258c', 'dbe5ded6-74e2-45bc-aa88-61db3c8dcc62', 'normal'),
(630, 'aed20c3f-bd50-40bb-818f-d118a27491ea', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'good'),
(631, 'aed20c3f-bd50-40bb-818f-d118a27491ea', '469eb040-2fcc-4a2c-8320-a3f3d5098fc9', 'good'),
(632, 'aed20c3f-bd50-40bb-818f-d118a27491ea', '6f2f186e-90f6-4582-b0eb-868c648b3f4e', 'good'),
(633, 'aed20c3f-bd50-40bb-818f-d118a27491ea', '1a669a92-ffe0-4c1e-9ac1-a6a35deb73b6', 'good'),
(634, 'aed20c3f-bd50-40bb-818f-d118a27491ea', '2ac7f079-a489-42b7-b0eb-eb540eac90aa', 'good'),
(635, 'aed20c3f-bd50-40bb-818f-d118a27491ea', 'dbe5ded6-74e2-45bc-aa88-61db3c8dcc62', 'normal'),
(636, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '6bfb1624-fdac-4158-a9a5-d1f621a6c16d', 'good'),
(637, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'c5961c2d-b197-46b9-8651-43be44efcb9b', 'good'),
(638, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '79f89078-30f4-4ce7-912b-926085c77b4c', 'good'),
(639, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '11687f24-4188-4f88-a2d5-25fb5ca7b571', 'good'),
(640, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '30032c70-acbc-4158-8556-94a35ab321f8', 'good'),
(641, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '2c92fcc1-ebeb-4877-8131-35209e2b6f6b', 'good'),
(642, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '9f2c476b-d477-47aa-9e93-1fab620f5fbc', 'good'),
(643, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '2e89727d-ef71-4f98-9fa0-24c751f96062', 'good'),
(644, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'c5b455a2-e266-4ac7-b5e8-7fc90fa148f6', 'good'),
(645, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '6cebc7a9-6a4e-4025-ac9a-b981a54a5ed4', 'good'),
(646, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '22f8c951-ab55-4b6e-b349-68a0b1b44f09', 'good'),
(647, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '4e0fb432-71fe-471d-a6a9-f2a123132ec4', 'good'),
(648, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'ccd5f360-bd8e-4eb7-9e52-9db02197b759', 'good'),
(649, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'a1a905c0-eb87-4d81-8bb1-707eb99b2047', 'good'),
(650, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '32117151-0f3b-4d68-be51-fde2ac8e8042', 'good'),
(651, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'bdd16a0f-0d4a-4edd-86bd-fe9731d226e1', 'good'),
(652, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'f43b5cfc-027b-401d-b3c2-b2beda2371ea', 'good'),
(653, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '80de03d1-66fb-4ff3-87ce-50829a09b760', 'good'),
(654, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'e464b0ea-fc54-456e-affd-c56d89aaa616', 'good'),
(655, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'e49e2777-62a7-4afb-96da-657a71bce7b5', 'good'),
(656, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '17d50158-b167-4770-8d10-f97382abaed9', 'good'),
(657, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '30a58d24-c68b-4314-9efa-a136be66dfbf', 'good'),
(658, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'a881f4aa-f0e3-4619-a8ed-84c12872f6d6', 'good'),
(659, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'f47772dd-97a9-442f-a015-c9ae275b212a', 'good'),
(660, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '0fa307b7-00fb-4d91-997f-35f101d1ac67', 'good'),
(661, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '653c4fd3-4711-47db-ab19-d06e364d250b', 'good'),
(662, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '347d1aee-b24c-4e7d-b7c4-10713ef441d0', 'good'),
(663, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '01cd16cc-e347-4664-a320-8bcb1cb37680', 'good'),
(664, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'f719071d-a1d5-4a4e-bcbe-e67d411cd4a5', 'good'),
(665, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'cca02a4b-f9cc-4396-b7a7-4a6acc909d0b', 'good'),
(666, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '2d6a57e9-5c21-434d-965c-84e441c9b589', 'good'),
(667, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '3e00a2c6-da4f-4969-a130-ec1eeaed1bfc', 'good'),
(668, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '4131e792-5c91-4f75-b525-df70b945b168', 'good'),
(669, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'f42a2df7-1f26-4765-87f8-1da9e08562ad', 'normal'),
(670, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '497187b1-1d24-482b-8f9f-f165be335c20', 'normal'),
(671, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '5b6b5f73-88b2-4a82-989b-09faa442a9b6', 'normal'),
(672, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '5f70941b-a363-476a-aaa4-283a228f700c', 'normal'),
(673, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '349c467e-309b-4284-8243-e2231dc5eb05', 'normal'),
(674, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '1dc1f214-d2a9-494e-8690-a7c958880afe', 'normal'),
(675, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'fa6763a6-8f9c-40a0-aef7-9cd26de0ae53', 'normal'),
(676, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '5863dd1b-6fd2-421e-818e-3f4b9c75b5e5', 'normal'),
(677, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'b0b408e1-e50f-4243-9ba8-d6e9037e41f3', 'normal'),
(678, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'd796ec11-ea9c-445d-9e05-6d4af2890808', 'normal'),
(679, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'eee58427-fddd-4cd9-af6c-5b2497e13181', 'normal'),
(680, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '4a7dcf94-5b1b-4950-802d-b4e653bd1187', 'normal'),
(681, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '44c168b3-5854-43db-9c68-49c5e9795967', 'normal'),
(682, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '71717bae-6ab8-49c6-acd9-f7886f950f02', 'normal'),
(683, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'c11ca94a-0f7b-4d96-b10d-3d83c6a1fe5f', 'normal'),
(684, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '015e75c4-7a49-480f-b2f0-cadfaeb2f899', 'normal'),
(685, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '8061a493-277b-4869-b853-c62e37fa90f6', 'normal'),
(686, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '5168c9e3-495f-401a-a45b-13ac2050d915', 'normal'),
(687, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'f689d4a5-b29e-40bc-a477-878d3e5275e7', 'normal'),
(688, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '70b1b14f-b3cc-421e-905e-b8dab72f1cee', 'normal'),
(689, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'b10591c9-f395-48fe-9aee-2fddae102f06', 'normal'),
(690, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '8eedc25c-b5cc-45da-953e-f0fdfeb64bd3', 'normal'),
(691, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'd6e5eebb-4ade-4335-9730-f492bb8bd757', 'normal'),
(692, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '0ab5b3ef-bcb0-404d-8492-4acb514811d5', 'normal'),
(693, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '450bbcd2-275a-4018-9d0f-3255f988eacc', 'normal'),
(694, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '2b0ff6a0-ea2c-4897-9f1b-876ed8a8c473', 'normal'),
(695, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'a065c461-04a8-4f0a-b844-c8905365da90', 'normal'),
(696, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '95a41292-bee0-4d8e-b8d8-9f4f0cc9c5d2', 'normal'),
(697, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '2ec7c8f9-e693-491e-81cb-5a59f5331110', 'normal'),
(698, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '6d21f87b-a8f3-4be9-913f-4ca24fcb05c4', 'normal'),
(699, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '03144090-a110-48c0-ac33-8cb65cd3cbb9', 'normal'),
(700, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '54eb2881-5025-4067-a668-f987adc56343', 'normal'),
(701, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '0084be1a-1c11-4c8e-a9a6-72aaf3a1df4c', 'normal'),
(702, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '0ff5cd08-3b3a-450a-b144-14955cc557b7', 'normal'),
(703, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '3f799330-992e-46b1-aa67-f425557cecfe', 'normal'),
(704, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'dde2a6db-920f-4544-9ebc-1095c2adc6c7', 'normal'),
(705, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'bad30f13-a3b6-45f8-b0c7-0f852aa8e42d', 'normal'),
(706, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'e5c53663-8ead-44ef-bcf0-42523173ff4c', 'normal'),
(707, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'f6b28411-fd15-4d03-a870-20ea2f2c21bc', 'bad'),
(708, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '9e15d5ca-6b15-4db3-b746-1ef6be503bc1', 'bad'),
(709, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '1db01631-a1e2-4bec-b286-a8554d2c67ff', 'bad'),
(710, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '46e2eff3-920e-46c4-bb50-0920d08df6f6', 'bad'),
(711, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'bee2541e-4561-4fc1-8855-d8037362da56', 'bad'),
(712, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '2ea2d44c-3256-4257-9345-88c8c95bd164', 'bad'),
(713, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '7223e5bb-129d-4741-9712-faed6d8caef7', 'bad'),
(714, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '46ce8153-5baa-488e-b31d-99532117d568', 'bad'),
(715, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', '6d58b894-bb45-4680-b782-e0c79d939e9f', 'bad'),
(716, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'b224bfdd-6f38-4c35-aee8-e26c0292dfd3', 'bad'),
(717, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'c681b4d1-3e00-482b-8167-88f7a68cf300', 'bad'),
(718, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'cfdc5623-3218-4330-a9a6-01bead38f625', 'bad'),
(719, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'fc13616b-cd64-4aa0-8cc0-aef3efd8ee22', 'bad'),
(720, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'c78e9386-7a8d-4849-a52e-1ee5a60bad13', 'bad'),
(721, '1b393f10-6b33-4d19-bf1f-ee5e9d3cb75e', 'd3b336ed-72bb-4eda-b46f-94f0763c00da', 'bad'),
(722, 'bfb5e644-8fce-4870-873c-4c21d540578f', '6bfb1624-fdac-4158-a9a5-d1f621a6c16d', 'good'),
(723, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'c5961c2d-b197-46b9-8651-43be44efcb9b', 'good'),
(724, 'bfb5e644-8fce-4870-873c-4c21d540578f', '79f89078-30f4-4ce7-912b-926085c77b4c', 'good'),
(725, 'bfb5e644-8fce-4870-873c-4c21d540578f', '11687f24-4188-4f88-a2d5-25fb5ca7b571', 'good'),
(726, 'bfb5e644-8fce-4870-873c-4c21d540578f', '30032c70-acbc-4158-8556-94a35ab321f8', 'good'),
(727, 'bfb5e644-8fce-4870-873c-4c21d540578f', '2c92fcc1-ebeb-4877-8131-35209e2b6f6b', 'good'),
(728, 'bfb5e644-8fce-4870-873c-4c21d540578f', '9f2c476b-d477-47aa-9e93-1fab620f5fbc', 'good'),
(729, 'bfb5e644-8fce-4870-873c-4c21d540578f', '2e89727d-ef71-4f98-9fa0-24c751f96062', 'good'),
(730, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'c5b455a2-e266-4ac7-b5e8-7fc90fa148f6', 'good'),
(731, 'bfb5e644-8fce-4870-873c-4c21d540578f', '6cebc7a9-6a4e-4025-ac9a-b981a54a5ed4', 'good'),
(732, 'bfb5e644-8fce-4870-873c-4c21d540578f', '22f8c951-ab55-4b6e-b349-68a0b1b44f09', 'good'),
(733, 'bfb5e644-8fce-4870-873c-4c21d540578f', '4e0fb432-71fe-471d-a6a9-f2a123132ec4', 'good'),
(734, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'ccd5f360-bd8e-4eb7-9e52-9db02197b759', 'good'),
(735, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'a1a905c0-eb87-4d81-8bb1-707eb99b2047', 'good'),
(736, 'bfb5e644-8fce-4870-873c-4c21d540578f', '32117151-0f3b-4d68-be51-fde2ac8e8042', 'good'),
(737, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'bdd16a0f-0d4a-4edd-86bd-fe9731d226e1', 'good'),
(738, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'f43b5cfc-027b-401d-b3c2-b2beda2371ea', 'good');
INSERT INTO `testresultdetail` (`TestResultDetailId`, `TestResultId`, `WordId`, `Score`) VALUES
(739, 'bfb5e644-8fce-4870-873c-4c21d540578f', '80de03d1-66fb-4ff3-87ce-50829a09b760', 'good'),
(740, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'e464b0ea-fc54-456e-affd-c56d89aaa616', 'good'),
(741, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'e49e2777-62a7-4afb-96da-657a71bce7b5', 'good'),
(742, 'bfb5e644-8fce-4870-873c-4c21d540578f', '17d50158-b167-4770-8d10-f97382abaed9', 'good'),
(743, 'bfb5e644-8fce-4870-873c-4c21d540578f', '30a58d24-c68b-4314-9efa-a136be66dfbf', 'good'),
(744, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'a881f4aa-f0e3-4619-a8ed-84c12872f6d6', 'good'),
(745, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'f47772dd-97a9-442f-a015-c9ae275b212a', 'good'),
(746, 'bfb5e644-8fce-4870-873c-4c21d540578f', '0fa307b7-00fb-4d91-997f-35f101d1ac67', 'good'),
(747, 'bfb5e644-8fce-4870-873c-4c21d540578f', '653c4fd3-4711-47db-ab19-d06e364d250b', 'good'),
(748, 'bfb5e644-8fce-4870-873c-4c21d540578f', '347d1aee-b24c-4e7d-b7c4-10713ef441d0', 'good'),
(749, 'bfb5e644-8fce-4870-873c-4c21d540578f', '01cd16cc-e347-4664-a320-8bcb1cb37680', 'good'),
(750, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'f719071d-a1d5-4a4e-bcbe-e67d411cd4a5', 'good'),
(751, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'cca02a4b-f9cc-4396-b7a7-4a6acc909d0b', 'good'),
(752, 'bfb5e644-8fce-4870-873c-4c21d540578f', '2d6a57e9-5c21-434d-965c-84e441c9b589', 'good'),
(753, 'bfb5e644-8fce-4870-873c-4c21d540578f', '3e00a2c6-da4f-4969-a130-ec1eeaed1bfc', 'good'),
(754, 'bfb5e644-8fce-4870-873c-4c21d540578f', '4131e792-5c91-4f75-b525-df70b945b168', 'good'),
(755, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'f42a2df7-1f26-4765-87f8-1da9e08562ad', 'normal'),
(756, 'bfb5e644-8fce-4870-873c-4c21d540578f', '497187b1-1d24-482b-8f9f-f165be335c20', 'normal'),
(757, 'bfb5e644-8fce-4870-873c-4c21d540578f', '5b6b5f73-88b2-4a82-989b-09faa442a9b6', 'normal'),
(758, 'bfb5e644-8fce-4870-873c-4c21d540578f', '5f70941b-a363-476a-aaa4-283a228f700c', 'normal'),
(759, 'bfb5e644-8fce-4870-873c-4c21d540578f', '349c467e-309b-4284-8243-e2231dc5eb05', 'normal'),
(760, 'bfb5e644-8fce-4870-873c-4c21d540578f', '1dc1f214-d2a9-494e-8690-a7c958880afe', 'normal'),
(761, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'fa6763a6-8f9c-40a0-aef7-9cd26de0ae53', 'normal'),
(762, 'bfb5e644-8fce-4870-873c-4c21d540578f', '5863dd1b-6fd2-421e-818e-3f4b9c75b5e5', 'normal'),
(763, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'b0b408e1-e50f-4243-9ba8-d6e9037e41f3', 'normal'),
(764, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'd796ec11-ea9c-445d-9e05-6d4af2890808', 'normal'),
(765, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'eee58427-fddd-4cd9-af6c-5b2497e13181', 'normal'),
(766, 'bfb5e644-8fce-4870-873c-4c21d540578f', '4a7dcf94-5b1b-4950-802d-b4e653bd1187', 'normal'),
(767, 'bfb5e644-8fce-4870-873c-4c21d540578f', '44c168b3-5854-43db-9c68-49c5e9795967', 'normal'),
(768, 'bfb5e644-8fce-4870-873c-4c21d540578f', '71717bae-6ab8-49c6-acd9-f7886f950f02', 'normal'),
(769, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'c11ca94a-0f7b-4d96-b10d-3d83c6a1fe5f', 'normal'),
(770, 'bfb5e644-8fce-4870-873c-4c21d540578f', '015e75c4-7a49-480f-b2f0-cadfaeb2f899', 'normal'),
(771, 'bfb5e644-8fce-4870-873c-4c21d540578f', '8061a493-277b-4869-b853-c62e37fa90f6', 'normal'),
(772, 'bfb5e644-8fce-4870-873c-4c21d540578f', '5168c9e3-495f-401a-a45b-13ac2050d915', 'normal'),
(773, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'f689d4a5-b29e-40bc-a477-878d3e5275e7', 'normal'),
(774, 'bfb5e644-8fce-4870-873c-4c21d540578f', '70b1b14f-b3cc-421e-905e-b8dab72f1cee', 'normal'),
(775, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'b10591c9-f395-48fe-9aee-2fddae102f06', 'normal'),
(776, 'bfb5e644-8fce-4870-873c-4c21d540578f', '8eedc25c-b5cc-45da-953e-f0fdfeb64bd3', 'normal'),
(777, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'd6e5eebb-4ade-4335-9730-f492bb8bd757', 'normal'),
(778, 'bfb5e644-8fce-4870-873c-4c21d540578f', '0ab5b3ef-bcb0-404d-8492-4acb514811d5', 'normal'),
(779, 'bfb5e644-8fce-4870-873c-4c21d540578f', '450bbcd2-275a-4018-9d0f-3255f988eacc', 'normal'),
(780, 'bfb5e644-8fce-4870-873c-4c21d540578f', '2b0ff6a0-ea2c-4897-9f1b-876ed8a8c473', 'normal'),
(781, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'a065c461-04a8-4f0a-b844-c8905365da90', 'normal'),
(782, 'bfb5e644-8fce-4870-873c-4c21d540578f', '95a41292-bee0-4d8e-b8d8-9f4f0cc9c5d2', 'normal'),
(783, 'bfb5e644-8fce-4870-873c-4c21d540578f', '2ec7c8f9-e693-491e-81cb-5a59f5331110', 'normal'),
(784, 'bfb5e644-8fce-4870-873c-4c21d540578f', '6d21f87b-a8f3-4be9-913f-4ca24fcb05c4', 'normal'),
(785, 'bfb5e644-8fce-4870-873c-4c21d540578f', '03144090-a110-48c0-ac33-8cb65cd3cbb9', 'normal'),
(786, 'bfb5e644-8fce-4870-873c-4c21d540578f', '54eb2881-5025-4067-a668-f987adc56343', 'normal'),
(787, 'bfb5e644-8fce-4870-873c-4c21d540578f', '0084be1a-1c11-4c8e-a9a6-72aaf3a1df4c', 'normal'),
(788, 'bfb5e644-8fce-4870-873c-4c21d540578f', '0ff5cd08-3b3a-450a-b144-14955cc557b7', 'normal'),
(789, 'bfb5e644-8fce-4870-873c-4c21d540578f', '3f799330-992e-46b1-aa67-f425557cecfe', 'normal'),
(790, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'dde2a6db-920f-4544-9ebc-1095c2adc6c7', 'normal'),
(791, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'bad30f13-a3b6-45f8-b0c7-0f852aa8e42d', 'normal'),
(792, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'e5c53663-8ead-44ef-bcf0-42523173ff4c', 'normal'),
(793, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'f6b28411-fd15-4d03-a870-20ea2f2c21bc', 'bad'),
(794, 'bfb5e644-8fce-4870-873c-4c21d540578f', '9e15d5ca-6b15-4db3-b746-1ef6be503bc1', 'bad'),
(795, 'bfb5e644-8fce-4870-873c-4c21d540578f', '1db01631-a1e2-4bec-b286-a8554d2c67ff', 'bad'),
(796, 'bfb5e644-8fce-4870-873c-4c21d540578f', '46e2eff3-920e-46c4-bb50-0920d08df6f6', 'bad'),
(797, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'bee2541e-4561-4fc1-8855-d8037362da56', 'bad'),
(798, 'bfb5e644-8fce-4870-873c-4c21d540578f', '2ea2d44c-3256-4257-9345-88c8c95bd164', 'bad'),
(799, 'bfb5e644-8fce-4870-873c-4c21d540578f', '7223e5bb-129d-4741-9712-faed6d8caef7', 'bad'),
(800, 'bfb5e644-8fce-4870-873c-4c21d540578f', '46ce8153-5baa-488e-b31d-99532117d568', 'bad'),
(801, 'bfb5e644-8fce-4870-873c-4c21d540578f', '6d58b894-bb45-4680-b782-e0c79d939e9f', 'bad'),
(802, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'b224bfdd-6f38-4c35-aee8-e26c0292dfd3', 'bad'),
(803, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'c681b4d1-3e00-482b-8167-88f7a68cf300', 'bad'),
(804, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'cfdc5623-3218-4330-a9a6-01bead38f625', 'bad'),
(805, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'fc13616b-cd64-4aa0-8cc0-aef3efd8ee22', 'bad'),
(806, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'c78e9386-7a8d-4849-a52e-1ee5a60bad13', 'bad'),
(807, 'bfb5e644-8fce-4870-873c-4c21d540578f', 'd3b336ed-72bb-4eda-b46f-94f0763c00da', 'bad'),
(808, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '6bfb1624-fdac-4158-a9a5-d1f621a6c16d', 'good'),
(809, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'c5961c2d-b197-46b9-8651-43be44efcb9b', 'good'),
(810, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '79f89078-30f4-4ce7-912b-926085c77b4c', 'good'),
(811, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '11687f24-4188-4f88-a2d5-25fb5ca7b571', 'good'),
(812, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '30032c70-acbc-4158-8556-94a35ab321f8', 'good'),
(813, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '2c92fcc1-ebeb-4877-8131-35209e2b6f6b', 'good'),
(814, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '9f2c476b-d477-47aa-9e93-1fab620f5fbc', 'good'),
(815, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '2e89727d-ef71-4f98-9fa0-24c751f96062', 'good'),
(816, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'c5b455a2-e266-4ac7-b5e8-7fc90fa148f6', 'good'),
(817, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '6cebc7a9-6a4e-4025-ac9a-b981a54a5ed4', 'good'),
(818, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '22f8c951-ab55-4b6e-b349-68a0b1b44f09', 'good'),
(819, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '4e0fb432-71fe-471d-a6a9-f2a123132ec4', 'good'),
(820, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'ccd5f360-bd8e-4eb7-9e52-9db02197b759', 'good'),
(821, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'a1a905c0-eb87-4d81-8bb1-707eb99b2047', 'good'),
(822, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '32117151-0f3b-4d68-be51-fde2ac8e8042', 'good'),
(823, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'bdd16a0f-0d4a-4edd-86bd-fe9731d226e1', 'good'),
(824, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'f43b5cfc-027b-401d-b3c2-b2beda2371ea', 'good'),
(825, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '80de03d1-66fb-4ff3-87ce-50829a09b760', 'good'),
(826, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'e464b0ea-fc54-456e-affd-c56d89aaa616', 'good'),
(827, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'e49e2777-62a7-4afb-96da-657a71bce7b5', 'good'),
(828, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '17d50158-b167-4770-8d10-f97382abaed9', 'good'),
(829, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '30a58d24-c68b-4314-9efa-a136be66dfbf', 'good'),
(830, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'a881f4aa-f0e3-4619-a8ed-84c12872f6d6', 'good'),
(831, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'f47772dd-97a9-442f-a015-c9ae275b212a', 'good'),
(832, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '0fa307b7-00fb-4d91-997f-35f101d1ac67', 'good'),
(833, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '653c4fd3-4711-47db-ab19-d06e364d250b', 'good'),
(834, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '347d1aee-b24c-4e7d-b7c4-10713ef441d0', 'good'),
(835, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '01cd16cc-e347-4664-a320-8bcb1cb37680', 'good'),
(836, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'f719071d-a1d5-4a4e-bcbe-e67d411cd4a5', 'good'),
(837, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'cca02a4b-f9cc-4396-b7a7-4a6acc909d0b', 'good'),
(838, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '2d6a57e9-5c21-434d-965c-84e441c9b589', 'good'),
(839, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '3e00a2c6-da4f-4969-a130-ec1eeaed1bfc', 'good'),
(840, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '4131e792-5c91-4f75-b525-df70b945b168', 'good'),
(841, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'f42a2df7-1f26-4765-87f8-1da9e08562ad', 'normal'),
(842, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '497187b1-1d24-482b-8f9f-f165be335c20', 'normal'),
(843, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '5b6b5f73-88b2-4a82-989b-09faa442a9b6', 'normal'),
(844, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '5f70941b-a363-476a-aaa4-283a228f700c', 'normal'),
(845, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '349c467e-309b-4284-8243-e2231dc5eb05', 'normal'),
(846, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '1dc1f214-d2a9-494e-8690-a7c958880afe', 'normal'),
(847, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'fa6763a6-8f9c-40a0-aef7-9cd26de0ae53', 'normal'),
(848, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '5863dd1b-6fd2-421e-818e-3f4b9c75b5e5', 'normal'),
(849, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'b0b408e1-e50f-4243-9ba8-d6e9037e41f3', 'normal'),
(850, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'd796ec11-ea9c-445d-9e05-6d4af2890808', 'normal'),
(851, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'eee58427-fddd-4cd9-af6c-5b2497e13181', 'normal'),
(852, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '4a7dcf94-5b1b-4950-802d-b4e653bd1187', 'normal'),
(853, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '44c168b3-5854-43db-9c68-49c5e9795967', 'normal'),
(854, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '71717bae-6ab8-49c6-acd9-f7886f950f02', 'normal'),
(855, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'c11ca94a-0f7b-4d96-b10d-3d83c6a1fe5f', 'normal'),
(856, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '015e75c4-7a49-480f-b2f0-cadfaeb2f899', 'normal'),
(857, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '8061a493-277b-4869-b853-c62e37fa90f6', 'normal'),
(858, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '5168c9e3-495f-401a-a45b-13ac2050d915', 'normal'),
(859, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'f689d4a5-b29e-40bc-a477-878d3e5275e7', 'normal'),
(860, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '70b1b14f-b3cc-421e-905e-b8dab72f1cee', 'normal'),
(861, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'b10591c9-f395-48fe-9aee-2fddae102f06', 'normal'),
(862, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '8eedc25c-b5cc-45da-953e-f0fdfeb64bd3', 'normal'),
(863, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'd6e5eebb-4ade-4335-9730-f492bb8bd757', 'normal'),
(864, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '0ab5b3ef-bcb0-404d-8492-4acb514811d5', 'normal'),
(865, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '450bbcd2-275a-4018-9d0f-3255f988eacc', 'normal'),
(866, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '2b0ff6a0-ea2c-4897-9f1b-876ed8a8c473', 'normal'),
(867, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'a065c461-04a8-4f0a-b844-c8905365da90', 'normal'),
(868, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '95a41292-bee0-4d8e-b8d8-9f4f0cc9c5d2', 'normal'),
(869, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '2ec7c8f9-e693-491e-81cb-5a59f5331110', 'normal'),
(870, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '6d21f87b-a8f3-4be9-913f-4ca24fcb05c4', 'normal'),
(871, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '03144090-a110-48c0-ac33-8cb65cd3cbb9', 'normal'),
(872, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '54eb2881-5025-4067-a668-f987adc56343', 'normal'),
(873, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '0084be1a-1c11-4c8e-a9a6-72aaf3a1df4c', 'normal'),
(874, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '0ff5cd08-3b3a-450a-b144-14955cc557b7', 'normal'),
(875, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '3f799330-992e-46b1-aa67-f425557cecfe', 'normal'),
(876, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'dde2a6db-920f-4544-9ebc-1095c2adc6c7', 'normal'),
(877, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'bad30f13-a3b6-45f8-b0c7-0f852aa8e42d', 'normal'),
(878, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'e5c53663-8ead-44ef-bcf0-42523173ff4c', 'normal'),
(879, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'f6b28411-fd15-4d03-a870-20ea2f2c21bc', 'bad'),
(880, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '9e15d5ca-6b15-4db3-b746-1ef6be503bc1', 'bad'),
(881, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '1db01631-a1e2-4bec-b286-a8554d2c67ff', 'bad'),
(882, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '46e2eff3-920e-46c4-bb50-0920d08df6f6', 'bad'),
(883, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'bee2541e-4561-4fc1-8855-d8037362da56', 'bad'),
(884, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '2ea2d44c-3256-4257-9345-88c8c95bd164', 'bad'),
(885, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '7223e5bb-129d-4741-9712-faed6d8caef7', 'bad'),
(886, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '46ce8153-5baa-488e-b31d-99532117d568', 'bad'),
(887, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', '6d58b894-bb45-4680-b782-e0c79d939e9f', 'bad'),
(888, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'b224bfdd-6f38-4c35-aee8-e26c0292dfd3', 'bad'),
(889, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'c681b4d1-3e00-482b-8167-88f7a68cf300', 'bad'),
(890, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'cfdc5623-3218-4330-a9a6-01bead38f625', 'bad'),
(891, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'fc13616b-cd64-4aa0-8cc0-aef3efd8ee22', 'bad'),
(892, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'c78e9386-7a8d-4849-a52e-1ee5a60bad13', 'bad'),
(893, 'cc289d8a-e4df-4861-b80a-f44ee9eabbbe', 'd3b336ed-72bb-4eda-b46f-94f0763c00da', 'bad'),
(894, 'ba0b8e5d-8842-4ab8-b3ba-8adc36293593', '2ac7f079-a489-42b7-b0eb-eb540eac90aa', 'good'),
(895, 'ba0b8e5d-8842-4ab8-b3ba-8adc36293593', '1a669a92-ffe0-4c1e-9ac1-a6a35deb73b6', 'good'),
(896, 'ba0b8e5d-8842-4ab8-b3ba-8adc36293593', '469eb040-2fcc-4a2c-8320-a3f3d5098fc9', 'normal'),
(897, 'ba0b8e5d-8842-4ab8-b3ba-8adc36293593', 'dbe5ded6-74e2-45bc-aa88-61db3c8dcc62', 'normal'),
(898, 'ba0b8e5d-8842-4ab8-b3ba-8adc36293593', '0d9b2034-dbc0-456d-b09a-8bffce7d8ef9', 'normal'),
(899, 'ba0b8e5d-8842-4ab8-b3ba-8adc36293593', '6f2f186e-90f6-4582-b0eb-868c648b3f4e', 'normal'),
(900, 'ba0b8e5d-8842-4ab8-b3ba-8adc36293593', '1f4966ee-3ce2-40c5-9ea8-6f88b8a74546', 'bad'),
(901, 'ba0b8e5d-8842-4ab8-b3ba-8adc36293593', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'bad'),
(902, 'f18f149f-c666-4fbc-a4ff-c08fbf59140b', '2ac7f079-a489-42b7-b0eb-eb540eac90aa', 'good'),
(903, 'f18f149f-c666-4fbc-a4ff-c08fbf59140b', '1a669a92-ffe0-4c1e-9ac1-a6a35deb73b6', 'good'),
(904, 'f18f149f-c666-4fbc-a4ff-c08fbf59140b', '469eb040-2fcc-4a2c-8320-a3f3d5098fc9', 'normal'),
(905, 'f18f149f-c666-4fbc-a4ff-c08fbf59140b', 'dbe5ded6-74e2-45bc-aa88-61db3c8dcc62', 'normal'),
(906, 'f18f149f-c666-4fbc-a4ff-c08fbf59140b', '0d9b2034-dbc0-456d-b09a-8bffce7d8ef9', 'normal'),
(907, 'f18f149f-c666-4fbc-a4ff-c08fbf59140b', '6f2f186e-90f6-4582-b0eb-868c648b3f4e', 'normal'),
(908, 'f18f149f-c666-4fbc-a4ff-c08fbf59140b', '1f4966ee-3ce2-40c5-9ea8-6f88b8a74546', 'bad'),
(909, 'f18f149f-c666-4fbc-a4ff-c08fbf59140b', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'bad'),
(910, 'd7872678-ec43-4d10-978e-9bbc54eec66b', '2ac7f079-a489-42b7-b0eb-eb540eac90aa', 'good'),
(911, 'd7872678-ec43-4d10-978e-9bbc54eec66b', '1a669a92-ffe0-4c1e-9ac1-a6a35deb73b6', 'good'),
(912, 'd7872678-ec43-4d10-978e-9bbc54eec66b', '469eb040-2fcc-4a2c-8320-a3f3d5098fc9', 'normal'),
(913, 'd7872678-ec43-4d10-978e-9bbc54eec66b', 'dbe5ded6-74e2-45bc-aa88-61db3c8dcc62', 'normal'),
(914, 'd7872678-ec43-4d10-978e-9bbc54eec66b', '0d9b2034-dbc0-456d-b09a-8bffce7d8ef9', 'normal'),
(915, 'd7872678-ec43-4d10-978e-9bbc54eec66b', '6f2f186e-90f6-4582-b0eb-868c648b3f4e', 'normal'),
(916, 'd7872678-ec43-4d10-978e-9bbc54eec66b', '1f4966ee-3ce2-40c5-9ea8-6f88b8a74546', 'bad'),
(917, 'd7872678-ec43-4d10-978e-9bbc54eec66b', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'bad'),
(918, '58140fb2-4898-490c-b8ff-22e23cdc159b', '2ac7f079-a489-42b7-b0eb-eb540eac90aa', 'good'),
(919, '58140fb2-4898-490c-b8ff-22e23cdc159b', '1a669a92-ffe0-4c1e-9ac1-a6a35deb73b6', 'good'),
(920, '58140fb2-4898-490c-b8ff-22e23cdc159b', '469eb040-2fcc-4a2c-8320-a3f3d5098fc9', 'normal'),
(921, '58140fb2-4898-490c-b8ff-22e23cdc159b', 'dbe5ded6-74e2-45bc-aa88-61db3c8dcc62', 'normal'),
(922, '58140fb2-4898-490c-b8ff-22e23cdc159b', '0d9b2034-dbc0-456d-b09a-8bffce7d8ef9', 'normal'),
(923, '58140fb2-4898-490c-b8ff-22e23cdc159b', '6f2f186e-90f6-4582-b0eb-868c648b3f4e', 'normal'),
(924, '58140fb2-4898-490c-b8ff-22e23cdc159b', '1f4966ee-3ce2-40c5-9ea8-6f88b8a74546', 'bad'),
(925, '58140fb2-4898-490c-b8ff-22e23cdc159b', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'bad'),
(926, '2f181b1f-11b1-4cea-ac4e-1e839cc05ca1', '2ac7f079-a489-42b7-b0eb-eb540eac90aa', 'good'),
(927, '2f181b1f-11b1-4cea-ac4e-1e839cc05ca1', '1a669a92-ffe0-4c1e-9ac1-a6a35deb73b6', 'good'),
(928, '2f181b1f-11b1-4cea-ac4e-1e839cc05ca1', '469eb040-2fcc-4a2c-8320-a3f3d5098fc9', 'normal'),
(929, '2f181b1f-11b1-4cea-ac4e-1e839cc05ca1', 'dbe5ded6-74e2-45bc-aa88-61db3c8dcc62', 'normal'),
(930, '2f181b1f-11b1-4cea-ac4e-1e839cc05ca1', '0d9b2034-dbc0-456d-b09a-8bffce7d8ef9', 'normal'),
(931, '2f181b1f-11b1-4cea-ac4e-1e839cc05ca1', '6f2f186e-90f6-4582-b0eb-868c648b3f4e', 'normal'),
(932, '2f181b1f-11b1-4cea-ac4e-1e839cc05ca1', '1f4966ee-3ce2-40c5-9ea8-6f88b8a74546', 'bad'),
(933, '2f181b1f-11b1-4cea-ac4e-1e839cc05ca1', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'bad'),
(934, 'e6d0940f-3265-422e-abd8-cbcf884ddeec', '2ac7f079-a489-42b7-b0eb-eb540eac90aa', 'good'),
(935, 'e6d0940f-3265-422e-abd8-cbcf884ddeec', '1a669a92-ffe0-4c1e-9ac1-a6a35deb73b6', 'good'),
(936, 'e6d0940f-3265-422e-abd8-cbcf884ddeec', '469eb040-2fcc-4a2c-8320-a3f3d5098fc9', 'normal'),
(937, 'e6d0940f-3265-422e-abd8-cbcf884ddeec', 'dbe5ded6-74e2-45bc-aa88-61db3c8dcc62', 'normal'),
(938, 'e6d0940f-3265-422e-abd8-cbcf884ddeec', '0d9b2034-dbc0-456d-b09a-8bffce7d8ef9', 'normal'),
(939, 'e6d0940f-3265-422e-abd8-cbcf884ddeec', '6f2f186e-90f6-4582-b0eb-868c648b3f4e', 'normal'),
(940, 'e6d0940f-3265-422e-abd8-cbcf884ddeec', '1f4966ee-3ce2-40c5-9ea8-6f88b8a74546', 'bad'),
(941, 'e6d0940f-3265-422e-abd8-cbcf884ddeec', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'bad'),
(942, '2d0be6f3-a16a-47fc-b118-d4b353e97b78', '2ac7f079-a489-42b7-b0eb-eb540eac90aa', 'good'),
(943, '2d0be6f3-a16a-47fc-b118-d4b353e97b78', '1a669a92-ffe0-4c1e-9ac1-a6a35deb73b6', 'good'),
(944, '2d0be6f3-a16a-47fc-b118-d4b353e97b78', '469eb040-2fcc-4a2c-8320-a3f3d5098fc9', 'normal'),
(945, '2d0be6f3-a16a-47fc-b118-d4b353e97b78', 'dbe5ded6-74e2-45bc-aa88-61db3c8dcc62', 'normal'),
(946, '2d0be6f3-a16a-47fc-b118-d4b353e97b78', '0d9b2034-dbc0-456d-b09a-8bffce7d8ef9', 'normal'),
(947, '2d0be6f3-a16a-47fc-b118-d4b353e97b78', '6f2f186e-90f6-4582-b0eb-868c648b3f4e', 'normal'),
(948, '2d0be6f3-a16a-47fc-b118-d4b353e97b78', '1f4966ee-3ce2-40c5-9ea8-6f88b8a74546', 'bad'),
(949, '2d0be6f3-a16a-47fc-b118-d4b353e97b78', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'bad'),
(950, 'afe2fc56-d0e6-46ee-99ee-4358c9065844', '2ac7f079-a489-42b7-b0eb-eb540eac90aa', 'good'),
(951, 'afe2fc56-d0e6-46ee-99ee-4358c9065844', '1a669a92-ffe0-4c1e-9ac1-a6a35deb73b6', 'good'),
(952, 'afe2fc56-d0e6-46ee-99ee-4358c9065844', '469eb040-2fcc-4a2c-8320-a3f3d5098fc9', 'normal'),
(953, 'afe2fc56-d0e6-46ee-99ee-4358c9065844', 'dbe5ded6-74e2-45bc-aa88-61db3c8dcc62', 'normal'),
(954, 'afe2fc56-d0e6-46ee-99ee-4358c9065844', '0d9b2034-dbc0-456d-b09a-8bffce7d8ef9', 'normal'),
(955, 'afe2fc56-d0e6-46ee-99ee-4358c9065844', '6f2f186e-90f6-4582-b0eb-868c648b3f4e', 'normal'),
(956, 'afe2fc56-d0e6-46ee-99ee-4358c9065844', '1f4966ee-3ce2-40c5-9ea8-6f88b8a74546', 'bad'),
(957, 'afe2fc56-d0e6-46ee-99ee-4358c9065844', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'bad'),
(958, 'dc498605-c63e-4df7-a000-fb3ae0605fa1', '2ac7f079-a489-42b7-b0eb-eb540eac90aa', 'good'),
(959, 'dc498605-c63e-4df7-a000-fb3ae0605fa1', '1a669a92-ffe0-4c1e-9ac1-a6a35deb73b6', 'good'),
(960, 'dc498605-c63e-4df7-a000-fb3ae0605fa1', '469eb040-2fcc-4a2c-8320-a3f3d5098fc9', 'normal'),
(961, 'dc498605-c63e-4df7-a000-fb3ae0605fa1', 'dbe5ded6-74e2-45bc-aa88-61db3c8dcc62', 'normal'),
(962, 'dc498605-c63e-4df7-a000-fb3ae0605fa1', '0d9b2034-dbc0-456d-b09a-8bffce7d8ef9', 'normal'),
(963, 'dc498605-c63e-4df7-a000-fb3ae0605fa1', '6f2f186e-90f6-4582-b0eb-868c648b3f4e', 'normal'),
(964, 'dc498605-c63e-4df7-a000-fb3ae0605fa1', '1f4966ee-3ce2-40c5-9ea8-6f88b8a74546', 'bad'),
(965, 'dc498605-c63e-4df7-a000-fb3ae0605fa1', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'bad'),
(966, '79b793a3-cfb3-42b7-ab77-42c107a1c70c', '2ac7f079-a489-42b7-b0eb-eb540eac90aa', 'good'),
(967, '79b793a3-cfb3-42b7-ab77-42c107a1c70c', '1a669a92-ffe0-4c1e-9ac1-a6a35deb73b6', 'good'),
(968, '79b793a3-cfb3-42b7-ab77-42c107a1c70c', '469eb040-2fcc-4a2c-8320-a3f3d5098fc9', 'normal'),
(969, '79b793a3-cfb3-42b7-ab77-42c107a1c70c', 'dbe5ded6-74e2-45bc-aa88-61db3c8dcc62', 'normal'),
(970, '79b793a3-cfb3-42b7-ab77-42c107a1c70c', '0d9b2034-dbc0-456d-b09a-8bffce7d8ef9', 'normal'),
(971, '79b793a3-cfb3-42b7-ab77-42c107a1c70c', '6f2f186e-90f6-4582-b0eb-868c648b3f4e', 'normal'),
(972, '79b793a3-cfb3-42b7-ab77-42c107a1c70c', '1f4966ee-3ce2-40c5-9ea8-6f88b8a74546', 'bad'),
(973, '79b793a3-cfb3-42b7-ab77-42c107a1c70c', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'bad'),
(974, 'f4269635-affc-44c9-b386-c550ab670476', '2ac7f079-a489-42b7-b0eb-eb540eac90aa', 'good'),
(975, 'f4269635-affc-44c9-b386-c550ab670476', '1a669a92-ffe0-4c1e-9ac1-a6a35deb73b6', 'good'),
(976, 'f4269635-affc-44c9-b386-c550ab670476', '469eb040-2fcc-4a2c-8320-a3f3d5098fc9', 'normal'),
(977, 'f4269635-affc-44c9-b386-c550ab670476', 'dbe5ded6-74e2-45bc-aa88-61db3c8dcc62', 'normal'),
(978, 'f4269635-affc-44c9-b386-c550ab670476', '0d9b2034-dbc0-456d-b09a-8bffce7d8ef9', 'normal'),
(979, 'f4269635-affc-44c9-b386-c550ab670476', '6f2f186e-90f6-4582-b0eb-868c648b3f4e', 'normal'),
(980, 'f4269635-affc-44c9-b386-c550ab670476', '1f4966ee-3ce2-40c5-9ea8-6f88b8a74546', 'bad'),
(981, 'f4269635-affc-44c9-b386-c550ab670476', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'bad'),
(982, '5762d046-f51b-48fe-8447-68b2237e7f42', '1f4966ee-3ce2-40c5-9ea8-6f88b8a74546', 'good'),
(983, '5762d046-f51b-48fe-8447-68b2237e7f42', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'good'),
(984, '5762d046-f51b-48fe-8447-68b2237e7f42', '2ac7f079-a489-42b7-b0eb-eb540eac90aa', 'good'),
(985, '5762d046-f51b-48fe-8447-68b2237e7f42', '6f2f186e-90f6-4582-b0eb-868c648b3f4e', 'good'),
(986, '5762d046-f51b-48fe-8447-68b2237e7f42', 'f4adf6d0-14e0-4a01-b70f-8b323fd6d8b3', 'good'),
(987, '5762d046-f51b-48fe-8447-68b2237e7f42', 'c1765455-73fa-4d1e-b143-0e1dd360abdd', 'good'),
(988, '5762d046-f51b-48fe-8447-68b2237e7f42', '1a669a92-ffe0-4c1e-9ac1-a6a35deb73b6', 'normal'),
(989, '5762d046-f51b-48fe-8447-68b2237e7f42', '0f3727df-adb9-40fa-9910-6a62951f3193', 'normal'),
(990, '5762d046-f51b-48fe-8447-68b2237e7f42', '469eb040-2fcc-4a2c-8320-a3f3d5098fc9', 'normal'),
(991, '5762d046-f51b-48fe-8447-68b2237e7f42', '0d9b2034-dbc0-456d-b09a-8bffce7d8ef9', 'normal'),
(992, '5762d046-f51b-48fe-8447-68b2237e7f42', 'dbe5ded6-74e2-45bc-aa88-61db3c8dcc62', 'bad');

-- --------------------------------------------------------

--
-- 資料表結構 `textbook`
--

CREATE TABLE `textbook` (
  `TextbookId` varchar(100) NOT NULL,
  `TextbookName` varchar(255) NOT NULL,
  `TextbookDescription` varchar(1000) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `CreateTime` datetime(6) DEFAULT NULL,
  `ModifyTime` datetime(6) DEFAULT NULL,
  `Myorder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `textbook`
--

INSERT INTO `textbook` (`TextbookId`, `TextbookName`, `TextbookDescription`, `Status`, `CreateTime`, `ModifyTime`, `Myorder`) VALUES
('010ec276-8727-4164-b5e9-187f553d9d38', '高一上版本單字【補考專區】', '', '0', '2020-12-15 21:41:54.217000', '2020-12-15 21:41:54.217000', 1),
('18908e42-b7de-4afa-bed4-d4be9c8cbc1b', '新聞英文高頻單字_高三', '', '1', '2020-12-15 21:43:14.617000', '2020-12-15 21:43:14.617000', 1),
('192f5cba-e55f-4f54-a5ae-9c26d0894c0c', '高一上段考複習區【版本單字+雜誌單字】', '', '1', '2020-12-15 21:41:58.704000', '2020-12-15 21:41:58.704000', 1),
('7e7f4719-e680-4488-9c98-1c583c4d033f', 'Patrick偷懶', '', '0', '2021-03-24 20:30:51.427000', '2021-03-24 20:30:51.427000', 1),
('9518ac90-abf3-4e48-aefc-e449985cd1e0', '測試用的', '', '1', '2021-05-19 19:49:41.795000', '2021-05-19 19:49:41.795000', 1),
('96becb53-1ac5-4eba-b0ac-c39bcdc384e3', '高一上版本單字 龍騰版', '', '1', '2020-12-15 21:41:30.397000', '2020-12-15 21:41:30.397000', 1),
('b7a969ea-9a64-4e94-b068-ac52dc3f440e', '樣版用教材', 'Sample Textbook', '1', '2021-05-22 23:54:56.300000', '2021-05-22 23:54:56.300000', 1),
('c2daaac8-c73a-44d5-a703-740302130dab', '大考學測班 每週單字進度複習', 'description', '1', '2020-12-15 21:43:19.443000', '2020-12-17 18:57:30.798000', 1),
('c419a8f8-d0a9-40ef-95b0-79e01c5346ca', '新聞英文高頻單字_高一', '', '1', '2020-12-15 21:41:36.096000', '2020-12-15 21:41:36.096000', 1),
('cf8ff018-bb91-4b41-9516-483000d1caf6', '高一上版本單字 三民版', '', '1', '2020-12-15 21:41:44.803000', '2020-12-15 21:41:44.803000', 1),
('d7506389-91a5-4b97-bd49-b99d70ccef38', '高一上版本單字 翰林版', '', '1', '2020-12-15 21:41:49.664000', '2020-12-15 21:41:49.664000', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `textbookcontent`
--

CREATE TABLE `textbookcontent` (
  `TextbookContentId` varchar(100) NOT NULL,
  `TextbookContentName` varchar(255) DEFAULT NULL,
  `TextbookId` varchar(100) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `CreateTime` datetime(6) DEFAULT NULL,
  `ModifyTime` datetime(6) DEFAULT NULL,
  `Myorder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `textbookcontent`
--

INSERT INTO `textbookcontent` (`TextbookContentId`, `TextbookContentName`, `TextbookId`, `Status`, `CreateTime`, `ModifyTime`, `Myorder`) VALUES
('0df9fb20-676b-408b-b118-e0bfe2699a57', '測試目錄1', '9518ac90-abf3-4e48-aefc-e449985cd1e0', '1', '2021-05-19 19:49:53.710000', '2021-05-19 19:49:53.710000', 1),
('14c3cd95-d92b-4dd0-a6fb-fc84998e4be5', '雜誌單字 2020.10', '192f5cba-e55f-4f54-a5ae-9c26d0894c0c', '1', '2021-02-23 19:46:21.887000', '2021-02-25 03:02:40.196000', 1),
('1fd152f7-0c07-4caf-b067-52aa350695ea', '學測班閱讀訓練', '18908e42-b7de-4afa-bed4-d4be9c8cbc1b', '1', '2020-12-15 21:43:42.866000', '2020-12-15 22:40:50.385000', 1),
('390d8119-43b3-45e8-8670-666af1bd0713', '雜誌單字 2020.11', '192f5cba-e55f-4f54-a5ae-9c26d0894c0c', '1', '2021-02-23 19:46:28.892000', '2021-02-23 19:46:28.892000', 1),
('3eed0931-d8e8-4799-8bb7-53c3a4f60b00', '雜誌單字 2021.01', '192f5cba-e55f-4f54-a5ae-9c26d0894c0c', '1', '2021-02-23 19:46:40.387000', '2021-02-23 19:46:40.387000', 1),
('4d426c22-bd67-49b0-925d-bedd39a4980b', '新英', '7e7f4719-e680-4488-9c98-1c583c4d033f', '1', '2021-03-24 20:31:14.934000', '2021-03-24 20:31:14.934000', 1),
('5a886eb7-2d6f-45ea-8a29-862136f842c7', '學測單字背誦進度', 'c2daaac8-c73a-44d5-a703-740302130dab', '1', '2020-12-16 00:14:40.314000', '2020-12-16 00:14:40.314000', 1),
('76f3dad6-e996-4c96-a263-91b9243e1cc1', '雜誌單字 2020.09', '192f5cba-e55f-4f54-a5ae-9c26d0894c0c', '1', '2021-02-23 19:46:15.714000', '2021-02-25 03:02:36.975000', 1),
('9d5d81be-dc11-4f6d-b1ff-1f3f9b6170be', '三民課本單字', 'cf8ff018-bb91-4b41-9516-483000d1caf6', '1', '2021-04-20 02:38:27.751000', '2021-04-20 02:38:27.751000', 1),
('dfc63e28-16c6-4327-a7f3-1837fa020e7b', '第一章', 'b7a969ea-9a64-4e94-b068-ac52dc3f440e', '1', '2021-05-22 23:55:10.414000', '2021-05-22 23:55:10.414000', 1),
('ec4e474a-3f82-4212-89e6-9d4ea436b771', '雜誌單字 2020.12', '192f5cba-e55f-4f54-a5ae-9c26d0894c0c', '1', '2021-02-23 19:46:31.607000', '2021-02-23 19:46:31.607000', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `textbookcontentchapter`
--

CREATE TABLE `textbookcontentchapter` (
  `TextbookContentChapterId` varchar(100) NOT NULL,
  `TextbookContentChapterName` varchar(255) DEFAULT NULL,
  `TextbookContentId` varchar(100) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `CreateTime` datetime(6) DEFAULT NULL,
  `ModifyTime` datetime(6) DEFAULT NULL,
  `Myorder` int(11) DEFAULT NULL,
  `Classify` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `textbookcontentchapter`
--

INSERT INTO `textbookcontentchapter` (`TextbookContentChapterId`, `TextbookContentChapterName`, `TextbookContentId`, `Status`, `CreateTime`, `ModifyTime`, `Myorder`, `Classify`) VALUES
('041ba2c1-6dd8-415f-9766-1926d12b990b', '常春藤 Enjoy 生活英文(2020.10)-停止追劇_finalized', '14c3cd95-d92b-4dd0-a6fb-fc84998e4be5', '1', '2021-02-23 20:25:05.351000', '2021-02-23 20:25:05.351000', 1, NULL),
('0cd0b318-bf4f-426f-8532-1e8b89e98964', 'testsetet', 'ec4e474a-3f82-4212-89e6-9d4ea436b771', '0', '2021-03-17 03:37:24.989000', '2021-03-17 03:37:24.989000', 1, NULL),
('149d1996-070b-4a9e-af28-0d1965e03b25', 'deck_三L1_finalized_20201215215715', '9d5d81be-dc11-4f6d-b1ff-1f3f9b6170be', '1', '2021-04-20 02:38:38.542000', '2021-04-20 02:38:38.542000', 1, NULL),
('189b9d70-de9d-409a-a77f-a62aaafe573a', 'SR01', '1fd152f7-0c07-4caf-b067-52aa350695ea', '1', '2020-12-15 22:05:34.991000', '2020-12-15 22:05:34.991000', 1, NULL),
('19378faf-806e-4910-9c10-c26caf02b696', '第04週  Lv3_1620_finalized', '5a886eb7-2d6f-45ea-8a29-862136f842c7', '1', '2020-12-16 02:45:30.198000', '2020-12-16 02:45:30.198000', 1, NULL),
('21a78cb9-1ab6-441e-aef8-f7a6c5c94c55', '第02週  Lv3_0610_finalized', '5a886eb7-2d6f-45ea-8a29-862136f842c7', '1', '2020-12-16 00:15:08.950000', '2020-12-16 00:15:08.950000', 1, NULL),
('25c7f1d8-90bf-41e3-985b-83025e7893db', 'PP06 Calculating your dog’s age 生物學_finalized', '1fd152f7-0c07-4caf-b067-52aa350695ea', '1', '2020-12-15 22:05:30.994000', '2020-12-15 22:05:30.994000', 1, NULL),
('2b537e90-f4fd-4d56-8c54-ee962ab986b2', '測試章節1', '0df9fb20-676b-408b-b118-e0bfe2699a57', '1', '2021-05-19 19:50:03.225000', '2021-05-19 19:50:03.225000', 1, NULL),
('2d5e8e30-6429-4182-b70e-68caaebc328c', '第01週 Lv3_0105_finalized', '5a886eb7-2d6f-45ea-8a29-862136f842c7', '1', '2020-12-16 00:14:48.280000', '2020-12-16 00:14:48.280000', 1, NULL),
('2eebd9f4-6c60-42bf-8628-f50b226ee877', '1-1', 'dfc63e28-16c6-4327-a7f3-1837fa020e7b', '1', '2021-05-22 23:55:15.448000', '2021-05-22 23:55:15.448000', 1, NULL),
('3a14d239-04ba-4d54-bc9d-bbaea7247103', 'Studio Classroom 空中英語教室(2020.09)-划船(越南下龍灣)封面_finalized', '76f3dad6-e996-4c96-a263-91b9243e1cc1', '1', '2021-02-23 19:46:57.008000', '2021-02-23 19:46:57.008000', 1, NULL),
('3a472cae-b24f-4beb-9f6f-903ad0974834', 'deck_三L9_finalized_20201215215715', '9d5d81be-dc11-4f6d-b1ff-1f3f9b6170be', '1', '2021-04-20 03:05:25.283000', '2021-04-20 03:05:25.283000', 1, NULL),
('3be97f46-88d7-4ac2-8934-55e93fdb7863', 'deck_三L7_finalized_20201215215715', '9d5d81be-dc11-4f6d-b1ff-1f3f9b6170be', '1', '2021-04-20 03:03:38.350000', '2021-04-20 03:03:38.350000', 1, NULL),
('40b51a37-fb77-431a-b9ed-9741e57f504c', 'English 4U空中美語(2020.10)-田馥甄封面_finalized', '14c3cd95-d92b-4dd0-a6fb-fc84998e4be5', '1', '2021-02-23 20:25:10.335000', '2021-02-23 20:25:10.335000', 1, NULL),
('4b5b0031-9a83-417c-92bf-296c17f589fe', 'English 4U空中美語(2020.09)--韋禮安封面_finalized', '76f3dad6-e996-4c96-a263-91b9243e1cc1', '1', '2021-02-23 19:47:04.384000', '2021-02-23 19:47:04.384000', 1, NULL),
('4cbc30b0-4816-4f3d-abff-a387b710382c', '第03週 Lv3_1115_finalized', '5a886eb7-2d6f-45ea-8a29-862136f842c7', '1', '2020-12-16 02:39:34.089000', '2020-12-16 02:39:34.089000', 1, NULL),
('4f2810ef-d3f8-4e94-9b5b-10b17af3e562', 'deck_三L10_finalized_20201215215715', '9d5d81be-dc11-4f6d-b1ff-1f3f9b6170be', '1', '2021-04-20 03:05:32.425000', '2021-04-20 03:05:32.425000', 1, NULL),
('50092798-dc42-47ff-904f-0c239f5778a9', 'PP01 Panic Buying 從眾效應_finalized', '1fd152f7-0c07-4caf-b067-52aa350695ea', '1', '2020-12-15 22:04:56.074000', '2020-12-15 22:04:56.074000', 1, NULL),
('683b9835-d727-47a9-96fb-6b32f51c151d', 'SR02(三)', '1fd152f7-0c07-4caf-b067-52aa350695ea', '1', '2020-12-15 22:05:48.441000', '2020-12-15 22:05:48.441000', 1, NULL),
('77414cf6-3d93-4f72-9cdc-91619d139f1e', 'test', '9d5d81be-dc11-4f6d-b1ff-1f3f9b6170be', '1', '2021-04-20 20:59:26.207000', '2021-04-20 20:59:26.207000', 1, NULL),
('7fbd289a-51e6-4c76-96d0-5fa0176b65e6', ' Studio Classroom 空中英語教室(2020.10)-狗狗燙髮(萌寵網紅)封面_finalized', '14c3cd95-d92b-4dd0-a6fb-fc84998e4be5', '1', '2021-02-23 20:24:58.318000', '2021-02-23 20:24:58.318000', 1, NULL),
('8622050d-0d3c-4aa3-9186-dc49221da308', 'PP02 Educational Tumult 教育議題_finalized', '1fd152f7-0c07-4caf-b067-52aa350695ea', '1', '2020-12-15 22:05:05.132000', '2020-12-15 22:05:05.132000', 1, NULL),
('8769b1dc-b391-4618-a8b5-13f08032d045', 'Live互動英語第234期(2020.10)-傑森瑪耶茲封面_finalized', '14c3cd95-d92b-4dd0-a6fb-fc84998e4be5', '1', '2021-02-23 20:24:48.021000', '2021-02-23 20:24:48.021000', 1, NULL),
('8a2501f6-2bec-4f3c-8de4-a2983c4e837c', 'deck_三L3_finalized_20201215215715', '9d5d81be-dc11-4f6d-b1ff-1f3f9b6170be', '1', '2021-04-20 02:56:53.247000', '2021-04-20 02:56:53.247000', 1, NULL),
('8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', 'deck_三L8_finalized_20201215215715', '9d5d81be-dc11-4f6d-b1ff-1f3f9b6170be', '1', '2021-04-20 03:05:03.292000', '2021-04-20 03:05:03.292000', 1, NULL),
('8f83ffec-8fcc-412c-a5e5-f401bd7900dd', 'PP04  Melting Arctic 生態環境_finalized', '1fd152f7-0c07-4caf-b067-52aa350695ea', '1', '2020-12-15 22:05:21.001000', '2020-12-15 22:05:21.001000', 1, NULL),
('b0e2945e-9e9b-4876-bbbb-bcb315096486', 'PP05', '1fd152f7-0c07-4caf-b067-52aa350695ea', '1', '2020-12-15 22:05:26.193000', '2020-12-15 22:05:26.193000', 1, NULL),
('bae487cc-ac73-4fbf-9a8a-b4415a44e7de', 'PP03 China Virus 文化衝突_finalized', '1fd152f7-0c07-4caf-b067-52aa350695ea', '1', '2020-12-15 22:05:13.153000', '2020-12-15 22:05:13.153000', 1, NULL),
('c931777e-e06a-4826-a313-003199a5757d', 'Live互動英語第233期(2020.09)-亞莉安娜封面_finalized', '76f3dad6-e996-4c96-a263-91b9243e1cc1', '1', '2021-02-23 19:46:50.601000', '2021-02-23 19:46:50.601000', 1, NULL),
('c9c86960-2906-46b3-af8d-b3a53393627a', 'deck_三L4_finalized_20201215215715', '9d5d81be-dc11-4f6d-b1ff-1f3f9b6170be', '1', '2021-04-20 02:58:07.422000', '2021-04-20 02:58:07.422000', 1, NULL),
('cd5eba66-6b50-4e7a-829b-1e2da4c4667a', 'deck_三L6_finalized_20201215215715', '9d5d81be-dc11-4f6d-b1ff-1f3f9b6170be', '1', '2021-04-20 03:03:19.663000', '2021-04-20 03:03:19.663000', 1, NULL),
('d5759203-f813-41cc-8898-58c4c55338fa', 'test3', '0df9fb20-676b-408b-b118-e0bfe2699a57', '1', '2021-07-12 15:30:16.157000', '2021-07-12 15:30:16.157000', 1, NULL),
('df1811dc-d4a1-4f71-abc1-8ff3d2eda417', '測試章節2', '0df9fb20-676b-408b-b118-e0bfe2699a57', '1', '2021-05-30 06:23:57.188000', '2021-05-30 06:23:57.188000', 1, NULL),
('ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'deck_三L5_finalized_20201215215715', '9d5d81be-dc11-4f6d-b1ff-1f3f9b6170be', '1', '2021-04-20 02:58:18.786000', '2021-04-20 02:58:18.786000', 1, NULL),
('ece5d02f-2755-46b0-a05b-ebf3b0f2aeee', '基礎', '4d426c22-bd67-49b0-925d-bedd39a4980b', '1', '2021-03-24 20:31:27.276000', '2021-03-24 20:31:27.276000', 1, NULL),
('f2914579-a8de-4b63-ad6b-bfd57557409b', 'deck_三L2_finalized_20201215215715', '9d5d81be-dc11-4f6d-b1ff-1f3f9b6170be', '1', '2021-04-20 02:40:46.521000', '2021-04-20 02:40:46.521000', 1, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `textbookcontentchapterdeck`
--

CREATE TABLE `textbookcontentchapterdeck` (
  `TextbookCCDeckId` int(11) NOT NULL,
  `TextbookContentChapterId` varchar(100) NOT NULL,
  `WordId` varchar(100) NOT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `Myorder` int(255) DEFAULT NULL,
  `ModifyTime` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `textbookcontentchapterdeck`
--

INSERT INTO `textbookcontentchapterdeck` (`TextbookCCDeckId`, `TextbookContentChapterId`, `WordId`, `Status`, `Myorder`, `ModifyTime`) VALUES
(17, '149d1996-070b-4a9e-af28-0d1965e03b25', 'a67a7a97-ea2f-4653-a3dd-2c5cfa6c0e32', '1', 1, '2021-04-20 02:38:43.463000'),
(18, '149d1996-070b-4a9e-af28-0d1965e03b25', 'c94a3326-4234-4a6d-a6cc-fedde8414920', '1', 1, '2021-04-20 02:38:43.466000'),
(19, '149d1996-070b-4a9e-af28-0d1965e03b25', '284845ba-cb4f-45d4-a051-20995d7cdb6c', '1', 1, '2021-04-20 02:38:43.467000'),
(20, '149d1996-070b-4a9e-af28-0d1965e03b25', '0bbb046a-3675-458f-957f-fc7ae5a6ad61', '1', 1, '2021-04-20 02:38:43.475000'),
(21, '149d1996-070b-4a9e-af28-0d1965e03b25', 'a8714ef5-d03f-4bca-b83c-db05e756927f', '1', 1, '2021-04-20 02:38:43.475000'),
(22, '149d1996-070b-4a9e-af28-0d1965e03b25', '95ea4fea-6e40-4a1d-bf59-259380c6aba6', '1', 1, '2021-04-20 02:38:43.476000'),
(23, '149d1996-070b-4a9e-af28-0d1965e03b25', '4e03423f-e99b-4e7f-bfb5-462daa925f14', '1', 1, '2021-04-20 02:38:43.500000'),
(24, '149d1996-070b-4a9e-af28-0d1965e03b25', '3729fd29-95f0-48a9-9994-5fb395013cc8', '1', 1, '2021-04-20 02:38:43.499000'),
(25, '149d1996-070b-4a9e-af28-0d1965e03b25', '605e682f-e8d1-4dc3-9612-87435c4efdf3', '1', 1, '2021-04-20 02:38:43.508000'),
(26, '149d1996-070b-4a9e-af28-0d1965e03b25', 'a9f7f48a-d662-4ff6-a434-9ea5eff1a54b', '1', 1, '2021-04-20 02:38:43.509000'),
(27, '149d1996-070b-4a9e-af28-0d1965e03b25', 'fbd00cb5-1449-4810-93a0-38658c11dea9', '1', 1, '2021-04-20 02:38:43.508000'),
(28, '149d1996-070b-4a9e-af28-0d1965e03b25', '1fe4ebf4-9e3c-4ef7-9a78-e55ece0c49c0', '1', 1, '2021-04-20 02:38:43.513000'),
(29, '149d1996-070b-4a9e-af28-0d1965e03b25', 'a0686740-bb4b-4169-a30b-0d27cafc5444', '1', 1, '2021-04-20 02:38:43.525000'),
(30, '149d1996-070b-4a9e-af28-0d1965e03b25', '80f02910-322f-4ee0-8cd7-a86774f0d38e', '1', 1, '2021-04-20 02:38:43.533000'),
(31, '149d1996-070b-4a9e-af28-0d1965e03b25', 'd6f8f24f-c894-4049-a105-acc63786ea0d', '1', 1, '2021-04-20 02:38:43.533000'),
(32, '149d1996-070b-4a9e-af28-0d1965e03b25', 'f9aff2b2-f47c-4c3f-af79-a987a165c160', '1', 1, '2021-04-20 02:38:43.537000'),
(33, '149d1996-070b-4a9e-af28-0d1965e03b25', 'e2d3022b-df82-4872-8845-89706c14ae77', '1', 1, '2021-04-20 02:38:43.537000'),
(35, '149d1996-070b-4a9e-af28-0d1965e03b25', '03929ac0-ae71-43c0-8b83-bb145707e0f1', '1', 1, '2021-04-20 02:38:43.544000'),
(36, '149d1996-070b-4a9e-af28-0d1965e03b25', '252ed725-7932-469b-91a5-c08d7045e2e3', '1', 1, '2021-04-20 02:38:43.563000'),
(37, '149d1996-070b-4a9e-af28-0d1965e03b25', 'c223d0dd-6e54-46bd-bcba-226ae9f7ef54', '1', 1, '2021-04-20 02:38:43.564000'),
(38, '149d1996-070b-4a9e-af28-0d1965e03b25', '9075a0e6-52a7-4dc6-938c-c2e9625f55c1', '1', 1, '2021-04-20 02:38:43.564000'),
(39, '149d1996-070b-4a9e-af28-0d1965e03b25', '442957c3-344a-47bf-91db-fde2e9ab3142', '1', 1, '2021-04-20 02:38:43.567000'),
(40, '149d1996-070b-4a9e-af28-0d1965e03b25', 'd9d9d2e6-ea62-487b-a3e8-6dd4dcfce395', '1', 1, '2021-04-20 02:38:43.568000'),
(41, '149d1996-070b-4a9e-af28-0d1965e03b25', '6ebcfd2b-5d04-4b5b-a493-09484323f50a', '1', 1, '2021-04-20 02:38:43.570000'),
(42, '149d1996-070b-4a9e-af28-0d1965e03b25', 'af09ecec-e136-4f94-8b2f-2f4d32eaf54e', '1', 1, '2021-04-20 02:38:43.592000'),
(43, '149d1996-070b-4a9e-af28-0d1965e03b25', '009f673d-c6f3-452b-a24c-e47747c71c95', '1', 1, '2021-04-20 02:38:43.592000'),
(44, '149d1996-070b-4a9e-af28-0d1965e03b25', 'f621585a-3e99-44ee-833c-e04adc291a3d', '1', 1, '2021-04-20 02:38:43.591000'),
(45, '149d1996-070b-4a9e-af28-0d1965e03b25', 'cbe0b4ef-32cc-4137-a865-d27437a38f8f', '1', 1, '2021-04-20 02:38:43.600000'),
(46, '149d1996-070b-4a9e-af28-0d1965e03b25', 'bb234d21-87df-446d-ab99-eb52d8796b7e', '1', 1, '2021-04-20 02:38:43.600000'),
(47, '149d1996-070b-4a9e-af28-0d1965e03b25', 'a793bde5-428a-41f7-9678-c9b20400088e', '1', 1, '2021-04-20 02:38:43.602000'),
(48, '149d1996-070b-4a9e-af28-0d1965e03b25', '6ff45324-801c-4b10-a775-496735efdcd5', '1', 1, '2021-04-20 03:15:26.647000'),
(49, '149d1996-070b-4a9e-af28-0d1965e03b25', 'a472db24-7634-48ce-bb75-18eb45c03057', '1', 1, '2021-04-20 02:38:43.622000'),
(50, '149d1996-070b-4a9e-af28-0d1965e03b25', 'a8661bbf-b130-4a6d-bd3e-4a1998118657', '1', 1, '2021-04-20 02:38:43.625000'),
(51, '149d1996-070b-4a9e-af28-0d1965e03b25', '5c83c1b8-82d3-412b-a0ea-2f55c58a59b4', '1', 1, '2021-04-20 02:38:43.625000'),
(52, '149d1996-070b-4a9e-af28-0d1965e03b25', '9903d127-3f40-4b2a-bf57-87a82d481224', '1', 1, '2021-04-20 02:38:43.629000'),
(53, '149d1996-070b-4a9e-af28-0d1965e03b25', '66bdb269-1520-450c-a9ca-1461cf94fc31', '1', 1, '2021-04-20 02:38:43.630000'),
(54, '149d1996-070b-4a9e-af28-0d1965e03b25', '36f8ec56-65d9-42fa-8cb7-0c6eb86b7a4b', '1', 1, '2021-04-20 02:38:43.642000'),
(55, '149d1996-070b-4a9e-af28-0d1965e03b25', '1f4966ee-3ce2-40c5-9ea8-6f88b8a74546', '1', 1, '2021-04-20 02:38:43.642000'),
(56, '149d1996-070b-4a9e-af28-0d1965e03b25', '8c47ed7f-a27a-4abd-b33c-99530017224d', '1', 1, '2021-04-20 02:38:43.645000'),
(57, '149d1996-070b-4a9e-af28-0d1965e03b25', '092aa462-4130-4600-8e52-655d939828fd', '1', 1, '2021-04-20 02:38:43.647000'),
(58, '149d1996-070b-4a9e-af28-0d1965e03b25', 'f1b7350f-6333-4027-b971-487aea85304c', '1', 1, '2021-04-20 02:38:43.647000'),
(59, '149d1996-070b-4a9e-af28-0d1965e03b25', '8f7b894d-f6c8-4754-a95d-0d567e3b0b44', '1', 1, '2021-04-20 02:38:43.650000'),
(60, '149d1996-070b-4a9e-af28-0d1965e03b25', 'cf35313d-0cdf-428c-a1eb-77c63e1d8e71', '1', 1, '2021-04-20 02:38:43.660000'),
(61, '149d1996-070b-4a9e-af28-0d1965e03b25', '4d59530d-6e0d-42ed-8ab8-1e11d9995416', '1', 1, '2021-04-20 02:38:43.665000'),
(62, '149d1996-070b-4a9e-af28-0d1965e03b25', 'd9bb93b8-f90e-4557-a7a4-c9c123492b0d', '1', 1, '2021-04-20 02:38:43.665000'),
(63, '149d1996-070b-4a9e-af28-0d1965e03b25', 'c4b255d7-b6e3-4874-b4f9-2ab5146a4a92', '1', 1, '2021-04-20 02:38:43.665000'),
(64, '149d1996-070b-4a9e-af28-0d1965e03b25', '296e2c98-44ca-4676-8428-5ddf38ca866d', '1', 1, '2021-04-20 02:38:43.669000'),
(65, '149d1996-070b-4a9e-af28-0d1965e03b25', '4fb3f0cd-5b38-4bf3-95b4-18198f774e40', '1', 1, '2021-07-24 18:03:18.504000'),
(66, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '6d58b894-bb45-4680-b782-e0c79d939e9f', '1', 1, '2021-04-20 02:41:44.018000'),
(67, 'f2914579-a8de-4b63-ad6b-bfd57557409b', 'd3b336ed-72bb-4eda-b46f-94f0763c00da', '1', 1, '2021-04-20 02:41:44.019000'),
(68, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '5b6b5f73-88b2-4a82-989b-09faa442a9b6', '1', 1, '2021-04-20 02:41:44.020000'),
(69, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '015e75c4-7a49-480f-b2f0-cadfaeb2f899', '1', 1, '2021-04-20 02:41:44.025000'),
(70, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '32117151-0f3b-4d68-be51-fde2ac8e8042', '1', 1, '2021-04-20 02:41:44.033000'),
(71, 'f2914579-a8de-4b63-ad6b-bfd57557409b', 'd6e5eebb-4ade-4335-9730-f492bb8bd757', '1', 1, '2021-04-20 02:41:44.036000'),
(72, 'f2914579-a8de-4b63-ad6b-bfd57557409b', 'a1a905c0-eb87-4d81-8bb1-707eb99b2047', '1', 1, '2021-04-20 02:41:44.050000'),
(73, 'f2914579-a8de-4b63-ad6b-bfd57557409b', 'bdd16a0f-0d4a-4edd-86bd-fe9731d226e1', '1', 1, '2021-04-20 02:41:44.052000'),
(74, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '5168c9e3-495f-401a-a45b-13ac2050d915', '1', 1, '2021-04-20 02:41:44.054000'),
(75, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '8eedc25c-b5cc-45da-953e-f0fdfeb64bd3', '1', 1, '2021-04-20 02:41:44.054000'),
(76, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '653c4fd3-4711-47db-ab19-d06e364d250b', '1', 1, '2021-04-20 02:41:44.063000'),
(77, 'f2914579-a8de-4b63-ad6b-bfd57557409b', 'fa6763a6-8f9c-40a0-aef7-9cd26de0ae53', '1', 1, '2021-04-20 02:41:44.068000'),
(78, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '54eb2881-5025-4067-a668-f987adc56343', '1', 1, '2021-04-20 02:41:44.078000'),
(79, 'f2914579-a8de-4b63-ad6b-bfd57557409b', 'b0b408e1-e50f-4243-9ba8-d6e9037e41f3', '1', 1, '2021-04-20 02:41:44.078000'),
(80, 'f2914579-a8de-4b63-ad6b-bfd57557409b', 'e464b0ea-fc54-456e-affd-c56d89aaa616', '1', 1, '2021-04-20 02:41:44.083000'),
(81, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '03144090-a110-48c0-ac33-8cb65cd3cbb9', '1', 1, '2021-04-20 02:41:44.083000'),
(82, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '8061a493-277b-4869-b853-c62e37fa90f6', '1', 1, '2021-04-20 02:41:44.083000'),
(83, 'f2914579-a8de-4b63-ad6b-bfd57557409b', 'f47772dd-97a9-442f-a015-c9ae275b212a', '1', 1, '2021-04-20 02:41:44.087000'),
(84, 'f2914579-a8de-4b63-ad6b-bfd57557409b', 'f719071d-a1d5-4a4e-bcbe-e67d411cd4a5', '1', 1, '2021-04-20 02:41:44.101000'),
(85, 'f2914579-a8de-4b63-ad6b-bfd57557409b', 'f6b28411-fd15-4d03-a870-20ea2f2c21bc', '1', 1, '2021-04-20 02:41:44.106000'),
(86, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '46e2eff3-920e-46c4-bb50-0920d08df6f6', '1', 1, '2021-04-20 02:41:44.107000'),
(87, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '3e00a2c6-da4f-4969-a130-ec1eeaed1bfc', '1', 1, '2021-04-20 02:41:44.107000'),
(88, 'f2914579-a8de-4b63-ad6b-bfd57557409b', 'b10591c9-f395-48fe-9aee-2fddae102f06', '1', 1, '2021-04-20 02:41:44.112000'),
(89, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '22f8c951-ab55-4b6e-b349-68a0b1b44f09', '1', 1, '2021-04-20 02:41:44.113000'),
(90, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '349c467e-309b-4284-8243-e2231dc5eb05', '1', 1, '2021-04-20 02:41:44.126000'),
(91, 'f2914579-a8de-4b63-ad6b-bfd57557409b', 'e5c53663-8ead-44ef-bcf0-42523173ff4c', '1', 1, '2021-04-20 02:41:44.127000'),
(92, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '46ce8153-5baa-488e-b31d-99532117d568', '1', 1, '2021-04-20 02:41:44.130000'),
(93, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '1dc1f214-d2a9-494e-8690-a7c958880afe', '1', 1, '2021-04-20 02:41:44.131000'),
(94, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '347d1aee-b24c-4e7d-b7c4-10713ef441d0', '1', 1, '2021-04-20 02:41:44.133000'),
(95, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '44c168b3-5854-43db-9c68-49c5e9795967', '1', 1, '2021-04-20 02:41:44.133000'),
(96, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '0ab5b3ef-bcb0-404d-8492-4acb514811d5', '1', 1, '2021-04-20 02:41:44.147000'),
(97, 'f2914579-a8de-4b63-ad6b-bfd57557409b', 'c681b4d1-3e00-482b-8167-88f7a68cf300', '1', 1, '2021-04-20 02:41:44.147000'),
(98, 'f2914579-a8de-4b63-ad6b-bfd57557409b', 'b224bfdd-6f38-4c35-aee8-e26c0292dfd3', '1', 1, '2021-04-20 02:41:44.154000'),
(99, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '71717bae-6ab8-49c6-acd9-f7886f950f02', '1', 1, '2021-04-20 02:41:44.154000'),
(100, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '4e0fb432-71fe-471d-a6a9-f2a123132ec4', '1', 1, '2021-04-20 02:41:44.159000'),
(101, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '79f89078-30f4-4ce7-912b-926085c77b4c', '1', 1, '2021-04-20 02:41:44.159000'),
(102, 'f2914579-a8de-4b63-ad6b-bfd57557409b', 'fc13616b-cd64-4aa0-8cc0-aef3efd8ee22', '1', 1, '2021-04-20 02:41:44.167000'),
(103, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '0fa307b7-00fb-4d91-997f-35f101d1ac67', '1', 1, '2021-04-20 02:41:44.170000'),
(104, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '3f799330-992e-46b1-aa67-f425557cecfe', '1', 1, '2021-04-20 02:41:44.251000'),
(105, 'f2914579-a8de-4b63-ad6b-bfd57557409b', 'c5961c2d-b197-46b9-8651-43be44efcb9b', '1', 1, '2021-04-20 02:41:44.251000'),
(106, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '2ec7c8f9-e693-491e-81cb-5a59f5331110', '1', 1, '2021-04-20 02:41:44.257000'),
(107, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '2b0ff6a0-ea2c-4897-9f1b-876ed8a8c473', '1', 1, '2021-04-20 02:41:44.257000'),
(108, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '6cebc7a9-6a4e-4025-ac9a-b981a54a5ed4', '1', 1, '2021-04-20 02:41:44.266000'),
(109, 'f2914579-a8de-4b63-ad6b-bfd57557409b', '2c92fcc1-ebeb-4877-8131-35209e2b6f6b', '1', 1, '2021-04-20 02:41:44.267000'),
(110, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', '0084be1a-1c11-4c8e-a9a6-72aaf3a1df4c', '1', 1, '2021-04-20 02:57:17.235000'),
(111, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', '9e15d5ca-6b15-4db3-b746-1ef6be503bc1', '1', 1, '2021-04-20 02:57:17.236000'),
(112, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', '17d50158-b167-4770-8d10-f97382abaed9', '1', 1, '2021-04-20 02:57:17.242000'),
(113, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', 'dde2a6db-920f-4544-9ebc-1095c2adc6c7', '1', 1, '2021-04-20 02:57:17.243000'),
(114, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', '450bbcd2-275a-4018-9d0f-3255f988eacc', '1', 1, '2021-04-20 02:57:17.244000'),
(115, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', 'ccd5f360-bd8e-4eb7-9e52-9db02197b759', '1', 1, '2021-04-20 02:57:17.246000'),
(116, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', 'cca02a4b-f9cc-4396-b7a7-4a6acc909d0b', '1', 1, '2021-04-20 02:57:17.274000'),
(117, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', '11687f24-4188-4f88-a2d5-25fb5ca7b571', '1', 1, '2021-04-20 02:57:17.277000'),
(118, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', '5863dd1b-6fd2-421e-818e-3f4b9c75b5e5', '1', 1, '2021-04-20 02:57:17.277000'),
(119, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', '4131e792-5c91-4f75-b525-df70b945b168', '1', 1, '2021-04-20 02:57:17.278000'),
(120, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', '0ff5cd08-3b3a-450a-b144-14955cc557b7', '1', 1, '2021-04-20 02:57:17.278000'),
(121, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', 'e49e2777-62a7-4afb-96da-657a71bce7b5', '1', 1, '2021-04-20 02:57:17.282000'),
(122, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', '70b1b14f-b3cc-421e-905e-b8dab72f1cee', '1', 1, '2021-04-20 02:57:17.298000'),
(123, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', 'c5b455a2-e266-4ac7-b5e8-7fc90fa148f6', '1', 1, '2021-04-20 02:57:17.302000'),
(124, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', '95a41292-bee0-4d8e-b8d8-9f4f0cc9c5d2', '1', 1, '2021-04-20 02:57:17.302000'),
(125, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', 'a065c461-04a8-4f0a-b844-c8905365da90', '1', 1, '2021-04-20 02:57:17.302000'),
(126, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', '497187b1-1d24-482b-8f9f-f165be335c20', '1', 1, '2021-04-20 02:57:17.305000'),
(127, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', 'cfdc5623-3218-4330-a9a6-01bead38f625', '1', 1, '2021-04-20 02:57:17.305000'),
(128, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', '6d21f87b-a8f3-4be9-913f-4ca24fcb05c4', '1', 1, '2021-04-20 02:57:17.314000'),
(129, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', '1db01631-a1e2-4bec-b286-a8554d2c67ff', '1', 1, '2021-04-20 02:57:17.325000'),
(130, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', 'f689d4a5-b29e-40bc-a477-878d3e5275e7', '1', 1, '2021-04-20 02:57:17.334000'),
(131, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', '2e89727d-ef71-4f98-9fa0-24c751f96062', '1', 1, '2021-04-20 02:57:17.334000'),
(132, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', 'f43b5cfc-027b-401d-b3c2-b2beda2371ea', '1', 1, '2021-04-20 02:57:17.334000'),
(133, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', 'c78e9386-7a8d-4849-a52e-1ee5a60bad13', '1', 1, '2021-04-20 02:57:17.340000'),
(134, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', '80de03d1-66fb-4ff3-87ce-50829a09b760', '1', 1, '2021-04-20 02:57:17.346000'),
(135, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', 'd796ec11-ea9c-445d-9e05-6d4af2890808', '1', 1, '2021-04-20 02:57:17.351000'),
(136, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', 'eee58427-fddd-4cd9-af6c-5b2497e13181', '1', 1, '2021-04-20 02:57:17.359000'),
(137, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', '30032c70-acbc-4158-8556-94a35ab321f8', '1', 1, '2021-04-20 02:57:17.361000'),
(138, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', '7223e5bb-129d-4741-9712-faed6d8caef7', '1', 1, '2021-04-20 02:57:17.364000'),
(139, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', 'bee2541e-4561-4fc1-8855-d8037362da56', '1', 1, '2021-04-20 02:57:17.364000'),
(140, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', '9f2c476b-d477-47aa-9e93-1fab620f5fbc', '1', 1, '2021-04-20 02:57:17.368000'),
(141, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', 'a881f4aa-f0e3-4619-a8ed-84c12872f6d6', '1', 1, '2021-04-20 02:57:17.373000'),
(142, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', 'bad30f13-a3b6-45f8-b0c7-0f852aa8e42d', '1', 1, '2021-04-20 02:57:17.375000'),
(143, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', '30a58d24-c68b-4314-9efa-a136be66dfbf', '1', 1, '2021-04-20 02:57:17.380000'),
(144, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', '5f70941b-a363-476a-aaa4-283a228f700c', '1', 1, '2021-04-20 02:57:17.381000'),
(145, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', '6bfb1624-fdac-4158-a9a5-d1f621a6c16d', '1', 1, '2021-04-20 02:57:17.383000'),
(146, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', '2ea2d44c-3256-4257-9345-88c8c95bd164', '1', 1, '2021-04-20 02:57:17.387000'),
(147, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', 'c11ca94a-0f7b-4d96-b10d-3d83c6a1fe5f', '1', 1, '2021-04-20 02:57:17.391000'),
(148, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', '4a7dcf94-5b1b-4950-802d-b4e653bd1187', '1', 1, '2021-04-20 02:57:17.395000'),
(149, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', '01cd16cc-e347-4664-a320-8bcb1cb37680', '1', 1, '2021-04-20 02:57:17.400000'),
(150, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', 'f42a2df7-1f26-4765-87f8-1da9e08562ad', '1', 1, '2021-04-20 02:57:17.405000'),
(151, '8a2501f6-2bec-4f3c-8de4-a2983c4e837c', '2d6a57e9-5c21-434d-965c-84e441c9b589', '1', 1, '2021-04-20 02:57:17.404000'),
(152, 'c9c86960-2906-46b3-af8d-b3a53393627a', '494535c7-27ea-41ac-bb73-3afde375d231', '1', 1, '2021-04-20 02:58:11.472000'),
(153, 'c9c86960-2906-46b3-af8d-b3a53393627a', 'd7875b88-9a86-4707-9ea9-276f62c8db75', '1', 1, '2021-04-20 02:58:11.473000'),
(154, 'c9c86960-2906-46b3-af8d-b3a53393627a', '5abee4ef-ec66-41cf-a3de-5aaced1145bd', '1', 1, '2021-04-20 02:58:11.476000'),
(155, 'c9c86960-2906-46b3-af8d-b3a53393627a', 'ba615524-3e59-4c46-9b42-6a75f9b0c2f8', '1', 1, '2021-04-20 02:58:11.476000'),
(156, 'c9c86960-2906-46b3-af8d-b3a53393627a', 'dcdcae73-9c78-4372-bd8e-3a4c6eecda7e', '1', 1, '2021-04-20 02:58:11.477000'),
(157, 'c9c86960-2906-46b3-af8d-b3a53393627a', '635e5a69-96ff-49c2-b773-26c775d293af', '1', 1, '2021-04-20 02:58:11.488000'),
(158, 'c9c86960-2906-46b3-af8d-b3a53393627a', '95ec26b8-4ea2-429f-b5b2-c22f9de50b52', '1', 1, '2021-04-20 02:58:11.497000'),
(159, 'c9c86960-2906-46b3-af8d-b3a53393627a', '5386c013-183e-46a6-a241-f1c480b53d9c', '1', 1, '2021-04-20 02:58:11.505000'),
(160, 'c9c86960-2906-46b3-af8d-b3a53393627a', 'f5f3af38-a9f1-4a51-99c5-cf4921ff9f09', '1', 1, '2021-04-20 02:58:11.505000'),
(161, 'c9c86960-2906-46b3-af8d-b3a53393627a', '9259b2eb-f191-4dfc-89c3-c6cb7e37f73a', '1', 1, '2021-04-20 02:58:11.505000'),
(162, 'c9c86960-2906-46b3-af8d-b3a53393627a', 'f0972f67-bbc4-42d4-9e7a-f8fe2eb6c978', '1', 1, '2021-04-20 02:58:11.510000'),
(163, 'c9c86960-2906-46b3-af8d-b3a53393627a', '00a585b2-56e6-4aec-b69f-a88235a1f87d', '1', 1, '2021-04-20 02:58:11.519000'),
(164, 'c9c86960-2906-46b3-af8d-b3a53393627a', '46945a99-ee17-4a14-a806-fd31a734d9b4', '1', 1, '2021-04-20 02:58:11.525000'),
(165, 'c9c86960-2906-46b3-af8d-b3a53393627a', 'f1a3132e-50b3-4a79-8a84-66812754aed9', '1', 1, '2021-04-20 02:58:11.531000'),
(166, 'c9c86960-2906-46b3-af8d-b3a53393627a', 'f184c45d-7d72-49eb-90d0-48b90f5a1e4a', '1', 1, '2021-04-20 02:58:11.531000'),
(167, 'c9c86960-2906-46b3-af8d-b3a53393627a', '8f600478-570a-4e28-b6bc-0d9e32159803', '1', 1, '2021-04-20 02:58:11.535000'),
(168, 'c9c86960-2906-46b3-af8d-b3a53393627a', '435be1a7-f690-46c3-8561-479ee7ac3e38', '1', 1, '2021-04-20 02:58:11.535000'),
(169, 'c9c86960-2906-46b3-af8d-b3a53393627a', 'd230423e-6191-4b3d-8ec6-9db3a89406d1', '1', 1, '2021-04-20 02:58:11.541000'),
(170, 'c9c86960-2906-46b3-af8d-b3a53393627a', '2fabbe18-aae7-42e4-b05d-8dd87015b664', '1', 1, '2021-04-20 02:58:11.544000'),
(171, 'c9c86960-2906-46b3-af8d-b3a53393627a', 'e29e8151-cc45-467a-ac83-9168ee5f3c0f', '1', 1, '2021-04-20 02:58:11.553000'),
(172, 'c9c86960-2906-46b3-af8d-b3a53393627a', '92a94222-a0a2-4270-822f-71be6e932384', '1', 1, '2021-04-20 02:58:11.553000'),
(173, 'c9c86960-2906-46b3-af8d-b3a53393627a', 'cf08f3db-ec0c-4218-9add-8cae6e674e66', '1', 1, '2021-04-20 02:58:11.555000'),
(174, 'c9c86960-2906-46b3-af8d-b3a53393627a', '77084070-c90a-4434-83f9-7c01fcbe95b8', '1', 1, '2021-04-20 02:58:11.558000'),
(175, 'c9c86960-2906-46b3-af8d-b3a53393627a', 'aa2dabec-5e99-4b31-8b66-8d7c9a0342fa', '1', 1, '2021-04-20 02:58:11.563000'),
(176, 'c9c86960-2906-46b3-af8d-b3a53393627a', 'cd83e1f5-5007-4f21-8dfe-bf98cb1d43b4', '1', 1, '2021-04-20 02:58:11.566000'),
(177, 'c9c86960-2906-46b3-af8d-b3a53393627a', '4653d682-8fd2-458a-a66f-2321f90130ad', '1', 1, '2021-04-20 02:58:11.572000'),
(178, 'c9c86960-2906-46b3-af8d-b3a53393627a', '4bdab0be-5d10-4f36-a253-f5f0ebb2e100', '1', 1, '2021-04-20 02:58:11.576000'),
(179, 'c9c86960-2906-46b3-af8d-b3a53393627a', 'acb6c3f9-9e17-4f06-a5ae-85cd17750cb1', '1', 1, '2021-04-20 02:58:11.574000'),
(180, 'c9c86960-2906-46b3-af8d-b3a53393627a', '201cc70d-04ed-4b5f-90b8-d77dcbe69a6f', '1', 1, '2021-04-20 02:58:11.578000'),
(181, 'c9c86960-2906-46b3-af8d-b3a53393627a', 'cfa3e379-e86e-4f20-a00d-73cccf25425f', '1', 1, '2021-04-20 02:58:11.580000'),
(182, 'c9c86960-2906-46b3-af8d-b3a53393627a', 'b89373aa-12a2-4d24-92c6-b286b203e6ad', '1', 1, '2021-04-20 02:58:11.585000'),
(183, 'c9c86960-2906-46b3-af8d-b3a53393627a', '5adbb629-20b5-4836-9da8-3f951ef8b822', '1', 1, '2021-04-20 02:58:11.588000'),
(184, 'c9c86960-2906-46b3-af8d-b3a53393627a', '2ac7f079-a489-42b7-b0eb-eb540eac90aa', '1', 1, '2021-04-20 02:58:11.594000'),
(185, 'c9c86960-2906-46b3-af8d-b3a53393627a', 'f02b38bb-9354-484f-997d-8cc23a21ea5d', '1', 1, '2021-04-20 02:58:11.598000'),
(186, 'c9c86960-2906-46b3-af8d-b3a53393627a', '4ed61265-daa7-472c-a8aa-dbe1c46e8847', '1', 1, '2021-04-20 02:58:11.598000'),
(187, 'c9c86960-2906-46b3-af8d-b3a53393627a', '08f553aa-0138-4b3a-8da5-7ffceca100d4', '1', 1, '2021-04-20 02:58:11.598000'),
(188, 'c9c86960-2906-46b3-af8d-b3a53393627a', 'd246a3ad-4463-408b-b21a-cb64b2991b56', '1', 1, '2021-04-20 02:58:11.605000'),
(189, 'c9c86960-2906-46b3-af8d-b3a53393627a', '9a2e2748-7dda-49e7-83a8-b6ddbb327709', '1', 1, '2021-04-20 02:58:11.608000'),
(190, 'c9c86960-2906-46b3-af8d-b3a53393627a', 'be0be9bc-1d99-4f74-a793-346ba709b40a', '1', 1, '2021-04-20 02:58:11.620000'),
(191, 'c9c86960-2906-46b3-af8d-b3a53393627a', 'ae440a60-493c-4ed4-9ac5-56aba24308b8', '1', 1, '2021-04-20 02:58:11.624000'),
(192, 'c9c86960-2906-46b3-af8d-b3a53393627a', '30527a8c-fce6-4d9d-8619-5b89a1704610', '1', 1, '2021-04-20 02:58:11.625000'),
(193, 'c9c86960-2906-46b3-af8d-b3a53393627a', '3d0a52fc-67a2-4583-b341-814d475e6df5', '1', 1, '2021-04-20 02:58:11.629000'),
(194, 'c9c86960-2906-46b3-af8d-b3a53393627a', '52a1ce6f-40b7-4425-af15-a4b7a80ee753', '1', 1, '2021-04-20 02:58:11.629000'),
(195, 'c9c86960-2906-46b3-af8d-b3a53393627a', '544e6139-24cf-4b39-812b-d28b53a15dd2', '1', 1, '2021-04-20 02:58:11.629000'),
(196, 'c9c86960-2906-46b3-af8d-b3a53393627a', '0e70a82e-bd14-41af-9d93-ceaa5de7bcc6', '1', 1, '2021-04-20 02:58:11.641000'),
(197, 'c9c86960-2906-46b3-af8d-b3a53393627a', '1bdc8ca9-f60c-4fcd-8cc0-6165646443a2', '1', 1, '2021-04-20 02:58:11.646000'),
(198, 'c9c86960-2906-46b3-af8d-b3a53393627a', '12423792-d9e7-479a-bb6e-697e0e8a5799', '1', 1, '2021-04-20 02:58:11.645000'),
(199, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'ef9c7089-1eaa-4c34-9651-ef9b5d6982ab', '1', 1, '2021-04-20 02:58:22.502000'),
(200, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '24977dd2-59d7-43be-b7a3-fed088daa1c0', '1', 1, '2021-04-20 02:58:22.503000'),
(201, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '5a0cf89f-0492-420b-89c7-213c7f559ddd', '1', 1, '2021-04-20 02:58:22.509000'),
(202, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'a80fb459-2576-4d44-86c2-cf7488ade6d5', '1', 1, '2021-04-20 02:58:22.513000'),
(203, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'e82bafa6-7780-4c7a-b8d6-7f4c363bc210', '1', 1, '2021-04-20 02:58:22.513000'),
(204, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'd0885df7-af2e-47bb-a0c2-c645a4933b53', '1', 1, '2021-04-20 02:58:22.518000'),
(205, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '4be9a648-acd6-4704-812f-ba7fa19708d3', '1', 1, '2021-04-20 02:58:22.541000'),
(206, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '702b944a-6c94-4cf9-b116-8e124a084daf', '1', 1, '2021-04-20 02:58:22.543000'),
(207, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'ec5d8235-2d0c-4873-ac6d-76964217b1a5', '1', 1, '2021-04-20 02:58:22.542000'),
(208, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'fe4922d2-3e72-43d5-babe-72e0da67cbc5', '1', 1, '2021-04-20 02:58:22.548000'),
(209, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '26edff09-06b4-4330-a275-40460a8c3d81', '1', 1, '2021-04-20 02:58:22.547000'),
(210, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '1435cb86-1f05-4a54-91b4-a91494affa19', '1', 1, '2021-04-20 02:58:22.548000'),
(211, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'f53fcbd4-0f28-41dd-a314-e56074726e4e', '1', 1, '2021-04-20 02:58:22.591000'),
(212, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'b2aea6dc-f02f-4761-8235-8d68077a1a82', '1', 1, '2021-04-20 02:58:22.591000'),
(213, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '7a071dd1-8d8b-4673-8a6a-0efacc780195', '1', 1, '2021-04-20 02:58:22.591000'),
(214, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '49c72879-935a-4e67-807a-d20001a66cbf', '1', 1, '2021-04-20 02:58:22.596000'),
(215, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '5150014f-83b2-407e-b485-086cff1e62fd', '1', 1, '2021-04-20 02:58:22.596000'),
(216, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'b09103c9-031a-40d1-8a86-f9761ccab62f', '1', 1, '2021-04-20 02:58:22.596000'),
(217, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'ea84350b-380b-44d2-90ab-eba318fdaadb', '1', 1, '2021-04-20 02:58:22.617000'),
(218, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '8f2054ac-180b-4bbc-890a-f880c5db2d0e', '1', 1, '2021-04-20 02:58:22.618000'),
(219, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'a117238c-fcdc-48ab-9da8-267964fabbf8', '1', 1, '2021-04-20 02:58:22.618000'),
(220, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'ca8bcee7-7004-4da1-b54e-5f4a09443353', '1', 1, '2021-04-20 02:58:22.622000'),
(221, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'dcce5eaf-fcd5-420e-b307-790f6ec78174', '1', 1, '2021-04-20 02:58:22.623000'),
(222, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'd2970091-e35f-4169-8239-9377503cec00', '1', 1, '2021-04-20 02:58:22.624000'),
(223, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '8359d3bd-2774-4969-9811-0937dd5f83f8', '1', 1, '2021-04-20 02:58:22.661000'),
(224, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '22f7bc15-6cc5-45bd-b1ca-c345fc407deb', '1', 1, '2021-04-20 02:58:22.662000'),
(225, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '456f4c3b-60be-4fb5-a61b-e988cc991f08', '1', 1, '2021-04-20 02:58:22.666000'),
(226, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '82f179fc-b618-4a9c-a7ca-d0be6acf0814', '1', 1, '2021-04-20 02:58:22.666000'),
(227, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '4362a0d2-36b7-44ac-8d85-dddd5fe541b1', '1', 1, '2021-04-20 02:58:22.666000'),
(228, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'e6cc9f97-15b7-4f70-80da-6dbe8ba31990', '1', 1, '2021-04-20 02:58:22.667000'),
(229, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'd13e44cd-b2c9-4683-92cc-bce21c7fdf31', '1', 1, '2021-04-20 02:58:22.708000'),
(230, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '1d9a5e98-50ca-4ff7-abbc-542a5bcc3780', '1', 1, '2021-04-20 02:58:22.709000'),
(231, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'cb82a021-369f-4bd3-acfa-4b9fb43a8c73', '1', 1, '2021-04-20 02:58:22.708000'),
(232, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '403c62b6-5fca-4695-8c05-91870c980486', '1', 1, '2021-04-20 02:58:22.710000'),
(233, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '6f2087b6-8879-45a4-898d-a75c0f2d282f', '1', 1, '2021-04-20 02:58:22.709000'),
(234, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '082a092a-99dc-4d7c-8660-588862d8e57a', '1', 1, '2021-04-20 02:58:22.713000'),
(235, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'eb0893d4-f542-481f-bbec-99f343d31990', '1', 1, '2021-04-20 02:58:22.744000'),
(236, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '60a12a73-a9ea-4f43-a903-f6a8fddd5f58', '1', 1, '2021-04-20 02:58:22.744000'),
(237, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'ee55a54b-fe2c-4539-8d1c-20297f05045a', '1', 1, '2021-04-20 02:58:22.744000'),
(238, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'dcb3ecb1-44eb-4b8f-9c43-97ed6cdf2cb2', '1', 1, '2021-04-20 02:58:22.745000'),
(239, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'b13ab96f-6009-485d-bec3-f9cd4ec5c3b5', '1', 1, '2021-04-20 02:58:22.746000'),
(240, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '04a47172-106c-490c-bd68-5f74df3b53b8', '1', 1, '2021-04-20 02:58:22.746000'),
(241, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'd9839da2-7379-437c-ba6e-62cd2eeeef78', '1', 1, '2021-04-20 02:58:22.776000'),
(242, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '6eca20d7-6c35-4ef0-af76-e9e630881efa', '1', 1, '2021-04-20 02:58:22.776000'),
(243, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '5d121f66-6df2-4ce0-8578-c4307986f481', '1', 1, '2021-04-20 02:58:22.776000'),
(244, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'ecc41c20-d2e8-495c-83da-f6431657e6af', '1', 1, '2021-04-20 02:58:22.778000'),
(245, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '141f2725-dedc-4b36-a440-8ce944a2f9ef', '1', 1, '2021-04-20 02:58:22.776000'),
(246, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'ae152a5c-6f1d-4f45-a90c-f9c0982b00fa', '1', 1, '2021-04-20 02:58:22.778000'),
(247, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'e8ebfce5-d115-4ff1-a0e8-c0d8c11ee8ed', '1', 1, '2021-04-20 02:58:22.816000'),
(248, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '253dae18-16fc-439c-843a-a22f384c9a38', '1', 1, '2021-04-20 02:58:22.821000'),
(249, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '372b778c-64a3-4ffa-9105-debce92467e0', '1', 1, '2021-04-20 02:58:22.822000'),
(250, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'c5e5c121-f029-490c-9994-d7c17f10a5e5', '1', 1, '2021-04-20 02:58:22.821000'),
(251, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'f654a04f-0180-4c60-b791-0f5c9b9154c7', '1', 1, '2021-04-20 02:58:22.822000'),
(252, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '8f720cc6-41f7-4e28-bcd2-8b1307bc10f5', '1', 1, '2021-04-20 02:58:22.822000'),
(253, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', 'c0d47bbf-1129-44c8-a940-be54eff3a758', '1', 1, '2021-04-20 02:58:22.841000'),
(254, 'ebd6092b-cbc9-4743-979c-4ec9204b5b06', '428f404a-8a4e-4b29-83eb-83e257d98175', '1', 1, '2021-04-20 02:58:22.846000'),
(255, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '3aca4148-0876-489b-bff8-e0928f2a827e', '1', 1, '2021-04-20 03:03:24.417000'),
(256, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '74db1f1e-eaaf-4f9a-a926-cee327523f04', '1', 1, '2021-04-20 03:03:24.418000'),
(257, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', 'c2097f3f-45e0-4324-a4c4-ed95d951638e', '1', 1, '2021-04-20 03:03:24.422000'),
(258, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '6d44c10f-d1ca-4bd4-a789-237cfad33a4a', '1', 1, '2021-04-20 03:03:24.424000'),
(259, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '094e258f-99cd-4df0-8cf0-1bb91c375558', '1', 1, '2021-04-20 03:03:24.427000'),
(260, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', 'fa4718c7-2f7a-4155-8785-094f52afb221', '1', 1, '2021-04-20 03:03:24.430000'),
(261, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '12d45269-a633-4f86-90a8-88af7e287eea', '1', 1, '2021-04-20 03:03:24.454000'),
(262, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', 'ea8fe188-82b4-4b51-91fb-42aa2e616e4e', '1', 1, '2021-04-20 03:03:24.454000'),
(263, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '1563c5a3-1d84-4227-8db4-3a9d730da69d', '1', 1, '2021-04-20 03:03:24.455000'),
(264, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '5ca3c78f-b539-41b4-b6fc-fc3997268356', '1', 1, '2021-04-20 03:03:24.458000'),
(265, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '902278c3-3b26-4e96-a8c2-772bc01fdbdb', '1', 1, '2021-04-20 03:03:24.464000'),
(266, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '5fbcadd7-6f76-40b6-96f4-25bcae83349b', '1', 1, '2021-04-20 03:03:24.459000'),
(267, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '7ce1f6ae-2f40-4568-9a8c-b7544deafcb6', '1', 1, '2021-04-20 03:03:24.487000'),
(268, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', 'f8fcd409-8a95-44fc-a718-1e862a0f2237', '1', 1, '2021-04-20 03:03:24.493000'),
(269, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '9a71da4c-2c6c-4016-90d6-16f4f4cd3466', '1', 1, '2021-04-20 03:03:24.494000'),
(270, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', 'd0bc3ea9-dcfc-4e34-b11a-9d817f5eed98', '1', 1, '2021-04-20 03:03:24.494000'),
(271, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '1bcf3fcf-e94a-4697-bd5d-ff0f79a1b1b7', '1', 1, '2021-04-20 03:03:24.494000'),
(272, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '6dd8ce01-7998-469e-91e7-12df0a439f7c', '1', 1, '2021-04-20 03:03:24.494000'),
(273, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '1f7c129e-5b6c-40f2-9604-f01cb0ae84cb', '1', 1, '2021-04-20 03:03:24.513000'),
(274, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '71c52de7-543d-4d2f-99c9-20d83ac2849d', '1', 1, '2021-04-20 03:03:24.522000'),
(275, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', 'a31da318-6d98-4db8-922f-8818b21e0207', '1', 1, '2021-04-20 03:03:24.522000'),
(276, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '5dce8642-02c4-415c-81b4-321dd3fe7697', '1', 1, '2021-04-20 03:03:24.523000'),
(277, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', 'beb1bfe8-bf3b-4724-8d25-d63142cd92cf', '1', 1, '2021-04-20 03:03:24.524000'),
(278, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '2ff08d12-07e0-4877-bc2f-28f209efa342', '1', 1, '2021-04-20 03:03:24.524000'),
(279, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', 'a26babce-2d4f-47ce-9979-aedfa6d747b3', '1', 1, '2021-04-20 03:03:24.541000'),
(280, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '6989c28e-703d-4480-a6a6-71bd597e0ece', '1', 1, '2021-04-20 03:03:24.551000'),
(281, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '086f7e56-557b-4cbf-870f-8e698109c7f2', '1', 1, '2021-04-20 03:03:24.551000'),
(282, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', 'e486aa78-0a7f-4d40-9802-b72293bb364c', '1', 1, '2021-04-20 03:03:24.555000'),
(283, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', 'd9d3bb63-8c3d-4cf5-a048-0d2115648f0d', '1', 1, '2021-04-20 03:03:24.556000'),
(284, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '420f2ec6-5766-4b07-9d08-179963b99411', '1', 1, '2021-04-20 03:03:24.560000'),
(285, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '651d6372-3c2b-4e9b-affb-b8be3ea15132', '1', 1, '2021-04-20 03:03:24.563000'),
(286, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', 'b0b5ab1c-4e21-4874-aed2-383c37616353', '1', 1, '2021-04-20 03:03:24.575000'),
(287, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '699ad43a-b42c-4a26-b34d-f347ebbea8ef', '1', 1, '2021-04-20 03:03:24.575000'),
(288, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '0294a70e-39bb-46e0-88cd-1334337b92fe', '1', 1, '2021-04-20 03:03:24.579000'),
(289, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '50828f2d-6c3e-4f30-bbaf-7024276aa7b2', '1', 1, '2021-04-20 03:03:24.580000'),
(290, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '3fd54f0f-42ce-4723-9084-f687e61cdf10', '1', 1, '2021-04-20 03:03:24.584000'),
(291, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '99411ab0-973a-4a79-b279-09ae1f830e59', '1', 1, '2021-04-20 03:03:24.584000'),
(292, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '2a05a877-98e7-42d6-9d7b-df4e857e7058', '1', 1, '2021-04-20 03:03:24.599000'),
(293, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', 'b53c1863-4a2f-4453-97dc-92e5ce22805d', '1', 1, '2021-04-20 03:03:24.599000'),
(294, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '55acffec-f863-48e8-a543-5814fb3534f8', '1', 1, '2021-04-20 03:03:24.604000'),
(295, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', 'e65f43b8-cce6-4b05-9417-388ca9e443ee', '1', 1, '2021-04-20 03:03:24.604000'),
(296, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', 'c5c05075-58c6-4914-8788-70e6c578df7f', '1', 1, '2021-04-20 03:03:24.610000'),
(297, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', 'a5dfb87e-9e81-476d-918c-97de9c0ed0bd', '1', 1, '2021-04-20 03:03:24.610000'),
(298, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '2198fb72-9fac-4e29-9d1e-3ef371bde9ee', '1', 1, '2021-04-20 03:03:24.618000'),
(299, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '3eef41f7-5faa-4608-b25e-a0d68283f3db', '1', 1, '2021-04-20 03:03:24.619000'),
(300, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '6c7a0e66-ec47-4fad-97e9-f8ce043e6e38', '1', 1, '2021-04-20 03:03:24.623000'),
(301, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '46ad785a-75d5-4f8b-a4ea-9482fe090ef4', '1', 1, '2021-04-20 03:03:24.625000'),
(302, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', 'af58b835-efd7-42b5-ac31-682c766bd6a5', '1', 1, '2021-04-20 03:03:24.626000'),
(303, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '2cbd91b0-1740-42af-a958-5540e65e07ee', '1', 1, '2021-04-20 03:03:24.632000'),
(304, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '90215943-de50-4676-90c6-1072611eea95', '1', 1, '2021-04-20 03:03:24.637000'),
(305, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '7e0440cc-cb5e-4cac-9b17-30d8a3c4b42e', '1', 1, '2021-04-20 03:03:24.643000'),
(306, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', 'b926db60-a449-4e47-adfc-1c85c5c90669', '1', 1, '2021-04-20 03:03:24.643000'),
(307, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '591c82f6-0669-44ad-b93d-38b99f1c06bf', '1', 1, '2021-04-20 03:03:24.652000'),
(308, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', 'b12adeba-cad2-4a06-aa7b-c936fbd516c6', '1', 1, '2021-04-20 03:03:24.653000'),
(309, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '2a2658c8-ff9a-4ff1-a3b2-311c2f807c37', '1', 1, '2021-04-20 03:03:24.654000'),
(310, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', 'de513f0c-7245-4a22-be7b-bedf13373cc6', '1', 1, '2021-04-20 03:03:24.657000'),
(311, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', 'f8ece7a7-4188-46f9-aea6-dfd53b693b45', '1', 1, '2021-04-20 03:03:24.662000'),
(312, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', 'bd1fbcc5-bd2a-4a9b-a631-94c3f5e19905', '1', 1, '2021-04-20 03:03:24.664000'),
(313, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '67a88f8f-027d-45d8-ab1b-b082aa607195', '1', 1, '2021-04-20 03:03:24.678000'),
(314, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', 'd4a50ed9-4f9e-420b-abae-2c5933dd5f24', '1', 1, '2021-04-20 03:03:24.685000'),
(315, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '94c6d607-303b-45a7-b63d-066818c576d2', '1', 1, '2021-04-20 03:03:24.685000'),
(316, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '1471cd18-2e91-48f7-90dc-47c5ae37e2a5', '1', 1, '2021-04-20 03:03:24.685000'),
(317, 'cd5eba66-6b50-4e7a-829b-1e2da4c4667a', '96594cea-148f-48c3-88f8-55fae4ca1ec4', '1', 1, '2021-04-20 03:03:24.696000'),
(318, '3be97f46-88d7-4ac2-8934-55e93fdb7863', '6ce4dbd1-6619-430e-b85b-2dafbf2c5045', '1', 1, '2021-04-20 03:04:43.826000'),
(319, '3be97f46-88d7-4ac2-8934-55e93fdb7863', '4bc26b22-b8ac-4019-b373-812755174230', '1', 1, '2021-04-20 03:04:43.839000'),
(320, '3be97f46-88d7-4ac2-8934-55e93fdb7863', '4c088731-b68c-4afd-a2ea-eee37c6b8b26', '1', 1, '2021-04-20 03:04:43.843000'),
(321, '3be97f46-88d7-4ac2-8934-55e93fdb7863', '88afe462-0878-4b8c-b8a6-57893946e205', '1', 1, '2021-04-20 03:04:43.843000'),
(322, '3be97f46-88d7-4ac2-8934-55e93fdb7863', '08388ebd-c9ab-4f60-b3f8-b361993ce7c2', '1', 1, '2021-04-20 03:04:43.853000'),
(323, '3be97f46-88d7-4ac2-8934-55e93fdb7863', 'aa5ad664-e469-4160-be93-f09b532244e6', '1', 1, '2021-04-20 03:04:43.854000'),
(324, '3be97f46-88d7-4ac2-8934-55e93fdb7863', '90fa06dd-54bc-4b26-a99d-593d53612411', '1', 1, '2021-04-20 03:04:43.854000'),
(325, '3be97f46-88d7-4ac2-8934-55e93fdb7863', 'bed1feae-2f97-4760-b6ed-f0c190d73e16', '1', 1, '2021-04-20 03:04:43.867000'),
(326, '3be97f46-88d7-4ac2-8934-55e93fdb7863', '11490d6b-11bb-4ae4-9d79-83e9d83dd9b0', '1', 1, '2021-04-20 03:04:43.871000'),
(327, '3be97f46-88d7-4ac2-8934-55e93fdb7863', 'f4955313-f6f9-4d26-ac54-f0d7261604e3', '1', 1, '2021-04-20 03:04:43.875000'),
(328, '3be97f46-88d7-4ac2-8934-55e93fdb7863', '42ae1b35-094e-4b5f-83ed-d4315f9c40aa', '1', 1, '2021-04-20 03:04:43.888000'),
(329, '3be97f46-88d7-4ac2-8934-55e93fdb7863', '2d0ec0bd-1282-4f78-a7ba-dfb684e2180a', '1', 1, '2021-04-20 03:04:43.888000'),
(330, '3be97f46-88d7-4ac2-8934-55e93fdb7863', 'cd5d0b58-1f39-4b5c-a1cf-6a497dee022c', '1', 1, '2021-04-20 03:04:43.889000'),
(331, '3be97f46-88d7-4ac2-8934-55e93fdb7863', '2156fcde-a29d-4907-9b4e-cec6af7b220d', '1', 1, '2021-04-20 03:04:43.894000'),
(332, '3be97f46-88d7-4ac2-8934-55e93fdb7863', 'c4015f64-f365-4238-8b4a-bb7e7960b53a', '1', 1, '2021-04-20 03:04:43.896000'),
(333, '3be97f46-88d7-4ac2-8934-55e93fdb7863', '3f787edd-293c-4240-9f5e-21704706c683', '1', 1, '2021-04-20 03:04:43.900000'),
(334, '3be97f46-88d7-4ac2-8934-55e93fdb7863', '0039bb2b-1453-4050-8860-9fc183b51eca', '1', 1, '2021-04-20 03:04:43.914000'),
(335, '3be97f46-88d7-4ac2-8934-55e93fdb7863', '07ffa40c-d6ad-4557-9d41-fa89aad8438d', '1', 1, '2021-04-20 03:04:43.914000'),
(336, '3be97f46-88d7-4ac2-8934-55e93fdb7863', 'd4bd6b67-335d-41ff-aaaa-cdad3c5a84b8', '1', 1, '2021-04-20 03:04:43.914000'),
(337, '3be97f46-88d7-4ac2-8934-55e93fdb7863', 'ecc3763f-b071-4c0f-9b1f-5a8d727bd793', '1', 1, '2021-04-20 03:04:43.919000'),
(338, '3be97f46-88d7-4ac2-8934-55e93fdb7863', '2e5d7e5d-48ca-4f2e-b4ce-010e87ad8673', '1', 1, '2021-04-20 03:04:43.921000'),
(339, '3be97f46-88d7-4ac2-8934-55e93fdb7863', 'b6f8eb1b-5563-466c-a23e-9777ade5c3d2', '1', 1, '2021-04-20 03:04:43.922000'),
(340, '3be97f46-88d7-4ac2-8934-55e93fdb7863', 'e2578603-f0c5-45b8-9c29-84c8c8bf3af6', '1', 1, '2021-04-20 03:04:43.944000'),
(341, '3be97f46-88d7-4ac2-8934-55e93fdb7863', '38db5cd2-7068-4bd7-9620-7a3165258e01', '1', 1, '2021-04-20 03:04:43.943000'),
(342, '3be97f46-88d7-4ac2-8934-55e93fdb7863', 'c0076b8e-6b03-4c7d-abf4-c18fdf2da667', '1', 1, '2021-04-20 03:04:43.944000'),
(343, '3be97f46-88d7-4ac2-8934-55e93fdb7863', '978eccbd-ac8f-459d-bd27-8e33924263cf', '1', 1, '2021-04-20 03:04:43.946000'),
(344, '3be97f46-88d7-4ac2-8934-55e93fdb7863', '8e81d4e8-6472-4533-85cf-463d4e68b5c1', '1', 1, '2021-04-20 03:04:43.948000'),
(345, '3be97f46-88d7-4ac2-8934-55e93fdb7863', '22f8ce84-19b0-4836-b081-82cfa1905995', '1', 1, '2021-04-20 03:04:43.948000'),
(346, '3be97f46-88d7-4ac2-8934-55e93fdb7863', '65a1c46d-c5b5-4ec1-b1d2-e92b00ea6933', '1', 1, '2021-04-20 03:04:44.020000'),
(347, '3be97f46-88d7-4ac2-8934-55e93fdb7863', '9b0b0040-e5e6-4a97-babe-789ae24005bc', '1', 1, '2021-04-20 03:04:44.023000'),
(348, '3be97f46-88d7-4ac2-8934-55e93fdb7863', 'e9f7c56c-6332-4a7b-a89a-9b226e249dc9', '1', 1, '2021-04-20 03:04:44.021000'),
(349, '3be97f46-88d7-4ac2-8934-55e93fdb7863', '5248753d-9c47-4e09-93c9-5cc4764d8eeb', '1', 1, '2021-04-20 03:04:44.025000'),
(350, '3be97f46-88d7-4ac2-8934-55e93fdb7863', '1d7f628a-8656-4c53-9ad4-061990439eba', '1', 1, '2021-04-20 03:04:44.025000'),
(351, '3be97f46-88d7-4ac2-8934-55e93fdb7863', '4189a96b-150e-44e1-bbac-f466ea0c8d01', '1', 1, '2021-04-20 03:04:44.028000'),
(352, '3be97f46-88d7-4ac2-8934-55e93fdb7863', '38b6d361-51e5-4119-8ea8-b0ad08914154', '1', 1, '2021-04-20 03:04:44.060000'),
(353, '3be97f46-88d7-4ac2-8934-55e93fdb7863', 'aa8d238c-75af-42c8-8092-95a2b7988e0a', '1', 1, '2021-04-20 03:04:44.064000'),
(354, '3be97f46-88d7-4ac2-8934-55e93fdb7863', 'a034b171-727e-427f-857a-7015e45c1e0e', '1', 1, '2021-04-20 03:04:44.067000'),
(355, '3be97f46-88d7-4ac2-8934-55e93fdb7863', '9bc7120b-e5d0-412b-b33c-05444b4e5ccb', '1', 1, '2021-04-20 03:04:44.067000'),
(356, '3be97f46-88d7-4ac2-8934-55e93fdb7863', '982cdf66-b407-4cb1-848c-bf546c2457ba', '1', 1, '2021-04-20 03:04:44.067000'),
(357, '3be97f46-88d7-4ac2-8934-55e93fdb7863', 'eb92dd3b-dd45-4f0e-85e8-96d0ccec7ec8', '1', 1, '2021-04-20 03:04:44.068000'),
(358, '3be97f46-88d7-4ac2-8934-55e93fdb7863', 'c280e5fb-49b6-4bc4-8b3b-9e75cba4c717', '1', 1, '2021-04-20 03:04:44.092000'),
(359, '3be97f46-88d7-4ac2-8934-55e93fdb7863', '72d6a8be-82f3-4761-8828-ea1449a32a30', '1', 1, '2021-04-20 03:04:44.098000'),
(360, '3be97f46-88d7-4ac2-8934-55e93fdb7863', 'c1488c76-94ac-425c-901c-1f233ef8ed8b', '1', 1, '2021-04-20 03:04:44.098000'),
(361, '3be97f46-88d7-4ac2-8934-55e93fdb7863', 'b0aaca64-7678-48ec-ab27-82c108b4c5ab', '1', 1, '2021-04-20 03:04:44.099000'),
(362, '3be97f46-88d7-4ac2-8934-55e93fdb7863', 'd45047e8-33d7-4eac-81ed-74961bb899f3', '1', 1, '2021-04-20 03:04:44.103000'),
(363, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', 'd06bfd00-142f-4f76-b692-5179228dd789', '1', 1, '2021-04-20 03:05:07.398000'),
(364, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '9da3c1a8-3975-4bf5-9bce-1041e01075a4', '1', 1, '2021-04-20 03:05:07.400000'),
(365, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '81225f98-991f-46af-b0e9-ccbaa1947f5a', '1', 1, '2021-04-20 03:05:07.404000'),
(366, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '9e40b6cd-ead9-445e-a70a-f7a59dcd86b6', '1', 1, '2021-04-20 03:05:07.403000'),
(367, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '2c1a0a5e-7a03-406b-982e-bcf212d272d8', '1', 1, '2021-04-20 03:05:07.409000'),
(368, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', 'c8b4ca04-1343-4365-a3d7-0f4edc7f7869', '1', 1, '2021-04-20 03:05:07.413000'),
(369, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '47b4df7f-76f6-49d1-8721-713009c9963e', '1', 1, '2021-04-20 03:05:07.429000'),
(370, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '8b7fcef9-14d3-4e70-aebd-01351d521f41', '1', 1, '2021-04-20 03:05:07.430000'),
(371, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', 'd654d6c7-5a8e-4545-8671-15ee700e6957', '1', 1, '2021-04-20 03:05:07.430000'),
(372, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', 'd7cd2060-a018-41b4-9c41-eaba5ea2997f', '1', 1, '2021-04-20 03:05:07.429000'),
(373, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '88d60bdf-09fe-4bfe-baff-107e21f8bbce', '1', 1, '2021-04-20 03:05:07.458000'),
(374, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', 'eaebf57d-4849-40cb-8e99-5c2e12092e6f', '1', 1, '2021-04-20 03:05:07.458000'),
(375, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', 'd2a9dfa7-9611-45cb-8591-f6b88267cd1b', '1', 1, '2021-04-20 03:05:07.464000'),
(376, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '37dce084-cc74-4539-b383-3f3ad8fa4c23', '1', 1, '2021-04-20 03:05:07.465000'),
(377, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '26d1811c-fdf9-468d-849e-aaa0f163964a', '1', 1, '2021-04-20 03:05:07.466000'),
(378, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '79e55c08-ebf1-4336-9005-40edc361d5b9', '1', 1, '2021-04-20 03:05:07.469000'),
(379, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '43d5175c-349d-4a49-b8e5-2acc6582f869', '1', 1, '2021-04-20 03:05:07.478000'),
(380, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', 'f06db259-1f91-44aa-98a1-483ed5413131', '1', 1, '2021-04-20 03:05:07.482000'),
(381, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '4078244f-097b-411b-9b1f-c801a219c7d1', '1', 1, '2021-04-20 03:05:07.485000'),
(382, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '0f855308-64da-4af2-a12f-c328764e8fe4', '1', 1, '2021-04-20 03:05:07.489000'),
(383, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', 'ddedc60e-190f-4ea6-b5d7-0844ed726f38', '1', 1, '2021-04-20 03:05:07.489000'),
(384, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '50ee6f3d-2460-4c84-8a24-a9c23f119c81', '1', 1, '2021-04-20 03:05:07.492000'),
(385, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '68afe15b-e6ee-43c5-92e6-654a1b986757', '1', 1, '2021-04-20 03:05:07.500000'),
(386, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '1b8fea6e-a9dc-48df-9e71-e78bb33d1586', '1', 1, '2021-04-20 03:05:07.506000'),
(387, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', 'd5abb954-c360-4fe9-8c17-3209590d1002', '1', 1, '2021-04-20 03:05:07.518000'),
(388, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', 'e0e23dbf-3c17-4d45-b5d6-699a4a32f9f7', '1', 1, '2021-04-20 03:05:07.525000'),
(389, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', 'f22b2bcd-e378-4f96-bc42-db980a22b872', '1', 1, '2021-04-20 03:05:07.525000'),
(390, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '215513af-e3a4-484a-a9d5-74bd400d3036', '1', 1, '2021-04-20 03:05:07.538000'),
(391, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', 'aacdf51f-3dff-4f5c-8452-c2d3215a57f9', '1', 1, '2021-04-20 03:05:07.538000'),
(392, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', 'bca21bbb-364b-4c0e-8d50-483bd5948f5a', '1', 1, '2021-04-20 03:05:07.543000'),
(393, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '483ff135-9647-49a8-ae76-704601164e89', '1', 1, '2021-04-20 03:05:07.548000'),
(394, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '20fda2de-7c3e-47ba-b123-c2c5692db901', '1', 1, '2021-04-20 03:05:07.558000'),
(395, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', 'bf29bddc-f349-4cd1-a3b5-37bd67fa93b0', '1', 1, '2021-04-20 03:05:07.556000'),
(396, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '359417e1-fbfc-44cd-9494-c6745da9227e', '1', 1, '2021-04-20 03:05:07.578000'),
(397, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '7528233b-48ac-4e66-b626-410196547156', '1', 1, '2021-04-20 03:05:07.580000'),
(398, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '0baccf97-ecb5-4f21-af55-94e9cd4f6e27', '1', 1, '2021-04-20 03:05:07.578000'),
(399, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '27a097d9-70b6-4efb-a298-7a4206f03dc8', '1', 1, '2021-04-20 03:05:07.584000'),
(400, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', 'b0d2d8c2-dc1a-4bb8-be11-a70691649f16', '1', 1, '2021-04-20 03:05:07.607000'),
(401, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '9308c183-65d8-4f3f-8120-fdf61feafc81', '1', 1, '2021-04-20 03:05:07.607000'),
(402, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', 'dad9921a-7cf1-4b4f-982e-bf71f857b950', '1', 1, '2021-04-20 03:05:07.617000'),
(403, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '54848fce-faa8-43a8-bf5b-9e777c92d62a', '1', 1, '2021-04-20 03:05:07.617000'),
(404, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', 'ee917d19-8053-4623-9133-bd61e8398788', '1', 1, '2021-04-20 03:05:07.619000'),
(405, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', 'f76f1248-b1ae-42de-ba96-0284cc4709f2', '1', 1, '2021-04-20 03:05:07.626000'),
(406, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '0c2a73b4-1133-4c5a-b8a2-c1ad33ffacef', '1', 1, '2021-04-20 03:05:07.637000'),
(407, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '89abfd6d-eae1-4c7a-93b0-84306b81ff01', '1', 1, '2021-04-20 03:05:07.637000'),
(408, '8d6aabfa-6ed8-49fd-97b1-3ddbba2c2005', '297e836a-94b9-4192-9465-ff8418d0ce66', '1', 1, '2021-04-20 03:05:07.645000'),
(409, '3a472cae-b24f-4beb-9f6f-903ad0974834', '43986bc4-314a-4933-99e6-32c009077972', '1', 1, '2021-04-20 03:05:37.195000'),
(410, '3a472cae-b24f-4beb-9f6f-903ad0974834', '3d533718-13ae-4755-964a-6225442a4ad2', '1', 1, '2021-04-20 03:05:37.197000'),
(411, '3a472cae-b24f-4beb-9f6f-903ad0974834', '55de0634-cc03-47a4-acce-250550d17674', '1', 1, '2021-04-20 03:05:37.199000'),
(412, '3a472cae-b24f-4beb-9f6f-903ad0974834', '63e716bd-a8d9-4ac9-b035-c4d717333d14', '1', 1, '2021-04-20 03:05:37.197000'),
(413, '3a472cae-b24f-4beb-9f6f-903ad0974834', '98d91fff-e422-4910-aee8-d7e4357c1412', '1', 1, '2021-04-20 03:05:37.206000'),
(414, '3a472cae-b24f-4beb-9f6f-903ad0974834', '4b073875-883e-43f9-9810-05dcbea0e94e', '1', 1, '2021-04-20 03:05:37.209000'),
(415, '3a472cae-b24f-4beb-9f6f-903ad0974834', 'd5bc09a8-8257-40df-b1ae-729519351c8c', '1', 1, '2021-04-20 03:05:37.220000'),
(416, '3a472cae-b24f-4beb-9f6f-903ad0974834', '037f5386-6fb9-468a-b9c5-a2180dc51a62', '1', 1, '2021-04-20 03:05:37.223000'),
(417, '3a472cae-b24f-4beb-9f6f-903ad0974834', '06441132-7eff-45e3-9e53-c1973e638016', '1', 1, '2021-04-20 03:05:37.223000'),
(418, '3a472cae-b24f-4beb-9f6f-903ad0974834', 'efb2f79c-d5ea-4459-bc5f-6454dc70f82a', '1', 1, '2021-04-20 03:05:37.225000'),
(419, '3a472cae-b24f-4beb-9f6f-903ad0974834', '89436eca-6488-4ad2-9ddf-c851cfc9d3ec', '1', 1, '2021-04-20 03:05:37.228000'),
(420, '3a472cae-b24f-4beb-9f6f-903ad0974834', 'ec108045-4e74-4315-8721-989b7fdf8262', '1', 1, '2021-04-20 03:05:37.231000'),
(421, '3a472cae-b24f-4beb-9f6f-903ad0974834', '5203c54b-3198-4754-af85-a6c103583ed3', '1', 1, '2021-04-20 03:05:37.241000'),
(422, '3a472cae-b24f-4beb-9f6f-903ad0974834', '719b3bd9-73a6-4227-befc-2d1fe90abeb0', '1', 1, '2021-04-20 03:05:37.244000'),
(423, '3a472cae-b24f-4beb-9f6f-903ad0974834', '372e4526-b968-4a42-9bcc-528cd306cee9', '1', 1, '2021-04-20 03:05:37.245000');
INSERT INTO `textbookcontentchapterdeck` (`TextbookCCDeckId`, `TextbookContentChapterId`, `WordId`, `Status`, `Myorder`, `ModifyTime`) VALUES
(424, '3a472cae-b24f-4beb-9f6f-903ad0974834', '3d515849-1082-41ee-a27a-bfcf806b4003', '1', 1, '2021-04-20 03:05:37.250000'),
(425, '3a472cae-b24f-4beb-9f6f-903ad0974834', '071c3b0d-f21c-4f19-8d8e-b0dc2fea8ff1', '1', 1, '2021-04-20 03:05:37.249000'),
(426, '3a472cae-b24f-4beb-9f6f-903ad0974834', '5d0bd307-31a5-46ef-af53-04f00e07a147', '1', 1, '2021-04-20 03:05:37.254000'),
(427, '3a472cae-b24f-4beb-9f6f-903ad0974834', '59dce32d-81f7-4db4-83a6-6e0d98de95d9', '1', 1, '2021-04-20 03:05:37.259000'),
(428, '3a472cae-b24f-4beb-9f6f-903ad0974834', '0120bd3b-76fe-4bbe-bd2e-baee6cbe0188', '1', 1, '2021-04-20 03:05:37.265000'),
(429, '3a472cae-b24f-4beb-9f6f-903ad0974834', '2f3d9d03-c1f9-4d0a-b60e-66dee29b3822', '1', 1, '2021-04-20 03:05:37.269000'),
(430, '3a472cae-b24f-4beb-9f6f-903ad0974834', '811119b0-b709-49a0-9617-939214b96980', '1', 1, '2021-04-20 03:05:37.271000'),
(431, '3a472cae-b24f-4beb-9f6f-903ad0974834', 'e6424385-527b-4bac-9c88-478bfab904ab', '1', 1, '2021-04-20 03:05:37.271000'),
(432, '3a472cae-b24f-4beb-9f6f-903ad0974834', '475ba056-19cd-4994-9d16-5af265b28d4e', '1', 1, '2021-04-20 03:05:37.276000'),
(433, '3a472cae-b24f-4beb-9f6f-903ad0974834', 'c9e31566-cdba-45a3-b52c-e92a86abf0da', '1', 1, '2021-04-20 03:05:37.281000'),
(434, '3a472cae-b24f-4beb-9f6f-903ad0974834', '5305ed00-e963-40ac-bbdd-3cbef8748454', '1', 1, '2021-04-20 03:05:37.288000'),
(435, '3a472cae-b24f-4beb-9f6f-903ad0974834', '600b7bf9-636d-489a-8b09-bafaf0a35ea6', '1', 1, '2021-04-20 03:05:37.294000'),
(436, '3a472cae-b24f-4beb-9f6f-903ad0974834', '44c010c9-77f2-4de3-ab6e-87e0314190d1', '1', 1, '2021-04-20 03:05:37.298000'),
(437, '3a472cae-b24f-4beb-9f6f-903ad0974834', '18ed897a-710b-41f1-a82c-708fce16c01b', '1', 1, '2021-04-20 03:05:37.299000'),
(438, '3a472cae-b24f-4beb-9f6f-903ad0974834', '054031e0-dca2-4975-aebc-e1ad2c7d224b', '1', 1, '2021-04-20 03:05:37.299000'),
(439, '3a472cae-b24f-4beb-9f6f-903ad0974834', '80a6a532-df5d-4d18-809d-f7c222ae4153', '1', 1, '2021-04-20 03:05:37.304000'),
(440, '3a472cae-b24f-4beb-9f6f-903ad0974834', '7ba1ffb4-1c5c-4405-bce8-d7377086f66b', '1', 1, '2021-04-20 03:05:37.316000'),
(441, '3a472cae-b24f-4beb-9f6f-903ad0974834', '6a1216f9-ed39-4f36-86a0-58c750cfe690', '1', 1, '2021-04-20 03:05:37.318000'),
(442, '3a472cae-b24f-4beb-9f6f-903ad0974834', 'd704b7df-485d-4eff-bd3a-475be48d6d6d', '1', 1, '2021-04-20 03:05:37.324000'),
(443, '3a472cae-b24f-4beb-9f6f-903ad0974834', 'dafc778b-07f7-4ee8-9c23-ebfb28086363', '1', 1, '2021-04-20 03:05:37.323000'),
(444, '3a472cae-b24f-4beb-9f6f-903ad0974834', 'fa6d3299-331e-4863-97c0-a752f701b4e1', '1', 1, '2021-04-20 03:05:37.326000'),
(445, '3a472cae-b24f-4beb-9f6f-903ad0974834', 'c93fb912-e6d9-4e1f-812f-3425a4a256eb', '1', 1, '2021-04-20 03:05:37.334000'),
(446, '3a472cae-b24f-4beb-9f6f-903ad0974834', 'faa55226-0693-4884-8555-764dce61baa8', '1', 1, '2021-04-20 03:05:37.344000'),
(447, '3a472cae-b24f-4beb-9f6f-903ad0974834', '9ac23d7d-dc37-49b5-bcb7-1dc2893ebcec', '1', 1, '2021-04-20 03:05:37.345000'),
(448, '3a472cae-b24f-4beb-9f6f-903ad0974834', 'c37727b7-58fe-4891-803e-d2e514e0802d', '1', 1, '2021-04-20 03:05:37.349000'),
(449, '3a472cae-b24f-4beb-9f6f-903ad0974834', '4b8befb5-d6ed-44fa-ba32-c10a26ea3f5f', '1', 1, '2021-04-20 03:05:37.349000'),
(450, '3a472cae-b24f-4beb-9f6f-903ad0974834', '3b40a593-247d-40d8-96bc-89f185b01a16', '1', 1, '2021-04-20 03:05:37.351000'),
(451, '3a472cae-b24f-4beb-9f6f-903ad0974834', '5fe221ef-be11-4907-99ca-4da2a3fb293d', '1', 1, '2021-04-20 03:05:37.360000'),
(452, '3a472cae-b24f-4beb-9f6f-903ad0974834', '4d7c30cf-c3b5-4c61-9b97-38fa430d3292', '1', 1, '2021-04-20 03:05:37.367000'),
(453, '3a472cae-b24f-4beb-9f6f-903ad0974834', 'f43f99fc-81b1-4d36-b103-516a20761b09', '1', 1, '2021-04-20 03:05:37.369000'),
(454, '3a472cae-b24f-4beb-9f6f-903ad0974834', '2aee91dd-1d67-49f4-8d99-b414ac51d082', '1', 1, '2021-04-20 03:05:37.372000'),
(455, '3a472cae-b24f-4beb-9f6f-903ad0974834', '1b156c12-e8bc-4ad0-bbdc-dc443a5de251', '1', 1, '2021-04-20 03:05:37.374000'),
(456, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '22e7794f-5d13-42a1-92c8-00e112ac7c8f', '1', 1, '2021-04-20 03:05:43.218000'),
(457, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', 'e7379ff3-0216-404a-84d4-08e9b1aab208', '1', 1, '2021-04-20 03:05:43.219000'),
(458, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '9da8bd11-fe8d-4aff-9783-b0a1e533dda8', '1', 1, '2021-04-20 03:05:43.221000'),
(459, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '3e6503cb-2664-4f49-a118-a0b04e850b77', '1', 1, '2021-04-20 03:05:43.224000'),
(460, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '5932a24d-bb99-4874-9d64-1ad7be89dad6', '1', 1, '2021-04-20 03:05:43.227000'),
(461, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', 'e009dc44-44f5-4eb3-b98b-445471375996', '1', 1, '2021-04-20 03:05:43.227000'),
(462, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', 'cdba20c7-8512-48f9-b6db-524d78281dac', '1', 1, '2021-04-20 03:05:43.252000'),
(463, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '4166367c-276a-41a5-85e0-db41a63d32fd', '1', 1, '2021-04-20 03:05:43.253000'),
(464, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '89b97c2c-98e8-43ec-a04a-a066e3292ced', '1', 1, '2021-04-20 03:05:43.253000'),
(465, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '469eb040-2fcc-4a2c-8320-a3f3d5098fc9', '1', 1, '2021-04-20 03:05:43.254000'),
(466, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '8087cf6c-a012-4ccc-b7be-e1c4de752abc', '1', 1, '2021-04-20 03:05:43.255000'),
(467, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '2edd7785-555b-4d59-a25e-cf80127d2b06', '1', 1, '2021-04-20 03:05:43.255000'),
(468, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '7da5a96a-95fd-4818-997b-7e0b229f55d6', '1', 1, '2021-04-20 03:05:43.273000'),
(469, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '9b3cf670-456d-41bb-b239-b16f9ec6bd95', '1', 1, '2021-04-20 03:05:43.279000'),
(470, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '33610af5-cc27-4f43-af06-7790c6ac9341', '1', 1, '2021-04-20 03:05:43.280000'),
(471, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', 'fd5c9f18-7ba0-42df-b710-6f4ba8644aa9', '1', 1, '2021-04-20 03:05:43.280000'),
(472, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', 'd48094f1-3f44-4c37-a53b-53c3c254a7c9', '1', 1, '2021-04-20 03:05:43.279000'),
(473, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '9c5cfab7-6578-4048-b809-d7d9a51df40b', '1', 1, '2021-04-20 03:05:43.280000'),
(474, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', 'f53d2865-7f64-4c65-90a3-bdd222c9cece', '1', 1, '2021-04-20 03:05:43.296000'),
(475, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', 'f2881781-27f0-4aa0-85a8-21631018f3b5', '1', 1, '2021-04-20 03:05:43.305000'),
(476, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '341c86dd-7449-4394-b136-d705103948b0', '1', 1, '2021-04-20 03:05:43.307000'),
(477, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', 'e03148a1-abbb-4638-9ac5-0689976e6022', '1', 1, '2021-04-20 03:05:43.307000'),
(478, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '5ac9779e-0d02-4694-9699-fafacb071893', '1', 1, '2021-04-20 03:05:43.308000'),
(479, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', 'e21f8275-020b-4ea9-ade1-55d632c26fbe', '1', 1, '2021-04-20 03:05:43.308000'),
(480, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', 'a38a1a08-6014-4d41-adb1-ecd2427a86ed', '1', 1, '2021-04-20 03:05:43.319000'),
(481, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '299e55eb-1fa3-49b8-b762-b29f1bc1c625', '1', 1, '2021-04-20 03:05:43.336000'),
(482, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '3bf3ed29-bca1-4c3c-b878-9d302876506b', '1', 1, '2021-04-20 03:05:43.343000'),
(483, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', 'e2d78fbb-917e-4da9-8599-1717f96e48a7', '1', 1, '2021-04-20 03:05:43.342000'),
(484, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '97231425-18d9-4b5e-ac7e-63b5ac9e2c5c', '1', 1, '2021-04-20 03:05:43.343000'),
(485, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', 'b8704614-93b8-4850-84a3-85e3a971ad46', '1', 1, '2021-04-20 03:05:43.343000'),
(486, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '28986c11-e8eb-4723-8e9b-c8fd9fb2f978', '1', 1, '2021-04-20 03:05:43.348000'),
(487, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '3d204610-1e22-4555-a5a6-3bd2ac5e1aa9', '1', 1, '2021-04-20 03:05:43.358000'),
(488, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', 'f5748a65-8d95-4047-b1a7-8079a0a774d7', '1', 1, '2021-04-20 03:05:43.365000'),
(489, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '5589ffea-9a88-4567-b5e5-f8157984e021', '1', 1, '2021-04-20 03:05:43.369000'),
(490, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '90c4c6dd-8b1b-4511-8ffa-1b59774585f7', '1', 1, '2021-04-20 03:05:43.370000'),
(491, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', 'c6e0855c-bdc6-4faf-a866-5f7fce883b3d', '1', 1, '2021-04-20 03:05:43.370000'),
(492, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '719aa8e4-59d1-4404-998f-a7af706d7c70', '1', 1, '2021-04-20 03:05:43.371000'),
(493, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '236fbf7a-f836-463b-85d4-0d18dca3d503', '1', 1, '2021-04-20 03:05:43.381000'),
(494, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '927a693f-0747-49ca-af82-83d8214f61a7', '1', 1, '2021-04-20 03:05:43.386000'),
(495, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '40f7d1ca-9be5-4b44-a308-fa07b23aa7ef', '1', 1, '2021-04-20 03:05:43.387000'),
(496, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', 'ba5ef830-9fa8-4ad1-9ec1-6be6c52ae48c', '1', 1, '2021-04-20 03:05:43.393000'),
(497, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '46264c6d-8f89-4911-968a-d784b052e8e8', '1', 1, '2021-04-20 03:05:43.394000'),
(498, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '42ef345c-ca0f-43c2-8228-1eddd1db2335', '1', 1, '2021-04-20 03:05:43.394000'),
(499, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '2c50815a-6f22-42e7-a031-51dc18b29ef7', '1', 1, '2021-04-20 03:05:43.440000'),
(500, '4f2810ef-d3f8-4e94-9b5b-10b17af3e562', '976e1ba8-ca73-4fa5-a984-5098909eadf4', '1', 1, '2021-04-20 03:05:43.441000'),
(501, 'c9c86960-2906-46b3-af8d-b3a53393627a', 'de7a5046-0e93-4d99-bd1d-041b23579ad9', '1', 0, '2021-04-20 17:48:23.066000'),
(502, '77414cf6-3d93-4f72-9cdc-91619d139f1e', '5adbb629-20b5-4836-9da8-3f951ef8b822', '1', 1, '2021-04-20 20:59:32.425000'),
(503, '77414cf6-3d93-4f72-9cdc-91619d139f1e', 'de7a5046-0e93-4d99-bd1d-041b23579ad9', '1', 1, '2021-04-20 20:59:35.825000'),
(504, '77414cf6-3d93-4f72-9cdc-91619d139f1e', '36f8ec56-65d9-42fa-8cb7-0c6eb86b7a4b', '1', 1, '2021-04-21 02:36:04.476000'),
(505, '77414cf6-3d93-4f72-9cdc-91619d139f1e', '976e1ba8-ca73-4fa5-a984-5098909eadf4', '1', 1, '2021-04-21 02:36:06.858000'),
(507, '149d1996-070b-4a9e-af28-0d1965e03b25', '007f9b19-5d90-43ca-93ae-be6ba8bb5731', '1', 1, '2021-04-27 16:33:20.734000'),
(569, '2d5e8e30-6429-4182-b70e-68caaebc328c', '7310f099-d057-4384-9109-771a8b35141b', '1', 1, '2021-05-16 16:11:40.885000'),
(571, '2d5e8e30-6429-4182-b70e-68caaebc328c', '994af216-7489-40ca-a1d7-6c8f9c5726ab', '1', 1, '2021-05-16 16:11:27.945000'),
(572, '2d5e8e30-6429-4182-b70e-68caaebc328c', 'e762c29a-181f-4221-93a4-a8ed37ea7798', '1', 1, '2021-05-16 16:11:28.146000'),
(573, '2b537e90-f4fd-4d56-8c54-ee962ab986b2', '1a669a92-ffe0-4c1e-9ac1-a6a35deb73b6', '1', 1, '2021-05-20 16:31:00.720000'),
(574, '2b537e90-f4fd-4d56-8c54-ee962ab986b2', '469eb040-2fcc-4a2c-8320-a3f3d5098fc9', '1', 1, '2021-05-20 16:31:03.048000'),
(575, '2b537e90-f4fd-4d56-8c54-ee962ab986b2', '2ac7f079-a489-42b7-b0eb-eb540eac90aa', '1', 1, '2021-05-20 16:31:07.338000'),
(578, '2b537e90-f4fd-4d56-8c54-ee962ab986b2', 'dbe5ded6-74e2-45bc-aa88-61db3c8dcc62', '1', 1, '2021-05-20 17:25:28.675000'),
(579, '2b537e90-f4fd-4d56-8c54-ee962ab986b2', '6f2f186e-90f6-4582-b0eb-868c648b3f4e', '1', 1, '2021-05-20 19:32:39.582000'),
(580, '2b537e90-f4fd-4d56-8c54-ee962ab986b2', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', '1', 1, '2021-05-20 19:33:47.097000'),
(581, '2eebd9f4-6c60-42bf-8628-f50b226ee877', '3d79aa34-1bd5-42e8-a938-9bc21f4c2a46', '1', 1, '2021-05-22 23:55:23.592000'),
(582, '2eebd9f4-6c60-42bf-8628-f50b226ee877', '757efcb4-dbdb-4fae-bbd7-ad6ad912ed3f', '1', 2, '2021-05-22 23:55:58.582000'),
(583, '2eebd9f4-6c60-42bf-8628-f50b226ee877', '8dea43f6-d21c-4acf-a6af-6e68aa8bd119', '1', 3, '2021-05-22 23:56:01.514000'),
(584, '2eebd9f4-6c60-42bf-8628-f50b226ee877', '5aa39d91-c34a-490e-8a09-507163e6e690', '1', 6, '2021-05-22 23:56:20.912000'),
(585, '2eebd9f4-6c60-42bf-8628-f50b226ee877', 'ba9856e7-d34d-48b9-9048-b0790736e252', '1', 4, '2021-05-22 23:56:11.465000'),
(586, '2eebd9f4-6c60-42bf-8628-f50b226ee877', 'a9965f38-b3ff-4f3f-9bf3-2d5d343cb65b', '1', 5, '2021-05-22 23:56:15.535000'),
(587, 'df1811dc-d4a1-4f71-abc1-8ff3d2eda417', '1f4966ee-3ce2-40c5-9ea8-6f88b8a74546', '1', 1, '2021-05-30 06:24:05.994000'),
(588, 'df1811dc-d4a1-4f71-abc1-8ff3d2eda417', '0d9b2034-dbc0-456d-b09a-8bffce7d8ef9', '1', 1, '2021-05-30 06:24:10.721000'),
(589, '2eebd9f4-6c60-42bf-8628-f50b226ee877', '2a2aa180-a2b8-4a9f-9ee0-a8c1148a5d4f', '1', 1, '2021-07-12 14:13:58.975000'),
(590, 'd5759203-f813-41cc-8898-58c4c55338fa', 'f4adf6d0-14e0-4a01-b70f-8b323fd6d8b3', '1', 1, '2021-07-12 15:30:37.368000'),
(591, 'd5759203-f813-41cc-8898-58c4c55338fa', 'c1765455-73fa-4d1e-b143-0e1dd360abdd', '1', 1, '2021-07-12 15:30:37.398000'),
(592, 'd5759203-f813-41cc-8898-58c4c55338fa', '0f3727df-adb9-40fa-9910-6a62951f3193', '1', 1, '2021-07-12 15:30:37.496000');

-- --------------------------------------------------------

--
-- 資料表結構 `version`
--

CREATE TABLE `version` (
  `Id` int(11) NOT NULL,
  `ModifyTime` datetime NOT NULL,
  `Version` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `version`
--

INSERT INTO `version` (`Id`, `ModifyTime`, `Version`) VALUES
(1, '2021-03-22 00:00:00', '1'),
(14, '2021-03-22 22:17:48', '1.0001'),
(15, '2021-03-22 22:25:14', '1.0002'),
(16, '2021-03-22 22:25:50', '1.0003'),
(17, '2021-03-22 22:29:17', '1.0004'),
(18, '2021-03-22 22:29:30', '1.0005'),
(19, '2021-03-23 05:23:18', '1.0006'),
(20, '2021-03-23 05:25:39', '1.0007'),
(21, '2021-03-23 05:36:19', '1.0008'),
(22, '2021-03-24 20:39:26', '1.0009'),
(23, '2021-04-20 21:41:11', '1.001'),
(24, '2021-04-29 10:59:20', '1.0011'),
(25, '2021-04-29 10:59:24', '1.0012'),
(26, '2021-04-29 10:59:36', '1.0013'),
(27, '2021-04-29 10:59:41', '1.0014'),
(28, '2021-07-05 15:51:46', '1.0015'),
(29, '2021-07-05 17:06:44', '1.0016'),
(30, '2021-07-05 17:06:45', '1.0017'),
(31, '2021-07-05 17:06:47', '1.0018'),
(32, '2021-07-05 17:06:48', '1.0019'),
(33, '2021-07-05 17:06:49', '1.002'),
(34, '2021-07-05 17:06:51', '1.0021');

-- --------------------------------------------------------

--
-- 資料表結構 `word`
--

CREATE TABLE `word` (
  `WordId` varchar(255) NOT NULL,
  `AudioPath` varchar(255) DEFAULT NULL,
  `CreateTime` datetime(6) DEFAULT NULL,
  `ModifyTime` datetime(6) DEFAULT NULL,
  `Remarks` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `TheWord` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `word`
--

INSERT INTO `word` (`WordId`, `AudioPath`, `CreateTime`, `ModifyTime`, `Remarks`, `Status`, `TheWord`) VALUES
('0039bb2b-1453-4050-8860-9fc183b51eca', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus70/eus70027.mp3', '2021-04-20 03:00:08.181000', '2021-04-20 03:00:08.181000', '', '1', 'absorb'),
('007f9b19-5d90-43ca-93ae-be6ba8bb5731', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/i/ind/indee/indeed.mp3', '2021-04-20 02:37:22.030000', '2021-04-20 02:37:22.030000', '', '1', 'indeed'),
('0084be1a-1c11-4c8e-a9a6-72aaf3a1df4c', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/n/nev/never/nevertheless.mp3', '2021-04-20 02:44:38.815000', '2021-04-20 02:44:38.815000', '', '1', 'nevertheless'),
('009f673d-c6f3-452b-a24c-e47747c71c95', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/tra/tradi/tradition.mp3', '2021-04-20 02:37:21.916000', '2021-04-20 02:37:21.916000', '', '1', 'tradition'),
('00a585b2-56e6-4aec-b69f-a88235a1f87d', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/aff/affec/affect.mp3', '2021-04-20 02:47:19.287000', '2021-04-20 02:47:19.287000', '', '1', 'affect'),
('0120bd3b-76fe-4bbe-bd2e-baee6cbe0188', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/tra/trans/transportation.mp3', '2021-04-20 03:01:37.023000', '2021-04-20 03:01:37.023000', '', '1', 'transportation'),
('015e75c4-7a49-480f-b2f0-cadfaeb2f899', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/f/fir/firml/firmly.mp3', '2021-04-20 02:40:11.157000', '2021-04-20 02:40:11.157000', '', '1', 'firmly'),
('01cd16cc-e347-4664-a320-8bcb1cb37680', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/u/usz/uszzz/uszzzzd081.mp3', '2021-04-20 02:44:38.746000', '2021-04-20 02:44:38.746000', '', '1', 'normally'),
('0294a70e-39bb-46e0-88cd-1334337b92fe', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/b/bio/biolo/biology.mp3', '2021-04-20 02:59:22.402000', '2021-04-20 02:59:22.402000', '', '1', 'biology'),
('03144090-a110-48c0-ac33-8cb65cd3cbb9', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus75/eus75561.mp3', '2021-04-20 02:40:11.210000', '2021-04-20 02:40:11.210000', '', '1', 'delivery'),
('037f5386-6fb9-468a-b9c5-a2180dc51a62', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/v/val/value/value.mp3', '2021-04-20 03:01:36.940000', '2021-04-20 03:01:36.940000', '', '1', 'value'),
('03929ac0-ae71-43c0-8b83-bb145707e0f1', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/sch/sched/schedule.mp3', '2021-04-20 02:37:22.002000', '2021-04-20 02:37:22.002000', '', '1', 'schedule'),
('04a47172-106c-490c-bd68-5f74df3b53b8', 'null', '2021-04-20 02:52:53.529000', '2021-04-20 02:52:53.529000', '', '1', 'around/round the clock'),
('054031e0-dca2-4975-aebc-e1ad2c7d224b', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eve/ever_/ever.mp3', '2021-04-20 03:01:36.789000', '2021-04-20 03:01:36.789000', '', '1', 'ever since'),
('06441132-7eff-45e3-9e53-c1973e638016', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/v/val/valua/valuable.mp3', '2021-04-20 03:01:36.952000', '2021-04-20 03:01:36.952000', '', '1', 'valuable'),
('071c3b0d-f21c-4f19-8d8e-b0dc2fea8ff1', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/h/har/harve/harvest.mp3', '2021-04-20 03:01:37.040000', '2021-04-20 03:01:37.040000', '', '1', 'harvest'),
('075699bd-1ad4-414b-9d7d-46531cfabb7e', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pop/pop__/pop.mp3', '2021-05-16 16:10:21.896000', '2021-05-16 16:10:21.896000', '', '1', 'pop'),
('07ffa40c-d6ad-4557-9d41-fa89aad8438d', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus71/eus71272.mp3', '2021-04-20 03:00:08.123000', '2021-04-20 03:00:08.123000', '', '1', 'difficulty'),
('082a092a-99dc-4d7c-8660-588862d8e57a', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/cal/cald4/cald4us1115.mp3', '2021-04-20 02:52:53.493000', '2021-04-20 02:52:53.493000', '', '1', 'heart disease'),
('08388ebd-c9ab-4f60-b3f8-b361993ce7c2', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/ama/amazi/amazing.mp3', '2021-04-20 03:00:08.089000', '2021-04-20 03:00:08.089000', '', '1', 'amazing'),
('086f7e56-557b-4cbf-870f-8e698109c7f2', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/h/hou/house/household.mp3', '2021-04-20 02:59:22.604000', '2021-04-20 02:59:22.604000', '', '1', 'household'),
('0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/add/addit/addition.mp3', '2021-05-20 19:33:46.834000', '2021-05-20 19:33:46.834000', '', '1', 'in addition'),
('08f553aa-0138-4b3a-8da5-7ffceca100d4', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/u/usc/uscld/uscld01512.mp3', '2021-04-20 02:47:19.156000', '2021-04-20 02:47:19.156000', '', '1', 'traffic lights'),
('092aa462-4130-4600-8e52-655d939828fd', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/sen/senio/senior.mp3', '2021-04-20 02:37:21.882000', '2021-04-20 02:37:21.882000', '', '1', 'senior'),
('094e258f-99cd-4df0-8cf0-1bb91c375558', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/con/consu/consume.mp3', '2021-04-20 02:59:22.554000', '2021-04-20 02:59:22.554000', '', '1', 'consume'),
('0ab5b3ef-bcb0-404d-8492-4acb514811d5', 'null', '2021-04-20 02:40:10.960000', '2021-04-20 02:40:10.960000', '', '1', 'make up one\'s mind to V'),
('0baccf97-ecb5-4f21-af55-94e9cd4f6e27', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/d/des/desir/desire.mp3', '2021-04-20 03:00:54.842000', '2021-04-20 03:00:54.842000', '', '1', 'desire'),
('0bbb046a-3675-458f-957f-fc7ae5a6ad61', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/f/fol/follo/following.mp3', '2021-04-20 02:37:21.970000', '2021-04-20 02:37:21.970000', '', '1', 'following'),
('0c2a73b4-1133-4c5a-b8a2-c1ad33ffacef', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/rel/relat/relate.mp3', '2021-04-20 03:00:54.855000', '2021-04-20 03:00:54.855000', '', '1', 'relate'),
('0d9b2034-dbc0-456d-b09a-8bffce7d8ef9', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pus/push_/push.mp3', '2021-05-16 16:10:22.744000', '2021-05-16 16:10:22.744000', '', '1', 'push'),
('0e70a82e-bd14-41af-9d93-ceaa5de7bcc6', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/cym/cymba/cymbal.mp3', '2021-04-20 02:47:19.125000', '2021-04-20 02:47:19.125000', '', '1', 'symbol'),
('0eacba66-c67b-4a65-974d-c62fb305b564', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/w/wat/water/water.mp3', '2021-05-16 15:54:19.642000', '2021-05-16 15:54:19.642000', '', '1', 'water'),
('0f3727df-adb9-40fa-9910-6a62951f3193', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/abo/about/about.mp3', '2021-07-12 15:30:37.418000', '2021-07-12 15:30:37.418000', '', '1', 'about'),
('0f855308-64da-4af2-a12f-c328764e8fe4', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/l/log/logic/logical.mp3', '2021-04-20 03:00:54.994000', '2021-04-20 03:00:54.994000', '', '1', 'logical'),
('0fa307b7-00fb-4d91-997f-35f101d1ac67', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/g/gre/greet/greeting.mp3', '2021-04-20 02:40:11.078000', '2021-04-20 02:40:11.078000', '', '1', 'greeting'),
('0ff5cd08-3b3a-450a-b144-14955cc557b7', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/d/dut/duty_/duty.mp3', '2021-04-20 02:44:38.836000', '2021-04-20 02:44:38.836000', '', '1', 'duty'),
('11490d6b-11bb-4ae4-9d79-83e9d83dd9b0', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/d/dis/disap/disappear.mp3', '2021-04-20 03:00:08.081000', '2021-04-20 03:00:08.081000', '', '1', 'disappear'),
('11687f24-4188-4f88-a2d5-25fb5ca7b571', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/sit/situa/situation.mp3', '2021-04-20 02:44:38.782000', '2021-04-20 02:44:38.782000', '', '1', 'situation'),
('12423792-d9e7-479a-bb6e-697e0e8a5799', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/awa/aware/aware.mp3', '2021-04-20 02:47:19.164000', '2021-04-20 02:47:19.164000', '', '1', 'aware'),
('12d45269-a633-4f86-90a8-88af7e287eea', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/h/har/harmf/harmful.mp3', '2021-04-20 02:59:22.538000', '2021-04-20 02:59:22.538000', '', '1', 'harmful'),
('141f2725-dedc-4b36-a440-8ce944a2f9ef', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/per/perce/percent.mp3', '2021-04-20 02:52:53.591000', '2021-04-20 02:52:53.591000', '', '1', 'percent'),
('1435cb86-1f05-4a54-91b4-a91494affa19', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/u/usc/uscon/usconne012.mp3', '2021-04-20 02:52:53.620000', '2021-04-20 02:52:53.620000', '', '1', 'consequent'),
('1471cd18-2e91-48f7-90dc-47c5ae37e2a5', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/scr/scrub/scrub.mp3', '2021-04-20 02:59:22.436000', '2021-04-20 02:59:22.436000', '', '1', 'scrub'),
('1563c5a3-1d84-4227-8db4-3a9d730da69d', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/h/har/harm_/harm.mp3', '2021-04-20 02:59:22.534000', '2021-04-20 02:59:22.534000', '', '1', 'harm'),
('15763a60-0769-4b86-8c19-31a6c829f6e0', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/tes/test_/test.mp3', '2021-05-20 17:25:12.381000', '2021-05-20 17:25:12.381000', '', '1', 'test'),
('168baf50-b1a0-4818-bb4f-d7dc0bdece85', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/h/hel/hello/hello.mp3', '2021-05-16 16:08:59.886000', '2021-05-16 16:08:59.886000', '', '1', 'hello'),
('17d50158-b167-4770-8d10-f97382abaed9', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/rus/rush_/rush.mp3', '2021-04-20 02:44:38.812000', '2021-04-20 02:44:38.812000', '', '1', 'rush'),
('188a41a9-e5d8-4c0f-a9b6-2af4feed15c6', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pus/push_/push.mp3', '2021-05-16 16:10:22.652000', '2021-05-16 16:10:22.652000', '', '1', 'push'),
('18ed897a-710b-41f1-a82c-708fce16c01b', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus70/eus70359.mp3', '2021-04-20 03:01:36.840000', '2021-04-20 03:01:36.840000', '', '1', 'atlantic ocean'),
('1a2b91eb-1e53-4d83-b057-a8efc3d2d3ad', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pop/pop__/pop.mp3', '2021-05-16 16:10:21.935000', '2021-05-16 16:10:21.935000', '', '1', 'pop'),
('1a669a92-ffe0-4c1e-9ac1-a6a35deb73b6', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pop/pop__/pop.mp3', '2021-05-16 16:10:21.907000', '2021-05-16 16:10:21.907000', '', '1', 'pop'),
('1a755259-c123-4c0f-a126-1353d2a3168b', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/m/muc/much_/much.mp3', '2021-05-16 16:08:59.887000', '2021-05-16 16:08:59.887000', '', '1', 'much'),
('1b156c12-e8bc-4ad0-bbdc-dc443a5de251', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/w/wel/well_/well.mp3', '2021-04-20 03:01:36.791000', '2021-04-20 03:01:36.791000', '', '1', 'as well as'),
('1b30e97f-69b7-4829-825e-d0ec753807ed', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/m/muc/much_/much.mp3', '2021-05-16 16:08:59.889000', '2021-05-16 16:08:59.889000', '', '1', 'much'),
('1b8fea6e-a9dc-48df-9e71-e78bb33d1586', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/exp/expre/expression.mp3', '2021-04-20 03:00:54.877000', '2021-04-20 03:00:54.877000', '', '1', 'expression'),
('1bcf3fcf-e94a-4697-bd5d-ff0f79a1b1b7', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/d/dis/disas/disaster.mp3', '2021-04-20 02:59:22.643000', '2021-04-20 02:59:22.643000', '', '1', 'disaster'),
('1bdc8ca9-f60c-4fcd-8cc0-6165646443a2', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/spi/spice/spice.mp3', '2021-04-20 02:47:19.083000', '2021-04-20 02:47:19.083000', '', '1', 'spice up (sth)'),
('1d2d337c-63bc-45e5-8e58-b9922d0608f6', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/h/han/hang_/hang.mp3', '2021-05-16 15:50:51.510000', '2021-05-16 15:50:51.510000', '', '1', 'hang'),
('1d7f628a-8656-4c53-9ad4-061990439eba', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/acc/accid/accident.mp3', '2021-04-20 03:00:07.948000', '2021-04-20 03:00:07.948000', '', '1', 'by accident'),
('1d9a5e98-50ca-4ff7-abbc-542a5bcc3780', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/u/usc/uscld/uscld00839.mp3', '2021-04-20 02:52:53.495000', '2021-04-20 02:52:53.495000', '', '1', 'long-term'),
('1db01631-a1e2-4bec-b286-a8554d2c67ff', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/req/requi/require.mp3', '2021-04-20 02:44:38.781000', '2021-04-20 02:44:38.781000', '', '1', 'require'),
('1dc1f214-d2a9-494e-8690-a7c958880afe', 'https://dictionary.cambridge.orghttps://dictionary.cambridge.org/zht/media/english/us_pron/m/mis/missi/missing.mp3', '2021-04-20 02:40:10.968000', '2021-04-20 02:40:10.968000', '', '1', 'think of/about + N'),
('1df036a6-f6e9-4943-b216-6449e26de467', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/n/non/none_/none.mp3', '2021-05-16 16:10:21.573000', '2021-05-16 16:10:21.573000', '', '1', 'none'),
('1f4966ee-3ce2-40c5-9ea8-6f88b8a74546', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/exc/excha/exchange.mp3', '2021-04-20 02:37:21.910000', '2021-04-20 02:37:21.910000', '', '1', 'exchange'),
('1f7c129e-5b6c-40f2-9604-f01cb0ae84cb', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/l/lit/litte/litter.mp3', '2021-04-20 02:59:22.642000', '2021-04-20 02:59:22.642000', '', '1', 'litter'),
('1fe4ebf4-9e3c-4ef7-9a78-e55ece0c49c0', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/con/conce/concern.mp3', '2021-04-20 02:37:21.981000', '2021-04-20 02:37:21.981000', '', '1', 'concern'),
('1ffc2e7a-3aac-48d5-8c0f-ae2c364037e4', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pus/push_/push.mp3', '2021-05-16 16:10:22.653000', '2021-05-16 16:10:22.653000', '', '1', 'push'),
('201cc70d-04ed-4b5f-90b8-d77dcbe69a6f', 'null', '2021-04-20 02:47:19.123000', '2021-04-20 02:47:19.123000', '', '1', 'as for + N'),
('20331c6d-d3ce-4c07-bb8f-28e3833a0a9d', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/w/wat/water/water.mp3', '2021-05-16 15:54:19.649000', '2021-05-16 15:54:19.649000', '', '1', 'water'),
('20fda2de-7c3e-47ba-b123-c2c5692db901', 'null', '2021-04-20 03:00:54.775000', '2021-04-20 03:00:54.775000', '', '1', 'go hand in hand'),
('215513af-e3a4-484a-a9d5-74bd400d3036', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus70/eus70485.mp3', '2021-04-20 03:00:54.808000', '2021-04-20 03:00:54.808000', '', '1', 'behave'),
('2156fcde-a29d-4907-9b4e-cec6af7b220d', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/exa/exact/exactly.mp3', '2021-04-20 03:00:08.183000', '2021-04-20 03:00:08.183000', '', '1', 'exactly'),
('2198fb72-9fac-4e29-9d1e-3ef371bde9ee', 'null', '2021-04-20 02:59:22.341000', '2021-04-20 02:59:22.341000', '', '1', 'mistake A for B'),
('22e7794f-5d13-42a1-92c8-00e112ac7c8f', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/h/her/hero_/hero.mp3', '2021-04-20 03:02:14.036000', '2021-04-20 03:02:14.036000', '', '1', 'hero'),
('22f7bc15-6cc5-45bd-b1ca-c345fc407deb', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus75/eus75806.mp3', '2021-04-20 02:52:53.689000', '2021-04-20 02:52:53.689000', '', '1', 'information'),
('22f8c951-ab55-4b6e-b349-68a0b1b44f09', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus72/eus72110.mp3', '2021-04-20 02:40:11.085000', '2021-04-20 02:40:11.085000', '', '1', 'guilty'),
('22f8ce84-19b0-4836-b081-82cfa1905995', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/aci/acid_/acid.mp3', '2021-04-20 03:00:07.991000', '2021-04-20 03:00:07.991000', '', '1', 'acid'),
('236fbf7a-f836-463b-85d4-0d18dca3d503', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/thr/threa/threat.mp3', '2021-04-20 03:02:13.878000', '2021-04-20 03:02:13.878000', '', '1', 'threat'),
('24977dd2-59d7-43be-b7a3-fed088daa1c0', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/com/compe/compete.mp3', '2021-04-20 02:52:53.665000', '2021-04-20 02:52:53.665000', '', '1', 'compete'),
('252ed725-7932-469b-91a5-c08d7045e2e3', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus75/eus75508.mp3', '2021-04-20 02:37:22.010000', '2021-04-20 02:37:22.010000', '', '1', 'challenge'),
('253dae18-16fc-439c-843a-a22f384c9a38', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/i/inj/injur/injure.mp3', '2021-04-20 02:52:53.561000', '2021-04-20 02:52:53.561000', '', '1', 'injure'),
('26d1811c-fdf9-468d-849e-aaa0f163964a', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/cus/custo/custom.mp3', '2021-04-20 03:00:55.033000', '2021-04-20 03:00:55.033000', '', '1', 'custom'),
('26edff09-06b4-4330-a275-40460a8c3d81', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pil/pilot/pilot.mp3', '2021-04-20 02:52:53.619000', '2021-04-20 02:52:53.619000', '', '1', 'pilot'),
('2725b4da-fa8b-4c35-be3c-e7b72b9ebb28', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/w/wat/water/water.mp3', '2021-05-16 15:54:19.645000', '2021-05-16 15:54:19.645000', '', '1', 'water'),
('27a097d9-70b6-4efb-a298-7a4206f03dc8', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pro/prote/protection.mp3', '2021-04-20 03:00:54.900000', '2021-04-20 03:00:54.900000', '', '1', 'protection'),
('27ae9f1d-2e31-427f-bcf4-0b050eeb9da3', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/l/lik/like_/like.mp3', '2021-05-16 16:08:59.892000', '2021-05-16 16:08:59.892000', '', '1', 'like'),
('284845ba-cb4f-45d4-a051-20995d7cdb6c', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/con/conce/concern.mp3', '2021-04-20 02:37:21.978000', '2021-04-20 02:37:21.978000', '', '1', 'concern'),
('28986c11-e8eb-4723-8e9b-c8fd9fb2f978', 'null', '2021-04-20 03:02:13.776000', '2021-04-20 03:02:13.776000', '', '1', 'change one\'s mind'),
('296e2c98-44ca-4676-8428-5ddf38ca866d', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/u/usf/usfoo/usfoots001.mp3', '2021-04-20 02:37:21.864000', '2021-04-20 02:37:21.864000', '', '1', 'footstep'),
('297e836a-94b9-4192-9465-ff8418d0ce66', 'null', '2021-04-20 03:00:54.777000', '2021-04-20 03:00:54.777000', '', '1', 'bless you'),
('299e55eb-1fa3-49b8-b762-b29f1bc1c625', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus71/eus71573.mp3', '2021-04-20 03:02:13.830000', '2021-04-20 03:02:13.830000', '', '1', 'enthusiastic'),
('2a05a877-98e7-42d6-9d7b-df4e857e7058', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/u/usa/usa31/usa31926.mp3', '2021-04-20 02:59:22.370000', '2021-04-20 02:59:22.370000', '', '1', 'bottled water'),
('2a2658c8-ff9a-4ff1-a3b2-311c2f807c37', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/g/gov/gover/government.mp3', '2021-04-20 02:59:22.460000', '2021-04-20 02:59:22.460000', '', '1', 'government'),
('2a2aa180-a2b8-4a9f-9ee0-a8c1148a5d4f', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/app/apple/apple.mp3', '2021-07-12 14:13:58.947000', '2021-07-12 14:13:58.947000', '', '1', 'apple'),
('2ac7f079-a489-42b7-b0eb-eb540eac90aa', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/che/cheer/cheer.mp3', '2021-04-20 02:47:19.086000', '2021-04-20 02:47:19.086000', '', '1', 'cheer up (sb)'),
('2aee91dd-1d67-49f4-8d99-b414ac51d082', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/u/usc/uscld/uscld01579.mp3', '2021-04-20 03:01:36.875000', '2021-04-20 03:01:36.875000', '', '1', 'valentine\'s day'),
('2b0ff6a0-ea2c-4897-9f1b-876ed8a8c473', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/rel/relie/relieved.mp3', '2021-04-20 02:40:11.046000', '2021-04-20 02:40:11.046000', '', '1', 'relieved'),
('2c1a0a5e-7a03-406b-982e-bcf212d272d8', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/cul/cultu/culture.mp3', '2021-04-20 03:00:54.946000', '2021-04-20 03:00:54.946000', '', '1', 'culture'),
('2c50815a-6f22-42e7-a031-51dc18b29ef7', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pas/passi/passion.mp3', '2021-04-20 03:02:13.841000', '2021-04-20 03:02:13.841000', '', '1', 'passion'),
('2c92fcc1-ebeb-4877-8131-35209e2b6f6b', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus70/eus70892.mp3', '2021-04-20 02:40:10.972000', '2021-04-20 02:40:10.972000', '', '1', 'comet'),
('2cbd91b0-1740-42af-a958-5540e65e07ee', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/u/usa/usa31/usa31519.mp3', '2021-04-20 02:59:22.410000', '2021-04-20 02:59:22.410000', '', '1', '(the) UN'),
('2d0ec0bd-1282-4f78-a7ba-dfb684e2180a', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/rem/remov/remove.mp3', '2021-04-20 03:00:08.122000', '2021-04-20 03:00:08.122000', '', '1', 'remove'),
('2d6a57e9-5c21-434d-965c-84e441c9b589', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus75/eus75144.mp3', '2021-04-20 02:44:38.723000', '2021-04-20 02:44:38.723000', '', '1', 'occur'),
('2e5d7e5d-48ca-4f2e-b4ce-010e87ad8673', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus72/eus72347.mp3', '2021-04-20 03:00:08.141000', '2021-04-20 03:00:08.141000', '', '1', 'impress'),
('2e89727d-ef71-4f98-9fa0-24c751f96062', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/d/dai/daily/daily.mp3', '2021-04-20 02:44:38.783000', '2021-04-20 02:44:38.783000', '', '1', 'daily'),
('2ea2d44c-3256-4257-9345-88c8c95bd164', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/ari/arise/arise.mp3', '2021-04-20 02:44:38.750000', '2021-04-20 02:44:38.750000', '', '1', 'arise'),
('2ec7c8f9-e693-491e-81cb-5a59f5331110', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/rep/repai/repair.mp3', '2021-04-20 02:40:11.050000', '2021-04-20 02:40:11.050000', '', '1', 'repair'),
('2edd7785-555b-4d59-a25e-cf80127d2b06', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/ali/alive/alive.mp3', '2021-04-20 03:02:13.964000', '2021-04-20 03:02:13.964000', '', '1', 'alive'),
('2f3d35d1-2a88-474a-bec6-4f163cfafa89', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pus/push_/push.mp3', '2021-05-16 16:10:22.736000', '2021-05-16 16:10:22.736000', '', '1', 'push'),
('2f3d9d03-c1f9-4d0a-b60e-66dee29b3822', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/exp/explo/explore.mp3', '2021-04-20 03:01:37.018000', '2021-04-20 03:01:37.018000', '', '1', 'explore'),
('2fabbe18-aae7-42e4-b05d-8dd87015b664', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/app/appli/application.mp3', '2021-04-20 02:47:19.332000', '2021-04-20 02:47:19.332000', '', '1', 'application'),
('2ff08d12-07e0-4877-bc2f-28f209efa342', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/con/conta/contain.mp3', '2021-04-20 02:59:22.614000', '2021-04-20 02:59:22.614000', '', '1', 'contain'),
('30032c70-acbc-4158-8556-94a35ab321f8', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eve/even_/even.mp3', '2021-04-20 02:44:38.681000', '2021-04-20 02:44:38.681000', '', '1', 'even though'),
('30527a8c-fce6-4d9d-8619-5b89a1704610', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/b/bes/besid/besides.mp3', '2021-04-20 02:47:19.187000', '2021-04-20 02:47:19.187000', '', '1', 'besides'),
('30a58d24-c68b-4314-9efa-a136be66dfbf', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/req/requi/requirement.mp3', '2021-04-20 02:44:38.776000', '2021-04-20 02:44:38.776000', '', '1', 'requirement'),
('32117151-0f3b-4d68-be51-fde2ac8e8042', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/sli/slip_/slip.mp3', '2021-04-20 02:40:11.135000', '2021-04-20 02:40:11.135000', '', '1', 'slip'),
('33610af5-cc27-4f43-af06-7790c6ac9341', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus71/eus71710.mp3', '2021-04-20 03:02:13.999000', '2021-04-20 03:02:13.999000', '', '1', 'experiment'),
('3374830f-85cd-4f57-be28-5c795319b9e2', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/app/apple/apple.mp3', '2021-05-20 17:24:25.862000', '2021-05-20 17:24:25.862000', '', '1', 'apple'),
('341c86dd-7449-4394-b136-d705103948b0', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/com/compl/complete.mp3', '2021-04-20 03:02:13.970000', '2021-04-20 03:02:13.970000', '', '1', 'complete'),
('3479eb7b-2c69-4347-beaf-503f96686170', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/the/their/their.mp3', '2021-05-16 16:10:33.967000', '2021-05-16 16:10:33.967000', '', '1', 'there'),
('347d1aee-b24c-4e7d-b7c4-10713ef441d0', 'null', '2021-04-20 02:40:10.966000', '2021-04-20 02:40:10.966000', '', '1', 'no longer'),
('349c467e-309b-4284-8243-e2231dc5eb05', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/ran/rando/random.mp3', '2021-04-20 02:40:11.003000', '2021-04-20 02:40:11.003000', '', '1', 'random'),
('359417e1-fbfc-44cd-9494-c6745da9227e', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/d/des/desir/desire.mp3', '2021-04-20 03:00:54.834000', '2021-04-20 03:00:54.834000', '', '1', 'desire'),
('36f8ec56-65d9-42fa-8cb7-0c6eb86b7a4b', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/h/hal/hallw/hallway_hall.mp3', '2021-04-20 02:37:21.864000', '2021-04-20 02:37:21.864000', '', '1', 'hallway'),
('3729fd29-95f0-48a9-9994-5fb395013cc8', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/rep/repla/replace.mp3', '2021-04-20 02:37:21.953000', '2021-04-20 02:37:21.953000', '', '1', 'replace'),
('372b778c-64a3-4ffa-9105-debce92467e0', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/con/confe/confess.mp3', '2021-04-20 02:52:53.556000', '2021-04-20 02:52:53.556000', '', '1', 'confess'),
('372e4526-b968-4a42-9bcc-528cd306cee9', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/d/dev/devel/development.mp3', '2021-04-20 03:01:37.048000', '2021-04-20 03:01:37.048000', '', '1', 'development'),
('37dce084-cc74-4539-b383-3f3ad8fa4c23', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/sor/sort_/sort.mp3', '2021-04-20 03:00:55.018000', '2021-04-20 03:00:55.018000', '', '1', 'sort'),
('38b6d361-51e5-4119-8ea8-b0ad08914154', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pea/peal_/peal.mp3', '2021-04-20 03:00:07.996000', '2021-04-20 03:00:07.996000', '', '1', 'peel'),
('38db5cd2-7068-4bd7-9620-7a3165258e01', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/sta/stain/stain.mp3', '2021-04-20 03:00:07.996000', '2021-04-20 03:00:07.996000', '', '1', 'stain'),
('3aca4148-0876-489b-bff8-e0928f2a827e', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pla/plast/plastic.mp3', '2021-04-20 02:59:22.650000', '2021-04-20 02:59:22.650000', '', '1', 'plastic'),
('3b40a593-247d-40d8-96bc-89f185b01a16', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/u/usc/uscld/uscld00843.mp3', '2021-04-20 03:01:36.879000', '2021-04-20 03:01:36.879000', '', '1', 'love affair'),
('3bf3ed29-bca1-4c3c-b878-9d302876506b', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/tur/turn_/turn.mp3', '2021-04-20 03:02:13.779000', '2021-04-20 03:02:13.779000', '', '1', 'turn up'),
('3d0a52fc-67a2-4583-b341-814d475e6df5', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/d/des/descr/description.mp3', '2021-04-20 02:47:19.188000', '2021-04-20 02:47:19.188000', '', '1', 'description'),
('3d204610-1e22-4555-a5a6-3bd2ac5e1aa9', 'null', '2021-04-20 03:02:13.777000', '2021-04-20 03:02:13.777000', '', '1', 'hunt + N + down'),
('3d515849-1082-41ee-a27a-bfcf806b4003', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/con/conqu/conquer.mp3', '2021-04-20 03:01:37.022000', '2021-04-20 03:01:37.022000', '', '1', 'conquer'),
('3d533718-13ae-4755-964a-6225442a4ad2', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/g/gri/grind/grind.mp3', '2021-04-20 03:01:36.989000', '2021-04-20 03:01:36.989000', '', '1', 'grind'),
('3d79aa34-1bd5-42e8-a938-9bc21f4c2a46', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/app/apple/apple.mp3', '2021-05-22 23:55:23.569000', '2021-05-22 23:55:23.569000', '', '1', 'apple'),
('3e00a2c6-da4f-4969-a130-ec1eeaed1bfc', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/smo/smoot/smooth.mp3', '2021-04-20 02:40:11.171000', '2021-04-20 02:40:11.171000', '', '1', 'smooth'),
('3e6503cb-2664-4f49-a118-a0b04e850b77', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/h/hor/horri/horrible.mp3', '2021-04-20 03:02:13.943000', '2021-04-20 03:02:13.943000', '', '1', 'horrible'),
('3eef41f7-5faa-4608-b25e-a0d68283f3db', 'https://dictionary.cambridge.orghttps://dictionary.cambridge.org/zht/media/english/us_pron/m/mis/missi/missing.mp3', '2021-04-20 02:59:22.337000', '2021-04-20 02:59:22.337000', '', '1', 'pay a/the price for (doing sth)'),
('3f787edd-293c-4240-9f5e-21704706c683', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/exa/exact/exact.mp3', '2021-04-20 03:00:08.183000', '2021-04-20 03:00:08.183000', '', '1', 'exact'),
('3f799330-992e-46b1-aa67-f425557cecfe', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/cal/calcu/calculate.mp3', '2021-04-20 02:40:11.060000', '2021-04-20 02:40:11.060000', '', '1', 'calculate'),
('3fd54f0f-42ce-4723-9084-f687e61cdf10', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus75/eus75447.mp3', '2021-04-20 02:59:22.374000', '2021-04-20 02:59:22.374000', '', '1', 'overuse'),
('3ff85da5-82a5-4a28-bacf-31d83535121a', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus75/eus75190.mp3', '2021-05-16 16:10:33.964000', '2021-05-16 16:10:33.964000', '', '1', 'ok'),
('403c62b6-5fca-4695-8c05-91870c980486', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/f/fat/fatig/fatigue.mp3', '2021-04-20 02:52:53.499000', '2021-04-20 02:52:53.499000', '', '1', 'fatigue'),
('4078244f-097b-411b-9b1f-c801a219c7d1', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/l/log/logic/logic.mp3', '2021-04-20 03:00:54.995000', '2021-04-20 03:00:54.995000', '', '1', 'logic'),
('40f7d1ca-9be5-4b44-a308-fa07b23aa7ef', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/d/des/destr/destroy.mp3', '2021-04-20 03:02:13.877000', '2021-04-20 03:02:13.877000', '', '1', 'destroy'),
('4131e792-5c91-4f75-b525-df70b945b168', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/rel/relax/relaxation.mp3', '2021-04-20 02:44:38.837000', '2021-04-20 02:44:38.837000', '', '1', 'relaxation'),
('4166367c-276a-41a5-85e0-db41a63d32fd', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/reg/regre/regret.mp3', '2021-04-20 03:02:13.921000', '2021-04-20 03:02:13.921000', '', '1', 'regret'),
('4189a96b-150e-44e1-bbac-f466ea0c8d01', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/cit/citru/citrus.mp3', '2021-04-20 03:00:07.997000', '2021-04-20 03:00:07.997000', '', '1', 'citrus'),
('420f2ec6-5766-4b07-9d08-179963b99411', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pro/produ/produce_01_00.mp3', '2021-04-20 02:59:22.588000', '2021-04-20 02:59:22.588000', '', '1', 'produce'),
('421ce747-f0d7-42d7-a0ea-e5d6378ec1fa', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/k/kno/knot_/knot.mp3', '2021-05-20 17:26:44.167000', '2021-05-20 17:26:44.167000', '', '1', 'not'),
('428f404a-8a4e-4b29-83eb-83e257d98175', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/uk_pron/u/ukt/ukten/uktense020.mp3', '2021-04-20 02:52:53.449000', '2021-04-20 02:52:53.449000', '', '1', 'in the short term'),
('42ae1b35-094e-4b5f-83ed-d4315f9c40aa', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/i/imp/impre/impressive.mp3', '2021-04-20 03:00:08.135000', '2021-04-20 03:00:08.135000', '', '1', 'impressive'),
('42ef345c-ca0f-43c2-8228-1eddd1db2335', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/suc/succe/succeed.mp3', '2021-04-20 03:02:13.866000', '2021-04-20 03:02:13.866000', '', '1', 'succeed'),
('435be1a7-f690-46c3-8561-479ee7ac3e38', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus71/eus71442.mp3', '2021-04-20 02:47:19.322000', '2021-04-20 02:47:19.322000', '', '1', 'effect'),
('4362a0d2-36b7-44ac-8d85-dddd5fe541b1', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/m/med/medic/medical.mp3', '2021-04-20 02:52:53.596000', '2021-04-20 02:52:53.596000', '', '1', 'medical'),
('43986bc4-314a-4933-99e6-32c009077972', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/d/dev/devel/develop.mp3', '2021-04-20 03:01:37.057000', '2021-04-20 03:01:37.057000', '', '1', 'develop'),
('43d5175c-349d-4a49-b8e5-2acc6582f869', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/sor/sort_/sort.mp3', '2021-04-20 03:00:55.005000', '2021-04-20 03:00:55.005000', '', '1', 'sort'),
('442957c3-344a-47bf-91db-fde2e9ab3142', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/sca/scary/scary.mp3', '2021-04-20 02:37:21.995000', '2021-04-20 02:37:21.995000', '', '1', 'scary'),
('4481c518-f8cd-4e11-a0d6-5f70d1b5ff91', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/tes/test_/test.mp3', '2021-05-16 16:10:21.577000', '2021-05-16 16:10:21.577000', '', '1', 'test'),
('44c010c9-77f2-4de3-ab6e-87e0314190d1', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/u/usc/uscld/uscld04336.mp3', '2021-04-20 03:01:36.838000', '2021-04-20 03:01:36.838000', '', '1', 'spanish'),
('44c168b3-5854-43db-9c68-49c5e9795967', 'null', '2021-04-20 02:40:10.969000', '2021-04-20 02:40:10.969000', '', '1', 'A + turn into + B'),
('450bbcd2-275a-4018-9d0f-3255f988eacc', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/res/rescu/rescue.mp3', '2021-04-20 02:44:38.816000', '2021-04-20 02:44:38.816000', '', '1', 'rescue'),
('456f4c3b-60be-4fb5-a61b-e988cc991f08', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/m/med/medic/medical.mp3', '2021-04-20 02:52:53.595000', '2021-04-20 02:52:53.595000', '', '1', 'medical'),
('46264c6d-8f89-4911-968a-d784b052e8e8', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/f/for/fortu/fortune.mp3', '2021-04-20 03:02:13.867000', '2021-04-20 03:02:13.867000', '', '1', 'fortune'),
('4653d682-8fd2-458a-a66f-2321f90130ad', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/g/gol/golde/golden.mp3', '2021-04-20 02:47:19.128000', '2021-04-20 02:47:19.128000', '', '1', 'golden'),
('46945a99-ee17-4a14-a806-fd31a734d9b4', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus71/eus71443.mp3', '2021-04-20 02:47:19.293000', '2021-04-20 02:47:19.293000', '', '1', 'effective'),
('469eb040-2fcc-4a2c-8320-a3f3d5098fc9', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/m/mur/murde/murderer.mp3', '2021-04-20 03:02:13.925000', '2021-04-20 03:02:13.925000', '', '1', 'murderer'),
('46ad785a-75d5-4f8b-a4ea-9482fe090ef4', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus72/eus72911.mp3', '2021-04-20 02:59:22.397000', '2021-04-20 02:59:22.397000', '', '1', 'marine'),
('46ce8153-5baa-488e-b31d-99532117d568', 'null', '2021-04-20 02:40:11.004000', '2021-04-20 02:40:11.004000', '', '1', 'randomly'),
('46e2eff3-920e-46c4-bb50-0920d08df6f6', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/i/imm/immed/immediately.mp3', '2021-04-20 02:40:11.094000', '2021-04-20 02:40:11.094000', '', '1', 'immediately'),
('475ba056-19cd-4994-9d16-5af265b28d4e', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/spr/sprea/spread.mp3', '2021-04-20 03:01:36.905000', '2021-04-20 03:01:36.905000', '', '1', 'spread'),
('47b4df7f-76f6-49d1-8721-713009c9963e', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/uk_pron/u/ukr/ukrel/ukrelen017.mp3', '2021-04-20 03:00:54.934000', '2021-04-20 03:00:54.934000', '', '1', 'religious'),
('483ff135-9647-49a8-ae76-704601164e89', 'https://dictionary.cambridge.orghttps://dictionary.cambridge.org/zht/media/english/us_pron/m/mis/missi/missing.mp3', '2021-04-20 03:00:54.785000', '2021-04-20 03:00:54.785000', '', '1', 'mix sb/sth up'),
('48cd5fdb-4cf1-47db-bca9-7e8d99c5428e', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/l/lik/like_/like.mp3', '2021-05-16 16:09:00.131000', '2021-05-16 16:09:00.131000', '', '1', 'like'),
('494535c7-27ea-41ac-bb73-3afde375d231', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/col/color/colorful.mp3', '2021-04-20 02:47:19.361000', '2021-04-20 02:47:19.361000', '', '1', 'colorful'),
('497187b1-1d24-482b-8f9f-f165be335c20', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pro/profe/professional.mp3', '2021-04-20 02:44:38.849000', '2021-04-20 02:44:38.849000', '', '1', 'professional'),
('49c72879-935a-4e67-807a-d20001a66cbf', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus73/eus73179.mp3', '2021-04-20 02:52:53.747000', '2021-04-20 02:52:53.747000', '', '1', 'necessity'),
('4a7dcf94-5b1b-4950-802d-b4e653bd1187', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/u/usz/uszzz/uszzzzd080.mp3', '2021-04-20 02:44:38.745000', '2021-04-20 02:44:38.745000', '', '1', 'normal'),
('4aac2199-04ab-47ce-8c6a-9d611565df61', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/l/lik/like_/like.mp3', '2021-05-16 16:09:00.189000', '2021-05-16 16:09:00.189000', '', '1', 'like'),
('4b073875-883e-43f9-9810-05dcbea0e94e', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/con/consi/consideration.mp3', '2021-04-20 03:01:36.961000', '2021-04-20 03:01:36.961000', '', '1', 'consideration'),
('4b8befb5-d6ed-44fa-ba32-c10a26ea3f5f', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/i/imp/impro/improve.mp3', '2021-04-20 03:01:36.897000', '2021-04-20 03:01:36.897000', '', '1', 'improve'),
('4bc26b22-b8ac-4019-b373-812755174230', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/stu/stubb/stubborn.mp3', '2021-04-20 03:00:08.121000', '2021-04-20 03:00:08.121000', '', '1', 'stubborn'),
('4bdab0be-5d10-4f36-a253-f5f0ebb2e100', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/u/usc/uscld/uscld01181.mp3', '2021-04-20 02:47:19.124000', '2021-04-20 02:47:19.124000', '', '1', 'red-hot'),
('4be9a648-acd6-4704-812f-ba7fa19708d3', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/i/ign/ignor/ignore.mp3', '2021-04-20 02:52:53.632000', '2021-04-20 02:52:53.632000', '', '1', 'ignore'),
('4c088731-b68c-4afd-a2ea-eee37c6b8b26', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/tis/tissu/tissue.mp3', '2021-04-20 03:00:08.097000', '2021-04-20 03:00:08.097000', '', '1', 'tissue'),
('4d59530d-6e0d-42ed-8ab8-1e11d9995416', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus71/eus71531.mp3', '2021-04-20 02:37:21.867000', '2021-04-20 02:37:21.867000', '', '1', 'encouragement'),
('4d7c30cf-c3b5-4c61-9b97-38fa430d3292', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus75/eus75565.mp3', '2021-04-20 03:01:36.880000', '2021-04-20 03:01:36.880000', '', '1', 'demand'),
('4e03423f-e99b-4e7f-bfb5-462daa925f14', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus75/eus75916.mp3', '2021-04-20 02:37:21.951000', '2021-04-20 02:37:21.951000', '', '1', 'replacement'),
('4e0fb432-71fe-471d-a6a9-f2a123132ec4', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/g/gil/gilt_/gilt.mp3', '2021-04-20 02:40:11.083000', '2021-04-20 02:40:11.083000', '', '1', 'guilt'),
('4ed61265-daa7-472c-a8aa-dbe1c46e8847', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/arc/arch_/arch.mp3', '2021-04-20 02:47:19.127000', '2021-04-20 02:47:19.127000', '', '1', 'arch'),
('4f062a2c-a453-429a-aa67-b961dcd85ef8', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/w/wat/water/water.mp3', '2021-05-16 15:54:19.644000', '2021-05-16 15:54:19.644000', '', '1', 'water'),
('4fb3f0cd-5b38-4bf3-95b4-18198f774e40', 'null', '2021-04-20 02:37:21.804000', '2021-04-20 02:37:21.804000', '', '1', 'raise one\'s spirits'),
('50828f2d-6c3e-4f30-bbaf-7024276aa7b2', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/b/bio/biolo/biologist.mp3', '2021-04-20 02:59:22.403000', '2021-04-20 02:59:22.403000', '', '1', 'biologist'),
('50ee6f3d-2460-4c84-8a24-a9c23f119c81', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/w/wes/weste/western.mp3', '2021-04-20 03:00:54.986000', '2021-04-20 03:00:54.986000', '', '1', 'western'),
('5150014f-83b2-407e-b485-086cff1e62fd', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/suf/suffi/sufficient.mp3', '2021-04-20 02:52:53.737000', '2021-04-20 02:52:53.737000', '', '1', 'sufficient'),
('5168c9e3-495f-401a-a45b-13ac2050d915', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/i/imm/immed/immediate.mp3', '2021-04-20 02:40:11.091000', '2021-04-20 02:40:11.091000', '', '1', 'immediate'),
('51fb1a72-47c2-4973-83cc-c2169d33c0a2', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/h/han/hang_/hang.mp3', '2021-05-16 15:50:51.521000', '2021-05-16 15:50:51.521000', '', '1', 'hang'),
('5203c54b-3198-4754-af85-a6c103583ed3', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/cre/creat/create.mp3', '2021-04-20 03:01:36.997000', '2021-04-20 03:01:36.997000', '', '1', 'create');
INSERT INTO `word` (`WordId`, `AudioPath`, `CreateTime`, `ModifyTime`, `Remarks`, `Status`, `TheWord`) VALUES
('5248753d-9c47-4e09-93c9-5cc4764d8eeb', 'null', '2021-04-20 03:00:07.946000', '2021-04-20 03:00:07.946000', '', '1', 'N + come off'),
('52a1ce6f-40b7-4425-af15-a4b7a80ee753', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus74/eus74810.mp3', '2021-04-20 02:47:19.163000', '2021-04-20 02:47:19.163000', '', '1', 'variety'),
('52a64c38-f7dc-474e-8bca-469918e58a74', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pus/push_/push.mp3', '2021-05-16 16:10:22.726000', '2021-05-16 16:10:22.726000', '', '1', 'push'),
('5305ed00-e963-40ac-bbdd-3cbef8748454', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/u/usb/usbus/usbusty027.mp3', '2021-04-20 03:01:36.844000', '2021-04-20 03:01:36.844000', '', '1', 'cacao'),
('5386c013-183e-46a6-a241-f1c480b53d9c', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/d/die/diet_/diet.mp3', '2021-04-20 02:47:19.210000', '2021-04-20 02:47:19.210000', '', '1', 'diet'),
('544cc13f-8af3-4e1c-9bc1-28eb3ecfe8e2', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/tes/test_/test.mp3', '2021-05-16 16:10:21.579000', '2021-05-16 16:10:21.579000', '', '1', 'test'),
('544e6139-24cf-4b39-812b-d28b53a15dd2', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/b/bes/besid/besides.mp3', '2021-04-20 02:47:19.165000', '2021-04-20 02:47:19.165000', '', '1', 'besides'),
('54848fce-faa8-43a8-bf5b-9e777c92d62a', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/exp/expre/express.mp3', '2021-04-20 03:00:54.884000', '2021-04-20 03:00:54.884000', '', '1', 'express'),
('54eb2881-5025-4067-a668-f987adc56343', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus75/eus75560.mp3', '2021-04-20 02:40:11.216000', '2021-04-20 02:40:11.216000', '', '1', 'deliver'),
('5589ffea-9a88-4567-b5e5-f8157984e021', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/tra/tragi/tragic.mp3', '2021-04-20 03:02:13.840000', '2021-04-20 03:02:13.840000', '', '1', 'tragic'),
('55acffec-f863-48e8-a543-5814fb3534f8', 'null', '2021-04-20 02:59:22.372000', '2021-04-20 02:59:22.372000', '', '1', 'reusable'),
('55de0634-cc03-47a4-acce-250550d17674', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus70/eus70547.mp3', '2021-04-20 03:01:36.976000', '2021-04-20 03:01:36.976000', '', '1', 'bitter'),
('5863dd1b-6fd2-421e-818e-3f4b9c75b5e5', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/i/ins/inste/instead.mp3', '2021-04-20 02:44:38.799000', '2021-04-20 02:44:38.799000', '', '1', 'instead'),
('591c82f6-0669-44ad-b93d-38b99f1c06bf', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus72/eus72900.mp3', '2021-04-20 02:59:22.463000', '2021-04-20 02:59:22.463000', '', '1', 'manufacture'),
('5932a24d-bb99-4874-9d64-1ad7be89dad6', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/m/mur/murde/murder.mp3', '2021-04-20 03:02:13.930000', '2021-04-20 03:02:13.930000', '', '1', 'murder'),
('59dce32d-81f7-4db4-83a6-6e0d98de95d9', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/n/nat/nativ/native.mp3', '2021-04-20 03:01:37.011000', '2021-04-20 03:01:37.011000', '', '1', 'native'),
('5a0cf89f-0492-420b-89c7-213c7f559ddd', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/str/strug/struggle.mp3', '2021-04-20 02:52:53.657000', '2021-04-20 02:52:53.657000', '', '1', 'struggle'),
('5aa39d91-c34a-490e-8a09-507163e6e690', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/f/fro/frog_/frog.mp3', '2021-05-22 23:55:39.139000', '2021-05-22 23:55:39.139000', '', '1', 'frog'),
('5abee4ef-ec66-41cf-a3de-5aaced1145bd', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus71/eus71592.mp3', '2021-04-20 02:47:19.262000', '2021-04-20 02:47:19.262000', '', '1', 'environmental'),
('5ac9779e-0d02-4694-9699-fafacb071893', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/m/mis/miser/miserable.mp3', '2021-04-20 03:02:13.899000', '2021-04-20 03:02:13.899000', '', '1', 'miserable'),
('5adbb629-20b5-4836-9da8-3f951ef8b822', 'null', '2021-04-20 02:47:19.087000', '2021-04-20 02:47:19.087000', '', '1', 'what\'s more'),
('5b6b5f73-88b2-4a82-989b-09faa442a9b6', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/g/gra/grasp/grasp.mp3', '2021-04-20 02:40:11.165000', '2021-04-20 02:40:11.165000', '', '1', 'grasp'),
('5c83c1b8-82d3-412b-a0ea-2f55c58a59b4', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/d/dew/dew__/dew.mp3', '2021-04-20 02:37:21.806000', '2021-04-20 02:37:21.806000', '', '1', 'due to'),
('5ca3c78f-b539-41b4-b6fc-fc3997268356', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/che/chemi/chemical.mp3', '2021-04-20 02:59:22.522000', '2021-04-20 02:59:22.522000', '', '1', 'chemical'),
('5ceccf55-9228-41af-8fbd-d9e95f7e8b81', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/w/wat/water/water.mp3', '2021-05-16 16:07:17.579000', '2021-05-16 16:07:17.579000', '', '1', 'water'),
('5d0bd307-31a5-46ef-af53-04f00e07a147', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/tra/trans/transport_01_01.mp3', '2021-04-20 03:01:37.026000', '2021-04-20 03:01:37.026000', '', '1', 'transport'),
('5d121f66-6df2-4ce0-8578-c4307986f481', 'null', '2021-04-20 02:52:53.528000', '2021-04-20 02:52:53.528000', '', '1', 'energy drink'),
('5dce8642-02c4-415c-81b4-321dd3fe7697', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/m/mor/moreo/moreover.mp3', '2021-04-20 02:59:22.628000', '2021-04-20 02:59:22.628000', '', '1', 'moreover'),
('5f70941b-a363-476a-aaa4-283a228f700c', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/l/leg/legal/legal.mp3', '2021-04-20 02:44:38.754000', '2021-04-20 02:44:38.754000', '', '1', 'legal'),
('5fbcadd7-6f76-40b6-96f4-25bcae83349b', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/che/chemi/chemical.mp3', '2021-04-20 02:59:22.521000', '2021-04-20 02:59:22.521000', '', '1', 'chemical'),
('5fe221ef-be11-4907-99ca-4da2a3fb293d', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/anc/ancie/ancient.mp3', '2021-04-20 03:01:36.879000', '2021-04-20 03:01:36.879000', '', '1', 'ancient'),
('600b7bf9-636d-489a-8b09-bafaf0a35ea6', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/u/usg/usgra/usgran_024.mp3', '2021-04-20 03:01:36.857000', '2021-04-20 03:01:36.857000', '', '1', 'grasshopper'),
('605e682f-e8d1-4dc3-9612-87435c4efdf3', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/m/met/metho/method.mp3', '2021-04-20 02:37:21.943000', '2021-04-20 02:37:21.943000', '', '1', 'method'),
('60a12a73-a9ea-4f43-a903-f6a8fddd5f58', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/spi/spite/spite.mp3', '2021-04-20 02:52:53.452000', '2021-04-20 02:52:53.452000', '', '1', '\"In spite of sth'),
('61e66cb3-76d0-434c-886a-7d6973a3fd77', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/h/hel/hello/hello.mp3', '2021-05-20 17:27:08.338000', '2021-05-20 17:27:08.338000', '', '1', 'hello'),
('625c99ad-df42-4424-b249-85cfe979710d', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/h/han/hang_/hang.mp3', '2021-05-16 15:50:51.524000', '2021-05-16 15:50:51.524000', '', '1', 'hang'),
('62e7acec-d568-4b16-9a7b-904dfeee19b9', 'https://dictionary.cambridge.org/zht/media/英語-漢語-繁體/us_pron/h/han/hang_/hang.mp3', '2021-05-15 21:17:41.152000', '2021-05-15 21:17:41.152000', '', '1', 'hang'),
('635e5a69-96ff-49c2-b773-26c775d293af', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/i/inf/influ/influence.mp3', '2021-04-20 02:47:19.257000', '2021-04-20 02:47:19.257000', '', '1', 'influence'),
('639d64c0-73c9-4800-afb0-a9addbbffdc6', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/tes/test_/test.mp3', '2021-04-27 17:10:09.287000', '2021-04-27 17:10:09.287000', '', '1', 'test'),
('63e716bd-a8d9-4ac9-b035-c4d717333d14', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/cdo/cdo03/cdo0318usflav1866.mp3', '2021-04-20 03:01:36.966000', '2021-04-20 03:01:36.966000', '', '1', 'flavor'),
('651d6372-3c2b-4e9b-affb-b8be3ea15132', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus75/eus75291.mp3', '2021-04-20 02:59:22.505000', '2021-04-20 02:59:22.505000', '', '1', 'organization'),
('653c4fd3-4711-47db-ab19-d06e364d250b', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/g/gra/grasp/grasp.mp3', '2021-04-20 02:40:11.162000', '2021-04-20 02:40:11.162000', '', '1', 'grasp'),
('656620d8-dc7e-4d79-9f82-e71ec16cb7ed', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/l/lik/like_/like.mp3', '2021-05-16 16:09:00.179000', '2021-05-16 16:09:00.179000', '', '1', 'like'),
('65a1c46d-c5b5-4ec1-b1d2-e92b00ea6933', 'null', '2021-04-20 03:00:07.943000', '2021-04-20 03:00:07.943000', '', '1', 'break sth. down = break down sth.'),
('6640182a-cadb-4051-8767-322bb5893f5f', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pop/pop__/pop.mp3', '2021-05-16 16:10:22.068000', '2021-05-16 16:10:22.068000', '', '1', 'pop'),
('66bdb269-1520-450c-a9ca-1461cf94fc31', 'null', '2021-04-20 02:37:21.802000', '2021-04-20 02:37:21.802000', '', '1', 'for instance'),
('67a88f8f-027d-45d8-ab1b-b082aa607195', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/u/ust/uston/ustones013.mp3', '2021-04-20 02:59:22.444000', '2021-04-20 02:59:22.444000', '', '1', 'toothpaste'),
('68afe15b-e6ee-43c5-92e6-654a1b986757', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/tru/trust/trust.mp3', '2021-04-20 03:00:54.915000', '2021-04-20 03:00:54.915000', '', '1', 'trust'),
('6989c28e-703d-4480-a6a6-71bd597e0ece', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/con/conta/container.mp3', '2021-04-20 02:59:22.614000', '2021-04-20 02:59:22.614000', '', '1', 'container'),
('699ad43a-b42c-4a26-b34d-f347ebbea8ef', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/v/vol/volun/volunteer.mp3', '2021-04-20 02:59:22.485000', '2021-04-20 02:59:22.485000', '', '1', 'volunteer'),
('6a1216f9-ed39-4f36-86a0-58c750cfe690', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus75/eus75033.mp3', '2021-04-20 03:01:36.793000', '2021-04-20 03:01:36.793000', '', '1', 'worldwide'),
('6a2f15be-804b-40fe-9550-ab7296e8a8a4', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus73/eus73226.mp3', '2021-05-20 17:27:08.337000', '2021-05-20 17:27:08.337000', '', '1', 'no'),
('6bfb1624-fdac-4158-a9a5-d1f621a6c16d', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/b/bla/blame/blame.mp3', '2021-04-20 02:44:38.752000', '2021-04-20 02:44:38.752000', '', '1', 'blame'),
('6c7a0e66-ec47-4fad-97e9-f8ce043e6e38', 'https://dictionary.cambridge.orghttps://dictionary.cambridge.org/zht/media/english/us_pron/m/mis/missi/missing.mp3', '2021-04-20 02:59:22.329000', '2021-04-20 02:59:22.329000', '', '1', 'call on/upon sb.'),
('6ce4dbd1-6619-430e-b85b-2dafbf2c5045', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/cri/crisp/crisp.mp3', '2021-04-20 03:00:08.202000', '2021-04-20 03:00:08.202000', '', '1', 'crisp'),
('6cebc7a9-6a4e-4025-ac9a-b981a54a5ed4', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/cre/creep/creep.mp3', '2021-04-20 02:40:11.047000', '2021-04-20 02:40:11.047000', '', '1', 'creep'),
('6d21f87b-a8f3-4be9-913f-4ca24fcb05c4', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/rel/relax/relax.mp3', '2021-04-20 02:44:38.844000', '2021-04-20 02:44:38.844000', '', '1', 'relax'),
('6d44c10f-d1ca-4bd4-a789-237cfad33a4a', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/sta/starv/starve.mp3', '2021-04-20 02:59:22.555000', '2021-04-20 02:59:22.555000', '', '1', 'starve'),
('6d58b894-bb45-4680-b782-e0c79d939e9f', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/cra/crash/crash.mp3', '2021-04-20 02:40:11.133000', '2021-04-20 02:40:11.133000', '', '1', 'crash'),
('6dd8ce01-7998-469e-91e7-12df0a439f7c', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pro/produ/production.mp3', '2021-04-20 02:59:22.585000', '2021-04-20 02:59:22.585000', '', '1', 'production'),
('6ebcfd2b-5d04-4b5b-a493-09484323f50a', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/exc/excha/exchange.mp3', '2021-04-20 02:37:21.911000', '2021-04-20 02:37:21.911000', '', '1', 'exchange'),
('6eca20d7-6c35-4ef0-af76-e9e630881efa', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/shi/shift/shift.mp3', '2021-04-20 02:52:53.592000', '2021-04-20 02:52:53.592000', '', '1', 'shift'),
('6f2087b6-8879-45a4-898d-a75c0f2d282f', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus16/eus16935.mp3', '2021-04-20 02:52:53.498000', '2021-04-20 02:52:53.498000', '', '1', 'life-and-death'),
('6f2f186e-90f6-4582-b0eb-868c648b3f4e', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/app/apple/apple.mp3', '2021-05-20 19:32:39.477000', '2021-05-20 19:32:39.477000', '', '1', 'apple'),
('6ff45324-801c-4b10-a775-496735efdcd5', 'null', '2021-04-20 02:37:21.807000', '2021-04-20 02:37:21.807000', '', '1', 'after all'),
('702b944a-6c94-4cf9-b116-8e124a084daf', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/con/conse/consequence.mp3', '2021-04-20 02:52:53.621000', '2021-04-20 02:52:53.621000', '', '1', 'consequence'),
('70b1b14f-b3cc-421e-905e-b8dab72f1cee', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus70/eus70819.mp3', '2021-04-20 02:44:38.876000', '2021-04-20 02:44:38.876000', '', '1', 'citizen'),
('70eaf089-e811-4575-8845-d2a4f2031fda', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pus/push_/push.mp3', '2021-05-16 16:10:22.654000', '2021-05-16 16:10:22.654000', '', '1', 'push'),
('71717bae-6ab8-49c6-acd9-f7886f950f02', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/rel/relie/relieve.mp3', '2021-04-20 02:40:11.019000', '2021-04-20 02:40:11.019000', '', '1', 'relieve'),
('719aa8e4-59d1-4404-998f-a7af706d7c70', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/m/mis/miser/misery.mp3', '2021-04-20 03:02:13.899000', '2021-04-20 03:02:13.899000', '', '1', 'misery'),
('719b3bd9-73a6-4227-befc-2d1fe90abeb0', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/tro/tropi/tropical.mp3', '2021-04-20 03:01:37.062000', '2021-04-20 03:01:37.062000', '', '1', 'tropical'),
('71c52de7-543d-4d2f-99c9-20d83ac2849d', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/tid/tide_/tide.mp3', '2021-04-20 02:59:22.630000', '2021-04-20 02:59:22.630000', '', '1', 'tide'),
('71f081a1-94d4-438e-8836-a04b5997c073', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pop/pop__/pop.mp3', '2021-05-16 16:10:21.873000', '2021-05-16 16:10:21.873000', '', '1', 'pop'),
('7223e5bb-129d-4741-9712-faed6d8caef7', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/d/dif/diffe/difference.mp3', '2021-04-20 02:44:38.676000', '2021-04-20 02:44:38.676000', '', '1', 'make a difference'),
('72d6a8be-82f3-4761-8828-ea1449a32a30', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pea/peanu/peanut.mp3', '2021-04-20 03:00:08.009000', '2021-04-20 03:00:08.009000', '', '1', 'peanut'),
('7310f099-d057-4384-9109-771a8b35141b', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/the/their/their.mp3', '2021-05-16 16:11:27.738000', '2021-05-16 16:11:27.738000', '123123qweqdasfdsadbvaswghwaregy', '1', 'there'),
('738a956f-1ae4-4085-b23c-e100a6ead87a', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/h/hap/happy/happy.mp3', '2021-05-20 17:26:36.634000', '2021-05-20 17:26:36.634000', '', '1', 'happy'),
('74db1f1e-eaaf-4f9a-a926-cee327523f04', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pol/pollu/pollution.mp3', '2021-04-20 02:59:22.571000', '2021-04-20 02:59:22.571000', '', '1', 'pollution'),
('7528233b-48ac-4e66-b626-410196547156', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/rel/relat/relation.mp3', '2021-04-20 03:00:54.854000', '2021-04-20 03:00:54.854000', '', '1', 'relation'),
('757efcb4-dbdb-4fae-bbd7-ad6ad912ed3f', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/b/ban/banan/banana.mp3', '2021-05-22 23:55:39.125000', '2021-05-22 23:55:39.125000', '', '1', 'banana'),
('76cf9850-9905-4cae-ab47-b0087aa291ab', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/w/way/way__/way.mp3', '2021-05-20 17:27:08.362000', '2021-05-20 17:27:08.362000', '', '1', 'way'),
('77084070-c90a-4434-83f9-7c01fcbe95b8', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/ass/assoc/association.mp3', '2021-04-20 02:47:19.218000', '2021-04-20 02:47:19.218000', '', '1', 'association'),
('79e55c08-ebf1-4336-9005-40edc361d5b9', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/rou/routi/routine.mp3', '2021-04-20 03:00:55.027000', '2021-04-20 03:00:55.027000', '', '1', 'routine'),
('79f89078-30f4-4ce7-912b-926085c77b4c', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/g/gre/greet/greet.mp3', '2021-04-20 02:40:11.083000', '2021-04-20 02:40:11.083000', '', '1', 'greet'),
('7a071dd1-8d8b-4673-8a6a-0efacc780195', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus70/eus70916.mp3', '2021-04-20 02:52:53.685000', '2021-04-20 02:52:53.685000', '', '1', 'competitive'),
('7ba1ffb4-1c5c-4405-bce8-d7377086f66b', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus75/eus75033.mp3', '2021-04-20 03:01:36.798000', '2021-04-20 03:01:36.798000', '', '1', 'worldwide'),
('7ce1f6ae-2f40-4568-9a8c-b7544deafcb6', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/sup/suppo/support.mp3', '2021-04-20 02:59:22.506000', '2021-04-20 02:59:22.506000', '', '1', 'support'),
('7da5a96a-95fd-4818-997b-7e0b229f55d6', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/tit/title/title.mp3', '2021-04-20 03:02:14.025000', '2021-04-20 03:02:14.025000', '', '1', 'title'),
('7e0440cc-cb5e-4cac-9b17-30d8a3c4b42e', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus72/eus72900.mp3', '2021-04-20 02:59:22.470000', '2021-04-20 02:59:22.470000', '', '1', 'manufacture'),
('7f698c34-2328-4be6-80b9-290085a63b8f', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/tes/test_/test.mp3', '2021-05-16 16:07:17.578000', '2021-05-16 16:07:17.578000', '', '1', 'test'),
('7fb2151d-737d-4773-9e18-1dfc30d996a4', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/the/their/their.mp3', '2021-05-16 16:11:27.737000', '2021-05-16 16:11:27.737000', '', '1', 'there'),
('8061a493-277b-4869-b853-c62e37fa90f6', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus70/eus70908.mp3', '2021-04-20 02:40:11.209000', '2021-04-20 02:40:11.209000', '', '1', 'community'),
('8087cf6c-a012-4ccc-b7be-e1c4de752abc', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/m/mon/monst/monster.mp3', '2021-04-20 03:02:13.961000', '2021-04-20 03:02:13.961000', '', '1', 'monster'),
('80a6a532-df5d-4d18-809d-f7c222ae4153', 'null', '2021-04-20 03:01:36.792000', '2021-04-20 03:01:36.792000', '', '1', 'be crazy about + N'),
('80de03d1-66fb-4ff3-87ce-50829a09b760', 'https://dictionary.cambridge.orghttps://dictionary.cambridge.org/zht/media/english/us_pron/m/mis/missi/missing.mp3', '2021-04-20 02:44:38.683000', '2021-04-20 02:44:38.683000', '', '1', 'lend/give sb. a helping hand'),
('80f02910-322f-4ee0-8cd7-a86774f0d38e', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/emp/empty/empty.mp3', '2021-04-20 02:37:22.045000', '2021-04-20 02:37:22.045000', '', '1', 'empty'),
('811119b0-b709-49a0-9617-939214b96980', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/exp/explo/explorer.mp3', '2021-04-20 03:01:37.011000', '2021-04-20 03:01:37.011000', '', '1', 'explorer'),
('81225f98-991f-46af-b0e9-ccbaa1947f5a', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pro/prove/prove.mp3', '2021-04-20 03:00:54.965000', '2021-04-20 03:00:54.965000', '', '1', 'prove'),
('82f179fc-b618-4a9c-a7ca-d0be6acf0814', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus72/eus72421.mp3', '2021-04-20 02:52:53.687000', '2021-04-20 02:52:53.687000', '', '1', 'informative'),
('8359d3bd-2774-4969-9811-0937dd5f83f8', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/i/inf/infor/inform.mp3', '2021-04-20 02:52:53.689000', '2021-04-20 02:52:53.689000', '', '1', 'inform'),
('88afe462-0878-4b8c-b8a6-57893946e205', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/g/gen/gentl/gently.mp3', '2021-04-20 03:00:08.109000', '2021-04-20 03:00:08.109000', '', '1', 'gently'),
('88d60bdf-09fe-4bfe-baff-107e21f8bbce', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pro/proof/proof.mp3', '2021-04-20 03:00:54.967000', '2021-04-20 03:00:54.967000', '', '1', 'proof'),
('892aa9d2-c72f-438e-9681-ff3ecba5bf4a', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/h/hap/happy/happy.mp3', '2021-05-20 17:26:36.637000', '2021-05-20 17:26:36.637000', '', '1', 'happy'),
('89436eca-6488-4ad2-9ddf-c851cfc9d3ec', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/cre/creat/creation.mp3', '2021-04-20 03:01:36.994000', '2021-04-20 03:01:36.994000', '', '1', 'creation'),
('89957bb6-6d66-4ff1-9ce5-ca1fcae60689', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/u/usa/usad_/usad___016.mp3', '2021-05-16 16:10:21.695000', '2021-05-16 16:10:21.695000', '', '1', 'abc'),
('89abfd6d-eae1-4c7a-93b0-84306b81ff01', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/rel/relat/related.mp3', '2021-04-20 03:00:54.857000', '2021-04-20 03:00:54.857000', '', '1', 'related'),
('89b97c2c-98e8-43ec-a04a-a066e3292ced', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/reg/regre/regret.mp3', '2021-04-20 03:02:13.917000', '2021-04-20 03:02:13.917000', '', '1', 'regret'),
('8a99b40b-ddba-4fa8-8eac-c27f5207d7f1', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pus/push_/push.mp3', '2021-05-16 16:10:22.822000', '2021-05-16 16:10:22.822000', '', '1', 'push'),
('8b7fcef9-14d3-4e70-aebd-01351d521f41', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/tru/trust/trust.mp3', '2021-04-20 03:00:54.917000', '2021-04-20 03:00:54.917000', '', '1', 'trust'),
('8c47ed7f-a27a-4abd-b33c-99530017224d', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/tra/tradi/traditional.mp3', '2021-04-20 02:37:21.912000', '2021-04-20 02:37:21.912000', '', '1', 'traditional'),
('8dea43f6-d21c-4acf-a6af-6e68aa8bd119', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/cat/cat__/cat.mp3', '2021-05-22 23:55:39.135000', '2021-05-22 23:55:39.135000', '', '1', 'cat'),
('8e0ac9ef-1a82-40d7-ae88-038dc4439669', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/h/hel/hello/hello.mp3', '2021-05-16 16:10:21.570000', '2021-05-16 16:10:21.570000', '', '1', 'hello'),
('8e81d4e8-6472-4533-85cf-463d4e68b5c1', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/u/usc/uscld/uscld01106.mp3', '2021-04-20 03:00:07.992000', '2021-04-20 03:00:07.992000', '', '1', 'potato chip'),
('8eedc25c-b5cc-45da-953e-f0fdfeb64bd3', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus71/eus71636.mp3', '2021-04-20 02:40:11.122000', '2021-04-20 02:40:11.122000', '', '1', 'escape'),
('8f2054ac-180b-4bbc-890a-f880c5db2d0e', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/exp/exper/expert.mp3', '2021-04-20 02:52:53.725000', '2021-04-20 02:52:53.725000', '', '1', 'expert'),
('8f600478-570a-4e28-b6bc-0d9e32159803', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/app/apply/apply.mp3', '2021-04-20 02:47:19.336000', '2021-04-20 02:47:19.336000', '', '1', 'apply'),
('8f720cc6-41f7-4e28-bcd2-8b1307bc10f5', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus70/eus70951.mp3', '2021-04-20 02:52:53.542000', '2021-04-20 02:52:53.542000', '', '1', 'confine'),
('8f7b894d-f6c8-4754-a95d-0d567e3b0b44', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/sen/senio/senior.mp3', '2021-04-20 02:37:21.895000', '2021-04-20 02:37:21.895000', '', '1', 'senior'),
('90215943-de50-4676-90c6-1072611eea95', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus75/eus75292.mp3', '2021-04-20 02:59:22.485000', '2021-04-20 02:59:22.485000', '', '1', 'organize'),
('902278c3-3b26-4e96-a8c2-772bc01fdbdb', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/rec/recyc/recycle.mp3', '2021-04-20 02:59:22.521000', '2021-04-20 02:59:22.521000', '', '1', 'recycle'),
('9075a0e6-52a7-4dc6-938c-c2e9625f55c1', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/f/fam/famil/familiar.mp3', '2021-04-20 02:37:21.995000', '2021-04-20 02:37:21.995000', '', '1', 'familiar'),
('90c4c6dd-8b1b-4511-8ffa-1b59774585f7', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/thr/threa/threaten.mp3', '2021-04-20 03:02:13.894000', '2021-04-20 03:02:13.894000', '', '1', 'threaten'),
('90fa06dd-54bc-4b26-a99d-593d53612411', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/ama/amaze/amaze.mp3', '2021-04-20 03:00:08.088000', '2021-04-20 03:00:08.088000', '', '1', 'amaze'),
('912ea872-b514-48db-bfbe-066844395975', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pop/pop__/pop.mp3', '2021-05-16 16:10:21.882000', '2021-05-16 16:10:21.882000', '', '1', 'pop'),
('9259b2eb-f191-4dfc-89c3-c6cb7e37f73a', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/n/nat/natur/natural.mp3', '2021-04-20 02:47:19.225000', '2021-04-20 02:47:19.225000', '', '1', 'natural'),
('927a693f-0747-49ca-af82-83d8214f61a7', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/d/des/destr/destruction.mp3', '2021-04-20 03:02:13.876000', '2021-04-20 03:02:13.876000', '', '1', 'destruction'),
('92a94222-a0a2-4270-822f-71be6e932384', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/i/ind/indic/indicate.mp3', '2021-04-20 02:47:19.292000', '2021-04-20 02:47:19.292000', '', '1', 'indicate'),
('92cee65d-d9ac-44b6-b302-0e10320a50f5', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/l/lik/like_/like.mp3', '2021-05-16 16:09:00.027000', '2021-05-16 16:09:00.027000', '', '1', 'like'),
('9308c183-65d8-4f3f-8120-fdf61feafc81', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/i/ill/illne/illness.mp3', '2021-04-20 03:00:54.887000', '2021-04-20 03:00:54.887000', '', '1', 'illness'),
('94964b8a-87e7-41aa-bebd-a410847e0a5f', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/u/usa/usad_/usad___016.mp3', '2021-05-16 16:10:21.584000', '2021-05-16 16:10:21.584000', '', '1', 'abc'),
('94c6d607-303b-45a7-b63d-066818c576d2', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/b/bea/bead_/bead.mp3', '2021-04-20 02:59:22.427000', '2021-04-20 02:59:22.427000', '', '1', 'bead'),
('9534752e-83d0-4167-be0d-c27e2f07d630', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pus/push_/push.mp3', '2021-05-16 16:10:22.827000', '2021-05-16 16:10:22.827000', '', '1', 'push'),
('95a41292-bee0-4d8e-b8d8-9f4f0cc9c5d2', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/res/respo/responsible.mp3', '2021-04-20 02:44:38.863000', '2021-04-20 02:44:38.863000', '', '1', 'responsible'),
('95ea4fea-6e40-4a1d-bf59-259380c6aba6', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/awa/award/award.mp3', '2021-04-20 02:37:21.964000', '2021-04-20 02:37:21.964000', '', '1', 'award'),
('95ec26b8-4ea2-429f-b5b2-c22f9de50b52', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/d/dec/decor/decorate.mp3', '2021-04-20 02:47:19.255000', '2021-04-20 02:47:19.255000', '', '1', 'decorate'),
('96594cea-148f-48c3-88f8-55fae4ca1ec4', 'null', '2021-04-20 02:59:22.333000', '2021-04-20 02:59:22.333000', '', '1', 'In addition (to+ N)'),
('97231425-18d9-4b5e-ac7e-63b5ac9e2c5c', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/tur/turn_/turn.mp3', '2021-04-20 03:02:13.779000', '2021-04-20 03:02:13.779000', '', '1', 'turn out'),
('976e1ba8-ca73-4fa5-a984-5098909eadf4', 'null', '2021-04-20 03:02:13.774000', '2021-04-20 03:02:13.774000', '', '1', 'half-finished'),
('978eccbd-ac8f-459d-bd27-8e33924263cf', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/f/flu/fluid/fluid.mp3', '2021-04-20 03:00:07.994000', '2021-04-20 03:00:07.994000', '', '1', 'fluid'),
('982cdf66-b407-4cb1-848c-bf546c2457ba', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/con/conte/content_01_00.mp3', '2021-04-20 03:00:08.026000', '2021-04-20 03:00:08.026000', '', '1', 'contents'),
('98d91fff-e422-4910-aee8-d7e4357c1412', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/esp/espec/especially.mp3', '2021-04-20 03:01:36.965000', '2021-04-20 03:01:36.965000', '', '1', 'especially'),
('9903d127-3f40-4b2a-bf57-87a82d481224', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/car/carpe/carpet.mp3', '2021-04-20 02:37:21.846000', '2021-04-20 02:37:21.846000', '', '1', 'carpet'),
('99411ab0-973a-4a79-b279-09ae1f830e59', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/u/usa/usa32/usa32541.mp3', '2021-04-20 02:59:22.393000', '2021-04-20 02:59:22.393000', '', '1', 'digestive system'),
('994af216-7489-40ca-a1d7-6c8f9c5726ab', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/the/their/their.mp3', '2021-05-16 16:11:27.735000', '2021-05-16 16:11:27.735000', '', '1', 'there'),
('9a265787-bd97-4997-9621-f57ffec9f81a', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pus/push_/push.mp3', '2021-05-16 16:10:22.650000', '2021-05-16 16:10:22.650000', '', '1', 'push'),
('9a2e2748-7dda-49e7-83a8-b6ddbb327709', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/i/ima/imagi/imagine.mp3', '2021-04-20 02:47:19.195000', '2021-04-20 02:47:19.195000', '', '1', 'imagine'),
('9a71da4c-2c6c-4016-90d6-16f4f4cd3466', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/sub/subst/substance.mp3', '2021-04-20 02:59:22.582000', '2021-04-20 02:59:22.582000', '', '1', 'substance'),
('9ac23d7d-dc37-49b5-bcb7-1dc2893ebcec', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/n/now/nowad/nowadays.mp3', '2021-04-20 03:01:36.914000', '2021-04-20 03:01:36.914000', '', '1', 'nowadays'),
('9b0b0040-e5e6-4a97-babe-789ae24005bc', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/b/bel/belie/believe.mp3', '2021-04-20 03:00:07.948000', '2021-04-20 03:00:07.948000', '', '1', 'believe it or not'),
('9b3cf670-456d-41bb-b239-b16f9ec6bd95', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus74/eus74100.mp3', '2021-04-20 03:02:14.024000', '2021-04-20 03:02:14.024000', '', '1', 'scientist'),
('9bc7120b-e5d0-412b-b33c-05444b4e5ccb', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus75/eus75288.mp3', '2021-04-20 03:00:08.052000', '2021-04-20 03:00:08.052000', '', '1', 'organic'),
('9c5cfab7-6578-4048-b809-d7d9a51df40b', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/ste/steal/steal.mp3', '2021-04-20 03:02:13.994000', '2021-04-20 03:02:13.994000', '', '1', 'steal'),
('9da3c1a8-3975-4bf5-9bce-1041e01075a4', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/con/conne/connect.mp3', '2021-04-20 03:00:54.950000', '2021-04-20 03:00:54.950000', '', '1', 'connect'),
('9da8bd11-fe8d-4aff-9783-b0a1e533dda8', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/h/hor/horro/horror.mp3', '2021-04-20 03:02:13.955000', '2021-04-20 03:02:13.955000', '', '1', 'horror'),
('9e15d5ca-6b15-4db3-b746-1ef6be503bc1', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/soc/socia/social.mp3', '2021-04-20 02:44:38.882000', '2021-04-20 02:44:38.882000', '', '1', 'social'),
('9e40b6cd-ead9-445e-a70a-f7a59dcd86b6', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/con/conne/connection.mp3', '2021-04-20 03:00:54.952000', '2021-04-20 03:00:54.952000', '', '1', 'connection'),
('9f2c476b-d477-47aa-9e93-1fab620f5fbc', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/amb/ambul/ambulance.mp3', '2021-04-20 02:44:38.717000', '2021-04-20 02:44:38.717000', '', '1', 'ambulance'),
('9ffe7a08-c46b-4ad9-b96a-99ff2914532c', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pop/pop__/pop.mp3', '2021-05-16 16:10:21.951000', '2021-05-16 16:10:21.951000', '', '1', 'pop'),
('a034b171-727e-427f-857a-7015e45c1e0e', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/con/conte/content_01_00.mp3', '2021-04-20 03:00:08.048000', '2021-04-20 03:00:08.048000', '', '1', 'content'),
('a065c461-04a8-4f0a-b844-c8905365da90', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pro/profe/professional.mp3', '2021-04-20 02:44:38.847000', '2021-04-20 02:44:38.847000', '', '1', 'professional'),
('a0686740-bb4b-4169-a30b-0d27cafc5444', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/u/usc/uscld/uscld01545.mp3', '2021-04-20 02:37:21.997000', '2021-04-20 02:37:21.997000', '', '1', 'unfamiliar'),
('a117238c-fcdc-48ab-9da8-267964fabbf8', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/ave/avera/average.mp3', '2021-04-20 02:52:53.724000', '2021-04-20 02:52:53.724000', '', '1', 'average'),
('a18fc1a9-a911-42df-b6ac-cd7bd9fc0896', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/l/lik/like_/like.mp3', '2021-05-16 16:09:00.256000', '2021-05-16 16:09:00.256000', '', '1', 'like'),
('a1a905c0-eb87-4d81-8bb1-707eb99b2047', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/f/fir/firm_/firm.mp3', '2021-04-20 02:40:11.142000', '2021-04-20 02:40:11.142000', '', '1', 'firm'),
('a26babce-2d4f-47ce-9979-aedfa6d747b3', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/d/dra/drain/drain.mp3', '2021-04-20 02:59:22.617000', '2021-04-20 02:59:22.617000', '', '1', 'drain'),
('a31da318-6d98-4db8-922f-8818b21e0207', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/l/lit/litte/litter.mp3', '2021-04-20 02:59:22.637000', '2021-04-20 02:59:22.637000', '', '1', 'litter'),
('a38a1a08-6014-4d41-adb1-ecd2427a86ed', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/tra/trage/tragedy.mp3', '2021-04-20 03:02:13.839000', '2021-04-20 03:02:13.839000', '', '1', 'tragedy'),
('a472db24-7634-48ce-bb75-18eb45c03057', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/m/mon/monso/monsoon.mp3', '2021-04-20 02:37:21.811000', '2021-04-20 02:37:21.811000', '', '1', 'monsoon'),
('a5dfb87e-9e81-476d-918c-97de9c0ed0bd', 'https://dictionary.cambridge.orghttps://dictionary.cambridge.org/zht/media/english/us_pron/m/mis/missi/missing.mp3', '2021-04-20 02:59:22.342000', '2021-04-20 02:59:22.342000', '', '1', 'end up + Ving/Adj/介片'),
('a645e2de-7286-4baf-a8eb-024b50826b22', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/f/fun/fun__/fun.mp3', '2021-05-20 17:26:44.169000', '2021-05-20 17:26:44.169000', '', '1', 'fun'),
('a67a7a97-ea2f-4653-a3dd-2c5cfa6c0e32', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus70/eus70064.mp3', '2021-04-20 02:37:22.041000', '2021-04-20 02:37:22.041000', '', '1', 'activity'),
('a793bde5-428a-41f7-9678-c9b20400088e', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus70/eus70741.mp3', '2021-04-20 02:37:21.842000', '2021-04-20 02:37:21.842000', '', '1', 'celebrity'),
('a80fb459-2576-4d44-86c2-cf7488ade6d5', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/uk_pron/u/ukc/ukcon/ukconse013.mp3', '2021-04-20 02:52:53.654000', '2021-04-20 02:52:53.654000', '', '1', 'consistent'),
('a8661bbf-b130-4a6d-bd3e-4a1998118657', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/f/fit/fit__/fit.mp3', '2021-04-20 02:37:21.807000', '2021-04-20 02:37:21.807000', '', '1', 'fit in'),
('a8714ef5-d03f-4bca-b83c-db05e756927f', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/awa/award/award.mp3', '2021-04-20 02:37:21.964000', '2021-04-20 02:37:21.964000', '', '1', 'award'),
('a881f4aa-f0e3-4619-a8ed-84c12872f6d6', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/tak/take_/take.mp3', '2021-04-20 02:44:38.711000', '2021-04-20 02:44:38.711000', '', '1', 'take on sth.'),
('a9965f38-b3ff-4f3f-9bf3-2d5d343cb65b', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus75/eus75655.mp3', '2021-05-22 23:55:39.172000', '2021-05-22 23:55:39.172000', '', '1', 'elephant'),
('a9f7f48a-d662-4ff6-a434-9ea5eff1a54b', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus70/eus70362.mp3', '2021-04-20 02:37:21.919000', '2021-04-20 02:37:21.919000', '', '1', 'attention'),
('aa2dabec-5e99-4b31-8b66-8d7c9a0342fa', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/ass/assoc/associate_01_00.mp3', '2021-04-20 02:47:19.220000', '2021-04-20 02:47:19.220000', '', '1', 'associate'),
('aa565a6f-9f6d-4f05-b5aa-89ac9176f694', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/l/lik/like_/like.mp3', '2021-05-16 16:09:00.224000', '2021-05-16 16:09:00.224000', '', '1', 'like'),
('aa5ad664-e469-4160-be93-f09b532244e6', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/g/gen/gentl/gentle.mp3', '2021-04-20 03:00:08.106000', '2021-04-20 03:00:08.106000', '', '1', 'gentle'),
('aa8d238c-75af-42c8-8092-95a2b7988e0a', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/g/gra/gradu/gradually.mp3', '2021-04-20 03:00:08.056000', '2021-04-20 03:00:08.056000', '', '1', 'gradually'),
('aacdf51f-3dff-4f5c-8452-c2d3215a57f9', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus70/eus70486.mp3', '2021-04-20 03:00:54.813000', '2021-04-20 03:00:54.813000', '', '1', 'behavior'),
('acb6c3f9-9e17-4f06-a5ae-85cd17750cb1', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/sym/symbo/symbolic.mp3', '2021-04-20 02:47:19.126000', '2021-04-20 02:47:19.126000', '', '1', 'symbolic'),
('ad21cc06-0ee5-4f2b-a7cf-8a608d06114a', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/h/hap/happy/happy.mp3', '2021-05-20 17:26:36.626000', '2021-05-20 17:26:36.626000', '', '1', 'happy'),
('ada50327-c540-427d-b074-456e3206a73c', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/h/hap/happy/happy.mp3', '2021-05-20 17:26:36.623000', '2021-05-20 17:26:36.623000', '', '1', 'happy'),
('ae152a5c-6f1d-4f45-a90c-f9c0982b00fa', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus73/eus73490.mp3', '2021-04-20 02:52:53.574000', '2021-04-20 02:52:53.574000', '', '1', 'percentage'),
('ae440a60-493c-4ed4-9ac5-56aba24308b8', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/m/mea/meani/meaning.mp3', '2021-04-20 02:47:19.193000', '2021-04-20 02:47:19.193000', '', '1', 'meaning'),
('af09ecec-e136-4f94-8b2f-2f4d32eaf54e', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/u/usa/usa35/usa35466.mp3', '2021-04-20 02:37:21.845000', '2021-04-20 02:37:21.845000', '', '1', 'red carpet'),
('af58b835-efd7-42b5-ac31-682c766bd6a5', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/f/fib/fiber/fiber.mp3', '2021-04-20 02:59:22.411000', '2021-04-20 02:59:22.411000', '', '1', 'fiber'),
('b09103c9-031a-40d1-8a86-f9761ccab62f', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus73/eus73605.mp3', '2021-04-20 02:52:53.739000', '2021-04-20 02:52:53.739000', '', '1', 'plenty'),
('b0aaca64-7678-48ec-ab27-82c108b4c5ab', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/m/moi/moist/moisture.mp3', '2021-04-20 03:00:08.017000', '2021-04-20 03:00:08.017000', '', '1', 'moisture'),
('b0b408e1-e50f-4243-9ba8-d6e9037e41f3', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/f/for/forgi/forgive.mp3', '2021-04-20 02:40:11.229000', '2021-04-20 02:40:11.229000', '', '1', 'forgive'),
('b0b5ab1c-4e21-4874-aed2-383c37616353', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus75/eus75291.mp3', '2021-04-20 02:59:22.490000', '2021-04-20 02:59:22.490000', '', '1', 'organization'),
('b0d2d8c2-dc1a-4bb8-be11-a70691649f16', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pro/prote/protective.mp3', '2021-04-20 03:00:54.899000', '2021-04-20 03:00:54.899000', '', '1', 'protective'),
('b10591c9-f395-48fe-9aee-2fddae102f06', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/roo/root_/root.mp3', '2021-04-20 02:40:11.007000', '2021-04-20 02:40:11.007000', '', '1', 'route'),
('b12adeba-cad2-4a06-aa7b-c936fbd516c6', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/m/man/manuf/manufacturer.mp3', '2021-04-20 02:59:22.471000', '2021-04-20 02:59:22.471000', '', '1', 'manufacturer'),
('b13ab96f-6009-485d-bec3-f9cd4ec5c3b5', 'https://dictionary.cambridge.orghttps://dictionary.cambridge.org/zht/media/english/us_pron/m/mis/missi/missing.mp3', '2021-04-20 02:52:53.454000', '2021-04-20 02:52:53.454000', '', '1', '\"When it comes to N/Ving'),
('b2097437-b578-47af-bc38-c81194c31aa0', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/h/han/hang_/hang.mp3', '2021-05-16 15:50:51.518000', '2021-05-16 15:50:51.518000', '', '1', 'hang'),
('b224bfdd-6f38-4c35-aee8-e26c0292dfd3', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/rel/relie/relief.mp3', '2021-04-20 02:40:11.018000', '2021-04-20 02:40:11.018000', '', '1', 'relief');
INSERT INTO `word` (`WordId`, `AudioPath`, `CreateTime`, `ModifyTime`, `Remarks`, `Status`, `TheWord`) VALUES
('b28650cb-20c4-464c-9002-cac3223730f6', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/app/apple/apple.mp3', '2021-05-20 17:21:14.440000', '2021-05-20 17:21:14.440000', '', '1', 'apple'),
('b2aea6dc-f02f-4761-8235-8d68077a1a82', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/com/compe/competition.mp3', '2021-04-20 02:52:53.678000', '2021-04-20 02:52:53.678000', '', '1', 'competition'),
('b53c1863-4a2f-4453-97dc-92e5ce22805d', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/sys/syste/system.mp3', '2021-04-20 02:59:22.374000', '2021-04-20 02:59:22.374000', '', '1', 'system'),
('b67ad8cf-0407-4d1b-a53c-a4d1d7c5efd7', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/b/ban/banan/banana.mp3', '2021-05-20 17:21:14.439000', '2021-05-20 17:21:14.439000', '', '1', 'banana'),
('b6f8eb1b-5563-466c-a23e-9777ade5c3d2', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/con/conte/content_01_00.mp3', '2021-04-20 03:00:08.047000', '2021-04-20 03:00:08.047000', '', '1', 'content'),
('b8704614-93b8-4850-84a3-85e3a971ad46', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/u/usa/usa35/usa35418.mp3', '2021-04-20 03:02:13.822000', '2021-04-20 03:02:13.822000', '', '1', 'north pole'),
('b89373aa-12a2-4d24-92c6-b286b203e6ad', 'https://dictionary.cambridge.orghttps://dictionary.cambridge.org/zht/media/english/us_pron/m/mis/missi/missing.mp3', '2021-04-20 02:47:19.094000', '2021-04-20 02:47:19.094000', '', '1', 'in/by comparison (with)'),
('b926db60-a449-4e47-adfc-1c85c5c90669', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/v/vol/volun/volunteer.mp3', '2021-04-20 02:59:22.474000', '2021-04-20 02:59:22.474000', '', '1', 'volunteer'),
('ba5ef830-9fa8-4ad1-9ec1-6be6c52ae48c', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus73/eus73037.mp3', '2021-04-20 03:02:13.870000', '2021-04-20 03:02:13.870000', '', '1', 'misfortune'),
('ba615524-3e59-4c46-9b42-6a75f9b0c2f8', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/d/dec/decor/decoration.mp3', '2021-04-20 02:47:19.254000', '2021-04-20 02:47:19.254000', '', '1', 'decoration'),
('ba9856e7-d34d-48b9-9048-b0790736e252', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/d/dog/dog__/dog.mp3', '2021-05-22 23:55:39.141000', '2021-05-22 23:55:39.141000', '', '1', 'dog'),
('bad30f13-a3b6-45f8-b0c7-0f852aa8e42d', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/rel/reluc/reluctant.mp3', '2021-04-20 02:44:38.721000', '2021-04-20 02:44:38.721000', '', '1', 'reluctant'),
('bb234d21-87df-446d-ab99-eb52d8796b7e', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/l/lyr/lyric/lyric.mp3', '2021-04-20 02:37:21.830000', '2021-04-20 02:37:21.830000', '', '1', 'lyrics'),
('bc81762a-7d0c-4786-b72b-67ff11bfbaa5', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pop/pop__/pop.mp3', '2021-05-16 16:10:21.799000', '2021-05-16 16:10:21.799000', '', '1', 'pop'),
('bca21bbb-364b-4c0e-8d50-483bd5948f5a', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/d/dea/deal_/deal.mp3', '2021-04-20 03:00:54.778000', '2021-04-20 03:00:54.778000', '', '1', 'deal with sth'),
('bd1fbcc5-bd2a-4a9b-a631-94c3f5e19905', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/scr/scrub/scrub.mp3', '2021-04-20 02:59:22.443000', '2021-04-20 02:59:22.443000', '', '1', 'scrub'),
('bdd16a0f-0d4a-4edd-86bd-fe9731d226e1', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus71/eus71636.mp3', '2021-04-20 02:40:11.133000', '2021-04-20 02:40:11.133000', '', '1', 'escape'),
('be0be9bc-1d99-4f74-a793-346ba709b40a', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/d/des/descr/describe.mp3', '2021-04-20 02:47:19.191000', '2021-04-20 02:47:19.191000', '', '1', 'describe'),
('beb1bfe8-bf3b-4724-8d25-d63142cd92cf', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/d/dra/drain/drain.mp3', '2021-04-20 02:59:22.623000', '2021-04-20 02:59:22.623000', '', '1', 'drain'),
('bed1feae-2f97-4760-b6ed-f0c190d73e16', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus70/eus70847.mp3', '2021-04-20 03:00:08.090000', '2021-04-20 03:00:08.090000', '', '1', 'cloth'),
('bee2541e-4561-4fc1-8855-d8037362da56', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/w/wal/walk_/walk.mp3', '2021-04-20 02:44:38.679000', '2021-04-20 02:44:38.679000', '', '1', 'walk away'),
('bf29bddc-f349-4cd1-a3b5-37bd67fa93b0', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/g/gro/grow_/grow.mp3', '2021-04-20 03:00:54.779000', '2021-04-20 03:00:54.779000', '', '1', 'grow out of sth'),
('c0076b8e-6b03-4c7d-abf4-c18fdf2da667', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/g/gra/gradu/gradual.mp3', '2021-04-20 03:00:08.055000', '2021-04-20 03:00:08.055000', '', '1', 'gradual'),
('c0d47bbf-1129-44c8-a940-be54eff3a758', 'null', '2021-04-20 02:52:53.532000', '2021-04-20 02:52:53.532000', '', '1', 'around/round the clock'),
('c11ca94a-0f7b-4d96-b10d-3d83c6a1fe5f', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/b/bla/blame/blame.mp3', '2021-04-20 02:44:38.753000', '2021-04-20 02:44:38.753000', '', '1', 'blame'),
('c1488c76-94ac-425c-901c-1f233ef8ed8b', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/cub/cube_/cube.mp3', '2021-04-20 03:00:08.022000', '2021-04-20 03:00:08.022000', '', '1', 'cube'),
('c1765455-73fa-4d1e-b143-0e1dd360abdd', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus70/eus70013.mp3', '2021-07-12 15:30:37.381000', '2021-07-12 15:30:37.381000', '', '1', 'ability'),
('c2097f3f-45e0-4324-a4c4-ed95d951638e', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/f/flo/float/float.mp3', '2021-04-20 02:59:22.567000', '2021-04-20 02:59:22.567000', '', '1', 'float'),
('c223d0dd-6e54-46bd-bcba-226ae9f7ef54', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/sch/sched/schedule.mp3', '2021-04-20 02:37:22.005000', '2021-04-20 02:37:22.005000', '', '1', 'schedule'),
('c280e5fb-49b6-4bc4-8b3b-9e75cba4c717', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/l/lab/labor/laboratory.mp3', '2021-04-20 03:00:08.022000', '2021-04-20 03:00:08.022000', '', '1', 'laboratory'),
('c2c931b1-d466-4444-abb3-e09074ba31bb', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pus/push_/push.mp3', '2021-05-16 16:10:22.649000', '2021-05-16 16:10:22.649000', '', '1', 'push'),
('c3483549-f03b-44f5-938c-d3a07f463d70', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pop/pop__/pop.mp3', '2021-05-16 16:10:21.789000', '2021-05-16 16:10:21.789000', '', '1', 'pop'),
('c34dcc8c-f1da-4287-afe0-adbfffbd8e8c', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/l/lik/like_/like.mp3', '2021-05-16 16:08:59.890000', '2021-05-16 16:08:59.890000', '', '1', 'like'),
('c37727b7-58fe-4891-803e-d2e514e0802d', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/i/imp/impro/improvement.mp3', '2021-04-20 03:01:36.896000', '2021-04-20 03:01:36.896000', '', '1', 'improvement'),
('c4015f64-f365-4238-8b4a-bb7e7960b53a', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/j/jar/jar__/jar.mp3', '2021-04-20 03:00:08.186000', '2021-04-20 03:00:08.186000', '', '1', 'jar'),
('c4b255d7-b6e3-4874-b4f9-2ab5146a4a92', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus73/eus73497.mp3', '2021-04-20 02:37:21.877000', '2021-04-20 02:37:21.877000', '', '1', 'perform'),
('c56fe0f9-5627-4404-9d12-54b3082d7480', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/l/lik/like_/like.mp3', '2021-05-16 16:08:59.897000', '2021-05-16 16:08:59.897000', '', '1', 'like'),
('c5961c2d-b197-46b9-8651-43be44efcb9b', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/rep/repai/repair.mp3', '2021-04-20 02:40:11.053000', '2021-04-20 02:40:11.053000', '', '1', 'repair'),
('c5b455a2-e266-4ac7-b5e8-7fc90fa148f6', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus73/eus73963.mp3', '2021-04-20 02:44:38.866000', '2021-04-20 02:44:38.866000', '', '1', 'responsibility'),
('c5c05075-58c6-4914-8788-70e6c578df7f', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/thr/throw/throw.mp3', '2021-04-20 02:59:22.343000', '2021-04-20 02:59:22.343000', '', '1', 'throw away (sth)'),
('c5e5c121-f029-490c-9994-d7c17f10a5e5', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/i/inj/injur/injury.mp3', '2021-04-20 02:52:53.559000', '2021-04-20 02:52:53.559000', '', '1', 'injury'),
('c681b4d1-3e00-482b-8167-88f7a68cf300', 'null', '2021-04-20 02:40:10.955000', '2021-04-20 02:40:10.955000', '', '1', 'can\'t wait to V'),
('c6e0855c-bdc6-4faf-a866-5f7fce883b3d', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/suc/succe/success.mp3', '2021-04-20 03:02:13.844000', '2021-04-20 03:02:13.844000', '', '1', 'success'),
('c752b8ad-72ad-4213-a6d4-42017f38cfd6', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pus/push_/push.mp3', '2021-05-16 16:10:22.648000', '2021-05-16 16:10:22.648000', '', '1', 'push'),
('c78e9386-7a8d-4849-a52e-1ee5a60bad13', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/civ/civic/civic.mp3', '2021-04-20 02:44:38.714000', '2021-04-20 02:44:38.714000', '', '1', 'civic'),
('c8b4ca04-1343-4365-a3d7-0f4edc7f7869', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/cul/cultu/cultural.mp3', '2021-04-20 03:00:54.941000', '2021-04-20 03:00:54.941000', '', '1', 'cultural'),
('c93fb912-e6d9-4e1f-812f-3425a4a256eb', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/b/bro/brown/brownie.mp3', '2021-04-20 03:01:36.869000', '2021-04-20 03:01:36.869000', '', '1', 'brownie'),
('c94a3326-4234-4a6d-a6cc-fedde8414920', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/f/fol/follo/following.mp3', '2021-04-20 02:37:21.972000', '2021-04-20 02:37:21.972000', '', '1', 'following'),
('c9e31566-cdba-45a3-b52c-e92a86abf0da', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/cen/centu/century.mp3', '2021-04-20 03:01:36.923000', '2021-04-20 03:01:36.923000', '', '1', 'century'),
('ca8bcee7-7004-4da1-b54e-5f4a09443353', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/ave/avera/average.mp3', '2021-04-20 02:52:53.720000', '2021-04-20 02:52:53.720000', '', '1', 'average'),
('caf71e19-ea1d-4c73-a363-9557e2829b97', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pop/pop__/pop.mp3', '2021-05-16 16:10:21.968000', '2021-05-16 16:10:21.968000', '', '1', 'pop'),
('cb82a021-369f-4bd3-acfa-4b9fb43a8c73', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/alc/alcoh/alcohol.mp3', '2021-04-20 02:52:53.500000', '2021-04-20 02:52:53.500000', '', '1', 'alcohol'),
('cbe0b4ef-32cc-4137-a865-d27437a38f8f', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pop/pop__/pop.mp3', '2021-04-20 02:37:21.837000', '2021-04-20 02:37:21.837000', '', '1', 'pop'),
('cca02a4b-f9cc-4396-b7a7-4a6acc909d0b', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pat/patie/patient.mp3', '2021-04-20 02:44:38.807000', '2021-04-20 02:44:38.807000', '', '1', 'patient'),
('ccd5f360-bd8e-4eb7-9e52-9db02197b759', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/rus/rush_/rush.mp3', '2021-04-20 02:44:38.808000', '2021-04-20 02:44:38.808000', '', '1', 'rush'),
('cd5d0b58-1f39-4b5c-a1cf-6a497dee022c', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus73/eus73705.mp3', '2021-04-20 03:00:08.177000', '2021-04-20 03:00:08.177000', '', '1', 'prevent'),
('cd83e1f5-5007-4f21-8dfe-bf98cb1d43b4', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/the/there/therefore.mp3', '2021-04-20 02:47:19.222000', '2021-04-20 02:47:19.222000', '', '1', 'therefore'),
('cdba20c7-8512-48f9-b6db-524d78281dac', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/m/mur/murde/murder.mp3', '2021-04-20 03:02:13.931000', '2021-04-20 03:02:13.931000', '', '1', 'murder'),
('ce9c5d0a-466e-4d9e-adb5-55e3b4e76c34', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/app/apple/apple.mp3', '2021-05-16 15:49:25.142000', '2021-05-16 15:49:25.142000', '', '1', 'apple'),
('cf08f3db-ec0c-4218-9add-8cae6e674e66', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/i/ind/indic/indication.mp3', '2021-04-20 02:47:19.292000', '2021-04-20 02:47:19.292000', '', '1', 'indication'),
('cf35313d-0cdf-428c-a1eb-77c63e1d8e71', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus73/eus73498.mp3', '2021-04-20 02:37:21.872000', '2021-04-20 02:37:21.872000', '', '1', 'performance'),
('cfa3e379-e86e-4f20-a00d-73cccf25425f', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/cal/calm_/calm.mp3', '2021-04-20 02:47:19.092000', '2021-04-20 02:47:19.092000', '', '1', 'calm down'),
('cfdc5623-3218-4330-a9a6-01bead38f625', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pro/profe/profession.mp3', '2021-04-20 02:44:38.852000', '2021-04-20 02:44:38.852000', '', '1', 'profession'),
('d06bfd00-142f-4f76-b692-5179228dd789', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/rou/routi/routine.mp3', '2021-04-20 03:00:55.033000', '2021-04-20 03:00:55.033000', '', '1', 'routine'),
('d0885df7-af2e-47bb-a0c2-c645a4933b53', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/str/strug/struggle.mp3', '2021-04-20 02:52:53.656000', '2021-04-20 02:52:53.656000', '', '1', 'struggle'),
('d0bc3ea9-dcfc-4e34-b11a-9d817f5eed98', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pol/pollu/pollute.mp3', '2021-04-20 02:59:22.572000', '2021-04-20 02:59:22.572000', '', '1', 'pollute'),
('d13e44cd-b2c9-4683-92cc-bce21c7fdf31', 'null', '2021-04-20 02:52:53.501000', '2021-04-20 02:52:53.501000', '', '1', 'blood alcohol content'),
('d230423e-6191-4b3d-8ec6-9db3a89406d1', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/app/apply/apply.mp3', '2021-04-20 02:47:19.335000', '2021-04-20 02:47:19.335000', '', '1', 'apply'),
('d246a3ad-4463-408b-b21a-cb64b2991b56', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/u/usw/uswea/usweare017.mp3', '2021-04-20 02:47:19.157000', '2021-04-20 02:47:19.157000', '', '1', 'weekday'),
('d2970091-e35f-4169-8239-9377503cec00', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/acc/acces/access.mp3', '2021-04-20 02:52:53.706000', '2021-04-20 02:52:53.706000', '', '1', 'access'),
('d2a9dfa7-9611-45cb-8591-f6b88267cd1b', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/rep/repre/represent.mp3', '2021-04-20 03:00:54.974000', '2021-04-20 03:00:54.974000', '', '1', 'represent'),
('d3b336ed-72bb-4eda-b46f-94f0763c00da', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/f/for/forgi/forgiveness.mp3', '2021-04-20 02:40:11.232000', '2021-04-20 02:40:11.232000', '', '1', 'forgiveness'),
('d45047e8-33d7-4eac-81ed-74961bb899f3', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/w/wip/wipe_/wipe.mp3', '2021-04-20 03:00:07.947000', '2021-04-20 03:00:07.947000', '', '1', 'wipe up sth.'),
('d48094f1-3f44-4c37-a53b-53c3c254a7c9', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/sci/scien/scientific.mp3', '2021-04-20 03:02:14.022000', '2021-04-20 03:02:14.022000', '', '1', 'scientific'),
('d4a50ed9-4f9e-420b-abae-2c5933dd5f24', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/cdo/cdo03/cdo0319usmicr1105.mp3', '2021-04-20 02:59:22.432000', '2021-04-20 02:59:22.432000', '', '1', 'microplastics'),
('d4bd6b67-335d-41ff-aaaa-cdad3c5a84b8', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus75/eus75884.mp3', '2021-04-20 03:00:08.166000', '2021-04-20 03:00:08.166000', '', '1', 'prevention'),
('d4ed9429-1307-47c4-bbcc-e8baa29382c8', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/l/lik/like_/like.mp3', '2021-05-16 16:09:00.174000', '2021-05-16 16:09:00.174000', '', '1', 'like'),
('d5abb954-c360-4fe9-8c17-3209590d1002', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/d/des/desir/desirable.mp3', '2021-04-20 03:00:54.833000', '2021-04-20 03:00:54.833000', '', '1', 'desirable'),
('d5bc09a8-8257-40df-b1ae-729519351c8c', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/con/consi/consider.mp3', '2021-04-20 03:01:36.961000', '2021-04-20 03:01:36.961000', '', '1', 'consider'),
('d635320a-b27f-4fee-8fa1-41bb269e9045', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/tes/test_/test.mp3', '2021-04-27 17:09:38.472000', '2021-04-27 17:09:38.472000', '', '1', 'test'),
('d654d6c7-5a8e-4545-8671-15ee700e6957', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pro/prote/protect.mp3', '2021-04-20 03:00:54.914000', '2021-04-20 03:00:54.914000', '', '1', 'protect'),
('d6e5eebb-4ade-4335-9730-f492bb8bd757', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/cra/crash/crash.mp3', '2021-04-20 02:40:11.134000', '2021-04-20 02:40:11.134000', '', '1', 'crash'),
('d6f8f24f-c894-4049-a105-acc63786ea0d', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus75/eus75508.mp3', '2021-04-20 02:37:22.028000', '2021-04-20 02:37:22.028000', '', '1', 'challenge'),
('d704b7df-485d-4eff-bd3a-475be48d6d6d', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/ser/serie/series.mp3', '2021-04-20 03:01:36.841000', '2021-04-20 03:01:36.841000', '', '1', 'series'),
('d7875b88-9a86-4707-9ea9-276f62c8db75', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/i/inf/influ/influential.mp3', '2021-04-20 02:47:19.256000', '2021-04-20 02:47:19.256000', '', '1', 'influential'),
('d7955188-5328-4c6f-a0c4-ff19a8f08d77', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/l/lik/like_/like.mp3', '2021-05-16 16:09:00.192000', '2021-05-16 16:09:00.192000', '', '1', 'like'),
('d796ec11-ea9c-445d-9e05-6d4af2890808', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/com/come_/come.mp3', '2021-04-20 02:44:38.680000', '2021-04-20 02:44:38.680000', '', '1', 'come across sth'),
('d7cd2060-a018-41b4-9c41-eaba5ea2997f', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/rel/relig/religion.mp3', '2021-04-20 03:00:54.933000', '2021-04-20 03:00:54.933000', '', '1', 'religion'),
('d8eadefa-f760-464c-9037-29d2a55415ae', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/h/hi_/hi___/hi.mp3', '2021-05-20 17:26:44.007000', '2021-05-20 17:26:44.007000', '', '1', 'hi'),
('d90ac36a-f16a-48ea-8005-0e388cc99648', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/b/ban/banan/banana.mp3', '2021-05-20 17:24:25.864000', '2021-05-20 17:24:25.864000', '', '1', 'banana'),
('d9839da2-7379-437c-ba6e-62cd2eeeef78', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/shi/shift/shift.mp3', '2021-04-20 02:52:53.591000', '2021-04-20 02:52:53.591000', '', '1', 'shift'),
('d9bb93b8-f90e-4557-a7a4-c9c123492b0d', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus71/eus71530.mp3', '2021-04-20 02:37:21.872000', '2021-04-20 02:37:21.872000', '', '1', 'encourage'),
('d9d3bb63-8c3d-4cf5-a048-0d2115648f0d', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pro/produ/product.mp3', '2021-04-20 02:59:22.595000', '2021-04-20 02:59:22.595000', '', '1', 'product'),
('d9d9d2e6-ea62-487b-a3e8-6dd4dcfce395', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/d/def/defin/definite.mp3', '2021-04-20 02:37:21.928000', '2021-04-20 02:37:21.928000', '', '1', 'definite'),
('dad9921a-7cf1-4b4f-982e-bf71f857b950', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/i/ill/ill__/ill.mp3', '2021-04-20 03:00:54.885000', '2021-04-20 03:00:54.885000', '', '1', 'ill'),
('dafc778b-07f7-4ee8-9c23-ebfb28086363', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/b/bri/briti/british.mp3', '2021-04-20 03:01:36.799000', '2021-04-20 03:01:36.799000', '', '1', 'british'),
('dbe5ded6-74e2-45bc-aa88-61db3c8dcc62', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/app/apple/apple.mp3', '2021-05-20 17:25:28.572000', '2021-05-20 17:25:28.572000', '', '1', 'apple'),
('dc1622c5-a9a3-40ef-97c5-a1c38a648b33', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pop/pop__/pop.mp3', '2021-05-16 16:10:21.963000', '2021-05-16 16:10:21.963000', '', '1', 'pop'),
('dc93cda3-9da6-4913-8aec-9e7fc093059c', 'https://dictionary.cambridge.org/zht/media/英語-漢語-繁體/us_pron/t/tes/test_/test.mp3', '2021-04-27 16:39:03.312000', '2021-04-27 16:39:03.312000', 'test04271123', '1', 'test'),
('dcb3ecb1-44eb-4b8f-9c43-97ed6cdf2cb2', 'null', '2021-04-20 02:52:53.453000', '2021-04-20 02:52:53.453000', '', '1', 'N(想法) + come to mind'),
('dcce5eaf-fcd5-420e-b307-790f6ec78174', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/awa/awake/awake.mp3', '2021-04-20 02:52:53.714000', '2021-04-20 02:52:53.714000', '', '1', 'awake'),
('dcdcae73-9c78-4372-bd8e-3a4c6eecda7e', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/i/inf/influ/influence.mp3', '2021-04-20 02:47:19.256000', '2021-04-20 02:47:19.256000', '', '1', 'influence'),
('dde2a6db-920f-4544-9ebc-1095c2adc6c7', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/res/rescu/rescue.mp3', '2021-04-20 02:44:38.827000', '2021-04-20 02:44:38.827000', '', '1', 'rescue'),
('ddea02ea-b511-4068-9d2b-c98dfee639d0', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/b/ban/banan/banana.mp3', '2021-05-20 17:25:18.809000', '2021-05-20 17:25:18.809000', '', '1', 'banana'),
('ddedc60e-190f-4ea6-b5d7-0844ed726f38', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus71/eus71680.mp3', '2021-04-20 03:00:54.996000', '2021-04-20 03:00:54.996000', '', '1', 'event'),
('de513f0c-7245-4a22-be7b-bedf13373cc6', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/g/gov/gover/govern.mp3', '2021-04-20 02:59:22.454000', '2021-04-20 02:59:22.454000', '', '1', 'govern'),
('de7a5046-0e93-4d99-bd1d-041b23579ad9', 'https://dictionary.cambridge.org/zht/media/英語-漢語-繁體/us_pron/t/tes/test_/test.mp3', '2021-04-20 17:29:18.921000', '2021-04-20 17:29:18.921000', '', '1', 'test'),
('df063e85-e56c-4b8c-9af4-f0ad3d3ed61d', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/app/apple/apple.mp3', '2021-05-16 16:07:17.577000', '2021-05-16 16:07:17.577000', '', '1', 'apple'),
('e009dc44-44f5-4eb3-b98b-445471375996', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/app/appea/appearance.mp3', '2021-04-20 03:02:13.941000', '2021-04-20 03:02:13.941000', '', '1', 'appearance'),
('e03148a1-abbb-4638-9ac5-0689976e6022', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/f/fem/femal/female.mp3', '2021-04-20 03:02:13.906000', '2021-04-20 03:02:13.906000', '', '1', 'female'),
('e0b05099-5cd2-4d2e-ba2e-db2544a95f5d', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pop/pop__/pop.mp3', '2021-05-16 16:10:22.028000', '2021-05-16 16:10:22.028000', '', '1', 'pop'),
('e0e23dbf-3c17-4d45-b5d6-699a4a32f9f7', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/put/put__/put.mp3', '2021-04-20 03:00:54.785000', '2021-04-20 03:00:54.785000', '', '1', 'put sth on'),
('e21f8275-020b-4ea9-ade1-55d632c26fbe', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/cre/creat/creature.mp3', '2021-04-20 03:02:13.905000', '2021-04-20 03:02:13.905000', '', '1', 'creature'),
('e2578603-f0c5-45b8-9c29-84c8c8bf3af6', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/sec/secre/secret.mp3', '2021-04-20 03:00:08.053000', '2021-04-20 03:00:08.053000', '', '1', 'secret'),
('e29e8151-cc45-467a-ac83-9168ee5f3c0f', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus71/eus71591.mp3', '2021-04-20 02:47:19.286000', '2021-04-20 02:47:19.286000', '', '1', 'environment'),
('e2b622bb-7bc1-4128-8f4f-e4774f8c9e8f', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pop/pop__/pop.mp3', '2021-05-16 16:10:21.711000', '2021-05-16 16:10:21.711000', '', '1', 'pop'),
('e2d3022b-df82-4872-8845-89706c14ae77', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/emp/empty/empty.mp3', '2021-04-20 02:37:22.042000', '2021-04-20 02:37:22.042000', '', '1', 'empty'),
('e2d78fbb-917e-4da9-8599-1717f96e48a7', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/u/usc/uscld/uscld01268.mp3', '2021-04-20 03:02:13.831000', '2021-04-20 03:02:13.831000', '', '1', 'science fiction'),
('e464b0ea-fc54-456e-affd-c56d89aaa616', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eld/elder/elderly.mp3', '2021-04-20 02:40:11.197000', '2021-04-20 02:40:11.197000', '', '1', 'elderly'),
('e486aa78-0a7f-4d40-9802-b72293bb364c', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/h/hou/house/household.mp3', '2021-04-20 02:59:22.600000', '2021-04-20 02:59:22.600000', '', '1', 'household'),
('e49e2777-62a7-4afb-96da-657a71bce7b5', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus73/eus73963.mp3', '2021-04-20 02:44:38.875000', '2021-04-20 02:44:38.875000', '', '1', 'responsibility'),
('e5c53663-8ead-44ef-bcf0-42523173ff4c', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/m/mis/missi/missile.mp3', '2021-04-20 02:40:11.003000', '2021-04-20 02:40:11.003000', '', '1', 'missile'),
('e6424385-527b-4bac-9c88-478bfab904ab', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/d/dis/disco/discovery.mp3', '2021-04-20 03:01:36.931000', '2021-04-20 03:01:36.931000', '', '1', 'discovery'),
('e65f43b8-cce6-4b05-9417-388ca9e443ee', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/reu/reuse/reuse.mp3', '2021-04-20 02:59:22.373000', '2021-04-20 02:59:22.373000', '', '1', 'reuse'),
('e67cf523-f12d-4308-a73f-e90457852223', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/h/han/hang_/hang.mp3', '2021-05-16 15:50:51.523000', '2021-05-16 15:50:51.523000', '', '1', 'hang'),
('e6cc9f97-15b7-4f70-80da-6dbe8ba31990', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/sle/sleep/sleepless.mp3', '2021-04-20 02:52:53.525000', '2021-04-20 02:52:53.525000', '', '1', 'sleepless'),
('e7379ff3-0216-404a-84d4-08e9b1aab208', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/exp/expec/expectation.mp3', '2021-04-20 03:02:13.962000', '2021-04-20 03:02:13.962000', '', '1', 'expectation'),
('e762c29a-181f-4221-93a4-a8ed37ea7798', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/h/hea/hear_/hear.mp3', '2021-05-16 16:11:27.733000', '2021-05-16 16:11:27.733000', '', '1', 'here'),
('e82bafa6-7780-4c7a-b8d6-7f4c363bc210', 'null', '2021-04-20 02:52:53.655000', '2021-04-20 02:52:53.655000', '', '1', 'consistently'),
('e8ebfce5-d115-4ff1-a0e8-c0d8c11ee8ed', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/adm/admis/admission.mp3', '2021-04-20 02:52:53.563000', '2021-04-20 02:52:53.563000', '', '1', 'admission'),
('e9f7c56c-6332-4a7b-a89a-9b226e249dc9', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/u/usc/uscld/uscld00436.mp3', '2021-04-20 03:00:07.955000', '2021-04-20 03:00:07.955000', '', '1', 'eye-catching'),
('ea84350b-380b-44d2-90ab-eba318fdaadb', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/exp/exper/expert.mp3', '2021-04-20 02:52:53.732000', '2021-04-20 02:52:53.732000', '', '1', 'expert'),
('ea8fe188-82b4-4b51-91fb-42aa2e616e4e', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/h/har/harm_/harm.mp3', '2021-04-20 02:59:22.536000', '2021-04-20 02:59:22.536000', '', '1', 'harm'),
('eaebf57d-4849-40cb-8e99-5c2e12092e6f', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/rep/repre/representation.mp3', '2021-04-20 03:00:54.971000', '2021-04-20 03:00:54.971000', '', '1', 'representation'),
('eb0893d4-f542-481f-bbec-99f343d31990', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus73/eus73375.mp3', '2021-04-20 02:52:53.454000', '2021-04-20 02:52:53.454000', '', '1', 'overweight'),
('eb92dd3b-dd45-4f0e-85e8-96d0ccec7ec8', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/rea/reali/realize.mp3', '2021-04-20 03:00:08.024000', '2021-04-20 03:00:08.024000', '', '1', 'realize'),
('ec108045-4e74-4315-8721-989b7fdf8262', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus75/eus75513.mp3', '2021-04-20 03:01:36.993000', '2021-04-20 03:01:36.993000', '', '1', 'creator'),
('ec5d8235-2d0c-4873-ac6d-76964217b1a5', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/l/lim/limit/limit.mp3', '2021-04-20 02:52:53.632000', '2021-04-20 02:52:53.632000', '', '1', 'limit'),
('ecc3763f-b071-4c0f-9b1f-5a8d727bd793', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pow/powde/powder.mp3', '2021-04-20 03:00:08.142000', '2021-04-20 03:00:08.142000', '', '1', 'powder'),
('ecc41c20-d2e8-495c-83da-f6431657e6af', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/adm/admit/admit.mp3', '2021-04-20 02:52:53.565000', '2021-04-20 02:52:53.565000', '', '1', 'admit'),
('ee55a54b-fe2c-4539-8d1c-20297f05045a', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/d/dis/disea/disease.mp3', '2021-04-20 02:52:53.460000', '2021-04-20 02:52:53.460000', '', '1', 'disease'),
('ee917d19-8053-4623-9133-bd61e8398788', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/rem/remai/remain.mp3', '2021-04-20 03:00:54.871000', '2021-04-20 03:00:54.871000', '', '1', 'remain'),
('eee58427-fddd-4cd9-af6c-5b2497e13181', 'https://dictionary.cambridge.orghttps://dictionary.cambridge.org/zht/media/english/us_pron/m/mis/missi/missing.mp3', '2021-04-20 02:44:38.684000', '2021-04-20 02:44:38.684000', '', '1', 'rely on/upon + N'),
('ef9c7089-1eaa-4c34-9651-ef9b5d6982ab', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus73/eus73179.mp3', '2021-04-20 02:52:53.750000', '2021-04-20 02:52:53.750000', '', '1', 'necessity'),
('efb2f79c-d5ea-4459-bc5f-6454dc70f82a', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/tax/tax__/tax.mp3', '2021-04-20 03:01:36.931000', '2021-04-20 03:01:36.931000', '', '1', 'tax'),
('f02b38bb-9354-484f-997d-8cc23a21ea5d', 'null', '2021-04-20 02:47:19.085000', '2021-04-20 02:47:19.085000', '', '1', 'on the other hand'),
('f06db259-1f91-44aa-98a1-483ed5413131', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus70/eus70497.mp3', '2021-04-20 03:00:54.999000', '2021-04-20 03:00:54.999000', '', '1', 'belief'),
('f0972f67-bbc4-42d4-9e7a-f8fe2eb6c978', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/app/appet/appetite.mp3', '2021-04-20 02:47:19.287000', '2021-04-20 02:47:19.287000', '', '1', 'appetite'),
('f184c45d-7d72-49eb-90d0-48b90f5a1e4a', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/att/attra/attract.mp3', '2021-04-20 02:47:19.354000', '2021-04-20 02:47:19.354000', '', '1', 'attract'),
('f1a3132e-50b3-4a79-8a84-66812754aed9', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/att/attra/attraction.mp3', '2021-04-20 02:47:19.354000', '2021-04-20 02:47:19.354000', '', '1', 'attraction'),
('f1b7350f-6333-4027-b971-487aea85304c', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eas/easte/eastern.mp3', '2021-04-20 02:37:21.898000', '2021-04-20 02:37:21.898000', '', '1', 'eastern'),
('f22b2bcd-e378-4f96-bc42-db980a22b872', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/avo/avoid/avoid.mp3', '2021-04-20 03:00:54.829000', '2021-04-20 03:00:54.829000', '', '1', 'avoid'),
('f2881781-27f0-4aa0-85a8-21631018f3b5', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/com/compl/complete.mp3', '2021-04-20 03:02:13.975000', '2021-04-20 03:02:13.975000', '', '1', 'complete'),
('f42a2df7-1f26-4765-87f8-1da9e08562ad', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus74/eus74291.mp3', '2021-04-20 02:44:38.888000', '2021-04-20 02:44:38.888000', '', '1', 'society'),
('f43b5cfc-027b-401d-b3c2-b2beda2371ea', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/v/vet/vet__/vet.mp3', '2021-04-20 02:44:38.721000', '2021-04-20 02:44:38.721000', '', '1', 'vet'),
('f43f99fc-81b1-4d36-b103-516a20761b09', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/sip/sip__/sip.mp3', '2021-04-20 03:01:36.873000', '2021-04-20 03:01:36.873000', '', '1', 'sip'),
('f47772dd-97a9-442f-a015-c9ae275b212a', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/res/resul/result.mp3', '2021-04-20 02:40:11.198000', '2021-04-20 02:40:11.198000', '', '1', 'result'),
('f4955313-f6f9-4d26-ac54-f0d7261604e3', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/squ/squee/squeeze.mp3', '2021-04-20 03:00:08.079000', '2021-04-20 03:00:08.079000', '', '1', 'squeeze'),
('f4adf6d0-14e0-4a01-b70f-8b323fd6d8b3', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/abo/above/above.mp3', '2021-07-12 15:30:37.318000', '2021-07-12 15:30:37.318000', '', '1', 'above'),
('f53d2865-7f64-4c65-90a3-bdd222c9cece', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/g/gra/grave/grave.mp3', '2021-04-20 03:02:13.985000', '2021-04-20 03:02:13.985000', '', '1', 'grave'),
('f53fcbd4-0f28-41dd-a314-e56074726e4e', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/f/fie/field/field.mp3', '2021-04-20 02:52:53.603000', '2021-04-20 02:52:53.603000', '', '1', 'field'),
('f5748a65-8d95-4047-b1a7-8079a0a774d7', 'null', '2021-04-20 03:02:13.778000', '2021-04-20 03:02:13.778000', '', '1', 'or else'),
('f5f3af38-a9f1-4a51-99c5-cf4921ff9f09', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/b/bra/brain/brain.mp3', '2021-04-20 02:47:19.220000', '2021-04-20 02:47:19.220000', '', '1', 'brain'),
('f621585a-3e99-44ee-833c-e04adc291a3d', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus75/eus75507.mp3', '2021-04-20 02:37:21.841000', '2021-04-20 02:37:21.841000', '', '1', 'ceremony'),
('f654a04f-0180-4c60-b791-0f5c9b9154c7', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/n/nut/nutri/nutritious.mp3', '2021-04-20 02:52:53.535000', '2021-04-20 02:52:53.535000', '', '1', 'nutritious'),
('f689d4a5-b29e-40bc-a477-878d3e5275e7', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/a/act/actua/actual.mp3', '2021-04-20 02:44:38.775000', '2021-04-20 02:44:38.775000', '', '1', 'actual'),
('f6b28411-fd15-4d03-a870-20ea2f2c21bc', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/chu/chute/chute.mp3', '2021-04-20 02:40:11.175000', '2021-04-20 02:40:11.175000', '', '1', 'shoot'),
('f719071d-a1d5-4a4e-bcbe-e67d411cd4a5', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/r/res/resul/result.mp3', '2021-04-20 02:40:11.198000', '2021-04-20 02:40:11.198000', '', '1', 'result'),
('f76f1248-b1ae-42de-ba96-0284cc4709f2', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/v/var/vary_/vary.mp3', '2021-04-20 03:00:54.864000', '2021-04-20 03:00:54.864000', '', '1', 'vary'),
('f8a76289-7428-4fad-ad6b-aa5de20d55dc', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/tes/test_/test.mp3', '2021-04-27 17:09:38.470000', '2021-04-27 17:09:38.470000', '', '1', 'test'),
('f8ece7a7-4188-46f9-aea6-dfd53b693b45', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/u/usa/usa34/usa34437.mp3', '2021-04-20 02:59:22.447000', '2021-04-20 02:59:22.447000', '', '1', 'rainwater'),
('f8fcd409-8a95-44fc-a718-1e862a0f2237', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/s/sup/suppo/support.mp3', '2021-04-20 02:59:22.506000', '2021-04-20 02:59:22.506000', '', '1', 'support'),
('f96467c0-8f60-4a7e-9164-5b74147f8a39', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/tes/test_/test.mp3', '2021-05-16 15:51:28.899000', '2021-05-16 15:51:28.899000', '', '1', 'test'),
('f9aff2b2-f47c-4c3f-af79-a987a165c160', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/emp/empty/empty.mp3', '2021-04-20 02:37:22.044000', '2021-04-20 02:37:22.044000', '', '1', 'empty'),
('fa4718c7-2f7a-4155-8785-094f52afb221', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/con/consu/consumer.mp3', '2021-04-20 02:59:22.547000', '2021-04-20 02:59:22.547000', '', '1', 'consumer'),
('fa6763a6-8f9c-40a0-aef7-9cd26de0ae53', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/chu/chute/chute.mp3', '2021-04-20 02:40:11.184000', '2021-04-20 02:40:11.184000', '', '1', 'shoot'),
('fa6d3299-331e-4863-97c0-a752f701b4e1', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/p/pod/pod__/pod.mp3', '2021-04-20 03:01:36.842000', '2021-04-20 03:01:36.842000', '', '1', 'pod'),
('faa55226-0693-4884-8555-764dce61baa8', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/col/colon/colony.mp3', '2021-04-20 03:01:36.916000', '2021-04-20 03:01:36.916000', '', '1', 'colony'),
('fb99f1e9-cfc4-43ad-8477-0eacf5b0ae7a', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/t/tes/test_/test.mp3', '2021-05-16 15:51:28.897000', '2021-05-16 15:51:28.897000', '', '1', 'test'),
('fbd00cb5-1449-4810-93a0-38658c11dea9', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/d/def/defin/definitely.mp3', '2021-04-20 02:37:21.939000', '2021-04-20 02:37:21.939000', '', '1', 'definitely'),
('fc13616b-cd64-4aa0-8cc0-aef3efd8ee22', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/c/cal/calcu/calculation.mp3', '2021-04-20 02:40:11.054000', '2021-04-20 02:40:11.054000', '', '1', 'calculation'),
('fd5c9f18-7ba0-42df-b710-6f4ba8644aa9', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/e/eus/eus71/eus71711.mp3', '2021-04-20 03:02:13.998000', '2021-04-20 03:02:13.998000', '', '1', 'experimental'),
('fe4922d2-3e72-43d5-babe-72e0da67cbc5', 'https://dictionary.cambridge.org/zht/media/%E8%8B%B1%E8%AA%9E-%E6%BC%A2%E8%AA%9E-%E7%B9%81%E9%AB%94/us_pron/l/lim/limit/limit.mp3', '2021-04-20 02:52:53.623000', '2021-04-20 02:52:53.623000', '', '1', 'limit');

-- --------------------------------------------------------

--
-- 資料表結構 `worddef`
--

CREATE TABLE `worddef` (
  `WordDefId` varchar(100) NOT NULL,
  `ChiDefinition` varchar(255) DEFAULT NULL,
  `Myorder` int(11) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `WordId` varchar(100) NOT NULL,
  `Speech` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `worddef`
--

INSERT INTO `worddef` (`WordDefId`, `ChiDefinition`, `Myorder`, `Status`, `WordId`, `Speech`) VALUES
('0024b4bd-fb80-4146-8003-76335dc1a1f3', '責備；責怪；歸咎於', 1, '1', '6bfb1624-fdac-4158-a9a5-d1f621a6c16d', 'vt'),
('00487321-305e-40af-9d1a-50a24bb55ca2', '出生國的；出生地的；土生土長的', 1, '1', '59dce32d-81f7-4db4-83a6-6e0d98de95d9', 'adj'),
('00cbbc34-a0a9-46ca-8c4a-1728ba398f22', '改進，改善', 1, '1', '4b8befb5-d6ed-44fa-ba32-c10a26ea3f5f', 'v'),
('012e0561-4f46-4d07-86c0-2c989011c907', '食慾，胃口', 1, '1', 'f0972f67-bbc4-42d4-9e7a-f8fe2eb6c978', 'n'),
('01a2efa5-5402-446b-9ab7-4669b87940e2', '水', 1, '1', '5ceccf55-9228-41af-8fbd-d9e95f7e8b81', 'noun'),
('025eb192-b1a8-4a48-bd19-0ea19d57cb38', '不是為…之類的人準備的', 4, '1', 'd7955188-5328-4c6f-a0c4-ff19a8f08d77', 'noun'),
('026076e7-5e10-470d-9fbf-2288d2e7d538', '考驗', 8, '1', '639d64c0-73c9-4800-afb0-a9addbbffdc6', 'verb [ T ]'),
('0362c8c3-10ba-4f89-9a22-118ed9c658dd', '試驗；檢驗；試用；檢測', 1, '1', 'f96467c0-8f60-4a7e-9164-5b74147f8a39', 'verb [ T ]'),
('036e4ca2-a751-4bf0-8a00-0e0abb7250af', '生物學家', 1, '1', '50828f2d-6c3e-4f30-bbaf-7024276aa7b2', 'n'),
('03841bf2-ae04-43e5-9a51-7cea29ec9900', '（並非因為難過而）流眼淚', 2, '1', '2725b4da-fa8b-4c35-be3c-e7b72b9ebb28', 'verb'),
('03d3bac2-cc7f-4824-b683-64df538398af', '…路（用於道路的名稱）', 6, '1', '76cf9850-9905-4cae-ab47-b0087aa291ab', 'noun'),
('0439df7d-d11b-440c-aa7a-d1fb1b994a59', '作爲結果的；隨之而來的；由此引起的', 1, '1', '1435cb86-1f05-4a54-91b4-a91494affa19', 'adj'),
('047ad3ef-ba0e-4b7a-9127-90fd618686f3', '容器', 1, '1', '6989c28e-703d-4480-a6a6-71bd597e0ece', 'n[C]'),
('04c32f5f-a14e-4759-a7d5-3ceccfd2019e', '支持；贊成；擁護；鼓勵', 1, '1', 'f8fcd409-8a95-44fc-a718-1e862a0f2237', 'vt'),
('0548951f-5376-40aa-9250-9fa3530a6219', '申請，請求', 1, '1', '2fabbe18-aae7-42e4-b05d-8dd87015b664', 'n'),
('054abe7f-ad84-4cc0-ad60-fc437268ecf5', '發生；產生；出現', 1, '1', '2ea2d44c-3256-4257-9345-88c8c95bd164', 'v'),
('06083b7e-4975-45d0-8de2-a0ab55bec116', '傷害，損害', 1, '1', '253dae18-16fc-439c-843a-a22f384c9a38', 'vt'),
('063c3035-62cd-440b-a73c-8974dd5843e8', '香蕉', 1, '1', '757efcb4-dbdb-4fae-bbd7-ad6ad912ed3f', 'noun [ C or U ]'),
('065fd528-c497-4d3b-8075-407d4b6126ce', '限額；限制；上限', 1, '1', 'fe4922d2-3e72-43d5-babe-72e0da67cbc5', 'n[C]'),
('068b0d76-e2ac-4c33-bf99-60a55c80f1ab', '影響，影響力，作用；有影響的人（或物）', 1, '1', '635e5a69-96ff-49c2-b773-26c775d293af', 'n'),
('068fa9e6-d71b-47af-aa5d-be3348c364a8', '微塑膠，塑膠微粒', 1, '1', 'd4a50ed9-4f9e-420b-abae-2c5933dd5f24', 'n'),
('06b4c035-93b2-47dd-ad63-86dd22faa23c', '（用於 be afraid， hope， suspect 等動詞後構成簡略的否定回答）不，沒有', 3, '1', '421ce747-f0d7-42d7-a0ea-e5d6378ec1fa', 'adverb'),
('07869885-715f-4963-8a75-512d6b424c8b', '爸爸', 1, '1', 'bc81762a-7d0c-4786-b72b-67ff11bfbaa5', 'noun'),
('095ea817-3bde-4438-8245-c9c153d4fa81', '投反對票者；反對票', 6, '1', '6a2f15be-804b-40fe-9550-ab7296e8a8a4', 'noun [ C ]'),
('0971f3ff-c1c8-4d68-a23e-4102668d14c1', '分揀收集（垃圾）用於回收再用', 1, '1', '902278c3-3b26-4e96-a8c2-772bc01fdbdb', 'vt'),
('09bf1eb0-f06a-4158-91ef-3c7f089c64b2', '慣例，常規；例行公事', 1, '1', '79e55c08-ebf1-4336-9005-40edc361d5b9', 'n'),
('0a5817f5-503d-4fc7-8cb3-6245fadeba33', '（體格）檢查；化驗', 2, '1', 'de7a5046-0e93-4d99-bd1d-041b23579ad9', 'noun [ C ]'),
('0a6ecdc2-cd7f-4aac-a18c-f98a55d19870', '四面八方', 6, '1', '0f3727df-adb9-40fa-9910-6a62951f3193', 'adverb'),
('0b21666c-f632-4554-ab44-c39e8d3cbad0', '貓', 1, '1', '8dea43f6-d21c-4acf-a6af-6e68aa8bd119', 'noun [ C ]'),
('0b46d1aa-3f62-470f-898c-d7930def8f03', '競爭，對抗', 1, '1', '24977dd2-59d7-43be-b7a3-fed088daa1c0', 'vi'),
('0c5d3a43-1384-427a-9b49-e60d3d660aef', '保護性的，防護的', 1, '1', 'b0d2d8c2-dc1a-4bb8-be11-a70691649f16', 'adj'),
('0cb2cef2-4272-4063-a09c-f127b5a53a59', '清醒的', 1, '1', 'dcce5eaf-fcd5-420e-b307-790f6ec78174', 'adj'),
('0cc0931b-eb19-485d-9904-513133c8f99d', '物質；材料', 1, '1', '9a71da4c-2c6c-4016-90d6-16f4f4cd3466', 'n[C]'),
('0d0f0bfc-f0a1-4116-9fd2-ae0d140da4a5', '（用於句首以介紹某人或某物）這', 2, '1', 'e762c29a-181f-4221-93a4-a8ed37ea7798', 'adverb'),
('0d26b8e1-3f94-4d28-990d-8b5601bdc2d5', '問候；招呼；迎接', 1, '1', '0fa307b7-00fb-4d91-997f-35f101d1ac67', 'n'),
('0d409fe3-f464-4fee-ba41-723e5abe6214', '奮鬥，努力，拼搏', 1, '1', 'd0885df7-af2e-47bb-a0c2-c645a4933b53', 'vi'),
('0d7a5f1f-f414-44a7-8e2d-f8d2735ae2ed', '再次使用；再利用', 1, '1', 'e65f43b8-cce6-4b05-9417-388ca9e443ee', 'vt'),
('0e27620e-9c84-4b8a-adb4-1a28508ec365', '好像，彷彿，似乎', 1, '1', '92cee65d-d9ac-44b6-b302-0e10320a50f5', 'preposition, conjunction'),
('0e5f1f23-593b-4341-b666-55f59ccffc1d', '（地球的）北極', 1, '1', 'b8704614-93b8-4850-84a3-85e3a971ad46', 'n'),
('0ed3b107-0839-4e1b-b467-5ac629aa5354', '女性的；婦女的；雌的；母的', 1, '1', 'e03148a1-abbb-4638-9ac5-0689976e6022', 'adj'),
('0efa1b61-43b1-4c96-8597-be4a7e513497', '紅綠燈，交通信號燈', 1, '1', '08f553aa-0138-4b3a-8da5-7ffceca100d4', 'n'),
('0f64d891-e04a-44b4-87c3-8e5c9daed8ba', '醜女', 3, '1', 'ba9856e7-d34d-48b9-9048-b0790736e252', 'noun [ C ]'),
('0fd0b94a-3594-49b5-94eb-6f3985129477', '潮氣，濕氣；水分', 1, '1', 'b0aaca64-7678-48ec-ab27-82c108b4c5ab', 'n'),
('0fdacd97-9182-4d6a-9fcf-48bd3988b983', '（體格）檢查；化驗', 2, '1', '4481c518-f8cd-4e11-a0d6-5f70d1b5ff91', 'noun [ C ]'),
('102ae4b6-d54c-4ecc-9963-2b1859a4ed18', '許可，認可；批准', 10, '1', '3ff85da5-82a5-4a28-bacf-31d83535121a', 'noun'),
('106b76ed-df45-4b2c-9b47-dcd06c4a2597', '試驗', 3, '1', 'fb99f1e9-cfc4-43ad-8477-0eacf5b0ae7a', 'noun [ C ]'),
('10b8bf22-3356-4e5d-896e-12dfb8cb3396', '液體；流質', 1, '1', '978eccbd-ac8f-459d-bd27-8e33924263cf', 'n'),
('10c9c5ed-d285-4bf6-a955-21cbf5f24aab', '試驗；檢驗；試用；檢測', 1, '1', '544cc13f-8af3-4e1c-9bc1-28eb3ecfe8e2', 'verb [ T ]'),
('11c7dd08-bb15-46e4-baf1-7015d25ac4dc', '在（或向）…上面；在（或向）…較高處', 1, '1', 'f4adf6d0-14e0-4a01-b70f-8b323fd6d8b3', 'adverb, preposition'),
('11f26417-1606-4f75-b19a-ff59cb14b647', '（體格）檢查；化驗', 2, '1', '15763a60-0769-4b86-8c19-31a6c829f6e0', 'noun [ C ]'),
('12291f57-bcaa-4ab0-a3f6-5bf718f4b4bf', '緊抓，緊握，抓牢', 1, '1', '5b6b5f73-88b2-4a82-989b-09faa442a9b6', 'n'),
('1262b646-2e0b-4480-b045-f6afb6903679', '美國廣播公司（American Broadcasting Company的縮寫）', 1, '1', '89957bb6-6d66-4ff1-9ce5-ca1fcae60689', 'noun'),
('12b39b2f-cfa2-46dd-87a4-191c830d3718', '測驗，考查', 1, '1', 'de7a5046-0e93-4d99-bd1d-041b23579ad9', 'noun [ C ]'),
('12b68a98-a4a2-402f-bfeb-8e922cb8f74c', '替代者；替換品', 1, '1', '4e03423f-e99b-4e7f-bfb5-462daa925f14', 'n'),
('12c7955f-c21a-4065-90c4-3dce32eaf59e', '下定決心，打定主意', 1, '1', '0ab5b3ef-bcb0-404d-8492-4acb514811d5', 'phrase'),
('12cb3b1c-0b3c-47b5-9566-0fed81f6172a', '太過分，太不像話', 4, '1', '1a755259-c123-4c0f-a126-1353d2a3168b', 'determiner'),
('13462b73-050d-4c50-86e6-f6770bef1e53', '試驗', 3, '1', '15763a60-0769-4b86-8c19-31a6c829f6e0', 'noun [ C ]'),
('13ad065e-9749-44af-8881-add4b0450947', '激情，熱情；強烈情感', 1, '1', '2c50815a-6f22-42e7-a031-51dc18b29ef7', 'n'),
('13be6e29-34b0-4264-8e32-8ec46524f6b3', '（美國）夏威夷州（寫地址時Hawaii的縮寫）', 2, '1', 'd8eadefa-f760-464c-9037-29d2a55415ae', ''),
('145ef443-88a5-48b2-8d42-7b27acfabec2', '唐寧街十號，英國首相官邸（Number Ten的縮寫）', 8, '1', '6a2f15be-804b-40fe-9550-ab7296e8a8a4', 'noun [ before noun ]'),
('14d6d963-6fe7-431c-936f-46ce8d706631', '羊水', 6, '1', '5ceccf55-9228-41af-8fbd-d9e95f7e8b81', 'noun'),
('1509c196-bab8-484a-9e69-485edc20b981', '駭人的，恐怖的', 1, '1', '442957c3-344a-47bf-91db-fde2e9ab3142', 'adj'),
('152da724-0131-4287-ac6d-91f767111e28', '（人或事物之間的）聯繫，關聯，關係', 1, '1', '9e40b6cd-ead9-445e-a70a-f7a59dcd86b6', 'n'),
('154ef43e-17cd-4bb2-b00e-3312b6de8446', '作為…的代表（或代理人）；作為…的代言人', 1, '1', 'd2a9dfa7-9611-45cb-8591-f6b88267cd1b', 'v'),
('155e19b2-85a6-4424-9d83-3bb04537099e', '（使）展開，（使）鋪開；（使）蔓延，（使）擴散', 2, '1', '475ba056-19cd-4994-9d16-5af265b28d4e', 'v'),
('15674398-886a-4859-9e87-d088b26fb626', '給予，授予；判給，裁定', 1, '1', '95ea4fea-6e40-4a1d-bf59-259380c6aba6', 'vt'),
('156a0c78-8847-4b48-9aaa-2ec960700317', '懸掛，吊；吊著', 1, '1', '1d2d337c-63bc-45e5-8e58-b9922d0608f6', 'verb'),
('156a0e13-e586-431d-b713-1ed51cdda902', '（尤指用硬刷、肥皂和水）擦洗，刷洗', 1, '1', 'bd1fbcc5-bd2a-4a9b-a631-94c3f5e19905', 'vt'),
('165f58c5-ee09-4539-8460-97e9505cfba3', '立即的，立刻的', 1, '1', '5168c9e3-495f-401a-a45b-13ac2050d915', 'adj'),
('166cdcfa-c215-439a-b50b-af61f89f5435', '例如', 1, '1', '66bdb269-1520-450c-a9ca-1461cf94fc31', 'phrase'),
('16ac9e43-3df3-4ae5-b4a8-9987b22a8152', '環境；周圍狀況', 1, '1', 'e29e8151-cc45-467a-ac83-9168ee5f3c0f', 'n'),
('16af4fc5-0d2f-4621-aeac-9f02691f4c39', '（影響人生的）機會，際遇，運氣', 1, '1', '46264c6d-8f89-4911-968a-d784b052e8e8', 'n'),
('1786e4af-e0b9-4463-a910-1ca6721ae783', '行為，舉止', 1, '1', 'aacdf51f-3dff-4f5c-8452-c2d3215a57f9', 'n'),
('17d5f721-4c5c-478f-b536-c126c44db180', '測驗，考查', 1, '1', '639d64c0-73c9-4800-afb0-a9addbbffdc6', 'noun [ C ]'),
('17f8d366-b7e2-4c1e-bd29-892f356eeef7', '懊悔，遺憾；惋惜；痛惜', 1, '1', '4166367c-276a-41a5-85e0-db41a63d32fd', 'v'),
('17fdd07c-7a94-4bce-932f-bbe8511c2c4b', '而且，再者，此外', 1, '1', '5dce8642-02c4-415c-81b4-321dd3fe7697', 'adv'),
('17fef3ff-173c-446a-8645-76615f936af0', '樂趣；快樂；享受', 1, '1', 'a645e2de-7286-4baf-a8eb-024b50826b22', 'noun [ U ]'),
('1895c5ba-50c9-465a-8b4a-6fdaa3836a14', '長期的', 1, '1', '1d9a5e98-50ca-4ff7-abbc-542a5bcc3780', 'adj'),
('18a1c70d-25fa-448e-8435-98f11c376cb1', '檢驗；考驗', 4, '1', '639d64c0-73c9-4800-afb0-a9addbbffdc6', 'noun [ C ]'),
('18d630b2-3e51-4aa5-8d9a-ceaf3860c8f5', '西班牙的；西班牙人的；西班牙語的', 1, '1', '44c010c9-77f2-4de3-ab6e-87e0314190d1', 'adj'),
('19696d59-15dc-42ce-9d6e-aa7b97cf581a', '作為替代', 1, '1', '5863dd1b-6fd2-421e-818e-3f4b9c75b5e5', 'adv'),
('197a074a-9657-4635-a02e-760a6bf326ea', '水位', 3, '1', '5ceccf55-9228-41af-8fbd-d9e95f7e8b81', 'noun'),
('19e5b02c-fd42-4308-b59a-f0b0ebdd90a6', '莢；莢果', 1, '1', 'fa6d3299-331e-4863-97c0-a752f701b4e1', 'n'),
('1a4fb9ee-5133-4eda-9572-b99ae8892327', '逐步地，逐漸地；平緩地', 1, '1', 'aa8d238c-75af-42c8-8092-95a2b7988e0a', 'adv'),
('1af99bf7-c88b-4cd0-8152-7158cc117276', '喂，你好（用於問候或打招呼）', 1, '1', '8e0ac9ef-1a82-40d7-ae88-038dc4439669', 'exclamation, noun'),
('1b1f8ab8-4ff9-498e-a006-b3ed7637454e', '確定的，肯定的；明確的', 1, '1', 'd9d9d2e6-ea62-487b-a3e8-6dd4dcfce395', 'adj'),
('1bcf1c93-e270-49de-b5fb-e461aaeb1aec', '（果仁）巧克力蛋糕', 1, '1', 'c93fb912-e6d9-4e1f-812f-3425a4a256eb', 'n'),
('1c436dbb-a591-4b26-a5bc-b7d7f2a7a875', '偷，竊', 1, '1', '9c5cfab7-6578-4048-b809-d7d9a51df40b', 'v'),
('1c93cad5-874b-402c-bef8-1a78e81fff54', '原諒；寬恕', 1, '1', 'b0b408e1-e50f-4243-9ba8-d6e9037e41f3', 'vt'),
('1cb58cb1-4d85-4a65-b514-b45c02f91107', '考驗', 3, '1', 'd635320a-b27f-4fee-8fa1-41bb269e9045', 'verb [ T ]'),
('1cbbfbd8-3a6c-45cf-9699-13f1ea1ea841', '激勵某人；使某人振奮', 1, '1', '4fb3f0cd-5b38-4bf3-95b4-18198f774e40', 'phrase'),
('1cd7b359-1198-438c-8c10-492f12cd110a', '組織，籌劃（活動等）', 1, '1', '651d6372-3c2b-4e9b-affb-b8be3ea15132', 'n[U]'),
('1cecce8e-0ff3-4f32-8059-3cba094a3479', '競爭', 1, '1', 'b2aea6dc-f02f-4761-8235-8d68077a1a82', 'n[U]'),
('1d56a635-4548-4e2f-a24e-54ba72b96d19', '因此，因而，所以', 1, '1', 'cd83e1f5-5007-4f21-8dfe-bf98cb1d43b4', 'adv'),
('1dfac1ae-6214-48ce-9c19-80a764d78d80', '社會的；群居的', 1, '1', '9e15d5ca-6b15-4db3-b746-1ef6be503bc1', 'adj'),
('1e326a1c-908d-4f3a-a98e-f15d366da1ee', '血液酒精濃度', 1, '1', 'd13e44cd-b2c9-4683-92cc-bce21c7fdf31', 'n[C]'),
('1eeefbdd-f10c-43c0-b3cc-5baacd6cd0ae', '有趣的；令人愉快的', 5, '1', 'a645e2de-7286-4baf-a8eb-024b50826b22', 'adjective [ before noun ]'),
('2049b872-7950-472d-9223-a730e6da9851', '儘管；不顧，不管', 1, '1', '60a12a73-a9ea-4f43-a903-f6a8fddd5f58', NULL),
('206f698d-266f-4c25-9c47-9a35aa659434', '實驗；試驗；試用', 1, '1', '33610af5-cc27-4f43-af06-7790c6ac9341', 'n'),
('2070b958-ec1a-4cf3-a0b0-7a37f3cf9114', '泉水', 7, '1', '5ceccf55-9228-41af-8fbd-d9e95f7e8b81', 'noun'),
('207f437b-6a12-4bc4-8866-7d7ec946e32f', '貼（壁紙）', 2, '1', '62e7acec-d568-4b16-9a7b-904dfeee19b9', 'verb'),
('208c68cd-8ae3-49b5-a08c-5d8f8071735c', '證明是，結果是', 1, '1', '81225f98-991f-46af-b0e9-ccbaa1947f5a', 'v'),
('20d11bc7-5cc5-4604-b309-1b41cbf720be', '世界範圍的，全世界的；在全世界的', 1, '1', '7ba1ffb4-1c5c-4405-bce8-d7377086f66b', 'adv'),
('21757044-fe37-4a5e-b043-be1767c7ed48', '脫落', 1, '1', '5248753d-9c47-4e09-93c9-5cc4764d8eeb', 'phrase'),
('21934d8a-cb83-40d9-a45e-196e7105bb0a', '城鎮的；城市的；市民的', 1, '1', 'c78e9386-7a8d-4849-a52e-1ee5a60bad13', 'adj'),
('21ba8ea9-93e8-4f65-abb0-82f78cd1d0db', '相反地，倒過來，以相反方式', 5, '1', '76cf9850-9905-4cae-ab47-b0087aa291ab', 'noun'),
('220260e7-57ce-41e6-9b5f-ac6b12eb224e', '發出砰的一聲', 1, '1', 'c3483549-f03b-44f5-938c-d3a07f463d70', 'noun'),
('2301593a-df63-4f28-bccb-b2f6a5aa4460', '把…局限在，限制', 1, '1', '8f720cc6-41f7-4e28-bcd2-8b1307bc10f5', 'vt'),
('2380129e-c303-43e1-9934-10545616a1c5', '考驗', 3, '1', '544cc13f-8af3-4e1c-9bc1-28eb3ecfe8e2', 'verb [ T ]'),
('24087684-9d5e-48b7-a4dd-c34c5976a36c', '（用於表示打算行動或開始新的活動）行，好吧', 3, '1', '3ff85da5-82a5-4a28-bacf-31d83535121a', 'exclamation'),
('244aad7f-65bb-419f-b0be-148eb9954ba2', '給（動物）餵水；飲（動物）', 9, '1', '5ceccf55-9228-41af-8fbd-d9e95f7e8b81', 'verb'),
('24712f22-d55d-48c8-89b0-4230f3da1336', '政府，內閣', 1, '1', '2a2658c8-ff9a-4ff1-a3b2-311c2f807c37', 'n[C]'),
('249e72c6-a830-4dec-af65-aa379ddd5c7c', '表示；象徵；代表', 1, '1', 'eaebf57d-4849-40cb-8e99-5c2e12092e6f', 'n'),
('24cf0603-8415-466b-9025-bafe0988dd12', '討厭的傢夥，惹人煩的傢夥；失信者', 2, '1', 'ba9856e7-d34d-48b9-9048-b0790736e252', 'noun [ C ]'),
('24fd0549-4dc2-46aa-8746-69dc48da7a1c', '貼（壁紙）', 2, '1', '1d2d337c-63bc-45e5-8e58-b9922d0608f6', 'verb'),
('257804f7-a6af-4859-b89d-afeb13408e5a', '交換；互換；交流', 1, '1', '1f4966ee-3ce2-40c5-9ea8-6f88b8a74546', 'vt'),
('25d4cff8-9d5a-41d5-b249-66444c8dbd7c', '蘋果', 1, '1', 'b28650cb-20c4-464c-9002-cac3223730f6', 'noun [ C or U ]'),
('25fa4dfd-2e85-4d1b-bae0-511ad2e7a4fc', '酒；酒精，乙醇', 1, '1', 'cb82a021-369f-4bd3-acfa-4b9fb43a8c73', 'n[U]'),
('26004546-66f8-4238-b406-31574effd3c4', '喂，你好（用於問候或打招呼）', 1, '1', '168baf50-b1a0-4818-bb4f-d7dc0bdece85', 'exclamation, noun'),
('262ece64-3cf4-42ed-9115-5cf981ecb70d', '能量飲料', 1, '1', '5d121f66-6df2-4ce0-8578-c4307986f481', 'n[C]'),
('267f862b-2b6f-4b9b-9f6b-137732c748e6', '放寬；放鬆；削弱；減輕', 1, '1', '6d21f87b-a8f3-4be9-913f-4ca24fcb05c4', 'vi'),
('26d12d16-15eb-46d1-9efe-d3862fa0ca15', '嬉戲，玩鬧', 4, '1', 'a645e2de-7286-4baf-a8eb-024b50826b22', 'noun [ U ]'),
('2771bae7-c142-4e73-9937-502f4ec460b1', '往那裡；在那裡；到那裡', 1, '1', '3479eb7b-2c69-4347-beaf-503f96686170', 'adverb'),
('27d0e6a4-800e-456a-ba86-5ba0fa2c619f', '沒有，無', 1, '1', '6a2f15be-804b-40fe-9550-ab7296e8a8a4', 'determiner'),
('27e35efa-2c9a-4f81-8603-6d2c007a2250', '改變', 1, '1', '6eca20d7-6c35-4ef0-af76-e9e630881efa', 'vi'),
('28e993ed-8426-4b99-bda3-5439eb41a9db', '開（槍），射（箭）；發射；射中，射傷，射殺', 1, '1', 'fa6763a6-8f9c-40a0-aef7-9cd26de0ae53', 'vt'),
('29699099-7ea8-4a17-b5ea-309d9d630185', '檢驗；考驗', 4, '1', '7f698c34-2328-4be6-80b9-290085a63b8f', 'noun [ C ]'),
('29757809-4aa2-497a-8fd1-c7d6c05c0b40', '（用於標牌和佈告）不許，禁止', 2, '1', '6a2f15be-804b-40fe-9550-ab7296e8a8a4', 'determiner'),
('29f291e3-29a9-4934-af97-c1ac95fed1d0', '逃走，逃脫，逃離；逃避，避開', 1, '1', '8eedc25c-b5cc-45da-953e-f0fdfeb64bd3', 'vi'),
('2a1634b7-7e2d-4fac-a1fe-8f67d8786865', '交換；互換；交流', 1, '1', '6ebcfd2b-5d04-4b5b-a493-09484323f50a', 'n'),
('2a20ad0f-2efa-49df-8f33-b0b3599730ef', '恐懼；震驚；（…的）震驚性，恐怖性', 1, '1', '9da8bd11-fe8d-4aff-9783-b0a1e533dda8', 'n'),
('2b1e1cbb-bc15-4d4b-b1d4-ab22e1e72815', '水位', 3, '1', '0eacba66-c67b-4a65-974d-c62fb305b564', 'noun'),
('2b82159a-4552-4235-8422-2a4999184335', '生死攸關的，茲事體大的', 1, '1', '6f2087b6-8879-45a4-898d-a75c0f2d282f', 'adj'),
('2b980d2c-0722-4086-bd78-9841deff1426', '檢查（身體）', 9, '1', '7f698c34-2328-4be6-80b9-290085a63b8f', 'verb [ T ]'),
('2bf0f4d4-ede3-4e60-9685-4976a7800909', '寬慰的；放心的；解脫的', 1, '1', '2b0ff6a0-ea2c-4897-9f1b-876ed8a8c473', 'adj'),
('2bf88a8c-05c4-4bfd-ada7-d34e17269694', '流行的（許多人欣賞且容易理解的）；通俗的', 1, '1', 'cbe0b4ef-32cc-4137-a865-d27437a38f8f', 'adj'),
('2c2ef8de-b014-4ea1-b38d-7cd9eef7a8c8', '懊悔，遺憾；惋惜；痛惜', 1, '1', '89b97c2c-98e8-43ec-a04a-a066e3292ced', 'n'),
('2cec9364-be87-4074-9e13-ced9f57a3fd0', '檢驗；考驗', 4, '1', '15763a60-0769-4b86-8c19-31a6c829f6e0', 'noun [ C ]'),
('2dc280ff-5c9b-44a1-b5ef-c805d5dbc612', '信任，信賴', 1, '1', '8b7fcef9-14d3-4e70-aebd-01351d521f41', 'n'),
('2de41a8f-0076-459c-9e73-a982245c0986', '（尤指不情願地）承認；供認；招認', 1, '1', 'ecc41c20-d2e8-495c-83da-f6431657e6af', 'vt'),
('2e2305fe-a102-4e1c-a42d-b1a6f54a52b4', '生物學', 1, '1', '0294a70e-39bb-46e0-88cd-1334337b92fe', 'n[U]'),
('2e35bded-23c7-4b72-96ae-1d6d076ca35d', '使完整；使完全；使完美', 1, '1', '341c86dd-7449-4394-b136-d705103948b0', 'v'),
('2e9ced9b-dcf5-4738-adca-53f3337622db', '需要；有賴於；要求；規定', 1, '1', '30a58d24-c68b-4314-9efa-a136be66dfbf', 'n[C]'),
('2eb425b9-be45-40d5-b75a-af3eb13136dc', '每天地，天天地', 1, '1', '2e89727d-ef71-4f98-9fa0-24c751f96062', 'adj'),
('2ed16560-482e-4f17-80e7-7182b9491db0', '過度，大幅（尤其用於強調時間或空間中的程度或距離）', 15, '1', '76cf9850-9905-4cae-ab47-b0087aa291ab', 'adverb'),
('2f04ab4f-1f18-41dc-be3e-8bbaf0e003eb', '責備；怪罪；歸咎', 1, '1', 'c11ca94a-0f7b-4d96-b10d-3d83c6a1fe5f', 'n[U]'),
('2f0f7f51-8ac5-4ebd-97f7-171117f39e90', '（使或被）連接；（使或被）相連', 1, '1', '9da3c1a8-3975-4bf5-9bce-1041e01075a4', 'v'),
('310c31a1-df6e-4bbc-8e77-a6b8a7687062', '檢查（身體）', 9, '1', '15763a60-0769-4b86-8c19-31a6c829f6e0', 'verb [ T ]'),
('311a5b9a-bdc4-413d-bd3b-9c3fcd4269d2', '販毒', 1, '1', '1ffc2e7a-3aac-48d5-8c0f-ae2c364037e4', 'verb'),
('31b97a75-3751-4956-8fb6-ae5d879d74a8', '想像；設想', 1, '1', '9a2e2748-7dda-49e7-83a8-b6ddbb327709', 'vt'),
('32019b29-9cb5-4efe-80b7-245978f72184', '跟隨；跟蹤', 4, '1', 'ba9856e7-d34d-48b9-9048-b0790736e252', 'verb [ T ]'),
('32aa1cee-3551-4fb3-9683-0b987d01497a', '題目；標題；名稱', 1, '1', '7da5a96a-95fd-4818-997b-7e0b229f55d6', 'n'),
('32b03418-ddbd-4537-a608-0c2d13beafd7', '（網際網路上）推送（資訊）', 1, '1', '70eaf089-e811-4575-8845-d2a4f2031fda', 'verb'),
('333f0f89-1e41-40d2-90ba-014397356db1', '宗教信仰；宗教', 1, '1', 'd7cd2060-a018-41b4-9c41-eaba5ea2997f', 'n'),
('33409628-4f4a-4322-a8e3-3632bf88c3e1', '原諒；寬恕', 1, '1', 'd3b336ed-72bb-4eda-b46f-94f0763c00da', 'n'),
('334b35a3-4d2a-4d63-aa9b-088d6df75936', '熱帶的', 1, '1', '719b3bd9-73a6-4227-befc-2d1fe90abeb0', 'adj'),
('344cfd2d-2b79-4165-be4e-2e8f4d5daef7', '（中學或大學的）畢業班學生', 1, '1', '8f7b894d-f6c8-4754-a95d-0d567e3b0b44', 'n'),
('3481af8a-3887-4e1e-ab84-2a600f3c849f', '（用於表示同情或滿足）你瞧，好啦', 1, '1', '7310f099-d057-4384-9109-771a8b35141b', 'exclamation'),
('34b630d0-2bb1-46c1-b799-b62d9e059f1d', '為…所特有的，符合…特點的', 1, '1', '48cd5fdb-4cf1-47db-bca9-7e8d99c5428e', 'preposition'),
('35179e61-fdcf-4003-be7c-3a2e70dd4293', '任意的；隨機的；胡亂的', 1, '1', '349c467e-309b-4284-8243-e2231dc5eb05', 'adj'),
('357b8a59-9ba1-43ab-99ce-1bca6bd3b395', '（尤指比賽或辯論）挑戰，邀請', 1, '1', 'd6f8f24f-c894-4049-a105-acc63786ea0d', 'vt'),
('357d0a39-0b2b-4fe8-9f32-1b705728bbab', '像；與…相似，與…近似', 1, '1', 'c56fe0f9-5627-4404-9d12-54b3082d7480', 'preposition, conjunction'),
('35f7b5cc-2f9c-4523-97cc-98a4adc690a9', '多樣化；變化', 1, '1', '52a1ce6f-40b7-4425-af15-a4b7a80ee753', 'n'),
('3644e56a-5aa3-49f7-a433-357ffac7157d', '（一系列事情中的）一次，一項', 1, '1', '075699bd-1ad4-414b-9d7d-46531cfabb7e', 'noun'),
('371bb871-1261-4ebe-917e-915d099bf85b', '粉，粉末', 1, '1', 'ecc3763f-b071-4c0f-9b1f-5a8d727bd793', 'n'),
('37969691-69d2-4f16-a734-c2f98d30e6b4', '最重要的是；尤其是；首先', 3, '1', 'f4adf6d0-14e0-4a01-b70f-8b323fd6d8b3', 'adverb, preposition'),
('37ebd9b7-2fd2-4b22-a968-6480ece5b102', '使擔憂；使掛念；使焦慮', 1, '1', '1fe4ebf4-9e3c-4ef7-9a78-e55ece0c49c0', 'vt'),
('38377533-4566-4058-82f2-084561a897cc', '普通的；平常的；中等的；一般的', 1, '1', 'a117238c-fcdc-48ab-9da8-267964fabbf8', 'adj'),
('38416486-570b-4588-a3d1-9491719f8584', '經常性服藥；（尤指）服用違法藥品，磕藥', 2, '1', 'dc1622c5-a9a3-40ef-97c5-a1c38a648b33', 'verb'),
('385e92e6-41a6-4cf3-b2f3-4b9a0decac67', '在…裡或附近', 8, '1', '0f3727df-adb9-40fa-9910-6a62951f3193', 'adverb'),
('39a08d8b-f604-4e47-ba0b-e605491bee03', '水域；大片的水', 2, '1', '5ceccf55-9228-41af-8fbd-d9e95f7e8b81', 'noun'),
('3ad4aefd-e3b6-49c0-aadb-4d1cb25f139b', '保護，防護', 1, '1', 'd654d6c7-5a8e-4545-8671-15ee700e6957', 'n'),
('3b33a806-ebbd-4159-bf20-efd66f1eda43', '刷洗；磨砂膏', 1, '1', '1471cd18-2e91-48f7-90dc-47c5ae37e2a5', 'n[C]'),
('3b33b0dd-be0a-47ee-a8bd-15a7a7c5143d', '喂，你好（用於問候或打招呼）', 1, '1', '61e66cb3-76d0-434c-886a-7d6973a3fd77', 'exclamation, noun'),
('3b408d0c-bf57-4422-96f0-9aba159e056c', '除…之外還有', 1, '1', '30527a8c-fce6-4d9d-8619-5b89a1704610', 'prep'),
('3b70b7ac-b1f7-42e1-b21d-68a72f5a246e', '（在網路社群上）加讚', 5, '1', 'd7955188-5328-4c6f-a0c4-ff19a8f08d77', 'noun'),
('3b7f447c-7762-4ec5-b27d-c090f4b73af1', '（用作兒童故事的開場白）', 5, '1', '3479eb7b-2c69-4347-beaf-503f96686170', 'adverb'),
('3bbdb05f-1dc7-4cb9-b1d1-85a95e8f404b', '（某個地區的）東部的；來自東部的', 1, '1', 'f1b7350f-6333-4027-b971-487aea85304c', 'adj'),
('3c050358-11a6-406f-a2e8-43f3e026dda4', '測驗，測試；考查；考試', 2, '1', 'd635320a-b27f-4fee-8fa1-41bb269e9045', 'verb [ T ]'),
('3c43d500-7485-4386-b92b-006663507fcf', '日常飲食', 2, '1', '5386c013-183e-46a6-a241-f1c480b53d9c', 'n'),
('3c9ec1fb-7432-4806-9725-b65604bf135b', '（使）振作；（使）高興起來', 1, '1', '2ac7f079-a489-42b7-b0eb-eb540eac90aa', 'phrase'),
('3cc68144-eddd-41c0-a522-9089136af03b', '給…澆水；灌溉', 1, '1', '4f062a2c-a453-429a-aa67-b961dcd85ef8', 'verb'),
('3cde27a6-d7d8-4b03-8be4-eb28b8ef6d98', '號召；動員；要求', 1, '1', '6c7a0e66-ec47-4fad-97e9-f8ce043e6e38', 'phrase'),
('3d62c804-4480-4ec9-b792-4c5ad8444c3f', '（使裝置）運行', 2, '1', 'e0e23dbf-3c17-4d45-b5d6-699a4a32f9f7', 'phrase'),
('3d77e6c4-7f02-401c-bc12-734def6b5f76', '運送，遞送，投遞', 1, '1', '03144090-a110-48c0-ac33-8cb65cd3cbb9', 'n'),
('3d84ce52-8389-4f9d-961d-4ffac7e4ccaa', '（通常指爲避免注意而）緩慢行進，悄悄移動，潛行', 1, '1', '6cebc7a9-6a4e-4025-ac9a-b981a54a5ed4', 'vi'),
('3dc1f791-ae2f-49d2-9fff-f04f5fbc0481', '成功；勝利', 1, '1', 'c6e0855c-bdc6-4faf-a866-5f7fce883b3d', 'n'),
('3e790ffc-971f-4f7b-9c08-0f3fb81dab10', '給（動物）餵水；飲（動物）', 2, '1', '4f062a2c-a453-429a-aa67-b961dcd85ef8', 'verb'),
('3e80e43c-589c-4267-9c63-e89a1af2b579', '123123', 1, '0', 'dc93cda3-9da6-4913-8aec-9e7fc093059c', 'testset1231231'),
('3ea30de0-c36f-482b-9a48-fb14bee05303', '助（某人）一臂之力，幫助（某人）', 1, '1', '80de03d1-66fb-4ff3-87ce-50829a09b760', 'phrase'),
('3f80355d-d85c-456a-a08f-8550f35cf232', '痛苦的；可憐的', 1, '1', '5ac9779e-0d02-4694-9699-fafacb071893', 'adj'),
('3fbbba67-4432-4b78-a616-95371118ddef', '給…澆水；灌溉', 8, '1', '5ceccf55-9228-41af-8fbd-d9e95f7e8b81', 'verb'),
('3fc06a65-1590-40ff-87e6-f1bcab97dc1a', '赤熱的；熾熱的；熱得發紅的；非常熱門', 1, '1', '4bdab0be-5d10-4f36-a253-f5f0ebb2e100', NULL),
('3fcaf2df-7720-40fe-8050-2ac9fb7db2f4', '必要，需要', 1, '1', 'ef9c7089-1eaa-4c34-9651-ef9b5d6982ab', 'n'),
('400102ba-01ae-4fe2-ba7e-c9fe6821714f', '（表示認為某人言行愚蠢可笑，尤指對正在發生的事不注意）', 4, '1', '61e66cb3-76d0-434c-886a-7d6973a3fd77', 'exclamation, noun'),
('4018ecf3-26f7-4786-ad68-2f50fe285224', '科幻小說；科幻電影；科幻卡通片', 1, '1', 'e2d78fbb-917e-4da9-8599-1717f96e48a7', 'n[C]'),
('404c2b2d-617e-4b87-88ed-aba0e2dabb15', '試驗；檢驗；試用；檢測', 6, '1', '15763a60-0769-4b86-8c19-31a6c829f6e0', 'verb [ T ]'),
('407fc1cf-8414-4501-8a1e-4e92e2053e21', '（使）排出，（使）排放，放乾（液體）', 1, '1', 'beb1bfe8-bf3b-4724-8d25-d63142cd92cf', 'vt'),
('40acc14a-4919-4e07-b0d9-322c9f175ef3', '挑戰；難題；考驗', 1, '1', '252ed725-7932-469b-91a5-c08d7045e2e3', 'n'),
('41446712-a9f1-41cb-8cbd-e2842a7ebe37', '等不及；迫不及待', 1, '1', 'c681b4d1-3e00-482b-8167-88f7a68cf300', 'phrase'),
('4193eaf5-4427-453b-981b-657d7ca9eeb9', '(工作的)輪班，(政策、想法等的)改變', 1, '1', 'd9839da2-7379-437c-ba6e-62cd2eeeef78', 'n[C]'),
('41a4b047-15cf-49e7-9370-23dd9e9535a9', '典禮；儀式', 1, '1', 'f621585a-3e99-44ee-833c-e04adc291a3d', 'n'),
('41f8137a-6a4c-485b-b722-2fbe2429e9bc', '檢查（身體）', 4, '1', 'd635320a-b27f-4fee-8fa1-41bb269e9045', 'verb [ T ]'),
('423817dd-eab7-4cf2-b9f6-63048e70bf32', '可重複使用的', 1, '1', '55acffec-f863-48e8-a543-5814fb3534f8', 'adj'),
('427a3f2f-fdd0-4d54-ae9c-b13090cf2f28', '喜歡，喜愛', 1, '1', 'c34dcc8c-f1da-4287-afe0-adbfffbd8e8c', 'verb [ T ]'),
('429b24e9-dbd7-4374-ae3e-8d1f71bc808d', '畢竟', 1, '1', '6ff45324-801c-4b10-a775-496735efdcd5', 'phrase'),
('42dc1b53-b1dc-49fb-9546-5e9fb1e7d088', '（板球，橄欖球等的）國際錦標賽（同 test match）', 5, '1', '7f698c34-2328-4be6-80b9-290085a63b8f', 'noun [ C ]'),
('42e6b042-6561-4b47-9e04-693b432837a7', '流口水', 10, '1', '5ceccf55-9228-41af-8fbd-d9e95f7e8b81', 'verb'),
('430e9647-0d38-4645-a255-708ac8a042d5', '（品質、能力等）超出…，不受…影響', 5, '1', 'f4adf6d0-14e0-4a01-b70f-8b323fd6d8b3', 'adverb, preposition'),
('432f1c36-c68c-4b8c-8b1b-d03a545109b0', '（板球，橄欖球等的）國際錦標賽（同 test match）', 5, '1', '4481c518-f8cd-4e11-a0d6-5f70d1b5ff91', 'noun [ C ]'),
('43d2a332-19a7-4672-a8d0-707cdea840f9', '污染', 1, '1', '74db1f1e-eaaf-4f9a-a926-cee327523f04', 'n[U]'),
('44ada9b6-f485-4f2e-a0e9-7977daa61dcc', '一說到，一提及', 1, '1', 'b13ab96f-6009-485d-bec3-f9cd4ec5c3b5', 'phrase'),
('44e0d6b2-3011-4866-80e1-2120d6e36fef', '推銷（商品）', 1, '1', '188a41a9-e5d8-4c0f-a9b6-2af4feed15c6', 'verb'),
('45f967c0-744a-4441-acc1-cabcf670aa4d', '像…的，如…的', 1, '1', 'a18fc1a9-a911-42df-b6ac-cd7bd9fc0896', 'suffix'),
('46072f9c-0805-4dda-b781-d76a1307ea78', '（使）展開，（使）鋪開；（使）蔓延，（使）擴散', 1, '1', '475ba056-19cd-4994-9d16-5af265b28d4e', 'v'),
('460e2b56-81ee-4f49-a4e5-fe88102299d7', '表情；神色', 2, '1', '1b8fea6e-a9dc-48df-9e71-e78bb33d1586', 'n'),
('4683a7a4-0cad-45fb-b4a1-0a77a70fefcd', '加法', 1, '1', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'noun'),
('46e2ae08-7934-4356-a515-67bdcdad4777', '與（…）同時存在；與（…）相伴而生', 1, '1', '20fda2de-7c3e-47ba-b123-c2c5692db901', NULL),
('46f10b3d-2cae-49e2-8258-f5d38c7f0e7e', '災難，大禍', 1, '1', '1bcf3fcf-e94a-4697-bd5d-ff0f79a1b1b7', 'n[C]'),
('46fdfec2-fe57-4e8b-a37e-c00a8adef249', '金色（的）；金黃色（的）', 1, '1', '4653d682-8fd2-458a-a66f-2321f90130ad', 'adj'),
('4747d035-7d04-466e-88c5-c90db6605d5a', '號碼；…號（number的縮寫）', 7, '1', '6a2f15be-804b-40fe-9550-ab7296e8a8a4', 'noun [ before noun ]'),
('47623158-295d-484a-af99-a664e3f8e9a3', '詞；詞語；措詞', 3, '1', '1b8fea6e-a9dc-48df-9e71-e78bb33d1586', 'n'),
('479a1628-5047-49ae-a072-8d2521001a3e', '（通常用作熟人間的問候語）嗨，喂', 1, '1', 'd8eadefa-f760-464c-9037-29d2a55415ae', 'exclamation'),
('47b5576d-4e63-437f-8bb6-0c446305c30c', '持續地，一致地', 1, '1', 'e82bafa6-7780-4c7a-b8d6-7f4c363bc210', 'adv'),
('4809cf55-3ff4-48db-bb91-9e7a070d9c9d', '現在，這時', 5, '1', 'e762c29a-181f-4221-93a4-a8ed37ea7798', 'adverb'),
('48c53851-c9f7-4912-8a4f-684adda40e0d', '雨水', 1, '1', 'f8ece7a7-4188-46f9-aea6-dfd53b693b45', 'n[U]'),
('48dcba1f-229a-44d9-be7f-058f7c6c9ee1', '（使）發出砰的一聲；（使）爆開', 1, '1', '1a2b91eb-1e53-4d83-b057-a8efc3d2d3ad', 'verb'),
('49656521-e9f4-4774-86cd-e6069db11b92', '（用於把以 -able 或 -ible 結尾的形容詞轉化為名詞，表示這些形容詞具有的特性）…性', 2, '1', 'c1765455-73fa-4d1e-b143-0e1dd360abdd', 'suffix'),
('49817fcb-5936-49ef-bea8-d7a987c330f4', '私情，風流韻事；（非夫妻間的）性關係', 1, '1', '3b40a593-247d-40d8-96bc-89f185b01a16', 'n'),
('4a013304-a421-458f-87ee-c9fca6184f62', '安排；組織；籌劃', 1, '1', '90215943-de50-4676-90c6-1072611eea95', 'vt'),
('4a190320-8c7a-40eb-b5aa-03d055f93576', '試驗', 3, '1', 'de7a5046-0e93-4d99-bd1d-041b23579ad9', 'noun [ C ]'),
('4a44da5b-8415-47cd-af6f-d41fd36a89b4', '全天地，全天候地；不分晝夜地；日以繼夜地', 1, '1', '04a47172-106c-490c-bd68-5f74df3b53b8', 'phrase'),
('4ac16d03-2008-43c8-a955-8b1fd998719e', '（物體破裂或掉落時發出的）哢嚓聲，嘩啦聲', 1, '1', '6d58b894-bb45-4680-b782-e0c79d939e9f', 'n'),
('4ad960ec-2c26-4eb0-baae-4ac9dae9ea99', '想，想要，希望', 1, '1', '27ae9f1d-2e31-427f-bcf4-0b050eeb9da3', 'verb [ T ]'),
('4af3d096-3ee9-4d54-a3e3-c3d6d1bb493d', '可以的，同意的；能接受的，可行的', 1, '1', '3ff85da5-82a5-4a28-bacf-31d83535121a', 'exclamation'),
('4b1b5db1-2b73-4acf-a980-00eedc338161', '哀痛的；悲慘的', 1, '1', '5589ffea-9a88-4567-b5e5-f8157984e021', 'adj'),
('4b9af516-24dc-4980-b986-8ee06304dd16', '(植物或人造物的）纖維，絲', 1, '1', 'af58b835-efd7-42b5-ac31-682c766bd6a5', 'n'),
('4c56f331-aaba-4701-a89a-1470a36337de', '質疑，懷疑', 2, '1', 'd6f8f24f-c894-4049-a105-acc63786ea0d', 'vt'),
('4c7490c4-3bf6-4cde-965c-c2161e093593', '擠，推擠', 1, '1', 'c2c931b1-d466-4444-abb3-e09074ba31bb', 'verb'),
('4d26fa45-6648-4fb7-8057-b8d7046a34b7', '吸引；招引；引起興趣', 1, '1', 'f184c45d-7d72-49eb-90d0-48b90f5a1e4a', 'vt'),
('4d84be0f-b20e-452a-9dc5-a8b89c5ef2de', '肯定，當然，毫無疑問', 1, '1', 'fbd00cb5-1449-4810-93a0-38658c11dea9', 'adv'),
('4e27d943-7373-4e1f-8c55-bb8021fe7a18', '意識到的；明白的；知道的', 1, '1', '12423792-d9e7-479a-bb6e-697e0e8a5799', 'adj'),
('4ed3bb73-b95c-4d3b-ac95-d8ac4695ef29', '漂浮', 1, '1', 'c2097f3f-45e0-4324-a4c4-ed95d951638e', 'vi'),
('4eff4c7d-d6cd-49c8-adc7-6f77a63912c1', '的確，實在', 1, '1', '007f9b19-5d90-43ca-93ae-be6ba8bb5731', 'adv'),
('4f22557e-d297-4266-a8b8-e8684fd65b9d', '世界範圍的，全世界的；在全世界的', 1, '1', '6a1216f9-ed39-4f36-86a0-58c750cfe690', 'adj'),
('4f3a3778-8422-4032-87cd-e31fadb6797a', '陳述；表達；表露', 1, '1', '54848fce-faa8-43a8-bf5b-9e777c92d62a', 'v'),
('4f565393-b2a2-4332-9fc5-6a75670c9353', '立方體；立方形的東西', 1, '1', 'c1488c76-94ac-425c-901c-1f233ef8ed8b', 'n'),
('4f80ce2e-2f80-4605-8790-7d2ce79f8a8e', '意思，意義；含義', 1, '1', 'ae440a60-493c-4ed4-9ac5-56aba24308b8', 'n'),
('4fc95f25-8c49-48c2-8aae-b151486d6d8d', '柑橘類果樹', 1, '1', '4189a96b-150e-44e1-bbac-f466ea0c8d01', 'n'),
('4fd1e5ed-4f34-405f-867c-2b6e122a3e1e', '完全的，十足的，徹底的', 1, '1', 'f2881781-27f0-4aa0-85a8-21631018f3b5', 'adj'),
('50154080-ba09-4d2f-9b6e-8f6ca9cdb661', '吸引力；有吸引力的事物', 1, '1', 'f1a3132e-50b3-4a79-8a84-66812754aed9', 'n'),
('50988cb3-a69d-4c40-8fea-c240c3e09a01', '喜好，愛好，最愛', 3, '1', 'd7955188-5328-4c6f-a0c4-ff19a8f08d77', 'noun'),
('5167077f-1221-465f-908a-5486def539aa', '（以某種方式）行事，表現', 1, '1', '215513af-e3a4-484a-a9d5-74bd400d3036', 'v'),
('51c7e816-8ac7-44a2-9663-72c52b2e705b', '最後處於；結果成爲；以…告終', 1, '1', 'a5dfb87e-9e81-476d-918c-97de9c0ed0bd', 'phrase'),
('51d5b71f-45fd-41d4-a2f2-8e5188204836', '自然環境的；有關環境的', 1, '1', '5abee4ef-ec66-41cf-a3de-5aaced1145bd', 'adj'),
('51f4b5ca-4e23-43d5-8e4d-1a9e6930568b', '行動；活動', 1, '1', 'a67a7a97-ea2f-4653-a3dd-2c5cfa6c0e32', 'n'),
('5210494e-30f5-4646-aaec-23f82622e377', '外表，外觀；外貌；樣子', 1, '1', 'e009dc44-44f5-4eb3-b98b-445471375996', 'n'),
('522b3d76-508e-4b3c-b5a0-6456a02fdf65', '緩解，減輕，解除（疼痛或擔憂）；使寬心，使寬慰', 1, '1', '71717bae-6ab8-49c6-acd9-f7886f950f02', 'vt'),
('522f8250-f761-434d-86f3-728ef13bd390', '檢驗；考驗', 4, '1', 'f8a76289-7428-4fad-ad6b-aa5de20d55dc', 'noun [ C ]'),
('52393206-737d-47b0-bbf2-1724d5c5c389', '指出，顯示', 2, '1', '92a94222-a0a2-4270-822f-71be6e932384', 'vt'),
('52c6e7a2-6caf-43f9-8c59-d3b226b85fee', '（擔憂的事）發生，成真', 1, '1', 'eb92dd3b-dd45-4f0e-85e8-96d0ccec7ec8', 'v'),
('52d1e687-6d40-4aa9-9c39-09ac8917c178', '測驗，考查', 1, '1', 'fb99f1e9-cfc4-43ad-8477-0eacf5b0ae7a', 'noun [ C ]'),
('52f46f0f-1546-412e-9f82-a624090374ab', '（打電話時的招呼語）你好，喂', 2, '1', '168baf50-b1a0-4818-bb4f-d7dc0bdece85', 'exclamation, noun'),
('52f9cc39-ce89-45a7-a495-3aef5dcdd2b0', '對…很狂熱；醉心於…；迷戀…', 1, '1', '80a6a532-df5d-4d18-809d-f7c222ae4153', NULL),
('5354565c-bcd8-4dd9-be51-f28596311c4c', '（從困境中）脫身，一走了之', 1, '1', 'bee2541e-4561-4fc1-8855-d8037362da56', 'phrase'),
('536d558c-dfc1-4916-b8e2-b477dea05ca5', '（表示認為某人言行愚蠢可笑，尤指對正在發生的事不注意）', 4, '1', '8e0ac9ef-1a82-40d7-ae88-038dc4439669', 'exclamation, noun'),
('5498603e-7679-4792-b23c-f77599f22b1b', '專家的；具專門知識的', 1, '1', 'ea84350b-380b-44d2-90ab-eba318fdaadb', 'adj'),
('54d5ac75-2c83-4058-9175-2bfbf8d6dbcc', '（用於請求）想要，希望得到', 2, '1', '27ae9f1d-2e31-427f-bcf4-0b050eeb9da3', 'verb [ T ]'),
('5523a0b1-cd6e-4c2e-9087-079c5b1d2e35', '鼓勵（某人）做（某事）', 1, '1', '8a99b40b-ddba-4fa8-8eac-c27f5207d7f1', 'noun'),
('55967a19-6d2f-462c-935b-ee2015e3335c', '傷害，損害', 1, '1', 'ea8fe188-82b4-4b51-91fb-42aa2e616e4e', 'vt'),
('5622d100-91ed-4de9-b7ba-5458441f62c9', '（表示驚訝）', 5, '1', '168baf50-b1a0-4818-bb4f-d7dc0bdece85', 'exclamation, noun'),
('5658f890-3f4d-4665-b94a-995a65d908b3', 'as a result of sth', 1, '1', 'f47772dd-97a9-442f-a015-c9ae275b212a', 'phrase'),
('56923f92-5a1f-4d54-92e6-7387fb3a3aff', '（有時用於句末，表示所說非所想）才不是呢', 6, '1', '421ce747-f0d7-42d7-a0ea-e5d6378ec1fa', 'adverb'),
('56b87fe5-687c-4264-b3c9-edc73c2a45f8', '算，計算', 1, '1', 'fc13616b-cd64-4aa0-8cc0-aef3efd8ee22', 'n'),
('56e40b97-7621-4806-a534-f35efd6728ef', '（體格）檢查；化驗', 2, '1', 'f8a76289-7428-4fad-ad6b-aa5de20d55dc', 'noun [ C ]'),
('57358aa1-d377-4b35-bc25-9cd0efa5acfa', '與文化有關的，文化的', 1, '1', 'c8b4ca04-1343-4365-a3d7-0f4edc7f7869', 'adj'),
('5747a11c-8438-4498-b586-0c638f62faaf', '導彈，飛彈', 1, '1', 'e5c53663-8ead-44ef-bcf0-42523173ff4c', 'n[C]'),
('5837a151-dbaf-4130-aac5-5f44a2ee4042', '試驗', 3, '1', '4481c518-f8cd-4e11-a0d6-5f70d1b5ff91', 'noun [ C ]'),
('586f7340-d3e6-4c22-8709-53d34fcd25fd', '蘋果', 1, '1', '6f2f186e-90f6-4582-b0eb-868c648b3f4e', 'noun [ C or U ]'),
('58fc6f05-50a0-47ea-b3c4-a4268b86007c', '信任，信賴，相信', 1, '1', '68afe15b-e6ee-43c5-92e6-654a1b986757', 'v'),
('5922bee8-5217-4b7f-8e7e-f4a12d7ea814', '（用作兒童故事的開場白）', 2, '1', '7fb2151d-737d-4773-9e18-1dfc30d996a4', 'adverb'),
('59788830-4629-4736-a1ad-269936af34bb', '門廳；走廊（同 hall）', 1, '1', '36f8ec56-65d9-42fa-8cb7-0c6eb86b7a4b', 'n'),
('59fa0829-d790-4162-84a2-d22ff6aac833', '文靜地；和藹地；溫柔地', 1, '1', '88afe462-0878-4b8c-b8a6-57893946e205', 'adv'),
('5a721e29-a29f-46a9-b694-b3a009399c87', '測驗，考查', 1, '1', '15763a60-0769-4b86-8c19-31a6c829f6e0', 'noun [ C ]'),
('5b03fe7f-1762-44be-b843-bf645bdf616d', '特別，尤其，格外', 1, '1', '98d91fff-e422-4910-aee8-d7e4357c1412', 'adv'),
('5b3ca1ac-4ef4-4880-ab1a-1c63423f3d67', '前面列出的所有人（或事物）', 7, '1', 'f4adf6d0-14e0-4a01-b70f-8b323fd6d8b3', 'adverb, adjective'),
('5b4da0cf-79e9-4892-b72f-62399d56117f', '一連串；一系列', 1, '1', 'd704b7df-485d-4eff-bd3a-475be48d6d6d', 'n'),
('5bbab1fa-ddec-48b1-956e-1228c4de13a1', '（用於表示同情或滿足）你瞧，好啦', 6, '1', '3479eb7b-2c69-4347-beaf-503f96686170', 'exclamation'),
('5cbbb36c-fa7f-4b37-9663-743e37d03f0d', '（尤指大量地）消耗，消費，花費，吃喝，攝取', 1, '1', '094e258f-99cd-4df0-8cf0-1bb91c375558', 'vt'),
('5e4fb13a-077b-4041-b6d6-5c07347658a0', '大約，大概，左右', 4, '1', '0f3727df-adb9-40fa-9910-6a62951f3193', 'adverb'),
('5e70048c-7f7e-49a2-a71a-eba3dffb6a31', '含量', 1, '1', 'b6f8eb1b-5563-466c-a23e-9777ade5c3d2', 'n'),
('5e8c6079-2f7e-42a3-a772-f70c6fd33c1f', '牙膏', 1, '1', '67a88f8f-027d-45d8-ab1b-b082aa607195', 'n[U]'),
('5ee370ea-138f-4873-ac5a-907f0695be8e', '心臟病', 1, '1', '082a092a-99dc-4d7c-8660-588862d8e57a', 'n[U]'),
('5ef6f1ac-876e-4824-9c12-06654853d77e', '從那以後一直', 1, '1', '054031e0-dca2-4975-aebc-e1ad2c7d224b', NULL),
('5f1945e9-e7f6-4b69-8d26-20e721103579', '沒有一個（人或事物）；全無', 1, '1', '1df036a6-f6e9-4943-b216-6449e26de467', 'pronoun'),
('5f2fe135-921f-42c6-b5c2-5181fc427f1a', '（布料製成的東西的）懸掛狀', 2, '1', '625c99ad-df42-4424-b249-85cfe979710d', 'noun'),
('5f691c85-3250-4634-be8f-b63714cff856', '慾望，渴望，願望', 1, '1', '359417e1-fbfc-44cd-9494-c6745da9227e', 'n'),
('5fbdc7f6-e573-4c82-b70f-307a83b44fba', '逐步的，逐漸的；平緩的', 1, '1', 'c0076b8e-6b03-4c7d-abf4-c18fdf2da667', 'adj'),
('60019d9f-e17b-402f-9366-d6677a13a3a9', '蚱蜢，蝗蟲', 1, '1', '600b7bf9-636d-489a-8b09-bafaf0a35ea6', 'n'),
('603e9f2a-e841-4712-8b49-895da0f8a096', '（用於給出否定回答）不，不是', 3, '1', '6a2f15be-804b-40fe-9550-ab7296e8a8a4', 'adverb'),
('607f2bf4-c7ec-437d-ba1a-e0ad3783bd8d', '（用於構成形容詞）', 1, '1', '20331c6d-d3ce-4c07-bb8f-28e3833a0a9d', 'suffix'),
('60bc4461-1964-4e6f-9450-50a529425e87', '統治；管理；治理', 1, '1', 'de513f0c-7245-4a22-be7b-bedf13373cc6', 'vt'),
('6124f94a-7fb4-4bed-8dfa-43b985fe2288', '有關的；有聯繫的；相關的', 1, '1', '89abfd6d-eae1-4c7a-93b0-84306b81ff01', 'adj'),
('61309987-97c2-483c-aadd-8211d6309663', '（尤指透過書面或表格形式）申請，請求', 1, '1', 'd230423e-6191-4b3d-8ec6-9db3a89406d1', 'vi'),
('618c1339-842b-465c-a7a7-f9730709bc7b', '幾乎，差不多', 5, '1', '0f3727df-adb9-40fa-9910-6a62951f3193', 'adverb'),
('61ca7ab6-3af1-474e-82fe-105a37cf4646', '期盼；盼望；希望', 1, '1', 'e7379ff3-0216-404a-84d4-08e9b1aab208', 'n'),
('62c424ab-d131-485f-bd3e-17d93b99ae42', '內疚的，愧疚的，自責的', 1, '1', '22f8c951-ab55-4b6e-b349-68a0b1b44f09', 'adj'),
('62c9281c-8605-41d3-a9c0-2a8f51c14788', '文化（尤指某一群體在某一時期普遍的風俗習慣和信仰）', 1, '1', '2c1a0a5e-7a03-406b-982e-bcf212d272d8', 'n'),
('63f03d3c-d69a-4a03-9f76-ef7d86a43afc', '逃脫，逃離', 1, '1', 'bdd16a0f-0d4a-4edd-86bd-fe9731d226e1', 'n'),
('642544a1-8960-4364-8d0c-27e582c15c11', '測驗，考查', 1, '1', '7f698c34-2328-4be6-80b9-290085a63b8f', 'noun [ C ]'),
('64ceea8f-4f60-4dfb-b0d0-aa3165ec4d5d', '拱；拱形結構；拱門（或窗、頂、洞等）', 1, '1', '4ed61265-daa7-472c-a8aa-dbe1c46e8847', 'n'),
('652c054f-23d7-4061-8086-2dd8ef058691', '優秀的事物；了不起，十分出色', 1, '1', '1b30e97f-69b7-4829-825e-d0ec753807ed', 'pronoun, adverb'),
('65d04ac5-0c14-4985-8426-6cf604bb8165', '地毯；地毯織物', 1, '1', '9903d127-3f40-4b2a-bf57-87a82d481224', 'n'),
('6624029f-15a8-4dbc-82aa-cae8f80cf58c', '檢查（身體）', 2, '1', 'dc93cda3-9da6-4913-8aec-9e7fc093059c', 'verb [ T ]'),
('662e530e-889c-4de8-96ae-9e197ba9fdd6', '（耳壓）變化；耳膜脹痛', 2, '1', '1a2b91eb-1e53-4d83-b057-a8efc3d2d3ad', 'verb'),
('66abc9ed-91a3-4050-a141-7abd4813bb9b', '墳墓，墓穴，埋葬處', 1, '1', 'f53d2865-7f64-4c65-90a3-bdd222c9cece', 'n'),
('66f27664-02c0-44c4-9e01-3bc805869dd5', '法國佬（侮辱性用語）', 2, '1', '5aa39d91-c34a-490e-8a09-507163e6e690', 'noun [ C ]'),
('67057f01-f182-434f-a821-ab75a9515fc1', '（虛構的）怪物，怪獸', 1, '1', '8087cf6c-a012-4ccc-b7be-e1c4de752abc', 'n'),
('673a70b8-3ed1-4646-936c-348a949f38b8', '懸掛，吊；吊著', 1, '1', '62e7acec-d568-4b16-9a7b-904dfeee19b9', 'verb'),
('676f50be-dc46-40c3-acaa-ac195a8ce113', '失眠的，沒有睡覺的', 1, '1', 'e6cc9f97-15b7-4f70-80da-6dbe8ba31990', 'adj'),
('679f6293-ca3b-4a49-9d7f-d7b6b01f3e4d', '痛苦，悲慘', 1, '1', '719aa8e4-59d1-4404-998f-a7af706d7c70', 'n'),
('68240235-9213-4eba-8757-bc3ed02327e5', '學會做（尤指不那麽簡單明瞭的事）', 1, '1', '625c99ad-df42-4424-b249-85cfe979710d', 'noun'),
('6840f00d-1f88-4ca8-bc20-7e6a92424acd', '（板球，橄欖球等的）國際錦標賽（同 test match）', 5, '1', 'fb99f1e9-cfc4-43ad-8477-0eacf5b0ae7a', 'noun [ C ]'),
('69bc2319-7ba9-4346-a49a-695ae4550724', '現實的，實際的；真實的，真正的', 1, '1', 'f689d4a5-b29e-40bc-a477-878d3e5275e7', 'adj'),
('6a4e1122-6773-400d-a3ed-c15c8430df57', '試驗', 3, '1', 'f8a76289-7428-4fad-ad6b-aa5de20d55dc', 'noun [ C ]'),
('6adc2d5e-c622-4975-b6b3-1f60a590a911', '通常；平常，一般地', 1, '1', '01cd16cc-e347-4664-a320-8bcb1cb37680', 'adv'),
('6b4945c3-b7a7-4bb6-88e6-e2f129842d64', '（通常指工廠利用機械大量）製造，（大批）生產', 1, '1', '591c82f6-0669-44ad-b93d-38b99f1c06bf', 'vt'),
('6b995d1b-91d2-45d6-bb53-5ed294c46fb0', '描述，描寫，描繪', 1, '1', 'be0be9bc-1d99-4f74-a793-346ba709b40a', 'vt'),
('6bfaacac-ee79-43ee-a5d2-b2340d70f4bb', '必需的東西；生活必需品', 1, '1', '49c72879-935a-4e67-807a-d20001a66cbf', 'n'),
('6c049092-6030-48a4-968e-0a8c0c3a43ea', '布，布料', 1, '1', 'bed1feae-2f97-4760-b6ed-f0c190d73e16', 'n'),
('6c1addf7-547c-40b9-a7c2-f09637034a70', '塑膠', 1, '1', '3aca4148-0876-489b-bff8-e0928f2a827e', 'n[U]'),
('6c234cbb-bb37-4ddb-9425-9a942fe06711', '（散落在公共場所的）垃圾，廢棄物', 1, '1', 'a31da318-6d98-4db8-922f-8818b21e0207', 'n[U]'),
('6c2b7e76-4191-4f5a-9b72-dd416278f710', '阻止，妨礙；預防', 1, '1', 'd4bd6b67-335d-41ff-aaaa-cdad3c5a84b8', 'n'),
('6ccca19a-de27-4be3-881d-225466bee149', '測驗，測試；考查；考試', 7, '1', '639d64c0-73c9-4800-afb0-a9addbbffdc6', 'verb [ T ]'),
('6d8b9e3f-0856-4438-b0f3-67fe8a90a826', '熟悉的；常見的；常聽說', 1, '1', '9075a0e6-52a7-4dc6-938c-c2e9625f55c1', 'adj'),
('6f55cb90-01bd-4ac8-8c36-4fb1d7cc0474', '威脅，恐嚇', 1, '1', '236fbf7a-f836-463b-85d4-0d18dca3d503', 'n'),
('6faaf918-5727-4e07-be9c-b57c28cf21cd', '競爭的；競爭激烈的', 1, '1', '7a071dd1-8d8b-4673-8a6a-0efacc780195', 'adj'),
('6fc2c02f-df46-4b1b-9936-741dfaff1a73', '而且；更有意思（或驚人）的是，再者', 1, '1', '5adbb629-20b5-4836-9da8-3f951ef8b822', NULL),
('707dd9b2-aac2-4060-9627-c33a7d573c28', '（用於引出自己對已發生事件的感覺或想法）', 1, '1', '656620d8-dc7e-4d79-9f82-e71ec16cb7ed', 'adverb'),
('70a2b9f3-51bf-43a1-aeee-03e38a1f566f', '羊水', 6, '1', '0eacba66-c67b-4a65-974d-c62fb305b564', 'noun'),
('70b5d185-d0aa-4181-a3e1-d343a203a9b9', '謀殺，兇殺', 1, '1', '5932a24d-bb99-4874-9d64-1ad7be89dad6', 'n'),
('70be1a7b-da0f-4059-beb5-67fd91bf0ab4', '生病的，不舒服的', 1, '1', 'dad9921a-7cf1-4b4f-982e-bf71f857b950', 'adj'),
('7154c721-c4e4-43f2-86a2-4e54422e460f', '（學科）基礎知識，入門', 2, '1', '94964b8a-87e7-41aa-bebd-a410847e0a5f', 'noun'),
('71a40a10-303e-4c02-9499-601a18e56e79', '不幸；厄運；不幸事故；災難', 1, '1', 'ba5ef830-9fa8-4ad1-9ec1-6be6c52ae48c', 'n'),
('71deb24c-daf5-42fe-807e-fc07bdc71f24', '成功', 3, '1', '3479eb7b-2c69-4347-beaf-503f96686170', 'adverb'),
('72122ace-71d4-4b8a-a872-67b479507575', '可可', 1, '1', '5305ed00-e963-40ac-bbdd-3cbef8748454', 'n'),
('7250e043-6313-4132-ac23-0e8607d3cd52', '種類，類型', 1, '1', '43d5175c-349d-4a49-b8e5-2acc6582f869', 'n'),
('7267d67e-bb16-4583-b281-6c8c15a8aead', '（打電話時的招呼語）你好，喂', 2, '1', '61e66cb3-76d0-434c-886a-7d6973a3fd77', 'exclamation, noun'),
('72f66427-c340-4386-818e-3acd630abfb5', '收穫時節；收割，收穫；收成', 1, '1', '071c3b0d-f21c-4f19-8d8e-b0dc2fea8ff1', 'n'),
('732b4816-4952-4046-8765-c68ce62654a1', '製造商，生產商（生產大批商品的企業）', 1, '1', 'b12adeba-cad2-4a06-aa7b-c936fbd516c6', 'n[C]'),
('73320be8-77fb-430f-b7ca-9af586c34507', '測驗，測試；考查；考試', 7, '1', '15763a60-0769-4b86-8c19-31a6c829f6e0', 'verb [ T ]'),
('737ef3dc-2c24-4c48-bc01-e3439eb6af11', '例如，諸如', 1, '1', 'd4ed9429-1307-47c4-bbcc-e8baa29382c8', 'preposition'),
('74cabd8b-1cef-4179-aff4-0ef7c9961158', '可以的，同意的；能接受的，可行的', 5, '1', '3ff85da5-82a5-4a28-bacf-31d83535121a', 'adjective'),
('74fcb800-7f03-4358-bd43-d379aac61c16', '潮汐；潮水', 1, '1', '71c52de7-543d-4d2f-99c9-20d83ac2849d', 'n[C]'),
('7572329e-1e07-4095-bfd0-3027b53d042c', '超重的，過重的', 1, '1', 'eb0893d4-f542-481f-bbec-99f343d31990', 'adj'),
('75adf8ef-7880-4de3-9038-c19d7e84bd27', '計劃表；日程表；進度表', 1, '1', '03929ac0-ae71-43c0-8b83-bb145707e0f1', 'n'),
('75b2bd95-2bd3-4b39-9faa-f4495de05c0d', '花生，花生米', 1, '1', '72d6a8be-82f3-4761-8828-ea1449a32a30', 'n'),
('76286814-a635-4790-8e6e-0928e617a107', '科學家', 1, '1', '9b3cf670-456d-41bb-b239-b16f9ec6bd95', 'n'),
('76552045-d678-4b05-8264-dc234d780aee', '（軍隊）行軍', 2, '1', 'c2c931b1-d466-4444-abb3-e09074ba31bb', 'verb'),
('76d9320a-1adc-4ea4-b0b6-c1b3296afc7f', '結果，後果', 1, '1', '702b944a-6c94-4cf9-b116-8e124a084daf', 'n[C]'),
('7720f3bf-f2ff-4912-b7c0-52b68997a191', '聯合國（the United Nations的縮寫）', 1, '1', '2cbd91b0-1740-42af-a958-5540e65e07ee', 'n'),
('774b41b5-e022-44b2-913f-493c2aaaccd6', '處境，情況，形勢', 1, '1', '11687f24-4188-4f88-a2d5-25fb5ca7b571', 'n[C]'),
('77defc4c-5c0c-43ec-a147-3671b1f41c7b', '難移動的；難改變的；難對付的', 1, '1', '4bc26b22-b8ac-4019-b373-812755174230', 'adj'),
('780c7524-f964-42d1-9627-01374ef681d2', '（用於表示某事也許不會發生）否，或許不', 5, '1', '421ce747-f0d7-42d7-a0ea-e5d6378ec1fa', 'adverb'),
('7892d4e2-03e8-4cde-8d37-d5905182af7f', '香蕉', 1, '1', 'ddea02ea-b511-4068-9d2b-c98dfee639d0', 'noun [ C or U ]'),
('78da3751-6f34-4eaa-8b8e-bd2c82c28352', '（使）不同；（使）呈現差異', 1, '1', 'f76f1248-b1ae-42de-ba96-0284cc4709f2', 'v'),
('794a88c9-d062-4d3f-ad12-76494f74d8e0', '所含之物；容納的東西；內容', 1, '1', '982cdf66-b407-4cb1-848c-bf546c2457ba', 'n'),
('7997ed6b-ede2-49c0-863b-f70a0ab41055', '通道；途徑；（接近某地或某人的）機會；（使用某物的）權利', 1, '1', 'd2970091-e35f-4169-8239-9377503cec00', 'n[U]'),
('799b4bd6-8b15-4a08-a4d9-740c6787a5fa', '堅固地；牢固地', 1, '1', '015e75c4-7a49-480f-b2f0-cadfaeb2f899', 'adv'),
('79a219cb-bb13-452d-b6bc-0c94fc63480a', '（體力或智力方面的）能力；才能，才智', 1, '1', 'c1765455-73fa-4d1e-b143-0e1dd360abdd', 'noun [ C or U ]'),
('79c1ba8b-7d37-4ec9-aa38-c5e6fb7bd4f0', '（尤指事故及其他意外事件）發生', 1, '1', '2d6a57e9-5c21-434d-965c-84e441c9b589', 'v'),
('7a181ad7-83cc-41d2-b2c1-491ffb3b154e', '能産生預期結果的；有效的', 1, '1', '46945a99-ee17-4a14-a806-fd31a734d9b4', 'adj'),
('7ab74a42-8ef3-4c16-a838-8389383ca517', '（生意上為贏得優勢而進行的）努力，攻勢', 1, '1', '0d9b2034-dbc0-456d-b09a-8bffce7d8ef9', 'noun'),
('7ac58670-b6af-4731-b742-f49496d0518b', '不再，再也不', 1, '1', '347d1aee-b24c-4e7d-b7c4-10713ef441d0', 'phrase'),
('7ac8c481-3741-43dc-b3e9-b2b93c6cf56e', '象，大象', 1, '1', 'a9965f38-b3ff-4f3f-9bf3-2d5d343cb65b', 'noun [ C ]'),
('7b91891a-479c-440c-aedf-b24379c00258', '（不快過後的）寬慰，寬心，輕鬆，解脫', 1, '1', 'b224bfdd-6f38-4c35-aee8-e26c0292dfd3', 'n'),
('7bef2ca1-5921-454b-8e59-902a3009ca23', '傳統', 1, '1', '009f673d-c6f3-452b-a24c-e47747c71c95', 'n'),
('7bfdbfcc-c330-44fe-863d-fb673921d253', '推測', 2, '1', 'fc13616b-cd64-4aa0-8cc0-aef3efd8ee22', 'n'),
('7c2ab278-216d-48b1-a506-65e800adab82', '（體格）檢查；化驗', 2, '1', '639d64c0-73c9-4800-afb0-a9addbbffdc6', 'noun [ C ]'),
('7c3354ae-5961-4dfa-8700-e257cad1baec', '半完成的', 1, '1', '976e1ba8-ca73-4fa5-a984-5098909eadf4', 'adj'),
('7c7af824-9d6f-436b-877c-7819256311f7', '彗星', 1, '1', '2c92fcc1-ebeb-4877-8131-35209e2b6f6b', 'n[C]'),
('7d80e195-7238-434f-955d-d0205e90008f', 'A變成B；A成為B', 1, '1', '44c168b3-5854-43db-9c68-49c5e9795967', 'phrase'),
('7dafa38b-39b3-4179-916d-210dc13f1a4d', '依賴；依靠；依仗', 1, '1', 'eee58427-fddd-4cd9-af6c-5b2497e13181', 'phrase'),
('7dd9adfb-f954-46e5-b0c0-731c84f88b2e', '否則，要不然', 1, '1', 'f5748a65-8d95-4047-b1a7-8079a0a774d7', 'n'),
('7ddb00d3-b96f-400b-8f1d-1c79c7466c84', '阻止，妨礙；預防', 1, '1', 'cd5d0b58-1f39-4b5c-a1cf-6a497dee022c', 'v'),
('7e11787c-e9d7-4cfa-bdfc-73c9eb5b8319', '各種各樣；多種類型', 2, '1', '52a1ce6f-40b7-4425-af15-a4b7a80ee753', 'n'),
('7e1b8b2e-ee91-400d-818e-d8e867eb72a0', '匆忙，趕緊；衝，奔', 1, '1', '17d50158-b167-4770-8d10-f97382abaed9', 'n'),
('7e307ab0-983b-4626-bd80-22be92631880', '隨意地；隨機地', 1, '1', '46ce8153-5baa-488e-b31d-99532117d568', 'adv'),
('7e6223a2-d7ed-4b1b-8920-5e897f903802', '運輸，運送，輸送', 1, '1', '5d0bd307-31a5-46ef-af53-04f00e07a147', 'n'),
('7e7a35cb-bd98-4ba0-97cf-81b9df1cbcc9', '活躍；繁忙；熱鬧', 2, '1', 'a67a7a97-ea2f-4653-a3dd-2c5cfa6c0e32', 'n'),
('7e83e5bd-191b-4a5b-b558-435497bda4aa', '通知，告知', 1, '1', '8359d3bd-2774-4969-9811-0937dd5f83f8', 'vt'),
('7ea0b7ca-33f8-4124-85e6-1d0eaea22587', '消費者；顧客；用戶', 1, '1', 'fa4718c7-2f7a-4155-8785-094f52afb221', 'n[C]'),
('7ed75aea-1199-42f8-949f-2ae135ce5f4e', '並不；毫不', 4, '1', '6a2f15be-804b-40fe-9550-ab7296e8a8a4', 'adverb'),
('7f077fba-20ea-4b99-8a4d-e873a956d134', '（表示驚訝）', 5, '1', '8e0ac9ef-1a82-40d7-ae88-038dc4439669', 'exclamation, noun'),
('7f24c95f-f6c3-4215-baf9-f82d21b5cb7a', '穿，戴，抹(化妝品)', 1, '1', 'e0e23dbf-3c17-4d45-b5d6-699a4a32f9f7', 'phrase'),
('7fb1eb5e-95ea-4c4e-9d25-fe52bc1f9de2', '考驗', 3, '1', 'f96467c0-8f60-4a7e-9164-5b74147f8a39', 'verb [ T ]'),
('801a8370-cd10-4954-bdb3-244b80323367', '無序地，淩亂地', 7, '1', '0f3727df-adb9-40fa-9910-6a62951f3193', 'adverb'),
('803a2f78-8c27-4e2b-8c9f-879e5e98e37e', '（某一湖泊、河流或海洋的）水域', 5, '1', '5ceccf55-9228-41af-8fbd-d9e95f7e8b81', 'noun'),
('8097fe9a-aee3-4eec-9c4a-784580e7eec7', '檢驗；考驗', 4, '1', 'de7a5046-0e93-4d99-bd1d-041b23579ad9', 'noun [ C ]'),
('80bbabbf-7cd6-494c-82ed-282e775c6439', '困難，艱辛', 1, '1', '07ffa40c-d6ad-4557-9d41-fa89aad8438d', 'n'),
('815c2a7a-0be1-4e18-b06b-51ec5967ce43', '（某個國家的）領海，海域', 4, '1', '5ceccf55-9228-41af-8fbd-d9e95f7e8b81', 'noun'),
('816766ec-44e2-45ea-b2c7-3c95e1207963', '（尤指重大或不尋常的）事情，事件', 1, '1', 'ddedc60e-190f-4ea6-b5d7-0844ed726f38', 'n'),
('818b0652-20ce-4075-8a5e-2808f43f7b9d', '西方國家的', 1, '1', '50ee6f3d-2460-4c84-8a24-a9c23f119c81', 'adj'),
('81f645da-d17f-45b7-9740-9dc75cc25034', '啜，啜飲', 1, '1', 'f43f99fc-81b1-4d36-b103-516a20761b09', 'v'),
('8206aa83-e524-4a56-ae4c-75009d260ada', '營養豐富的，營養價值高的', 1, '1', 'f654a04f-0180-4c60-b791-0f5c9b9154c7', 'adj'),
('8268ceb5-aeba-4c28-953c-219e73fac407', '多於；大於；高於；超過', 2, '1', 'f4adf6d0-14e0-4a01-b70f-8b323fd6d8b3', 'adverb, preposition'),
('8278c6e8-0431-4d03-9079-f622de7eb185', '（有孔的）珠子', 1, '1', '94c6d607-303b-45a7-b63d-066818c576d2', 'n[C]'),
('82823e25-1a83-4a0f-ab68-8169f13f1e64', '絞死，施以絞刑', 1, '1', 'b2097437-b578-47af-bc38-c81194c31aa0', 'verb'),
('82bbd3bf-2355-4775-9bd4-a1de16957404', '測驗，考查', 1, '1', 'f8a76289-7428-4fad-ad6b-aa5de20d55dc', 'noun [ C ]'),
('83958f99-08d6-498b-acda-82e40bc6bfbc', '泉水', 7, '1', '0eacba66-c67b-4a65-974d-c62fb305b564', 'noun'),
('83c94cd9-1f24-4fea-b332-40f247cf00df', '勘探者；考察者；探險者', 1, '1', '811119b0-b709-49a0-9617-939214b96980', 'n'),
('847daf5f-79ad-4a23-82e5-1123a72d7a4d', '將…（與…）聯繫起來，把…聯繫在一起', 1, '1', 'aa2dabec-5e99-4b31-8b66-8d7c9a0342fa', 'vt'),
('84c1f19d-8932-453f-a58e-7184957c6435', '限制，限定', 1, '1', 'ec5d8235-2d0c-4873-ac6d-76964217b1a5', 'vt'),
('85496ba9-abd1-4701-9526-e6f53f3d9d10', '撞車事故；失事', 2, '1', '6d58b894-bb45-4680-b782-e0c79d939e9f', 'n'),
('85818e9f-78ae-4bc6-a105-e3fafe3fd249', '多得不能應付', 3, '1', '1a755259-c123-4c0f-a126-1353d2a3168b', 'determiner'),
('85d4bbcc-bba5-4fb1-b85c-470919629d7a', '還可以的，還行的，湊合的', 7, '1', '3ff85da5-82a5-4a28-bacf-31d83535121a', 'adjective'),
('85e794c6-7030-462e-a253-dcdc62cee269', '邏輯思維，理性思維', 1, '1', '4078244f-097b-411b-9b1f-c801a219c7d1', 'n'),
('863c411c-4acf-4cc8-8626-9b507f18ea8a', '檢查（身體）', 9, '1', '639d64c0-73c9-4800-afb0-a9addbbffdc6', 'verb [ T ]'),
('86a4a6ee-7862-4932-845b-fd86e8e9d090', '需要；有賴於；要求；規定', 1, '1', '1db01631-a1e2-4bec-b286-a8554d2c67ff', 'vt'),
('86c78ff4-e65a-48ca-8d2c-a70147d2954e', '飛行員', 1, '1', '26edff09-06b4-4330-a275-40460a8c3d81', 'n[C]'),
('86fbf59e-fbb1-410d-8e57-fa14fc5b8106', '表示；表達；表露', 1, '1', '1b8fea6e-a9dc-48df-9e71-e78bb33d1586', 'n'),
('876cf371-66fe-46ce-9039-01c92048cb1e', '太多', 2, '1', '1a755259-c123-4c0f-a126-1353d2a3168b', 'determiner'),
('877a9130-6d05-4271-8e25-ec1fa46e2ba6', '爲…安排時間；安排，排定', 1, '1', 'c223d0dd-6e54-46bd-bcba-226ae9f7ef54', 'vt'),
('889d4cf9-22f2-4dfe-b8a4-3fc0c2bdde23', '（在某人打噴嚏時説）保佑你（們）', 1, '1', '297e836a-94b9-4192-9465-ff8418d0ce66', 'phrase'),
('897458fb-a4ac-45aa-a96c-8a3f29063a37', '修理；修補；修繕', 1, '1', 'c5961c2d-b197-46b9-8651-43be44efcb9b', 'n'),
('8995e4e9-0f68-4d81-b319-3b62d9feab49', '（尤指科學方面）實驗（性）的，試驗（性）的，根據實驗（試驗）的', 1, '1', 'fd5c9f18-7ba0-42df-b710-6f4ba8644aa9', 'adj'),
('899614d2-b898-437b-9ee4-6fecf830c7c7', '即使；雖然', 1, '1', '30032c70-acbc-4158-8556-94a35ab321f8', 'phrase'),
('8a3e1af8-101c-4180-849d-0f0701db1617', '古代的；古老的；年代久遠的', 1, '1', '5fe221ef-be11-4907-99ca-4da2a3fb293d', 'adj'),
('8a4dd01b-5b9e-4cda-ad15-d394377a2926', '澳大利亞廣播公司（澳大利亞一家由政府出資的廣播電視公司，Australian Broadcasting Corporation的縮寫）', 2, '1', '89957bb6-6d66-4ff1-9ce5-ca1fcae60689', 'noun'),
('8a58c6d8-dabf-4e57-95d7-eeb0d7e9d794', '測驗，測試；考查；考試', 2, '1', '544cc13f-8af3-4e1c-9bc1-28eb3ecfe8e2', 'verb [ T ]'),
('8a646928-d6b0-42c5-9166-d5438078467b', '情人節，聖瓦倫廷節', 1, '1', '2aee91dd-1d67-49f4-8d99-b414ac51d082', 'n'),
('8a836121-0656-4ab6-9cb0-1b7f6df0ff9a', '（尤指娛樂界的）名人，明星；名流', 1, '1', 'a793bde5-428a-41f7-9678-c9b20400088e', 'n'),
('8adb48d5-82b9-401c-bdba-8fa73dd3845f', '使大為驚奇，使驚愕', 1, '1', '90fa06dd-54bc-4b26-a99d-593d53612411', 'v'),
('8b20670d-bbf5-42c5-80a9-044d5ee8b4ef', '移開；拿開；去掉；除去；調動', 1, '1', '2d0ec0bd-1282-4f78-a7ba-dfb684e2180a', 'v'),
('8c10d592-6194-4ccc-bf63-c71e681c5806', '修理；修補；修復；整修', 1, '1', '2ec7c8f9-e693-491e-81cb-5a59f5331110', 'vt'),
('8c26da2f-6e4c-4912-99cd-7e9dc0e7bf15', '去', 1, '1', '1a669a92-ffe0-4c1e-9ac1-a6a35deb73b6', 'verb'),
('8c9bb486-2ee1-4a2f-a04c-b32459bcce47', '（人體的）系統；體系', 1, '1', 'b53c1863-4a2f-4453-97dc-92e5ce22805d', 'n[C]'),
('8cc44c68-3f88-46da-9f84-a0db94342e13', '（美國）奧克拉荷馬州，奧克拉何馬州（寫地址時Oklahoma的縮寫）', 11, '1', '3ff85da5-82a5-4a28-bacf-31d83535121a', 'noun'),
('8cdad13a-773d-4b66-8840-5f560e771ce5', '（某個國家的）領海，海域', 4, '1', '0eacba66-c67b-4a65-974d-c62fb305b564', 'noun'),
('8cf7053f-576f-468f-ace0-166bd3090f1f', '…地發生（或發展）；結果是（尤指出乎意料的結果）', 1, '1', '97231425-18d9-4b5e-ac7e-63b5ac9e2c5c', 'phrase'),
('8df61bbf-bf14-48ea-9f12-0e95c2378f44', '取笑；拿…開玩笑', 3, '1', 'a645e2de-7286-4baf-a8eb-024b50826b22', 'noun [ U ]'),
('8e2aa629-3c02-4d90-adc9-0abc917f8950', '去往；搬到（某處）', 2, '1', '76cf9850-9905-4cae-ab47-b0087aa291ab', 'noun'),
('8e4e3a59-a21b-4d08-af9a-a8998d39cc16', '（言語或行爲）恰當的，得體的', 1, '1', '892aa9d2-c72f-438e-9681-ff3ecba5bf4a', 'adjective'),
('8e6cdb91-1bbf-40d8-8eb2-b7c3064eee9f', '救援；營救；解救', 1, '1', '450bbcd2-275a-4018-9d0f-3255f988eacc', 'vt'),
('8e7d608b-0f8b-4e8a-b0da-805ebe22fc67', '推，推動', 1, '1', '52a64c38-f7dc-474e-8bca-469918e58a74', 'noun'),
('8ebb8741-61ec-4a8b-8fb4-f1c533a80973', '宗教的；宗教上的', 1, '1', '47b4df7f-76f6-49d1-8721-713009c9963e', 'adj'),
('8f516e33-dab2-45e6-a380-0c89398a4829', '醫學的；醫療的；醫用的', 1, '1', '456f4c3b-60be-4fb5-a61b-e988cc991f08', 'adj'),
('8f7e6360-8498-4df0-9859-658f922ee05b', '光滑的，平滑的', 1, '1', '3e00a2c6-da4f-4969-a130-ec1eeaed1bfc', 'adj'),
('90c0b8b8-02a9-4c55-938e-0d11abfa6178', '放鬆；鬆弛', 1, '1', '4131e792-5c91-4f75-b525-df70b945b168', 'n[U]'),
('90e904ef-c183-448c-bb86-c9719eec2b54', '成功', 3, '1', '994af216-7489-40ca-a1d7-6c8f9c5726ab', 'adverb');
INSERT INTO `worddef` (`WordDefId`, `ChiDefinition`, `Myorder`, `Status`, `WordId`, `Speech`) VALUES
('914eb062-d227-4c87-bf26-920259dbfa5e', '（板球，橄欖球等的）國際錦標賽（同 test match）', 5, '1', 'de7a5046-0e93-4d99-bd1d-041b23579ad9', 'noun [ C ]'),
('915f6824-2007-4a98-bea3-c9e5faac6129', '油炸薯片', 1, '1', '8e81d4e8-6472-4533-85cf-463d4e68b5c1', 'n'),
('917fda1c-9576-4c63-bf6f-24b18f870ff4', '無序地，淩亂地', 2, '1', '0f3727df-adb9-40fa-9910-6a62951f3193', 'preposition'),
('9324fe3e-03f1-4c0e-bfc4-86736d66a7e3', '裝飾，裝潢；裝飾品，裝飾物', 1, '1', 'ba615524-3e59-4c46-9b42-6a75f9b0c2f8', 'n'),
('938cfe75-ed5a-40e6-adf2-989565d14666', '認真考慮，斟酌，細想', 1, '1', 'd5bc09a8-8257-40df-b1ae-729519351c8c', 'v'),
('93cfb718-fbc8-4293-9986-0a19d98b9c95', '（尤指當眾）批評（某人），指責（某人）', 1, '1', '912ea872-b514-48db-bfbe-066844395975', 'noun'),
('9403a121-581d-4c4f-b08d-520589162c14', '考慮，斟酌', 1, '1', '4b073875-883e-43f9-9810-05dcbea0e94e', 'n'),
('941cf076-52ca-4104-b213-43383a540a59', '不熟悉的，陌生的', 1, '1', 'a0686740-bb4b-4169-a30b-0d27cafc5444', 'adj'),
('9459b351-7446-49ce-9600-fb9666cff438', '（同頁中）上面提到的（地）；上文（的），前文（的）', 6, '1', 'f4adf6d0-14e0-4a01-b70f-8b323fd6d8b3', 'adverb, adjective'),
('94e25dac-47aa-4739-b54f-569c2f6853aa', '在…方面；有關，關於，涉及', 1, '1', '0f3727df-adb9-40fa-9910-6a62951f3193', 'preposition'),
('94fb0630-90d8-48bf-aeb5-d0fa8141039c', '消化系統', 1, '1', '99411ab0-973a-4a79-b279-09ae1f830e59', 'n'),
('955a242b-f842-413e-80b0-2a43186c5a4c', '（表示在說話人近旁的人或物）這裡', 4, '1', 'e762c29a-181f-4221-93a4-a8ed37ea7798', 'adverb'),
('95b1c454-6b19-46c1-aaa2-00482cb7f874', '頭腦；智力', 1, '1', 'f5f3af38-a9f1-4a51-99c5-cf4921ff9f09', 'n'),
('95bea0ab-dd07-4156-a477-05a7fc4a62c8', '效果；影響；結果', 1, '1', '435be1a7-f690-46c3-8561-479ee7ac3e38', 'n'),
('95c6da88-cae6-48fc-8a41-45fedb9fff52', '搜捕，找到', 1, '1', '3d204610-1e22-4555-a5a6-3bd2ac5e1aa9', NULL),
('95d58901-ef65-4274-a606-e17cb37c59fc', '注意，留心；考慮；關心', 1, '1', 'a9f7f48a-d662-4ff6-a434-9ea5eff1a54b', 'n'),
('96256013-455e-48c5-a2dd-9793020b06b4', '自願參加者，（尤指幫助別人的）志願者，志工', 1, '1', '699ad43a-b42c-4a26-b34d-f347ebbea8ef', 'n[C]'),
('9773f80a-31fb-4245-a900-b52de68f6061', '（思維）風格；（行事）作風；（某事發生的）方式', 9, '1', '76cf9850-9905-4cae-ab47-b0087aa291ab', 'noun'),
('9774fe3d-0626-47c5-90f5-a9c3f988fc5f', '（通常有果味的）汽水', 1, '1', '71f081a1-94d4-438e-8836-a04b5997c073', 'noun'),
('9791b6f6-106e-411d-be25-0c5c310d8a39', '獸醫', 1, '1', 'f43b5cfc-027b-401d-b3c2-b2beda2371ea', 'n[C]'),
('97b3648d-4bc3-425d-a3d0-4981a9c92491', '救護車', 1, '1', '9f2c476b-d477-47aa-9e93-1fab620f5fbc', 'n[C]'),
('97f68a43-3caf-4fc4-9809-6e90b1a6dcde', '除去，剝去（水果、蔬菜的）皮', 1, '1', '38b6d361-51e5-4119-8ea8-b0ad08914154', 'v'),
('981de79f-3929-4b01-a0c2-b72b875985ab', '（表示認為某人言行愚蠢可笑，尤指對正在發生的事不注意）', 4, '1', '168baf50-b1a0-4818-bb4f-d7dc0bdece85', 'exclamation, noun'),
('98222c3c-7b52-46db-bbc4-2858cabedd2c', '猛推', 1, '1', '2f3d35d1-2a88-474a-bec6-4f163cfafa89', 'noun'),
('98277cf9-4250-4678-bf81-2c09fd16d52c', '除…之外還；也；和', 1, '1', '1b156c12-e8bc-4ad0-bbdc-dc443a5de251', 'phrase'),
('987fc559-8210-424d-a67d-5131d589da71', '酸', 1, '1', '22f8ce84-19b0-4836-b081-82cfa1905995', 'n'),
('9883cec8-8830-4964-a7e7-fe9e14643b41', '合得來；適應', 1, '1', 'a8661bbf-b130-4a6d-bd3e-4a1998118657', 'phrase'),
('98ec6508-adb4-42f7-8d21-71dce729177c', '變空', 1, '1', 'e2d3022b-df82-4872-8845-89706c14ae77', 'vi'),
('98f147b8-36f4-43d1-a016-42d5ac44374e', '（板球，橄欖球等的）國際錦標賽（同 test match）', 5, '1', '639d64c0-73c9-4800-afb0-a9addbbffdc6', 'noun [ C ]'),
('98f1bf50-2289-4708-a428-b70fb358fea0', '抓緊，握緊', 1, '1', '653c4fd3-4711-47db-ab19-d06e364d250b', 'vt'),
('998027fe-9731-498b-833c-60774f522b9e', '表演，演出', 1, '1', 'cf35313d-0cdf-428c-a1eb-77c63e1d8e71', 'n'),
('9a1e0d1f-2d53-4632-b4d8-2f65d25a245f', '一家人，一戶，家庭', 1, '1', '086f7e56-557b-4cbf-870f-8e698109c7f2', 'n[C]'),
('9a248f46-0303-4eea-a75f-0f341bc77cd6', '路，道路；路線', 1, '1', '76cf9850-9905-4cae-ab47-b0087aa291ab', 'noun'),
('9a85ff27-ac55-43f0-aea5-d2faa18a0b33', '化學物質；化學製品', 1, '1', '5fbcadd7-6f76-40b6-96f4-25bcae83349b', 'n[C]'),
('9acb2b0e-ff43-4fbc-a2d8-8474bbe5d7bb', '沾汙，染汙；留下汙跡', 1, '1', '38db5cd2-7068-4bd7-9620-7a3165258e01', 'v'),
('9af730ae-49f8-40e2-942f-94b2b88c52ee', '值錢的，貴重的', 1, '1', '06441132-7eff-45e3-9e53-c1973e638016', 'adj'),
('9b2a5a0e-bdd2-42ae-8a58-de408821fd1f', '（身體或精神上的）疾病', 1, '1', '9308c183-65d8-4f3f-8120-fdf61feafc81', 'n'),
('9b4c47d6-2dda-40e2-afd7-3806cb89e23f', '立即，馬上', 1, '1', '46e2eff3-920e-46c4-bb50-0920d08df6f6', 'adv'),
('9b6f2417-7a60-4320-a238-3aa1c73bc122', '稅；稅款', 1, '1', 'efb2f79c-d5ea-4459-bc5f-6454dc70f82a', 'n'),
('9bd50dba-add2-4bcf-9783-1422ad5f56d0', '方法，方式', 1, '1', '605e682f-e8d1-4dc3-9612-87435c4efdf3', 'n'),
('9bf6b2ca-9f3c-4996-9562-5cea1372b517', '增加的人或物', 3, '1', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'noun'),
('9c922889-6a3a-49c8-bb25-f2c5a0453206', '爲了好玩', 2, '1', 'a645e2de-7286-4baf-a8eb-024b50826b22', 'noun [ U ]'),
('9cc95dfb-a679-4699-86a3-b1156b964f29', '（尤指擦鼻子用的）紙巾，手巾紙，面紙', 1, '1', '4c088731-b68c-4afd-a2ea-eee37c6b8b26', 'n'),
('9e3ae348-fd01-4d56-867e-f3f2a1e21c7f', '接受（工作）；承擔（責任）', 1, '1', 'a881f4aa-f0e3-4619-a8ed-84c12872f6d6', 'phrase'),
('9e7f2155-a806-40cd-93b2-5e978c97a7a7', '分開；分解', 1, '1', '65a1c46d-c5b5-4ec1-b1d2-e92b00ea6933', 'phrase'),
('9ead26d0-fdab-45a6-a59e-7b487eef1601', '職責；義務', 1, '1', 'c5b455a2-e266-4ac7-b5e8-7fc90fa148f6', 'n[C]'),
('9f1e95a2-e4bd-4970-a7f8-12ffbe924cc3', '(經加總計算後)平均數，平均值', 1, '1', 'ca8bcee7-7004-4da1-b54e-5f4a09443353', 'n[U]'),
('9fbe10be-7feb-4120-9346-d9ed62a13ae6', '描述，描寫，描繪', 1, '1', '3d0a52fc-67a2-4583-b341-814d475e6df5', 'n'),
('9ff4b2a6-f7de-486a-9888-7ac17f5307e2', '文靜的；和藹的；溫柔的', 1, '1', 'aa5ad664-e469-4160-be93-f09b532244e6', 'adj'),
('a0555327-878d-4971-a1a7-0e586f4163fd', '影響；侵襲；感染；打動', 1, '1', '00a585b2-56e6-4aec-b69f-a88235a1f87d', 'vt'),
('a0fe45c1-dda4-4322-b5c1-d4380efc3e60', '年齡大一些的', 1, '1', '092aa462-4130-4600-8e52-655d939828fd', 'adj'),
('a137c412-f845-4f50-80d2-5b53dd17d9df', '風俗，習俗；傳統', 1, '1', '26d1811c-fdf9-468d-849e-aaa0f163964a', 'n'),
('a16e452d-2d58-4c74-be7a-c62a6d058671', '測驗，考查', 1, '1', 'dc93cda3-9da6-4913-8aec-9e7fc093059c', 'noun [ C ]'),
('a1da9804-383a-46ed-bacf-797c23231ed9', '考驗', 8, '1', '15763a60-0769-4b86-8c19-31a6c829f6e0', 'verb [ T ]'),
('a2623e4b-fb63-44fe-b3c8-e1d94f279623', '全天的，全天候的；不分晝夜的 around-the-clock', 1, '1', 'c0d47bbf-1129-44c8-a940-be54eff3a758', 'adj'),
('a305688e-ebf6-4abd-9964-6cdd5f133fcb', '（尤指逐漸）吸收', 1, '1', '0039bb2b-1453-4050-8860-9fc183b51eca', 'v'),
('a34d9751-6304-47fc-b4bf-761d638fc73e', '剛要…；行將…', 9, '1', '0f3727df-adb9-40fa-9910-6a62951f3193', 'adjective'),
('a3e576e1-4df4-4208-9a11-39c4a285622b', '（極大地）改善；起作用', 1, '1', '7223e5bb-129d-4741-9712-faed6d8caef7', 'phrase'),
('a3f745b6-33fa-4359-8e2f-2d7d1a2e8fe9', '（糕點、餅乾等食物）酥脆的', 1, '1', '6ce4dbd1-6619-430e-b85b-2dafbf2c5045', 'adj'),
('a4c90c91-e26c-4ece-a14e-947c3ae27bbe', '給…留下深刻印象；使欽佩', 1, '1', '2e5d7e5d-48ca-4f2e-b4ce-010e87ad8673', 'vt'),
('a4e0b40c-aa84-491c-93b8-5ce0e3868a74', '生物；動物', 1, '1', 'e21f8275-020b-4ea9-ade1-55d632c26fbe', 'n'),
('a59a063c-280b-48d1-b861-6c29705a3e2a', '海洋的；航海的；海運的', 1, '1', '46ad785a-75d5-4f8b-a4ea-9482fe090ef4', 'adj'),
('a5c61c44-678e-4717-8ea9-832961aa2b39', '避開；逃避', 1, '1', 'f22b2bcd-e378-4f96-bc42-db980a22b872', 'v'),
('a5df307a-c913-4a35-8979-5e5a7cc2b30c', '威脅，恐嚇；揚言要', 1, '1', '90c4c6dd-8b1b-4511-8ffa-1b59774585f7', 'v'),
('a5e73d26-9915-48be-acf5-e0720d27e2f4', '創造；創立；産生；創造物，作品', 1, '1', '89436eca-6488-4ad2-9ddf-c851cfc9d3ec', 'n'),
('a60a329f-2452-484d-82df-c8e6adf2562b', '堅決請求，強烈要求；強要', 1, '1', '4d7c30cf-c3b5-4c61-9b97-38fa430d3292', 'v'),
('a662dfe6-1000-4025-b1ed-c50cba0b9df6', '自然環境', 2, '1', 'e29e8151-cc45-467a-ac83-9168ee5f3c0f', 'n'),
('a6fbe59d-87dd-4909-a02c-bfb2aa843e4c', '傷害，損傷', 1, '1', 'c5e5c121-f029-490c-9994-d7c17f10a5e5', 'n[C]'),
('a7408dd6-cc64-4c37-87aa-1d24c9731dde', '給（演說、故事或表演）增添趣味', 1, '1', '1bdc8ca9-f60c-4fcd-8cc0-6165646443a2', NULL),
('a7b62b08-691e-4a76-911b-75c1ea2d3f3a', '滑倒；失足', 1, '1', '32117151-0f3b-4d68-be51-fde2ac8e8042', 'vi'),
('a80c99c3-ce46-49c0-b60f-3aa29546a630', '除…之外還', 2, '1', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'noun'),
('a8bdc4e6-4b05-404b-864e-7b76507e5c01', '生產；出產；製造', 1, '1', '420f2ec6-5766-4b07-9d08-179963b99411', 'vt'),
('aa328e51-6a8f-4a06-aecd-6bf6cb856d3e', '由於，因爲', 1, '1', '5c83c1b8-82d3-412b-a0ea-2f55c58a59b4', 'phrase'),
('aa3763d1-cf88-4b09-8193-f68f03942a20', '撞（車）；撞毀，撞壞；墜毀', 1, '1', 'd6e5eebb-4ade-4335-9730-f492bb8bd757', 'vi'),
('aa74bac0-01de-439c-94b4-42320e2c28f0', '否定；拒絕', 5, '1', '6a2f15be-804b-40fe-9550-ab7296e8a8a4', 'noun [ C ]'),
('aa7f0c75-a6ae-41e1-99ee-a872bfffd1ab', '人口（population的縮寫）', 1, '1', '6640182a-cadb-4051-8767-322bb5893f5f', ''),
('aad58a04-0e36-4264-8722-42436b54ac9f', '排水管，下水道', 1, '1', 'a26babce-2d4f-47ce-9979-aedfa6d747b3', 'n[C]'),
('ab1eb7f4-d347-490f-b815-a100361592a5', '值得擁有的；渴望獲得的，令人嚮往的', 1, '1', 'd5abb954-c360-4fe9-8c17-3209590d1002', 'adj'),
('abc24413-1af5-462a-ac68-1a4bf816870a', '向…的方向，沿…的方向', 16, '1', '76cf9850-9905-4cae-ab47-b0087aa291ab', 'adverb'),
('aca16b3b-92eb-43df-bb40-74e3c0f4400b', '香蕉', 1, '1', 'b67ad8cf-0407-4d1b-a53c-a4d1d7c5efd7', 'noun [ C or U ]'),
('acd6ada4-0d46-4d82-a763-2e863a215a81', '（尤指強烈地）渴望，希望，想要', 1, '1', '0baccf97-ecb5-4f21-af55-94e9cd4f6e27', 'v'),
('ad7c3cb4-8ff6-4d50-a353-89a81c47dc0f', '（引起別人注意的招呼語）', 3, '1', '61e66cb3-76d0-434c-886a-7d6973a3fd77', 'exclamation, noun'),
('ada02d37-f93f-4eae-b249-7a0c3e4213ef', '（體格）檢查；化驗', 2, '1', '7f698c34-2328-4be6-80b9-290085a63b8f', 'noun [ C ]'),
('ae3d2b5d-1a40-4069-bfd4-607759795708', '（使）急速行進；（使）趕緊；（使）倉促行事；（使）急速做', 1, '1', 'ccd5f360-bd8e-4eb7-9e52-9db02197b759', 'vi'),
('ae63c177-f7d3-4226-bb7c-eebe92cc839c', '傳統的', 1, '1', '8c47ed7f-a27a-4abd-b33c-99530017224d', 'adj'),
('aea55eb4-af92-4bf7-8c53-ffd1bcd9e684', '在一個特定的地方', 3, '1', '0f3727df-adb9-40fa-9910-6a62951f3193', 'preposition'),
('af3585db-e4da-4481-9a86-6f9192839396', '大量製造', 1, '1', '7e0440cc-cb5e-4cac-9b17-30d8a3c4b42e', 'n[U]'),
('afa7a14d-a149-4622-9be0-1ab5f05733d6', '成功；實現目標；達到目的', 1, '1', '42ef345c-ca0f-43c2-8228-1eddd1db2335', 'v'),
('afda76fd-5eeb-4e43-a789-f5195ed4f704', '字母表', 1, '1', '94964b8a-87e7-41aa-bebd-a410847e0a5f', 'noun'),
('afe1e728-c7fc-4c63-925c-36c552ee0d02', '大西洋', 1, '1', '18ed897a-710b-41f1-a82c-708fce16c01b', NULL),
('b048d0fe-32f0-4ce9-b3dd-b63dea578c8c', '（板球，橄欖球等的）國際錦標賽（同 test match）', 5, '1', '15763a60-0769-4b86-8c19-31a6c829f6e0', 'noun [ C ]'),
('b097c93d-aee8-483e-8c45-15593ad38d56', '有機的，不使用化肥的', 1, '1', '9bc7120b-e5d0-412b-b33c-05444b4e5ccb', 'adj'),
('b0d50677-5b67-4e29-9a64-29f01d408a63', '碾碎，磨碎，把…磨成粉', 1, '1', '3d533718-13ae-4755-964a-6225442a4ad2', 'v'),
('b0f0cf2f-1ef5-4482-bb64-958ba6bc05cc', '精確的；確切的；正確的', 1, '1', '3f787edd-293c-4240-9f5e-21704706c683', 'adj'),
('b1cb26ba-e83d-4511-b711-1c5ea6414bb4', '如願以償', 13, '1', '76cf9850-9905-4cae-ab47-b0087aa291ab', 'noun'),
('b1ccc700-9d1b-42e5-8241-285fd6e9c92a', '學會做（尤指不那麽簡單明瞭的事）', 6, '1', '62e7acec-d568-4b16-9a7b-904dfeee19b9', 'noun'),
('b2049ed2-7327-4808-92cb-4a04fc1d0079', '幸福的，滿意的，快樂的', 1, '1', 'ada50327-c540-427d-b074-456e3206a73c', 'adjective'),
('b208c86a-c3c6-4d5b-8436-cae0fe932705', '合法的，符合法律的', 2, '1', '5f70941b-a363-476a-aaa4-283a228f700c', 'adj'),
('b222e6ee-a820-40c2-b8d5-fb5d293ac782', '影響', 1, '1', 'dcdcae73-9c78-4372-bd8e-3a4c6eecda7e', 'vt'),
('b242721f-6100-4b33-af03-7ddb8a9985bd', '（在網路社群上）加讚', 2, '1', 'c34dcc8c-f1da-4287-afe0-adbfffbd8e8c', 'verb [ T ]'),
('b2915278-a556-4d48-bf46-52fa89d4616b', '措施，方法', 11, '1', '76cf9850-9905-4cae-ab47-b0087aa291ab', 'noun'),
('b2f87264-e601-4cba-b0f5-fabecfc78fad', '令人滿意的；可以的；不錯的', 6, '1', '3ff85da5-82a5-4a28-bacf-31d83535121a', 'adjective'),
('b341b4e0-240c-4a2d-a68a-e35f8d40b70a', '不理睬，忽視', 1, '1', '4be9a648-acd6-4704-812f-ba7fa19708d3', 'vt'),
('b34a17c3-fb8a-406f-bf76-a31971764342', '（使）發展；（使）發育；（使）成長', 1, '1', '43986bc4-314a-4933-99e6-32c009077972', 'v'),
('b36f5d04-4ea0-47b7-af7a-71980c7339a4', '蛙，青蛙', 1, '1', '5aa39d91-c34a-490e-8a09-507163e6e690', 'noun [ C ]'),
('b384a4cb-30c0-49e6-ad86-8240690ceefa', '算，計算', 1, '1', '3f799330-992e-46b1-aa67-f425557cecfe', 'vt'),
('b6856e05-12e1-4fc9-99b5-f3bbb26e64a4', '如果不是', 4, '1', '421ce747-f0d7-42d7-a0ea-e5d6378ec1fa', 'adverb'),
('b6a4855d-bca9-4e31-85a0-2747593f8364', '法律的，法律上的，法律方面的', 1, '1', '5f70941b-a363-476a-aaa4-283a228f700c', 'adj'),
('b6d2b628-0ead-4832-aea0-ce4fe9bb1db4', '腳步聲；腳步', 1, '1', '296e2c98-44ca-4676-8428-5ddf38ca866d', 'n'),
('b73b2381-2631-4c08-8baf-6b41a49931c1', '方式，方法；樣式；方面', 8, '1', '76cf9850-9905-4cae-ab47-b0087aa291ab', 'noun'),
('b76e206b-f4f3-4abe-b585-03184d2595e7', '專業領域；範圍；田地；牧場', 1, '1', 'f53fcbd4-0f28-41dd-a314-e56074726e4e', 'n[C]'),
('b7b53268-9775-4ecb-a6a6-ae933a6bdc55', '代替；取代；接替；替換', 1, '1', '3729fd29-95f0-48a9-9994-5fb395013cc8', 'vt'),
('b865efce-68e3-410f-b8d0-7c75ed4298ff', '（用於引出句子，尤用於動詞 be，seem 和 appear 前）', 1, '1', '7fb2151d-737d-4773-9e18-1dfc30d996a4', 'adverb'),
('b87a2174-545a-4774-9d08-b440da291b18', '熱心的；熱情的；熱衷的', 1, '1', '299e55eb-1fa3-49b8-b762-b29f1bc1c625', 'adj'),
('b8d23b72-7120-440e-9044-29a0cc59d0cb', '考驗', 8, '1', '7f698c34-2328-4be6-80b9-290085a63b8f', 'verb [ T ]'),
('b8d36c30-182a-4647-88dc-1e80db44c699', '偶然發現；碰見；無意中發現', 1, '1', 'd796ec11-ea9c-445d-9e05-6d4af2890808', 'phrase'),
('b8f3751d-14da-4586-84b0-f7676c79a735', '污染', 1, '1', 'd0bc3ea9-dcfc-4e34-b11a-9d817f5eed98', 'vt'),
('b96f7c8d-a2a7-442b-af23-49ed2d0a3d9b', '蘋果', 1, '1', 'df063e85-e56c-4b8c-9af4-f0ad3d3ed61d', 'noun [ C or U ]'),
('b980ae8c-bd4a-4fa8-9456-320ae861732b', '內疚，愧疚，自責', 1, '1', '4e0fb432-71fe-471d-a6a9-f2a123132ec4', 'n'),
('b985f57b-e6a8-4a05-9bac-b3a56d746df2', '（表示驚訝）', 5, '1', '61e66cb3-76d0-434c-886a-7d6973a3fd77', 'exclamation, noun'),
('b9881960-834d-4e8c-b605-0be965cb8698', '很好；還不錯；還算滿意', 8, '1', '3ff85da5-82a5-4a28-bacf-31d83535121a', 'adverb'),
('b990a616-1c31-4e46-93d6-8631fa4d89ce', '一貫的；堅持的；一致的', 1, '1', 'a80fb459-2576-4d44-86c2-cf7488ade6d5', 'adj'),
('bad92f6d-badd-43d0-91ff-f330ecf8e726', '流行的（許多人欣賞且容易理解的）', 1, '1', 'e0b05099-5cd2-4d2e-ba2e-db2544a95f5d', 'adjective [ before noun ]'),
('bb3e6d97-bec8-4fa5-baec-777e299a2289', '包含；容納', 1, '1', '2ff08d12-07e0-4877-bc2f-28f209efa342', 'vt'),
('bc2bb71f-3393-4696-b725-c229269e69ed', '滿意的；滿足的；知足的', 1, '1', 'a034b171-727e-427f-857a-7015e45c1e0e', 'adj'),
('bc31b9a5-90cc-47d9-8d65-39b8badb456d', '宣傳；推銷', 1, '1', '9534752e-83d0-4167-be0d-c27e2f07d630', 'noun'),
('bc5dfe11-10c4-4445-aa3e-623a37227896', '（某人）來了；（某事）開始了', 3, '1', 'e762c29a-181f-4221-93a4-a8ed37ea7798', 'adverb'),
('bc662686-0e08-4992-ac77-64655b6b34c0', '試驗；檢驗；試用；檢測', 6, '1', '639d64c0-73c9-4800-afb0-a9addbbffdc6', 'verb [ T ]'),
('bca6f967-025e-4e7e-95e4-dae137de7d74', '瓶裝水', 1, '1', '2a05a877-98e7-42d6-9d7b-df4e857e7058', 'n[U]'),
('bd1e06b3-27e5-421f-a3f5-04176713af2e', '蘋果', 1, '1', '2a2aa180-a2b8-4a9f-9ee0-a8c1148a5d4f', 'noun [ C or U ]'),
('bd28bafb-5a6f-4553-817d-584fb1219004', '偶然地，意外地', 1, '1', '1d7f628a-8656-4c53-9ad4-061990439eba', NULL),
('be15f527-d24e-483b-9b12-d45cb66cbc66', '（使）平靜；（使）冷靜；（使）鎮靜', 1, '1', 'cfa3e379-e86e-4f20-a00d-73cccf25425f', 'phrase'),
('bf119f1c-aea2-467c-9fbf-27c51c99c7ef', '改變主意，改變決定', 1, '1', '28986c11-e8eb-4723-8e9b-c8fd9fb2f978', 'phrase'),
('bf11c8cc-2c26-4faa-9e31-0f45ae56928e', '水', 1, '1', '0eacba66-c67b-4a65-974d-c62fb305b564', 'noun'),
('bf230d73-982a-498e-8798-ef6cd4da3c58', '（情況）幸運的', 1, '1', '738a956f-1ae4-4085-b23c-e100a6ead87a', 'adjective'),
('bf38847d-89c2-4f3a-ba90-bf17445167e1', '停留，留下；保持不變，仍然是', 1, '1', 'ee917d19-8053-4623-9133-bd61e8398788', 'v'),
('bf4bfc2d-d88b-4f26-bed3-ac89cc520c8b', '演出，表演', 1, '1', 'c4b255d7-b6e3-4874-b4f9-2ab5146a4a92', 'vt'),
('bf612555-d34c-493e-ab1c-1ab625d53db0', '百分之...（符號為%）', 1, '1', '141f2725-dedc-4b36-a440-8ce944a2f9ef', 'n[C]'),
('bfa90797-5502-4ae8-abeb-e4c39b4ce5b5', '（情況）突然好轉；（機會）突然出現', 1, '1', '3bf3ed29-bca1-4c3c-b878-9d302876506b', 'v'),
('bfce9794-0757-49ff-afcc-c9de1e2c503b', '象徵；表示', 1, '1', '92a94222-a0a2-4270-822f-71be6e932384', 'vt'),
('c033ad5e-0fb7-4f41-b7eb-230a0d63c445', '推，推動', 1, '1', 'c752b8ad-72ad-4213-a6d4-42017f38cfd6', 'verb'),
('c0946a72-c3b1-44d9-a971-163b7aed88a6', '迅速地拿；快速地放', 1, '1', 'dc1622c5-a9a3-40ef-97c5-a1c38a648b33', 'verb'),
('c098fddb-94dd-4ded-a571-f3c0db444755', '支持；贊成；擁護；鼓勵', 1, '1', '7ce1f6ae-2f40-4568-9a8c-b7544deafcb6', 'n[U]'),
('c0bbbeb1-8a30-40c6-876e-89ce144d5bee', '行為方式，舉止', 10, '1', '76cf9850-9905-4cae-ab47-b0087aa291ab', 'noun'),
('c0c7bf3f-9293-4e4b-950b-f4cd74479c43', '毀壞，摧毀，毀滅', 1, '1', '40f7d1ca-9be5-4b44-a308-fa07b23aa7ef', NULL),
('c1e1512f-7f59-41d9-a2d8-9194ecd3481a', '（某物面對的）方向', 3, '1', '76cf9850-9905-4cae-ab47-b0087aa291ab', 'noun'),
('c1f89c63-460e-4aae-8720-b5baaa04951d', '距離；一段時間', 7, '1', '76cf9850-9905-4cae-ab47-b0087aa291ab', 'noun'),
('c21f3635-5766-4535-953e-2355ad3a7011', '短期內', 1, '1', '428f404a-8a4e-4b29-83eb-83e257d98175', NULL),
('c221f6f5-1ed6-4ca9-93f1-671e25af9f5e', '有影響力的', 1, '1', 'd7875b88-9a86-4707-9ea9-276f62c8db75', 'adj'),
('c2aa25d7-d8a3-4bec-b0ea-1422604d8237', '檢查（身體）', 4, '1', '544cc13f-8af3-4e1c-9bc1-28eb3ecfe8e2', 'verb [ T ]'),
('c2cd2c08-39c4-45d1-8d65-1be79ad063be', '而且；此外', 1, '1', '544e6139-24cf-4b39-812b-d28b53a15dd2', 'adv'),
('c2e13585-25d6-4818-97c1-4538c93a3926', '令人驚詫的，驚人的；令人驚喜的', 1, '1', '08388ebd-c9ab-4f60-b3f8-b361993ce7c2', 'adj'),
('c3c3f396-7c44-4547-875a-14f36ad637d7', '（用在否定句末表示相反的意思）', 5, '1', '1a755259-c123-4c0f-a126-1353d2a3168b', 'determiner'),
('c420eb83-bd42-4ffa-a888-84e4c09cbfac', '檢驗；考驗', 4, '1', '4481c518-f8cd-4e11-a0d6-5f70d1b5ff91', 'noun [ C ]'),
('c46c8f6a-cfed-4192-b57e-b5770ac7b473', '往那裡；在那裡；到那裡', 1, '1', '994af216-7489-40ca-a1d7-6c8f9c5726ab', 'adverb'),
('c47c5661-378b-4f3e-b370-38ca27823838', '殖民地', 1, '1', 'faa55226-0693-4884-8555-764dce61baa8', 'n'),
('c5359520-0412-40ae-a151-d9e8c5522875', '由…發展而成，源於', 1, '1', 'bf29bddc-f349-4cd1-a3b5-37bd67fa93b0', 'phrase'),
('c650712a-21fb-4610-8469-43ff84bd488e', '（尤指首次）發現（的過程）；被發現的事物', 1, '1', 'e6424385-527b-4bac-9c88-478bfab904ab', 'n'),
('c7110050-8cc9-4f4c-9c62-92aad94936e8', '一百年', 1, '1', 'c9e31566-cdba-45a3-b52c-e92a86abf0da', 'n'),
('c855a7f4-57c6-49c0-b4f0-5b71f1668587', '路線；路途；航線', 1, '1', 'b10591c9-f395-48fe-9aee-2fddae102f06', 'n[C]'),
('c8fccf86-e0f5-41ae-ad8a-e59b9b3e7d87', '試驗；檢驗；試用；檢測', 6, '1', '7f698c34-2328-4be6-80b9-290085a63b8f', 'verb [ T ]'),
('c9f32a67-c715-4635-9348-cfc451d7b470', '結果；後果', 1, '1', 'f719071d-a1d5-4a4e-bcbe-e67d411cd4a5', 'n'),
('ca96340d-f970-4315-8662-4f18ffd0a238', '試驗', 3, '1', '639d64c0-73c9-4800-afb0-a9addbbffdc6', 'noun [ C ]'),
('ca9b712e-a477-4170-a7f9-2e470b26514b', '同意，接受；批准', 9, '1', '3ff85da5-82a5-4a28-bacf-31d83535121a', 'verb [ T ]'),
('cb170282-5c57-4b0f-b0cc-d528e4f9e566', '牢固的；穩固的', 1, '1', 'a1a905c0-eb87-4d81-8bb1-707eb99b2047', 'adj'),
('cb4d22ca-46e3-4923-b10d-e865e25e5df6', '節食，限制飲食', 1, '1', '5386c013-183e-46a6-a241-f1c480b53d9c', 'n'),
('cb6e834b-f53b-4dc5-8c93-1dc576dbffb3', '到那裡', 2, '1', '994af216-7489-40ca-a1d7-6c8f9c5726ab', 'adverb'),
('cbf15860-5871-47c9-a33a-5c1a92fb46b8', '毀滅，消滅，破壞', 1, '1', '927a693f-0747-49ca-af82-83d8214f61a7', 'n'),
('cc462482-a4c4-44c6-83f9-1138d0ceb773', '丟棄；錯過（機會）', 1, '1', 'c5c05075-58c6-4914-8788-70e6c578df7f', NULL),
('cca275b5-8c26-4312-a527-5c4ec777ef42', '（尤指從封閉的空間）爆開，彈出來', 1, '1', '9ffe7a08-c46b-4ad9-b96a-99ff2914532c', 'verb'),
('cccf35f5-2026-40ef-916d-6b6baee090f3', '\"The following day', 1, '1', 'c94a3326-4234-4a6d-a6cc-fedde8414920', 'adj'),
('ccf97870-55a7-4543-be93-7cac6452a13d', '（打電話時的招呼語）你好，喂', 2, '1', '8e0ac9ef-1a82-40d7-ae88-038dc4439669', 'exclamation, noun'),
('cd0b042f-aaa2-4e2e-aca3-8dbb35e6753e', '保護；受保護', 1, '1', '27a097d9-70b6-4efb-a298-7a4206f03dc8', 'n'),
('cd2f3e9e-ab9a-48da-90e7-eb658bf58d0b', '天然的，非人為的；非人造的', 1, '1', '9259b2eb-f191-4dfc-89c3-c6cb7e37f73a', 'adj'),
('cd49660f-a321-4bb2-84d7-3697c7d58fbc', '資訊豐富的；增長見聞的', 1, '1', '82f179fc-b618-4a9c-a7ca-d0be6acf0814', 'adj'),
('cda1a26c-76e2-4a5e-b904-2bc27218428e', '（板球，橄欖球等的）國際錦標賽（同 test match）', 5, '1', 'f8a76289-7428-4fad-ad6b-aa5de20d55dc', 'noun [ C ]'),
('ce1a09e7-118e-4590-a2b3-7f1e7410006c', '傷害，損害，危害', 1, '1', '1563c5a3-1d84-4227-8db4-3a9d730da69d', 'n[U]'),
('cf622dcf-422f-42c2-b192-4c2a8c5c1c31', '相信；信心；信任', 1, '1', 'f06db259-1f91-44aa-98a1-483ed5413131', 'n'),
('cf8a6bc8-7c6c-4e01-8065-223f3a1f8051', '不過，仍然；儘管如此', 1, '1', '0084be1a-1c11-4c8e-a9a6-72aaf3a1df4c', 'adv'),
('d0ca2c31-12c9-4d7f-8f05-34b02a41c83c', '檢驗；考驗', 4, '1', 'fb99f1e9-cfc4-43ad-8477-0eacf5b0ae7a', 'noun [ C ]'),
('d0df6ec3-fe1c-4b36-80c7-bd83f97b6f88', '足夠的，充足的', 1, '1', '5150014f-83b2-407e-b485-086cff1e62fd', 'adj'),
('d0f8d321-b386-4826-bf07-7e14909f4a00', '過度使用；使用…太多；濫用', 1, '1', '3fd54f0f-42ce-4723-9084-f687e61cdf10', 'n[U]'),
('d0ff1ef6-6934-4827-9ff1-ada1765d98d9', '化學的；化學製品的', 1, '1', '5ca3c78f-b539-41b4-b6fc-fc3997268356', 'adj'),
('d12c1856-36e8-4ee3-b7f0-f90fcf971305', '試驗；檢驗；試用；檢測', 1, '1', 'd635320a-b27f-4fee-8fa1-41bb269e9045', 'verb [ T ]'),
('d14413f6-dc85-4c32-bc88-7c221b163bb1', '測驗，測試；考查；考試', 7, '1', '7f698c34-2328-4be6-80b9-290085a63b8f', 'verb [ T ]'),
('d17c3ac5-95dc-46f2-a172-1ff780ba6336', '（尤指需要特殊訓練或專業技能的）職業', 1, '1', 'cfdc5623-3218-4330-a9a6-01bead38f625', 'n[C]'),
('d1b7066a-b5b5-4971-b561-50850a538ad8', '英國的；英國人的', 1, '1', 'dafc778b-07f7-4ee8-9c23-ebfb28086363', 'adj'),
('d21df3f6-04e6-446e-8268-6bb90cc470db', '（人際或團體之間的）關係，聯繫，交往', 1, '1', '7528233b-48ac-4e66-b626-410196547156', 'n'),
('d23db478-e1a2-4b07-b88a-be762e35166f', '價值；價格', 1, '1', '037f5386-6fb9-468a-b9c5-a2180dc51a62', 'n'),
('d25f9384-ae75-4414-ad88-33b2782c4d2c', '（用於 be，can，have，will，must 等動詞後構成否定表達，在口語中常簡略為n\'t）不', 1, '1', '421ce747-f0d7-42d7-a0ea-e5d6378ec1fa', 'adverb'),
('d2738f47-6459-4ea5-8eb3-e33200807fc8', '檢查（身體）', 4, '1', 'f96467c0-8f60-4a7e-9164-5b74147f8a39', 'verb [ T ]'),
('d30d5bc5-2800-4fe3-94ce-4fd973f12cd2', '找到聯繫；證明…有聯繫', 1, '1', '0c2a73b4-1133-4c5a-b8a2-c1ad33ffacef', 'v'),
('d3268a83-d21c-4c79-9444-bf7321f45d5e', '增加；添加', 4, '1', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'noun'),
('d387127c-a79e-47a9-b41a-e5b48c78ef45', '（用於特殊日子的祝福）…快樂', 1, '1', 'ad21cc06-0ee5-4f2b-a7cf-8a608d06114a', 'adjective'),
('d3917b36-5202-4d25-826c-d725dd6f470a', '（尤指從各方面）擠壓，捏，擠，榨', 1, '1', 'f4955313-f6f9-4d26-ac54-f0d7261604e3', 'v'),
('d39a2f7e-cc27-4a42-8187-f79bc4af6129', '合乎邏輯的，合理的', 1, '1', '0f855308-64da-4af2-a12f-c328764e8fe4', 'adj'),
('d4108515-de06-495e-83da-f926df2e14c9', '絞死，施以絞刑', 3, '1', '62e7acec-d568-4b16-9a7b-904dfeee19b9', 'verb'),
('d43e1d0c-95ae-4dc8-80a8-1a2021e23eca', '把A誤認為B', 1, '1', '2198fb72-9fac-4e29-9d1e-3ef371bde9ee', NULL),
('d4ba3b0b-e456-4a62-9f82-fc63b9a2f977', '豐富，充足，大量', 1, '1', 'b09103c9-031a-40d1-8a86-f9761ccab62f', 'pron'),
('d4f428ff-1085-4c57-9e6a-8ab3a8f20eb6', '（用抹布等）擦掉（液體）', 1, '1', 'd45047e8-33d7-4eac-81ed-74961bb899f3', 'v'),
('d55f41eb-1c55-4ffe-a58e-01326913b8a1', '普通的；平常的；通常的', 1, '1', '4a7dcf94-5b1b-4950-802d-b4e653bd1187', 'adj'),
('d5c2487f-a32d-4b7f-bc31-4a7dd2df26e0', '救援；營救；解救', 1, '1', 'dde2a6db-920f-4544-9ebc-1095c2adc6c7', 'n[U]'),
('d5ccd159-009a-4272-90c9-a099506ca030', '改進，改善', 1, '1', 'c37727b7-58fe-4891-803e-d2e514e0802d', 'n'),
('d5f2fcc0-f551-44a4-9e42-cd9578a7a669', '創造者；創建者；創作者', 1, '1', 'ec108045-4e74-4315-8721-989b7fdf8262', 'n'),
('d61abf77-1494-4963-a8cf-394a40d24c69', '疲憊，勞累', 1, '1', '403c62b6-5fca-4695-8c05-91870c980486', 'n[U]'),
('d66f5043-de38-4bbd-b5ba-72f5e72f714f', '蘋果', 1, '1', 'ce9c5d0a-466e-4d9e-adb5-55e3b4e76c34', 'noun [ C or U ]'),
('d69b15fa-2f87-4a63-90b3-085443157941', '混淆；把…弄錯', 1, '1', '483ff135-9647-49a8-ae76-704601164e89', 'phrase'),
('d6af9c02-c65f-40b9-8126-bdacb42fd9ec', '引人注目的，搶眼的，惹人注意的', 1, '1', 'e9f7c56c-6332-4a7b-a89a-9b226e249dc9', 'adj'),
('d7ddb950-5411-40ec-89d0-aa77e529ad41', '謀殺，殺害', 1, '1', 'cdba20c7-8512-48f9-b6db-524d78281dac', 'v'),
('d8c6d0aa-6195-4a33-a261-ec3d69d9b595', '（雜誌或書的）目錄', 2, '1', 'b6f8eb1b-5563-466c-a23e-9777ade5c3d2', 'n'),
('d9355ee7-e620-4e58-a757-743e77235dce', '（用於句中起停頓作用）', 4, '1', '3ff85da5-82a5-4a28-bacf-31d83535121a', 'exclamation'),
('d970dcb5-e137-4cf2-bc3a-a5935a0bb1cd', '迅速地打開；迅速地放開', 1, '1', 'caf71e19-ea1d-4c73-a363-9557e2829b97', 'verb'),
('d98fc93c-f0b1-416a-8916-ba9719b97d92', '常規的', 1, '1', 'd06bfd00-142f-4f76-b692-5179228dd789', 'adj'),
('d9a4f433-906a-450c-a1a7-7cbbc247e837', '高於', 4, '1', 'f4adf6d0-14e0-4a01-b70f-8b323fd6d8b3', 'adverb, preposition'),
('d9ab5c0b-c443-47e5-a9ee-da707fb0c887', '水域；大片的水', 2, '1', '0eacba66-c67b-4a65-974d-c62fb305b564', 'noun'),
('da10838a-87e3-41f1-ac74-8bfecc0b106e', '（因特殊、重要或巨大而）給人留下深刻印象的', 1, '1', '42ae1b35-094e-4b5f-83ed-d4315f9c40aa', 'adj'),
('da74efac-3245-47a6-89ec-2279c197358c', '測驗，考查', 1, '1', '4481c518-f8cd-4e11-a0d6-5f70d1b5ff91', 'noun [ C ]'),
('db55c44c-e726-4174-987d-9c900fb9f4bc', '（動植物）原產於（某地）的，土生的', 2, '1', '59dce32d-81f7-4db4-83a6-6e0d98de95d9', 'adj'),
('db66ad19-331f-4f91-8cb3-7cc2fe7e9991', '在這裡；到這裡', 1, '1', 'e762c29a-181f-4221-93a4-a8ed37ea7798', 'adverb'),
('dbdbabfc-9d9b-4172-9ae0-877995ec0bad', '（炎熱的亞洲國家的）季風季節，雨季', 1, '1', 'a472db24-7634-48ce-bb75-18eb45c03057', 'n'),
('dc0fdf86-acac-4c55-a7b1-e0e886a851cb', '勉強的；不情願的', 1, '1', 'bad30f13-a3b6-45f8-b0c7-0f852aa8e42d', 'adj'),
('dc771726-1b5d-4c8b-9d4a-7f5d17f8c9eb', '（食物或飲料的）風味；（某種）味道', 1, '1', '63e716bd-a8d9-4ac9-b035-c4d717333d14', 'n'),
('dcd4a36b-c3c4-4b65-9cef-8e74e4787b48', '英雄', 1, '1', '22e7794f-5d13-42a1-92c8-00e112ac7c8f', 'n'),
('dcde1e56-adff-4c40-b633-983bfe2630bd', '等等，之類', 2, '1', 'd7955188-5328-4c6f-a0c4-ff19a8f08d77', 'noun'),
('dd524dc3-b4b8-4a8b-b877-c4fb3009f165', '殺人犯，兇手', 1, '1', '469eb040-2fcc-4a2c-8320-a3f3d5098fc9', 'n'),
('dd7c4de8-edae-4f89-96e2-b9ce9e586ec2', '彎下，垂下', 5, '1', '62e7acec-d568-4b16-9a7b-904dfeee19b9', 'verb'),
('dd8b6a7b-ab28-40c2-919f-a437f6f17beb', '停留，懸浮（在空氣中）', 4, '1', '62e7acec-d568-4b16-9a7b-904dfeee19b9', 'verb'),
('ddb97c0f-214c-475e-8aa6-a38659708348', '流口水', 1, '1', '2725b4da-fa8b-4c35-be3c-e7b72b9ebb28', 'verb'),
('dde047aa-a514-4803-9f74-cfd8867e9089', '彎下，垂下', 1, '1', 'e67cf523-f12d-4308-a73f-e90457852223', 'verb'),
('de33ee6e-891f-4d0b-934c-2d48eb630503', '裝飾，裝扮，打扮', 1, '1', '95ec26b8-4ea2-429f-b5b2-c22f9de50b52', 'vt'),
('de3fb1a0-ecd4-438b-9016-257ac2a07aec', '迅速衝過；飛速通過', 1, '1', 'f6b28411-fd15-4d03-a870-20ea2f2c21bc', 'vi'),
('deb3ce43-6eb6-4a84-92b3-0dbfff69aa7b', '職業的；專業的', 1, '1', 'a065c461-04a8-4f0a-b844-c8905365da90', 'adj'),
('df4c8b1a-b8d9-4c59-8937-28eb7eea458e', '標示；表明；顯示；暗示；象徵', 1, '1', 'cf08f3db-ec0c-4218-9add-8cae6e674e66', 'n'),
('df708339-4be6-4598-99fe-4b4d19b57a77', '擔心；憂慮；掛念；憂慮的事情', 1, '1', '284845ba-cb4f-45d4-a051-20995d7cdb6c', 'n'),
('df7838a7-418e-470d-8374-01d12b646c5c', '色彩鮮艷的；艷麗的；五顏六色的', 1, '1', '494535c7-27ea-41ac-bb73-3afde375d231', 'adj'),
('df828fd5-545e-4f41-a654-67500524648e', '負責…；掌管…', 1, '1', '95a41292-bee0-4d8e-b8d8-9f4f0cc9c5d2', 'adj'),
('df82cc3b-a83a-4aac-8cad-ec99d4a10409', '平日', 1, '1', 'd246a3ad-4463-408b-b21a-cb64b2991b56', 'n'),
('dfe6ea45-da24-4398-baa4-a39ded0121ca', '（使）挨餓；（使）餓死', 1, '1', '6d44c10f-d1ca-4bd4-a789-237cfad33a4a', 'vi'),
('e0026bf3-b1e5-4fd8-8c69-861517e8e825', '（應對困難而需要的）掙扎；努力，奮鬥', 1, '1', '5a0cf89f-0492-420b-89c7-213c7f559ddd', 'n[C]'),
('e0183713-7d60-4ac0-9d2f-660460363c4f', '責任；義務', 1, '1', '0ff5cd08-3b3a-450a-b144-14955cc557b7', 'n'),
('e05c2edb-2636-49bd-8a14-6071ff1e3f4f', '專家', 1, '1', '8f2054ac-180b-4bbc-890a-f880c5db2d0e', 'n[C]'),
('e0790b28-297e-4f06-8cd8-c44aa1ee5686', '一方面…，另一方面…', 1, '1', 'f02b38bb-9354-484f-997d-8cc23a21ea5d', NULL),
('e11e66d5-ac1c-4ee1-bb30-83c823c3769a', '活（著）的；在世的', 1, '1', '2edd7785-555b-4d59-a25e-cf80127d2b06', 'adj'),
('e18ecae5-bc4a-4ef7-85ab-56872bc5c1a2', '獎；獎項；獎金；獎品', 1, '1', 'a8714ef5-d03f-4bca-b83c-db05e756927f', 'n'),
('e1e05f26-dcf9-4af8-b4d3-b0cbe41dd317', '（體格）檢查；化驗', 2, '1', 'fb99f1e9-cfc4-43ad-8477-0eacf5b0ae7a', 'noun [ C ]'),
('e20663c0-9109-4bf2-a8e0-da0acf354a50', '可怕的，令人震驚的', 1, '1', '3e6503cb-2664-4f49-a118-a0b04e850b77', 'adj'),
('e2329603-3fec-4137-9f85-2805e38f3a4a', '逼迫；催逼；促使', 1, '1', '9a265787-bd97-4997-9621-f57ffec9f81a', 'verb'),
('e2385d7a-3ab5-447e-b335-78c1e6983e70', '(為做某事)付出代價', 1, '1', '3eef41f7-5faa-4608-b25e-a0d68283f3db', NULL),
('e245f088-6457-48d2-85d3-7706fb77e4f9', '擴建部分', 5, '1', '0894ae7d-3952-44f4-b8e7-a85fae324ccd', 'noun'),
('e25ae449-45a0-4641-ae3b-e4dacdf37c08', NULL, 1, '1', 'bca21bbb-364b-4c0e-8d50-483bd5948f5a', 'phrase'),
('e294cbf4-42f2-49e1-bee4-d43ba5d5bac5', '證據；證物；證明', 1, '1', '88d60bdf-09fe-4bfe-baff-107e21f8bbce', 'n'),
('e2cdae6b-1999-45a1-a6aa-4991941e2b5d', '疾病', 1, '1', 'ee55a54b-fe2c-4539-8d1c-20297f05045a', 'n[U]'),
('e38d3b6b-209b-42da-85d7-c5250aaed68c', '成長，發育；發展', 1, '1', '372e4526-b968-4a42-9bcc-528cd306cee9', 'n'),
('e3cf8c79-7b56-4609-8ff9-e7dd41349f20', '悲劇性事件，災難，不幸', 1, '1', 'a38a1a08-6014-4d41-adb1-ecd2427a86ed', 'n'),
('e438641e-7db4-4931-9188-e756709c10b0', '（某一湖泊、河流或海洋的）水域', 5, '1', '0eacba66-c67b-4a65-974d-c62fb305b564', 'noun'),
('e449d810-44e6-47a8-8db9-faaf9be4ba9a', '（用於否定其後的單詞或詞組）不，沒有', 2, '1', '421ce747-f0d7-42d7-a0ea-e5d6378ec1fa', 'adverb'),
('e493402c-22bc-4a3a-b2f0-66366bec0cb9', '運送，遞送，投遞', 1, '1', '54eb2881-5025-4067-a668-f987adc56343', 'vt'),
('e4ad044b-49c0-4186-92bb-711174c51888', '（尤指流行歌曲的）歌詞', 1, '1', 'bb234d21-87df-446d-ab99-eb52d8796b7e', 'n'),
('e4e4b8df-1e69-4e1c-acb4-e016ca3ab6b9', '（為迎接貴賓而鋪的）紅地毯；隆重歡迎（或接待）', 1, '1', 'af09ecec-e136-4f94-8b2f-2f4d32eaf54e', 'n'),
('e580f855-836d-448e-9f83-181ac98d9ee1', '內行，專家', 1, '1', '497187b1-1d24-482b-8f9f-f165be335c20', 'n[C]'),
('e5e12715-d238-4869-9db8-91ff5748f365', '除…之外還', 1, '1', '96594cea-148f-48c3-88f8-55fae4ca1ec4', NULL),
('e64cc6c5-83ef-479c-874b-267b6de9a942', '家庭的，家用的', 1, '1', 'e486aa78-0a7f-4d40-9802-b72293bb364c', 'adj'),
('e679cf9a-9a83-4422-9fdd-c2bf822fb89a', '…之類', 1, '1', 'd7955188-5328-4c6f-a0c4-ff19a8f08d77', 'noun'),
('e68f4b9b-ce6c-4714-9ba7-d560fd8f4dab', '通道，道路', 12, '1', '76cf9850-9905-4cae-ab47-b0087aa291ab', 'noun'),
('e741afa0-8f65-4633-b025-a2b05b25db75', '貓科動物', 2, '1', '8dea43f6-d21c-4acf-a6af-6e68aa8bd119', 'noun [ C ]'),
('e75a719a-3329-4cf9-b8e5-724e310d0a2c', '佔領；攻取；征服；擊敗', 1, '1', '3d515849-1082-41ee-a27a-bfcf806b4003', 'v'),
('e79f9ca1-7b31-4b84-9263-2f59aaf03974', '（用於對話中表示停頓或強調形容詞）', 1, '1', '4aac2199-04ab-47ce-8c6a-9d611565df61', 'adverb'),
('e7d7f98d-f3cd-4cf8-b76d-bf1e6770d26d', '公民；市民，城鎮居民', 1, '1', '70b1b14f-b3cc-421e-905e-b8dab72f1cee', 'n[C]'),
('e7ecf7fd-88ae-4fc3-8f4c-0bf0f763991d', '（表示轉到另一個話題）至於，關於', 1, '1', '201cc70d-04ed-4b5f-90b8-d77dcbe69a6f', 'phrase'),
('e7ee4807-ba03-4292-a7e9-1503c49b3fae', '秘訣；訣竅', 1, '1', 'e2578603-f0c5-45b8-9c29-84c8c8bf3af6', 'n'),
('e8b2b0b2-bd62-45b7-8486-82b7bd2bbe09', '消失；失蹤', 1, '1', '11490d6b-11bb-4ae4-9d79-83e9d83dd9b0', 'v'),
('e8b5b3f3-f734-499b-9132-e72d2b26b51d', '突然被想起，記起', 1, '1', 'dcb3ecb1-44eb-4b8f-9c43-97ed6cdf2cb2', NULL),
('e8ca0c0b-a8b0-4819-84f6-73e82f69d1e2', '（透過言語或行動）鼓勵，支援', 1, '1', 'd9bb93b8-f90e-4557-a7a4-c9c123492b0d', 'vt'),
('e91d5fde-aeac-427a-9a79-eb66b9c3cfdf', '精確地；確切地；完全準確地', 1, '1', '2156fcde-a29d-4907-9b4e-cec6af7b220d', 'adv'),
('e95013fe-7f78-47cc-93eb-8c1ea7e7a7a1', '極為不滿的；怨恨的；無法釋懷的', 1, '1', '55de0634-cc03-47a4-acce-250550d17674', 'adj'),
('e9fa651a-4350-4f15-a84c-e3c0ffdbbab9', '聯想，聯想物', 1, '1', '77084070-c90a-4434-83f9-7c01fcbe95b8', 'n'),
('ea45b6cd-42d6-4251-aa0e-9e866238adc2', '相反地，倒過來，以相反方式', 4, '1', '76cf9850-9905-4cae-ab47-b0087aa291ab', 'noun'),
('ea79c56f-943b-4599-8b95-5283235a06a6', '信不信由你', 1, '1', '9b0b0040-e5e6-4a97-babe-789ae24005bc', NULL),
('eb267179-9edb-4afd-a143-6a1440d1a3ef', '如今，現在', 1, '1', '9ac23d7d-dc37-49b5-bcb7-1dc2893ebcec', 'adv'),
('ec08b89f-8a12-4422-ae15-0248a2982456', '體格檢查，健康檢查', 1, '1', '4362a0d2-36b7-44ac-8d85-dddd5fe541b1', 'n'),
('ec2bd0e2-4d17-4381-b5b7-06a44bcb7b73', '蘋果', 1, '1', '3374830f-85cd-4f57-be28-5c795319b9e2', 'noun [ C or U ]'),
('ec5a197d-b28f-4499-b8be-8b829bec7212', '香蕉', 1, '1', 'd90ac36a-f16a-48ea-8005-0e388cc99648', 'noun [ C or U ]'),
('ec88909f-a5f7-4171-a3a7-fbe3c359d153', '標誌，象徵', 1, '1', '0e70a82e-bd14-41af-9d93-ceaa5de7bcc6', 'n'),
('ecec6481-bb0f-40ab-ad5c-a49e9a1540ca', '運輸，運送，輸送', 1, '1', '0120bd3b-76fe-4bbe-bd2e-baee6cbe0188', 'n'),
('ed070648-f172-4801-8de1-2a6f4481a9d4', '組織，機構', 1, '1', 'b0b5ab1c-4e21-4874-aed2-383c37616353', 'n[C]'),
('ed6715c6-01ab-4a57-a6cb-371a2deb37d4', '百分比，百分率，比例', 1, '1', 'ae152a5c-6f1d-4f45-a90c-f9c0982b00fa', 'n[C]'),
('ee204f31-10d4-487d-85d6-728ab1ea47db', 'to remove everything from inside something', 1, '1', 'f9aff2b2-f47c-4c3f-af79-a987a165c160', 'vt'),
('ee971c3b-bd49-488a-aeed-c227223fa1e1', '試驗', 3, '1', '7f698c34-2328-4be6-80b9-290085a63b8f', 'noun [ C ]'),
('eebe941b-4ad4-4026-9bbf-d5d699203efe', '有害的', 1, '1', '12d45269-a633-4f86-90a8-88af7e287eea', 'adj'),
('eef342cb-9425-4b4d-b705-edc2a715649b', '困擾，阻礙', 5, '1', 'ba9856e7-d34d-48b9-9048-b0790736e252', 'verb [ T ]'),
('ef360d46-9c75-4573-ad6b-fd3e5f61482d', '（並非因為難過而）流眼淚', 11, '1', '5ceccf55-9228-41af-8fbd-d9e95f7e8b81', 'verb'),
('ef79b39c-5d27-4580-9a4d-4ccc1de2223d', '（引起別人注意的招呼語）', 3, '1', '8e0ac9ef-1a82-40d7-ae88-038dc4439669', 'exclamation, noun'),
('ef880ac2-15ee-4596-a14c-cb1b8f854dce', '（用於引出句子，尤用於動詞 be，seem 和 appear 前）', 4, '1', '3479eb7b-2c69-4347-beaf-503f96686170', 'adverb'),
('f002ec42-6f0e-48c0-a562-50895f0b8ede', '（引起別人注意的招呼語）', 3, '1', '168baf50-b1a0-4818-bb4f-d7dc0bdece85', 'exclamation, noun'),
('f05872b1-67ff-43e6-a557-e99b2a4ae70e', '生產；製造', 1, '1', '6dd8ce01-7998-469e-91e7-12df0a439f7c', 'n[U]'),
('f08114a1-2bb3-436e-98fd-e68a1c5c0e59', '自願做；無償做；作志願者；主動提出做', 1, '1', 'b926db60-a449-4e47-adfc-1c85c5c90669', 'vi'),
('f196dff8-66ef-4683-a0e0-568d736043f2', '科學的；應用科學方法的', 1, '1', 'd48094f1-3f44-4c37-a53b-53c3c254a7c9', 'adj'),
('f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '多（的），大量（的）', 1, '1', '1a755259-c123-4c0f-a126-1353d2a3168b', 'determiner'),
('f341968e-4e8e-4c74-829b-e094e6241660', '坦白；供認，招認；承認（錯誤或罪行）', 1, '1', '372b778c-64a3-4ffa-9105-debce92467e0', 'vt'),
('f35c7158-0bdb-405a-96ce-ce60b719bf16', '問候；迎接；向…打招呼；對…作出反應', 1, '1', '79f89078-30f4-4ce7-912b-926085c77b4c', 'vt'),
('f393ad03-f791-453b-8306-0bb1fcca2cdf', '（壞的）狀況（或情況）（尤指健康）', 14, '1', '76cf9850-9905-4cae-ab47-b0087aa291ab', 'noun'),
('f4804bbd-49da-4cde-928a-fe29e99ca939', '（尤指當作寵物或用來打獵、看護的）狗，犬', 1, '1', 'ba9856e7-d34d-48b9-9048-b0790736e252', 'noun [ C ]'),
('f4b26db0-34d5-4d39-ae32-c81db2a6be2b', '社區；群體；社團，團體，界', 1, '1', '8061a493-277b-4869-b853-c62e37fa90f6', 'n'),
('f5a4b516-6297-4e00-881e-7ce4fca52ae8', '負責；責任', 1, '1', 'e49e2777-62a7-4afb-96da-657a71bce7b5', 'n[U]'),
('f61a3570-9d6e-41eb-8176-0cf2765f7610', '流行音樂', 1, '1', 'e2b622bb-7bc1-4128-8f4f-e4774f8c9e8f', 'noun'),
('f65d7314-5254-4ea5-a0cf-183bad1b1c34', '實驗室；實驗大樓', 1, '1', 'c280e5fb-49b6-4bc4-8b3b-9e75cba4c717', 'n'),
('f68c53a3-7413-43d4-be08-485c51fa9ce0', '使用，運用，應用', 1, '1', '8f600478-570a-4e28-b6bc-0d9e32159803', 'vt'),
('f6d382b6-8728-4fa7-97f6-929927cd11a7', '符號，代號，記號', 2, '1', '0e70a82e-bd14-41af-9d93-ceaa5de7bcc6', 'n'),
('f7246fed-baff-4b23-9fa1-062925232732', 'after', 1, '1', '0bbb046a-3675-458f-957f-fc7ae5a6ad61', 'vt'),
('f744284e-f19f-4e8d-b4bb-0b43f4d13a06', '可能會做', 1, '1', 'aa565a6f-9f6d-4f05-b5aa-89ac9176f694', 'adjective'),
('f75ab86c-c25c-4f03-ba50-30f6444f989c', '到那裡', 2, '1', '3479eb7b-2c69-4347-beaf-503f96686170', 'adverb'),
('f7a613bb-a8d8-4b40-b17c-f2973b076e88', '罐子，罎子；廣口瓶', 1, '1', 'c4015f64-f365-4238-8b4a-bb7e7960b53a', 'n'),
('f7b2ef59-67e3-4ad2-b0df-990be204a64c', '測驗，測試；考查；考試', 2, '1', 'f96467c0-8f60-4a7e-9164-5b74147f8a39', 'verb [ T ]'),
('f81d0f27-aa1f-410a-ba30-74ba52569599', '探測；勘查；探索；研究', 1, '1', '2f3d9d03-c1f9-4d0a-b60e-66dee29b3822', 'v'),
('f89c53b3-e6b1-43c0-965c-d8b1e36cdaf3', '（帶有敬意）年老的；上了年紀的；年紀較大的', 1, '1', 'e464b0ea-fc54-456e-affd-c56d89aaa616', 'adj'),
('f8fb0143-f22b-446a-888f-81519438e318', '停留，懸浮（在空氣中）', 1, '1', '51fb1a72-47c2-4973-83cc-c2169d33c0a2', 'verb'),
('f8fb6fd1-c99a-4367-98bf-c643cfdffdc9', '把…分類；整理；揀選', 1, '1', '37dce084-cc74-4539-b383-3f3ad8fa4c23', 'v'),
('f9d44f1d-510b-4954-a5b6-358947c66eae', '代表的，象徵的', 1, '1', 'acb6c3f9-9e17-4f06-a5ae-85cd17750cb1', 'adj'),
('f9e66032-7d63-4600-a56f-e7fd7940a78e', '蘋果', 1, '1', 'dbe5ded6-74e2-45bc-aa88-61db3c8dcc62', 'noun [ C or U ]'),
('fa6b3eac-7103-4370-a350-6939d9745187', '（布料製成的東西的）懸掛狀', 7, '1', '62e7acec-d568-4b16-9a7b-904dfeee19b9', 'noun'),
('fbc0df9a-949e-4790-ab0a-806a5920f603', '（用於構成形容詞）', 12, '1', '5ceccf55-9228-41af-8fbd-d9e95f7e8b81', 'suffix'),
('fbee00ac-4c7b-4168-a5bb-2921515c2085', '蘋果', 1, '1', '3d79aa34-1bd5-42e8-a938-9bc21f4c2a46', 'noun [ C or U ]'),
('fc20dcd1-c6c6-460e-aeb0-ff818831f1e9', '情報；資訊；消息', 1, '1', '22f7bc15-6cc5-45bd-b1ca-c345fc407deb', 'n[U]'),
('fc25c275-6a11-4ee1-a59f-37f7739abd44', '空的；無人的', 1, '1', '80f02910-322f-4ee0-8cd7-a86774f0d38e', 'adj'),
('fc5efb48-9bd7-4dcb-bd15-5526e37bf654', '（尤指不情願的）承認；供認；招認', 1, '1', 'e8ebfce5-d115-4ff1-a0e8-c0d8c11ee8ed', 'n[C]'),
('fc9090a4-bf98-48ca-96ae-3cb33eafc7b5', '創造；創建；創作；發明', 1, '1', '5203c54b-3198-4754-af85-a6c103583ed3', 'v'),
('fd5f9fb3-cfb3-4f6b-8fc5-97be8a71b412', '病人', 1, '1', 'cca02a4b-f9cc-4396-b7a7-4a6acc909d0b', 'n'),
('fd6011a0-2871-4a16-a875-0794a908cd5c', '記起，想起', 1, '1', '1dc1f214-d2a9-494e-8690-a7c958880afe', 'phrase'),
('fe1230e5-ae8f-4477-a08c-49a9b42b5e70', '鼓勵，激勵', 1, '1', '4d59530d-6e0d-42ed-8ab8-1e11d9995416', 'n'),
('fe83a97a-d07f-4d0c-9cdd-cd47e6887b84', '在公共場所亂扔垃圾', 1, '1', '1f7c129e-5b6c-40f2-9604-f01cb0ae84cb', 'v'),
('fe975dd5-6080-4bf6-afbe-f7c0b93e3d81', '（用於確認某人是否明白或同意某事）明白嗎？好嗎？', 2, '1', '3ff85da5-82a5-4a28-bacf-31d83535121a', 'exclamation'),
('ff0f4abb-6c30-488d-96ec-b604186e47db', '產品', 1, '1', 'd9d3bb63-8c3d-4cf5-a048-0d2115648f0d', 'n[C]'),
('ff16ea64-15d2-48ea-bd09-12f49858c704', '與...相比較', 1, '1', 'b89373aa-12a2-4d24-92c6-b286b203e6ad', NULL),
('ff6a49d8-0ff3-4b14-8dfd-9defe450ac92', '給你', 6, '1', 'e762c29a-181f-4221-93a4-a8ed37ea7798', 'adverb'),
('ffa6fb7e-b0ff-4206-86b2-f488f08caf78', '社會', 1, '1', 'f42a2df7-1f26-4765-87f8-1da9e08562ad', 'n[U]');

-- --------------------------------------------------------

--
-- 資料表結構 `wordsen`
--

CREATE TABLE `wordsen` (
  `WordSenId` varchar(100) NOT NULL,
  `WordDefId` varchar(100) NOT NULL,
  `ChiSentence` varchar(255) DEFAULT NULL,
  `EngSentence` varchar(255) DEFAULT NULL,
  `Myorder` int(11) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `wordsen`
--

INSERT INTO `wordsen` (`WordSenId`, `WordDefId`, `ChiSentence`, `EngSentence`, `Myorder`, `Status`) VALUES
('009f71b9-dda2-49f5-ab34-7f329b126798', 'fbee00ac-4c7b-4168-a5bb-2921515c2085', '削蘋果', 'to peel an apple', 1, '1'),
('00f1a497-4f69-482e-a80c-b804d78f715d', '29699099-7ea8-4a17-b5ea-309d9d630185', '在那條結了冰的路上駕車是對我駕駛技術的一次真正考驗。', 'Driving on that icy road was a real test of my skill.', 1, '1'),
('0140cd7e-570c-41e5-8bcf-1af8eb33d61a', '5f2fe135-921f-42c6-b5c2-5181fc427f1a', '你穿這件外套太合適了——非常有型。', 'That coat fits you so well - the hang is perfect.', 1, '1'),
('01559204-645a-4f33-82c0-7807e1bcc6a0', '676f50be-dc46-40c3-acaa-ac195a8ce113', '好幾個夜晚我因爲擔心他而夜不能眠。', 'I\'ve spent so many sleepless nights worrying about him.', 1, '1'),
('0169b163-db09-428a-807d-488baa2dc04e', '404c2b2d-617e-4b87-88ed-aba0e2dabb15', '他們驗了她的血，看看是否有感染的跡象。', 'They tested her blood for signs of the infection.', 2, '1'),
('017806b8-1433-4d50-b29d-dfbf03630aeb', '877a9130-6d05-4271-8e25-ec1fa46e2ba6', '航班預定於8：45到達，但要晚點20分鐘。', '\"The flight is scheduled to arrive at 8.45,  but it\'s running 20 minutes late.\"', 2, '1'),
('0179e21d-7564-4473-b713-064f2cbf9b77', 'd0df6ec3-fe1c-4b36-80c7-bd83f97b6f88', '人們都認為他是犯罪兇手，但沒有足夠證據將他定罪。', 'It was thought that he\'d committed the crime but there wasn\'t sufficient evidence to convict him.', 1, '1'),
('024b6736-1a4d-4a52-a993-824b70c28a2e', '9791b6f6-106e-411d-be25-0c5c310d8a39', '農夫叫來獸醫診治病牛。', 'The farmer called the vet out to treat a sick cow.', 1, '1'),
('0271f6dd-b39a-45d6-ab95-6b93fb91ddf9', '37969691-69d2-4f16-a734-c2f98d30e6b4', '首先，我要感謝我的家人。', 'Above all, I\'d like to thank my family.', 1, '1'),
('0278e444-e480-4953-b200-e1bb369df276', '9a248f46-0303-4eea-a75f-0f341bc77cd6', '很多人在森林裡迷了路。', 'Many people have lost their way (= become lost) in the forest.', 9, '1'),
('03274e80-4321-45e3-b153-2db4f39c85ca', '3dc1f791-ae2f-49d2-9fff-f04f5fbc0481', '幾乎所有專案計劃的成功都很大程度地取決於管理者的能力。', 'The success of almost any project depends largely on its manager.', 1, '1'),
('03792130-6fb7-4f54-bd8a-297abb7c0ee7', '7ac58670-b6af-4731-b742-f49496d0518b', '這棟樓已經不用了。', 'This building is no longer used.', 1, '1'),
('038abc7f-67ed-4a4d-8b57-8b90c8fd41a8', 'f7a613bb-a8d8-4b40-b17c-f2973b076e88', '一罐咖啡／醃洋蔥', 'a jar of coffee/pickled onions', 1, '1'),
('03cff70b-7ce3-4c1f-bf26-161a61189338', 'bf119f1c-aea2-467c-9fbf-27c51c99c7ef', '我第一次見到他時並不喜歡他，可是現在已經改變了看法。', 'When I first met him I didn\'t like him but I\'ve changed my mind.', 2, '1'),
('0457edc3-6251-4dbe-9d1e-b34cb8a357a9', 'bc31b9a5-90cc-47d9-8d65-39b8badb456d', '除非在媒體中大作宣傳，否則這部電影不大可能吸引大批觀眾。', 'This film is unlikely to attract large audiences unless it gets/it is given a big push in the media.', 1, '1'),
('047cbb5e-6479-4915-a60d-cb3f4272e931', '39a08d8b-f604-4e47-ba0b-e605491bee03', '爸爸，我潛泳遊完了游泳池的一個全程！', 'Dad, I swam a whole length of the pool under water (= with the whole head and body below the surface of the water)!', 3, '1'),
('04de4a4e-b705-40f6-aa90-aa8c21e43686', 'd9ab5c0b-c443-47e5-a9ee-da707fb0c887', '爸爸，我潛泳遊完了游泳池的一個全程！', 'Dad, I swam a whole length of the pool under water (= with the whole head and body below the surface of the water)!', 3, '1'),
('05023a51-a24f-4c4e-99d6-0bd38b2e4181', '17f8d366-b7e2-4c1e-bd29-892f356eeef7', '你一生中做過甚麽令你感到懊悔的事情沒有？', 'Is there anything you\'ve done in your life that you regret?', 2, '1'),
('050ad1ea-8f4b-4a31-8aaf-ff02936e6cbd', '2e35bded-23c7-4b72-96ae-1d6d076ca35d', '從所給形容詞中選擇一個使句子變得完整。', 'Complete the sentence with one of the adjectives provided.', 1, '1'),
('05147824-3fb8-4a45-aad3-5466bfebc356', 'ee971c3b-bd49-488a-aeed-c227223fa1e1', '新導彈目前正在進行試驗。', 'The new missiles are currently undergoing tests.', 1, '1'),
('05347c2a-1d60-4d3d-80ea-b7dff29f86aa', 'cccf35f5-2026-40ef-916d-6b6baee090f3', '晚上我不太舒服，但在隔天我就好多了。', '\"I didn\'t feel well in the evening,  but the following day,  I got better.\"', 1, '1'),
('05516a4a-455c-4149-93ff-8face482a69e', 'cd0b042f-aaa2-4e2e-aca3-8dbb35e6753e', '他們薄薄的帳篷幾乎無法抵擋狂風暴雨的襲擊。', 'Their flimsy tent gave/offered little protection against the severe storm.', 1, '1'),
('05d81716-76b5-4cd5-9c21-44d5777d9d0a', '8e7d608b-0f8b-4e8a-b0da-805ebe22fc67', '我使勁推了一下門，但還是打不開。', 'I gave the door a hard push, but it still wouldn\'t open.', 2, '1'),
('0623e3aa-1856-4744-90b4-eaed3c0f7690', '9459b351-7446-49ce-9600-fb9666cff438', '請把文章寄到上述位址。', 'Please send the articles to the address given above.', 1, '1'),
('063175cc-2a4f-46bb-a1a3-f07cb1a35c93', '3e80e43c-589c-4267-9c63-e89a1af2b579', NULL, NULL, NULL, '0'),
('0633b07a-a886-45eb-a7c1-2846c511cd72', 'f61a3570-9d6e-41eb-8176-0cf2765f7610', '流行音樂', 'pop music', 1, '1'),
('078cc0c8-482f-4c2d-a2ab-a311044c0d4f', 'f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '「還有酒嗎？」「不多了。」', '\"Is there any wine left?\" \"Not much.\"', 6, '1'),
('07b95127-f4f0-4db6-b7ba-b9442343413e', '063c3035-62cd-440b-a73c-8974dd5843e8', '一串香蕉', 'a bunch of bananas', 1, '1'),
('07d013b3-d1e6-4196-b16a-2992275fcb1b', 'f75ab86c-c25c-4f03-ba50-30f6444f989c', '我們絕對不可能及時趕到那裡。', 'We\'ll never get there in time.', 1, '1'),
('080a4b89-e62b-4373-b3fd-d07c05860e8e', '257804f7-a6af-4859-b89d-afeb13408e5a', '我換了條大一點的褲子。', 'I exchanged those trousers for a larger size.', 2, '1'),
('0839b706-105f-453b-8ab7-d16f24aa5e2e', '1eeefbdd-f10c-43c0-b3cc-5baacd6cd0ae', '這裡有很多有趣的事可做。', 'There are lots of fun things to do here.', 1, '1'),
('088c92d6-a9ed-4370-96a5-9b6942fb6c61', '3b408d0c-bf57-4422-96f0-9aba159e056c', '除了籃球外，你還參加別的體育活動嗎？', 'Do you play any other sports besides basketball?', 1, '1'),
('091d376e-fe0e-4524-95e6-1a7b20267fd3', 'd25f9384-ae75-4414-ad88-33b2782c4d2c', '我只是不感興趣。', 'I\'m just not interested.', 6, '1'),
('093911b4-6c9b-413b-ba1e-4a365dcda904', '5210494e-30f5-4646-aaec-23f82622e377', '一個外表整潔的中年男子', 'a middle-aged man of smart appearance', 1, '1'),
('09915de6-a393-4845-addf-41da8ea0c1c5', '427a3f2f-fdd0-4d54-ae9c-b13090cf2f28', '我不喜歡搞得別人心煩意亂。', 'I don\'t like upsetting people.', 7, '1'),
('0994fb1b-b5f6-4fbb-8700-09583c74229a', '1d56a635-4548-4e2f-a24e-54ba72b96d19', '我們無法籌到資金，因此不得不放棄計劃。', 'We were unable to get funding and therefore had to abandon the project.', 1, '1'),
('09b5e1d7-2160-44a4-adf4-a80a1c5ac678', '1895c5ba-50c9-465a-8b4a-6fdaa3836a14', '長期失業', 'long-term unemployment', 1, '1'),
('09c8ed67-24a6-4959-bba6-a2a94c8f8ab5', '94e25dac-47aa-4739-b54f-569c2f6853aa', '我希望你能收拾一下你的臥室——裡面亂七八糟。', 'I wish you\'d do something about (= take action to solve the problem of) your bedroom - it\'s a real mess.', 7, '1'),
('0a018a23-a048-4549-acd6-9443eda6d97a', 'ec2bd0e2-4d17-4381-b5b7-06a44bcb7b73', '蘋果派／醬', 'apple pie/sauce', 2, '1'),
('0a5793ed-b6fc-4fcf-8d92-2b099c1cf9d5', '068fa9e6-d71b-47af-aa5d-be3348c364a8', '塑膠微粒通常來自被用在去臉部角質以及身體產品上的塑膠。', 'Microplastics typically come from plastic used in exfoliating face and body products.', 1, '1'),
('0aaab82d-2990-4833-bd9b-20b512596a73', '12b39b2f-cfa2-46dd-87a4-191c830d3718', '今天班裡有一個拼寫測驗。', 'The class are doing/having a spelling test today.', 1, '1'),
('0b2fb404-2ba9-42a9-ae48-3a78612327fe', 'a16e452d-2d58-4c74-be7a-c62a6d058671', '她先接受了能力測試後才得到這份工作。', 'She had to take/do an aptitude test before she got the job.', 2, '1'),
('0b34fafe-ffc5-4f7b-a3c9-6665aa5bcf0a', '0a5817f5-503d-4fc7-8cb3-6245fadeba33', '妊娠檢查', 'a pregnancy test', 3, '1'),
('0b57497b-cecd-4660-9fb1-59da25b516fb', '8268ceb5-aeba-4c28-953c-219e73fac407', '她把工作看得比家庭重要。', 'She values her job above her family.', 4, '1'),
('0b835fed-0318-4ff0-91ae-4fe8a1475029', '4a190320-8c7a-40eb-b5aa-03d055f93576', '新導彈目前正在進行試驗。', 'The new missiles are currently undergoing tests.', 1, '1'),
('0bc7e628-6727-4ed2-9e0c-49fc774c9924', 'e2329603-3fec-4137-9f85-2805e38f3a4a', '該校設法使大多數學生通過考試。', 'The school manages to push most of its students through their exams.', 2, '1'),
('0bf85cba-bee6-4f2b-a2ca-e4945b1784a8', 'b048d0fe-32f0-4ce9-b3dd-b63dea578c8c', '澳大利亞以197分贏得了這次錦標賽。', 'Australia won the test by 197 runs.', 1, '1'),
('0ce9c1c6-f1f5-494c-8873-f361f97d406a', '79a219cb-bb13-452d-b6bc-0c94fc63480a', '她的能力毋庸置疑。', 'There\'s no doubting her ability.', 1, '1'),
('0cf046fd-8a76-4791-ac4a-653b08227b92', '427a3f2f-fdd0-4d54-ae9c-b13090cf2f28', '他喜歡晚上看電視消磨時間。', 'He likes to spend his evenings in front of the television.', 8, '1'),
('0d04fb3e-97f4-4d48-b9de-457ad2b45340', 'f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '你最近常見到波莉／聽到波莉的消息嗎？', 'Have you seen much of Polly (= often seen her) recently?', 13, '1'),
('0d07d7a1-e586-493a-b8e1-ad900fd30be6', '0cc0931b-eb19-485d-9904-513133c8f99d', '哪種物質能夠承受那樣的溫度？', 'What sort of substance could withstand those temperatures?', 1, '1'),
('0d5619e1-471f-429d-aae0-935bc69db18c', '9fbe10be-7feb-4120-9346-d9ed62a13ae6', '她向員警詳細描述了搶劫者的相貌。', 'She has given the police a very detailed/full description of the robber.', 1, '1'),
('0e519829-9b2a-4267-a54d-512f6cdbe6c3', 'b34a17c3-fb8a-406f-bf76-a31971764342', '我在尋找一份可以提高自己技能／才能的工作。', 'I\'m looking for a job which will enable me to develop my skills/talents.', 1, '1'),
('0ed82003-1eef-46b4-b961-cd78d0e89a00', '8cf7053f-576f-468f-ace0-166bd3090f1f', '結果證明，我們當初決定早點離開是正確的。', '\"As events turned out,  we were right to have decided to leave early.\"', 1, '1'),
('0f3fc21a-4c45-48d2-8808-753cd6642df8', 'cbf15860-5871-47c9-a33a-5c1a92fb46b8', '許多人都非常關注雨林遭破壞的問題。', 'Many people are very concerned about the destruction of the rainforests.', 1, '1'),
('0f4e0b60-6ea4-4dcb-a087-d9927410dc8f', '75b2bd95-2bd3-4b39-9faa-f4495de05c0d', '鹹花生／乾炒花生', 'salted/dry-roast(ed) peanuts', 2, '1'),
('0f758f98-6ef8-4cc5-876b-05c92dc6cd66', '536d558c-dfc1-4916-b8e2-b477dea05ca5', '她問我是否剛剛到，我回答她說「嗨，我已經到這裡一個小時了。」', 'She asked me if I\'d just arrived and I was like \"Hello, I\'ve been here for an hour.\"', 1, '1'),
('0f7cf154-438e-44ef-9d5d-15cde96f1eb2', '1786e4af-e0b9-4463-a910-1ca6721ae783', '他因暴力和威脅行為而聲名狼藉。', 'He was notorious for his violent and threatening behavior.', 1, '1'),
('0f98908a-c0f1-4739-932e-55089eb409e3', 'f4804bbd-49da-4cde-928a-fe29e99ca939', '野狗', 'wild dogs', 2, '1'),
('102f886d-3b06-4be0-9b34-e3013f9fa7f5', 'b87a2174-545a-4774-9d08-b440da291b18', '你好像對這個派對不怎麽熱衷——你今晚不想去了嗎？', 'You don\'t seem very enthusiastic about the party - don\'t you want to go tonight?', 1, '1'),
('104ed364-7341-4a74-8f88-24603e69b82a', '73320be8-77fb-430f-b7ca-9af586c34507', '你要考一考我一直在學的化學嗎？', 'Will you test me on the chemistry I\'ve been learning?', 1, '1'),
('10af6df7-d3ca-44c1-bb1d-54b3079ea92e', 'fa6b3eac-7103-4370-a350-6939d9745187', '你穿這件外套太合適了——非常有型。', 'That coat fits you so well - the hang is perfect.', 1, '1'),
('10c9a368-8070-41d3-82da-0d1129746715', 'f9e66032-7d63-4600-a56f-e7fd7940a78e', '蘋果樹', 'an apple tree', 3, '1'),
('1136e81f-5c2e-40ea-888c-dc5024ac7eac', '2301593a-df63-4f28-bccb-b2f6a5aa4460', '透過關閉受感染的農場，我們希望把疾病限制在該地區的北部。', 'By closing the infected farms we\'re hoping to confine the disease to the north of the region (= stop it from spreading to other areas).', 1, '1'),
('119ca4bc-0481-4448-9125-8d6b19519d17', 'dfe6ea45-da24-4398-baa4-a39ded0121ca', '透過和從集中營出來的囚犯談話，一個很明顯的感覺就是他們一直在挨餓。', '\"From talking to former prisoners in the camps,  an obvious conclusion is that they have been starved.\"', 1, '1'),
('11d0dba7-e557-4fc5-9798-9cf64ed95272', 'ab1eb7f4-d347-490f-b815-a100361592a5', '大家希望減少學校的班別人數。', 'Reducing class sizes in schools is a desirable aim.', 1, '1'),
('12243beb-979c-4df1-ab38-daeedac09dea', 'f5a4b516-6297-4e00-881e-7ce4fca52ae8', '身為護士，她對自己的工作極爲認真。', 'She takes her responsibilities as a nurse very seriously.', 1, '1'),
('12488b10-b464-4303-90e0-d1e055d9b2e9', '94e25dac-47aa-4739-b54f-569c2f6853aa', '她態度中表現出的一些問題讓我擔心。', 'There\'s something about her attitude that worries me.', 10, '1'),
('127026f5-a184-48bb-a1af-f492ab71aa54', '8278c6e8-0431-4d03-9079-f622de7eb185', '她戴著一串由色彩鮮艷的木珠串成的項鍊。', 'She wore a necklace of brightly colored wooden beads.', 1, '1'),
('12ba93f7-a128-46ba-a378-ae1e1ed15a16', '0e27620e-9c84-4b8a-adb4-1a28508ec365', '她似乎總做傻事！', 'She acts like she\'s stupid!', 5, '1'),
('131b42ab-8b44-4a95-a8e9-338f84754d86', '165f58c5-ee09-4539-8460-97e9505cfba3', '我們必須立即作出反應。', 'We must make an immediate response.', 1, '1'),
('13c27938-4543-46bb-ae5c-2840e1f1e498', 'b36f5d04-4ea0-47b7-af7a-71980c7339a4', '青蛙會發出「呱呱」的低沈叫聲。', 'Frogs make a low noise called a croak.', 1, '1'),
('13d50e32-3922-4d44-9ebc-85a0d187f7cf', 'e4ad044b-49c0-4186-92bb-711174c51888', '保羅‧賽門的歌大多都是他自己寫的詞。', 'Paul Simon writes the lyrics for most of his songs.', 1, '1'),
('13e1038c-05e2-41a3-9a80-a6ccfd4959ef', 'bfa90797-5502-4ae8-abeb-e4c39b4ce5b5', '別擔心——車到山前必有路。', '\"Don\'t worry about it - something will turn up,  you\'ll see.\"', 1, '1'),
('147c96be-0542-476e-ab65-508d53ea22ce', '6c1addf7-547c-40b9-a7c2-f09637034a70', '那些花不是真的——是塑膠做成的。', 'Those flowers aren\'t real - they\'re made of plastic.', 1, '1'),
('14a848c9-adc3-4c57-af21-73504867f489', '21757044-fe37-4a5e-b043-be1767c7ed48', '這間房子牆上的油漆已經開始脫落。', 'The paint on the walls of the house has started to come off.', 1, '1'),
('15111b85-2b21-4be8-bc04-0fc2344a2473', 'e91d5fde-aeac-427a-9a79-eb66b9c3cfdf', '剛好是三個小時的路程。', 'The journey took exactly three hours.', 1, '1'),
('151e8955-1e2a-456b-afad-d81a266294c5', '4809cf55-3ff4-48db-bb91-9e7a070d9c9d', '現在我們休息一下，喝杯咖啡好嗎？', 'Shall we break here and have a coffee?', 1, '1'),
('15328ec9-0701-4d8e-a1eb-c778ff870c7b', '25d4cff8-9d5a-41d5-b249-66444c8dbd7c', '蘋果派／醬', 'apple pie/sauce', 2, '1'),
('15a615a8-66f3-4849-ae23-2b372a9f8d71', '7154c721-c4e4-43f2-86a2-4e54422e460f', '我需要一本木工入門書。', 'What I need is a book that contains the ABC of carpentry.', 1, '1'),
('15cc4e88-ff0b-4414-9900-9b8d68238e68', '897458fb-a4ac-45aa-a96c-8a3f29063a37', '我的車正放在修車廠裡維修。', 'My car is in the garage for repairs.', 1, '1'),
('16124ea8-2b3d-4ed6-aba3-df7331b5864a', '79a219cb-bb13-452d-b6bc-0c94fc63480a', '她是個非常有才幹的女性。', 'She\'s a woman of considerable abilities.', 3, '1'),
('161f0eeb-f1c4-4260-b1b1-f526469ed53d', '5f1945e9-e7f6-4b69-8d26-20e721103579', '「我想再來點兒起司。」「很抱歉，已經沒有了。」', '\"I\'d like some more cheese.\" \"I\'m sorry there\'s none left\".', 2, '1'),
('163d7084-dc1c-44cf-8f2d-7f1febc399c1', '404c2b2d-617e-4b87-88ed-aba0e2dabb15', '生產廠家目前正試驗這種新的引擎。', 'The manufacturers are currently testing the new engine.', 1, '1'),
('16e13a6b-4e72-4554-bf87-5448803227e4', '102ae4b6-d54c-4ecc-9963-2b1859a4ed18', '他已獲准實施他的方案。', 'He got the OK to go ahead with his project.', 1, '1'),
('16f436e4-18f8-4c30-9d24-3da6ccd19811', 'c1e1512f-7f59-41d9-a2d8-9194ecd3481a', '這個箱子應該哪一面朝上？', 'Which way up should this box be? (= Which side should be on top?)', 2, '1'),
('18255f04-5ce1-4952-be8c-49d25d8b7e99', '5f1945e9-e7f6-4b69-8d26-20e721103579', '我的孩子們的頭髮都不是金色。', 'None of my children has/have blonde hair.', 1, '1'),
('18368986-0ead-464a-be94-63d421de3019', 'b2915278-a556-4d48-bf46-52fa89d4616b', '解決這個問題有許多方法。', 'There are many ways of solving the problem.', 1, '1'),
('18640ae7-5837-488c-80ab-501654e2ad73', '26004546-66f8-4238-b406-31574effd3c4', '非常歡迎所有來看演出的家長。', 'And a big hello (= welcome) to all the parents who\'ve come to see the show.', 4, '1'),
('18cdd17f-1671-43ac-aa59-dfe01b761f10', 'c8fccf86-e0f5-41ae-ad8a-e59b9b3e7d87', '他們驗了她的血，看看是否有感染的跡象。', 'They tested her blood for signs of the infection.', 2, '1'),
('18df28f0-ae45-45a0-a08c-8f5f5d9af542', '01a2efa5-5402-446b-9ab7-4669b87940e2', '人體約50%是水。', 'The human body is about 50 percent water.', 6, '1'),
('18e54201-07a8-4e8e-a9b8-13e05c86ae31', 'db66ad19-331f-4f91-8cb3-7cc2fe7e9991', '你到這個國家多久了？', 'How long are you over here (= in this country)?', 5, '1'),
('198c8bfc-a601-4097-b7aa-f673b6668cef', '707dd9b2-aac2-4060-9627-c33a7d573c28', '然後我才明白已經很晚了，因此感覺特別沮喪。', 'Then I saw how late it was and I\'m like, so upset.', 1, '1'),
('19ab8212-fffc-4e60-9da1-d3146f913f7c', '9a85ff27-ac55-43f0-aea5-d2faa18a0b33', '政府承諾減少食品生產中化學製品的用量。', 'The government has pledged to reduce the amount of chemicals used in food production.', 1, '1'),
('19b32438-8e04-4e04-b21f-d54641d3a827', '6a4e1122-6773-400d-a3ed-c15c8430df57', '新導彈目前正在進行試驗。', 'The new missiles are currently undergoing tests.', 1, '1'),
('19c968ef-f670-44b2-bdae-d38345400ebc', 'f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '自從開始吃素後，我感覺健康多了。', 'I\'ve been feeling much healthier (= a lot more healthy) since I became a vegetarian.', 22, '1'),
('19d5b143-fd7f-47a8-9f81-3a14a7dcfbbb', '9a248f46-0303-4eea-a75f-0f341bc77cd6', '你知道去餐館怎麼走嗎？', 'Do you know the way to the restaurant?', 1, '1'),
('19f38aba-73e8-4457-b0f4-5bcec0e0f7fa', '5b03fe7f-1762-44be-b843-bf645bdf616d', '她對體育運動不是特別感興趣。', 'She\'s not especially interested in sport.', 1, '1'),
('1a49775b-373d-4038-a9cd-c2fa97d0f33d', '4fc95f25-8c49-48c2-8aae-b151486d6d8d', '土地上種著柑橘樹。', 'The field was planted with citrus trees.', 1, '1'),
('1a9e9666-aa50-44aa-beee-549f52f4241c', 'bf11c8cc-2c26-4faa-9e31-0f45ae56928e', '這水洗澡夠不夠熱？', 'Is there enough hot water for a bath?', 5, '1'),
('1af95647-a4ac-400c-9539-d5bc3c499268', '4f565393-b2a2-4332-9fc5-6a75670c9353', '將起司切成小方塊。', 'Cut the cheese into small cubes.', 1, '1'),
('1afa54f5-93c7-4bfb-869c-3c0cb5639e07', 'c9f32a67-c715-4635-9348-cfc451d7b470', '她是個優秀的教練，知道如何取得好的訓練效果。', 'She\'s an excellent coach who knows how to get results.', 2, '1'),
('1b15dba3-0607-493c-88ac-2258bc101bc4', '84c1f19d-8932-453f-a58e-7184957c6435', '我被要求把講話控制在十分鐘之內。', 'I\'ve been asked to limit my speech to ten minutes maximum.', 1, '1'),
('1b596357-7857-4563-8ae4-ee6ec798f770', '5ef6f1ac-876e-4824-9c12-06654853d77e', '小布在1984年搬去舊金山讀醫學院，從那時起他就一直待在那裡了。', '\"Brian moved to San Francisco in 1984 to go to medical school,  and he\'s been there ever since.\"', 2, '1'),
('1b7a7119-bfa0-4334-a746-9508dcb6e843', 'f6d382b6-8728-4fa7-97f6-929927cd11a7', '氧的化學元素符號是O。', 'The symbol for oxygen is O.', 1, '1'),
('1ba65d5b-6abf-4b7d-ad81-07e476a1a743', 'fe975dd5-6080-4bf6-afbe-f7c0b93e3d81', '我們6點30分見面，好嗎？', 'I\'ll see you at 6.30, okay?', 2, '1'),
('1bcbab8a-2cba-4908-b654-0d293214474d', '49817fcb-5936-49ef-bea8-d7a987c330f4', '他似乎跟自己的秘書有一腿。', 'It seems that he has a love affair with his secretary.', 1, '1'),
('1bdf5030-7d41-4791-8f5d-b95dd44ce0f9', '7f24c95f-f6c3-4215-baf9-f82d21b5cb7a', '他穿上了他的夾克。', 'He put on his jacket.', 1, '1'),
('1bfd591e-9a2a-45e9-a9ed-681266853c02', '9459b351-7446-49ce-9600-fb9666cff438', '信件已寄至上述位址。', 'The letter was sent to the above address.', 2, '1'),
('1bffe459-3c08-4320-bd48-271e47cc9c6a', '2e9ced9b-dcf5-4738-adca-53f3337622db', '達不到（本門課程）要求的學生將不能及格。', 'Students who fail to meet the requirements (of the course) will fail.', 1, '1'),
('1c18264e-b24b-4409-a872-336306f78002', 'b76e206b-f4f3-4abe-b585-03184d2595e7', '程式設計真的不是我的專長，你最好問問菲爾。', 'Programming really isn\'t my field - you\'d better ask Phil.', 1, '1'),
('1c32907b-311d-4cf8-8f28-388b1251cd8f', 'cf8a6bc8-7c6c-4e01-8065-223f3a1f8051', '關於這個話題我已經知道很多，但她的報告聽起來還是很有趣。', '\"I knew a lot about the subject already,  but her talk was interesting nevertheless.\"', 1, '1'),
('1c4c4f94-af1c-4ff1-b5b0-d449971912da', '4018ecf3-26f7-4786-ad68-2f50fe285224', '科幻小說／故事', 'a science-fiction novel/story', 1, '1'),
('1c670cc5-e66d-4696-9070-636cb408826c', 'f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '我在衣服上花費太多了。', 'I spend too much on clothes.', 10, '1'),
('1d5cacdb-ead3-431a-bc28-483d39948364', '71deb24c-daf5-42fe-807e-fc07bdc71f24', '再試一次——最終你會成功的。', 'Try again - you\'ll get there in the end.', 1, '1'),
('1d7894b3-8ea9-4444-bca7-81072e4933e3', 'b980ae8c-bd4a-4fa8-9456-320ae861732b', '他因為拋棄了自己的孩子而備感愧疚。', 'He suffered such feelings of guilt over leaving his children.', 1, '1'),
('1d9dce59-a236-4913-9ad5-ed61aa726d1c', '4af3d096-3ee9-4d54-a3e3-c3d6d1bb493d', '「你能來我上班的地方接我嗎？」「好的，幾點鐘？」', '\"Could you pick me up from work?\" \"OK, what time?\"', 2, '1'),
('1dbf6ca2-7d2d-48c1-b269-eb405a639053', '4fd1e5ed-4f34-405f-867c-2b6e122a3e1e', '陽光、沙灘加上浪漫的愛情——她的假期完美無缺。', '\"Sun,  sand,  and romance - her holiday was complete.\"', 2, '1'),
('1e076e51-e9f4-47d4-bb26-9c4bdbde2ddc', 'aea55eb4-af92-4bf7-8c53-ffd1bcd9e684', '你身上碰巧帶筆了嗎？', 'Do you have such a thing as a pen about you/your person? (= Do you have a pen?)', 1, '1'),
('1e9809e6-8caa-46c4-b2c9-17fe5f028720', '11f26417-1606-4f75-b19a-ff59cb14b647', '驗血／尿檢', 'a blood/urine test', 1, '1'),
('1ea1cb93-632c-4814-bc8e-5969dfc268a0', 'd66f5043-de38-4bbd-b5ba-72f5e72f714f', '蘋果樹', 'an apple tree', 3, '1'),
('1eb527c5-c212-4103-8fed-d50e26aad975', '82823e25-1a83-4a0f-ab68-8169f13f1e64', '沒有甚麽確鑿的證據證明她有罪，所以很少有人認爲她應該被絞死。', 'With so little evidence to prove her guilt, few people thought she should hang.', 2, '1'),
('1ee85fea-1750-46b2-83a1-bfde78b6818f', 'aca16b3b-92eb-43df-bb40-74e3c0f4400b', '香蕉奶昔', 'banana milkshake', 2, '1'),
('1f474c08-61e2-4666-9e73-cce81bba2af6', '2f0f7f51-8ac5-4ebd-97f7-171117f39e90', '你們的新居接通電話／電／煤氣／網際網路了嗎？', 'Police are connecting the break-in with other recent thefts in the area.', 2, '1'),
('1f822995-9463-46c2-9633-834c36a6901c', '94e25dac-47aa-4739-b54f-569c2f6853aa', '一部反映西班牙內戰的電影', 'a film about the Spanish Civil War', 2, '1'),
('1f832152-41d9-4686-a78e-ee3e1118907f', '7e83e5bd-191b-4a5b-b558-435497bda4aa', '我告訴老闆下周我不在。', 'I informed my boss that I was going to be away next week.', 1, '1'),
('1fcb1691-23b0-48cf-bd6a-0f08ca33270b', '68240235-9213-4eba-8757-bc3ed02327e5', '「我以前從未使用過這個系統。」「別擔心──你很快就會用的。」', '\"I\'ve never used this program before.\" \"Don\'t worry - you\'ll soon get the hang of it.\"', 1, '1'),
('1fd7a166-d4da-4f45-93f3-80a208c2ecef', '8b20670d-bbf5-42c5-80a9-044d5ee8b4ef', '這些人來清除後院的垃圾。', 'The men came to remove the rubbish from the backyard.', 1, '1'),
('1fe6b7d1-a19e-438d-9cb1-29e81eeaef1c', '9a248f46-0303-4eea-a75f-0f341bc77cd6', '他用胳膊肘／手推搡出一條路，擠到了人群前面。', 'He elbowed/pushed his way (= hit/pushed people so that he could go past them) to the front of the crowd.', 5, '1'),
('20333d4c-4e49-41da-8ce8-0eee2efdf3e1', 'ea79c56f-943b-4599-8b95-5283235a06a6', '他正在樓上做功課，信不信由你。', '\"He\'s upstairs doing his homework,  believe it or not.\"', 1, '1'),
('207cd628-683e-4318-9f25-bd156354569e', 'e1e05f26-dcf9-4af8-b4d3-b0cbe41dd317', '醫生做了一些檢查，想查出她的問題出在哪裡。', 'The doctors have done some tests to try and find out what\'s wrong with her.', 4, '1'),
('20a82f05-140d-4665-a295-e21a6953ad8a', '603e9f2a-e841-4712-8b49-895da0f8a096', '「你今晚有作業嗎？」「沒有。」', '\"Do you have any homework tonight?\" \"No.\"', 3, '1'),
('2101e9c1-4bf2-40f8-8eeb-2b61eaa98639', 'e7d7f98d-f3cd-4cf8-b76d-bf1e6770d26d', '他申請成為美國公民。', 'He applied to become an American citizen.', 1, '1'),
('213e4455-9975-4127-b904-be2398271103', 'a7b62b08-691e-4a76-911b-75c1ea2d3f3a', '她在冰上滑倒了。', 'She slipped on the ice.', 1, '1'),
('2147b1ab-0722-4fe3-b2e3-dbc1d9176fd5', 'db66ad19-331f-4f91-8cb3-7cc2fe7e9991', '倫敦離這裡只有50英哩。', 'London is only 50 miles from here.', 3, '1'),
('2169c595-c95d-485d-b3fa-c2083684aa1f', '27d0e6a4-800e-456a-ba86-5ba0fa2c619f', '我們不可能在八點之前到達那裡。', 'There\'s no chance (= no possibility) of us getting there by eight.', 4, '1'),
('219f61c2-9025-4ec2-9d26-f280d8b6f9e7', 'ec2bd0e2-4d17-4381-b5b7-06a44bcb7b73', '削蘋果', 'to peel an apple', 1, '1'),
('21a93872-0118-47d3-b8a9-62a7ff74bddf', '26004546-66f8-4238-b406-31574effd3c4', '我對她不太熟悉——我們只有打過幾次招呼。', 'I know her vaguely - we\'ve exchanged hellos a few times.', 2, '1'),
('21f1b7f4-58fe-4314-8228-aac55fc7f85a', 'ff0f4abb-6c30-488d-96ec-b604186e47db', '我正設法減少乳製品的食用量。', 'I\'m trying to cut down on dairy products.', 1, '1'),
('2278fd48-ec16-46df-9d96-79543e3ce59b', '64ceea8f-4f60-4dfb-b0d0-aa3165ec4d5d', '很多教堂中，側廊與主廊之間都有一排拱門相隔。', 'In many churches the side aisles are separated from the central aisle by a row of arches.', 1, '1'),
('227b9ec6-6aa0-4cb6-b47f-3d2235882005', 'b6d2b628-0ead-4832-aea0-ce4fe9bb1db4', '走在黑漆漆的大街上，他聽到有腳步聲緊隨其後。', '\"Walking along the darkened street,  he heard footsteps close behind him.\"', 1, '1'),
('22a62cb7-7b6d-4545-b150-b7f093c06201', 'ffa6fb7e-b0ff-4206-86b2-f488f08caf78', '無階級／多元文化／資本主義／文明的社會', 'a classless/multicultural/capitalist/civilized society', 2, '1'),
('22f1036b-4c07-4efa-95a0-2f6eb4262b4d', '652c054f-23d7-4061-8086-2dd8ef058691', '他長相不怎麼好看，但性格很好。', 'He\'s not much to look at, but he has a wonderful personality.', 1, '1'),
('239881cc-6215-46c7-ab78-bcc123efbd7e', 'b865efce-68e3-410f-b8d0-7c75ed4298ff', '有找你的電話。', 'There\'s someone on the phone for you.', 1, '1'),
('23af98cc-e78c-4f78-919b-a0d3a8b59ca2', '998027fe-9731-498b-833c-60774f522b9e', '她出色地扮演了馬克白夫人。', 'She gave a superb performance as Lady Macbeth.', 1, '1'),
('246724ce-6ccf-46d9-bbb4-b8e0f5e0c985', '85d4bbcc-bba5-4fb1-b85c-470919629d7a', '她的嗓音還可以，不過沒甚麼特別之處。', 'Her voice is OK, but it\'s nothing special.', 2, '1'),
('24e37f09-836b-4df9-8763-57f59a3cffb9', 'e449d810-44e6-47a8-8db9-faaf9be4ba9a', '我告訴過你別那樣做。', 'I told you not to do that.', 1, '1'),
('2505fa78-8f06-4cba-963c-acbeacbe916d', '257804f7-a6af-4859-b89d-afeb13408e5a', '比賽後兩隊隊員交換球衣，這是傳統。', 'It\'s traditional for the two teams to exchange shirts after the game.', 1, '1'),
('25333157-d8b2-4791-80de-b27c2825efe6', 'a34d9751-6304-47fc-b4bf-761d638fc73e', '她看來好像馬上就要哭出來了。', 'She looked as if she was about to cry.', 2, '1'),
('25a7bcde-ba67-46f5-84cf-02071a91485b', 'a2623e4b-fb63-44fe-b3c8-e1d94f279623', '她需要24小時看護。', 'She needed round-the-clock nursing.', 1, '1'),
('25d040e5-d82b-419f-a996-5caf6f306f74', 'd387127c-a79e-47a9-b41a-e5b48c78ef45', '生日快樂！', 'Happy Birthday!', 1, '1'),
('26048764-e620-449a-a15a-f06adece4b1e', '0ed3b107-0839-4e1b-b467-5ac629aa5354', '她當選最佳女歌手。', 'She was voted the best female vocalist.', 1, '1'),
('26324b16-b8c2-437a-bb7e-61cea0ee7fe6', 'c0946a72-c3b1-44d9-a971-163b7aed88a6', '穿上鞋，我們走吧。', 'Pop your shoes on and let\'s go.', 3, '1'),
('265be1f2-955a-44d0-8a2e-2ced02a74fb7', '13462b73-050d-4c50-86e6-f6770bef1e53', '新導彈目前正在進行試驗。', 'The new missiles are currently undergoing tests.', 1, '1'),
('2720133f-8c63-4b21-83e3-e949cf4e1030', '10b8bf22-3356-4e5d-896e-12dfb8cb3396', '如果發燒，應多喝流質。', 'If you have a fever you should drink plenty of fluids.', 1, '1'),
('27c63fd9-d8fd-495f-bd12-740a37b14bbc', '65d04ac5-0c14-4985-8426-6cf604bb8165', '我們剛在臥室裡鋪了新地毯。', 'We\'ve just had a new carpet fitted/laid in our bedroom.', 1, '1'),
('281af2b6-ba52-424c-a3c6-9252628e8046', '7bef2ca1-5921-454b-8e59-902a3009ca23', '七月四日國慶日放煙火是美國人長期以來的傳統。', 'Fireworks have long been an American tradition on the Fourth of July.', 1, '1'),
('28c6dfa9-c8a2-4ab1-aaf3-2cb9e9686742', '34b630d0-2bb1-46c1-b799-b62d9e059f1d', '你平時沒這麽安靜呀——親愛的，你沒事吧？', 'It\'s not like you to be so quiet - are you all right, my love?', 2, '1'),
('28ecfa4b-b70a-4641-aa68-7a82a74f0c80', '21ba8ea9-93e8-4f65-abb0-82f78cd1d0db', '我以為那位老人會比年輕人更加生氣，結果情況恰恰相反。', 'I thought the older people would be more offended than the young people, but it was the other way around.', 1, '1'),
('28f3aac8-88fc-4ca5-93b1-5e46c30545de', 'b865efce-68e3-410f-b8d0-7c75ed4298ff', '看來要定下會議的日期有些困難。', 'There appeared/seemed to be a problem with finding a date for the meeting.', 5, '1'),
('2906bbd9-996d-4086-9cf1-7c0e1507469c', 'bf119f1c-aea2-467c-9fbf-27c51c99c7ef', '要是你改變主意今晚不來了，就打個電話給我說一聲。', '\"If you change your mind about coming tonight,  just give me a call.\"', 1, '1'),
('292064cc-06a8-4a25-834c-24a65df42a7c', 'dd8b6a7b-ab28-40c2-919f-a437f6f17beb', '獵鷹似乎在空中停了一下才撲向獵物。', 'The falcon seemed to hang in the air for a moment before diving onto its prey.', 1, '1'),
('2921c4c5-e59c-40b6-95c5-d4f4cc9d3041', 'c650712a-21fb-4610-8469-43ff84bd488e', '電的發現', 'the discovery of electricity', 1, '1'),
('29a10bf8-a159-4ed4-8b40-69e9ef372361', '1786e4af-e0b9-4463-a910-1ca6721ae783', '這行為可能出現在失去了父母或親人的兒童身上。', 'The behavior can be observed among many children who have lost a parent or other loved one.', 2, '1'),
('2a1e8f5a-301b-4e9c-9977-0107fd688114', '774b41b5-e022-44b2-913f-493c2aaaccd6', '如果這種情況發生/這種情況發生時，我會擔憂的。', 'I\'ll worry about it if/when/as the situation arises (= if/when/as it happens).', 1, '1'),
('2a5455e8-2c15-4368-9cdf-a742601943ce', '7dafa38b-39b3-4179-916d-210dc13f1a4d', '這個專案計劃的成功要靠每個人的努力。', 'The success of this project relies on everyone making an effort.', 1, '1'),
('2a6ef2e4-105c-4472-826f-1cba08ac040b', '45f967c0-744a-4441-acc1-cabcf670aa4d', '一種像甘藍菜的蔬菜', 'a cabbage-like vegetable', 4, '1'),
('2a8f9b5f-4ff1-4fe4-bdae-3ac30bc55fcd', '2bf88a8c-05c4-4bfd-ada7-d34e17269694', '「沉默的羔羊」是流行電影業的代表作品。', '\"\"\"Silence of the Lambs\"\" was pop movie-making at its best.\"', 1, '1'),
('2adcde47-b7ff-45c6-a508-c6873109f386', '6bfaacac-ee79-43ee-a5d2-b2340d70f4bb', '我們只帶了基本的必需品。', 'We brought only the basic/bare necessities with us.', 1, '1'),
('2aed2b0d-3a2e-498d-a215-ce66b1dd9bba', '29757809-4aa2-497a-8fd1-c7d6c05c0b40', '禁止吸煙／垂釣', 'No smoking/fishing.', 1, '1'),
('2b57c9f1-7af8-4a69-ab5a-bacebc3c7bd6', '25fa4dfd-2e85-4d1b-bae0-511ad2e7a4fc', '不含酒精的淡啤酒', 'an alcohol-free lager', 2, '1'),
('2b5ea1ae-373f-4916-9624-9258fb9c18bd', '46e2ae08-7934-4356-a515-67bdcdad4777', '巨富者常慳吝。', 'Great wealth often goes hand in hand with meanness.', 1, '1'),
('2b982839-4764-4aa8-ae02-f3afe64d1065', '56e40b97-7621-4806-a534-f35efd6728ef', '醫生做了一些檢查，想查出她的問題出在哪裡。', 'The doctors have done some tests to try and find out what\'s wrong with her.', 4, '1'),
('2baba334-170d-40b4-bcbc-318aa38b648e', 'dd7c4de8-edae-4f89-96e2-b9ce9e586ec2', '樹枝被雪壓彎了。', 'The branches hung heavy with snow.', 1, '1'),
('2bc00240-6fd6-45fd-a945-844393dcd734', '586f7340-d3e6-4c22-8709-53d34fcd25fd', '削蘋果', 'to peel an apple', 1, '1'),
('2bd1c275-9504-48f1-a0d5-79a8cb3e987a', '1b1f8ab8-4ff9-498e-a006-b3ed7637454e', '我們需要在明天之前得到明確的答覆。', 'We need a definite answer by tomorrow.', 1, '1'),
('2bf71595-7c00-4746-9431-93e898b80202', '03841bf2-ae04-43e5-9a51-7cea29ec9900', '切洋蔥時你是如何使眼睛不流淚的？', 'How do you stop your eyes from watering when you\'re cutting up onions?', 1, '1'),
('2c05e60f-93a7-4987-a2aa-c89b6abc89e7', '24712f22-d55d-48c8-89b0-4230f3da1336', '預計今天政府會公佈稅收計劃。', 'The government is/are expected to announce its/their tax proposals today.', 1, '1'),
('2c35ffca-fed9-413a-a723-0ec220134928', '0b46d1aa-3f62-470f-898c-d7930def8f03', '兩個女孩在父親面前爭寵。', 'Both girls compete for their father\'s attention.', 2, '1'),
('2c5c6d20-1d11-4ac0-9152-8d6ab07a79e4', 'd9355ee7-e620-4e58-a757-743e77235dce', '我們看見了這些人，就走過去和他們交談起來。', 'We saw these guys, okay, so we went up to them and started talking.', 1, '1'),
('2ca2c97b-8459-4418-995c-9a211a8ba377', '34b630d0-2bb1-46c1-b799-b62d9e059f1d', '梅茜就是這樣的人，為她辦派對時她都要拖後半小時才露面！', 'That\'s just like Maisie to turn up half an hour late to her own party!', 1, '1'),
('2cdcd4d7-3eff-40d5-a8b2-7e8f3fd1c908', '430e9647-0d38-4645-a255-708ac8a042d5', '為了保護自己，他也不免要撒謊。', 'He\'s not above lying (= he sometimes lies) to protect himself.', 2, '1'),
('2cf280fb-b09c-4e53-836e-ed6292fea68c', '32aa1cee-3551-4fb3-9683-0b987d01497a', '伊芙琳‧沃的第一部小說名為《衰落與瓦解》。', '\"The title of Evelyn Waugh\'s first novel was \"\"Decline and Fall\"\".\"', 1, '1'),
('2d4de7f7-7fca-445a-84f8-ee0d711349e5', '7e7a35cb-bd98-4ba0-97cf-81b9df1cbcc9', '經濟學家們都為經濟不景氣而擔憂。', 'Economists are concerned by the low level of economic activity.', 1, '1'),
('2db64cea-9ed9-4616-9d54-c5f79d413500', 'c1f89c63-460e-4aae-8720-b5baaa04951d', '假期似乎還很遙遠。', 'The holiday seems like it\'s a long way off.', 2, '1'),
('2dd89c05-3c76-4015-bff1-88ace35584f2', '5fbdc7f6-e573-4c82-b70f-307a83b44fba', '在過去的兩年裡，我們的銷售額一直在逐步上升。', 'There has been a gradual improvement in our sales figures over the last two years.', 1, '1'),
('2df94aea-d93d-4e4d-8cca-921653f48dfe', 'dc771726-1b5d-4c8b-9d4a-7f5d17f8c9eb', '我的魚肉美味可口，但是查理的牛肉卻幾乎沒甚麽味道。', 'My fish was delicious but Charles\' beef had almost no flavor (= did not taste of anything).', 2, '1'),
('2e509a62-99d9-41d1-81c0-498f8bf7d22a', 'f9d44f1d-510b-4954-a5b6-358947c66eae', '圖片底部的骷髏象徵死亡。', 'The skull at the bottom of the picture is symbolic of death.', 1, '1'),
('2e618422-c236-4514-aea3-ca6030693b90', '607f2bf4-c7ec-437d-ba1a-e0ad3783bd8d', '鹹水瀉湖', 'a saltwater lagoon', 2, '1'),
('2e6e0544-0647-4024-a81f-610ed4f0cb40', '2a1634b7-7e2d-4fac-a1fe-8f67d8786865', '他們幫人工作以換取食宿。', 'They were given food and shelter in exchange for work.', 2, '1'),
('2ea5f8cc-d8cf-4589-b080-958aff1446de', 'd387127c-a79e-47a9-b41a-e5b48c78ef45', '周年快樂！', 'Happy Anniversary!', 2, '1'),
('2ee3ba3e-00fe-45ed-aace-8f123023488b', '0c5d3a43-1384-427a-9b49-e60d3d660aef', '防護服', 'protective clothing', 1, '1'),
('2f1eb4f0-5d59-47d1-86a6-b4f581bc0ed2', 'ec08b89f-8a12-4422-ae15-0248a2982456', '保險公司要我做一次體檢。', 'The insurance company wanted me to have a medical.', 1, '1'),
('2fce9881-fd37-4f4e-9793-7e63538bc1ff', '0d26b8e1-3f94-4d28-990d-8b5601bdc2d5', '他們開會前簡短地互相致意。', 'They briskly exchanged greetings before starting the session.', 1, '1'),
('2fdcc985-afd4-4b31-8acd-c63eb6b1a21b', '96256013-455e-48c5-a2dd-9793020b06b4', '這家健康門診依靠志願者來負責辦公室的日常工作和接聽電話。', 'The Health clinic is relying on volunteers to run the office and answer the phones.', 1, '1'),
('2fe2eadf-6560-4761-972d-d310ef8de836', '70be1a7b-da0f-4059-beb5-67fd91bf0ab4', '我感到不舒服，於是就回家了。', 'I felt ill so I went home.', 1, '1'),
('30044aa9-8e3e-4269-908d-c5e960dd8588', '9a248f46-0303-4eea-a75f-0f341bc77cd6', '我們得在去機場的路上停下來加油。', 'We\'ll have to stop for petrol on the way to the airport.', 3, '1'),
('30386377-283e-4a1d-8d30-99c186e30383', 'c033ad5e-0fb7-4f41-b7eb-230a0d63c445', '他把盤子從面前推開，不想再吃了。', 'He pushed his plate away from him, refusing to eat any more.', 4, '1'),
('304b6b91-4110-47dc-9db9-60caff57ac71', '4d84be0f-b20e-452a-9dc5-a8b89c5ef2de', '「你們打算要孩子嗎？」「噢，當然了。」', '\"\"\"Are you going to have children?\"\" \"\"Oh,  definitely (= without any doubt).\"\"\"', 1, '1'),
('305a95ff-3f5f-4249-8153-d54d970935d1', 'd69b15fa-2f87-4a63-90b3-085443157941', '人們常常把我們弄錯，因為我們看起來很相像。', 'People often mix us up because we look so similar.', 1, '1'),
('30731fe8-1f45-4f87-9ed0-3c6efe3d79a8', '673a70b8-3ed1-4646-936c-348a949f38b8', '窗簾打著密密的摺子垂著。', 'The curtains hung in thick folds.', 3, '1'),
('308442e0-6ede-433d-9024-5dee1a27a92e', '3644e56a-5aa3-49f7-a433-357ffac7157d', '她做系列講座，每次報酬5000美元。', 'She gives lectures and gets paid $5,000 a pop.', 1, '1'),
('30b39fd1-e3f0-4098-b789-461c924d4dce', '5bbab1fa-ddec-48b1-956e-1228c4de13a1', '你瞧，我終於把它弄好了。', 'There, I\'ve finally got it working.', 1, '1'),
('310f2d2a-f851-418d-ad66-a5da0061db7f', 'f8fb6fd1-c99a-4367-98bf-c643cfdffdc9', '紙張、塑膠和罐子分開歸類以便回收。', '\"Paper,  plastic,  and cans are sorted for recycling.\"', 1, '1'),
('31133c19-81ae-4c4e-93b1-fb86f394b0d4', '156a0c78-8847-4b48-9aaa-2ec960700317', '把你的大衣和帽子掛在那邊的架子上。', 'Hang your coat and hat (up) on the rack over there.', 4, '1'),
('3139f15d-2f10-472a-9514-adf4b6946611', 'e1e05f26-dcf9-4af8-b4d3-b0cbe41dd317', '妊娠檢查', 'a pregnancy test', 3, '1'),
('313e1058-cb51-4e35-b179-41679f5d19b3', '54d5ac75-2c83-4058-9175-2bfbf8d6dbcc', '請給我拿一個圓麵包。', 'I\'d like one of the round loaves, please.', 1, '1'),
('31c81621-ceaa-48e8-a2fc-9ecc1158f996', '955a242b-f842-413e-80b0-2a43186c5a4c', '這裡寫到她生於1943年。', 'It says here (= in this piece of writing) that she was born in 1943.', 2, '1'),
('31e47f67-0152-4200-a590-bf429ca1b9a5', '9ff4b2a6-f7de-486a-9888-7ac17f5307e2', '和藹的微笑', 'a gentle smile', 1, '1'),
('31f31784-7bbf-446f-9ae4-337bcfefd3f5', '0362c8c3-10ba-4f89-9a22-118ed9c658dd', '生產廠家目前正試驗這種新的引擎。', 'The manufacturers are currently testing the new engine.', 1, '1'),
('323c55ab-e229-4936-b6d9-ed2926f84f3a', '5e70048c-7f7e-49a2-a71a-eba3dffb6a31', '巧克力脂肪含量很高。', 'Chocolate has a high fat content.', 1, '1'),
('32400ae9-d190-4e57-a58b-35741ecb1372', '220260e7-57ce-41e6-9b5f-ac6b12eb224e', '我聽到砰的一聲，燈就滅了。', 'I heard a pop and the lights went out.', 1, '1'),
('3275680a-266b-411f-adae-2ed15abe2cda', 'e0026bf3-b1e5-4fd8-8c69-861517e8e825', '這個國家的人民將會繼續為爭取獨立而奮鬥。', 'The people of this country will continue in their struggle for independence.', 1, '1'),
('32c34bd5-b161-4245-966b-f64f889bd465', '21934d8a-cb83-40d9-a45e-196e7105bb0a', '她覺得把這件事告訴警方是她作為市民應盡的義務。', 'She felt it was her civic duty (= her duty as a person living in the town) to tell the police.', 1, '1'),
('332c2337-bbcb-4b61-85f0-1a7a7c3ffacc', 'e7ee4807-ba03-4292-a7e9-1503c49b3fae', '你爲甚麽一定要跑去把我生病的事告訴小布？你就是不能保守秘密，是嗎？', '\"Why did you have to go and tell Brain about my illness? You just can\'t keep a secret,  can you?\"', 2, '1'),
('332db2b4-a0e2-445f-a32f-8628abb511b9', 'ff6a49d8-0ff3-4b14-8dfd-9defe450ac92', '｢請把糖遞過來好嗎？｣ ｢給你。｣', '\"Could you pass the sugar, please?\" \"Here you are.\"', 1, '1'),
('33739df8-da4a-4732-8dc9-7541c4e59ee7', '9acb2b0e-ff43-4fbc-a2d8-8474bbe5d7bb', '蕃茄醬一沾上就很麻煩——很難把它從衣服上洗掉。', 'Tomato sauce stains terribly - it\'s really difficult to get it out of clothes.', 1, '1'),
('33957d1f-b4b4-4917-a4d1-c0e19eca9e5a', '803a2f78-8c27-4e2b-8c9f-879e5e98e37e', '在墨西哥灣的淺海水域，石油鑽塔吸引了大量魚群。', 'In the shallow waters of the Gulf of Mexico, oil rigs attract fish.', 1, '1'),
('33e33de4-425e-4381-9bc4-7fd7557c8f49', 'd30d5bc5-2800-4fe3-94ce-4fd973f12cd2', '我們需要解釋為什麼這些問題很重要並且和他們的日常生活相關。', 'We need to explain why these issues are important and relate them to everyday life.', 1, '1'),
('34eda348-5255-41f5-b9f8-78aae3306d27', '95d58901-ef65-4274-a606-e17cb37c59fc', '女士們、先生們，請大家注意一下好嗎？', '\"Ladies and gentlemen,  could I have your attention,  please?\"', 1, '1'),
('34f93d02-a779-4236-8d28-a8bc444d37b8', '1e326a1c-908d-4f3a-a98e-f15d366da1ee', '駕駛者體內血液酒精含量如超過就會違法。', 'It is illegal to drive a motor vehicle if a person \' s blood alcohol content exceeds.', 1, '1'),
('350d68e4-abc2-4c77-8d43-5fd73610f01f', 'bc2bb71f-3393-4696-b725-c229269e69ed', '他好像對生活相當滿足。', 'He seems fairly content with (his) life.', 1, '1'),
('3511cb74-24c4-41f4-95eb-0bc33fac1279', 'a3e576e1-4df4-4208-9a11-39c4a285622b', '運動會極大地改善你的健康狀況。', 'Exercise can make a big difference to your state of health.', 1, '1'),
('355aebfb-93fa-415a-97c9-bc944c2191a9', '799b4bd6-8b15-4a08-a4d9-740c6787a5fa', '在順著繩子往下爬之前，確保繩子已繫牢。', 'Make sure the rope is firmly attached before attempting to climb down.', 1, '1'),
('35ade4e9-94f1-435b-b8eb-a80c7eb27df9', 'b73b2381-2631-4c08-8baf-6b41a49931c1', '他們不像以前那樣寫歌了。', 'They don\'t write songs the way (= as) they used to.', 5, '1'),
('35e6e484-471d-4f53-8d4e-1a86653988f7', '914eb062-d227-4c87-bf26-920259dbfa5e', '澳大利亞以197分贏得了這次錦標賽。', 'Australia won the test by 197 runs.', 1, '1'),
('3681df33-e59f-4a8d-b6ec-399daa6cdfa0', '41446712-a9f1-41cb-8cbd-e2842a7ebe37', '我迫不及待地想要見你。', 'I can\'t wait to see you.', 1, '1'),
('36b0f034-30b6-4c42-be96-deeaf9ecc1be', '72122ace-71d4-4b8a-a872-67b479507575', '可可豆', 'cacao beans', 1, '1'),
('36d55d16-5f9a-4810-8093-76684b068837', '4683a7a4-0cad-45fb-b4a1-0a77a70fefcd', '孩子每週要參加兩次加減法等基礎數學能力的測試。', 'Twice a week the children are tested in basic mathematical skills such as <span class=\"word_highlight\">addition</span> (= calculating the total of different numbers put together) and subtraction.', 1, '1'),
('3705e5e9-9529-4a68-83d6-cd489ed37e97', '877a9130-6d05-4271-8e25-ec1fa46e2ba6', '會議安排在明天下午。', 'The meeting has been scheduled for tomorrow afternoon.', 1, '1'),
('373c2288-57b6-4968-a077-3d232a0b24ab', '85818e9f-78ae-4bc6-a105-e3fafe3fd249', '我這個年紀照顧不了六個孩子——太多了。', 'I can\'t take care of six children at my age - it\'s too much.', 1, '1'),
('378885fd-3171-4461-a9ec-d59af07d9fff', 'cd2f3e9e-ab9a-48da-90e7-eb658bf58d0b', '人們認為母乳餵養比用奶粉餵養好，因為母乳更為天然。', 'People say that breast-feeding is better than bottle-feeding because it\'s more natural.', 1, '1'),
('37cfa3b4-b61c-494e-ab45-a0f4c407cc8c', 'f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '我認為趕更早的航班沒甚麼好處。', 'I don\'t think there\'s much to be gained by catching an earlier flight.', 4, '1'),
('37ef6322-583e-4f37-9554-ad26e8bbac39', '17fef3ff-173c-446a-8645-76615f936af0', '星期六還得工作真是讓人不痛快。', 'Mark was ill for most of the holiday so that took all the fun out of it.', 5, '1'),
('3827a72f-788a-41a6-bddc-7f5fc36cbbe5', 'f8fb6fd1-c99a-4367-98bf-c643cfdffdc9', '我打算把這些舊書分成要留下的和要丟掉的兩類。', 'I\'m going to sort these old books into those to be kept and those to be thrown away.', 2, '1'),
('382fb6a1-e3d4-417c-b20a-c36ad2df6da2', '6c049092-6030-48a4-968e-0a8c0c3a43ea', '一塊清潔用的抹布', 'a cleaning cloth', 1, '1'),
('3863f0d7-9f1e-4d3e-85c3-6663644891b2', '427a3f2f-fdd0-4d54-ae9c-b13090cf2f28', '他誰的話都聽不進去，卻以為我們大家都會聽他的，對此我非常反感。', 'I like the way he just assumes we\'ll listen to him when he doesn\'t take in a word anyone else says! (= I don\'t like it and it annoys me.)', 6, '1'),
('38fe399c-d2a5-4f80-8b08-0c55f1159516', '11c7dd08-bb15-46e4-baf1-7015d25ac4dc', '名單上她的名字列在我的前面。', 'Her name comes above mine on the list.', 4, '1'),
('392a14a2-98b1-4361-b05d-5ffc46d948bb', 'db66ad19-331f-4f91-8cb3-7cc2fe7e9991', '我喜歡這裡。', 'I like it here.', 2, '1'),
('39d60ab5-e513-4d25-8b38-1054091b8c07', '6ccca19a-de27-4be3-881d-225466bee149', '你要考一考我一直在學的化學嗎？', 'Will you test me on the chemistry I\'ve been learning?', 1, '1'),
('39daec7c-1f28-418f-882b-9133563937d2', '17fef3ff-173c-446a-8645-76615f936af0', '愛玩鬧的小姑娘', 'It\'s no fun/not much fun (= not enjoyable) having to work on Saturdays.', 6, '1'),
('3a2738f6-c111-4025-a6eb-b5a7aa156a31', '25fa4dfd-2e85-4d1b-bae0-511ad2e7a4fc', '大多數的葡萄酒酒精含量都在12%左右。', 'Most wines contain around twelve percent alcohol.', 1, '1'),
('3a667258-6eb9-4de0-8311-055ddc2455f8', 'bc5dfe11-10c4-4445-aa3e-623a37227896', '我們到了——我說過開車不超過半個小時就能到。', 'Here we are (= we have arrived) - I said it wouldn\'t take more than half an hour by car.', 2, '1'),
('3a7ca7c0-fb4b-4126-af9b-f09b07724028', 'b96f7c8d-a2a7-442b-af23-49ed2d0a3d9b', '蘋果樹', 'an apple tree', 3, '1'),
('3ae49bf0-24cb-4838-b875-2ae9f1e466ec', 'c033ad5e-0fb7-4f41-b7eb-230a0d63c445', '他是跌下陽台還是被推下去的，這一點還不清楚。', 'It isn\'t clear whether he fell off the balcony or was pushed.', 7, '1'),
('3ae4dd2b-e56b-471a-a1ed-d667770c06d5', '46072f9c-0805-4dda-b781-d76a1307ea78', '風很大，火勢迅速蔓延開來。', 'The fire spread very rapidly because of the strong wind.', 1, '1'),
('3aed7702-39c7-4645-a377-9c27c2870dfc', 'db66ad19-331f-4f91-8cb3-7cc2fe7e9991', '過來——我給你看些東西。', 'Come here - I\'ve got something to show you.', 4, '1'),
('3b72854e-8b50-4555-9d44-af605a28b646', 'df7838a7-418e-470d-8374-01d12b646c5c', '五顏六色的服裝', 'colourful costumes', 1, '1'),
('3b84e95d-20c5-4824-b24d-79987b63bdd5', '09bf1eb0-f06a-4158-91ef-3c7f089c64b2', '工作內容不固定——每天都不同。', 'There\'s no set/fixed routine at work - every day is different.', 1, '1'),
('3b87896a-96f5-4960-ba5a-27d561aeff19', '2c2ef8de-b014-4ea1-b38d-7cd9eef7a8c8', '我16歲就輟學了，但是我的人生很成功，我沒有甚麽可遺憾的。', '\"I left school at 16,  but I\'ve had a great life and I have no regrets.\"', 1, '1'),
('3bed618d-c53a-42f0-90d3-8f102072c377', 'f8fb0143-f22b-446a-888f-81519438e318', '炊煙嫋嫋，彌漫在村莊上空。', 'Smoke from the houses hung above the village.', 2, '1'),
('3c3c1a97-74e9-4f30-a08b-74a6b35d1c48', '27e35efa-2c9a-4f81-8603-6d2c007a2250', '她不安地把身體的重心由一隻腳轉移到另一隻腳。', 'She shifted (her weight) uneasily from one foot to the other.', 1, '1'),
('3c6ccaee-1ac9-402e-a362-2e3bad5ccd62', 'f4804bbd-49da-4cde-928a-fe29e99ca939', '狗糧', 'dog food', 3, '1'),
('3c6e32ec-6d6e-4149-829c-2f1fc906eafb', '7c3354ae-5961-4dfa-8700-e257cad1baec', '他離開了，只留下一幅沒完成的畫。', 'He left with a half-finished painting.', 1, '1'),
('3ca05058-bb01-437a-b61c-89feb6700b81', '5498603e-7679-4792-b23c-f77599f22b1b', '這間中心為大家提供理財方面的專業諮詢。', 'The centre provides expert advice for people with financial problems.', 1, '1'),
('3ca8916f-1d7d-43b5-9956-aee51c891e48', '9a248f46-0303-4eea-a75f-0f341bc77cd6', '他們途徑芝加哥從拉斯維加斯飛到多倫多。', 'They flew from Los Angeles to Toronto by way of Chicago.', 8, '1'),
('3ce3e336-cf75-4d58-8449-721e9ceb332a', 'b1ccc700-9d1b-42e5-8241-285fd6e9c92a', '「我以前從未使用過這個系統。」「別擔心──你很快就會用的。」', '\"I\'ve never used this program before.\" \"Don\'t worry - you\'ll soon get the hang of it.\"', 1, '1'),
('3d069e84-4b29-42f9-b67e-5f2e20e22413', '941cf076-52ca-4104-b213-43383a540a59', '他的名字我很陌生。', 'His name was unfamiliar to me.', 1, '1'),
('3d10a92f-0c6b-4882-a5d4-43bc45a6a32b', '2de41a8f-0076-459c-9e73-a982245c0986', '她承認自己犯了一個錯誤。', 'She admitted (that) she had made a mistake.', 1, '1'),
('3d21ad60-c743-44d7-9529-73f3c77370ef', 'f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '這是個人們經常討論的問題。', 'This is a much (= often) discussed issue.', 20, '1'),
('3d5a5efd-b91b-4ac0-aba3-78582c9ad45d', '8c26da2f-6e4c-4912-99cd-7e9dc0e7bf15', '寶拉出去了一會兒。', 'Paula popped out for a minute.', 2, '1'),
('3d5becac-ba39-4158-84f4-df11e9eb19ef', 'b865efce-68e3-410f-b8d0-7c75ed4298ff', '人命關天，我們可不能冒險。', 'There\'s (= there are) lives at stake and we can\'t afford to take any risks.', 6, '1'),
('3d94b270-4b6f-4cc0-a9b7-83dd276984ad', 'd25f9384-ae75-4414-ad88-33b2782c4d2c', '他沒有他父親那樣高。', 'He\'s not as tall as his father.', 8, '1'),
('3dc4b206-d4fb-4900-81f1-95d64dafabec', '2a20ad0f-2efa-49df-8f33-b0b3599730ef', '當汽車突然起火時，人群發出一陣驚恐的叫聲。', 'The crowd cried out in horror as the car burst into flames.', 1, '1'),
('3dc504b1-3d04-4c08-8d39-7be65d418042', 'df708339-4be6-4598-99fe-4b4d19b57a77', '兩名失蹤少年的安危越來越令人擔憂。', 'Concern for the safety of the two missing teenagers is growing.', 1, '1'),
('3e5cb34d-b673-49e6-a9d3-6413a360492a', '51c7e816-8ac7-44a2-9663-72c52b2e705b', '靠打工遊遍世界後，她最後做了教師，教外國人學英語。', '\"After working her way around the world,  she ended up teaching English as a foreign language.\"', 1, '1'),
('3e7150f9-ed68-4db7-9029-19d8808415bf', '9c922889-6a3a-49c8-bb25-f2c5a0453206', '我跑步只是爲了好玩。', 'I ran but just for fun.', 1, '1'),
('3e89a0aa-742b-44b4-853d-4d7b8c00d27c', 'dde047aa-a514-4803-9f74-cfd8867e9089', '樹枝被雪壓彎了。', 'The branches hung heavy with snow.', 1, '1'),
('3e8a1d56-ad2c-40f3-b128-7fa2f8af3298', 'f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '我非常喜歡她。', 'I like her very much.', 3, '1'),
('3e90e9bd-a59f-436e-abb3-9606f91e8f16', '262ece64-3cf4-42ed-9115-5cf981ecb70d', '功能飲料可能會危害健康。', 'There are potential health risks linked to energy drinks', 1, '1'),
('3e95987e-dfd2-442f-b244-bf856ae56eaa', '0e27620e-9c84-4b8a-adb4-1a28508ec365', '看起來我得到深夜才能離開辦公室了。', 'It looks like I\'m going to be in the office until late tonight.', 1, '1'),
('3ebfaabd-a01a-4b17-a473-64d78f578681', '12cb3b1c-0b3c-47b5-9566-0fed81f6172a', '你竟然想我做所有的打掃工作——你是不是太過分了。', 'I think it\'s a bit much for you to expect me to do all the cleaning.', 1, '1'),
('3f1f6f3b-6241-4a67-a797-254f78fc8eae', 'c0946a72-c3b1-44d9-a971-163b7aed88a6', '如果你現在把披薩放在爐子裡，15分鐘就好了。', 'If you pop the pizza in the oven now, it\'ll be ready in 15 minutes.', 1, '1'),
('3f24829d-7f08-484e-8c7f-cd9ab4435833', 'a305688e-ebf6-4abd-9964-6cdd5f133fcb', '植物吸收二氧化碳。', 'Plants absorb carbon dioxide.', 1, '1'),
('3f265587-681f-42f5-899f-95939a83caa5', 'fbee00ac-4c7b-4168-a5bb-2921515c2085', '蘋果派／醬', 'apple pie/sauce', 2, '1'),
('405b9dc6-eccf-4b19-ad73-0801ffc46b49', '1af99bf7-c88b-4cd0-8152-7158cc117276', '非常歡迎所有來看演出的家長。', 'And a big hello (= welcome) to all the parents who\'ve come to see the show.', 4, '1'),
('40691131-e919-4a44-9665-09a1de0a3be1', '4eff4c7d-d6cd-49c8-adc7-6f77a63912c1', '我們確實生活在不可思議的時代。', 'We live in strange times indeed.', 1, '1'),
('409c78c4-6936-421e-8fea-af4c745f69c6', '8c26da2f-6e4c-4912-99cd-7e9dc0e7bf15', '你能上樓去看看爺爺怎麼樣了嗎？', 'Would you pop upstairs and see if Grandad is okay?', 3, '1'),
('409d7f55-17cf-418f-bb6f-a047642cb9b8', '427a3f2f-fdd0-4d54-ae9c-b13090cf2f28', '我喜歡那種碰上好書時手不釋卷的感覺。', 'I like it when a book is so good that you can\'t put it down.', 3, '1'),
('40d6b5bd-7d73-4b02-8f46-0d388d3b3356', '371bb871-1261-4ebe-917e-915d099bf85b', '發現了一包白色粉末，刑偵專家正在對其進行分析。', 'A packet of white powder was found and police scientists are analysing it.', 1, '1'),
('410a8eae-20ed-4ea5-a9b7-3c08dee5aef9', '6840f00d-1f88-4ca8-bc20-7e6a92424acd', '澳大利亞以197分贏得了這次錦標賽。', 'Australia won the test by 197 runs.', 1, '1'),
('414542a3-7f3b-40c4-a719-23334de311a4', 'c033ad5e-0fb7-4f41-b7eb-230a0d63c445', '他幫我把車推離了公路。', 'He helped me push my car off the road.', 3, '1'),
('41f2effd-1655-40f4-a38f-c7251ec88bec', '4c7490c4-3bf6-4cde-965c-c2161e093593', '別擠了，等著輪到你。', 'Stop pushing - wait your turn.', 1, '1'),
('41fd2cfd-0a84-4864-b2f3-ceebbbcc94f4', '794a88c9-d062-4d3f-ad12-76494f74d8e0', '他袋子裡的東西掉了一地。', 'The contents of his bag spilled all over the floor.', 1, '1'),
('4231938e-af0d-4b34-8def-25347107ba39', 'e0790b28-297e-4f06-8cd8-c44aa1ee5686', '一方面我想要一份薪水更高的工作，但另一方面我也喜歡現在的工作。', '\"On the one hand I\'d like a job that pays more,  but on the other hand I enjoy the work I\'m doing at the moment.\"', 1, '1'),
('428d6591-8dc5-4c01-935b-c2a95c66c3db', 'd1b7066a-b5b5-4971-b561-50850a538ad8', '他持有英國護照。', 'He\'s got a British passport.', 1, '1'),
('42d45574-901b-42ed-af34-3778f0136b5b', '6faaf918-5727-4e07-be9c-b57c28cf21cd', '演藝界競爭非常激烈——想成功就必須拚命努力。', 'Acting is very competitive - you\'ve got to really push yourself if you want to succeed.', 1, '1'),
('434c0ee3-2e32-4f9a-b5c2-fbc4f5434559', 'c46c8f6a-cfed-4192-b57e-b5770ac7b473', '你要找的那本書在那裡。', 'There\'s that book you were looking for.', 3, '1'),
('436acf95-c3dd-44a6-9cc6-97d0666c9b5a', '9a248f46-0303-4eea-a75f-0f341bc77cd6', '只有本地人才能在迷宮般的狹窄街道中找到路。', 'Only local people could find their way through the maze of narrow streets.', 10, '1'),
('436dbd02-f0c5-4bf9-addb-55a0dae561db', 'e38d3b6b-209b-42da-85d7-c5250aaed68c', '健康的成長發育', 'healthy growth and development', 1, '1'),
('4372c226-d5fc-4199-94ce-5981151fb8d5', '2e2305fe-a102-4e1c-a42d-b1a6f54a52b4', '這本書講述野牛的生殖習性。', 'The book deals with the reproductive biology of the buffalo.', 1, '1'),
('43af923c-6753-4b04-9d8d-408aa383cba6', 'd61abf77-1494-4963-a8cf-394a40d24c69', '墜機事件是因一片螺旋槳葉發生金屬疲勞造成的。', 'The crash was caused by metal fatigue in one of the propeller blades.', 1, '1'),
('43e3e93f-ac8c-429a-bf25-fc39e9acb483', 'ec5a197d-b28f-4499-b8be-8b829bec7212', '一串香蕉', 'a bunch of bananas', 1, '1'),
('44002207-296c-43dc-aa7a-09e16d3bc170', '4c7490c4-3bf6-4cde-965c-c2161e093593', '對不起，我不是有意擠在你前面。', 'I\'m sorry - I didn\'t mean to push in front of you.', 3, '1'),
('441d77c5-9151-424d-9a35-4186a2b4844d', 'f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '她既是我的母親，又是我的朋友。', 'She is as much a friend to me as a mother (= although she is my mother, she is also a friend).', 27, '1'),
('4459221e-ff59-404f-9c1a-54da4dde6617', 'e679cf9a-9a83-4422-9fdd-c2bf822fb89a', '他們在跟微軟這樣的公司競爭。', 'They\'re competing with the likes of Microsoft.', 4, '1'),
('44de5b35-63fc-4390-a9da-f35775d97d65', 'd4108515-de06-495e-83da-f926df2e14c9', '那個女人試圖用一條床單上吊。', 'The woman tried to hang herself with a sheet.', 3, '1'),
('456742ac-b729-4380-bb5c-541551cfb466', 'b341b4e0-240c-4a2d-a68a-e35f8d40b70a', '政府怎麼能不顧大多數人的意願呢？', 'How can the government ignore the wishes of the majority?', 2, '1'),
('4626a7ed-1b00-42e3-a080-bedf870f7528', '18d630b2-3e51-4aa5-8d9a-ceaf3860c8f5', '你是西班牙人嗎？', 'Are you Spanish?', 1, '1'),
('464b69c2-b50d-4623-9342-f17e65569ec1', '11c7dd08-bb15-46e4-baf1-7015d25ac4dc', '他興奮地把信舉過頭頂揮舞著。', 'He waved the letter excitedly above his head.', 2, '1'),
('46e5270b-cf55-4a8a-9842-c6c9388a668f', 'd98fc93c-f0b1-416a-8916-ba9719b97d92', '我的工作一成不變，枯燥乏味——我厭煩透了。', 'My job is so routine and boring - I hate it.', 2, '1'),
('46e6f62b-e361-41cb-b06d-a4dad5814d82', '7ed75aea-1199-42f8-949f-2ae135ce5f4e', '這次考試並不比你們一直做的課堂測驗難。', 'The exam is no more difficult than the tests you\'ve been doing in class.', 1, '1'),
('46f1a709-38e8-4057-9563-a5d867e0b251', 'a7b62b08-691e-4a76-911b-75c1ea2d3f3a', '他能感覺到繩子正從他手中滑走。', 'He could feel the rope slipping out of his hand.', 2, '1');
INSERT INTO `wordsen` (`WordSenId`, `WordDefId`, `ChiSentence`, `EngSentence`, `Myorder`, `Status`) VALUES
('47015dd9-3fba-47f9-ba82-8bc2c4624ae9', '3cde27a6-d7d8-4b03-8be4-eb28b8ef6d98', '他們號召所有14歲以上的男子參軍。', 'They\'re calling on all men and boys over the age of 14 to join the army.', 1, '1'),
('471df757-34bc-406b-bbc7-af8d330c7906', '71a40a10-303e-4c02-9499-601a18e56e79', '那是我不走運看過的最糟糕的電影。', 'That was the worst film I\'ve ever had the misfortune to see.', 1, '1'),
('47332cb1-a635-4d87-8756-1fa75fcc76db', '357d0a39-0b2b-4fe8-9f32-1b705728bbab', '我們好像很久沒有說過話了。', 'It feels/seems like (= it seems to me) ages since we last spoke.', 10, '1'),
('47a63d11-3374-47a9-a165-6b0bcb6e8d0c', 'c3c3f396-7c44-4547-875a-14f36ad637d7', '當他看到我盤子裡滿滿的食物時，問道：不餓了吧？', 'When he saw all the food on my plate, he said \"Hungry much?\"', 1, '1'),
('47a8d61e-1f24-4e58-9b5d-be17df1660ea', 'fc20dcd1-c6c6-460e-aeb0-ff818831f1e9', '我們有可靠消息說下個月將有罷工。', 'We have reliable information that a strike is planned next month.', 1, '1'),
('47d2c336-a450-4b70-8e47-a0219fc892de', '59fa0829-d790-4162-84a2-d22ff6aac833', '他輕輕地把寶寶從嬰兒床裡抱出來。', 'He lifted the baby gently out of its crib.', 1, '1'),
('480a936b-875e-4080-a6fc-fa0ae736450b', 'fe975dd5-6080-4bf6-afbe-f7c0b93e3d81', '你需要多加點醋，明白嗎？', 'You need to add more vinegar, OK?', 1, '1'),
('48e65d53-ae49-49a1-a531-6da85b829c0e', '4af3d096-3ee9-4d54-a3e3-c3d6d1bb493d', '我的意思是，我承認，我對他確實不禮貌，不過我覺得我並沒有那麼粗魯。', 'I mean, OK (= I accept that), I wasn\'t exactly polite to him, but I don\'t think I was that rude!', 3, '1'),
('490ca8bb-5e13-4081-8230-f7b87d746462', 'ef880ac2-15ee-4596-a14c-cb1b8f854dce', '我拿出錢包，發現一分錢都沒有。', 'I took out my wallet but there was no money in it.', 3, '1'),
('4921cdfe-f4e5-4f76-b155-4b3f51cb618c', '607f2bf4-c7ec-437d-ba1a-e0ad3783bd8d', '淡水魚', 'freshwater fish', 1, '1'),
('492cb680-687f-47e9-b1c8-221ffa762e78', '06083b7e-4975-45d0-8de2-a0ab55bec116', '一枚炸彈在大使館爆炸，造成數人受傷。', '\"A bomb exploded at the embassy,  injuring several people.\"', 1, '1'),
('4986ea34-ed1a-4b42-87dd-8e5126ac9007', 'a4e0b40c-aa84-491c-93b8-5ce0e3868a74', '雨林中滿是奇異的生靈。', 'Rainforests are filled with amazing creatures.', 1, '1'),
('49db8f96-ee34-4831-860c-97075e46a745', '10c9c5ed-d285-4bf6-a955-21cbf5f24aab', '他們驗了她的血，看看是否有感染的跡象。', 'They tested her blood for signs of the infection.', 2, '1'),
('4a2ec24a-fc1b-45a0-b4ae-17bbd7871d6c', '0fdacd97-9182-4d6a-9fcf-48bd3988b983', '視力檢查', 'an eye test', 2, '1'),
('4a340d46-f6ff-4f8e-aa05-8aedf0aa0134', 'dd524dc3-b4b8-4a8b-b877-c4fb3009f165', '昨天一名已定罪的殺人犯在北卡羅來納州被處決。', 'A convicted murderer was executed in North Carolina yesterday.', 1, '1'),
('4a84035b-3627-4b34-8297-660c2da9cb58', '78da3751-6f34-4eaa-8b8e-bd2c82c28352', '', '\"Salary scales vary between states.', 1, '1'),
('4b0bdbb1-b6c6-4952-98ef-82bde9d39a6b', '106b76ed-df45-4b2c-9b47-dcd06c4a2597', '新導彈目前正在進行試驗。', 'The new missiles are currently undergoing tests.', 1, '1'),
('4b22b01b-ada1-4667-a4b5-2b1ad4ddcf7c', '7c2ab278-216d-48b1-a506-65e800adab82', '視力檢查', 'an eye test', 2, '1'),
('4ba4c293-aeca-4262-a65f-21e366c09b7e', 'd387127c-a79e-47a9-b41a-e5b48c78ef45', '新年快樂！', 'Happy New Year!', 3, '1'),
('4c2b5800-e0e6-4f8c-84c6-e8179964fd10', '82bbd3bf-2355-4775-9bd4-a1de16957404', '今天班裡有一個拼寫測驗。', 'The class are doing/having a spelling test today.', 1, '1'),
('4c3e4446-f22f-4727-b582-28b7d6e5b0a4', 'df7838a7-418e-470d-8374-01d12b646c5c', '當然，這座城鎮具有豐富多彩的歷史。', '\"The town,  of course,  has a very colourful history/past.\"', 2, '1'),
('4c5b4bfe-e084-49c2-afb3-6aef5b060986', 'bc662686-0e08-4992-ac77-64655b6b34c0', '生產廠家目前正試驗這種新的引擎。', 'The manufacturers are currently testing the new engine.', 1, '1'),
('4cf385c7-2280-4cec-b245-c932095db6d4', 'e68f4b9b-ce6c-4714-9ba7-d560fd8f4dab', '對不起，我擋著您了嗎？我馬上讓開。', '\"Sorry, am I in your way? I\'ll move.\"', 1, '1'),
('4e122833-0c20-4d02-a442-adf8f8eb15aa', 'ff6a49d8-0ff3-4b14-8dfd-9defe450ac92', '給你，嚐嚐這個——味道好極了！', 'Here, try some of this - it\'s delicious!', 2, '1'),
('4e45add6-abe1-4b4b-9bbb-cc908af93782', '6fc2c02f-df46-4b1b-9936-741dfaff1a73', '那些裝飾絕對很漂亮，而且都是孩子們自己做的。', '\"The decorations were absolutely beautiful and what\'s more,  the children had made them themselves.\"', 1, '1'),
('4e890e62-23c5-4988-a56f-6048c34bc45c', '7b91891a-479c-440c-aedf-b24379c00258', '考試過後，我感到輕鬆無比。', '\"After the exam,  I felt an incredible sense of relief.\"', 1, '1'),
('4e8d8bad-2b89-4e72-925b-0d87bddca0b8', 'a16e452d-2d58-4c74-be7a-c62a6d058671', '123', 'test123', 1, '0'),
('4ec9b27b-58b3-4af4-a4ce-5a0c5b4f8cf1', '5167077f-1221-465f-908a-5486def539aa', '每當她姨媽來作客時，她總是表現很好／很差。', 'She always behaves well/badly when her aunts come to visit.', 1, '1'),
('4ee61871-0e91-45db-aa09-3974d46ceb16', '3d62c804-4480-4ec9-b792-4c5ad8444c3f', '你介意我打開電視機／放點音樂嗎？', 'Do you mind if I put the television/some music on?', 2, '1'),
('4f2ec28b-f6fa-44b4-8e3d-6d326c38a121', '95bea0ab-dd07-4156-a477-05a7fc4a62c8', '核輻射外泄給環境帶來了災難性的影響。', 'The radiation leak has had a disastrous effect on/upon the environment.', 2, '1'),
('4f658c31-07bb-4f4f-a88f-70d996a3a9d5', 'd17c3ac5-95dc-46f2-a172-1ff780ba6336', '教書這種職業酬勞過低。', 'Teaching as a profession is very underpaid.', 1, '1'),
('4f6d2817-3701-4c32-8381-698e3520422a', '7e1b8b2e-ee91-400d-818e-d8e867eb72a0', '每個人似乎都是急急忙忙的。', 'Everyone seemed to be in a rush.', 2, '1'),
('4f93406b-b254-4397-b208-e919f94d775e', 'ffa6fb7e-b0ff-4206-86b2-f488f08caf78', '我們必須考慮到社會上年輕人／老年人的需求。', 'We must also consider the needs of the younger/older members of society.', 1, '1'),
('4fb1e886-37bb-4ba7-bc59-29f5ac23840e', '847daf5f-79ad-4a23-82e5-1123a72d7a4d', '大多數人把這個品牌和優良品質聯繫在一起。', 'Most people associate this brand with good quality.', 1, '1'),
('4fbc4a0c-6636-44b3-9d79-f232cd4ed7d7', '9cc95dfb-a679-4699-86a3-b1156b964f29', '我快打噴嚏時，她遞給我一張面紙。', 'She handed me a tissue just before I sneezed.', 1, '1'),
('4fe8ce46-cf42-49d1-8cff-b53c0a3f54e7', '5747a11c-8438-4498-b586-0c638f62faaf', '針對首都的導彈襲擊在黎明時又重新開始了。', 'Missile attacks on the capital resumed at dawn.', 1, '1'),
('5067ea6c-b570-4824-84ce-aaa8c72538dd', '673a70b8-3ed1-4646-936c-348a949f38b8', '在烹調雉雞肉之前先把它掛起來晾幾天，這樣味道會更好。', 'Hang the pheasant/Let the pheasant hang for a few days for the flavour to improve before you cook it.', 6, '1'),
('506cbfe7-4535-4348-9a00-139dbb31dcc9', '25d4cff8-9d5a-41d5-b249-66444c8dbd7c', '削蘋果', 'to peel an apple', 1, '1'),
('50a2d5c7-49f2-43c5-a12c-fb0e831917ca', '8a58c6d8-dabf-4e57-95d7-eeb0d7e9d794', '你要考一考我一直在學的化學嗎？', 'Will you test me on the chemistry I\'ve been learning?', 1, '1'),
('50fa87df-d741-4e58-823d-4b78718263ba', 'bf11c8cc-2c26-4faa-9e31-0f45ae56928e', '熱／冷水', 'hot/cold water', 3, '1'),
('512a202d-ea0b-4a0b-85af-f472074c503f', '8995e4e9-0f68-4d81-b319-3b62d9feab49', '這種藥物仍處於試驗階段。', 'The drug is still at the experimental stage (= is still being tested).', 1, '1'),
('5138e32b-91f8-42a9-85f7-9c14c885f4ac', '11c7dd08-bb15-46e4-baf1-7015d25ac4dc', '洗碗槽上方有面鏡子。', 'There\'s a mirror above the sink.', 1, '1'),
('516fa981-2014-4a70-bb30-6f7728234cf1', '6124f94a-7fb4-4bed-8dfa-43b985fe2288', '我們探討了失業及相關問題。', 'We discussed unemployment and related issues.', 1, '1'),
('51c749a8-76ba-4001-b19a-efa845dcd39a', '95bea0ab-dd07-4156-a477-05a7fc4a62c8', '我覺得我睡眠太少，健康受到了影響。', 'I think I\'m suffering from the effects of too little sleep.', 1, '1'),
('51df3135-9532-4292-a07b-dc2fa40cd313', '62c9281c-8605-41d3-a9c0-2a8f51c14788', '青年／工人階級文化', 'youth/working-class culture', 1, '1'),
('51fba54d-fea8-45d6-b24a-b2c61dc7d89c', '7f24c95f-f6c3-4215-baf9-f82d21b5cb7a', '她每天晚上都擦面霜。', 'She puts face cream on every night.', 2, '1'),
('52476211-037d-426b-a784-6f8eb60ac7e8', 'f7246fed-baff-4b23-9fa1-062925232732', '晚餐之後將有一場舞會。', '\"Following the dinner,  there will be a dance.\"', 1, '1'),
('5288f520-a3ce-4d45-944c-861661fe9362', 'd3268a83-d21c-4c79-9444-bf7321f45d5e', '多數情況下，只要擺上幾盆花、幾幅畫，工作環境就能得到改善。', 'Most working environments are improved by the addition of (= by adding) a few plants and pictures.', 1, '1'),
('52abc2b8-c539-4988-8698-98e4fa3e32ec', 'fe83a97a-d07f-4d0c-9cdd-cd47e6887b84', '經常隨地亂扔垃圾的人沒有地區榮譽感。', 'People who litter often have no pride in the area.', 1, '1'),
('52c629d7-f477-4383-8dfe-6b0d0ac0eb7e', 'da74efac-3245-47a6-89ec-2279c197358c', '今天班裡有一個拼寫測驗。', 'The class are doing/having a spelling test today.', 1, '1'),
('533ba840-2d0b-4e45-b762-487b5c1132a9', 'e9fa651a-4350-4f15-a84c-e3c0ffdbbab9', '這片海灘給我一種美好的聯想，因為我曾經常去那兒度假。', 'The beach has positive associations for me as I used to spend my holidays there.', 1, '1'),
('53756f46-503a-450d-88d3-11c4c15298e5', 'e4e4b8df-1e69-4e1c-acb4-e016ca3ab6b9', '我們將隆重歡迎參議員的到來。', 'We\'ll roll out the red carpet for the senator.', 1, '1'),
('53bd4d2c-dfa7-4164-b3fa-50dff431a536', 'b73b2381-2631-4c08-8baf-6b41a49931c1', '從某一方面來說，我不太願意他們來，因為那將意味著要額外操勞。', 'In a way (= partly), I would rather they didn\'t come because it will mean extra work.', 3, '1'),
('53e0b1fd-e7ed-419c-862a-b4fcbedaf364', '52f9cc39-ce89-45a7-a495-3aef5dcdd2b0', '我的兩個兒子都對足球很著迷。', 'Both my sons are crazy about football.', 1, '1'),
('5466fcab-a38d-48fe-a77a-437efcf845a2', '1509c196-bab8-484a-9e69-485edc20b981', '恐怖電影／故事', 'a scary movie/story', 1, '1'),
('547e0009-2588-48f7-a2a5-c33a67ef8656', 'd25f9384-ae75-4414-ad88-33b2782c4d2c', '我不會告訴她。', 'I won\'t tell her.', 2, '1'),
('54d1df1f-49e1-4d41-857c-6076e1edeafc', 'dcd4a36b-c3c4-4b65-9cef-8e74e4787b48', '戰鬥英雄', 'a war hero', 1, '1'),
('54df7889-5486-4644-83fc-cf242bd1cbf1', 'c5359520-0412-40ae-a151-d9e8c5522875', '這部短篇小說的構思源自我去年的一次奇特經歷。', 'The idea for the story grew out of a strange experience I had last year.', 1, '1'),
('54f95d27-06fa-45b1-8270-6934fa4c98ec', '9e3ae348-fd01-4d56-867e-f3f2a1e21c7f', '你沒辦法負起整個活動的責任。', 'You can\'t take on responsibility for the whole event.', 1, '1'),
('5503a443-facd-4072-99e2-e26c4e3aa93f', '9f1e95a2-e4bd-4970-a7f8-12ffbe924cc3', '物價在過去一年中上漲了4%。', 'Prices have risen by an average of four percent over the past year.', 1, '1'),
('556e73e0-710d-4c1f-927d-725a47bbdae6', '357d0a39-0b2b-4fe8-9f32-1b705728bbab', '日本料理和中餐相似嗎？', 'Is Japanese food like Chinese?', 3, '1'),
('55caae6f-b2b8-4faa-a88c-8fb091a8fcc7', '06b4c035-93b2-47dd-ad63-86dd22faa23c', '「你做完了嗎？」「恐怕還沒有。」', '\"Are you done?\" \"I\'m afraid not.\"', 2, '1'),
('560c8763-802c-468c-be82-55d04806da5a', 'b2f87264-e601-4cba-b0f5-fabecfc78fad', '你沒事吧？你看上去臉色有些蒼白。', 'Are you OK? You look very pale.', 2, '1'),
('562f72fc-6ba6-4d41-907d-3f31d07c90e4', 'ddb97c0f-214c-475e-8aa6-a38659708348', '那種麵包的香味令我直流口水！', 'The smell of that bread is making my mouth water!', 1, '1'),
('56806bba-7f50-4110-9e5e-af8c930e96ac', '70a2b9f3-51bf-43a1-aeee-03e38a1f566f', '淩晨3點，她的羊水破了，嬰兒也很快就出生了。', 'At 3 a.m. her waters broke, and the baby was born soon after.', 1, '1'),
('5690f898-94c3-42d3-90ec-8f100ab679ce', '3c9ec1fb-7432-4806-9725-b65604bf135b', '她病了，所以我送花給她讓她開心起來。', 'She was sick so I sent her some flowers to cheer her up.', 1, '1'),
('56d08792-68e4-4372-bde2-78a23c8f1a00', '11c7dd08-bb15-46e4-baf1-7015d25ac4dc', '直升機在大樓上空盤旋。', 'The helicopter was hovering above the building.', 5, '1'),
('57193efe-b29f-48da-aceb-93f5bb054e7c', '333f0f89-1e41-40d2-90ba-014397356db1', '基督教', 'the Christian religion', 1, '1'),
('57256bad-45ca-440e-80ce-690526185f4b', '432f1c36-c68c-4b8c-8b1b-d03a545109b0', '澳大利亞以197分贏得了這次錦標賽。', 'Australia won the test by 197 runs.', 1, '1'),
('576aa203-4688-4723-affc-f987cff8dc4e', 'e8ca0c0b-a8b0-4819-84f6-73e82f69d1e2', '在校時，學校鼓勵我們學習外語。', 'We were encouraged to learn foreign languages at school.', 2, '1'),
('57709e97-f04c-42a6-94df-e279ecc70bc3', '3f80355d-d85c-456a-a08f-8550f35cf232', '她獨自生活，非常可憐。', 'She\'s miserable living on her own.', 1, '1'),
('578408e6-d98d-4908-aaa4-c831f7990994', '51f4b5ca-4e23-43d5-8e4d-1a9e6930568b', '他因從事恐怖主義活動而被判有罪。', 'He was found guilty of terrorist activity.', 1, '1'),
('578f5373-424a-40f9-a9e7-7b1791554f62', '0fdacd97-9182-4d6a-9fcf-48bd3988b983', '妊娠檢查', 'a pregnancy test', 3, '1'),
('57b2c191-211b-4cda-bb22-9a5a21098eeb', 'd4108515-de06-495e-83da-f926df2e14c9', '沒有甚麽確鑿的證據證明她有罪，所以很少有人認爲她應該被絞死。', 'With so little evidence to prove her guilt, few people thought she should hang.', 2, '1'),
('57cfc5b6-5be8-40e6-804d-22893af147f0', '06b4c035-93b2-47dd-ad63-86dd22faa23c', '「他會跟我們一起來嗎？」「希望不會。」', '\"Is he coming with us?\" \"I hope not.\"', 1, '1'),
('5807a931-7261-4079-8e68-1a69f9617093', '2eb425b9-be45-40d5-b75a-af3eb13136dc', '鍛煉已經成為我日常生活的一部分。', 'Exercise has become part of my daily routine.', 1, '1'),
('588a1fff-e138-4949-b7c4-20edad841a17', '49656521-e9f4-4774-86cd-e6069db11b92', '脆弱性', 'vulnerability', 2, '1'),
('589fd7d5-ad9a-4126-b985-cbeaa1bbca81', '19e5b02c-fd42-4308-b59a-f0b0ebdd90a6', '豌豆莢／香子蘭莢', 'a pea/vanilla pod', 1, '1'),
('58b7403b-a8a7-4355-8ae9-90746ebcf3aa', 'bd28bafb-5a6f-4553-817d-584fb1219004', '我不小心刪掉了那個檔案。', 'I deleted the file by accident.', 1, '1'),
('58d96d04-064c-4949-98ff-e57740366cb2', '5622d100-91ed-4de9-b7ba-5458441f62c9', '嘿，這可真奇怪——我認識那個人。', 'Hello, this is very strange - I know that man.', 1, '1'),
('58e46884-3887-4f69-8ccc-c783dad6ef21', 'bc5dfe11-10c4-4445-aa3e-623a37227896', '既然聖誕節到了，我還是放棄節食吧。', 'Now that Christmas is here (= has begun), I might as well give up my diet.', 3, '1'),
('59259ebe-0793-482e-990a-dab7f37ca843', 'cd49660f-a321-4bb2-84d7-3697c7d58fbc', '這是一本有趣且資訊豐富的書。', 'This is an interesting and highly informative book.', 1, '1'),
('595ee61b-3a25-441e-98bd-c0ace2ddd906', 'ae63c177-f7d3-4226-bb7c-eebe92cc839c', '她這人（在思想觀念上）非常傳統。', 'She\'s very traditional (in her ideas and opinions).', 1, '1'),
('596039c1-c08f-41b5-9fcd-2df8c5621d89', 'e2329603-3fec-4137-9f85-2805e38f3a4a', '我們不得不逼迫他們接受我們的條件，不過他們最終還是接受了這項協議。', 'We had to push them to accept our terms, but they finally agreed to the deal.', 4, '1'),
('59960050-5194-4322-92aa-af2a7d6b63ff', '44e0d6b2-3011-4866-80e1-2120d6e36fef', '他們正全力推銷他們的新車。', 'They\'re really pushing their new car.', 1, '1'),
('59d4dc20-1e92-4e97-aab7-07fd87ae5506', '5b3ca1ac-4ef4-4880-ab1a-1c63423f3d67', '上述所有事情一完成，我們就可以立刻開始下一個專案計劃。', 'Once we\'ve finished all of the above we can start on the next project.', 2, '1'),
('59db5c67-606c-4c4d-ba72-8c8fde6dd010', '427a3f2f-fdd0-4d54-ae9c-b13090cf2f28', '我喜歡你的新髮型。', 'I like your new haircut.', 1, '1'),
('5a306ea1-4cf4-4c5c-b2c9-337c234c4253', 'ca9b712e-a477-4170-a7f9-2e470b26514b', '委員會已批准你的建議了嗎？', 'Have the committee OK\'d your proposal?', 1, '1'),
('5a670856-ba8a-48bc-9494-c9deb53d07be', 'b2915278-a556-4d48-bf46-52fa89d4616b', '那個方法沒用，所以讓我們試試您的方法。', 'That method hasn\'t worked, so let\'s try your way.', 3, '1'),
('5a69f483-a250-4d6b-a93a-3c227a1d5975', 'bd1e06b3-27e5-421f-a3f5-04176713af2e', '蘋果派／醬', 'apple pie/sauce', 2, '1'),
('5a9517d5-75e5-4125-b99b-b959c7c2814c', '3fcaf2df-7720-40fe-8050-2ac9fb7db2f4', '如果你願意，可以早點兒來，但不是非早來不可。', '\"You can come early if you want to,  but there\'s no necessity for it.\"', 1, '1'),
('5a95fe99-d842-4a43-a983-76dd60b7cc67', '51c7e816-8ac7-44a2-9663-72c52b2e705b', '如果她繼續這樣揮霍，最後會落得身無分文的下場。', 'She\'ll end up penniless if she continues to spend like that.', 2, '1'),
('5a9ad896-ccfb-4f4c-986b-276fc5b7875a', '42e6b042-6561-4b47-9e04-693b432837a7', '那種麵包的香味令我直流口水！', 'The smell of that bread is making my mouth water!', 1, '1'),
('5aa2dedf-50e4-4f62-bf52-9ad9b545e41b', '8e2aa629-3c02-4d90-adc9-0abc917f8950', '天晚了——我們應該動身回家了。', 'It\'s getting late - we should make our way home soon.', 2, '1'),
('5abf8912-e9d0-4d42-bed2-74f33cc87334', '1af99bf7-c88b-4cd0-8152-7158cc117276', '「你好，保羅。好久不見了。」', 'Hello, Paul. I haven\'t seen you for ages.', 1, '1'),
('5b04f016-8431-4dea-9df7-eaae447b88ea', 'd23db478-e1a2-4b07-b88a-be762e35166f', '那個獎項有多少獎金？', 'What is the value of the prize?', 1, '1'),
('5b8f7e60-bae3-4d92-9f9f-524791060e16', 'e2329603-3fec-4137-9f85-2805e38f3a4a', '如果我們想在週五之前得到他們的答覆，就得催催他們。', 'If we want an answer from them by Friday, I think we\'re going to have to push them for it.', 3, '1'),
('5b932693-ba6a-4a31-b188-8e433393a2b0', '206f698d-266f-4c25-9c47-9a35aa659434', '有些人認為應該禁止拿動物做實驗。', 'Some people believe that experiments on animals should be banned.', 1, '1'),
('5bc0b42b-935b-42e6-a10d-dbf020d38dd0', 'ccf97870-55a7-4543-be93-7cac6452a13d', '「你好，我想詢問一些你們飛往美國的航班資料。」', '\"Hello, I\'d like some information about flights to the US, please.\"', 1, '1'),
('5c232dcf-91a7-4b92-9f35-3cfc35a51e19', '6d8b9e3f-0856-4438-b0f3-67fe8a90a826', '這條街我很熟悉。', 'The street was familiar to me.', 1, '1'),
('5c880b52-157e-4db7-abf5-d60385795696', '17f8d366-b7e2-4c1e-bd29-892f356eeef7', '我總是後悔在學校時沒有更加努力學習。', 'I have always regretted not having studied harder at school.', 1, '1'),
('5c98897c-e5a0-4ca7-b275-9cee8130bc58', '82823e25-1a83-4a0f-ab68-8169f13f1e64', '那個女人試圖用一條床單上吊。', 'The woman tried to hang herself with a sheet.', 3, '1'),
('5cdc4116-339f-44d7-8ca3-bdbf61a39869', '77defc4c-5c0c-43ec-a147-3671b1f41c7b', '使用少量清潔劑即可去除頑漬。', 'Stubborn stains can be removed using a small amount of detergent.', 1, '1'),
('5cf734ad-d7dc-4c02-8a09-660f370b4402', '7ea0b7ca-33f8-4124-85e6-1d0eaea22587', '廠商不知道消費者的愛好在何時變動。', 'Firms do not know when consumer tastes will change .', 1, '1'),
('5d3bc25f-7df5-4784-840b-e52571c2f887', 'de3fb1a0-ecd4-438b-9016-257ac2a07aec', '他被員警逮住前已連闖了三個紅燈。', 'He shot three sets of traffic lights (= went past them when they gave the signal to stop) before the police caught him.', 1, '1'),
('5d787ecc-d59a-4527-a452-738e592239dc', 'de33ee6e-891f-4d0b-934c-2d48eb630503', '他們用絲帶和鮮花裝飾婚車。', 'They decorated the wedding car with ribbons and flowers.', 1, '1'),
('5d80c758-4444-4154-9c69-d30a35eec9f7', '780c7524-f964-42d1-9627-01374ef681d2', '你會不會回覆？', 'Are you going to reply or not?', 1, '1'),
('5db61b08-626d-43d9-a17f-18e84768e7ed', '7c2ab278-216d-48b1-a506-65e800adab82', '妊娠檢查', 'a pregnancy test', 3, '1'),
('5e59c062-886e-4d4c-8b86-56eb90b13cd3', '66abc9ed-91a3-4050-a141-7abd4813bb9b', '萬人坑', 'a mass grave', 1, '1'),
('5e5b34d1-1e91-42fe-8ecb-1519c21e72af', 'b6856e05-12e1-4fc9-99b5-f3bbb26e64a4', '我希望在那裡能見到你，如果沒有的話，我會給你打電話的。', 'I hope to see you there but, if not, I\'ll call you.', 1, '1'),
('5e85e4e3-ee9e-4884-a25a-dd9e555d253e', 'c46c8f6a-cfed-4192-b57e-b5770ac7b473', '把椅子放在那裡。', 'Put the chair there.', 1, '1'),
('5e89b68e-c9eb-4e30-898c-467b011a26e1', 'd69b15fa-2f87-4a63-90b3-085443157941', '我想你把我和我姐姐弄錯了。', 'I think you\'re mixing me up with my sister.', 2, '1'),
('5ea1a3de-cc21-465b-8ed5-ba0093341406', 'b865efce-68e3-410f-b8d0-7c75ed4298ff', '我拿出錢包，發現一分錢都沒有。', 'I took out my wallet but there was no money in it.', 3, '1'),
('5ec3b34d-405f-4944-a57b-f622d5e732f5', 'd39a2f7e-cc27-4a42-8187-f79bc4af6129', '合乎邏輯的選擇／結論', 'a logical choice/conclusion', 1, '1'),
('5ed3e8a0-f14b-44ad-84ee-054fbdd9b3b7', '86a4a6ee-7862-4932-845b-fd86e8e9d090', '撫養孩子常要把他們的需要放在首位。', 'Bringing up children often requires you to put their needs first.', 1, '1'),
('5ed5efd0-5904-4599-a4c6-3cc942cad1de', '11c7dd08-bb15-46e4-baf1-7015d25ac4dc', '她在一家店舖的樓上租了個房間。', 'She\'s rented a room above a shop.', 3, '1'),
('5edf4e1e-099f-43d9-9668-d68b500b7cae', '2f0f7f51-8ac5-4ebd-97f7-171117f39e90', '我能把我的印表機連接到你的電腦上嗎？', 'Can I connect my printer to your computer?', 1, '1'),
('5f0962f9-12ff-4b66-b806-f860ac02f218', '2771bae7-c142-4e73-9937-502f4ec460b1', '我把盒子放在那邊了。', 'I left the boxes over/out/under there.', 5, '1'),
('5f625e33-c662-44c2-b095-9dbbc7bbce7d', 'b6a4855d-bca9-4e31-85a0-2747593f8364', '法律行動／程序', 'legal action/proceedings', 1, '1'),
('5fb24034-0437-4fd1-9a1b-02c74564e787', 'cda1a26c-76e2-4a5e-b904-2bc27218428e', '澳大利亞以197分贏得了這次錦標賽。', 'Australia won the test by 197 runs.', 1, '1'),
('5fcefea0-bb17-41ff-80a9-1778c10400c2', '8f516e33-dab2-45e6-a380-0c89398a4829', '醫療建議', 'medical advice', 1, '1'),
('6015a202-b674-4ab6-8718-06a43180edbf', '9bd50dba-add2-4bcf-9783-1422ad5f56d0', '乘坐火車仍是最安全的交通出行方式之一。', 'Travelling by train is still one of the safest methods of transport.', 1, '1'),
('60277c7a-a426-4c51-b1e7-0c996b5bd2e3', '357d0a39-0b2b-4fe8-9f32-1b705728bbab', '她的頭髮如絲綢般柔順。', 'Her hair was so soft it was like silk.', 5, '1'),
('60611c46-2199-428b-baa8-91c06633bed5', '4f22557e-d297-4266-a8b8-e8684fd65b9d', '全世界的經濟衰退', 'a worldwide recession', 1, '1'),
('60ac07cb-d54a-4a7f-97d8-16d5dd0e4f8c', 'd25f9384-ae75-4414-ad88-33b2782c4d2c', '他不胖！', 'He\'s not fat!', 1, '1'),
('60eeccf7-1919-4fea-8446-399ca8a88f42', 'b2049ed2-7327-4808-92cb-4a04fc1d0079', '你媽媽如果看到你弄得亂七八糟，她是不會高興的。', 'Your mother\'s not going to be very happy when she sees the mess you\'ve made!', 10, '1'),
('6106cd50-bb8e-4428-8080-953ddf19f07c', '19696d59-15dc-42ce-9d6e-aa7b97cf581a', '沒有咖啡——來杯茶好嗎？', 'There\'s no coffee - would you like a cup of tea instead?', 1, '1'),
('611a4a48-bf62-4bf3-9446-6967e81d6e70', '8ebb8741-61ec-4a8b-8fb4-f1c533a80973', '宗教教育', 'religious education', 1, '1'),
('6197102d-a190-4bf6-bc26-81587d731e46', '2771bae7-c142-4e73-9937-502f4ec460b1', '博物館今天關門了，我們明天再去。', 'The museum is closed today. We\'ll go there tomorrow.', 2, '1'),
('61c1a261-334b-4929-a300-b7f30ff2e7ea', '2771bae7-c142-4e73-9937-502f4ec460b1', '你要找的那本書在那裡。', 'There\'s that book you were looking for.', 3, '1'),
('61dc72fc-a0e5-43ce-8696-f78edc95f987', '8268ceb5-aeba-4c28-953c-219e73fac407', '包裝盒上標明適合三歲及以上的兒童使用。', 'It says on the box it\'s for children aged three and above.', 1, '1'),
('61fb98c1-726d-4909-95de-548c0a5d2eaf', 'a0555327-878d-4971-a1a7-0e586f4163fd', '兩座樓都在大火中嚴重受損。', 'Both buildings were badly affected by the fire.', 1, '1'),
('6241e533-30a6-4534-9d6b-c8ed59581459', '152da724-0131-4287-ac6d-91f767111e28', '吸煙和心臟病之間的聯繫已為人們所熟知。', 'The connection between smoking and heart disease is well known.', 1, '1'),
('626430d3-c675-40f3-84a7-b5ee1e3ae19f', 'f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '她無疑是這個職位的最佳人選。', 'She\'s much the best person for the job (= she is certainly better than everyone else).', 25, '1'),
('629472fb-e8f9-4984-af68-77f3922c7ad8', 'ec2bd0e2-4d17-4381-b5b7-06a44bcb7b73', '蘋果樹', 'an apple tree', 3, '1'),
('629aae9c-a3d7-4d3e-bd66-1caa20cd66a7', 'd3917b36-5202-4d25-826c-d725dd6f470a', '把檸檬對切，將汁擠到碗裡。', 'Cut the lemon in half and squeeze the juice into the bowl.', 1, '1'),
('62a38b4e-d265-4133-9eeb-167858acb80d', '3fc06a65-1590-40ff-87e6-f1bcab97dc1a', '那個記者掌握著最新消息。', 'The reporter had a red-hot story .', 1, '1'),
('62dfeeb8-e6fc-43cc-a295-b8e12417f27b', '03d3bac2-cc7f-4824-b683-64df538398af', '我們的辦事處在國王路17號。', 'Our offices are at 17 King\'s Way.', 1, '1'),
('634140da-8500-4313-aa1e-c9cb839f6269', 'f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '我寧願在家中生孩子，而不是去醫院。', 'I would much rather have my baby at home than in hospital.', 26, '1'),
('63a5236d-fcaf-4f2f-8b71-d82edaf1f2bf', '62c424ab-d131-485f-bd3e-17d93b99ae42', '我忘了她的生日，深感內疚。', 'I feel so guilty about forgetting her birthday.', 1, '1'),
('63a6640e-3f86-428e-9c5d-85eadee59d27', 'f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '我沒有足夠的時間拜訪朋友。', 'I don\'t have as much time as (= I have less time than) I would like for visiting my friends.', 11, '1'),
('63d83b01-924f-4030-bb2f-be11f956c52b', '27d0e6a4-800e-456a-ba86-5ba0fa2c619f', '這些褲子沒有褲袋。', 'There are no pockets in these trousers.', 2, '1'),
('63ec56eb-6300-4800-b647-583558dfda89', '94e25dac-47aa-4739-b54f-569c2f6853aa', '「那是你的車嗎？」「是的，怎麼啦？」（有時這種說話方式帶有一種憤怒或威脅的語氣）', '\"Is that your car?\" \"Yes, what about it?\" (= Why are you asking me?)', 12, '1'),
('6437beff-8c8c-47da-8bdb-306e067151e5', 'f4804bbd-49da-4cde-928a-fe29e99ca939', '我們可以聽到遠處的狗叫聲。', 'We could hear dogs barking in the distance.', 4, '1'),
('6438a50c-2eda-4997-861a-ee63b63c5bb5', '75b2bd95-2bd3-4b39-9faa-f4495de05c0d', '花生油', 'peanut/groundnut oil', 1, '1'),
('644e1922-0f9c-4339-afbc-9e111432763a', '047ad3ef-ba0e-4b7a-9127-90fd618686f3', '他將水徐徐注入容器中。', 'He trickled the water into the container .', 1, '1'),
('6495a3de-fe19-4cec-aa5a-b6d8a858d924', 'fe1230e5-ae8f-4477-a08c-49a9b42b5e70', '孩子需要父母的不斷鼓勵。', 'Children need lots of encouragement from their parents.', 1, '1'),
('64fef9cb-ee3e-487f-b06c-2359df4c4f71', '95c6da88-cae6-48fc-8a41-45fedb9fff52', '必須把恐怖分子緝捕歸案、繩之於法。', 'The terrorists must be hunted down and brought to justice.', 1, '1'),
('65153e93-9455-4aa9-af34-fcaf26d61e87', '3d77e6c4-7f02-401c-bc12-734def6b5f76', '我們每天收到兩次郵件。', 'We get two deliveries of mail (= it is delivered twice) a day.', 1, '1'),
('6517c144-0595-47a9-8bda-5dcd26a546f3', 'c0946a72-c3b1-44d9-a971-163b7aed88a6', '他把頭探進房間／從門後探出來說：「吃午飯了！」', 'He popped his head into the room/around the door and said \"Lunchtime!\"', 2, '1'),
('651db5cc-da60-4b8e-8d71-44b3381b3d30', 'da74efac-3245-47a6-89ec-2279c197358c', '她先接受了能力測試後才得到這份工作。', 'She had to take/do an aptitude test before she got the job.', 2, '1'),
('65a0752e-f057-40ef-bf7e-56fabf0c96dd', 'e438641e-7db4-4931-9188-e756709c10b0', '在墨西哥灣的淺海水域，石油鑽塔吸引了大量魚群。', 'In the shallow waters of the Gulf of Mexico, oil rigs attract fish.', 1, '1'),
('65f9dc9d-4b3f-4b0e-9d22-5a724aa72b19', '9a248f46-0303-4eea-a75f-0f341bc77cd6', '這裡沒有路通過去——你們得繞行。', 'There\'s no way through here - you\'ll have to go round.', 7, '1'),
('66000bae-20e6-4526-aff6-9d2bd6bfd144', '7572329e-1e07-4095-bfd0-3027b53d042c', '我只不過超重幾磅，不過好像就是減不掉。', '\"I\'m only a few pounds overweight,  but I just can\'t seem to lose them.\"', 2, '1'),
('6649c4f3-7a4d-4008-b636-d7debb5bf214', '2380129e-c303-43e1-9934-10545616a1c5', '那個講座簡直是在考驗我的忍耐力，實在太枯燥了。', 'That lecture really tested my powers of endurance, it was so boring.', 1, '1'),
('6676efa5-25cf-4db4-8c9e-075d8f5a6887', 'c46c8f6a-cfed-4192-b57e-b5770ac7b473', '我只好讓你在那裡打住，我們已經沒有時間了。', 'I\'ll have to stop you there - we\'ve run out of time.', 4, '1'),
('67059fbe-9782-4822-80ff-d06945f73aa1', '8c9bb486-2ee1-4a2f-a04c-b32459bcce47', '系統老是故障，誰也不知道是甚麼原因。', 'The system keeps crashing and no one is able to figure out why.', 1, '1'),
('67cf70e8-a30a-437c-b7ec-7d2a61d8ed35', '39a08d8b-f604-4e47-ba0b-e605491bee03', '水挺暖和的——你來游泳嗎？', 'The water\'s warm - are you coming in?', 1, '1'),
('67d44db4-c19a-4f11-a797-2c4d1be94e29', 'c420eb83-bd42-4ffa-a888-84e4c09cbfac', '在那條結了冰的路上駕車是對我駕駛技術的一次真正考驗。', 'Driving on that icy road was a real test of my skill.', 1, '1'),
('68028e0f-ebe0-4bb4-b711-4a887901cce7', 'bc5dfe11-10c4-4445-aa3e-623a37227896', '他們來了！我們還以為你們不會來了！', 'Here they are! We thought you\'d never come!', 1, '1'),
('68d85e51-c378-46bb-95b0-e0060c4f7a9f', 'c033ad5e-0fb7-4f41-b7eb-230a0d63c445', '我們把船撐離河岸。', 'We pushed the boat off from (= moved the boat forward by using pressure against) the river bank.', 10, '1'),
('68e03264-3c8d-4d95-8453-b593d53a8d8e', '7dd9adfb-f954-46e5-b0c0-731c84f88b2e', '我們一定要在六點前趕到那裡，要不然就會錯過開場。', '\"We must be there by six,  or else we\'ll miss the beginning.\"', 1, '1'),
('690e220c-804c-4bce-a46b-31475a1b1c3f', '8c10d592-6194-4ccc-bf63-c71e681c5806', '這個週末我真得修修腳踏車了。', 'I really must get my bike repaired this weekend.', 1, '1'),
('694a7e78-22c3-4557-8ab1-61f1f90ff81c', '586f7340-d3e6-4c22-8709-53d34fcd25fd', '蘋果派／醬', 'apple pie/sauce', 2, '1'),
('69572310-8348-40d6-948e-e7c30df0f4a0', 'ada02d37-f93f-4eae-b249-7a0c3e4213ef', '妊娠檢查', 'a pregnancy test', 3, '1'),
('6968d3e9-4658-4701-a42c-322fbe05a1d4', '61ca7ab6-3af1-474e-82fe-105a37cf4646', '假期過得一點也沒有令我們失望。', 'The holiday lived up to all our expectations (= was as good as we were expecting).', 1, '1'),
('6973ffc3-b1f4-4d5c-833a-3fab18bde936', '0d0f0bfc-f0a1-4116-9fd2-ae0d140da4a5', '這是菲奧娜——我來介紹她給你認識。', 'Here\'s Fiona - let me introduce you to her.', 1, '1'),
('697c519f-db46-45ea-9cfc-a78bc45f772a', 'eb267179-9edb-4afd-a143-6a1440d1a3ef', '如今誰還記得那些電影？', 'Who remembers those movies nowadays?', 1, '1'),
('698fe20f-3bc8-464e-99b8-b9b9ad200dd7', 'e741afa0-8f65-4633-b025-a2b05b25db75', '', 'the cat family', 1, '1'),
('69f0016d-4d93-4e31-ba75-955f8d644823', 'b73b2381-2631-4c08-8baf-6b41a49931c1', '從某些／好多方面來說，我們週一見面要比週三見面好一些。', 'In some/many ways it would be better if we met on Monday rather than Wednesday.', 2, '1'),
('6a5c8160-2e58-436b-b900-9a0aea44008b', '4ad960ec-2c26-4eb0-baae-4ac9dae9ea99', '我想要一份湯做頭盤。', 'I think I\'d like the soup for my starter.', 1, '1'),
('6a75b754-cc9c-4b73-8481-c3826cf4abed', 'b1cb26ba-e83d-4511-b711-1c5ea6414bb4', '如果一切不是都按她的意願來，她就會像個四歲小孩一樣生氣。', 'If she doesn\'t get/have her (own) way, she sulks like a four-year-old.', 1, '1'),
('6a8ab3dc-3d40-4b15-a45c-24da5127e330', 'fc5efb48-9bd7-4dcb-bd15-5526e37bf654', '她的沉默被認為是承認自己有罪／失敗。', 'Her silence was taken as an admission of guilt/defeat.', 1, '1'),
('6a90eaec-93e3-4488-a9bb-82150ff7f261', 'b865efce-68e3-410f-b8d0-7c75ed4298ff', '誰是最佳候選人毋庸置疑。', 'There\'s no doubt who is the best candidate.', 2, '1'),
('6a9b6f43-3241-44ed-b5af-aa36d1a399a4', '8e6cdb91-1bbf-40d8-8eb2-b7c3064eee9f', '救生艇將水手們從正在下沈的船上救起。', 'The lifeboat rescued the sailors from the sinking boat.', 1, '1'),
('6a9bc9d4-ad71-47dd-a2ec-e957b0c1c227', 'e25ae449-45a0-4641-ae3b-e4dacdf37c08', '普通的諮詢由我們總部來處理。', 'General enquiries are dealt with by our head office.', 2, '1'),
('6aa7ac40-f41e-493c-b807-1fdf06c182b2', '603e9f2a-e841-4712-8b49-895da0f8a096', '「你喂貓了嗎？」「沒有，我忘了。」', '\"Did you feed the cat?\" \"No, I forgot.\"', 1, '1'),
('6b6398d8-4b10-4918-afbd-b748b1595f6c', '673a70b8-3ed1-4646-936c-348a949f38b8', '她脖子上掛著一串粗重的金項鍊。', 'A heavy gold necklace hung around her neck.', 1, '1'),
('6b679102-5cd2-4762-9107-9c4355420013', '2bf0f4d4-ede3-4e60-9685-4976a7800909', '找到你我就放心了——我還以爲你已經走了呢。', 'I\'m so relieved to find you - I thought you\'d already gone.', 1, '1'),
('6c939f56-bec0-452a-b34d-27f547b9e35c', 'e79f9ca1-7b31-4b84-9263-2f59aaf03974', '如果你無法改變這種局面，那麽幹嗎去費這個神呢？', 'If there\'s nothing you can do to change the situation, it\'s like - why bother?', 2, '1'),
('6d0818a1-6349-4c08-ba68-b3555083062e', '56b87fe5-687c-4264-b3c9-edc73c2a45f8', '你的計算有幾處錯誤。', 'The calculations that you did/made contained a few errors.', 1, '1'),
('6d1097b3-b3f6-4470-9271-9ea88a2ae324', '095ea817-3bde-4438-8245-c9c153d4fa81', '14票贊成，169票反對——反對方勝出。', '14 ayes to 169 noes - the noes have it (= have won).', 1, '1'),
('6d18e3fc-f79b-4187-adac-f48bc2c561f0', '51d5b71f-45fd-41d4-a2f2-8e5188204836', '現在人們對環境問題的關注程度正明顯提高。', 'People are becoming far more aware of environmental issues.', 1, '1'),
('6d4c386c-c42d-40ea-a012-1a6f995aed2a', '14d6d963-6fe7-431c-936f-46ce8d706631', '淩晨3點，她的羊水破了，嬰兒也很快就出生了。', 'At 3 a.m. her waters broke, and the baby was born soon after.', 1, '1'),
('6d96ba45-130d-47fb-952a-ffa562475fdb', 'f7b2ef59-67e3-4ad2-b0df-990be204a64c', '你要考一考我一直在學的化學嗎？', 'Will you test me on the chemistry I\'ve been learning?', 1, '1'),
('6dd2c80a-7dcb-4664-9e5f-067a300d7723', 'ed6715c6-01ab-4a57-a6cb-371a2deb37d4', '生完小孩後繼續工作的女性佔多大比例？', 'What percentage of women return to work after having a baby?', 1, '1'),
('6dd82e51-1106-4d3c-8972-f87e8c23b5bb', '94e25dac-47aa-4739-b54f-569c2f6853aa', '這本書是關於甚麼的？', 'What\'s that book about?', 1, '1'),
('6e07dfcd-4d4e-48f9-b1e6-f85ce91427db', 'bca6f967-025e-4e7e-95e4-dae137de7d74', '瓶裝水嚴重破壞我們的環境，最好的方法就是喝水龍頭的水。', 'Bottled water is extremely damaging for the environment ; the best thing to do is to drink tap water.', 1, '1'),
('6e6f90e6-388c-4539-85df-f8056d39d719', '5a721e29-a29f-46a9-b694-b3a009399c87', '她先接受了能力測試後才得到這份工作。', 'She had to take/do an aptitude test before she got the job.', 2, '1'),
('6ea19fe2-fa5d-4dd9-903b-d29e1b694394', 'dbdbabfc-9d9b-4172-9ae0-877995ec0bad', '雨季的雨量不足會毀掉十億人賴以維生的收成。', 'The failure of the monsoon would destroy harvests on which a billion people rely.', 1, '1'),
('6f65c04c-d22f-4701-b97b-be041265fa39', 'd14413f6-dc85-4c32-bc88-7c221b163bb1', '你要考一考我一直在學的化學嗎？', 'Will you test me on the chemistry I\'ve been learning?', 1, '1'),
('6fb2b450-fe05-44d5-b056-0b0088e0d222', '46f10b3d-2cae-49e2-8258-f5d38c7f0e7e', '這是該地區所經歷的最嚴重的自然災害之一。', 'This is one of the worst natural disasters ever to befall the area.', 1, '1'),
('6fd116d6-cf77-4cba-9168-9bb63a16ac2b', '5e4fb13a-077b-4041-b6d6-5c07347658a0', '「你今天甚麼時候下班？」「五點左右。」', '\"What time are you leaving work today?\" \"About five.\"', 3, '1'),
('70029431-83f3-4fa0-a660-e8bf36124a91', '357b8a59-9ba1-43ab-99ce-1bca6bd3b395', '蒂娜向我挑戰，要我和她玩撲克牌一決高低。', 'Tina has challenged me to a game of poker', 1, '1'),
('70e8a0bb-e823-4a81-a9db-3b3c025bb1c4', '98277cf9-4250-4678-bf81-2c09fd16d52c', '我想去拜訪安德魯，還有馬丁。', 'I want to visit Andrew as well as Martin.', 1, '1'),
('70f56c46-e471-451d-9266-2fe3e5b965d6', 'f08114a1-2bb3-436e-98fd-e68a1c5c0e59', '緊急時刻，很多員工都自願週末加班。', 'During the emergency many staff volunteered to work through the weekend.', 1, '1'),
('715b795f-1104-4ff0-8880-16db1b91b01b', '20d11bc7-5cc5-4604-b309-1b41cbf720be', '平均氣溫僅僅升高幾度便可能導致全球性的環境問題。', 'An increase in average temperature by only a few degrees could cause environmental problems worldwide.', 1, '1'),
('716b6f9d-504b-4e35-8593-93b40d3f423d', '9ead26d0-fdab-45a6-a59e-7b487eef1601', '她的職責就是保證工程如期完工。', 'It\'s her responsibility to ensure the project finishes on time.', 1, '1'),
('717127eb-9024-4e95-b523-6a55a7df0c0c', 'ef360d46-9c75-4573-ad6b-fd3e5f61482d', '切洋蔥時你是如何使眼睛不流淚的？', 'How do you stop your eyes from watering when you\'re cutting up onions?', 1, '1'),
('71a38352-13b8-438c-80d2-f0b3526058a7', '156a0e13-e586-431d-b713-1ed51cdda902', '她花了很長時間擦洗牆上的印跡，但仍然沒有擦掉。', '\"She scrubbed (at) the mark on the wall for a long time,  but it wouldn\'t come off.\"', 1, '1'),
('71baab08-91e5-4a5c-bd0b-e35f5680cfed', 'b865efce-68e3-410f-b8d0-7c75ed4298ff', '到我回來的時候，吃的都沒有了。', 'By the time I got back, there was no food left.', 4, '1'),
('71cdd378-49c4-40c3-b0fa-577dc00d55e3', 'e8b2b0b2-bd62-45b7-8486-82b7bd2bbe09', '搜尋在風暴中失蹤水手的行動被取消了。', 'The search was called off for the sailors who disappeared in the storm.', 1, '1'),
('72464b52-4db0-43fd-852a-f60f2577f40c', '7e1b8b2e-ee91-400d-818e-d8e867eb72a0', '為甚麼早晨老是得這麽手忙腳亂一通才能準備好？', 'Why is it always such a rush to get ready in the mornings?', 1, '1'),
('7246dc03-2dee-4ab0-b70e-4d20c39335d0', 'f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '這兩所學校非常相似。', 'The two schools are much the same (= very similar).', 17, '1'),
('724c6c38-49ed-43d7-9801-e11ece7ac630', 'bf11c8cc-2c26-4faa-9e31-0f45ae56928e', '請在我的威士卡裡加一點水，好嗎？', 'Can I have a drop of water in my whisky, please?', 4, '1'),
('72580afa-f167-4625-9bde-8e28b8bb653c', '9a248f46-0303-4eea-a75f-0f341bc77cd6', '我只在馬德里住了幾個星期，所以還不太認識周圍的路。', 'I\'ve only been living in Madrid for a couple of weeks so I don\'t really know my way around it yet.', 2, '1'),
('726db16f-1100-4400-8af3-90336f52e3a0', '065fd528-c497-4d3b-8075-407d4b6126ce', '我認為我們應該嚴格限制在這個專案上的時間投入。', 'I think we ought to put a strict limit on the amount of time we can spend on the project.', 1, '1'),
('727ed456-07a6-46e4-be67-bc374b0dc2d7', 'f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '孩子都吃得不多，但他們看來很健康。', 'The children never eat (very) much, but they seem healthy.', 5, '1'),
('72851eac-e622-487e-b31e-168322e30262', 'f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '我賺錢不多。', 'I don\'t earn much money.', 1, '1'),
('728a195e-d14a-4b0e-8faa-c36c1df1ffd0', 'b985f57b-e6a8-4a05-9bac-b3a56d746df2', '嘿，這可真奇怪——我認識那個人。', 'Hello, this is very strange - I know that man.', 1, '1'),
('728f1bb9-6c44-4c66-b969-bea446e52903', '7250e043-6313-4132-ac23-0e8607d3cd52', '我們倆喜歡同一類音樂。', 'We both like the same sort of music.', 1, '1'),
('7297f6ce-c1f0-4bbc-9c51-46329f444ad2', '78da3751-6f34-4eaa-8b8e-bd2c82c28352', '', '', 2, '1'),
('72a35583-034c-431a-9ff5-8f322a44dda7', 'be15f527-d24e-483b-9b12-d45cb66cbc66', '牛仔們最終使牛群安靜下來。', 'The cowboy finally manage to calm down their cattle.', 1, '1'),
('72ca0c4d-0e7f-4405-b596-34160f06f4e5', 'f61a3570-9d6e-41eb-8176-0cf2765f7610', '這首歌升到了流行音樂排行榜的第32位。', 'The song reached No. 32 in the pop charts.', 4, '1'),
('731b5a6d-9a32-4568-8834-169a9b988d4f', '50988cb3-a69d-4c40-8fea-c240c3e09a01', '他們別指望我能容忍他們所有那些愚蠢可笑、無足輕重的個人好惡。', 'They can\'t expect me to accommodate all their silly little likes and dislikes.', 2, '1'),
('7345236a-86e0-46be-87ce-e4bc0b52641c', '48dcba1f-229a-44d9-be7f-058f7c6c9ee1', '孩子們把所有的生日氣球都弄爆了。', 'The kids were popping all the birthday balloons.', 1, '1'),
('736e3eea-981a-4dfc-b5f9-f9ff32ee7dbe', '427a3f2f-fdd0-4d54-ae9c-b13090cf2f28', '你愛吃魚嗎？', 'Do you like fish?', 2, '1'),
('737145d8-103d-4201-861a-03f4e6406900', '76552045-d678-4b05-8264-dc234d780aee', '入侵敵軍已深入到了該國北部。', 'The invading troops have pushed further into the north of the country.', 1, '1'),
('73ae18d5-4c2a-40d3-983a-89bd34720bd0', 'f196dff8-66ef-4683-a0e0-568d736043f2', '科學發現／實驗／理論', 'a scientific discovery/experiment/theory', 1, '1'),
('73e29a59-8f92-4756-b07b-8a972b74e8fe', '75adf8ef-7880-4de3-9038-c19d7e84bd27', '我們希望建築工程能提前竣工。', 'We expect the building work to be completed ahead of schedule.', 2, '1'),
('73eb2c2f-f457-4d6a-8ea5-cd1da042cdfc', '4af3d096-3ee9-4d54-a3e3-c3d6d1bb493d', '「我明天還錢給你。」「好，沒問題。」', '\"I\'ll pay you back tomorrow.\" \"OK, no problem.\"', 1, '1'),
('73ee506a-60b5-4c6c-9004-810f88203f7f', '407fc1cf-8414-4501-8a1e-4e92e2053e21', '我們把池塘中的水放乾後重新注入清水。', 'We drained the pond and filled it with fresh water.', 1, '1'),
('73fb3282-3d85-4870-89a1-35e45eb08455', '86fbf59e-fbb1-410d-8e57-fa14fc5b8106', '他寫了一首詩給她以表達愛慕之情。', 'He wrote her a poem as an expression of his love.', 1, '1'),
('74278a5a-b038-4193-abe9-4280a1076d82', '955a242b-f842-413e-80b0-2a43186c5a4c', '這個我一點都不懂，但我相信這裡的同事肯定能幫你。', 'I don\'t know anything about this, but I\'m sure my colleague here can help you.', 1, '1'),
('74286a44-f503-443b-a3d2-0a80ff4a39e7', '4c7490c4-3bf6-4cde-965c-c2161e093593', '野草從混凝土的裂縫中鑽了出來。', 'Weeds push (= grow strongly) up through the cracks in the concrete.', 6, '1'),
('748e26ea-7acf-4e83-8db6-3f36afd1eea3', '4c7490c4-3bf6-4cde-965c-c2161e093593', '她從人群中擠了過去。', 'She pushed through the crowd.', 2, '1'),
('749a2219-7da8-40c9-aa04-863f3fe60983', 'c033ad5e-0fb7-4f41-b7eb-230a0d63c445', '她把頭髮從眼睛上撩開。', 'She pushed her hair out of her eyes.', 5, '1'),
('751852b8-a587-4646-9d1b-8d437abf4077', '75adf8ef-7880-4de3-9038-c19d7e84bd27', '一切按照排程進行。', 'Everything went according to schedule (= as had been planned).', 1, '1'),
('752fd6db-2b37-4ae1-aa89-0051eca5bdf6', 'c0bbbeb1-8a30-40c6-876e-89ce144d5bee', '多年來，我們已經習慣了他那些滑稽的舉動了。', 'Over the years we\'ve got used to his funny little ways.', 1, '1'),
('7554b5a1-bdd1-40ce-993f-3a940c7aec09', 'f9e66032-7d63-4600-a56f-e7fd7940a78e', '蘋果派／醬', 'apple pie/sauce', 2, '1'),
('7563a340-4fe3-4087-a11a-83da94e23135', 'f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '這裡沒太多事可以做。', 'There\'s not/nothing much to do around here.', 7, '1'),
('758a191e-e0ab-47c6-b964-2691fe3e2f34', '44ada9b6-f485-4f2e-a0e9-7977daa61dcc', '一提到吃的，崔崔最在行。', '\"When it comes to food,  Tracy is the most knowledgeable one.\"', 1, '1'),
('75ac5a44-5ef8-4a6b-8b6d-f4c138a20778', '26004546-66f8-4238-b406-31574effd3c4', '我正好想要去順道拜訪問候一下。', 'I just thought I\'d call by and say hello.', 3, '1'),
('75e6dafb-cb9b-4767-907f-235e163579db', 'fbee00ac-4c7b-4168-a5bb-2921515c2085', '蘋果樹', 'an apple tree', 3, '1'),
('760ce53a-e4ae-4b8a-8e21-e077c49bcb67', 'd66f5043-de38-4bbd-b5ba-72f5e72f714f', '削蘋果', 'to peel an apple', 1, '1'),
('7610d0c5-df62-4097-b4d6-0eac5450ef49', '7572329e-1e07-4095-bfd0-3027b53d042c', '如果你的行李超重，要另外再付錢。', '\"If your luggage is overweight,  you have to pay extra.\"', 1, '1'),
('7612cb70-9982-4442-96b4-399892e14914', '732b4816-4952-4046-8765-c68ce62654a1', '德國是汽車生產大國。', 'Germany is a major manufacturer of motor cars.', 1, '1'),
('762e3a4f-2d3b-4c72-8062-6346448bd9a8', 'afda76fd-5eeb-4e43-a789-f5195ed4f704', '他在學校裡學習字母。', 'He\'s learning his ABC at school.', 1, '1'),
('765e4067-d126-49bb-9b83-9fbcde6b59e4', '01a2efa5-5402-446b-9ab7-4669b87940e2', '瓶裝／礦泉／自來水', 'bottled/mineral/tap water', 2, '1'),
('76a06409-5fb6-48ce-8b4a-f3875acbda40', '4747d035-7d04-466e-88c5-c90db6605d5a', '第13題到第20題的答案在第21頁。', 'The answers to nos 13–20 are on page 21.', 2, '1'),
('77211d54-1ac2-4d2a-80f1-b004635ab369', 'e245f088-6457-48d2-85d3-7706fb77e4f9', '我們正在對房屋進行擴建。', 'We\'re building an addition to our house.', 1, '1'),
('7728784f-6372-4091-800b-ed8324826a2c', '33409628-4f4a-4322-a8e3-3632bf88c3e1', '請求／乞求寬恕', 'to ask for/beg forgiveness', 1, '1'),
('775b5a97-aa17-4402-9e9d-4003e074728f', '35f7b5cc-2f9c-4523-97cc-98a4adc690a9', '做飯時，你既需要考慮飯菜的營養價值，又需要考慮飯菜的花樣和味道。', '\"When planning meals,  you need to think about variety and taste as well as nutritional value.\"', 1, '1'),
('777c1d0e-e861-4fd4-a0f0-d90ef9aee2f2', '25d4cff8-9d5a-41d5-b249-66444c8dbd7c', '蘋果樹', 'an apple tree', 3, '1'),
('77973473-0e24-4f97-9575-cb8795589f6a', 'a16e452d-2d58-4c74-be7a-c62a6d058671', '今天班裡有一個拼寫測驗。', 'The class are doing/having a spelling test today.', 1, '1'),
('77ae73c5-2f07-4e31-877d-7bc752d95758', 'd55f41eb-1c55-4ffe-a58e-01326913b8a1', '四歲的孩子好動是正常的。', 'Lively behavior is normal for a four-year-old child.', 1, '1'),
('77f8fd48-0b6c-47e1-bedf-75d954002c9a', 'df82cc3b-a83a-4aac-8cad-ec99d4a10409', '工作日期間我通常十時前上床睡覺。', 'On weekdays I\'m usually in bed by ten o\'clock.', 1, '1'),
('78507d64-52a8-4036-b2c3-bd4af9d34fab', 'd25f9384-ae75-4414-ad88-33b2782c4d2c', '我不能去。', 'I can\'t go.', 3, '1'),
('78580a44-0910-4cba-ab24-97954d923b48', '24087684-9d5e-48b7-a4dd-c34c5976a36c', '好，我們走吧。', 'Okay, let\'s go.', 1, '1'),
('785e03b8-a6aa-43a6-8c6b-c9d3bdd4fa3e', '816766ec-44e2-45ea-b2c7-3c95e1207963', '今年的奧林匹克運動會將是歷史上規模最大的體育盛事。', 'This year\'s Olympic Games will be the biggest ever sporting event.', 1, '1'),
('789458c4-452e-4105-a63a-a79d02c31376', '2b82159a-4552-4235-8422-2a4999184335', '我們現在處於生死攸關的情形下。', 'We were now in a life-and-death situation.', 1, '1'),
('78949e7b-2751-4aae-b43c-c900da8245d9', '17fef3ff-173c-446a-8645-76615f936af0', '參加你們的派對我很開心——真是好玩。', 'I really enjoyed your party - it was such good fun.', 3, '1'),
('78ad0e5f-ade3-4e6d-91d9-f8f0bad5c5b5', 'deb3ce43-6eb6-4a84-92b3-0dbfff69aa7b', '這封信如果列印出來的話看起來會更正式些。', 'It would look more professional if the letter was typed.', 1, '1'),
('78d4bcf6-248b-456c-84e0-e9b55c0df5fc', '068b0d76-e2ac-4c33-bf99-60a55c80f1ab', '他對市政委員會有著巨大的影響。', 'He has a huge amount of influence over the city council.', 1, '1'),
('78d92c45-00a9-4baa-bd7a-9a35c0faf9f8', '12c7955f-c21a-4065-90c4-3dce32eaf59e', '我還沒打定主意去哪裡。', 'I haven\'t made up my mind where to go yet.', 1, '1'),
('792068d2-8375-4ebd-8d6e-1b21bd76cd3a', 'e493402c-22bc-4a3a-b2f0-66366bec0cb9', '郵差每天給我們辦公室投遞兩次郵件。', 'Mail is delivered to our office twice a day.', 1, '1'),
('7939d7bd-6a46-498c-a038-004a2a1af287', 'b8d23b72-7120-440e-9044-29a0cc59d0cb', '那個講座簡直是在考驗我的忍耐力，實在太枯燥了。', 'That lecture really tested my powers of endurance, it was so boring.', 1, '1'),
('795b6abc-f5c1-401a-a032-7cf179048f41', 'b96f7c8d-a2a7-442b-af23-49ed2d0a3d9b', '削蘋果', 'to peel an apple', 1, '1'),
('79932713-721a-4356-ad11-42e8a9a1bfcb', 'b9881960-834d-4e8c-b605-0be965cb8698', '列印機停止工作之前，一切還算順利。', 'Everything was going OK until the printer stopped working.', 1, '1'),
('7a091866-5a7b-49c7-b532-8f5844aa3817', '11f26417-1606-4f75-b19a-ff59cb14b647', '視力檢查', 'an eye test', 2, '1'),
('7a0cb824-c2e1-4ba2-9891-4b3fd91eed42', '479a1628-5047-49ae-a072-8d2521001a3e', '嗨，你好嗎？', 'Hi, how are you doing?', 2, '1'),
('7a35ead4-9438-4762-ab7a-7d490fbfc023', '8e2aa629-3c02-4d90-adc9-0abc917f8950', '我們慢慢地沿河而下。', 'We slowly made our way down the river.', 1, '1'),
('7a5a770f-3458-4e15-99f0-d465183520e5', '80bbabbf-7cd6-494c-82ed-282e775c6439', '這項任務之艱鉅讓他們感到非常刺激。', 'She had great difficulty finding a job.', 2, '1'),
('7a67d69f-92d4-457a-a5b3-53fdc224001d', 'cc462482-a4c4-44c6-83f9-1138d0ceb773', '她放棄了一個好機會。', 'She has thrown away a fine opportunity .', 1, '1'),
('7a8e561a-e96c-4226-9c9e-5b4c3935b116', 'ff16ea64-15d2-48ea-bd09-12f49858c704', '與英格蘭相比，愛爾蘭人口很少。', '\"In comparison with England,  Ireland has a small population\"', 1, '1'),
('7ac4f648-248e-434a-be61-18e2d33ad58a', 'c1f89c63-460e-4aae-8720-b5baaa04951d', '昨天我們走了很長的一段路。', 'We walked a long way yesterday.', 1, '1'),
('7ae95ec1-ac70-4886-b24c-1810a76a9b36', '0d0f0bfc-f0a1-4116-9fd2-ae0d140da4a5', '這就是我說過要借給你的書。', 'Here\'s the book I said I\'d lend you.', 2, '1'),
('7b2c9fad-3db9-425d-8e1a-ce31d42ccc67', '5cbbb36c-fa7f-4b37-9663-743e37d03f0d', '我們的高生活水準致使我們目前的人口要消耗世界石油的25%。', 'Our high living standards cause our current population to consume 25 percent of the world\'s oil.', 1, '1'),
('7b426e0a-039c-4d28-aafc-104df24753fb', 'e2cdae6b-1999-45a1-a6aa-4991941e2b5d', '他們報告說該國南部地區突然爆發了這種疾病。', 'They reported a sudden outbreak of the disease in the south of the country.', 1, '1'),
('7b899264-4c54-4a11-8564-3ed40422fc25', '618c1339-842b-465c-a7a7-f9730709bc7b', '好啦，我想現在已經差不多做完了。', 'Well, I think that\'s about it for now (= we have almost finished what we are doing for the present).', 2, '1'),
('7b8a2dea-3542-41cf-8d8a-7e86682f6dd9', 'e11e66d5-ac1c-4ee1-bb30-83c823c3769a', '如果他還在世的話，肯定有90歲了。', 'He must be 90 if he\'s still alive.', 1, '1'),
('7bccff9d-22b9-4e52-a157-5e2d900bb1d2', 'b2049ed2-7327-4808-92cb-4a04fc1d0079', '學生時代據說是一生中最快樂的時光。', 'School days are said to be the happiest days of your life.', 3, '1'),
('7be5f3a9-e9aa-4a78-8bad-f102e473ef21', '8df61bbf-bf14-48ea-9f12-0e95c2378f44', '別的孩子總是取笑他，因爲他胖而且還戴著眼鏡。', 'The other children were always making fun of him because he was fat and wore glasses.', 1, '1'),
('7c43f062-ec4c-4f2b-8fc9-fdf474fd1e3f', '3e80e43c-589c-4267-9c63-e89a1af2b579', 'trtqwqwdqwd', '123', 1, '0'),
('7c6275e4-96ef-4118-926d-b00d3adf8b36', '4c7490c4-3bf6-4cde-965c-c2161e093593', '這些明星擠過等候的記者，拒絕與他們對話。', 'The celebrities pushed past the waiting journalists, refusing to speak to them.', 4, '1'),
('7ca12bcb-c061-4777-858b-4e548f4db105', 'd0f8d321-b386-4826-bf07-7e14909f4a00', 'X射線的過度使用，每年可能會導致250人死亡。', 'The overuse of X-rays may be causing 250 deaths each year.', 1, '1'),
('7ccff3de-c643-4eb0-8839-2a92682ee6ee', 'ce1a09e7-118e-4590-a2b3-7f1e7410006c', '那樣的錯誤會給他的信譽帶來很大損害。', 'A mistake like that will do a lot of harm to his credibility.', 1, '1'),
('7cf9a77a-1314-4e04-8ad6-df06cb89be87', '2e35bded-23c7-4b72-96ae-1d6d076ca35d', '他只需再有兩張牌就湊成一副了。', 'He only needs two more cards to complete the set.', 2, '1'),
('7d0f0a49-8d8a-449b-8c02-4be614052646', '46fdfec2-fe57-4e8b-a37e-c00a8adef249', '她是個嬌小的姑娘，皮膚呈暖調的金黃色。', 'She was a small girl with a warm golden tan skin .', 1, '1'),
('7d5815ee-aa2c-4461-8edd-e91aa36052e3', 'b990a616-1c31-4e46-93d6-8631fa4d89ce', '證人在法庭上的證供和他對警方的陳述不一致。', 'What the witness said in court was not consistent with the statement he made to the police.', 1, '1'),
('7db7b037-4e5b-451b-a438-f98a5f573c04', '3b33b0dd-be0a-47ee-a8bd-15a7a7c5143d', '我對她不太熟悉——我們只有打過幾次招呼。', 'I know her vaguely - we\'ve exchanged hellos a few times.', 2, '1'),
('7e30a369-a45d-4a78-89f1-10b67bb88c24', 'f9e66032-7d63-4600-a56f-e7fd7940a78e', '削蘋果', 'to peel an apple', 1, '1'),
('7e6fcd4c-ea16-4427-8a23-2e2044f0fada', '94e25dac-47aa-4739-b54f-569c2f6853aa', '我真為大衛擔心。', 'I\'m worried about David.', 5, '1'),
('7e8bad80-a86e-4f57-94f0-493ecbfa7268', '427a3f2f-fdd0-4d54-ae9c-b13090cf2f28', '他在工作中人緣相當好。', 'He\'s very well-liked (= popular) at work.', 5, '1'),
('7f7a1f33-26ef-4e68-980f-e9e6639c01af', '249e72c6-a830-4dec-af65-aa379ddd5c7c', '這是一座大力神的雕像。', 'This statue is a representation of Hercules.', 1, '1'),
('7fac917a-00ea-4e63-8fc4-92ab5ccbc7ca', '37969691-69d2-4f16-a734-c2f98d30e6b4', '我認為仁慈是最重要的（情操）。', 'Above all, I\'d say I value kindness.', 2, '1'),
('800de820-174e-43cb-ae69-3507c6d1fd24', '58fc6f05-50a0-47ea-b3c4-a4268b86007c', '我姐姐告誡我不要相信他。', 'My sister warned me not to trust him.', 1, '1'),
('804288ef-e2c4-40a7-9b2f-9f63ff0f7866', '429b24e9-dbd7-4374-ae3e-8d1f71bc808d', '我當然喜歡她，畢竟她是我姐姐呀。', '\"I do like her - after all,  she is my sister.\"', 1, '1'),
('80688f05-051a-48aa-8ffa-31cacf37802c', '0439df7d-d11b-440c-aa7a-d1fb1b994a59', '我們使用有害化學物品且因此對環境造成了破壞，這是件非常嚴重的事情。', 'Our use of harmful chemicals and the consequent damage to the environment is a very serious matter.', 1, '1'),
('80ab7cbc-94b7-4a01-82a3-776f4a5cf06c', 'b2f87264-e601-4cba-b0f5-fabecfc78fad', '「你一切都好嗎？」「是的，我很好。」', '\"Is everything OK with you?\" \"Yes, fine.\"', 3, '1'),
('8118f51c-1e89-432f-9773-d2953079b376', '26004546-66f8-4238-b406-31574effd3c4', '「你好，保羅。好久不見了。」', 'Hello, Paul. I haven\'t seen you for ages.', 1, '1'),
('817c8f9c-9f86-41f2-a4cb-c6ae87b750bd', 'f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '這裡的情況沒甚麼變化。', 'Things around here are much as always/as usual (= have not changed a lot).', 16, '1'),
('818c8ab1-2107-4230-a046-4cc673ba0a5a', '31b97a75-3751-4956-8fb6-ae5d879d74a8', '想像一下勞勃‧瑞福年輕時的樣子——那就是約翰的模樣。', 'Imagine Robert Redford when he was young - that\'s what John looks like.', 1, '1'),
('81c4c4ce-7596-4fbd-8102-eaeb5f72930c', '76286814-a635-4790-8e6e-0928e617a107', '研究型／核子科學家', 'a research/nuclear scientist', 1, '1'),
('81dd988c-ea8d-4407-9414-3e1ea6224b56', 'bf38847d-89c2-4f3a-ba90-bf17445167e1', '醫生囑咐他要繼續臥床幾天。', 'The doctor ordered him to remain in bed for a few days.', 1, '1'),
('81e5d3f2-9c39-491b-bdce-37b88a63a9b8', 'bf230d73-982a-498e-8798-ef6cd4da3c58', '我們從未打算與安和查爾斯同時到法國——那只是一個幸運的巧合。', 'We hadn\'t planned to be in France at the same time as Ann and Charles - it was just a happy coincidence.', 1, '1'),
('81ff883c-f47f-4966-bed2-18f12cf3e541', 'c46c8f6a-cfed-4192-b57e-b5770ac7b473', '我把盒子放在那邊了。', 'I left the boxes over/out/under there.', 5, '1'),
('821bf3e1-e3f2-4aa7-8113-763f597df26c', '38416486-570b-4588-a3d1-9491719f8584', '十年來的酗酒和濫用藥物毀了她的健康。', 'A decade of heavy drinking and popping pills ruined her health.', 1, '1'),
('82be2a39-c9c1-47cb-8a52-4b8219ace5e4', 'f68c53a3-7413-43d4-be08-485c51fa9ce0', '他想找一份工作，可以用到他的多門外語知識。', 'He wants a job in which he can apply his foreign languages.', 1, '1'),
('82cd40c0-5615-4734-8f59-affb47bb590c', 'e679cf9a-9a83-4422-9fdd-c2bf822fb89a', '他是個非常了不起的演員——沒有人能達到他那樣的水準。', 'He was a very great actor - we won\'t see his like again.', 2, '1'),
('82e943fd-a160-4b4f-bde5-b76206bc6a3f', '8c26da2f-6e4c-4912-99cd-7e9dc0e7bf15', '我剛去銀行領了些錢。', 'I\'ve just got to pop into the bank to get some money.', 1, '1'),
('833a60c6-8625-4de4-933c-100d191fe263', 'b242721f-6100-4b33-af03-7ddb8a9985bd', '超過200人為我的文章加讚了。', 'More than 200 people liked my post.', 2, '1'),
('83ef5907-d6ab-4e47-96dd-375498b1ec13', 'b2049ed2-7327-4808-92cb-4a04fc1d0079', '她看起來非常快樂。', 'She looks so happy.', 2, '1'),
('844e84d3-bfd0-44d9-a99d-6b2c0349b2d2', '357d0a39-0b2b-4fe8-9f32-1b705728bbab', '你的舉動像個十足的白癡！', 'You\'re acting like a complete idiot!', 6, '1'),
('84508afe-348e-4789-988f-c7698334859c', '11c7dd08-bb15-46e4-baf1-7015d25ac4dc', '燈具上方的天花板上已經出現了一道裂縫。', 'A crack had started to appear just above the light on the ceiling.', 7, '1'),
('8476efd9-308a-4a7a-95a2-f6117b144945', '3e790ffc-971f-4f7b-9c08-0f3fb81dab10', '已經給馬餵過飼料飲過水了。', 'The horses had been fed and watered.', 1, '1'),
('849d8468-e181-4f39-8636-9ec306ca5cda', '94e25dac-47aa-4739-b54f-569c2f6853aa', '我們正談論／笑話索菲呢。', 'We were talking/laughing about Sophie.', 3, '1'),
('84c9e1ad-29d4-4b07-b81d-c607355de895', 'c033ad5e-0fb7-4f41-b7eb-230a0d63c445', '要打開電視機，你只要按一下這個按鈕就行了。', 'To turn the television on, you just push (= press) this button.', 8, '1'),
('84dd4a7a-2c6f-4ad8-b984-b8a4cfd683cf', '025eb192-b1a8-4a48-bd19-0ea19d57cb38', '頭等艙是供上層人士使用的——不是給我們這樣的人準備的。', 'First-class travel is for rich people - it\'s not for the likes of us.', 1, '1');
INSERT INTO `wordsen` (`WordSenId`, `WordDefId`, `ChiSentence`, `EngSentence`, `Myorder`, `Status`) VALUES
('84e64a49-1f98-4b92-9961-af0827c3b8ad', '11f26417-1606-4f75-b19a-ff59cb14b647', '醫生做了一些檢查，想查出她的問題出在哪裡。', 'The doctors have done some tests to try and find out what\'s wrong with her.', 4, '1'),
('86052fb1-b959-474a-a432-c5aba3729e3e', '7ed75aea-1199-42f8-949f-2ae135ce5f4e', '我對這些問題興趣不大。', 'The issues are of no great interest (= only a little interest) to me.', 2, '1'),
('861bc267-5d6d-418c-a235-51953f44f595', '98222c3c-7b52-46db-bbc4-2858cabedd2c', '軍隊正繼續朝首都挺進。', 'The army is continuing its push (= advance) towards the capital.', 1, '1'),
('864a7286-d85a-4135-a15d-00c06198a759', '0e27620e-9c84-4b8a-adb4-1a28508ec365', '聽起來你似乎應該換個工作。', 'It sounds to me like you ought to change jobs.', 3, '1'),
('8664b7ea-eb42-4596-83cd-bf533f516669', 'dd8b6a7b-ab28-40c2-919f-a437f6f17beb', '炊煙嫋嫋，彌漫在村莊上空。', 'Smoke from the houses hung above the village.', 2, '1'),
('869364f7-d189-4aae-8fc1-c09670aa59d9', '4e27d943-7373-4e1f-8c55-bb8021fe7a18', '我都不知道他生病了。', 'I wasn\'t even aware that he was ill.', 1, '1'),
('86a73de8-cfb7-4fac-9d3d-af1eb2d9e273', 'c0c7bf3f-9293-4e4b-950b-f4cd74479c43', '該城的大部分老城區都在戰爭中被炸毀了。', 'Most of the old part of the city was destroyed by bombs during the war.', 1, '1'),
('86e3c288-7cfb-4263-b432-4bf77078a9e8', '7720f3bf-f2ff-4912-b7c0-52b68997a191', '聯合國已決定實施制裁。', 'The UN has decided to impose sanctions.', 1, '1'),
('8700afba-531f-4c61-aeac-ee47f0214dba', '4c7490c4-3bf6-4cde-965c-c2161e093593', '他們擠到了隊伍的前面。', 'They pushed (= forcefully made) their way to the front.', 7, '1'),
('8726cf2b-9991-40ac-bf61-236862a1c4a0', 'b384a4cb-30c0-49e6-ad86-8240690ceefa', '他算了一下要賺兩年的錢才夠買輛車。', 'He\'s calculated that it would take him two years to save up enough for a car.', 1, '1'),
('877b369b-17ed-4d7b-8b09-354ece50b62d', '17fef3ff-173c-446a-8645-76615f936af0', '「本週末我們要去野餐。」「真開心！」', 'a fun-loving girl', 7, '1'),
('87a71874-4732-4ce5-9d65-099d126e291a', 'dd7c4de8-edae-4f89-96e2-b9ce9e586ec2', '他知道自己做錯了事，於是羞愧地低下了頭。', 'He knew he\'d done something wrong and hung his head in shame.', 2, '1'),
('87b80eda-a97f-4cf9-a373-e8fe525c9203', '2070b958-ec1a-4cf3-a0b0-7a37f3cf9114', '人們過去常來這座城市享用這裡的泉水。', 'People used to come to this city to take (= drink or swim in) the waters.', 1, '1'),
('87dcf414-70b8-4ca5-8bad-bc386a7bbf85', '9b6f2417-7a60-4320-a238-3aa1c73bc122', '他們要提高煙草稅。', 'They\'re increasing the tax on cigarettes.', 1, '1'),
('87f0de7c-e650-48ef-8faa-662cbc608bb0', '11f26417-1606-4f75-b19a-ff59cb14b647', '妊娠檢查', 'a pregnancy test', 3, '1'),
('880a23a8-5e6e-40fe-ba23-1705f78732b9', '4ac16d03-2008-43c8-a955-8b1fd998719e', '我聽見廚房裡嘩啦一聲巨響。', 'I heard a loud crash in the kitchen.', 1, '1'),
('88149e96-344b-4811-a2fa-2348cc029e8f', 'af3585db-e4da-4481-9a86-6f9192839396', '石油用作生產多種紡織品。', 'Oil is used in the manufacture of a number of fabrics.', 1, '1'),
('8865b936-8b98-4d8e-ad67-3344bc0aa4f7', 'b2f87264-e601-4cba-b0f5-fabecfc78fad', '寶拉怎麼樣了？她昨天摔了一跤，現在還好嗎？', 'How\'s Paula? Is she okay after her fall yesterday?', 1, '1'),
('8913b08c-208d-428d-8d59-77135bd4dc85', '1bcf1c93-e270-49de-b5fb-e461aaeb1aec', '女孩們想參加女童子軍軍團。', 'The girls wanted to join a Brownie pack (= group).', 1, '1'),
('8914e5e1-9d58-47b8-8b89-c635eedebe6b', '52c6e7a2-6caf-43f9-8c59-d3b226b85fee', '十年後，她最害怕的事情發生了。', 'Ten years later her worst fears were realized.', 1, '1'),
('893783e6-3900-4540-ae9e-8c51ee8da682', '79c1ba8b-7d37-4ec9-aa38-c5e6fb7bd4f0', '在東向車道上發生了一起交通事故。', 'An accident has occurred in the east-bound lane.', 1, '1'),
('896aa952-757a-4c57-9677-4c1d7eb90e3e', '357d0a39-0b2b-4fe8-9f32-1b705728bbab', '我有一件和那件一模一樣的毛衣。', 'I\'ve got a sweater just like that.', 4, '1'),
('8984a55f-6aa7-42ab-9494-1bbb2079375c', 'e7ee4807-ba03-4292-a7e9-1503c49b3fae', '那麽要成爲好廚師，有甚麽秘訣嗎？', 'So what\'s the secret of being a good cook?', 1, '1'),
('89888313-0deb-4c40-89b7-b165b4719928', 'df828fd5-545e-4f41-a654-67500524648e', '她的部門負責監督各市政會的工作。', 'Her department is responsible for overseeing the councils.', 1, '1'),
('89bd6190-d42e-4361-bd84-4198718b699d', '11c7dd08-bb15-46e4-baf1-7015d25ac4dc', '就在你頭頂上方的架子上。', 'It\'s on the shelf just above your head.', 6, '1'),
('89cbe86b-cc09-4907-b664-02bb629c1b7c', '9a248f46-0303-4eea-a75f-0f341bc77cd6', '長途汽車停下來讓我們吃午飯，不過不到半小時，我們又上路了。', 'The bus stopped for us to eat lunch but within half an hour we were on our way/under way (= travelling) again.', 6, '1'),
('89e8d2f1-61fa-4a15-914c-bd48f219db23', '56e40b97-7621-4806-a534-f35efd6728ef', '妊娠檢查', 'a pregnancy test', 3, '1'),
('8a089d5b-773c-4b37-b196-90033e243e45', 'a662dfe6-1000-4025-b1ed-c50cba0b9df6', '一些化學品因對環境有破壞作用已被禁止使用。', 'Certain chemicals have been banned because of their damaging effect on the environment.', 1, '1'),
('8a214afe-f0d7-4d80-b450-bacf99fbc231', 'd9ab5c0b-c443-47e5-a9ee-da707fb0c887', '我不喜歡把頭浸在水裡。', 'I don\'t like getting my head under (= in) water.', 2, '1'),
('8a3730a2-68bd-488f-94f2-61bfa93ffdd5', '5922bee8-5217-4b7f-8e7e-f4a12d7ea814', '從前有一個窮寡婦，她有個漂亮的女兒。', 'There once was/lived a poor widow who had a beautiful daughter.', 1, '1'),
('8ae4d7e7-f170-4ab8-b336-89fb07da17ad', '13ad065e-9749-44af-8881-add4b0450947', '足球喚起了球迷巨大的熱情。', 'Football arouses a good deal of passion among its fans.', 1, '1'),
('8b0264f2-cd6e-45c1-a9db-d48f2e05cae8', 'f89c53b3-e6b1-43c0-965c-d8b1e36cdaf3', '年邁的親戚／父母', 'elderly relatives/parents', 1, '1'),
('8b1bf4c7-d912-4bbe-bcc4-7e05b22f3284', '80bbabbf-7cd6-494c-82ed-282e775c6439', '我們非常艱難地完成了工作。', '\"We finished the job,  but only with great difficulty.\"', 1, '1'),
('8c41a04c-36f8-4ba1-9291-494d95a4b2c6', '357d0a39-0b2b-4fe8-9f32-1b705728bbab', '我說過了，我不用香水。', 'Like I said (= as I have already said), I don\'t wear perfume.', 8, '1'),
('8c627075-906a-4aa4-9d39-f35734b23242', '3b33b0dd-be0a-47ee-a8bd-15a7a7c5143d', '非常歡迎所有來看演出的家長。', 'And a big hello (= welcome) to all the parents who\'ve come to see the show.', 4, '1'),
('8cc72fd3-5d98-4be7-b7d9-318277e5f879', '7d80e195-7238-434f-955d-d0205e90008f', '發現石油後，這個小鎮變成重要的商業中心。', 'The town turned into a major commercial centre when oil was discovered.', 1, '1'),
('8d813a37-4963-486d-a6f0-64b868b970d6', 'dc0fdf86-acac-4c55-a7b1-e0e886a851cb', '我玩得很開心，都不願意離開了。', 'I was having such a good time I was reluctant to leave.', 1, '1'),
('8dd0213a-e0b5-4ccc-85fa-7e49b28e3f80', '357d0a39-0b2b-4fe8-9f32-1b705728bbab', '他長得像他哥哥。', 'He looks like his brother.', 1, '1'),
('8e09f5e3-a904-4333-8aca-aead3f2e1393', '818b0652-20ce-4075-8a5e-2808f43f7b9d', '西方國家的觀點／文化', 'western opinion/culture', 1, '1'),
('8e2ddf6e-299b-44ed-8530-1548d9f51acb', 'c855a7f4-57c6-49c0-b4f0-5b71f1668587', '我們計劃走的路線正好穿過希臘。', 'The route we had planned took us right across Greece.', 1, '1'),
('8e9c0aff-09af-4e33-8baf-555859615772', '4c7490c4-3bf6-4cde-965c-c2161e093593', '在賽跑的最後一圈他奮力衝到了前面。', 'In the final lap of the race, he managed to push (= move strongly) ahead.', 5, '1'),
('8f89b8ec-4751-4acb-8823-7e0d68f19c54', 'ef880ac2-15ee-4596-a14c-cb1b8f854dce', '人命關天，我們可不能冒險。', 'There\'s (= there are) lives at stake and we can\'t afford to take any risks.', 6, '1'),
('8f976f6f-38f0-4e36-be8d-4ac17305d58f', '2ed16560-482e-4f17-80e7-7182b9491db0', '跑過第三圈後，她已遠遠落後其他運動員。', 'After the third lap, she was way behind the other runners.', 1, '1'),
('8fc563a2-74d2-43d6-88e7-6946cba446d4', '9773f80a-31fb-4245-a900-b52de68f6061', '他惡狠狠地看著我。', 'He looked at me in a sinister way.', 2, '1'),
('8ff5f567-7c50-491d-8d78-facc6c7a4d51', 'a6fbe59d-87dd-4909-a02c-bfb2aa843e4c', '在這次火車撞車事故中幾名乘客受了重傷。', 'Several train passengers received/sustained serious injuries in the crash.', 1, '1'),
('9058a277-6ca7-46c3-9c8c-b1eae336a075', '156a0c78-8847-4b48-9aaa-2ec960700317', '聚會裝飾物從天花板上垂下來。', 'Party decorations hung (down) from the ceiling.', 2, '1'),
('90627353-70a6-4464-990d-86f937be413a', 'd7ddb950-5411-40ec-89d0-aa77e529ad41', '她親眼目睹丈夫被持槍歹徒殺害。', 'Her husband was murdered by gunmen as she watched.', 1, '1'),
('9085b4c0-64a3-4500-96e9-3b4ef9986c04', '74fcb800-7f03-4358-bd43-d379aac61c16', '那船逆著潮水緩慢地前進。', 'The boat made slow headway against the tide .', 1, '1'),
('90a54a34-4a7f-4cd0-9352-fcaae17ae9d8', '12b39b2f-cfa2-46dd-87a4-191c830d3718', '她先接受了能力測試後才得到這份工作。', 'She had to take/do an aptitude test before she got the job.', 2, '1'),
('90aab568-1a64-4d90-b5a8-52fe76ad8670', '52393206-737d-47b0-bbf2-1724d5c5c389', '測量器顯示溫度在冰點以下。', 'The gauge indicates a temperature below freezing.', 1, '1'),
('90b1d6c6-dbe0-44a4-a034-456d067b9b8b', 'b73b2381-2631-4c08-8baf-6b41a49931c1', '他可能要被迫辭職或被降職，但不管怎麼說，他的事業實際上已經結束了。', 'He might have to resign or he might be demoted, but either way, his career is effectively over.', 4, '1'),
('90b2498f-35d0-465f-88bf-bf3cf0004c65', '8cdad13a-773d-4b66-8840-5f560e771ce5', '聖露西亞島的收入靠的是其清潔的近海水域。', 'St Lucia depends on its clean coastal waters for its income.', 1, '1'),
('90dc1d8a-bf61-4df8-b7f6-aa69927c1242', '17fef3ff-173c-446a-8645-76615f936af0', '這段感情是註定不會有結果的，不過過程很開心。', '\"We\'re going on a picnic this weekend.\" \"What fun (= how enjoyable)!\"', 8, '1'),
('90fc4ebb-cdce-4fec-bdb2-928bd23edbf1', '5e8c6079-2f7e-42a3-a772-f70c6fd33c1f', '今年我們要生產幾款牙膏的新品種。', 'This year we will produce a new line in toothpaste.', 1, '1'),
('9125c9bb-8f81-46ad-9129-3c08acf87974', '479a1628-5047-49ae-a072-8d2521001a3e', '喂，那位！', 'Hi, there!', 1, '1'),
('915d69d6-fba2-4de9-b3da-21236b6ded67', 'a4c90c91-e26c-4ece-a14e-947c3ae27bbe', '我記得小時候我對她有那麼多的玩具羨慕不已。', 'I remember when I was a child being very impressed with how many toys she had.', 1, '1'),
('91879b19-15cb-4c57-b818-381da8fee388', 'da10838a-87e3-41f1-ac74-8bfecc0b106e', '這麼年輕的網球選手居然打得那麼好。', 'That was an impressive performance from such a young tennis player.', 1, '1'),
('92504e81-1a3f-44bc-8a43-82a83043d211', 'bad92f6d-badd-43d0-91ff-f330ecf8e726', '達裡奧‧福是著名的義大利劇作家，和皮蘭德婁齊名，只是劇作較流行通俗。', 'Dario Fo, the famous Italian playwright, is a pop Pirandello.', 1, '1'),
('925b35cd-068e-4389-8ba0-a35d9d72bbbd', '72f66427-c340-4386-818e-3acd630abfb5', '今年我們收成不錯。', 'We had a good harvest this year.', 1, '1'),
('9265fa9c-eb57-41d1-afb4-03300dd64799', '32019b29-9cb5-4efe-80b7-245978f72184', '記者們跟著他讓他回答問題。', 'Reporters dogged him for answers.', 1, '1'),
('9276aba2-8c8a-4c9d-8fba-c8e34824b330', 'a8bdc4e6-4b05-404b-864e-7b76507e5c01', '她在一家生產電子產品的公司工作。', 'She works for a company that produces (= makes for sale) electrical goods.', 1, '1'),
('9280d277-a4df-43f7-8d62-663a355d60fc', '063c3035-62cd-440b-a73c-8974dd5843e8', '香蕉奶昔', 'banana milkshake', 2, '1'),
('92b349f9-0119-4147-ad88-2900661fcd44', 'd66f5043-de38-4bbd-b5ba-72f5e72f714f', '蘋果派／醬', 'apple pie/sauce', 2, '1'),
('935d2974-dea6-4ca6-a87f-fe9aaead1668', '94e25dac-47aa-4739-b54f-569c2f6853aa', '你做咖啡的時候能不能給我也來一杯？', 'Could you make me a coffee too while you\'re about it (= while you are making one for yourself)?', 8, '1'),
('940406ea-6e02-44ce-b61a-dadde7ec3412', '6adc2d5e-c622-4975-b6b3-1f60a590a911', '通常我會提前一兩天作出計劃。', '\"Normally,  I plan one or two days ahead.\"', 1, '1'),
('9423acec-8042-47b9-ac36-51031e3a9bf4', 'ec88909f-a5f7-4171-a3a7-fbe3c359d153', '心形是愛的象徵。', 'A heart shape is the symbol of love.', 1, '1'),
('94411841-1dda-4ee6-bf78-2981eb9201b8', 'b341b4e0-240c-4a2d-a68a-e35f8d40b70a', '她有時會特別煩人，不過我盡量不去理會她。', 'She can be really irritating but I try to ignore her.', 1, '1'),
('94783402-3f40-4756-a82f-4e00cf099dca', 'b2915278-a556-4d48-bf46-52fa89d4616b', '這樣做不對——讓我給你示範。', 'That\'s not the way to do it - let me show you.', 2, '1'),
('94814d10-bbd3-427a-8f26-8ac25a30d0e6', '1cecce8e-0ff3-4f32-8059-3cba094a3479', '進入那間學校要經過激烈的競爭。', 'There\'s fierce competition to get into that school.', 1, '1'),
('9552953c-c97c-48ad-ae55-57c8bcb60805', '7892d4e2-03e8-4cde-8d37-d5905182af7f', '香蕉奶昔', 'banana milkshake', 2, '1'),
('95aba67e-899d-43b9-a34e-0bea4e2f4ddc', '7892d4e2-03e8-4cde-8d37-d5905182af7f', '一串香蕉', 'a bunch of bananas', 1, '1'),
('95e5e53e-24d1-46fd-942d-27dcc6438faf', 'e1e05f26-dcf9-4af8-b4d3-b0cbe41dd317', '視力檢查', 'an eye test', 2, '1'),
('95f447f0-def9-4a8f-a731-b4761ca116bc', '3b33b0dd-be0a-47ee-a8bd-15a7a7c5143d', '「你好，保羅。好久不見了。」', 'Hello, Paul. I haven\'t seen you for ages.', 1, '1'),
('960adee0-4873-45ac-b990-b5d9feb4aa2b', 'b2049ed2-7327-4808-92cb-4a04fc1d0079', '要是知道尚和我們一起前來，你會很高興的。', 'You\'ll be happy to know that Jean is coming with us.', 5, '1'),
('961084d1-de8c-4b2d-a7a8-4e119a2b8579', '6c234cbb-bb37-4ddb-9425-9a942fe06711', '約有2%的速食包裝會被人當作垃圾隨手扔掉。', 'About two percent of fast-food packaging ends up as litter.', 1, '1'),
('961186f0-f9ed-47f7-9ee1-407334ddb8a5', '00cbbc34-a0a9-46ca-8c4a-1728ba398f22', '他為改善工廠工人的工作條件做了許多工作。', 'He did a lot to improve conditions for factory workers.', 1, '1'),
('96707370-5e14-4d86-a8b4-261398e9443f', '8e4e3a59-a21b-4d08-af9a-a8998d39cc16', '這樣的措詞不適合這種場合。', 'It wasn\'t a happy choice of phrase given the circumstances.', 1, '1'),
('96909227-ed54-4ea3-83f8-702f14d38ad9', 'b0f0cf2f-1ef5-4482-bb64-958ba6bc05cc', '精確距離是1.838公尺。', 'The exact distance is 1.838 metres.', 1, '1'),
('96da25d1-484b-41f0-bd66-6ae9439c8450', '154ef43e-17cd-4bb2-b00e-3312b6de8446', '他們選了一位著名律師為他們出庭辯護。', 'They chose a famous barrister to represent them in court.', 1, '1'),
('96fee01e-09d1-4fe0-9148-442eb062e683', '27d0e6a4-800e-456a-ba86-5ba0fa2c619f', '那是我的度假方式——沒有電子郵件，沒有電話，也沒有煩惱。', 'That\'s my kind of holiday - no email, no phone, and no worries.', 3, '1'),
('97231d94-a1e5-4233-a5be-c6b8ba95ef4b', '7e7a35cb-bd98-4ba0-97cf-81b9df1cbcc9', '大家都在為準備迎接女王來訪而忙碌。', 'There was a lot of activity in preparation for the Queen\'s visit.', 2, '1'),
('9738e62c-4125-4512-95c1-ab3ffd31194d', 'ec5a197d-b28f-4499-b8be-8b829bec7212', '香蕉奶昔', 'banana milkshake', 2, '1'),
('9752bc94-2238-4482-9637-9b6253646d5b', 'd21df3f6-04e6-446e-8268-6bb90cc470db', '他和新娶的妻子之間的關係很緊張。', 'Relations between him and his new wife are rather strained.', 1, '1'),
('9790eddd-952d-4f17-b2be-c02e62e56430', '917fda1c-9576-4c63-bf6f-24b18f870ff4', '他們的東西被淩亂地丟在房間裡。', 'Their belongings were flung about the room.', 1, '1'),
('97baecf6-3393-4261-b034-0d6e02c86749', 'cf622dcf-422f-42c2-b192-4c2a8c5c1c31', '他對上帝的信奉使他在困境中看到了希望。', 'His belief in God gave him hope during difficult times.', 1, '1'),
('97e21a9e-edd2-4290-a2c8-5b84aed2e240', '427a3f2f-fdd0-4d54-ae9c-b13090cf2f28', '他喜歡吃熟透的牛排。', 'He likes his steak well-done.', 9, '1'),
('97e50232-8b27-42e1-a3b8-eb12e8161b68', 'd0ca2c31-12c9-4d7f-8f05-34b02a41c83c', '在那條結了冰的路上駕車是對我駕駛技術的一次真正考驗。', 'Driving on that icy road was a real test of my skill.', 1, '1'),
('97eaf296-e2e0-4347-96e2-6c44a8bf8219', '4a44da5b-8415-47cd-af6f-d41fd36a89b4', '醫生和護士日以繼夜地工作，救治那些火車相撞意外的傷者。', 'Doctors and nurses worked round the clock to help those injured in the train crash.', 1, '1'),
('9831f29a-0966-438a-b843-9e2960ff32ff', '0e27620e-9c84-4b8a-adb4-1a28508ec365', '我看天要下雨了。', 'It looks like rain (= I think it is going to rain).', 2, '1'),
('983dc2c6-11e5-46c6-a5f9-49504093422f', '9773f80a-31fb-4245-a900-b52de68f6061', '看他大喊大叫的樣子，還以為他受了重傷。', 'The way he was shouting, you\'d have thought he was badly hurt.', 4, '1'),
('98654e25-d62c-4a98-8fd6-5382b98c65a9', 'dde047aa-a514-4803-9f74-cfd8867e9089', '他知道自己做錯了事，於是羞愧地低下了頭。', 'He knew he\'d done something wrong and hung his head in shame.', 2, '1'),
('9870fc93-b50c-4c7c-83b0-1f99118475ae', '45f967c0-744a-4441-acc1-cabcf670aa4d', '像孩子一樣天真地信賴某人', 'childlike trust', 3, '1'),
('987c5650-c701-4c4c-825b-634cf8800c06', 'c47c5661-378b-4f3e-b370-38ca27823838', '澳大利亞和紐西蘭從前是英國的殖民地。', 'Australia and New Zealand are former British colonies.', 1, '1'),
('98d2d8d0-05f7-43d9-84f1-6cdcff98869a', 'deb3ce43-6eb6-4a84-92b3-0dbfff69aa7b', '這兩位醫生都被控瀆職。', 'Both doctors have been charged with professional misconduct (= bad or unacceptable behaviour in their work).', 2, '1'),
('995b98d7-e70c-487c-a58f-3c18b28e5412', '74cabd8b-1cef-4179-aff4-0ef7c9961158', '我帶一個朋友來參加聚會，可以嗎？', 'Is it okay if I bring a friend to the party?', 1, '1'),
('9961dbd8-359f-47de-a562-2383dd031052', '155e19b2-85a6-4424-9d83-3bb04537099e', '風很大，火勢迅速蔓延開來。', 'The fire spread very rapidly because of the strong wind.', 1, '1'),
('9974fcf2-81d8-444c-b82a-1575bd045368', '93cfb718-fbc8-4293-9986-0a19d98b9c95', '她從未料到自己的家人會當眾指責她。', 'She never expected anyone from her own family to take a pop at her.', 1, '1'),
('99d046ac-6a8a-4161-aa70-68d77b32f8ac', 'd5f2fcc0-f551-44a4-9e42-cd9578a7a669', '他成功創作了一系列卡通作品。', 'He\'s the creator of a successful cartoon series.', 1, '1'),
('9a4ef158-db18-407f-bbd5-6e75e6713fa6', 'e2385d7a-3ab5-447e-b335-78c1e6983e70', '美國人民願意為能源自立付出代價。', 'The american people are willing to pay a price for energy independence .', 1, '1'),
('9a621a89-70b6-44e3-b148-597cf6a0075f', '5b4da0cf-79e9-4892-b72f-62399d56117f', '這個地區發生了一連串針對女性的性侵害案件。', 'There has been a series of sexual attacks on women in the area.', 1, '1'),
('9a866108-d023-490f-9037-dbad31428cb1', 'd25f9384-ae75-4414-ad88-33b2782c4d2c', '這並不難。', 'It isn\'t hard (= it is easy).', 5, '1'),
('9ab56172-ab17-4116-9a5a-8eb3207a6465', '1c93cad5-874b-402c-bef8-1a78e81fff54', '要是孩子們有個三長兩短，我永遠也不會原諒自己。', 'I\'d never forgive myself if anything happened to the kids.', 1, '1'),
('9b3ebf63-a565-42ef-bd7f-034d306fcff8', '47623158-295d-484a-af99-a664e3f8e9a3', 'A can of worms這個片語的意思是「棘手的局面」。', '\"\"\"A can of worms\"\" is an expression that means \"\"a difficult situation\"\".\"', 1, '1'),
('9b63998a-3d37-4b5d-8842-ed162100f7d1', 'c2e13585-25d6-4818-97c1-4538c93a3926', '這種去汙劑很有效——真想不到！', 'This stain remover really works - it\'s amazing!', 1, '1'),
('9b8e3e18-0447-4473-8bab-8f1f52040065', '603e9f2a-e841-4712-8b49-895da0f8a096', '「你想再要點蛋糕嗎？」「不用，謝謝。」', '\"Would you like any more cake?\" \"No, thank you.\"', 2, '1'),
('9bc6493f-02e0-47bf-8ed8-bbe21617c812', '98f147b8-36f4-43d1-a016-42d5ac44374e', '澳大利亞以197分贏得了這次錦標賽。', 'Australia won the test by 197 runs.', 1, '1'),
('9c1bf215-bed1-40a3-8306-675282989f4a', '0362c8c3-10ba-4f89-9a22-118ed9c658dd', '他們驗了她的血，看看是否有感染的跡象。', 'They tested her blood for signs of the infection.', 2, '1'),
('9c288e1b-b7af-464a-847a-40db9eece226', 'c1e1512f-7f59-41d9-a2d8-9194ecd3481a', '那個數字顛倒了——應該是71，不是17。', 'The numbers are the wrong way round - it should be 71, not 17.', 3, '1'),
('9c40b334-a983-4a21-9112-0114deb682ed', 'e68f4b9b-ce6c-4714-9ba7-d560fd8f4dab', '我看不到舞台，因為有一根柱子擋在我和舞台之間。', 'I couldn\'t see the stage because there was a pillar in the way (= between me and the stage).', 2, '1'),
('9c4caebb-8283-4842-ad2c-8c600861f484', '652c054f-23d7-4061-8086-2dd8ef058691', '今晚電視上沒甚麼好看的。', 'There\'s not/nothing much on TV tonight.', 3, '1'),
('9c5e5437-e60b-44a0-ac6a-c7f7e70a624e', '83958f99-08d6-498b-acda-82e40bc6bfbc', '人們過去常來這座城市享用這裡的泉水。', 'People used to come to this city to take (= drink or swim in) the waters.', 1, '1'),
('9cf92095-0a1d-449c-b4bc-c4226e33ac77', '27d0e6a4-800e-456a-ba86-5ba0fa2c619f', '沒有奶油了。', 'There\'s no butter left.', 1, '1'),
('9d827044-8b00-4630-b709-3cf47ef713ef', 'e8b5b3f3-f734-499b-9132-e72d2b26b51d', '運動除了有益身心外，你們還想到什麼呢？', '\"Apart from health benefits,  what else comes to mind when you think of sports.\"', 1, '1'),
('9d9577cf-b33c-4079-8c41-3c8f1f879b71', '74cabd8b-1cef-4179-aff4-0ef7c9961158', '如果你同意的話，我等到明天再來。', 'If it\'s okay by/with you, I\'ll come over tomorrow instead.', 2, '1'),
('9da9fae7-7009-4238-9b93-b95dfcb5716f', '1cb58cb1-4d85-4a65-b514-b45c02f91107', '那個講座簡直是在考驗我的忍耐力，實在太枯燥了。', 'That lecture really tested my powers of endurance, it was so boring.', 1, '1'),
('9e5b02ca-3c1e-4c05-a2b4-1a25155d366e', 'e2329603-3fec-4137-9f85-2805e38f3a4a', '她父母硬逼她嫁給他。', 'Her parents pushed her into marrying him.', 1, '1'),
('9e9d276f-2c5f-4662-a030-a570c428e616', '0971f3ff-c1c8-4d68-a23e-4102668d14c1', '日本人將一半以上的廢紙回收利用。', 'The Japanese recycle more than half their waste paper.', 1, '1'),
('9eac4c01-5c9e-4e66-9e59-d3cf8069e224', 'f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '我真想找個時間去拜訪他們。', 'I\'d very much like to visit them sometime.', 14, '1'),
('9eb73b2c-a627-4582-8bce-8740c21b769d', '9e7f2155-a806-40cd-93b2-5e978c97a7a7', '我叫她把日常開支細分為食品、旅行和個人花費。', '\"I asked her to break her expenses down into food,  travel and personal costs.\"', 2, '1'),
('9f588479-2f84-4543-b28d-2eb4ad185d76', '9773f80a-31fb-4245-a900-b52de68f6061', '她能保持如此鎮定，真讓人驚訝。', 'It\'s amazing the way she manages to stay so calm.', 3, '1'),
('9f6a090d-b160-4267-b829-85c5b78e18e6', 'e449d810-44e6-47a8-8db9-faaf9be4ba9a', '說那話的是裕子，不是理查。', 'It was Yuko who said that, not Richard.', 4, '1'),
('a0a0b9ec-92e6-4c25-910c-910a44259f4e', '10c9c5ed-d285-4bf6-a955-21cbf5f24aab', '生產廠家目前正試驗這種新的引擎。', 'The manufacturers are currently testing the new engine.', 1, '1'),
('a0f30a37-0dc9-4278-a662-ceda006a528b', 'fc9090a4-bf98-48ca-96ae-3cb33eafc7b5', '查爾斯‧舒爾茨創作了漫畫人物史諾比和查理‧布朗。', '\"Charles Schulz created the characters \"\"Snoopy\"\" and \"\"Charlie Brown\"\".\"', 1, '1'),
('a120c66c-f9e8-4893-8be9-5a0882aebe29', 'b8f3751d-14da-4586-84b0-f7676c79a735', '許多農場裡使用的殺蟲劑正在污染供水。', 'The pesticides used on many farms are polluting the water supply.', 1, '1'),
('a171994a-d3cf-4e9a-b916-2584f646c9d8', '8268ceb5-aeba-4c28-953c-219e73fac407', '工資高於平均水準。', 'Rates of pay are above average.', 2, '1'),
('a1c8990d-7037-461c-a286-bcc0ed872328', '815c2a7a-0be1-4e18-b06b-51ec5967ce43', '聖露西亞島的收入靠的是其清潔的近海水域。', 'St Lucia depends on its clean coastal waters for its income.', 1, '1'),
('a25a66af-6b47-45d7-b3f5-24540059a436', 'e5e12715-d238-4869-9db8-91ff5748f365', '除了在曼哈頓擁有一套公寓外，他在義大利還有一座鄉間別墅，在蘇格蘭有一座城堡。', '\"In addition to his apartment in Manhattan,  he has a villa in Italy and a castle in Scotland.\"', 1, '1'),
('a2704fd6-7be9-4dfc-b6e5-c0b9b2c224af', 'e75a719a-3329-4cf9-b8e5-724e310d0a2c', '西班牙人在16世紀征服了新大陸。', 'The Spanish conquered the New World in the 16th century.', 1, '1'),
('a28936f6-34f9-4382-9e03-a86137d7d9b9', '28e993ed-8426-4b99-bda3-5439eb41a9db', '如果他沒帶武器，就不要開槍。', '\"If he\'s not armed,  don\'t shoot.\"', 1, '1'),
('a2dd9c5a-d085-4983-ae88-dab47a6b7fdd', '37ebd9b7-2fd2-4b22-a968-6480ece5b102', '我父親的健康狀況讓我們非常擔心。', 'The state of my father\'s health concerns us greatly.', 1, '1'),
('a2e90347-93ea-484e-b7bc-4d4123a7b930', '52d1e687-6d40-4aa9-9c39-09ac8917c178', '今天班裡有一個拼寫測驗。', 'The class are doing/having a spelling test today.', 1, '1'),
('a329f10a-97b0-4e6f-86fd-72f25a7d0725', '618c1339-842b-465c-a7a7-f9730709bc7b', '我們差不多準備好要走了。', 'We\'re about ready to leave.', 1, '1'),
('a35b6e8a-9b5c-45dd-b980-f24e9a705991', '17d5f721-4c5c-478f-b536-c126c44db180', '今天班裡有一個拼寫測驗。', 'The class are doing/having a spelling test today.', 1, '1'),
('a3bd1215-6da7-4bcb-b36e-696dac0bd9a5', '77defc4c-5c0c-43ec-a147-3671b1f41c7b', '他以頑強抵抗、不甘失敗著稱。', 'He was famed for his stubborn resistance and his refusal to accept defeat.', 2, '1'),
('a4484955-b59f-495d-bc48-339256c02b15', '8e7d608b-0f8b-4e8a-b0da-805ebe22fc67', '坐到鞦韆上去，我推你一把。', 'Get on the swing and I\'ll give you a push.', 1, '1'),
('a4eaab68-1a67-4511-8e26-2f4297c6c580', 'd6af9c02-c65f-40b9-8126-bdacb42fd9ec', '引人注目的海報', 'an eye-catching poster', 1, '1'),
('a4f3b4d9-9280-47c2-bcfc-b5f03000647d', 'b097c93d-aee8-483e-8c45-15593ad38d56', '有機食品／有機水果／實行有機栽培的農場／實行有機栽培的農民', 'organic food/fruit/farms/farmers', 1, '1'),
('a526040f-acde-47bc-aee8-ddb5594f3586', '334b35a3-4d2a-4d63-aa9b-088d6df75936', '熱帶魚', 'tropical fish', 1, '1'),
('a5300f6e-31d5-4bbe-8c9b-83ec4dda354f', '82bbd3bf-2355-4775-9bd4-a1de16957404', '她先接受了能力測試後才得到這份工作。', 'She had to take/do an aptitude test before she got the job.', 2, '1'),
('a628335b-bae4-48e9-a911-c1881f5ec085', 'b96f7c8d-a2a7-442b-af23-49ed2d0a3d9b', '蘋果派／醬', 'apple pie/sauce', 2, '1'),
('a667087b-632d-4db6-b27e-4aca4488b712', 'd25f9384-ae75-4414-ad88-33b2782c4d2c', '他長得並不難看。', 'He\'s not bad-looking (= he is fairly attractive).', 7, '1'),
('a6fb14bb-a50b-424e-9b35-fb8ad05fd338', 'bf11c8cc-2c26-4faa-9e31-0f45ae56928e', '人體約50%是水。', 'The human body is about 50 percent water.', 6, '1'),
('a736863f-03e7-40c6-a35f-0aae8b37b979', 'ef79b39c-5d27-4580-9a4d-4ccc1de2223d', '前門開著，於是她走進去喊道：「喂！有人在嗎?」', 'The front door was open so she walked inside and called out, \"Hello! Is there anybody in?\"', 1, '1'),
('a738561c-aa87-4fee-9075-6a461d5e647a', '7267d67e-bb16-4583-b281-6c8c15a8aead', '「你好，我想詢問一些你們飛往美國的航班資料。」', '\"Hello, I\'d like some information about flights to the US, please.\"', 1, '1'),
('a775bfae-170b-46eb-b8c9-4697ed197d75', '70b5d185-d0aa-4181-a3e1-d343a203a9b9', '兩姐妹被控謀殺。', 'Two sisters have been charged with (= officially accused of) murder.', 1, '1'),
('a796d83a-4580-4d3b-b1bb-34fc64029fc8', '197a074a-9657-4635-a02e-760a6bf326ea', '漲水的時候這條河很難過去。', 'The river is difficult to cross during periods of high water.', 1, '1'),
('a7c3e07c-e8dd-482d-9876-a15bf5117e98', '385e92e6-41a6-4cf3-b2f3-4b9a0decac67', '目前這一帶很多人患流感。', 'There\'s a lot of flu about (= many people have it) at the moment.', 2, '1'),
('a811d4fb-552f-4369-99ef-9e70a52ae574', '9bf6b2ca-9f3c-4996-9562-5cea1372b517', '我聽說你家裡要添一名小成員了！', 'I hear you\'re expecting a small addition to the family (= you are going to have a baby)!', 2, '1'),
('a81e693f-1cdf-4602-8f18-56a1245a1b9b', 'e68f4b9b-ce6c-4714-9ba7-d560fd8f4dab', '她決心要取得成功，不會讓任何事情妨礙她。', 'She\'s determined to succeed and she won\'t let anything get/stand in her way (= prevent her).', 5, '1'),
('a83366dd-846b-48f9-9759-b66742c4215b', '9774fe3d-0626-47c5-90f5-a9c3f988fc5f', '一瓶汽水', 'a bottle of pop', 1, '1'),
('a8442656-1b9f-4c80-9427-f9b4738ea90c', '4b9af516-24dc-4980-b986-8ee06304dd16', '纖維被織成織物。', 'The fibers are woven into fabric.', 1, '1'),
('a864f318-a65a-4620-b47e-211145a98059', '311a5b9a-bdc4-413d-bd3b-9c3fcd4269d2', '他因向中小學生販毒而被捕。', 'He was arrested for pushing drugs to schoolchildren.', 1, '1'),
('a8915ccb-bf94-4598-ac3d-0a109797809e', 'fbc0df9a-949e-4790-ab0a-806a5920f603', '淡水魚', 'freshwater fish', 1, '1'),
('a8b8c07b-aafc-4103-9250-3d686fb1aef3', 'a0fe45c1-dda4-4322-b5c1-d4380efc3e60', '年紀大一些的學生負起了更多的責任。', 'The more senior students are given some extra responsibilities.', 1, '1'),
('a8c8a36f-8457-4de5-b343-23e505e79ab6', '5b3ca1ac-4ef4-4880-ab1a-1c63423f3d67', '上面列出的所有人都應該受到邀請。', 'All of the above should be invited.', 1, '1'),
('a8df3a82-95c1-43ee-a933-ea0b770e8a89', '82823e25-1a83-4a0f-ab68-8169f13f1e64', '他被判有罪，並在那年的晚些時候被施以絞刑。', 'He was found guilty and hanged later that year.', 1, '1'),
('a8f1365d-31fa-444f-9499-a9377371590d', 'f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '你的咖啡裡要放多少糖？', 'How much (= what amount of) sugar do you take in your coffee?', 8, '1'),
('a8ff9d4d-ff66-490f-9f59-b7b15a37562a', 'a1da9804-383a-46ed-bacf-797c23231ed9', '那個講座簡直是在考驗我的忍耐力，實在太枯燥了。', 'That lecture really tested my powers of endurance, it was so boring.', 1, '1'),
('a909a6e8-3d31-4db0-a016-67028fce0d3a', 'aa328e51-6a8f-4a06-aecd-6bf6cb856d3e', '公車因為大雪晚點。', 'The bus was delayed due to heavy snow.', 1, '1'),
('a936666c-81ec-439f-9174-5eec9a412a0a', 'e64cc6c5-83ef-479c-874b-267b6de9a942', '教育主要是家庭的事務。', 'Education was mainly a household matter .', 1, '1'),
('a9b0fe35-19aa-46f0-abad-d1a12cbd0330', '586f7340-d3e6-4c22-8709-53d34fcd25fd', '蘋果樹', 'an apple tree', 3, '1'),
('a9ce6eff-7ae6-474e-b9fc-66c4c682bea5', 'a5df307a-c913-4a35-8979-5e5a7cc2b30c', '他們用槍威脅店主。', 'They threatened the shopkeeper with a gun.', 1, '1'),
('a9fdca46-c533-4354-ac5d-3092dc954043', '9883cec8-8830-4964-a7e7-fe9e14643b41', '她要離開——這一點也不意外，因為她從來都沒有真正融入過。', 'It\'s no surprise she\'s leaving - she never really fitted in.', 1, '1'),
('aa0e46fe-7508-43e6-92ed-a023b3117ad0', 'bf11c8cc-2c26-4faa-9e31-0f45ae56928e', '一瓶／份／杯水', 'a bottle/drink/glass of water', 1, '1'),
('aa12252a-5074-47fe-adf7-45f7581a9c6d', '24087684-9d5e-48b7-a4dd-c34c5976a36c', '那好吧，如果你準備好了，我們就開始。', 'Okay then, if you\'re ready we\'ll start.', 2, '1'),
('aa18551f-e416-4648-91fb-1ec01ba61549', '156a0c78-8847-4b48-9aaa-2ec960700317', '窗簾打著密密的摺子垂著。', 'The curtains hung in thick folds.', 3, '1'),
('aa3af5d4-8699-4f1a-9f4c-3abad648d122', 'fd6011a0-2871-4a16-a875-0794a908cd5c', '他回憶起在部隊的那段時光。', 'He was thinking about the time he spent in the army.', 2, '1'),
('aa8c7de8-c1be-40ea-a771-d04113629d50', 'e8ca0c0b-a8b0-4819-84f6-73e82f69d1e2', '不論我想做甚麽，他們總是會鼓勵我。', 'They\'ve always encouraged me in everything I\'ve wanted to do.', 1, '1'),
('aa9d3e3e-4a52-4725-878f-e426b537bce5', '357d0a39-0b2b-4fe8-9f32-1b705728bbab', '任何東西都比不了一杯好咖啡！', 'There\'s nothing like a good cup of coffee (= it\'s better than anything)!', 11, '1'),
('aaa2cf55-0e86-4524-a759-20cdc3dc57f8', 'bd1e06b3-27e5-421f-a3f5-04176713af2e', '削蘋果', 'to peel an apple', 1, '1'),
('aac72bb3-95f4-4611-ba53-fdc805346284', '8268ceb5-aeba-4c28-953c-219e73fac407', '冬季氣溫很少高於零度。', 'Temperatures rarely rise above zero in winter.', 3, '1'),
('aad7938d-8fee-4b6c-b19a-e49604727a72', 'bfce9794-0757-49ff-afcc-c9de1e2c503b', '勘測調查顯示海床下有大量的石油。', 'Exploratory investigations have indicated large amounts of oil below the sea bed.', 1, '1'),
('aad7bdf2-c38f-43c7-93fd-20e83824ee0b', '17fdd07c-7a94-4bce-932f-bbe8511c2c4b', '整個報告都寫得很差，而且還內容不實。', '\"The whole report is badly written. Moreover,  it\'s inaccurate.\"', 1, '1'),
('ab51118a-f220-4fa0-9ed1-dcbcad6e1824', '56e40b97-7621-4806-a534-f35efd6728ef', '視力檢查', 'an eye test', 2, '1'),
('ab65720c-a71c-4f4a-b234-ee39263e730c', 'f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '因為下雨，那天我們未能在海灘上停留很久。', 'Because of the rain, we weren\'t able to spend much of the day on the beach.', 12, '1'),
('abbdbed3-7904-414a-be07-1c9e12696ee5', '0024b4bd-fb80-4146-8003-76335dc1a1f3', '曉治把自己缺乏自信心歸咎於他的母親。', 'Hugh blames his mother for his lack of confidence.', 1, '1'),
('abc218bd-fa31-4e89-abf3-9fd937658cb9', '50154080-ba09-4d2f-9b6e-8f6ca9cdb661', '能有機會去不同的地方是這份工作富有吸引力的一大因素。', 'The opportunity to travel is one of the main attractions of this job.', 1, '1'),
('ac32692f-0003-4458-bcc6-69aafcff7ae9', '6d8b9e3f-0856-4438-b0f3-67fe8a90a826', '對不起，我對您的詩不甚了解。', '\"I\'m sorry,  I\'m not familiar with your poetry.\"', 2, '1'),
('ac6fcedf-817d-42c4-8f5d-6f04c5d382e5', '7e6223a2-d7ed-4b1b-8920-5e897f903802', '活體動物的運輸', 'the transport of live animals', 1, '1'),
('ac84cc47-e9df-46f2-afbc-c66dad462946', '0a5817f5-503d-4fc7-8cb3-6245fadeba33', '醫生做了一些檢查，想查出她的問題出在哪裡。', 'The doctors have done some tests to try and find out what\'s wrong with her.', 4, '1'),
('ad091492-e7fd-45bb-ac53-b552782d208d', 'f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '這雙鞋子多少錢？', 'How much do these shoes cost?', 9, '1'),
('ad5c1de8-11ef-4de4-a1b9-34194f1f1b8d', 'e7ecf7fd-88ae-4fc3-8f4c-0bf0f763991d', '至於在哪裡去得到這筆錢，我們以後再說吧。', '\"As for where we\'ll get the money from,  we\'ll talk about that later.\"', 1, '1'),
('adf0443e-f6e6-40dc-8c17-9de6e31a5bf0', '3fbbba67-4432-4b78-a616-95371118ddef', '我已經請鄰居在我不在的時候幫忙給那些植物澆水。', 'I\'ve asked my neighbour to water the plants while I\'m away.', 1, '1'),
('adf1df13-f2ce-4c14-ad6e-0127b996cfbd', '8a3e1af8-101c-4180-849d-0f0701db1617', '古代文明／自古有之的權利／古代法律', 'ancient civilizations/rights/laws', 1, '1'),
('adf63a11-f9b5-4faf-a3bd-b7b3cfcbfe4e', '0a6ecdc2-cd7f-4aac-a18c-f98a55d19870', '他們聽到外面有人到處走動。', 'They heard someone moving about outside.', 1, '1'),
('ae0eacc9-f65f-44de-9e11-542bbd0c51ee', '3e80e43c-589c-4267-9c63-e89a1af2b579', 'setset', 'test123111', 1, '0'),
('ae24ab46-56ba-4c05-848f-f828fa4a2ae4', '1895c5ba-50c9-465a-8b4a-6fdaa3836a14', '該藥的長期療效', 'the long-term effects of the drug', 2, '1'),
('ae48bc7e-4cd7-4e44-9f79-4d9232898b65', '39a08d8b-f604-4e47-ba0b-e605491bee03', '我不喜歡把頭浸在水裡。', 'I don\'t like getting my head under (= in) water.', 2, '1'),
('ae7ffd65-d445-4576-81ad-fa7b74f0cdeb', 'f393ad03-f791-453b-8306-0bb1fcca2cdf', '自從那次手術以來，他一直病得很重。', 'He\'s been in a bad way (= very ill) ever since the operation.', 1, '1'),
('ae83568e-a788-43c3-9f3f-52fa96a8092c', '0548951f-5376-40aa-9250-9fa3530a6219', '阿根廷已提交申請，希望主辦世界盃足球賽。', 'Argentina has submitted an application to host the World Cup.', 1, '1'),
('aebf86d2-0197-47a2-aee6-914a63bf337c', 'e580f855-836d-448e-9f83-181ac98d9ee1', '我原以為整個會議要開不下去了，但你就像個真正的行家那樣挽救了局面！', 'I thought the whole meeting was going to fall apart but you rescued it like a true professional!', 1, '1'),
('aec74cf8-1bd1-4108-9129-8537f1544f30', '5e4fb13a-077b-4041-b6d6-5c07347658a0', '大約兩個月前', 'about two months ago', 2, '1'),
('aed92e81-6d49-4c31-a765-36826ef98be9', 'ada02d37-f93f-4eae-b249-7a0c3e4213ef', '醫生做了一些檢查，想查出她的問題出在哪裡。', 'The doctors have done some tests to try and find out what\'s wrong with her.', 4, '1'),
('aeda86bf-9845-4ac7-930f-b2be3571041f', 'c033ad5e-0fb7-4f41-b7eb-230a0d63c445', '你能幫我挪一下這張桌子嗎？你推我拉。', 'Can you help me move this table? You push and I\'ll pull.', 1, '1'),
('aeefd6de-94d7-49e3-b491-9bc04310748f', '0cb2cef2-4272-4063-a09c-f127b5a53a59', '我覺得上歷史課不打瞌睡太難了。', 'I find it so difficult to stay awake during history lessons.', 1, '1'),
('af9dfa73-82e0-45ab-85e1-4cf565f2e4c0', '3b7f447c-7762-4ec5-b27d-c090f4b73af1', '從前有一個窮寡婦，她有個漂亮的女兒。', 'There once was/lived a poor widow who had a beautiful daughter.', 1, '1'),
('aff012db-23b4-4fa7-b4b2-f73fc0181b42', '673a70b8-3ed1-4646-936c-348a949f38b8', '聚會裝飾物從天花板上垂下來。', 'Party decorations hung (down) from the ceiling.', 2, '1'),
('b01d48db-c9d9-4449-94cc-5c4b1830ae32', 'e449d810-44e6-47a8-8db9-faaf9be4ba9a', '「來玩呀，爸爸。」「現在不行，傑米。」', '\"Come and play, Dad.\" \"Not now, Jamie.\"', 3, '1'),
('b036f984-ca4d-47ba-a779-89339bb27302', '6f55cb90-01bd-4ac8-8c36-4fb1d7cc0474', '他稱他要向當局報告，不過那只是一句嚇唬人的話。', 'He says he\'ll tell the authorities but it\'s just an empty threat (= it will not happen).', 2, '1'),
('b051159e-f430-4014-97ba-2de06acd6779', 'd9ab5c0b-c443-47e5-a9ee-da707fb0c887', '水挺暖和的——你來游泳嗎？', 'The water\'s warm - are you coming in?', 1, '1'),
('b071e895-7243-4a9e-b226-89f0728410b6', '76d9320a-1adc-4ea4-b0b6-c1b3296afc7f', '不立遺囑可能會給你的子女或者家庭其他成員帶來嚴重後果。', 'Not making a will can have serious consequences for your children and other family members.', 1, '1'),
('b082c339-c3c9-4a1e-b44d-b43e06f60893', 'e2329603-3fec-4137-9f85-2805e38f3a4a', '如果不再努力一些，你就永遠不會成功。', 'You\'ll never be successful if you don\'t push yourself (= work) harder.', 5, '1'),
('b083ba81-5e0d-457b-8683-fd53991defbb', '8e7d608b-0f8b-4e8a-b0da-805ebe22fc67', '我按一下按鈕就能訂購所有這些貨物。', 'I can order all these goods at the push of a button (= by pushing a button).', 3, '1'),
('b08ca4f3-bb79-448a-b0ad-30fac6e7c2b6', 'e05c2edb-2636-49bd-8a14-6071ff1e3f4f', '我媽媽是做裁縫的高手。', 'My mother is an expert at dress-making (= she does it very well).', 1, '1'),
('b0fde964-e279-4f2b-85db-c1e53da3beef', 'd25f9384-ae75-4414-ad88-33b2782c4d2c', '你難道不喜歡她嗎？', 'Don\'t you like her?', 4, '1'),
('b10495e4-6171-4420-9d2a-c98593220932', '0efa1b61-43b1-4c96-8597-be4a7e513497', '他因為闖紅燈被員警要求停靠路邊。', 'The police pulled him over for failing to stop at a red traffic light.', 1, '1'),
('b13e862f-7003-4c7e-ba1e-2bf70e186c53', '61309987-97c2-483c-aadd-8211d6309663', '我已經申請了地方報紙的一個職位。', 'I\'ve applied for a new job with the local newspaper.', 1, '1'),
('b1602a0d-7ce1-4159-bba2-5444fab839f7', '2771bae7-c142-4e73-9937-502f4ec460b1', '我只好讓你在那裡打住，我們已經沒有時間了。', 'I\'ll have to stop you there - we\'ve run out of time.', 4, '1'),
('b18bea66-aa90-4677-8e07-37b164892725', 'deb3ce43-6eb6-4a84-92b3-0dbfff69aa7b', '她是一位職業舞者／攝影師。', 'She\'s a professional dancer/photographer.', 3, '1'),
('b1b90f86-29f4-44e6-98e1-ae06e2e4ddcf', '2cec9364-be87-4074-9e13-ced9f57a3fd0', '在那條結了冰的路上駕車是對我駕駛技術的一次真正考驗。', 'Driving on that icy road was a real test of my skill.', 1, '1'),
('b2438ed1-78e5-4924-8e5d-1d0f1bd9a71f', '7ab74a42-8ef3-4c16-a838-8389383ca517', '這家旅館正在大搞活動以吸引顧客。', 'The hotel is making a major push to attract customers.', 2, '1'),
('b27c9a24-5927-4f90-a44e-87a89062ebda', 'a80c99c3-ce46-49c0-b60f-3aa29546a630', '除了在曼哈頓擁有一套公寓外，他在義大利還有一座鄉間別墅，在蘇格蘭有一座城堡。', 'In addition to his apartment in Manhattan, he has a villa in Italy and a castle in Scotland.', 1, '1'),
('b3d9c5cf-e1f8-4248-9e53-133880838779', '5e4fb13a-077b-4041-b6d6-5c07347658a0', '高約六英尺', 'about six feet tall', 1, '1'),
('b3efb75d-0991-4115-9ec1-e3231a7f9ca0', 'd4ba3b0b-e456-4a62-9f82-fc63b9a2f977', '去機場前我們有的是時間。', 'We\'ve got plenty of time before we need to leave for the airport.', 1, '1'),
('b40b85f8-a226-4784-b14c-274525b75ea3', '8268ceb5-aeba-4c28-953c-219e73fac407', '他們把自由看得高於一切。', 'They value their freedom above (and beyond) all else.', 5, '1'),
('b41c8f53-e38b-440c-9b44-986b1dc6224c', '2771bae7-c142-4e73-9937-502f4ec460b1', '把椅子放在那裡。', 'Put the chair there.', 1, '1'),
('b479ec23-c7bd-48f9-b3c4-4085890add6e', '0d7a5f1f-f414-44a7-8e2d-f8d2735ae2ed', '為了節省資源，請重覆利用本手提袋。', '\"To conserve resources,  please reuse this carrier bag.\"', 1, '1'),
('b496df9b-768f-45a2-8567-845809b651c7', 'dcde1e56-adff-4c40-b633-983bfe2630bd', '那裡有一個可供網球、羽毛球等比賽用的大型體育館。', 'There\'s a big sports hall for tennis and badminton and such like.', 1, '1'),
('b4e8221c-27d2-4d35-8971-c6579c1634ac', '8adb48d5-82b9-401c-bdba-8fa73dd3845f', '看到他氣色這麼好，我大為驚奇。', 'I was amazed by how well he looked.', 1, '1'),
('b5ebdc78-9ef7-4b3c-91e6-7aae519341fe', 'd12c1856-36e8-4ee3-b7f0-f90fcf971305', '他們驗了她的血，看看是否有感染的跡象。', 'They tested her blood for signs of the infection.', 2, '1'),
('b5fb5d49-2342-4db1-9d4f-9624f71465c1', '7f077fba-20ea-4b99-8a4d-e873a956d134', '嘿，這可真奇怪——我認識那個人。', 'Hello, this is very strange - I know that man.', 1, '1'),
('b5fcbce9-2f73-4aa2-aad5-7122b54657bb', '9773f80a-31fb-4245-a900-b52de68f6061', '別害怕——他就那樣。', 'Don\'t worry - it\'s just his way.', 1, '1'),
('b6499043-7dc8-4127-aa44-d40ab07dfed0', 'ee204f31-10d4-487d-85d6-728ab1ea47db', '我把衣櫥清空，把我的東西放進那個外出過夜用的黑色旅行袋裡。', 'I emptied the closet and put my belongings into the black overnight case.', 1, '1'),
('b72a3d74-1d22-4460-a4b5-1fc0932b7b83', '3c43d500-7485-4386-b92b-006663507fcf', '在中國大米是很多人的主食。', 'Rice is the staple diet (= most important food) of many people in China.', 1, '1'),
('b76717d1-9a43-473e-84f7-63a9b69124a3', '4ad960ec-2c26-4eb0-baae-4ac9dae9ea99', '我想對參與籌備我們婚禮的每一個人表示由衷的感謝，正是你們讓這個婚禮如此與眾不同！', 'I would like to say a big thank you to everyone who\'s helped to make our wedding such a special occasion!', 3, '1'),
('b76b8e0d-0c00-486a-86cf-224c960cedbc', '7c2ab278-216d-48b1-a506-65e800adab82', '醫生做了一些檢查，想查出她的問題出在哪裡。', 'The doctors have done some tests to try and find out what\'s wrong with her.', 4, '1'),
('b771e1bf-91c6-48c2-adfb-31737bd7aed6', '9a1e0d1f-2d53-4632-b4d8-2f65d25a245f', '到了20世紀60年代，絕大多數家庭都擁有電視。', '\"By the 1960s,  most households had a TV.\"', 1, '1'),
('b77824ac-3552-4fe4-910c-85e37cde6d9e', 'd5ccd159-009a-4272-90c9-a099506ca030', '經濟上稍有起色', 'a slight improvement in the economy', 1, '1'),
('b8798602-4888-4642-850f-510fd14683dc', '90c0b8b8-02a9-4c55-938e-0d11abfa6178', '我釣魚是為了消遣放鬆。', 'I go fishing for relaxation.', 1, '1'),
('b8976d08-8b72-405d-b22a-787e4b33e322', '0a5817f5-503d-4fc7-8cb3-6245fadeba33', '視力檢查', 'an eye test', 2, '1'),
('b8a63f34-f014-468a-b622-fdbd8fd9c778', '48c53851-c9f7-4912-8a4f-684adda40e0d', '我存雨水來澆花。', 'I collect rainwater to water my plants.', 1, '1'),
('b8c00a3f-6cfc-4722-abad-567cdb1dee8c', '94e25dac-47aa-4739-b54f-569c2f6853aa', '我真不知道這麼大驚小怪到底是怎麼回事。', 'I really don\'t know what all the fuss is about.', 6, '1'),
('b8d58c3e-c2da-43d0-9d48-f3935c3b027b', 'f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '修車費比我們預料的貴得多。', 'The repairs to our car cost much more than we were expecting.', 23, '1'),
('b8fe2f21-7e2d-4afc-bd0c-a307e5010bea', 'b2049ed2-7327-4808-92cb-4a04fc1d0079', '尼基自從認識史蒂夫之後似乎快樂多了。', 'Nicky seems a lot happier since she met Steve.', 4, '1'),
('b96dd1fc-83fd-4346-a3a5-ff81c79e3f6d', 'e79f9ca1-7b31-4b84-9263-2f59aaf03974', '他呀，真的非常友善——就是那種可以傾心交談的人。', 'He\'s, like, really friendly - someone you can talk to.', 1, '1'),
('ba2bb30c-ee30-443e-b02b-6cac4dd4cb2a', '42dc1b53-b1dc-49fb-9546-5e9fb1e7d088', '澳大利亞以197分贏得了這次錦標賽。', 'Australia won the test by 197 runs.', 1, '1'),
('ba66d92c-ffd5-4507-aa2a-5125e2de44cd', '801a8370-cd10-4954-bdb3-244b80323367', '她的衣服總是東一件西一件亂丟在地板上。', 'She always leaves her clothes lying about on the floor.', 1, '1'),
('baa5966e-c77a-4916-ae36-83090a0feefb', '208c68cd-8ae3-49b5-a08c-5d8f8071735c', '這場手術結果是大成功。', 'The operation proved a complete success.', 1, '1'),
('bab3c34e-2b9a-4b9b-9062-3ffea171a5a6', '35179e61-fdcf-4003-be7c-3a2e70dd4293', '我們隨機挑選一些人，問了他們的想法。', 'We asked a random sample/selection of people what they thought.', 1, '1'),
('bac10ffb-0479-42b6-9aa2-192d1081d63c', 'ef880ac2-15ee-4596-a14c-cb1b8f854dce', '看來要定下會議的日期有些困難。', 'There appeared/seemed to be a problem with finding a date for the meeting.', 5, '1'),
('bb0056bd-c662-44cf-b500-10ff3dd1b93a', '357d0a39-0b2b-4fe8-9f32-1b705728bbab', '她和她母親非常像。', 'She\'s very much like her mother (= she is similar in appearance or character).', 2, '1'),
('bb50f5d2-dddb-4792-867a-07ab1a0f2082', 'b2f87264-e601-4cba-b0f5-fabecfc78fad', '我要檢查一下汽車有沒有問題——發動機的聲音聽起來不妙！', 'I\'ll just check that the car\'s okay - that noise from the engine doesn\'t sound good!', 4, '1'),
('bb6be698-5820-4689-a9b9-3e957cb782cc', '3d62c804-4480-4ec9-b792-4c5ad8444c3f', '你能把燈打開嗎？', 'Could you put the light on?', 1, '1'),
('bbadede1-a412-46c9-8f95-73609114ac1f', '6b4945c3-b7a7-4bb6-88e6-e2f129842d64', '他在一家生產汽車零件的公司工作。', 'He works for a company that manufactures car parts.', 1, '1'),
('bbc90bdc-d20a-4fe0-bae9-ece5e0239c18', '17d5f721-4c5c-478f-b536-c126c44db180', '她先接受了能力測試後才得到這份工作。', 'She had to take/do an aptitude test before she got the job.', 2, '1'),
('bbe0a82b-d824-47ea-978c-2c76cbd4f63e', '987fc559-8210-424d-a67d-5131d589da71', '醋是一種酸。', 'Vinegar is an acid.', 1, '1'),
('bbfc7112-7a8e-4724-a757-2918c6bd990f', '385e92e6-41a6-4cf3-b2f3-4b9a0decac67', '約翰在附近嗎？', 'Is John about (= somewhere near)?', 1, '1'),
('bc269748-5f07-43c2-b4ef-3979a7799792', 'fc25c275-6a11-4ee1-a59f-37f7739abd44', '這些承諾只不過是些空頭支票。', 'They\'re just empty (= hollow) promises.', 2, '1'),
('bcc6e4f1-4f95-4b6c-acdf-fb1db65a7ee5', '3ea30de0-c36f-482b-9a48-fb14bee05303', '這些減稅措施將會促進工業發展。', 'These tax cuts will give industry a helping hand.', 1, '1'),
('bcca6b19-0a0a-438a-891d-ac3f9b1dc2c6', 'b9881960-834d-4e8c-b605-0be965cb8698', '我打電話來就是確認一下你是否順利到達。', 'I just called to make sure that you got there okay.', 3, '1'),
('bceac223-f60f-4ba3-b43a-72ccf4d10f94', '50988cb3-a69d-4c40-8fea-c240c3e09a01', '這個流行歌星說他的最愛是「我的保時捷新車、女友和徹夜狂歡」。', 'The star lists his likes as \"my new Porsche, my girlfriend, and staying up all night.\"', 1, '1'),
('bced452d-1be8-40bf-bf96-90d99ffcdec2', 'cca275b5-8c26-4312-a527-5c4ec777ef42', '你打開盒子時，一個小丑會彈出來。', 'When you open the box, a clown pops out.', 1, '1'),
('bcf1caad-ff6e-4252-9f61-5d5d5c1ba471', '17fef3ff-173c-446a-8645-76615f936af0', '玩得痛快嗎？', 'Having fun (= are you enjoying yourself)?', 2, '1'),
('bd1e7844-c9bd-4c9e-8231-988b6eb56b56', '79a219cb-bb13-452d-b6bc-0c94fc63480a', '不同能力水準的學生混編的班級', 'a mixed-ability class', 5, '1'),
('bd75191f-03f2-4a4a-a6ff-385ca1324e9d', '662e530e-889c-4de8-96ae-9e197ba9fdd6', '飛機降落時我的耳朵總是脹痛。', 'My ears always pop as the plane comes in to land.', 1, '1'),
('bdab180e-1c4e-41d7-8b53-1d0a2803f8ce', '3d84ce52-8389-4f9d-961d-4ffac7e4ccaa', '她關上燈，悄悄溜出門。', 'She turned off the light and crept through the door.', 1, '1'),
('be00fc5e-2169-4550-89c0-cd4001aa38c9', 'e679cf9a-9a83-4422-9fdd-c2bf822fb89a', '他說那頓飯特別美味，他從未吃過如此好吃的飯。', 'He described a superlative meal, the like of which he\'d never eaten before.', 3, '1'),
('be1fa168-88a1-4e88-8366-a6cc54c1a1c5', 'c1f89c63-460e-4aae-8720-b5baaa04951d', '他們還要走一段路。', 'They still have a ways to go.', 4, '1'),
('be540710-7c15-4e41-a450-0ed7236c01dc', 'f05872b1-67ff-43e6-a557-e99b2a4ae70e', '這家公司的新型號將於明年初開始生產。', 'The company\'s new model will be going into production early next year.', 1, '1'),
('bf4e8c9f-ba71-4938-8250-bef3806c7502', '0d409fe3-f464-4fee-ba41-723e5abe6214', '那隻狗一直拼命想掙脫金屬套索。', 'The dog had been struggling to get free of the wire noose.', 1, '1'),
('bf60ffe4-1452-4d13-a17c-a5d7b071e9c4', '357d0a39-0b2b-4fe8-9f32-1b705728bbab', '和大多數人一樣，我喜歡能有足夠的錢而不必去工作。', 'Like most people (= as most people would), I\'d prefer to have enough money not to work.', 9, '1'),
('c06de4bd-bfb7-465a-894c-f2e18af304cf', 'e68f4b9b-ce6c-4714-9ba7-d560fd8f4dab', '你需要給那輛車讓開道。', 'You need to get out of the way of that car.', 4, '1'),
('c07fc396-708c-433c-a977-8f8a220d1548', '7997ed6b-ede2-49c0-863b-f70a0ab41055', '到那個村子去的唯一方法是乘船。', 'The only access to the village is by boat.', 1, '1'),
('c0910e0e-553f-40e7-ade0-43ac9cf2dda2', '26d12d16-15eb-46d1-9efe-d3862fa0ca15', '我並不想惹她生氣——只是鬧著玩而已。', 'I didn\'t mean to upset her - it was just a bit of fun.', 2, '1'),
('c0e5a39d-d1e4-4323-b581-c45f5ca5a060', '9bf6b2ca-9f3c-4996-9562-5cea1372b517', '多聘一名秘書對於我們全體工作人員來說是好消息／會有助於我們全體工作人員的工作。', 'A secretary would be a welcome/useful addition to our staff.', 1, '1'),
('c117c02b-178a-4841-a582-544a8c413cf8', 'df4c8b1a-b8d9-4c59-8937-28eb7eea458e', '沒有甚麼跡象顯示經濟正在好轉。', 'There are few indications (that) the economy is on an upswing.', 1, '1'),
('c17a2ceb-759a-481f-aecf-ff98ebaceb93', 'abc24413-1af5-462a-ac68-1a4bf816870a', '我認為他們住在伯明罕那一帶。', 'I think they live Birmingham way.', 1, '1'),
('c17aa69a-4497-45c6-ace2-c9fc1fc8c954', 'bf612555-d34c-493e-ab1c-1ab625d53db0', '你的答案中20%是對的，也就是說每五個中有一個是對的。', 'You got 20 percent of the answers right - that means one in every five.', 1, '1'),
('c1a0bd81-4907-4be7-82aa-faab6f7acbcd', '2dc280ff-5c9b-44a1-b5ef-c805d5dbc612', '顯然，我們不該信任她。', 'We were obviously wrong to put our trust in her.', 1, '1'),
('c1a6b3c2-b4d2-4763-9c80-94962f805c42', 'b208c86a-c3c6-4d5b-8436-cae0fe932705', '墮胎在你們國家是否合法？', 'Is abortion legal in your country?', 1, '1'),
('c212ace5-1bb3-46c9-98b6-c45d228d51e5', '981de79f-3929-4b01-a0c2-b72b875985ab', '她問我是否剛剛到，我回答她說「嗨，我已經到這裡一個小時了。」', 'She asked me if I\'d just arrived and I was like \"Hello, I\'ve been here for an hour.\"', 1, '1'),
('c258ae5a-d293-4383-976c-43217e0f2914', '6f55cb90-01bd-4ac8-8c36-4fb1d7cc0474', '酒後駕車者對其他路人構成了嚴重威脅。', 'Drunken drivers pose a serious threat (= cause a lot of harm) to other road users.', 1, '1'),
('c2be0ba6-47f9-4999-9259-9cc4af06ce86', '45f967c0-744a-4441-acc1-cabcf670aa4d', '大樓的頂部有一個球型構造物。', 'There was a large, ball-like structure on top of the building.', 2, '1'),
('c2d4f82b-fdd0-4983-904d-60cac3e87982', 'a34d9751-6304-47fc-b4bf-761d638fc73e', '馬克到的時候我剛要走。', 'I was about to leave when Mark arrived.', 1, '1'),
('c31e3956-7936-4298-af7c-df47e60945b7', 'e20663c0-9109-4bf2-a8e0-da0acf354a50', '駭人的罪行', 'a horrible crime', 1, '1'),
('c4071494-3069-482b-abd0-39887373dd23', 'c2cd2c08-39c4-45d1-8d65-1be79ad063be', '她不會因為你遲到而耿耿於懷——何況這並不是你的錯。', '\"She won\'t mind if you\'re late - besides,  it\'s hardly your fault.\"', 1, '1'),
('c416f473-c5ea-4f60-b051-c026a95f5d6d', '430e9647-0d38-4645-a255-708ac8a042d5', '這件事情上沒有人可以避開嫌疑。', 'No one is above suspicion in this matter.', 1, '1'),
('c44985b4-c51d-44db-8e98-4e201a036671', '43d2a332-19a7-4672-a8d0-707cdea840f9', '宣言包括了解決道路堵塞和環境污染的強硬措施。', 'The manifesto includes tough measures to tackle road congestion and environmental pollution.', 1, '1'),
('c46895af-4542-467f-9c90-71f35655db84', '0fdacd97-9182-4d6a-9fcf-48bd3988b983', '醫生做了一些檢查，想查出她的問題出在哪裡。', 'The doctors have done some tests to try and find out what\'s wrong with her.', 4, '1'),
('c46a4b2b-3df3-4a9b-a7d1-9fec2a1b763c', '01a2efa5-5402-446b-9ab7-4669b87940e2', '請在我的威士卡裡加一點水，好嗎？', 'Can I have a drop of water in my whisky, please?', 4, '1'),
('c4855942-152b-42be-b930-04d03cd6e6c2', '156a0c78-8847-4b48-9aaa-2ec960700317', '他有許多上乘畫作在國家美術館中展出。', 'Many of his finest pictures hang/are hung (= are attached to the wall so that they can be seen) in the National Gallery.', 5, '1'),
('c50dc3c6-c2a6-4b21-ac43-72d3ebc8b918', 'f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '希望有一天我能報答你。', 'One day I hope I\'ll be able to do as much (= the same amount) for you as you\'ve done for me.', 15, '1'),
('c51dabda-6a9f-4118-af39-d607877f1fea', '4747d035-7d04-466e-88c5-c90db6605d5a', '他們住在17號。', 'They live at No. 17.', 1, '1'),
('c56ba4c7-26c0-4270-9639-667ef8b64fee', '9b2a5a0e-bdd2-42ae-8a58-de408821fd1f', '久病之後他在家裡死去。', 'He died at home after a long illness.', 1, '1'),
('c610a4c1-a5b9-4a45-8f38-dd26cb0b255f', 'aa74bac0-01de-439c-94b4-42320e2c28f0', '「關於週末露營，你得到甚麼回覆了嗎？」 「到目前為止，有兩人願意去，一人不去，還有一人不確定。」', '\"Did you get any replies about the camping weekend?\" \"So far we have two yeses, a no, and a maybe.\"', 1, '1'),
('c613cf4a-f2cc-49e7-b1cf-95c9b896faf6', '0b46d1aa-3f62-470f-898c-d7930def8f03', '小超市很難與大超市競爭。', 'It\'s difficult for a small shop to compete against/with the big supermarkets.', 1, '1'),
('c6c17d72-9b7c-41b6-9967-d9761d394504', '52d1e687-6d40-4aa9-9c39-09ac8917c178', '她先接受了能力測試後才得到這份工作。', 'She had to take/do an aptitude test before she got the job.', 2, '1'),
('c6f292ea-1fd0-4f43-9029-f6ffa086f106', '679f6293-ca3b-4a49-9d7f-d7b6b01f3e4d', '我們目睹了最令人震驚的人間苦難。', 'We have witnessed the most appalling scenes of human misery.', 1, '1'),
('c74d4712-c822-4681-b515-1e25a3486c40', 'bf4bfc2d-d88b-4f26-bed3-ac89cc520c8b', '她自己創作音樂自己演奏。', 'She composes and performs her own music.', 1, '1'),
('c787a41c-0019-49b3-8f1e-2e27394a8ef3', '51c7e816-8ac7-44a2-9663-72c52b2e705b', '這塊肉最後可能大部分得餵狗。', 'Much of this meat will probably end up as dog food.', 3, '1'),
('c7e75067-be07-4291-b69e-e0d28f72127c', '3b33a806-ebbd-4159-bf20-efd66f1eda43', '孩子們，把手洗乾淨，然後來吃飯！', '\"Kids,  give your hands a good scrub and come and get your dinner!\"', 1, '1'),
('c7fd4b59-2b77-48e2-b303-40d1d431bdd5', 'b9881960-834d-4e8c-b605-0be965cb8698', '你睡得還好嗎？', 'Did you sleep okay?', 2, '1'),
('c814bdf2-ca63-43d4-ae26-b55db44a966a', 'cb6e834b-f53b-4dc5-8c93-1dc576dbffb3', '我們絕對不可能及時趕到那裡。', 'We\'ll never get there in time.', 1, '1'),
('c81560de-befe-4273-a3ce-5897d5f510c4', '54d5ac75-2c83-4058-9175-2bfbf8d6dbcc', '請你幫我把這個寄出。', 'I\'d like you to send this for me, please.', 3, '1'),
('c8d038dd-6917-42da-a86d-0132bcb5f75b', 'b2049ed2-7327-4808-92cb-4a04fc1d0079', '巴里似乎很樂意爲自己工作。', 'Barry seems happy enough working for himself.', 8, '1'),
('c94d113a-fc1e-4be6-bccb-9772c833ea2f', 'c21f3635-5766-4535-953e-2355ad3a7011', '《貧窮與饑餓》討論了在短期中提高糧食保障水平的各種各樣注意成本效益的方法。', 'Poverty and hunger discusses a variety of cost-effective ways to increase food security in the short term .', 1, '1'),
('c9abe519-4c15-4648-81f0-12adf1f0214e', 'acd6ada4-0d46-4d82-a763-2e863a215a81', '我只想清清靜靜地不受打擾。', 'I desire only to be left in peace.', 1, '1'),
('ca372978-7215-4968-98ee-b831d137a120', '67057f01-f182-434f-a821-ab75a9515fc1', '海怪', 'a sea monster', 1, '1'),
('ca60b507-c5c3-4cc3-a153-58fd7d85654b', '52f46f0f-1546-412e-9f82-a624090374ab', '「你好，我想詢問一些你們飛往美國的航班資料。」', '\"Hello, I\'d like some information about flights to the US, please.\"', 1, '1'),
('ca887637-90eb-4a0a-8fcc-98db9b9e867a', 'd8c6d0aa-6195-4a33-a261-ec3d69d9b595', '目錄頁', 'the contents page', 1, '1'),
('cab9ae37-dc64-4c62-bbac-be2d27ff7724', '3cc68144-eddd-41c0-a522-9089136af03b', '我已經請鄰居在我不在的時候幫忙給那些植物澆水。', 'I\'ve asked my neighbour to water the plants while I\'m away.', 1, '1'),
('caffd4d9-5291-40bb-b11a-7f7f6e5ece69', 'fd5f9fb3-cfb3-4f6b-8fc5-97be8a71b412', '我是史蒂芬斯醫生的病人，請問我能不能預約一下看病時間？', 'I\'m a patient of Dr Stephens; please could I make an appointment to see her?', 1, '1'),
('cb009285-b296-42e3-8b99-f8b9a0def60b', '29f291e3-29a9-4934-af97-c1ac95fed1d0', '兩個犯人逃走了。', 'Two prisoners have escaped.', 1, '1');
INSERT INTO `wordsen` (`WordSenId`, `WordDefId`, `ChiSentence`, `EngSentence`, `Myorder`, `Status`) VALUES
('cb28043e-ab21-4c4b-b87a-82052f5e1e75', 'c8fccf86-e0f5-41ae-ad8a-e59b9b3e7d87', '生產廠家目前正試驗這種新的引擎。', 'The manufacturers are currently testing the new engine.', 1, '1'),
('cb6a00f0-8606-4e4b-9a47-425874906149', 'a137c412-f845-4f50-80d2-5b53dd17d9df', '在我國，女子結婚穿白衣是一種習俗。', '\"In my country,  it\'s the custom (for women) to get married in white.\"', 2, '1'),
('cb74d6be-b79d-4d4d-929c-8aaaf5adb32e', 'e1e05f26-dcf9-4af8-b4d3-b0cbe41dd317', '驗血／尿檢', 'a blood/urine test', 1, '1'),
('cb827756-d774-4210-b11b-d93172126116', '60bc4461-1964-4e6f-9450-50a529425e87', '這個國家現在由軍政府控制。', 'The country has been governed by military regimes.', 1, '1'),
('cb9abeab-892d-47da-9e1e-f561bdc65475', '7fb1eb5e-95ea-4c4e-9d25-fe52bc1f9de2', '那個講座簡直是在考驗我的忍耐力，實在太枯燥了。', 'That lecture really tested my powers of endurance, it was so boring.', 1, '1'),
('cc00cbd2-6d09-4463-9c2b-cd73383c36fe', 'd4108515-de06-495e-83da-f926df2e14c9', '他被判有罪，並在那年的晚些時候被施以絞刑。', 'He was found guilty and hanged later that year.', 1, '1'),
('cc1d2c40-f70f-40ab-9a81-3e747bbecf02', '9403a121-581d-4c4f-b08d-520589162c14', '一番斟酌之後，我們決定賣掉房子。', '\"After some consideration,  we\'ve decided to sell the house.\"', 1, '1'),
('cc2e9f85-8fed-4c3b-9646-cd3355fdd7ed', '4a013304-a421-458f-87ee-c9fca6184f62', '他們組織了一次師生會議。', 'They organized a meeting between the teachers and students.', 1, '1'),
('cc40fb71-196a-4ef4-a51d-2c6178731f51', '244aad7f-65bb-419f-b0be-148eb9954ba2', '已經給馬餵過飼料飲過水了。', 'The horses had been fed and watered.', 1, '1'),
('cc4bdc7c-338d-4d66-adaa-62465211794d', '012e0561-4f46-4d07-86c0-2c989011c907', '走了那麼遠的路，我胃口大開。', 'All that walking has given me an appetite.', 1, '1'),
('cc786a7a-9f14-4687-a71c-80fa8379c4f7', 'aca16b3b-92eb-43df-bb40-74e3c0f4400b', '一串香蕉', 'a bunch of bananas', 1, '1'),
('cc8bf937-58e4-42c5-8b8c-ac741f6d3493', 'd43e1d0c-95ae-4dc8-80a8-1a2021e23eca', '電話裡，我常把她誤認為是她母親。', 'I often mistake her for her mother on the phone.', 1, '1'),
('cca18aca-0a22-44d9-bbd5-95f1b7eec0ae', 'd4f428ff-1085-4c57-9e6a-8ab3a8f20eb6', '我剛在廚房把你灑出來的湯擦乾淨。', 'I was just wiping up the soup that you spilled in the kitchen.', 1, '1'),
('cca7241f-1d52-47d9-b606-b94717a8b348', '400102ba-01ae-4fe2-ba7e-c9fe6821714f', '她問我是否剛剛到，我回答她說「嗨，我已經到這裡一個小時了。」', 'She asked me if I\'d just arrived and I was like \"Hello, I\'ve been here for an hour.\"', 1, '1'),
('ccd9e523-937f-44f3-b588-d29500f8a1ac', 'bb3e6d97-bec8-4fa5-baec-777e299a2289', '你認爲這個瓶可裝多少液體？', 'How much liquid do you think this bottle contains?', 1, '1'),
('ccf71e90-fe3d-49cc-8db1-e481d7442c41', '9cc95dfb-a679-4699-86a3-b1156b964f29', '他用一張面紙擦太陽眼鏡。', 'He used a piece of tissue to clean his sunglasses.', 2, '1'),
('cd0e627c-7dbc-4b55-a49e-758af52d1b52', '85e794c6-7030-462e-a253-dcdc62cee269', '我看不出他的論點有甚麽邏輯依據。', 'I fail to see the logic behind his argument.', 1, '1'),
('cd4d9767-39e7-4e40-bf3e-8a13259868cb', '46e2ae08-7934-4356-a515-67bdcdad4777', '抽煙引起的所有健康問題她都很清楚。', 'She knows all about the health problems that go hand in hand with smoking.', 2, '1'),
('cd51a0a2-ab1e-4b74-9e9f-f3b708b3781c', '267f862b-2b6f-4b9b-9f6b-137732c748e6', '警方放鬆了對機場採取的安全措施兩週後就發生了一起炸彈襲擊事件。', '\"Two weeks after the police relaxed security at the airports,  there was a bomb attack.\"', 1, '1'),
('cd523b41-744e-4842-958e-7a7f39e0df72', '95b1c454-6b19-46c1-aaa2-00482cb7f874', '這個可憐的孩子繼承了媽媽的頭腦和爸爸的長相。', 'The poor child inherited his mother\'s brains and his father\'s looks.', 1, '1'),
('cd739826-0622-46ec-b015-e187a6f6ab31', '85496ba9-abd1-4701-9526-e6f53f3d9d10', '他們在撞車事故中只受了點輕傷。', 'They were only slightly injured in the crash.', 1, '1'),
('cd8d917d-84e5-4d13-9783-a02f4da77825', 'd9a4f433-906a-450c-a1a7-7cbbc247e837', '薩莉比我高一年級。', 'Sally\'s a grade above me.', 1, '1'),
('cd9ac338-300b-4872-ad70-0227d0a316eb', '522b3d76-508e-4b3c-b5a0-6456a02fdf65', '醫生給她注射了一針嗎啡來止痛。', 'She was given a shot of morphine to relieve the pain.', 1, '1'),
('cdd57d84-0e8c-4405-89fa-82a805f70050', '7e83e5bd-191b-4a5b-b558-435497bda4aa', '為甚麼不早點將這件事通知我？', 'Why wasn\'t I informed of/about this earlier?', 2, '1'),
('ce06f884-13ac-4354-87e4-ab99a5c0b46e', '522f8250-f761-434d-86f3-728ef13bd390', '在那條結了冰的路上駕車是對我駕駛技術的一次真正考驗。', 'Driving on that icy road was a real test of my skill.', 1, '1'),
('ce1a58c9-6c5a-4163-b730-27afe8efd554', 'ca96340d-f970-4315-8662-4f18ffd0a238', '新導彈目前正在進行試驗。', 'The new missiles are currently undergoing tests.', 1, '1'),
('ce5c7ec4-1d15-4277-919e-38362ee25436', '4d26fa45-6648-4fb7-8057-b8d7046a34b7', '這些花朵都有著鮮艷的色彩以便能夠吸引蝴蝶。', 'These flowers are brightly coloured in order to attract butterflies.', 1, '1'),
('cebbb8f4-0ab9-47e3-bb79-1a88071d69d6', '9a248f46-0303-4eea-a75f-0f341bc77cd6', '你自己能找對路走出這棟樓嗎？', 'Can you find your own way out of the building?', 4, '1'),
('cee97c9f-2186-47c1-ad38-cd36becda80d', '156a0c78-8847-4b48-9aaa-2ec960700317', '在烹調雉雞肉之前先把它掛起來晾幾天，這樣味道會更好。', 'Hang the pheasant/Let the pheasant hang for a few days for the flavour to improve before you cook it.', 6, '1'),
('d00cba0d-5613-4331-95c7-4f91a4ec4951', '673a70b8-3ed1-4646-936c-348a949f38b8', '他有許多上乘畫作在國家美術館中展出。', 'Many of his finest pictures hang/are hung (= are attached to the wall so that they can be seen) in the National Gallery.', 5, '1'),
('d01b061d-a802-41c3-a33c-b8e37db09d60', '7ac58670-b6af-4731-b742-f49496d0518b', '她已經不在這裡工作了。', 'She doesn\'t work here any longer.', 2, '1'),
('d0516b1c-2f4e-468a-8343-22c4f9a687e3', '7e11787c-e9d7-4cfa-bdfc-73c9eb5b8319', '她參加各種各樣的健身活動。', 'She does a variety of fitness activities.', 1, '1'),
('d05d1e4b-da1e-453f-9029-4d194c1b215f', 'b8d36c30-182a-4647-88dc-1e80db44c699', '他在妻子的抽屜裡偶然翻到了他以前寫的一些情書。', 'He came across some of his old love letters in his wife\'s desk.', 1, '1'),
('d0cfd756-7023-4dab-8e63-a874c7bc60d9', '0a6ecdc2-cd7f-4aac-a18c-f98a55d19870', '我跑了一個上午到處找你。', 'I\'ve been running about all morning trying to find you.', 2, '1'),
('d0f72458-4875-42b9-9bbe-1353d5871223', 'ada02d37-f93f-4eae-b249-7a0c3e4213ef', '視力檢查', 'an eye test', 2, '1'),
('d14f8bdc-24c2-4c3b-a85f-28f6b132e08e', 'aad58a04-0e36-4264-8722-42436b54ac9f', '下水道裡發出一種難聞的氣味。', 'There was an unpleasant smell coming from the drains.', 1, '1'),
('d21c34d4-b3fb-4f80-900e-21680bd846a6', 'c033ad5e-0fb7-4f41-b7eb-230a0d63c445', '我想把門推開，但門卡住了。', 'I tried to push the door open but it was stuck.', 6, '1'),
('d2564f38-1d16-4f14-90fb-2b7676c38961', '673a70b8-3ed1-4646-936c-348a949f38b8', '把你的大衣和帽子掛在那邊的架子上。', 'Hang your coat and hat (up) on the rack over there.', 4, '1'),
('d272b733-7989-4385-850c-be9c1ba7714f', '94e25dac-47aa-4739-b54f-569c2f6853aa', '他總是喋喋不休地炫耀他的工作有多麼好。', 'He\'s always (going) on about what a great job he\'s got.', 4, '1'),
('d27f6e3e-4557-48ca-aa0c-a6ffb1d00d38', 'e68f4b9b-ce6c-4714-9ba7-d560fd8f4dab', '通過清除那些不穿的為新衣服清理出一些空間來。', 'Make way for some new clothes by clearing out ones you never wear.', 3, '1'),
('d2a1f47a-8593-4650-83e2-1011309dff70', '9b4c47d6-2dda-40e2-afd7-3806cb89e23f', '我們真的應該馬上就走。', 'We really ought to leave immediately.', 1, '1'),
('d2d05acf-3ea0-4439-ad6e-9cf5ac8b50dd', '9e3ae348-fd01-4d56-867e-f3f2a1e21c7f', '別攬太多工作在身上，多賺的錢也不值。', 'Don’t take on too much work – the extra cash isn’t worth it.', 2, '1'),
('d319d5fd-5e52-44c5-9f22-e5e5c9d5c1ed', '938cfe75-ed5a-40e6-adf2-989565d14666', '在仔細考慮過這個問題之前別作任何決定。', 'Don\'t make any decisions before you\'ve considered the situation.', 1, '1'),
('d327d6ad-1950-487c-a3ed-98d4bda29da4', 'b2049ed2-7327-4808-92cb-4a04fc1d0079', '我很高興你一切都很順利。', 'I\'m so happy (that) everything is working out for you.', 7, '1'),
('d32fd134-df81-4b98-b656-979c7b239c37', '8097fe9a-aee3-4eec-9c4a-784580e7eec7', '在那條結了冰的路上駕車是對我駕駛技術的一次真正考驗。', 'Driving on that icy road was a real test of my skill.', 1, '1'),
('d3717d40-85d6-45f6-b21d-48c43f3e4230', '54d5ac75-2c83-4058-9175-2bfbf8d6dbcc', '我想預訂一個今晚演出的座位。', 'I\'d like to book a seat for tonight\'s performance.', 2, '1'),
('d3f096b6-40d9-4353-b30c-d0a94aa152f3', 'e294cbf4-42f2-49e1-bee4-d43ba5d5bac5', '他們有甚麼證據證明是漢普森偷了貨物？', 'Do they have any proof that it was Hampson who stole the goods?', 1, '1'),
('d40fd5a4-4d51-4c0e-aa1c-3f089b659a39', 'c9f32a67-c715-4635-9348-cfc451d7b470', '道路被拓寬，但結果車流量卻更大了。', '\"The road has been widened,  but the result is just more traffic.\"', 1, '1'),
('d4297e72-8ad9-4825-96b8-7dd86d804b61', '652c054f-23d7-4061-8086-2dd8ef058691', '我對舞蹈從不在行。', 'I\'ve never been much of a dancer (= good at dancing, or interested in doing it).', 2, '1'),
('d44b951c-43a0-414d-a6e9-26cdecb3c945', '95d58901-ef65-4274-a606-e17cb37c59fc', '他們正在組織一場運動，目的是使人們意識到開車對環境造成的危害。', 'They\'re organizing a campaign to draw people\'s attention to the environmentally harmful effects of using their cars.', 2, '1'),
('d4571cef-31ca-4aaa-9dea-cb855ab3384a', '04c32f5f-a14e-4759-a7d5-3ceccfd2019e', '鎮上的大部分人都強烈支持修建新學校的計劃。', 'The majority of people in the town strongly support the plans to build a new school.', 1, '1'),
('d48f71e4-5191-41f2-97b4-35f3afd0ebfe', 'c7110050-8cc9-4f4c-9c62-92aad94936e8', '一百多年來市中心幾乎沒有變化。', 'The city centre has scarcely changed in over a century.', 1, '1'),
('d4aac1b0-7a1a-4484-8d92-bb3380fc704b', 'e679cf9a-9a83-4422-9fdd-c2bf822fb89a', '穆罕默德·阿里退役後，拳擊運動就再也沒有他那樣的選手了。', 'Boxing hasn\'t seen the likes of Muhammad Ali since he retired.', 1, '1'),
('d4cfa4da-48f3-4ccd-b343-19c6652119c4', '8f516e33-dab2-45e6-a380-0c89398a4829', '醫療工作者', 'medical workers', 2, '1'),
('d4d2dc0a-8f6b-462b-960f-932ea7710ccf', 'fbc0df9a-949e-4790-ab0a-806a5920f603', '鹹水瀉湖', 'a saltwater lagoon', 2, '1'),
('d581f362-307b-433e-b13a-ec6362c6a315', 'f81d0f27-aa1f-410a-ba30-74ba52569599', '探索太空', 'to explore space', 1, '1'),
('d5ad4a45-a637-4a86-8707-bdc85f6b5511', '899614d2-b898-437b-9ee4-6fecf830c7c7', '儘管他年僅16歲就輟學了，但最終還是當上了首相。', '\"Even though he left school at 16,  he still managed to become prime minister.\"', 1, '1'),
('d6224dd5-ef2b-4a17-9696-c3a570b9ee66', '9324fe3e-03f1-4c0e-bfc4-86736d66a7e3', '他擅長做蛋糕裝飾。', 'He\'s good at cake decoration.', 1, '1'),
('d6407265-c9f7-4466-aa34-79eec5e83a74', '7ddb00d3-b96f-400b-8f1d-1c79c7466c84', '他有殘疾，不能開車。', 'His disability prevents him from driving.', 2, '1'),
('d65bfc7a-c1b9-4f24-b2ee-56b63e6dfd08', '5ee370ea-138f-4873-ac5a-907f0695be8e', '心臟病在許多西方國家是一個主要的致死病因。', 'Heart disease is the leading cause of death in many Western countries.', 1, '1'),
('d6a42f58-56ba-445d-8c5e-a50745047c67', 'b222e6ee-a820-40c2-b8d5-fb5d293ac782', '她很擅長交友並對他人施加影響。', 'She\'s very good at making friends and influencing people.', 1, '1'),
('d6d7955a-60ea-4b28-a584-a353797f27f7', 'f002ec42-6f0e-48c0-a562-50895f0b8ede', '前門開著，於是她走進去喊道：「喂！有人在嗎?」', 'The front door was open so she walked inside and called out, \"Hello! Is there anybody in?\"', 1, '1'),
('d72d68ba-0f2c-4717-9ee0-a3147413331b', '3bbdb05f-1dc7-4cb9-b1d1-85a95e8f404b', '這個國家的東部地區多山。', 'The eastern part of the country is very mountainous.', 1, '1'),
('d7fa6ac5-9e23-410c-99b5-5fd7c3e0974f', '49656521-e9f4-4774-86cd-e6069db11b92', '適宜程度', 'suitability', 1, '1'),
('d80d7e44-d046-40a6-8130-f7a65be6a8dd', 'a60a329f-2452-484d-82df-c8e6adf2562b', '我要求給我一個解釋。', 'I demanded an explanation.', 1, '1'),
('d877f823-3413-438c-b359-2c4909fc4ac1', 'ad7c3cb4-8ff6-4d50-a353-89a81c47dc0f', '前門開著，於是她走進去喊道：「喂！有人在嗎?」', 'The front door was open so she walked inside and called out, \"Hello! Is there anybody in?\"', 1, '1'),
('d894e83c-ce0e-4515-9135-d63807c9eaa1', '85d4bbcc-bba5-4fb1-b85c-470919629d7a', '「你昨晚吃得好嗎？」「還可以，不過我吃過更好的。」', '\"Did you have a good dinner out last night?\" \"It was okay - I\'ve definitely had better.\"', 1, '1'),
('d8a3ea48-070f-4bd2-a69f-dfebfc620605', 'd23db478-e1a2-4b07-b88a-be762e35166f', '她已經把自己所有值錢的東西都賣了。', 'She had already sold everything of value that she possessed.', 2, '1'),
('d8b2dcd3-421f-43b4-a0fb-1b5162cd03a1', '17fef3ff-173c-446a-8645-76615f936af0', '假期裡大多數時間馬克一直在生病，所以沒甚麽樂趣。', 'She\'s great fun to be with.', 4, '1'),
('d92c2986-cbd0-43cd-92f6-cf22220c63e5', '94e25dac-47aa-4739-b54f-569c2f6853aa', '這部劇哪些地方你不喜歡？', 'What didn\'t you like about the play?', 9, '1'),
('d9bb35b1-efed-4ecc-904c-c8d092f88b90', '4193eaf5-4427-453b-981b-657d7ca9eeb9', '這個地區力量均勢的改變有著深遠的影響。', 'The shift in the balance of power in the region has had far-reaching consequences.', 1, '1'),
('da040dda-6dce-4027-8cde-cd88df73eaca', '5f691c85-3250-4634-be8f-b63714cff856', '我完全沒有想要孩子的願望。', 'I certainly have no desire to have children.', 1, '1'),
('da28125e-15ac-42f1-ae9d-11bdc6ca33c0', 'db66ad19-331f-4f91-8cb3-7cc2fe7e9991', '我在這裡住了大約兩年了。', 'I\'ve lived here for about two years.', 1, '1'),
('da31654d-99d8-49d6-a056-d5ef41a1e74e', 'b2049ed2-7327-4808-92cb-4a04fc1d0079', '你對新的工作安排滿意嗎？', 'Are you happy about/with (= satisfied with) your new working arrangements?', 9, '1'),
('da6ffe1c-df88-4428-8756-5eda8b4637ee', '780c7524-f964-42d1-9627-01374ef681d2', '我還不知道她是否會來。', 'I still don\'t know whether she\'s coming or not.', 2, '1'),
('dad7d957-0e22-4cfa-acf8-269ae07a7544', 'c1f89c63-460e-4aae-8720-b5baaa04951d', '我們設法從第12名一直上升到第一名。', 'We managed to pull ourselves all the way from 12th place to first place.', 3, '1'),
('db0074a4-14b3-48a6-916e-f5c8d9aa42b6', '45f967c0-744a-4441-acc1-cabcf670aa4d', '該報批評了球迷們的表現，稱之為野蠻行為。', 'The paper criticized what it described as the animal-like behaviour of the fans.', 1, '1'),
('db4eab24-c3d2-4a11-ba51-8222d431910b', 'c033ad5e-0fb7-4f41-b7eb-230a0d63c445', '這扇窗戶卡住了，開的時候得用力推。', 'The window sticks - you have to push hard to open it.', 2, '1'),
('db7628fc-943b-4fef-bad1-6df140fac423', '38377533-4566-4058-82f2-084561a897cc', '再普通再一般的人也要比40年前富裕多了。', 'The average person on the street is a lot better off than they were 40 years ago.', 1, '1'),
('db8f5331-5eee-4776-ae11-e6a3191866de', 'e95013fe-7f78-47cc-93eb-8c1ea7e7a7a1', '我對童年和曾經歷的一切感到怨恨。', 'I feel very bitter about my childhood and all that I went through.', 1, '1'),
('dba1c092-f1cb-4cf1-9a21-b13d7293ff88', 'e3cf8c79-7b56-4609-8ff9-e7dd41349f20', '飛行員成功阻止飛機的墜毀，從而避免了一場悲劇。', 'The pilot averted a tragedy when he succeeded in preventing the plane from crashing.', 1, '1'),
('dbabe086-0d5c-48f5-9ea7-0d3a7277ade8', 'f61a3570-9d6e-41eb-8176-0cf2765f7610', '你想聽甚麼——爵士樂、古典音樂還是流行音樂？', 'What do you want to listen to - jazz, classical, or pop?', 3, '1'),
('dbb7295b-1646-4548-9e78-e91d5d39cdba', '3b70b7ac-b1f7-42e1-b21d-68a72f5a246e', '我的新頭像圖片得到了100個贊。', 'My new profile picture got 100 likes.', 1, '1'),
('dbdc4f70-8678-4d3c-8443-2b499e7bfc0a', '16ac9e43-3df3-4ae5-b4a8-9987b22a8152', '作爲父母，你應盡力創造一個安定的家庭環境。', 'As a parent you try to create a stable home environment.', 1, '1'),
('dbe70835-f331-48af-a2aa-346cea523c8e', '26d12d16-15eb-46d1-9efe-d3862fa0ca15', '我說的不能當真，只是開個玩笑。', 'I didn\'t mean what I said, it was only in fun (= a joke).', 3, '1'),
('dc9a6346-b74a-4d57-85e7-e1443b46d97f', '4809cf55-3ff4-48db-bb91-9e7a070d9c9d', '我們下一步該做甚麼？', 'Where do we go/Where do we take it from here? (= What should we do next?)', 2, '1'),
('dcd2c7d1-0d00-4284-b812-a8ac210835be', '4ed3bb73-b95c-4d3b-ac95-d8ac4695ef29', '我們沿河漂流而下，懶洋洋的度過了一個下午。', 'We spent a lazy afternoon floating down/along the river.', 1, '1'),
('dd04de62-115e-401f-a53f-274a701da2bb', 'ef880ac2-15ee-4596-a14c-cb1b8f854dce', '誰是最佳候選人毋庸置疑。', 'There\'s no doubt who is the best candidate.', 2, '1'),
('dd153e44-1e26-4a58-af6e-b46d3b2718b8', '2a1634b7-7e2d-4fac-a1fe-8f67d8786865', '兩位領導人進行了簡短的交談。', 'There was a brief exchange between the two leaders.', 1, '1'),
('dd4f4fa2-7b87-4c26-a9f1-483cb7edcf06', '3c050358-11a6-406f-a2e8-43f3e026dda4', '你要考一考我一直在學的化學嗎？', 'Will you test me on the chemistry I\'ve been learning?', 1, '1'),
('dd99f952-15bf-4ee0-8560-8293da43f96a', 'd12c1856-36e8-4ee3-b7f0-f90fcf971305', '生產廠家目前正試驗這種新的引擎。', 'The manufacturers are currently testing the new engine.', 1, '1'),
('dd9c46b5-8a30-4d0e-8f23-01b0ef90e674', 'a16e452d-2d58-4c74-be7a-c62a6d058671', '123123', 'basbas', 1, '1'),
('ddd45ab2-7dd1-4527-afb6-b8e469f555fd', '97b3648d-4bc3-425d-a3d0-4981a9c92491', '深夜，我們被救護車淒厲的警報聲吵醒了。', 'We were woken in the night by the wail of ambulance sirens.', 1, '1'),
('de39b75d-68ed-4b7e-ba39-edbf0d3dfe29', '4ad960ec-2c26-4eb0-baae-4ac9dae9ea99', '我想去莫斯科。', 'I\'d like to go to Moscow.', 2, '1'),
('de89162c-d4bb-47a1-8bff-7a520e0c0f44', '18a1c70d-25fa-448e-8435-98f11c376cb1', '在那條結了冰的路上駕車是對我駕駛技術的一次真正考驗。', 'Driving on that icy road was a real test of my skill.', 1, '1'),
('de9f098a-374d-46dd-8d64-fb9f20c7ea31', '9773f80a-31fb-4245-a900-b52de68f6061', '依我看，他們不該修這麼多路。', 'To my way of thinking, they shouldn\'t be building so many roads.', 5, '1'),
('dedb2b9e-c42f-413f-a63a-df2f73f2f6cd', '642544a1-8960-4364-8d0c-27e582c15c11', '今天班裡有一個拼寫測驗。', 'The class are doing/having a spelling test today.', 1, '1'),
('df3ddba8-476e-496d-a59c-a25eaa8e00d3', '737ef3dc-2c24-4c48-bc01-e3439eb6af11', '她穿鮮亮顔色的衣服最漂亮，如紅色和粉色。', 'She looks best in bright, vibrant colours, like red and pink.', 1, '1'),
('df48fe91-ca3f-4ddd-b60e-732f9029181c', '156a0c78-8847-4b48-9aaa-2ec960700317', '她脖子上掛著一串粗重的金項鍊。', 'A heavy gold necklace hung around her neck.', 1, '1'),
('df774e7a-638d-43d8-81ff-c13832e7051b', '707dd9b2-aac2-4060-9627-c33a7d573c28', '他開始朝我大喊大叫起來，於是我就問他：「你怎麽回事？我是站在你這邊的！」', 'He started shouting at me and I\'m like, \"What\'s your problem? I\'m on your side!\"', 2, '1'),
('df8bc38e-583e-422a-b220-acfcb2a01845', 'ada02d37-f93f-4eae-b249-7a0c3e4213ef', '驗血／尿檢', 'a blood/urine test', 1, '1'),
('dfac2c25-e1b1-4a23-8530-b9232510486d', '17fef3ff-173c-446a-8645-76615f936af0', '玩個痛快！', 'Have fun (= enjoy yourself)!', 1, '1'),
('e004f507-f397-46e4-b486-2acbf33b68f0', '56e40b97-7621-4806-a534-f35efd6728ef', '驗血／尿檢', 'a blood/urine test', 1, '1'),
('e03c5265-c7f8-4cc0-b153-191f938bfb0f', 'db55c44c-e726-4174-987d-9c900fb9f4bc', '馬不是美洲原產的動物——是西班牙人帶來的。', 'The horse is not native to America - it was introduced by the Spanish.', 1, '1'),
('e081a0e2-2848-4336-af3f-7196e11293f4', '7ddb00d3-b96f-400b-8f1d-1c79c7466c84', '在你的手提箱上貼上標籤以防搞混。', 'Label your suitcases to prevent confusion.', 1, '1'),
('e0c3d9af-0b0a-45ca-a7d9-6a7c3c39f9f0', '054abe7f-ad84-4cc0-ad60-fc437268ecf5', '上次會議有沒有引出甚麼問題？', 'Are there any matters arising from (= caused by) the last meeting?', 1, '1'),
('e0ef58c4-5d31-422d-b2d9-61eb5a482165', 'cb170282-5c57-4b0f-b0cc-d528e4f9e566', '這座橋為高空彈跳者提供了穩固的平臺。', 'The bridge provided a firm platform for the bungee jumpers.', 1, '1'),
('e1029831-4295-415a-b20e-dc1fafa432ee', '0fdacd97-9182-4d6a-9fcf-48bd3988b983', '驗血／尿檢', 'a blood/urine test', 1, '1'),
('e1131f51-57b5-496d-9646-03eb9112f840', '8f7e6360-8498-4df0-9859-658f922ee05b', '這種蛋塔細膩潤滑、香濃可口。', 'This custard is deliciously smooth and creamy.', 1, '1'),
('e13a4f77-b5c7-48e7-8f57-0f2527cfc9ca', '16af4fc5-0d2f-4621-aeac-9f02691f4c39', '他有幸與一些世界頂級的運動員一起訓練。', 'He had the (good) fortune to train with some of the world\'s top athletes.', 1, '1'),
('e18aba7a-aa76-45a2-af9c-35c6a4f9019f', '3b33b0dd-be0a-47ee-a8bd-15a7a7c5143d', '我正好想要去順道拜訪問候一下。', 'I just thought I\'d call by and say hello.', 3, '1'),
('e1b0f30f-9b5e-476f-b602-0552d7dbf18c', 'dc771726-1b5d-4c8b-9d4a-7f5d17f8c9eb', '我們出售32種不同口味的霜淇淋。', 'We sell 32 different flavors (= particular types of taste) of ice cream.', 1, '1'),
('e1db739b-67dd-4db0-8a13-5e867e9e7b25', 'c033ad5e-0fb7-4f41-b7eb-230a0d63c445', '他把錢硬塞在我手裡，說道：「請收下。」', 'He pushed the money into my hand (= forcefully gave me the money), saying, \"Please take it.\"', 9, '1'),
('e1eea464-5c14-4590-aa5a-830d2dc94a4e', 'acd6ada4-0d46-4d82-a763-2e863a215a81', '', '\"What does she desire me to do?', 2, '1'),
('e2331a32-084b-4fe0-97a5-1010d5dd82d7', '0e27620e-9c84-4b8a-adb4-1a28508ec365', '你看起來好像剛剛起床！', 'You look like you\'ve just got out of bed!', 4, '1'),
('e248e644-0eef-4240-8ae4-724627311837', 'f61a3570-9d6e-41eb-8176-0cf2765f7610', '她想成為一名像女神卡卡那樣的流行歌手／歌星。', 'She wants to be a pop singer/star like Lady Gaga.', 5, '1'),
('e27e5f78-14fc-480e-86c8-d45c8d567756', '2f0f7f51-8ac5-4ebd-97f7-171117f39e90', '您的航班十點半到達，那裡有聯運長途客車到您入住的飯店。', '\"Your flight arrives at 12.30,  when it connects with a bus service to your hotel.\"', 3, '1'),
('e29d6b94-99d2-445a-ade7-7cf7e9056c78', 'ef880ac2-15ee-4596-a14c-cb1b8f854dce', '有找你的電話。', 'There\'s someone on the phone for you.', 1, '1'),
('e30978c2-67a8-4612-8165-a9119d304110', 'b2049ed2-7327-4808-92cb-4a04fc1d0079', '幸福的婚姻／童年', 'a happy marriage/childhood', 1, '1'),
('e319a289-db9d-435b-ab93-48d6a6a40901', '5ef6f1ac-876e-4824-9c12-06654853d77e', '他離婚後一直很消沈。', 'He\'s been depressed ever since he got divorced.', 1, '1'),
('e354bb6d-a240-4342-bc50-08fcb9113494', '1dfac1ae-6214-48ce-9c19-80a764d78d80', '猴子是高度社會化的動物。', 'Monkeys are highly social animals.', 1, '1'),
('e3567890-9c7a-43f7-bd29-a2814793af6e', '1c436dbb-a591-4b26-a5bc-b7d7f2a7a875', '她承認偷了僱主的錢。', 'She admitted stealing the money from her employers.', 1, '1'),
('e3c64afe-2ff4-4472-a22d-c65a92178978', 'a59a063c-280b-48d1-b861-6c29705a3e2a', '中央海港區將於下午3時45分至4時30分關閉，嚴禁所有海上船隻進出停留。', 'The Central harbour area will be closed to all marine traffic from 3.45 p.m. to 4.30 p.m.', 2, '1'),
('e4797c79-cc1d-47e3-bc5c-8dd8fd77cd3d', 'f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '我很清楚這個問題。', 'I\'m very much aware of the problem.', 24, '1'),
('e4b3908d-c076-40f9-9860-7d8df42ff64a', '90e904ef-c183-448c-bb86-c9719eec2b54', '再試一次——最終你會成功的。', 'Try again - you\'ll get there in the end.', 1, '1'),
('e50bf06e-2033-4567-a689-d4f0c1220ed7', 'ecec6481-bb0f-40ab-ad5c-a49e9a1540ca', '核燃料的安全運輸', 'the safe transportation of used nuclear fuel', 1, '1'),
('e50db497-8c11-4ca5-9ff0-200fbbfe493a', '876cf371-66fe-46ce-9039-01c92048cb1e', '你喝得實在太多了，不能駕車。', 'You\'ve drunk much too much to drive.', 1, '1'),
('e5338d7a-ca3b-4798-9fa4-d8a393dbaf1b', 'f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '遭遇車禍後，布賴克好像變成了另一個人。', 'Blake has become a much (= greatly) changed person since his car accident.', 21, '1'),
('e5623fd4-06f0-4819-8f55-9c6f44b383cb', 'f8fb0143-f22b-446a-888f-81519438e318', '午夜的鐘聲迴盪在夜空中。', 'The sound of the bells hung in the midnight air.', 3, '1'),
('e5e41e63-d16c-4112-b6c5-db59cdde547d', 'f4804bbd-49da-4cde-928a-fe29e99ca939', '我的寵物狗', 'my pet dog', 1, '1'),
('e5f138ac-af2d-4cf3-a33a-bdad5c1ffd6a', 'b0d50677-5b67-4e29-9a64-29f01d408a63', '磨咖啡豆', 'to grind coffee', 1, '1'),
('e61d8789-e997-4e93-9baf-16cf17656a79', '47b5576d-4e63-437f-8bb6-0c446305c30c', '這位總統始終否定這個謠言。', 'The president has consistently denied the rumors.', 1, '1'),
('e6294258-b3db-4792-8b4b-0a85382fe09a', '5f691c85-3250-4634-be8f-b63714cff856', '他需要滿足自己復仇的願望。', 'He needed to satisfy his desire for revenge.', 2, '1'),
('e62adc77-de94-4d9f-b27f-71386d46c286', '54d5ac75-2c83-4058-9175-2bfbf8d6dbcc', '我希望這些工作能在週末前做完。', 'I would like the whole lot finished by the weekend.', 4, '1'),
('e63193ff-040e-4fd1-aad4-f0cbd754b323', 'eebe941b-4ad4-4026-9bbf-d5d699203efe', '已知這類化學品對哮喘病患者有害。', 'This group of chemicals is known to be harmful to people with asthma.', 1, '1'),
('e645a767-71a7-4955-9d92-92903a32145d', 'cb4d22ca-46e3-4923-b10d-e865e25e5df6', '為了降低血壓，醫生規定我要低鹽飲食。', 'The doctor put me on a low-salt diet to reduce my blood pressure.', 1, '1'),
('e67323ae-c27c-43f5-aa4d-b92c29f1dd1f', 'e25ae449-45a0-4641-ae3b-e4dacdf37c08', '你想怎樣解決這個問題？', 'How do you intend to deal with this problem?', 1, '1'),
('e69db413-64ea-4ff1-875f-623135c4b9fe', '12b68a98-a4a2-402f-bfeb-8e922cb8f74c', '代理行派來了一個人接替辭職的秘書。', 'The agency sent a replacement for the secretary who resigned.', 1, '1'),
('e6ccc308-1d4f-4bad-a5ee-9ef63df2428f', 'd970dcb5-e137-4cf2-bc3a-a5935a0bb1cd', '計程車司機說他立刻停了車並把行李箱打開。', 'The taxi driver said that he stopped immediately and popped the trunk.', 1, '1'),
('e72554e1-1c80-4956-b5c1-c1b3a3855505', 'dd8b6a7b-ab28-40c2-919f-a437f6f17beb', '午夜的鐘聲迴盪在夜空中。', 'The sound of the bells hung in the midnight air.', 3, '1'),
('e7aa1db3-b155-4686-b774-c48c92a3d5f4', 'a5c61c44-678e-4717-8ea9-832961aa2b39', '我儘量避開週六去超級市場——那時總是人特別多。', 'I try to avoid supermarkets on Saturdays - they\'re always so busy.', 1, '1'),
('e7eb4952-6eea-4cb3-9de1-f6c5bd5fe29d', '8cf7053f-576f-468f-ace0-166bd3090f1f', '結果，真相比我們預期的更離奇。', 'The truth turned out to be stranger than we had expected.', 2, '1'),
('e853b54e-b0ba-47d4-9884-af931c7dbdf0', 'fd6011a0-2871-4a16-a875-0794a908cd5c', '當他們說想找一個會說英語的人時，我馬上想到了你。', 'I thought of you immediately when they said they wanted someone who could speak English.', 1, '1'),
('e86c6a2e-03fd-4e3d-bdf2-201c5a0f17b7', 'bf11c8cc-2c26-4faa-9e31-0f45ae56928e', '瓶裝／礦泉／自來水', 'bottled/mineral/tap water', 2, '1'),
('e8a14f93-811d-41c9-b805-bce5a6c9b8a4', 'b73b2381-2631-4c08-8baf-6b41a49931c1', '我喜歡你的髮型。', 'I like the way you\'ve done your hair.', 1, '1'),
('e8f3cdcd-0766-42e5-b275-1823fdcffda3', 'f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '令我們大為驚訝的是，他們接受了我們的出價。', 'Much to our surprise, (= we were very surprised that) they accepted our offer.', 18, '1'),
('e91c066f-ab86-4635-b8c8-7592fd343d54', '5837a151-dbaf-4130-aac5-5f44a2ee4042', '新導彈目前正在進行試驗。', 'The new missiles are currently undergoing tests.', 1, '1'),
('e9663d32-bd18-44e6-b770-dcee1eb95eab', '01a2efa5-5402-446b-9ab7-4669b87940e2', '這水洗澡夠不夠熱？', 'Is there enough hot water for a bath?', 5, '1'),
('e9b939db-b04c-4f1a-8911-a05761ec9fd5', '9e7f2155-a806-40cd-93b2-5e978c97a7a7', '這些酵素在胃中分解食物。', 'These enzymes break down food in the stomach (= cause food to separate into smaller pieces).', 1, '1'),
('e9c76962-3c3d-4924-b59e-3a285b4de9f2', '026076e7-5e10-470d-9fbf-2288d2e7d538', '那個講座簡直是在考驗我的忍耐力，實在太枯燥了。', 'That lecture really tested my powers of endurance, it was so boring.', 1, '1'),
('e9e81c47-a2c3-467f-9193-008431f3c212', '56923f92-5a1f-4d54-92e6-7387fb3a3aff', '那是我吃過的最好的一餐——是才怪呢！', 'That was the best meal I\'ve ever had - not!', 1, '1'),
('ea0cef23-dbe5-4139-9a2b-dbafb76d0965', 'e449d810-44e6-47a8-8db9-faaf9be4ba9a', '大部分蔬菜我都喜歡，但捲心菜除外。', 'I like most vegetables but not cabbage.', 2, '1'),
('ea53cc2a-50e4-458e-ac4f-0e13d27c6f60', '1af99bf7-c88b-4cd0-8152-7158cc117276', '我對她不太熟悉——我們只有打過幾次招呼。', 'I know her vaguely - we\'ve exchanged hellos a few times.', 2, '1'),
('ea7370e9-e168-42dd-a11e-909c2b9703dd', '357d0a39-0b2b-4fe8-9f32-1b705728bbab', '她的歌聲如天使一般！', 'She sings like an angel!', 7, '1'),
('ea854189-70f0-490d-918c-dd763671f8d8', '41a4b047-15cf-49e7-9370-23dd9e9535a9', '結婚／畢業典禮', 'a wedding/graduation ceremony', 1, '1'),
('eaa83c7e-1bd9-48fe-aca1-345814ed4ad5', '0a5817f5-503d-4fc7-8cb3-6245fadeba33', '驗血／尿檢', 'a blood/urine test', 1, '1'),
('ead48d89-a2b3-49d3-ad8e-ac5fc96d5a57', 'bfa90797-5502-4ae8-abeb-e4c39b4ce5b5', '遺失的信件最後突然在一本書裡找到了。', 'The missing letter eventually turned up inside a book.', 2, '1'),
('eb18e4ab-0f05-4778-a69d-8c584533b823', '26d12d16-15eb-46d1-9efe-d3862fa0ca15', '孩子們永遠是活潑可愛的。', 'The children are always full of fun.', 1, '1'),
('eb662d1a-7901-42ab-999b-00f7027a4e94', '79a219cb-bb13-452d-b6bc-0c94fc63480a', '我班裡孩子的能力參差不齊。', 'I have children in my class of very mixed abilities (= different levels of skill or intelligence).', 4, '1'),
('ebb39677-c12f-499a-a148-4aee37ac6e90', '1af99bf7-c88b-4cd0-8152-7158cc117276', '我正好想要去順道拜訪問候一下。', 'I just thought I\'d call by and say hello.', 3, '1'),
('ec10c852-c304-4659-abb0-e758a911f2d0', '07869885-715f-4963-8a75-512d6b424c8b', '嘿，爸，我能幫甚麼忙嗎？', 'Hey Pop, can I do anything to help?', 1, '1'),
('ec9f0cc0-8d64-46fc-bd13-eabc8e166100', '4b1b5db1-2b73-4acf-a980-00eedc338161', '朋友得知他不幸去世的消息都深感震驚和哀痛。', 'His friends were deeply shocked and saddened by the tragic news of his death.', 1, '1'),
('ecaa1774-8577-4637-9143-fe6f8b84c899', 'bad92f6d-badd-43d0-91ff-f330ecf8e726', '「沉默的羔羊」是流行電影業的代表作品。', '\"Silence of the Lambs\" was pop movie-making at its best.', 2, '1'),
('ecbc632c-5b55-470b-8429-10b45144fa73', 'f35c7158-0bdb-405a-96ce-ce60b719bf16', '老師向每一個小朋友親切地打招呼說「你好！」', '\"The teacher greeted each child with a friendly \"\"Hello!\"\"\"', 1, '1'),
('ecd5a52f-2a4a-4a63-abf8-51187bf12fbb', '63f03d3c-d69a-4a03-9f76-ef7d86a43afc', '他騎上機車逃之夭夭。', 'He made his escape on the back of a motorcycle.', 1, '1'),
('ece00e1b-1187-4494-a20e-919c8a8928ee', '9af730ae-49f8-40e2-942f-94b2b88c52ee', '這些古董非常值錢。', 'These antiques are extremely valuable.', 1, '1'),
('ece26ee3-95ae-49d1-9050-ce6c055af83b', 'e0183713-7d60-4ac0-9d2f-660460363c4f', '這個機構的責任就是爲孩子謀取最大利益。', 'The duty of the agency is to act in the best interests of the child.', 1, '1'),
('ecf8197f-95de-4d49-83ae-7f2071e30788', 'ec88909f-a5f7-4171-a3a7-fbe3c359d153', '水作為生命的一種象徵，在她的詩歌中反覆出現。', '\"Water,  a symbol of life,  recurs as an image throughout her poems.\"', 2, '1'),
('ed029c12-5b67-4c79-9aab-0987342de758', '2049b872-7950-472d-9223-a730e6da9851', '儘管小派有傷在身，星期六的比賽他仍然會出場。', '\"In spite of his injury,  Patrick will play in Saturday\'s match.\"', 1, '1'),
('ed62b8bd-89e0-4bac-8c90-8cf5dd5815e8', '642544a1-8960-4364-8d0c-27e582c15c11', '她先接受了能力測試後才得到這份工作。', 'She had to take/do an aptitude test before she got the job.', 2, '1'),
('edd5147d-148b-463c-b6e6-7e48a3503835', '0fd0b94a-3594-49b5-94eb-6f3985129477', '這些植物需要一種能保持水分、養分充足的土壤。', 'These plants need a rich soil that retains moisture.', 1, '1'),
('ee75748b-0a22-4d0a-8d58-1ae55db0e44f', 'f65d7314-5254-4ea5-a0cf-183bad1b1c34', '實驗室測試顯示這種新藥可用於治療癌症。', 'Laboratory tests suggest that the new drug may be used to treat cancer.', 1, '1'),
('ee814579-6658-4837-949d-9b978204059d', '40acc14a-4919-4e07-b0d9-322c9f175ef3', '尋找這個難題的解決辦法是當今科學家所面臨的最大挑戰之一。', 'Finding a solution to this problem is one of the greatest challenges faced by scientists today.', 1, '1'),
('ee999fc5-92a1-49e6-99b7-1fee484d2104', '1cd7b359-1198-438c-8c10-492f12cd110a', '他不想參與大會的組織籌備工作，不過他願意出席會議並發言。', '\"He didn\'t want to be involved in the organization of/for the conference,  although he was willing to attend and speak.\"', 1, '1'),
('eed27a75-0586-462d-94ee-b516e48bf546', 'ea45b6cd-42d6-4251-aa0e-9e866238adc2', '我以為那位老人會比年輕人更加生氣，結果情況恰恰相反。', 'I thought the older people would be more offended than the young people, but it was the other way round.', 1, '1'),
('ef5b2cdd-ce89-4064-84d7-b748ebcf4d32', 'f61a3570-9d6e-41eb-8176-0cf2765f7610', '流行音樂會／歌曲', 'a pop concert/song', 2, '1'),
('ef8b2750-845f-4338-9dfa-32f38061da17', '97f68a43-3caf-4fc4-9809-6e90b1a6dcde', '把蘋果去皮、去核並剁碎。', '\"Peel,  core,  and chop the apples.\"', 1, '1'),
('efa63800-a474-436d-9969-a1b48b9dc8e3', 'f8fb0143-f22b-446a-888f-81519438e318', '獵鷹似乎在空中停了一下才撲向獵物。', 'The falcon seemed to hang in the air for a moment before diving onto its prey.', 1, '1'),
('efb1ec40-d334-470d-a557-08b2eaaf12b6', 'bc662686-0e08-4992-ac77-64655b6b34c0', '他們驗了她的血，看看是否有感染的跡象。', 'They tested her blood for signs of the infection.', 2, '1'),
('efe17b48-a5a6-4fd4-b7f6-20a94837ef21', '00487321-305e-40af-9d1a-50a24bb55ca2', '她回到她的出生地日本生活和工作。', 'She returned to live and work in her native Japan.', 1, '1'),
('efe28d36-4e42-49b1-b59b-ed2ca46f3692', '4fd1e5ed-4f34-405f-867c-2b6e122a3e1e', '我需要休息一下，徹底換換環境。', '\"I need a break,  a complete change of scene.\"', 1, '1'),
('f0235a62-6621-488b-bcc1-2c5c3ada95ab', 'ae3d2b5d-1a40-4069-bfd4-607759795708', '我飛奔上樓梯／匆匆趕到辦公室／趕忙去找電話。', 'I rushed up the stairs/to the office/to find a phone.', 1, '1'),
('f04617c3-53fa-430f-b020-c59a1431899b', 'f4b26db0-34d5-4d39-ae32-c81db2a6be2b', '在該地區有一個大的黑人／白人／猶太人社區。', 'There\'s a large black/white/Jewish community living in this area.', 1, '1'),
('f063e820-707f-40a4-9eb3-a197bbbce7c3', 'b7b53268-9775-4ecb-a6a6-ae933a6bdc55', '這間工廠用機器人取代了大多數工人。', 'The factory replaced most of its workers with robots.', 1, '1'),
('f079fe4b-7e83-4422-b589-a66de40b6476', '2b1e1cbb-bc15-4d4b-b1d4-ab22e1e72815', '漲水的時候這條河很難過去。', 'The river is difficult to cross during periods of high water.', 1, '1'),
('f08e4baa-ca0b-4956-a0bc-16fe7ed470e5', 'c221f6f5-1ed6-4ca9-93f1-671e25af9f5e', '她希望為一家規模和影響力更大的報紙工作。', 'She wanted to work for a bigger and more influential (= powerful) newspaper.', 1, '1'),
('f0a02942-c0c8-45b5-b262-47e1432614b5', '15674398-886a-4859-9e87-d088b26fb626', '陪審團作出裁定，判給受害人名譽損害賠償金十萬英鎊。', '\"The jury awarded libel damages of £100, 000.\"', 1, '1'),
('f0ad866b-2aa0-4a29-9982-2fd5668d8d58', 'ed070648-f172-4801-8de1-2a6f4481a9d4', '這篇文章是關於國際援助組織的。', 'The article was about the international aid organizations.', 1, '1'),
('f0d5ea67-70df-41bd-8168-fce113880dd9', '79a219cb-bb13-452d-b6bc-0c94fc63480a', '她有能力簡單扼要地把事情解釋清楚。', 'She had the ability to explain things clearly and concisely.', 2, '1'),
('f105bc42-e7db-4ef1-be9c-bd1998945341', '48dcba1f-229a-44d9-be7f-058f7c6c9ee1', '音樂聲響起，香檳酒砰砰地打開了。', 'The music played and champagne corks popped.', 2, '1'),
('f11cbf86-d897-4fad-8111-dbcb3cbdaad1', '1a4fb9ee-5133-4eda-9572-b99ae8892327', '她漸漸地意識到他不跟她說實話。', '\"Gradually,  she realized that he wasn\'t telling her the truth.\"', 1, '1'),
('f14dc3ce-d6fb-4ad6-a5a1-94950b4fed19', '55967a19-6d2f-462c-935b-ee2015e3335c', '政府的聲譽已因一連串醜聞受到了損害。', 'The government\'s reputation has already been harmed by a series of scandals.', 1, '1'),
('f19ee37d-3064-4ff2-a01d-d00854d611ef', 'e18ecae5-bc4a-4ef7-85ab-56872bc5c1a2', '奧斯卡最佳導演獎', 'the Academy Award for Best Director', 1, '1'),
('f1a6dd16-6326-4d3c-a7ef-8573d769969e', 'f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '你說得不多，瓊——你怎麼想？', 'You haven\'t said much, Joan - what do you think?', 2, '1'),
('f1fd5720-53ad-4f56-b57b-f196b2b525de', 'aa3763d1-cf88-4b09-8193-f68f03942a20', '她弟弟借用她的機車，結果給撞壞了。', 'Her brother borrowed her motorbike and crashed it.', 1, '1'),
('f20f6c1c-1831-43b2-aeb9-be289ee702b7', '6b995d1b-91d2-45d6-bb53-5ed294c46fb0', '你能描述一下襲擊你的人的樣子嗎？', 'Could you describe your attacker?', 1, '1'),
('f21c1765-e191-41d6-b249-05a388442d5b', '9773f80a-31fb-4245-a900-b52de68f6061', '我工作時總是這樣——要不無事可做，要不忙得停不住腳！', 'It\'s always the way at work - either I have nothing to do or I\'m rushed off my feet!', 6, '1'),
('f22a072d-8093-46d9-98d1-640cf94ff983', '3ad4aefd-e3b6-49c0-aadb-4d1cb25f139b', '禦寒的衣服', 'clothing that protects you against the cold', 1, '1'),
('f2a6616d-3ff1-4d09-97cd-2eea6031c780', '3481af8a-3887-4e1e-ab84-2a600f3c849f', '你瞧，我終於把它弄好了。', 'There, I\'ve finally got it working.', 1, '1'),
('f30134af-bbe2-4739-be28-c96f8c115ad2', 'aa7f0c75-a6ae-41e1-99ee-a872bfffd1ab', '這個村莊（人口為3915）是一個繁忙的河港。', 'The village (pop. 3,915) is a bustling river port.', 1, '1'),
('f3177b05-be07-43e9-bec5-84e5278957e2', '5f1945e9-e7f6-4b69-8d26-20e721103579', '「你知道這要花多少錢嗎？」「完全不知道。」', '\"Do you have any idea how much this cost?\" \"None at all/None whatsoever.\"', 3, '1'),
('f324e642-a0fe-4d04-8127-7dbebcd3901a', '460e2b56-81ee-4f49-a4e5-fe88102299d7', '馬克臉上經常帶著一副苦惱的神情。', 'Mark always has such a miserable expression on his face.', 1, '1'),
('f330b0d8-5e10-48ac-81c7-5e4f2485f8f4', 'a137c412-f845-4f50-80d2-5b53dd17d9df', '當地的／古老的風俗', 'a local/ancient custom', 1, '1'),
('f349ee72-88c5-415b-8053-9924f3294786', 'fc25c275-6a11-4ee1-a59f-37f7739abd44', '火車到達倫敦的時候，車內已經沒有乘客了。', 'The train was empty (= there were no passengers) by the time it reached London.', 1, '1'),
('f3910b75-b5d0-4f0b-96a0-a6ee85768f00', 'ef880ac2-15ee-4596-a14c-cb1b8f854dce', '到我回來的時候，吃的都沒有了。', 'By the time I got back, there was no food left.', 4, '1'),
('f3a2acb3-aa6f-47a5-a8ef-4273014e45c5', '5658f890-3f4d-4665-b94a-995a65d908b3', '由於最近銷售量滑坡，利潤下降了。', 'Profits have decreased as a result of the recent drop in sales.', 1, '1'),
('f3ad1916-f092-4efa-a9be-03408d305232', '17fef3ff-173c-446a-8645-76615f936af0', '這段感情是註定不會有結果的，但是過程很開心。', 'The relationship was never going to work, but it was fun while it lasted.', 9, '1'),
('f44827d8-e9ae-4609-b1ee-00d42a8b0e69', '7c2ab278-216d-48b1-a506-65e800adab82', '驗血／尿檢', 'a blood/urine test', 1, '1'),
('f4d9dae1-f57f-4e98-9778-95e65361e2ac', '01a2efa5-5402-446b-9ab7-4669b87940e2', '一瓶／份／杯水', 'a bottle/drink/glass of water', 1, '1'),
('f50d4913-3cd2-49d4-b92e-df7803abe690', 'd0ff1ef6-6934-4827-9ff1-ada1765d98d9', '化學工業生產諸如藥品、橡膠之類的東西。', 'The chemical industry produces such things as drugs and rubber.', 1, '1'),
('f5945b68-b270-4153-a773-06f237908db2', 'a59a063c-280b-48d1-b861-6c29705a3e2a', '浮油嚴重威脅著島嶼周圍的海洋生物。', 'The oil slick seriously threatens marine life around the islands.', 1, '1'),
('f5bc9796-ce3f-4fe9-81de-9572a837a2fa', 'a3f745b6-33fa-4359-8e2f-2d7d1a2e8fe9', '脆生生的蘋果', 'a crisp apple', 1, '1'),
('f5f19fa7-ca90-4c62-a957-feac02d54255', 'f341968e-4e8e-4c74-829b-e094e6241660', '她向丈夫坦白她賣掉了結婚戒指。', 'She confessed to her husband that she had sold her wedding ring.', 1, '1'),
('f6512c7c-f692-4b96-8e39-76928b005d3c', '6c2b7e76-4191-4f5a-9b72-dd416278f710', '預防犯罪', 'crime prevention', 1, '1'),
('f7540548-43ee-45ed-8e55-fa6949aadad0', 'b242721f-6100-4b33-af03-7ddb8a9985bd', '在臉書上給我們加讚吧！', 'Like us on Facebook!', 1, '1'),
('f767b8b9-3a7d-4729-aa33-c4c764f7a2b9', '8c26da2f-6e4c-4912-99cd-7e9dc0e7bf15', '你今天下午為甚麼不過來看看我們呢？', 'Why don\'t you pop in/over and see us this afternoon?', 4, '1'),
('f7830718-ea1b-4858-8089-b8519d4971c4', '98ec6508-adb4-42f7-8d21-71dce729177c', '戰鬥爆發後，這個地方很快就沒人了。', 'The place emptied pretty quickly when the fight started.', 1, '1'),
('f7d0a282-d7d3-432a-a9fe-157942994019', '98f1bf50-2289-4708-a428-b70fb358fea0', '我們必須把握住一切機會加強與其他國家的經濟聯繫。', 'We must grasp every opportunity to strengthen economic ties with other countries.', 1, '1'),
('f8581438-792c-4046-ba87-c46af1c14653', '5354565c-bcd8-4dd9-be51-f28596311c4c', '你不能婚姻稍有問題就想擺脫掉了事。', 'You can\'t just walk away from a marriage at the first sign of a problem.', 1, '1'),
('f8603758-4387-4d58-a012-f8df68a0071a', '81f645da-d17f-45b7-9740-9dc75cc25034', '這茶很燙，喝的時候小心點。', '\"This tea is very hot,  so sip it carefully.\"', 1, '1'),
('f86847a2-2ca3-451f-97dd-41558d525561', 'f1d709ba-1e56-4d8d-818a-65f9a8ffaf42', '我不太擅長編織。', 'I\'m not much good at knitting (= do not do it very well).', 19, '1'),
('f889c194-7e24-4abb-b6ae-c88eaf3440de', 'c098fddb-94dd-4ded-a571-f3c0db444755', '環境保護組織正迅速贏得年輕人的支持。', 'Environmental groups are fast gaining support among young people.', 1, '1'),
('f8f2cbc4-1ce9-4015-80de-48135d5a1256', 'd5c2487f-a32d-4b7f-bc31-4a7dd2df26e0', '救生艇每月都會執行很多救援任務。', 'Lifeboats carry out many rescues every month.', 1, '1'),
('f95afd36-951a-44b7-a01e-de9c0dc49d05', 'b2049ed2-7327-4808-92cb-4a04fc1d0079', '我非常願意幫忙。', 'I\'m perfectly happy to (= I will willingly) help out.', 6, '1'),
('f9721bb8-8a03-42cb-afbf-8b90a607c145', '5523a0b1-cd6e-4c2e-9087-079c5b1d2e35', '我母親一直想學繪畫，她只是需要有人含蓄地鼓勵她一下。', 'My mother had always wanted to learn how to paint - she just needed a gentle push.', 1, '1'),
('f9d77623-1802-43d4-988d-65f5011d561e', '2ed16560-482e-4f17-80e7-7182b9491db0', '她花費太多的錢買衣服了。', 'She spends way too much money on clothes.', 2, '1'),
('f9d879e8-00c3-4450-b81c-c88675745846', '4f80ce2e-2f80-4605-8790-7d2ce79f8a8e', 'flight 一詞有兩個不同的意思：航程和逃跑。', '\"The word \"\"flight\"\" has two different meanings: a plane journey,  and the act of running away.\"', 1, '1'),
('fa00af8f-2f66-4d5c-b99c-9faa913a3a78', '12291f57-bcaa-4ab0-a3f6-5bf718f4b4bf', '他非常有力地和我握了握手。', 'He shook my hand with a very firm grasp.', 1, '1'),
('fa1aa801-381c-4fa9-b6ed-b06543ef2b7a', '166cdcfa-c215-439a-b50b-af61f89f5435', '例如，電子業就會失去5000份工作。', '\"In the electronics industry,  for instance,  5, 000 jobs are being lost.\"', 1, '1'),
('fa6bbdfb-b08d-4279-91a3-b5dd2e0be16c', '12cb3b1c-0b3c-47b5-9566-0fed81f6172a', '她身穿昂貴的外套，戴著鑽石首飾，在這樣隨意的餐館顯得過分了。', 'She wore an expensive suit and diamonds, which was a bit much for such a casual restaurant.', 2, '1'),
('fa7e40ac-b825-4968-b02b-243c93b3660e', '7ab74a42-8ef3-4c16-a838-8389383ca517', '該公司打算明年春天向歐洲市場大舉推進。', 'The company plans to make a big push into the European market next spring.', 1, '1'),
('fae5a808-c398-4002-8133-28707f2601b1', '94e25dac-47aa-4739-b54f-569c2f6853aa', '他性格中有種與眾不同的東西。', 'There\'s something special about him (= in his character).', 11, '1'),
('fb53cab9-7d0b-4ba7-bfab-922e0701739d', '83c94cd9-1f24-4fea-b332-40f247cf00df', '麥哲倫是16世紀著名的探險家。', 'Magellan was a famous 16th-century explorer.', 1, '1'),
('fb88312b-e619-479b-ad38-71bfeca7d4e4', 'a7408dd6-cc64-4c37-87aa-1d24c9731dde', '他講了幾個粗俗的笑話，讓自己的講話顯得更有趣一點。', 'He\'d spiced up his speech with a few rude jokes.', 1, '1'),
('fb8fddb3-9fa0-4e81-ac59-fb4204070eba', 'd98fc93c-f0b1-416a-8916-ba9719b97d92', '常規檢查／體檢', 'a routine inspection/medical check-up', 1, '1'),
('fbbac08e-385a-4e14-a3b4-1990af7f70e6', '427a3f2f-fdd0-4d54-ae9c-b13090cf2f28', '我很喜歡喝酒，但沒有酒我還是可以忍受的。', 'I quite like wine but I could live without it.', 4, '1'),
('fbe05b1c-e785-498d-8904-dd8a96706c9e', 'c1e1512f-7f59-41d9-a2d8-9194ecd3481a', '「這個房間朝哪個方向？」「朝北。」', '\"Which way does the room face?\" \"North.\"', 1, '1'),
('fbf60048-fdc5-4be0-a223-18cf1f4079b9', '4c56f331-aaba-4701-a89a-1470a36337de', '如今子女對父母權威的質疑遠遠多於過去。', 'Children challenge their parents\' authority far more nowadays than they did in the past.', 1, '1'),
('fc024aa6-f16a-4588-86d3-e7223aea1051', 'a5e73d26-9915-48be-acf5-e0720d27e2f4', '新政黨的建立', 'the creation of a new political party', 1, '1'),
('fc7d1ef3-3c25-4933-9cc0-7967df7ba5b2', '86c78ff4-e65a-48ca-8d2c-a70147d2954e', '飛行員失去了對飛機的控制。', 'The pilot lost control of the plane .', 1, '1'),
('fc939055-df24-4a74-965e-7ec05fe9588b', '69bc2319-7ba9-4346-a49a-695ae4550724', '我們估計大約會有300名來賓，可實際人數要多得多。', '\"We had estimated about 300 visitors,  but the actual number was much higher.\"', 1, '1'),
('fc9b500c-9717-4d51-b7e8-4515318fc1c3', '57358aa1-d377-4b35-bc25-9cd0efa5acfa', '人們常指責美國奉行文化帝國主義。', 'The US is often accused of cultural imperialism.', 1, '1'),
('fcb96c02-3b69-4fd2-9be2-7ae8662fb8a6', '7a181ad7-83cc-41d2-b2c1-491ffb3b154e', '這種藥物治療頭痛極其有效。', 'It\'s an extremely effective cure for a headache.', 1, '1'),
('fcf17fd5-2c93-472f-be71-0a4477a2ff24', '49817fcb-5936-49ef-bea8-d7a987c330f4', '她十歲的時候開始愛上了芭蕾。', 'Her love affair with ballet began when she was ten.', 2, '1'),
('fcff6bfc-becc-4e7f-a0e2-10b848eeb5b3', 'afa7a14d-a149-4622-9be0-1ab5f05733d6', '六年來，她一直努力想通過駕照考試，終於得償所願。', 'She\'s been trying to pass her driving test for six years and she\'s finally succeeded.', 1, '1'),
('fd073c1e-f256-4fb8-873f-e439f5eb2434', 'b2049ed2-7327-4808-92cb-4a04fc1d0079', '經理很樂意今天下午見你。', 'The manager will be happy (= is willing) to see you this afternoon.', 11, '1'),
('fd1f322a-f760-446d-b4ef-eb7b11e9af5b', '2f04ab4f-1f18-41dc-be3e-8bbaf0e003eb', '他們試圖將殺人罪推到一名無辜的軍官身上。', 'They tried to pin (= put) the blame for the killing on an innocent army officer.', 1, '1'),
('fd9fd4e5-5d9a-45fe-936c-a43a44e798cd', '5a721e29-a29f-46a9-b694-b3a009399c87', '今天班裡有一個拼寫測驗。', 'The class are doing/having a spelling test today.', 1, '1'),
('fdad0501-0f5b-4da1-a368-199b73c25144', 'eef342cb-9425-4b4d-b705-edc2a715649b', '技術問題從旅行一開始就一直困擾著我們。', 'Technical problems dogged our trip from the outset.', 1, '1'),
('fdc902e4-f82b-4373-a48e-93dfdfbf1a48', 'c46c8f6a-cfed-4192-b57e-b5770ac7b473', '博物館今天關門了，我們明天再去。', 'The museum is closed today. We\'ll go there tomorrow.', 2, '1'),
('fe7fbdf6-3052-4cb5-b3a4-f0a74dab441e', '94fb0630-90d8-48bf-aeb5-d0fa8141039c', '健康的飲食對你的消化系統有好處。', 'A healthy diet is good for your digestive system.', 1, '1'),
('fe91e8b0-04b7-40ac-90e0-87d4bd455766', 'b34a17c3-fb8a-406f-bf76-a31971764342', '隨著時間的推移，他們的泛泛之交變成了鞏固的友誼。', '\"Over time,  their acquaintance developed into a lasting friendship.\"', 2, '1'),
('feca51a2-1864-4261-b7a6-d446202332c6', '4f3a3778-8422-4032-87cd-e31fadb6797a', '她眼神中流露出深切的悲傷。', 'Her eyes expressed deep sadness.', 1, '1'),
('fee8f271-5c80-4990-8193-c74136fda988', '24cf0603-8415-466b-9025-bafe0988dd12', '這個無賴，他想偷我的錢。', 'He tried to steal my money, the dirty dog.', 1, '1'),
('ff0564c5-8605-4137-a000-b01e98c70e66', '01a2efa5-5402-446b-9ab7-4669b87940e2', '熱／冷水', 'hot/cold water', 3, '1'),
('ff21c031-33a9-4e43-88b7-04bc12fd49b6', 'bd1e06b3-27e5-421f-a3f5-04176713af2e', '蘋果樹', 'an apple tree', 3, '1'),
('ff47961a-3c55-4074-9647-b61b65f1f1a6', '8206aa83-e524-4a56-ae4c-75009d260ada', '生菠菜營養價值尤其高。', 'Raw spinach is especially nutritious.', 1, '1');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`ClassId`);

--
-- 資料表索引 `classstudent`
--
ALTER TABLE `classstudent`
  ADD PRIMARY KEY (`ClassStudentId`),
  ADD KEY `classstudent_FK` (`ClassId`),
  ADD KEY `classstudent_FK_1` (`StudentId`);

--
-- 資料表索引 `classtextbook`
--
ALTER TABLE `classtextbook`
  ADD PRIMARY KEY (`ClassTextbookId`),
  ADD KEY `classtextbook_FK` (`ClassId`),
  ADD KEY `classtextbook_FK_1` (`TextbookId`);

--
-- 資料表索引 `decklist`
--
ALTER TABLE `decklist`
  ADD PRIMARY KEY (`DecklistId`);

--
-- 資料表索引 `decklistdetail`
--
ALTER TABLE `decklistdetail`
  ADD PRIMARY KEY (`DeckId`),
  ADD KEY `deck_FK` (`DecklistId`);

--
-- 資料表索引 `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- 資料表索引 `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`StudentId`);

--
-- 資料表索引 `studentverify`
--
ALTER TABLE `studentverify`
  ADD PRIMARY KEY (`StudentVerifyId`);

--
-- 資料表索引 `testresult`
--
ALTER TABLE `testresult`
  ADD PRIMARY KEY (`TestResultId`);

--
-- 資料表索引 `testresultchapter`
--
ALTER TABLE `testresultchapter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testresultchapter_FK` (`TestResultId`);

--
-- 資料表索引 `testresultdetail`
--
ALTER TABLE `testresultdetail`
  ADD PRIMARY KEY (`TestResultDetailId`),
  ADD KEY `TestResultDetail_FK` (`TestResultId`);

--
-- 資料表索引 `textbook`
--
ALTER TABLE `textbook`
  ADD PRIMARY KEY (`TextbookId`);

--
-- 資料表索引 `textbookcontent`
--
ALTER TABLE `textbookcontent`
  ADD PRIMARY KEY (`TextbookContentId`),
  ADD KEY `textbookcontent_FK` (`TextbookId`);

--
-- 資料表索引 `textbookcontentchapter`
--
ALTER TABLE `textbookcontentchapter`
  ADD PRIMARY KEY (`TextbookContentChapterId`),
  ADD KEY `textbookcontentchapter_FK` (`TextbookContentId`);

--
-- 資料表索引 `textbookcontentchapterdeck`
--
ALTER TABLE `textbookcontentchapterdeck`
  ADD PRIMARY KEY (`TextbookCCDeckId`),
  ADD KEY `textbookcontentchapterdeck_FK` (`TextbookContentChapterId`);

--
-- 資料表索引 `version`
--
ALTER TABLE `version`
  ADD PRIMARY KEY (`Id`);

--
-- 資料表索引 `word`
--
ALTER TABLE `word`
  ADD PRIMARY KEY (`WordId`);

--
-- 資料表索引 `worddef`
--
ALTER TABLE `worddef`
  ADD PRIMARY KEY (`WordDefId`),
  ADD KEY `worddef_FK` (`WordId`);

--
-- 資料表索引 `wordsen`
--
ALTER TABLE `wordsen`
  ADD PRIMARY KEY (`WordSenId`),
  ADD KEY `wordsen_FK` (`WordDefId`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `classstudent`
--
ALTER TABLE `classstudent`
  MODIFY `ClassStudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=908;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `decklistdetail`
--
ALTER TABLE `decklistdetail`
  MODIFY `DeckId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=759;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `testresultchapter`
--
ALTER TABLE `testresultchapter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `testresultdetail`
--
ALTER TABLE `testresultdetail`
  MODIFY `TestResultDetailId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=993;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `textbookcontentchapterdeck`
--
ALTER TABLE `textbookcontentchapterdeck`
  MODIFY `TextbookCCDeckId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=593;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `version`
--
ALTER TABLE `version`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `classstudent`
--
ALTER TABLE `classstudent`
  ADD CONSTRAINT `classstudent_FK` FOREIGN KEY (`ClassId`) REFERENCES `class` (`ClassId`),
  ADD CONSTRAINT `classstudent_FK_1` FOREIGN KEY (`StudentId`) REFERENCES `student` (`StudentId`);

--
-- 資料表的限制式 `classtextbook`
--
ALTER TABLE `classtextbook`
  ADD CONSTRAINT `classtextbook_FK` FOREIGN KEY (`ClassId`) REFERENCES `class` (`ClassId`),
  ADD CONSTRAINT `classtextbook_FK_1` FOREIGN KEY (`TextbookId`) REFERENCES `textbook` (`TextbookId`);

--
-- 資料表的限制式 `decklistdetail`
--
ALTER TABLE `decklistdetail`
  ADD CONSTRAINT `deck_FK` FOREIGN KEY (`DecklistId`) REFERENCES `decklist` (`DecklistId`);

--
-- 資料表的限制式 `testresultchapter`
--
ALTER TABLE `testresultchapter`
  ADD CONSTRAINT `testresultchapter_FK` FOREIGN KEY (`TestResultId`) REFERENCES `testresult` (`TestResultId`);

--
-- 資料表的限制式 `testresultdetail`
--
ALTER TABLE `testresultdetail`
  ADD CONSTRAINT `TestResultDetail_FK` FOREIGN KEY (`TestResultId`) REFERENCES `testresult` (`TestResultId`);

--
-- 資料表的限制式 `textbookcontent`
--
ALTER TABLE `textbookcontent`
  ADD CONSTRAINT `textbookcontent_FK` FOREIGN KEY (`TextbookId`) REFERENCES `textbook` (`TextbookId`);

--
-- 資料表的限制式 `textbookcontentchapter`
--
ALTER TABLE `textbookcontentchapter`
  ADD CONSTRAINT `textbookcontentchapter_FK` FOREIGN KEY (`TextbookContentId`) REFERENCES `textbookcontent` (`TextbookContentId`);

--
-- 資料表的限制式 `textbookcontentchapterdeck`
--
ALTER TABLE `textbookcontentchapterdeck`
  ADD CONSTRAINT `textbookcontentchapterdeck_FK` FOREIGN KEY (`TextbookContentChapterId`) REFERENCES `textbookcontentchapter` (`TextbookContentChapterId`);

--
-- 資料表的限制式 `worddef`
--
ALTER TABLE `worddef`
  ADD CONSTRAINT `worddef_FK` FOREIGN KEY (`WordId`) REFERENCES `word` (`WordId`);

--
-- 資料表的限制式 `wordsen`
--
ALTER TABLE `wordsen`
  ADD CONSTRAINT `wordsen_FK` FOREIGN KEY (`WordDefId`) REFERENCES `worddef` (`WordDefId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
