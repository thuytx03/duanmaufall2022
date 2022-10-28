-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 20, 2022 lúc 10:47 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duanmaufall2022`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int(10) NOT NULL,
  `bill_name` varchar(255) NOT NULL,
  `bill_email` varchar(255) NOT NULL,
  `bill_address` varchar(255) NOT NULL,
  `bill_tel` varchar(255) NOT NULL,
  `bill_pttt` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1: Trả tiền khi nhận hàng | 2: Chuyển khoản ngân hàng | 3: Thanh toán Online',
  `total` int(11) NOT NULL,
  `ngaydathang` varchar(255) NOT NULL,
  `bill_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: Đơn hàng mới | 1: Đang xử lý | 2: Đang giao hàng | 3: Hoàn tất',
  `receive_name` varchar(255) NOT NULL,
  `receive_tel` varchar(255) NOT NULL,
  `receive_address` varchar(255) NOT NULL,
  `tongdonhang` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id`, `bill_name`, `bill_email`, `bill_address`, `bill_tel`, `bill_pttt`, `total`, `ngaydathang`, `bill_status`, `receive_name`, `receive_tel`, `receive_address`, `tongdonhang`) VALUES
(25, 'Trinh Thuy', 'trinhxuanthuy1542003@gmail.com', 'HN', '12324354', 1, 0, '07:15:58am 02/10/2022', 0, '', '', '', 2990),
(45, 'Hà', 'thuytxph26691@fpt.edu.vn', 'HN', '0387976086', 1, 0, '09:19:51am 02/10/2022', 0, '', '', '', 900),
(50, 'Lan Ngọc Phạm', 'lanngoc@gmail.com', '312', '3123213', 1, 0, '02:37:11pm 05/10/2022', 0, '', '', '', 190),
(69, 'Trinh Thuy', 'trinhxuanthuy1542003@gmail.com', 'HN', '', 1, 0, '10:24:24pm 05/10/2022', 0, '', '', '', 100),
(74, 'Trinh Thuy', 'trinhxuanthuy1542003@gmail.com', 'HN', '21123', 1, 0, '03:09:52pm 12/10/2022', 0, '', '', '', 100),
(77, 'Lan Ngọc Phạm', 'lanngoc@gmail.com', '312', '35435454354', 1, 0, '10:50:10pm 15/10/2022', 0, '', '', '', 100),
(78, 'Thuỷ', 'thuytxph26691@fpt.edu.vnf', '6546', '32423', 2, 0, '10:52:40pm 15/10/2022', 0, '', '', '', 900),
(79, 'Lan Ngọc Phạm', 'lanngoc@gmail.com', '312', '1323', 2, 0, '03:29:55pm 19/10/2022', 0, '', '', '', 50);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(10) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `iduser` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `ngaybinhluan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `noidung`, `iduser`, `idpro`, `ngaybinhluan`) VALUES
(33, 'thuyr', 3, 23, '8:38:56 AM 03/10/2022'),
(34, 'abc', 3, 23, '17:23:05 PM 03/10/2022'),
(35, 'ttttttttttt', 0, 23, '17:26:10 PM 04/10/2022'),
(36, 'ttttttt', 3, 23, '17:26:40 PM 04/10/2022'),
(39, 'aasasdasdasdasd', 3, 23, '22:37:50 PM 04/10/2022'),
(42, 'eqweq', 3, 22, '14:35:59 PM 05/10/2022'),
(43, '12423432', 3, 22, '15:09:02 PM 12/10/2022'),
(44, 'qwewq', 0, 21, '22:36:01 PM 15/10/2022'),
(45, 'SÀUHIUDFIUQEFEIFUOABFSIDLBVFISBVDSObSPIBFSDJVDFJBVDAJKFNOiasfisuduifhgsfdifndfjv dfijEOIHFEWUVB QƯDNIADHQWI QƯDEFUIHEF9EIOFWINIvdwvnOEWNFISDVNE', 0, 21, '22:36:51 PM 15/10/2022'),
(46, 'alo', 0, 20, '22:42:57 PM 15/10/2022'),
(47, 'eqwe', 19, 27, '22:46:34 PM 15/10/2022'),
(48, 'thuỷ', 4, 24, '22:47:30 PM 15/10/2022'),
(50, 'alo', 18, 22, '22:48:45 PM 15/10/2022'),
(51, 'oke', 18, 22, '22:48:48 PM 15/10/2022'),
(52, 'rat chi la ok', 18, 22, '22:48:56 PM 15/10/2022'),
(53, 'good chops', 18, 22, '22:49:04 PM 15/10/2022'),
(54, 'dsad', 22, 31, '13:45:46 PM 19/10/2022'),
(55, 'fd', 0, 24, '15:05:00 PM 19/10/2022'),
(56, 'gfdgdfgdfgd', 0, 24, '15:05:03 PM 19/10/2022'),
(57, 'ttttt', 0, 23, '15:05:36 PM 19/10/2022'),
(58, '123', 22, 22, '20:35:42 PM 19/10/2022'),
(59, '4324', 17, 22, '20:35:56 PM 19/10/2022');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `iduser` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `soluong` int(10) NOT NULL,
  `thanhtien` int(10) NOT NULL,
  `idbill` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `iduser`, `idpro`, `img`, `name`, `price`, `soluong`, `thanhtien`, `idbill`) VALUES
