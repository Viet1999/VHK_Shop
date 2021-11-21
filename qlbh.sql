-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 20, 2021 lúc 04:18 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlbh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietgd`
--

CREATE TABLE `chitietgd` (
  `magd` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitietgd`
--

INSERT INTO `chitietgd` (`magd`, `masp`, `soluong`) VALUES
(1, 8, 39),
(2, 8, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmucsp`
--

CREATE TABLE `danhmucsp` (
  `madm` int(11) NOT NULL,
  `tendm` varchar(255) NOT NULL,
  `xuatsu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `danhmucsp`
--

INSERT INTO `danhmucsp` (`madm`, `tendm`, `xuatsu`) VALUES
(1, 'Rolex', 'Thụy Sỹ'),
(2, 'Cartier', 'Pháp'),
(3, 'Omega', 'Thụy Sỹ'),
(4, 'Patek Philippe', 'Thụy Sỹ'),
(5, 'Piaget', 'Thụy Sỹ'),
(6, 'Montblanc', 'Đức');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaodich`
--

CREATE TABLE `giaodich` (
  `magd` int(11) NOT NULL,
  `tinhtrang` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_dst` varchar(20) NOT NULL,
  `user_addr` text NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `tongtien` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `giaodich`
--

INSERT INTO `giaodich` (`magd`, `tinhtrang`, `user_id`, `user_name`, `user_dst`, `user_addr`, `user_phone`, `tongtien`, `date`) VALUES
(1, 1, 0, '', 'q1', '', '', '14820000', '2021-10-19 04:40:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `user_id` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `soluong` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`user_id`, `masp`, `soluong`) VALUES
(1, 2, 1),
(1, 4, 1),
(1, 8, 1),
(1, 9, 1),
(1, 10, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` int(11) NOT NULL,
  `tensp` varchar(255) NOT NULL,
  `gia` varchar(20) NOT NULL,
  `baohanh` tinyint(2) NOT NULL,
  `trongluong` int(4) NOT NULL,
  `chatlieu` varchar(100) NOT NULL,
  `chongnuoc` tinyint(1) NOT NULL,
  `nangluong` varchar(100) NOT NULL,
  `loaibh` varchar(100) NOT NULL,
  `kichthuoc` varchar(100) NOT NULL,
  `mau` varchar(100) NOT NULL,
  `danhcho` varchar(20) NOT NULL,
  `phukien` varchar(255) NOT NULL,
  `khuyenmai` varchar(100) NOT NULL,
  `tinhtrang` varchar(100) NOT NULL,
  `madm` int(11) NOT NULL,
  `anhchinh` varchar(255) NOT NULL,
  `luotmua` int(11) NOT NULL,
  `luotxem` int(11) NOT NULL,
  `ngay_nhap` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masp`, `tensp`, `gia`, `baohanh`, `trongluong`, `chatlieu`, `chongnuoc`, `nangluong`, `loaibh`, `kichthuoc`, `mau`, `danhcho`, `phukien`, `khuyenmai`, `tinhtrang`, `madm`, `anhchinh`, `luotmua`, `luotxem`, `ngay_nhap`) VALUES
(1, 'Đồng hồ Rolex Datejust 179384-0002', '1 280 000', 24, 200, 'Inox, kính cường lực', 1, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Bạc', 'Nam', 'Không', '10', 'new', 1, 'images/rolex/Rolex-Datejust-179384-0002.png', 119, 2100, '2021-10-07 11:20:45'),
(2, 'Đồng hồ Rolex Datejust 179174-0031', '1 580 000', 24, 210, 'Inox cao cấp, kính cường lực', 1, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Bạc', 'Nam', 'Không', '10', 'new', 1, 'images/rolex/Rolex-Datejust-179174-0031.png', 2, 133, '2021-10-07 11:35:15'),
(3, 'Đồng hồ ROLEX DAYJUST 126300', '2 280 000', 36, 150, 'bạc, kính cường lực g4', 1, 'pin, điện', 'Tại nhà máy', '21 x 2 x 0.2', 'Bạc', 'Nam', '1 dây sạc', '20', 'new', 1, 'images/rolex/ROLEX-DAYJUST-126300.png', 321, 781, '2021-10-31 10:26:26'),
(4, 'Đồng hồ Rolex Datejust 179174-0094', '980 000', 24, 210, 'Inox cao cấp, kính cường lực', 0, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Bạc', 'Nam', 'Không', '10', 'new', 1, 'images/rolex/Rolex-Datejust-179174-0094.png', 1230, 3101, '2021-10-11 12:00:30'),
(5, 'Đồng hồ Piaget 444', '450 000', 12, 300, 'Nhôm, kính', 0, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Vàng kim', 'Nam, nữ', 'Không', '10', 'new', 5, 'images/piaget/piaget-444.png', 1231, 4321, '2021-10-11 12:02:15'),
(6, 'Đồng hồ Patek Philippe 778', '1 580 000', 24, 210, 'Inox cao cấp, kính cường lực', 1, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam và Nữ', 'Không', '15', 'new', 4, 'images/patek-philippe/Patek-Philippe-778.png', 21, 134, '2021-10-11 12:07:07'),
(7, 'Đồng hồ Omega 102', '4 280 000', 36, 150, 'Đồng, kính cường lực g4', 1, 'pin', 'Tại nhà máy', '21 x 2 x 0.2', 'Đồng', 'Nam', 'Không', '20', 'new', 3, 'images/omega/omega-102.png', 123, 2432, '2021-11-14 12:08:06'),
(8, 'Đồng hồ montblanc e112', '380 000', 6, 213, 'da', 0, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam và Nữ', 'Không', '5', 'new', 6, 'images/montblanc/montblanc-e112.png', 1232, 2314, '2021-10-11 12:15:32'),
(9, 'Đồng hồ Cartier 503', '410 000', 6, 213, 'da', 0, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam và Nữ', 'Không', '5', 'new', 2, 'images/cartier/Cartier-503.png', 1231, 6344, '2021-10-11 12:20:33'),
(10, 'Đồng hồ Omega 307', '1 280 000', 12, 200, 'da, kính cao cấp', 1, 'Pin', 'Tại nơi sản xuất', '20 x 2 x 0.2', 'Xanh đen', 'Nam và Nữ', 'Không', '10%', 'Còn hàng', 3, 'images/omega/Omega 307.png', 1231, 1290, '2021-10-11 12:18:11'),
(11, 'Đồng hồ Omega CO', '2 280 000', 12, 200, 'da, kính cao cấp', 1, 'Pin', 'Tại nơi sản xuất', '20 x 2 x 0.2', 'Xanh đen', 'Nam và Nữ', 'Không', '10%', 'Còn hàng', 3, 'images/omega/omega CO.png', 123, 2290, '2021-10-11 12:24:23'),
(12, 'Đồng hồ Omega Xial', '2910000', 24, 100, 'Bạc, kính cường lực ', 1, 'Pin ', 'Tại nơi sản xuất ', '20 x 2 x 0.2 ', 'Bạc ', 'Nam ', 'Không ', '20% ', 'Còn hàng ', 3, 'images/omega/omega Xial.png ', 335, 2561, '2021-10-11 12:30:32'),
(13, 'Đồng hồ Cartier 604', '1 280 000', 24, 200, 'Inox, kính cường lực', 1, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam', 'Không', '10', 'new', 2, 'images/cartier/cartier 604.png', 119, 2100, '2021-10-11 12:33:22'),
(14, 'Đồng hồ Cartier 705', '1 580 000', 24, 210, 'Inox cao cấp, kính cường lực', 1, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam', 'Không', '10', 'new', 2, 'images/cartier/cartier 705.png', 2, 133, '2021-10-11 12:38:33'),
(15, 'Đồng hồ Cartier 806', '2 280 000', 36, 150, 'bạc, kính cường lực g4', 1, 'pin, điện', 'Tại nhà máy', '21 x 2 x 0.2', 'Nâu', 'Nam', '1 dây sạc', '20', 'new', 2, 'images/cartier/cartier 806.png', 321, 781, '2021-10-11 13:09:38'),
(16, 'Đồng hồ Cartier 907', '980 000', 24, 210, 'Inox cao cấp, kính cường lực', 0, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Nâu', 'Nam', 'Không', '10', 'new', 2, 'images/cartier/cartier 907.png', 1230, 3101, '2021-10-11 05:16:15'),
(17, 'Đồng hồ Montblanc 1', '1 280 000', 24, 200, 'Inox, kính cường lực', 1, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam', 'Không', '10', 'new', 6, 'images/montblanc/montblanc 1.png', 119, 2100, '2021-10-11 04:14:16'),
(18, 'Đồng hồ Montblanc 2', '1 580 000', 24, 210, 'Inox cao cấp, kính cường lực', 1, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam', 'Không', '10', 'new', 6, 'images/montblanc/montblanc 2.png', 2, 133, '2021-10-11 13:21:14'),
(19, 'Đồng hồ Montblanc 3', '2 280 000', 36, 150, 'bạc, kính cường lực g4', 1, 'pin, điện', 'Tại nhà máy', '21 x 2 x 0.2', 'Đen', 'Nam', '1 dây sạc', '20', 'new', 6, 'images/montblanc/montblanc 3.png', 321, 781, '2021-11-06 10:26:26'),
(20, 'Đồng hồ Montblanc 4', '980 000', 24, 210, 'Inox cao cấp, kính cường lực', 0, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam', 'Không', '10', 'new', 6, 'images/montblanc/montblanc 4.png', 1230, 3101, '2021-11-06 05:16:15'),
(21, 'Đồng hồ Piaget Z1', '1 280 000', 24, 200, 'Inox, kính cường lực', 1, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam', 'Không', '10', 'new', 5, 'images/piaget/piaget z1.png', 119, 2100, '2021-11-06 04:14:16'),
(22, 'Đồng hồ Piaget Z2', '1 580 000', 24, 210, 'Inox cao cấp, kính cường lực', 1, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Nâu', 'Nam', 'Không', '10', 'new', 5, 'images/piaget/piaget z2.png', 2, 133, '2021-10-30 04:20:16'),
(23, 'Đồng hồ Piaget Z3', '2 280 000', 36, 150, 'bạc, kính cường lực g4', 1, 'pin, điện', 'Tại nhà máy', '21 x 2 x 0.2', 'Bạc, xanh dương', 'Nam', '1 dây sạc', '20', 'new', 5, 'images/piaget/piaget z3.png', 321, 781, '2021-11-06 10:26:26'),
(24, 'Đồng hồ Piaget Z4', '980 000', 24, 210, 'Inox cao cấp, kính cường lực', 0, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam', 'Không', '10', 'new', 5, 'images/piaget/piaget z4.png', 1230, 3101, '2021-11-06 05:16:15'),
(25, 'sp test', '980 000', 24, 210, 'Inox cao cấp, kính cường lực', 0, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam', 'Không', '10', 'new', 5, 'images/piaget/piaget z4.png', 1230, 3101, '2021-11-06 05:16:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanphamyeuthich`
--

CREATE TABLE `sanphamyeuthich` (
  `user_id` int(11) NOT NULL,
  `masp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanphamyeuthich`
--

INSERT INTO `sanphamyeuthich` (`user_id`, `masp`) VALUES
(1, 1),
(1, 4),
(1, 5),
(1, 7),
(2, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhvien`
--

CREATE TABLE `thanhvien` (
  `id` int(11) NOT NULL,
  `ten` varchar(100) NOT NULL,
  `tentaikhoan` varchar(100) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `sodt` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `quyen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `thanhvien`
--

INSERT INTO `thanhvien` (`id`, `ten`, `tentaikhoan`, `matkhau`, `diachi`, `sodt`, `email`, `date`, `quyen`) VALUES
(1, 'hieu', 'hieudubai', '123', 'No info', 'Không cho', 'minhieu.nguyenmh@gmail.com', '2021-11-06 10:11:46', 0),
(2, 'Admin sever', 'admin', '123', '80/5', '1234566', 'nvvdn99@gmail.com', '2021-11-06 10:11:56', 1),
(15, 'kien', 'hieukien', '123', '80/5', '02020220', 'hothihieukien2002@gmail.com', '2021-11-06 10:18:22', 0),
(16, 'vanviet', 'viet', '12345', '80/5', '0981112350', 'nvvdn99@gmail.com', '2021-11-06 10:29:31', 0),
(17, 'vanviet', 'vietv', '12345', '80/5', '0981112350', 'nvvdn99@gmail.com', '2021-11-06 10:50:14', 0),
(18, 'toàn', 'n3', '1234', '80/5 dương văn dương', '0981112350', 'nvvdn99@gmail.com', '2021-11-16 07:26:22', 0),
(19, 'MHieu', 'hieu123', '123', '80/5', '0981112350', 'nvvdn99@gmail.com', '2021-11-16 09:20:51', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietgd`
--
ALTER TABLE `chitietgd`
  ADD PRIMARY KEY (`magd`,`masp`);

--
-- Chỉ mục cho bảng `danhmucsp`
--
ALTER TABLE `danhmucsp`
  ADD PRIMARY KEY (`madm`);

--
-- Chỉ mục cho bảng `giaodich`
--
ALTER TABLE `giaodich`
  ADD PRIMARY KEY (`magd`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`user_id`,`masp`),
  ADD KEY `fk_gh_sp` (`masp`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `fk_sp_dmsp` (`madm`);

--
-- Chỉ mục cho bảng `sanphamyeuthich`
--
ALTER TABLE `sanphamyeuthich`
  ADD PRIMARY KEY (`user_id`,`masp`);

--
-- Chỉ mục cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhmucsp`
--
ALTER TABLE `danhmucsp`
  MODIFY `madm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `giaodich`
--
ALTER TABLE `giaodich`
  MODIFY `magd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `fk_gh_sp` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`),
  ADD CONSTRAINT `fk_gh_tv` FOREIGN KEY (`user_id`) REFERENCES `thanhvien` (`id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_sp_dmsp` FOREIGN KEY (`madm`) REFERENCES `danhmucsp` (`madm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
