-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2020 at 02:15 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlbh`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietgd`
--

CREATE TABLE `chitietgd` (
  `magd` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chitietgd`
--

INSERT INTO `chitietgd` (`magd`, `masp`, `soluong`) VALUES
(1, 5, 1),
(2, 5, 3),
(2, 7, 1),
(2, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `danhmucsp`
--

CREATE TABLE `danhmucsp` (
  `madm` int(11) NOT NULL,
  `tendm` varchar(255) NOT NULL,
  `xuatsu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `danhmucsp`
--

INSERT INTO `danhmucsp` (`madm`, `tendm`, `xuatsu`) VALUES
(1, 'Áo phao', 'Việt Nam'),
(2, 'Áo khoác 2 lớp', 'Việt Nam'),
(3, 'Thun The North Face', 'Hàn Quốc'),
(4, 'Áo 3 lớp ', 'Việt Nam'),
(5, 'Mũ THe North Face', 'Việt Nam'),
(6, 'Dép crops', 'Việt Nam');

-- --------------------------------------------------------

--
-- Table structure for table `giaodich`
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
-- Dumping data for table `giaodich`
--

INSERT INTO `giaodich` (`magd`, `tinhtrang`, `user_id`, `user_name`, `user_dst`, `user_addr`, `user_phone`, `tongtien`, `date`) VALUES
(1, 0, 0, 'dac', 'q1', '54  a dũng sĩ thanh khê nẵng', '', '450000', '2020-02-23 02:19:24'),
(2, 0, 0, 'uyfj', 'Quận 1', 'tf', '', '6010000', '2020-02-23 03:36:04');

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `user_id` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `soluong` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `giohang`
--

INSERT INTO `giohang` (`user_id`, `masp`, `soluong`) VALUES
(1, 2, 1),
(1, 4, 1),
(1, 8, 1),
(1, 9, 1),
(1, 10, 1),
(2, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
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
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`masp`, `tensp`, `gia`, `baohanh`, `trongluong`, `chatlieu`, `chongnuoc`, `nangluong`, `loaibh`, `kichthuoc`, `mau`, `danhcho`, `phukien`, `khuyenmai`, `tinhtrang`, `madm`, `anhchinh`, `luotmua`, `luotxem`, `ngay_nhap`) VALUES
(1, 'ÁO MONTBELL PARKA LÔNG VŨ', '1 280 000', 24, 200, '', 1, '', 'Tại cửa hàng', '20 x 2 x 0.2', 'Xanh', 'Nam', 'Không', '10', 'new', 1, 'https://tabalooutdoor.com/wp-content/themes/thientrieu/thumbnail.php?src=https://tabalooutdoor.com/wp-content/uploads/2018/10/z1153146097295_71147d80f893ef3ae8d2183a33f9ed96.jpg&w=420&h=420&zc=1&a=c', 119, 2100, '2017-10-30 04:14:16'),
(2, 'ÁO MONTBELL PARKA LÔNG VŨ', '1 580 000', 24, 210, '', 1, '', 'Tại cửa hàng', '20 x 2 x 0.2', 'Bạc', 'Nam', 'Không', '10', 'new', 1, 'https://tabalooutdoor.com/wp-content/themes/thientrieu/thumbnail.php?src=https://tabalooutdoor.com/wp-content/uploads/2018/10/z1153146097295_71147d80f893ef3ae8d2183a33f9ed96.jpg&w=420&h=420&zc=1&a=c', 2, 133, '2017-10-30 04:14:16'),
(3, 'ÁO MONTBELL PARKA LÔNG VŨ', '2 280 000', 36, 150, '', 1, '', 'Tại nhà máy', '21 x 2 x 0.2', 'Bạc', 'Nam', '1 dây sạc', '20', 'new', 1, 'https://tabalooutdoor.com/wp-content/themes/thientrieu/thumbnail.php?src=https://tabalooutdoor.com/wp-content/uploads/2018/10/z1153146097295_71147d80f893ef3ae8d2183a33f9ed96.jpg&w=420&h=420&zc=1&a=c', 321, 781, '2017-10-31 10:26:26'),
(4, 'ÁO MONTBELL PARKA LÔNG VŨ', '980 000', 24, 210, '', 0, '', 'Tại cửa hàng', '20 x 2 x 0.2', 'Bạc', 'Nam', 'Không', '10', 'new', 1, 'https://tabalooutdoor.com/wp-content/themes/thientrieu/thumbnail.php?src=https://tabalooutdoor.com/wp-content/uploads/2018/10/z1153146097295_71147d80f893ef3ae8d2183a33f9ed96.jpg&w=420&h=420&zc=1&a=c', 1230, 3101, '0000-00-00 00:00:00'),
(5, 'ÁO MONTBELL PARKA LÔNG VŨ', '450 000', 12, 300, '', 0, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Vàng', 'Nam, nữ', 'Không', '10', 'new', 5, 'https://tabalooutdoor.com/wp-content/themes/thientrieu/thumbnail.php?src=https://tabalooutdoor.com/wp-content/uploads/2018/10/0605F625-F676-44F2-93FE-10393353A792.jpeg&w=420&h=420&zc=1&a=c', 1231, 4321, '0000-00-00 00:00:00'),
(6, 'ÁO MONTBELL PARKA LÔNG VŨ', '1 580 000', 24, 210, '', 1, '', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam và Nữ', 'Không', '15', 'new', 4, 'https://tabalooutdoor.com/wp-content/themes/thientrieu/thumbnail.php?src=https://tabalooutdoor.com/wp-content/uploads/2018/10/0605F625-F676-44F2-93FE-10393353A792.jpeg&w=420&h=420&zc=1&a=c', 21, 134, '0000-00-00 00:00:00'),
(7, 'ÁO MONTBELL PARKA LÔNG VŨ', '4 280 000', 36, 150, '', 1, 'pin', 'Tại nhà máy', '21 x 2 x 0.2', '', 'Nam', 'Không', '20', 'new', 3, 'https://tabalooutdoor.com/wp-content/themes/thientrieu/thumbnail.php?src=https://tabalooutdoor.com/wp-content/uploads/2018/10/0605F625-F676-44F2-93FE-10393353A792.jpeg&w=420&h=420&zc=1&a=c', 123, 2432, '2017-11-14 00:00:00'),
(8, 'ÁO MONTBELL PARKA LÔNG VŨ', '380 000', 6, 213, 'da', 0, '', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam và Nữ', 'Không', '5', 'new', 6, 'https://tabalooutdoor.com/wp-content/themes/thientrieu/thumbnail.php?src=https://tabalooutdoor.com/wp-content/uploads/2018/10/0605F625-F676-44F2-93FE-10393353A792.jpeg&w=420&h=420&zc=1&a=c', 1232, 2314, '2017-11-17 09:00:35'),
(9, 'ÁO MONTBELL PARKA LÔNG VŨ', '410 000', 6, 213, 'da', 0, '', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam và Nữ', 'Không', '5', 'new', 2, 'https://tabalooutdoor.com/wp-content/themes/thientrieu/thumbnail.php?src=https://tabalooutdoor.com/wp-content/uploads/2018/10/0605F625-F676-44F2-93FE-10393353A792.jpeg&w=420&h=420&zc=1&a=c', 1231, 6344, '2017-11-10 11:33:00'),
(10, 'ÁO MONTBELL PARKA LÔNG VŨ', '1 280 000', 12, 200, '', 1, 'Pin', 'Tại nơi sản xuất', '20 x 2 x 0.2', 'Xanh đen', 'Nam và Nữ', 'Không', '10%', 'Còn hàng', 3, 'https://tabalooutdoor.com/wp-content/themes/thientrieu/thumbnail.php?src=https://tabalooutdoor.com/wp-content/uploads/2018/10/0605F625-F676-44F2-93FE-10393353A792.jpeg&w=420&h=420&zc=1&a=c', 1231, 1290, '2017-11-06 16:54:01'),
(11, 'ÁO MONTBELL PARKA LÔNG VŨ', '2 280 000', 12, 200, '', 1, '', '', '20 x 2 x 0.2', 'Xanh đen', 'Nam và Nữ', 'Không', '10%', 'Còn hàng', 3, 'https://tabalooutdoor.com/wp-content/themes/thientrieu/thumbnail.php?src=https://tabalooutdoor.com/wp-content/uploads/2019/07/4B5ABB48-C525-437A-BA85-2476C038182D.jpg&w=420&h=420&zc=1&a=c', 123, 2290, '2017-11-06 16:54:01'),
(12, 'ÁO MONTBELL PARKA LÔNG VŨ', '2910000', 24, 100, '', 1, '', 'Tại nơi sản xuất ', '20 x 2 x 0.2 ', 'Bạc ', 'Nam ', 'Không ', '20% ', 'Còn hàng ', 3, 'https://tabalooutdoor.com/wp-content/themes/thientrieu/thumbnail.php?src=https://tabalooutdoor.com/wp-content/uploads/2019/11/0032-4144932806-32.png&w=420&h=420&zc=1&a=c', 335, 2561, '0000-00-00 00:00:00'),
(13, 'ÁO MONTBELL PARKA LÔNG VŨ', '1 280 000', 24, 200, 'ÁO MONTBELL PARKA LÔNG VŨ', 1, '', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam', 'Không', '10', 'new', 2, 'https://tabalooutdoor.com/wp-content/themes/thientrieu/thumbnail.php?src=https://tabalooutdoor.com/wp-content/uploads/2019/11/0032-4144932806-32.png&w=420&h=420&zc=1&a=c', 119, 2100, '2017-11-06 04:14:16'),
(14, 'ÁO MONTBELL PARKA LÔNG VŨ', '1 580 000', 24, 210, '', 1, '', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam', 'Không', '10', 'new', 2, 'https://tabalooutdoor.com/wp-content/themes/thientrieu/thumbnail.php?src=https://tabalooutdoor.com/wp-content/uploads/2019/11/0032-4144932806-32.png&w=420&h=420&zc=1&a=c', 2, 133, '2017-10-30 04:14:16'),
(15, 'ÁO MONTBELL PARKA LÔNG VŨ', '2 280 000', 36, 150, '', 1, '', 'Tại nhà máy', '21 x 2 x 0.2', 'Nâu', 'Nam', '1 dây sạc', '20', 'new', 2, 'https://tabalooutdoor.com/wp-content/themes/thientrieu/thumbnail.php?src=https://tabalooutdoor.com/wp-content/uploads/2019/11/0032-4144932806-32.png&w=420&h=420&zc=1&a=c', 321, 781, '2017-11-06 10:26:26'),
(16, 'ÁO 2 LỚP THE NORTH FACE WINSTOPPER', '980 000', 24, 210, '', 0, '', 'Tại cửa hàng', '20 x 2 x 0.2', 'Nâu', 'Nam', 'Không', '10', 'new', 2, 'https://tabalooutdoor.com/wp-content/themes/thientrieu/thumbnail.php?src=https://tabalooutdoor.com/wp-content/uploads/2019/11/17.png&w=420&h=420&zc=1&a=c', 1230, 3101, '2017-11-06 05:16:15'),
(17, 'ÁO 2 LỚP THE NORTH FACE WINSTOPPER', '1 280 000', 24, 200, '', 1, '', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam', 'Không', '10', 'new', 6, 'https://tabalooutdoor.com/wp-content/themes/thientrieu/thumbnail.php?src=https://tabalooutdoor.com/wp-content/uploads/2019/11/17.png&w=420&h=420&zc=1&a=c', 119, 2100, '2017-11-06 04:14:16'),
(18, 'ÁO 2 LỚP THE NORTH FACE WINSTOPPER', '1 580 000', 24, 210, '', 1, '', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam', 'Không', '10', 'new', 6, 'https://tabalooutdoor.com/wp-content/themes/thientrieu/thumbnail.php?src=https://tabalooutdoor.com/wp-content/uploads/2019/11/17.png&w=420&h=420&zc=1&a=c', 2, 133, '2017-10-30 04:14:16'),
(19, 'ÁO 2 LỚP THE NORTH FACE WINSTOPPER', '2 280 000', 36, 150, '', 1, '', 'Tại nhà máy', '21 x 2 x 0.2', 'Đen', 'Nam', '', '20', 'new', 6, 'https://tabalooutdoor.com/wp-content/themes/thientrieu/thumbnail.php?src=https://tabalooutdoor.com/wp-content/uploads/2019/11/17.png&w=420&h=420&zc=1&a=c', 321, 781, '2017-11-06 10:26:26'),
(20, 'ÁO 2 LỚP THE NORTH FACE WINSTOPPER', '980 000', 24, 210, '', 0, '', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam', 'Không', '10', 'new', 6, 'https://tabalooutdoor.com/wp-content/themes/thientrieu/thumbnail.php?src=https://tabalooutdoor.com/wp-content/uploads/2019/11/17.png&w=420&h=420&zc=1&a=c', 1230, 3101, '2017-11-06 05:16:15'),
(21, 'ÁO 2 LỚP THE NORTH FACE WINSTOPPER', '1 280 000', 24, 200, '', 1, '', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam', 'Không', '10', 'new', 5, 'https://tabalooutdoor.com/wp-content/themes/thientrieu/thumbnail.php?src=https://tabalooutdoor.com/wp-content/uploads/2019/11/17.png&w=420&h=420&zc=1&a=c', 119, 2100, '2017-11-06 04:14:16'),
(22, 'ÁO THE NORTH FACE KID MOUTAIN JACKET', '1 580 000', 24, 210, '', 1, '', 'Tại cửa hàng', '20 x 2 x 0.2', 'Nâu', 'Nam', 'Không', '10', 'new', 5, 'https://tabalooutdoor.com/wp-content/themes/thientrieu/thumbnail.php?src=https://tabalooutdoor.com/wp-content/uploads/2019/07/4B5ABB48-C525-437A-BA85-2476C038182D.jpg&w=420&h=420&zc=1&a=c', 2, 133, '2017-10-30 04:14:16'),
(23, 'ÁO THE NORTH FACE KID MOUTAIN JACKET', '2 280 000', 36, 150, '', 1, '', 'Tại nhà máy', '21 x 2 x 0.2', 'Bạc, xanh dương', 'Nam', '', '20', 'new', 5, 'https://tabalooutdoor.com/wp-content/themes/thientrieu/thumbnail.php?src=https://tabalooutdoor.com/wp-content/uploads/2019/07/4B5ABB48-C525-437A-BA85-2476C038182D.jpg&w=420&h=420&zc=1&a=c', 321, 781, '2017-11-06 10:26:26'),
(24, 'ÁO THE NORTH FACE KID MOUTAIN JACKET', '980 000', 24, 210, '', 0, '', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam', 'Không', '10', 'new', 5, 'https://tabalooutdoor.com/wp-content/themes/thientrieu/thumbnail.php?src=https://tabalooutdoor.com/wp-content/uploads/2019/07/4B5ABB48-C525-437A-BA85-2476C038182D.jpg&w=420&h=420&zc=1&a=c', 1230, 3101, '2017-11-06 05:16:15'),
(25, 'ÁO THE NORTH FACE KID MOUTAIN JACKET', '980 000', 24, 210, '', 0, '', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam', 'Không', '10', 'new', 5, 'https://tabalooutdoor.com/wp-content/themes/thientrieu/thumbnail.php?src=https://tabalooutdoor.com/wp-content/uploads/2019/07/4B5ABB48-C525-437A-BA85-2476C038182D.jpg&w=420&h=420&zc=1&a=c', 1230, 3101, '2017-11-06 05:16:15');

-- --------------------------------------------------------

--
-- Table structure for table `sanphamyeuthich`
--

CREATE TABLE `sanphamyeuthich` (
  `user_id` int(11) NOT NULL,
  `masp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanphamyeuthich`
--

INSERT INTO `sanphamyeuthich` (`user_id`, `masp`) VALUES
(1, 1),
(1, 4),
(1, 5),
(1, 7),
(2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `thanhvien`
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
-- Dumping data for table `thanhvien`
--

INSERT INTO `thanhvien` (`id`, `ten`, `tentaikhoan`, `matkhau`, `diachi`, `sodt`, `email`, `date`, `quyen`) VALUES
(1, 'Thằng tester', 'tester', '123', 'No info', 'Không cho', 'ccne@cc.cc', '2017-10-30 20:50:48', 0),
(2, 'Admin bá đạo', 'admin', '123', 'sao biết dc', '1234566', 'adf@afd.com', '2017-11-04 14:40:53', 1),
(3, 'change1', 'tester2', '123', '123', 'sdt1', 'asf@a.oads', '2017-11-04 11:59:21', 0),
(4, 'test\'s %/\\', 'tester3', '123', '123', '12', 'adf@afd.com', '0000-00-00 00:00:00', 0),
(5, 'Lê A', 'tester4', '123', '10', '0935714733', 'nvduong15@gmail.com', '0000-00-00 00:00:00', 0),
(6, 'Lê A', 'tester5', '123', '10', '0935714733', 'nvduong15@gmail.com', '0000-00-00 00:00:00', 0),
(7, 'David Villa', 'tester6', '123', 'Anabella', '0935777888', 'adf@afd.com', '2017-10-31 06:46:17', 0),
(8, 'Lê A', 'tester7', '123', '10', '0935714733', 'nvduong15@gmail.com', '2017-11-01 12:47:55', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietgd`
--
ALTER TABLE `chitietgd`
  ADD PRIMARY KEY (`magd`,`masp`);

--
-- Indexes for table `danhmucsp`
--
ALTER TABLE `danhmucsp`
  ADD PRIMARY KEY (`madm`);

--
-- Indexes for table `giaodich`
--
ALTER TABLE `giaodich`
  ADD PRIMARY KEY (`magd`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`user_id`,`masp`),
  ADD KEY `fk_gh_sp` (`masp`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `fk_sp_dmsp` (`madm`);

--
-- Indexes for table `sanphamyeuthich`
--
ALTER TABLE `sanphamyeuthich`
  ADD PRIMARY KEY (`user_id`,`masp`);

--
-- Indexes for table `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhmucsp`
--
ALTER TABLE `danhmucsp`
  MODIFY `madm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `giaodich`
--
ALTER TABLE `giaodich`
  MODIFY `magd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `fk_gh_sp` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`),
  ADD CONSTRAINT `fk_gh_tv` FOREIGN KEY (`user_id`) REFERENCES `thanhvien` (`id`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_sp_dmsp` FOREIGN KEY (`madm`) REFERENCES `danhmucsp` (`madm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