(33, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 3, 900, 16),
(34, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 1, 100, 16),
(35, 0, 27, 'upload/sp8.jpg', 'Samsung Galaxy Watch5', 190, 1, 190, 16),
(36, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 3, 900, 17),
(50, 0, 27, 'upload/sp8.jpg', 'Samsung Galaxy Watch5', 190, 1, 190, 21),
(51, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 3, 900, 22),
(52, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 1, 100, 22),
(53, 0, 27, 'upload/sp8.jpg', 'Samsung Galaxy Watch5', 190, 1, 190, 22),
(54, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 3, 900, 23),
(55, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 1, 100, 23),
(56, 0, 27, 'upload/sp8.jpg', 'Samsung Galaxy Watch5', 190, 1, 190, 23),
(57, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 3, 900, 24),
(58, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 1, 100, 24),
(59, 0, 27, 'upload/sp8.jpg', 'Samsung Galaxy Watch5', 190, 1, 190, 24),
(60, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 3, 900, 25),
(61, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 1, 100, 25),
(62, 0, 27, 'upload/sp8.jpg', 'Samsung Galaxy Watch5', 190, 1, 190, 25),
(63, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 3, 900, 26),
(64, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 1, 100, 26),
(65, 0, 27, 'upload/sp8.jpg', 'Samsung Galaxy Watch5', 190, 1, 190, 26),
(66, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 3, 900, 27),
(67, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 1, 100, 27),
(68, 0, 27, 'upload/sp8.jpg', 'Samsung Galaxy Watch5', 190, 1, 190, 27),
(69, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 3, 900, 28),
(70, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 1, 100, 28),
(71, 0, 27, 'upload/sp8.jpg', 'Samsung Galaxy Watch5', 190, 1, 190, 28),
(72, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 3, 900, 29),
(73, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 1, 100, 29),
(74, 0, 27, 'upload/sp8.jpg', 'Samsung Galaxy Watch5', 190, 1, 190, 29),
(75, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 3, 900, 30),
(76, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 1, 100, 30),
(77, 0, 27, 'upload/sp8.jpg', 'Samsung Galaxy Watch5', 190, 1, 190, 30),
(78, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 3, 900, 31),
(79, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 1, 100, 31),
(80, 0, 27, 'upload/sp8.jpg', 'Samsung Galaxy Watch5', 190, 1, 190, 31),
(81, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 3, 900, 32),
(82, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 1, 100, 32),
(83, 0, 27, 'upload/sp8.jpg', 'Samsung Galaxy Watch5', 190, 1, 190, 32),
(84, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 1, 900, 33),
(85, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 6, 100, 33),
(86, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 1, 900, 34),
(87, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 6, 100, 34),
(88, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 1, 900, 35),
(89, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 6, 100, 35),
(90, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 1, 900, 36),
(91, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 6, 100, 36),
(92, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 1, 900, 37),
(93, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 6, 100, 37),
(94, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 1, 900, 38),
(95, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 6, 100, 38),
(96, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 1, 900, 39),
(97, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 1, 900, 40),
(98, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 1, 900, 41),
(99, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 1, 900, 42),
(100, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 1, 900, 43),
(101, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 1, 900, 44),
(102, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 1, 900, 45),
(103, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 1, 900, 46),
(104, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 1, 900, 47),
(105, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 1, 900, 48),
(106, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 1, 100, 48),
(107, 0, 27, 'upload/sp8.jpg', 'Samsung Galaxy Watch5', 190, 1, 190, 50),
(108, 0, 27, 'upload/sp8.jpg', 'Samsung Galaxy Watch5', 190, 2, 190, 51),
(109, 0, 27, 'upload/sp8.jpg', 'Samsung Galaxy Watch5', 190, 2, 190, 52),
(110, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 1, 100, 52),
(111, 0, 27, 'upload/sp8.jpg', 'Samsung Galaxy Watch5', 190, 2, 190, 53),
(112, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 1, 100, 53),
(113, 0, 27, 'upload/sp8.jpg', 'Samsung Galaxy Watch5', 190, 2, 190, 54),
(114, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 1, 100, 54),
(115, 0, 27, 'upload/sp8.jpg', 'Samsung Galaxy Watch5', 190, 2, 190, 55),
(116, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 1, 100, 55),
(117, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 1, 100, 61),
(118, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 1, 100, 62),
(119, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 1, 100, 69),
(120, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 1, 100, 71),
(121, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 1, 100, 74),
(122, 0, 22, 'upload/sp3.jpg', 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100, 1, 100, 77),
(123, 0, 23, 'upload/sp4.jpg', 'iPhone 13 256GB | Chính hãng VN/A', 900, 1, 900, 78),
(124, 0, 21, 'upload/sp2.jpg', 'Ốp lưng MagSafe iPhone 13 Pro Apple Silicone Case Chính hãng', 50, 1, 50, 79);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`) VALUES
(13, 'Laptop'),
(14, 'Balo'),
(15, 'Đồng hồ'),
(16, 'Điện thoại'),
(18, 'Tai nghe'),
(19, 'Bàn phím'),
(20, 'Sạc dự phòng'),
(21, 'Ốp lưng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double(10,2) DEFAULT 0.00,
  `soluong` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `luotxem` int(11) DEFAULT 0,
  `iddm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `price`, `soluong`, `img`, `mota`, `luotxem`, `iddm`) VALUES
(20, 'iPhone 13 Pro 128GB | Chính hãng VN/A', 1000.00, 100, 'sp1.jpg', 'Hiệu năng vượt trội - Chip Apple A15 Bionic mạnh mẽ, hỗ trợ mạng 5G tốc độ cao\r\nKhông gian hiển thị sống động - Màn hình 6.1\" Super Retina XDR độ sáng cao, sắc nét\r\nTrải nghiệm điện ảnh đỉnh cao - Cụm 3 camera 12MP, hỗ trợ ổn định hình ảnh quang học\r\nTối ưu điện năng - Sạc nhanh 20 W, đầy 50% pin trong khoảng 30 phút', 13, 16),
(21, 'Ốp lưng MagSafe iPhone 13 Pro Apple Silicone Case Chính hãng', 50.00, 123, 'sp2.jpg', 'Ốp lưng iPhone 13 Pro Silicone Case – Chất liệu silicon bền dẻo\r\nĐây là một chiếc ốp dành cho iPhone 13 Pro, một sản phẩm mới ra nổi tiếng cũng của hãng này. Không chỉ đẹp mắt, sang trọng mà còn có chất lượng xứng đáng với số tiền bỏ ra. Đó là ốp lưng iPhone 13 Pro silicone Case with Magsafe.\r\n\r\nChất silicon mềm dẻo, căn chỉnh với nam châm\r\nỐp lưng Apple Silicone Case được tạo nên từ chất liệu silicon cao cấp, siêu bền dẻo. Cảm giác cầm ốp trên tay rất mượt mà, mịn màng mềm mại mà lại không gây trơn trượt khó chịu. \r\n\r\nBên trong trang bị một lớp lót bằng sợi siêu nhỏ giúp tăng gấp đôi khả năng bảo vệ cho iPhone 13 Pro. Ốp có gắn nam châm tích hợp giúp căn chỉnh lại dễ dàng vị trí của ốp vừa khít so với iPhone 13 Pro. ', 47, 21),
(22, 'Pin dự phòng Apple Magsafe MJWY3 | Chính hãng Apple Việt Nam', 100.00, 312, 'sp3.jpg', 'Pin dự phòng Apple MagSafe - Pin sạc không dây đến từ Apple\r\nApple vừa cho ra mắt pin dự phòng Apple MagSafe dành cho iPhone 12 series trở lên. Đây được xem là bộ pin mở rộng thông qua giao tiếp MagSafe được tích hợp trên dòng iPhone 12, và là vật cứu cánh dành cho iPhone 12 mini với dung lượng thấp.\r\n\r\nThiết kế nhỏ gọn, công suất sạc lớn, lên đến 15W\r\nThiết kế của pin dự phòng Apple MagSafe cực kỳ nhỏ gọn, cụ thể chỉ bằng một nửa so với chiếc iPhone 12 Mini, giúp người dùng dễ dàng mang theo phụ kiện đi kèm với điện thoại. Nhờ vào nam châm được căn chỉnh hoàn hảo giữ cho thiết bị gắn vào iPhone 12 hay iPhone chắc chắn hơn. \r\n\r\nApple MagSafe có thể sạc cho iPhone với công suất 5W ở chế độ sạc không dây và lên đến 15W khi sử dụng sạc dây', 61, 20),
(23, 'iPhone 13 256GB | Chính hãng VN/A', 900.00, 0, 'sp4.jpg', 'Hiệu năng vượt trội - Chip Apple A15 Bionic mạnh mẽ, hỗ trợ mạng 5G tốc độ cao\r\nKhông gian hiển thị sống động - Màn hình 6.1\" Super Retina XDR độ sáng cao, sắc nét\r\nTrải nghiệm điện ảnh đỉnh cao - Camera kép 12MP, hỗ trợ ổn định hình ảnh quang học\r\nTối ưu điện năng - Sạc nhanh 20 W, đầy 50% pin trong khoảng 30 phút', 32, 16),
(24, 'Apple MacBook Air M1 256GB 2020 I Chính hãng Apple Việt Nam', 1000.00, 0, 'sp5.jpg', 'Phù hợp cho lập trình viên, thiết kế đồ họa 2D, dân văn phòng\r\nHiệu năng vượt trội - Cân mọi tác vụ từ word, exel đến chỉnh sửa ảnh trên các phần mềm như AI, PTS\r\nĐa nhiệm mượt mà - Ram 8GB cho phép vừa mở trình duyệt để tra cứu thông tin, vừa làm việc trên phần mềm\r\nTrang bị SSD 256GB - Cho thời gian khởi động nhanh chóng, tối ưu hoá thời gian load ứng dụng\r\nChất lượng hình ảnh sắc nét - Màn hình Retina cao cấp cùng công nghệ TrueTone cân bằng màu sắc\r\nThiết kế sang trọng - Nặng chỉ 1.29KG, độ dày 16.1mm. Tiện lợi mang theo mọi nơi', 19, 13),
(25, 'Macbook Pro 14 inch 2021 | Chính hãng Apple Việt Nam', 2050.00, 0, 'sp6.jpg', 'Hiệu năng vượt trội - Cân mọi tác vụ từ công việc, đồ họa cho đến những tựa game nặng\r\nĐa nhiệm mượt mà - RAM 16 GB giải quyết khối lượng công việc “nặng đô” một cách nhanh chóng và ấn tượng\r\nSSD 512 GB - Tăng tốc toàn diện và khởi động trong tích tắt\r\nMàn hình 14.2 inch Liquid Retina XDR (3024 x 1964) chất lượng hiển thị vô cùng sắc nét', 2, 13),
(26, 'Apple Watch SE 40mm (GPS) Viền Nhôm - Dây Cao Su | Chính Hãng VN/A', 200.00, 0, 'sp7.jpg', 'Màn hình retina cho màu sắc hiển thị rực rỡ,sống động.\r\nChức năng cảnh báo khẩn cấp động gọi tới các số diện thoại đã lưu khi phát hiện người dùng té ngã\r\nNghe gọi ngay trên đồng hồ khi kết nối với iPhone thông qua Bluetooth hoặc wifi\r\nMặt kính cường lực cao cấp ion-X cho khả năng chịu đựng trọng lực gấp 2.5 lần kính sapphire\r\nTheo dõi sức khoẻ với các tính năng thống kê nhịp tim,đo chất lượng giấc ngủ......\r\nThời lượng pin 18 giờ sử dụng,sạc đầy trong 2 giờ\r\nBộ nhớ trong lên đến 32GB', 1, 15),
(27, 'Samsung Galaxy Watch5', 190.00, 0, 'sp8.jpg', 'ĐẶC ĐIỂM NỔI BẬT\r\nTrang bị cảm biến sinh học 3 trong 1: Cho phép đo nhịp tim, huyết áp, điện tâm đồ, SpO2\r\nHỗ trợ LTE - nghe gọi trực tiếp trên đồng hồ\r\nSạc 45% pin chỉ trong 30 phút, quay lại cuộc chơi tức thì\r\nHệ điều hành Wear OS - cung cấp nhiều tính năng thông minh như nhắn tin, điều hướng qua google map\r\nMàn hình tinh thể Sapphire - cho khả năng kháng nước tốt hơn đến 1.6 lần so với phiên bản trước\r\n90 chế độ luyện tập - Thỏa sức tập luyện', 21, 15),
(28, 'Tai nghe Bluetooth Apple AirPods 2 VN/A', 110.00, 0, 'sp9.jpg', 'Chip H1 mới nhất cho thời gian phản hồi nhanh cùng thời lượng pin lên đến 5 giờ\r\nTích hợp 2 Micro giúp khử tiếng ồn của môi trường cho chất lượng âm thanh rõ ràng khi đàm thoại\r\nKích hoạt trợ lý ảo Siri bằng cách gọi \"Hey Siri\"\r\nNhận hoặc dừng cuộc gọi bằng 1 cú chạm với tính năng điều khiển cảm ứng\r\nHỗ trợ sạc nhanh:15 phút sạc pin cho thời gian sử dụng lên đến 3 giờ', 10, 18),
(29, 'Tai nghe Bluetooth Apple AirPods 3 | Chính hãng Apple Việt Nam', 170.00, 312, 'sp10.jpg', 'Thời lượng pin 6 giờ nghe nhạc, lên đến 30 giờ khi đi kèm hộp sạc\r\nThiết kế mới ôm tai, điều khiển bằng thao tác chạm - giữ mới lạ\r\nTrải nghiệm sống động với âm thanh vòm Spatial audio\r\nChất lượng âm thanh chuyên được xử lý vởi chip Apple H1\r\nTiêu chuẩn Bluetooth 5.0 cho phạm vi kết nối ổn định 10m\r\nYên tâm khi luyện tập thể thao, đi mưa với chuẩn kháng nước IPX4', 0, 18),
(30, 'Balo Laptop Acer Backpack 15.6', 15.00, 123, 'sp11.jpg', 'Balo laptop Acer Backpack 15.6 inch nhẹ nhàng, nhỏ gọn và tiện dụng\r\nNhỏ gọn và vô cùng tiện lợi đó là những gì mà balo laptop Acer Backpack mang lại. Nếu bạn đang tìm kiếm một chiếc balo có thể đựng vừa laptop 15.6 inches để đồng hành với mình trên mọi chặng đường thì đây sẽ là một sản phẩm không thể hoàn hảo hơn.\r\n\r\nThiết kế gọn nhẹ, chất liệu vải tổng hợp chắc chắn\r\nBalo laptop Acer Backpack được thiết kế gọn nhẹ và vô cùng đơn giản. Với kích thước các chiều dài 37cm x rộng 15cm x cao 50cm có thể đựng được laptop đến 15.6 inches cùng với trọng lượng chỉ 400 gam giúp bạn thoải mái mang theo trong mọi hành trình.', 15, 14),
(31, 'Bàn Phím Cơ Gaming Predator Aethon TKL 301', 100.00, 3435555, 'sp12.png', 'Bàn phím cơ Gaming Predator Aethon 301 TKL - Nhanh nhạy cực tiện dụng\r\nBàn phím cơ Gaming Predator Aethon 301 TKL là sản phẩm bàn phím cơ được giới trẻ ưa dùng, đặc biệt là trong giới game thủ. Aethon 301 TKL nhỏ gọn và độ nảy của từng phím tắt rất nhạy, đặc biệt là âm thanh phát ra khi gõ lớn tăng cảm giác chiến thắng khi chơi game.\r\n\r\nThiết kế bàn phím gọn nhẹ, kích thước tối ưu\r\nBàn phím cơ Gaming Predator Aethon 301 TKL có khung bàn phím được làm từ nhựa cao cấp cùng với phong cách thiết kế nhỏ gọn. Chính vì thiết kế nhỏ nên có không gian trống để đặt vị trí của chuột. Game thủ không còn lo lắng về thao tác chạm chuột khi vị trí giữa chuột và bàn phím được đặt gần nhau,.', 15, 19);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `name`, `user`, `pass`, `email`, `address`, `tel`, `role`) VALUES
(4, 'THUỶ', 'thuy123', '3456', 'thuytxph26691@fpt.edu', NULL, NULL, 0),
(10, 'TRỊNH XUÂN THUỶ', 'admin', '123', 'admin@gmail.com', NULL, NULL, 1),
(17, '.Trinh Thuy.', 'thuyfpt', '123', 'trinhxuanthuy1542003@gmail.com', NULL, NULL, 0),
(19, 'Lan Ngọc Phạm', 'lanngoc', '123', 'lanngoc@gmail.com', '  thuy123', '0387976086', 0),
(20, '.aaa.', '1234f', '123', 'thuytxph26691@fpt.edu.vn32', NULL, NULL, 0),
(22, '.Trinh Thuy33.', 'thuytx', '123', 'trinhxuanthuy1542003@gmail.com3', NULL, NULL, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_sanpham_danhmuc` (`iddm`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `lk_sanpham_danhmuc` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
