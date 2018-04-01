-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 01, 2018 lúc 03:51 AM
-- Phiên bản máy phục vụ: 10.1.29-MariaDB
-- Phiên bản PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bandienthoai`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_aside`
--

CREATE TABLE `menu_aside` (
  `idAnh` int(255) NOT NULL,
  `tieude` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_aside`
--

INSERT INTO `menu_aside` (`idAnh`, `tieude`) VALUES
(1, 'SAMSUNG'),
(2, 'IPHONE');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_khachhang`
--

CREATE TABLE `tbl_khachhang` (
  `MaKH` int(11) NOT NULL,
  `HoTen1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi1` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DienThoai1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GhiChu1` text COLLATE utf8_unicode_ci,
  `HoTen2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChi2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DienThoai2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GhiChu2` text COLLATE utf8_unicode_ci,
  `SoDH` int(11) DEFAULT NULL,
  `NgayDatHang` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TongTien` double NOT NULL,
  `Xem` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_khachhang`
--

INSERT INTO `tbl_khachhang` (`MaKH`, `HoTen1`, `DiaChi1`, `Email1`, `DienThoai1`, `GhiChu1`, `HoTen2`, `DiaChi2`, `Email2`, `DienThoai2`, `GhiChu2`, `SoDH`, `NgayDatHang`, `TongTien`, `Xem`) VALUES
(1, 'Lê Minh Siêu', 'Nguyễn Khánh Toàn', 'leminhsieu123@gmail.com', '0984435480', '', '', '', '', '', '', 3, '2017-11-10 01:04:37', 30000000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_loaisanpham`
--

CREATE TABLE `tbl_loaisanpham` (
  `MaLoai` int(5) NOT NULL,
  `TenLoai` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LoaiCha` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_loaisanpham`
--

INSERT INTO `tbl_loaisanpham` (`MaLoai`, `TenLoai`, `LoaiCha`) VALUES
(1, 'SAMSUNG', 0),
(2, 'IPHONE', 0),
(3, 'LINH PHỤ KIỆN', 0),
(37, 'SỬA CHỮA', 0),
(38, 'HÀNG KHUYẾN MÃI', 0),
(39, 'SAMSUNG J7 PRO', 1),
(40, 'SAMSUNG J7 PRIME', 1),
(41, 'SAMSUNG S8 ', 1),
(42, 'SAMSUNG S8 PLUS', 1),
(43, 'SAMSUNG NOTE FE', 1),
(44, 'SAMSUNG NOTE 8', 1),
(45, 'IPHONE X', 2),
(46, 'IPHONE 8', 2),
(47, 'IPHONE 8 PLUS', 2),
(48, 'IPHONE 7', 2),
(49, 'IPHONE 7 PLUS', 2),
(50, 'IPHONE 6S', 2),
(51, 'IPHONE 6S PLUS', 2),
(54, 'MÀN HÌNH SAMSUNG', 3),
(60, 'LAPTOP DELL', 38),
(61, 'LAPTOP HP', 38),
(62, 'BALO LAPTOP', 38),
(63, 'TÚI CHỐNG SỐC LAPTOP', 38),
(65, 'IPHONE 6', 2),
(68, 'IPHONE 5S', 2),
(70, 'TIN CÔNG NGHỆ', 0),
(71, 'Kho May Cu', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `MaMenu` tinyint(1) NOT NULL,
  `TenMenu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LienKet` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_menu`
--

INSERT INTO `tbl_menu` (`MaMenu`, `TenMenu`, `LienKet`) VALUES
(1, 'Trang chủ', ''),
(2, 'Giới thiệu', 'gioithieu'),
(3, 'Góc kỹ thuật', 'kythuat'),
(4, 'Tin tức', 'tintuc'),
(6, 'Liên hệ', 'lienhe');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `MaSanPham` int(5) NOT NULL,
  `TenSanPham` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhAnh` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MoTa` text COLLATE utf8_unicode_ci,
  `DonGia` int(12) DEFAULT NULL,
  `MaLoai` int(5) DEFAULT NULL,
  `LuotXem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`MaSanPham`, `TenSanPham`, `HinhAnh`, `MoTa`, `DonGia`, `MaLoai`, `LuotXem`) VALUES
(37, 'IPHONE X', '../upload/img-2.jpg', 'Đầu tưới nhỏ giọt 8 tia chuy&ecirc;n tưới c&acirc;y ăn tr&aacute;i, c&acirc;y c&ocirc;ng nghiệp, c&acirc;y bụi, tưới cảnh quan<br />\r\n&Aacute;p suất hoạt động: 1 bar<br />\r\nB&aacute;n k&iacute;nh 30cm<br />\r\nLưu lượng 70 l&iacute;t/giờ<br />\r\nC&oacute; khả năng điều chỉnh b&aacute;n k&iacute;nh, lưu lượng.<br />\r\nTh&ocirc;ng số kỹ thuật:<br />\r\n&Aacute;p suất hoạt động: 1 bar<br />\r\nB&aacute;n k&iacute;nh 30cm<br />\r\nLưu lượng 70 l&iacute;t/giờ<br />\r\nC&oacute; khả năng điều chỉnh b&aacute;n k&iacute;nh, lưu lượng<br />\r\nC&ocirc;ng dụng: Tưới nhỏ giọt c&acirc;y bụi, c&acirc;y ăn tr&aacute;i như tưới chanh, tưới cam, tưới bưởi&hellip;, tưới c&acirc;y c&ocirc;ng nghiệp<br />\r\nSử dụng:<br />\r\nNối v&agrave;o ống 6mm (hơ ống 6mm tr&ecirc;n lửa sẽ dễ gắn thiết bị hơn), hoặc gắn trực tiếp tr&ecirc;n ống mềm cỡ 16mm, 20mm. Sử dụng th&ecirc;m thiết bị đục lỗ để gắn với ống 16mm, 20mm.<br />\r\nĐối với c&acirc;y gốc nhỏ: 1 đầu cho 1 gốc<br />\r\nĐối với gốc lớn: 2-3 đầu cho 1 gốc<br />\r\nƯu điểm: Phạm vi tưới, lưu lượng lớn hơn so với đầu tưới nhỏ giọt, chi ph&iacute; thấp. Dễ d&agrave;ng bảo dưỡng, vệ sinh, thay thế.', 25000000, 49, 68),
(38, 'IPHONE 8', '../upload/img-3.jpg', 'Đặc điểm nổi bật<br />\r\nC&oacute; thể th&aacute;o rời hai phần gi&uacute;p việc vệ sinh, bảo dưỡng dễ d&agrave;ng hơn<br />\r\nKết hợp được với nhiều khớp nối, hoặc d&acirc;y PE<br />\r\nLưu lượng được đ&aacute;nh dầu bằng m&agrave;u của đầu tưới<br />\r\nỨng dụng: Tưới nhỏ giọt cho vườn c&acirc;y ăn tr&aacute;i, c&acirc;y trồng trong chậu trong nh&agrave; lưới hoặc cho gia đ&igrave;nh.<br />\r\nRivulis E1000 với nhiều đặc t&iacute;nh nổi bật gi&uacute;p bạn ứng dụng tốt cho nhu c&aacute;c nhu cầu tưới kh&aacute;c nhau.<br />\r\nTh&ocirc;ng số kỹ thuật<br />\r\nTh&acirc;n đầu nhỏ giọt&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2 mảnh c&oacute; thể th&aacute;o rời<br />\r\n&Aacute;p suất hoạt động&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0,8 &ndash; 2,0 bar<br />\r\nĐầu nối ra &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Đa dạng<br />\r\nLọc &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;120mesh / 130 micron<br />\r\nLưu lượng (l/h)&nbsp; M&agrave;u<br />\r\n2,00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; N&acirc;u<br />\r\n4,00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đen<br />\r\n8,00 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Xanh', 25000000, 1, 9),
(39, 'IHONE 7 ', '../upload/img-4.jpg', 'Nối tiếp tr&ecirc;n ống PE 6mm, ph&ugrave; hợp cho tưới nhỏ giọt cuốn quanh gốc.<br />\r\nĐầu tưới được thiết kế hoạt động với &aacute;p lực 0,3 bar tương đương &aacute;p lực bồn nước đặt cao 3m so với mặt đất tuy vậy sản phẩm vẫn hoạt động tốt với c&aacute;c &aacute;p lực nước kh&aacute;c nhau với c&aacute;c th&ocirc;ng số chi tiết như sau:<br />\r\n&ndash; BỒN NƯỚC ĐẠT CAO HƠN MẶT ĐẤT TỪ 2,5M ĐẾN 3M<br />\r\n+ Đầu nhỏ giọt 1,7 l&iacute;t/h<br />\r\n+ Vừa nhỏ giọt v&agrave; phun 1 tia nước tổng lưu lượng 3 l&iacute;t / h, tia nước phun cao 50cm<br />\r\n+ Vừa nhỏ giọt v&agrave; phun 2 tia nước tổng lưu lượng 5 l&iacute;t / h, tia nước phun cao 50cm<br />\r\n&ndash; TẠI &Aacute;P LỰC NƯỚC 0,5 BAR<br />\r\n+ Đầu nhỏ giọt 3,5 l&iacute;t /h<br />\r\n+ Vừa nhỏ giọt v&agrave; phun 1 tia nước tổng lưu lượng 6,5 l&iacute;t / h, tia nước phun cao 1,2 m<br />\r\n+ Vừa nhỏ giọt v&agrave; phun 2 tia nước tổng lưu lượng 9,5 l&iacute;t / h, tia nước phun cao 1,2 m<br />\r\n&ndash; TẠI &Aacute;P LỰC NƯỚC 1 BAR<br />\r\n+ Đầu nhỏ giọt 5 l&iacute;t /h<br />\r\n+ Vừa nhỏ giọt v&agrave; phun 1 tia nước tổng lưu lượng 8 l&iacute;t / h, tia nước phun cao 2 m<br />\r\n+ Vừa nhỏ giọt v&agrave; phun 2 tia nước tổng lưu lượng 13 l&iacute;t / h, tia nước phun cao 2 m<br />\r\n&ndash; Kết hợp đầu nhỏ giọt b&ugrave; &aacute;p&nbsp; để cố định lượng nước sử d&ugrave;ng cho v&ugrave;ng đất c&oacute; độ tr&ecirc;n lệch độ cao lớn hoặc muốn tưới nước ch&iacute;nh x&aacute;c cao<br />\r\n+ Kết hợp đầu b&ugrave; &aacute;p 12 l&iacute;t/giờ gắn trước v&ograve;ng nhỏ giọt: kết quả tia nước phun cao 30cm<br />\r\n+ Kết hợp đầu b&ugrave; &aacute;p 25 l&iacute;t /giờ gắn trước v&ograve;ng ống nhỏ giọt: kết quả tia nước phun cao 1m<br />\r\nVới nhiều t&ugrave;y chỉnh linh động c&oacute; thể lắp đặt c&aacute;c hệ thống tưới với nhiều c&aacute;ch thức kh&aacute;c nhau ph&ugrave; hợp&nbsp; từng loại c&acirc;y trồng với từng thời điểm kh&aacute;c nhau.', 25000000, 49, 13),
(40, 'SAMSUNG', '../upload/img-5.jpg', 'Đầu tưới nhỏ giọt c&oacute; b&ugrave; &aacute;p Katif d&ugrave;ng gắn trực tiếp l&ecirc;n th&agrave;nh ống PE c&oacute; rất nhiều điểm nổi bật như thiết kế cơ kh&iacute; gi&uacute;p tự l&agrave;m sạch, thiết bị nhỏ gọn gắn &aacute;p s&aacute;t v&agrave;o th&agrave;nh ống, lưu lượng ch&iacute;nh x&aacute;c.<br />\r\nKết hợp những t&iacute;nh năng n&agrave;y, đầu tưới nhỏ giọt Katif được sử dụng tr&ecirc;n địa h&igrave;nh đồi dốc, h&agrave;ng luống d&agrave;i, c&aacute;c loại c&acirc;y trồng c&oacute; khoảng c&aacute;ch xa, hoặc kh&ocirc;ng đều nhau về khoảng c&aacute;ch.<br />\r\nSản phẩm được sản xuất bằng vật liệu c&oacute; độ bền cao, chống tia cực t&iacute;m (UV), kh&ocirc;ng bị ăn m&ograve;n bởi ho&aacute; chất.<br />\r\nTh&ocirc;ng số kỹ thuật:<br />\r\nLưu lượng: đen &ndash; 2.3, đỏ &ndash; 3.75, xanh &ndash; 8.4 lph<br />\r\nKhoảng &aacute;p suất: 0.8‒3.0 bar<br />\r\nC&oacute; hai lựa chọn đầu ra<br />\r\nNước rỉ từ đỉnh: nhằm ngăn nước chảy dọc th&agrave;nh ống.<br />\r\nNước rỉ b&ecirc;n cạnh: kh&ocirc;ng phun nước l&ecirc;n tr&ecirc;n mặt th&agrave;nh ống PE.<br />\r\nLắp đặt: D&ugrave;ng thiết bị bấm lỗ 2.8 mm.', 15000000, 49, 22),
(41, 'SAMSUNG J7', '../upload/img-6.jpg', 'Ứng dụng: Tưới c&aacute;c loại c&acirc;y ăn tr&aacute;i tr&ecirc;n địa h&igrave;nh đồi đất dốc, c&aacute;nh đồng lớn; kết hợp với que cắm nhỏ giọt để tưới c&aacute;c loại c&acirc;y trồng trong chậu, trong nh&agrave; k&iacute;nh&hellip;<br />\r\nT&iacute;nh năng nổi bật:<br />\r\n1. C&oacute; b&ugrave; &aacute;p<br />\r\n2. Sản xuất bởi h&atilde;ng danh tiếng h&agrave;ng đầu Israel: Rivulis<br />\r\n3. Nhiều mức lưu lượng nước: 2l/h, 4l/h, 8l/h, 12l/h, tối đa l&ecirc;n tới 25l/h (quy định bởi m&agrave;u sắc)<br />\r\n4. Nhiều loại nối đầu ra: nối trơn, đầu g&agrave;i, đầu gấp 90 độ.<br />\r\nĐầu tưới nhỏ giọt b&ugrave; &aacute;p Supertif ứng dụng tốt nhất cho c&aacute;c vườn c&acirc;y c&oacute; địa h&igrave;nh dốc hoặc chiều d&agrave;i mỗi h&agrave;ng c&acirc;y trồng tương đối d&agrave;i, khi đ&oacute; cho d&ugrave; &aacute;p suất nước kh&ocirc;ng đồng đều ở vị tr&iacute; đỉnh dốc v&agrave; cuối dốc nhưng lượng nước tưới vẫn đồng đều ở mọi vị tr&iacute;.<br />\r\nĐầu tưới cũng l&agrave; &yacute; tưởng tốt khi sử dụng với tười kết hợp với que cắm định vị trong nh&agrave; k&iacute;nh, trồng c&acirc;y trong chậu hoặc tưới cảnh quan.<br />\r\nĐầu tưới nhỏ giọt b&ugrave; &aacute;p Supertif c&oacute; thể sử dụng với c&aacute;c thiết bị chia hai, hoặc chia bốn hoặc sử dụng độc lập cho c&aacute;c loại c&acirc;y trồng.<br />\r\nĐầu tưới supertif c&oacute; chức năng tự l&agrave;m sạch v&agrave; được sản xuất bằng vật liệu cao cấp, c&oacute; độ bền rất cao.<br />\r\nM&atilde; SP&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M&agrave;u sắc&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lưu lượng&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đầu ra &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B&ugrave; &aacute;p&nbsp;&nbsp; &Aacute;p hoạt động<br />\r\n201000058&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; N&acirc;u&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.0l/h&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tuỳ chọn&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c&oacute;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0.7 &ndash; 3.5bar&nbsp;&nbsp;&nbsp;<br />\r\n201000242&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đen&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.85l/h &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tuỳ chọn&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c&oacute;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0.7 &ndash; 3.5bar&nbsp;&nbsp;&nbsp;<br />\r\n201000059&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Xanh&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8.0 l/h&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tuỳ chọn&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c&oacute;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0.7 &ndash; 3.5bar&nbsp;&nbsp;&nbsp;<br />\r\n409000520&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đỏ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12.0 l/h&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tuỳ chọn&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c&oacute;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0.7 &ndash; 3.5bar&nbsp;&nbsp;&nbsp;<br />\r\n409000520 &nbsp; &nbsp; &nbsp; &nbsp; Cam &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;25.0 l/h&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tuỳ chọn&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c&oacute;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0.7 &ndash; 3.5bar', 25000000, 49, 15),
(42, 'IPHONE 6S', '../upload/img-7.jpg', 'Đầu tưới nhỏ giọt 8 tia c&oacute; ch&acirc;n cắm chuy&ecirc;n tưới c&acirc;y ăn tr&aacute;i, c&acirc;y c&ocirc;ng nghiệp, c&acirc;y bụi, tưới cảnh quan<br />\r\n&Aacute;p suất hoạt động: 1 bar<br />\r\nB&aacute;n k&iacute;nh 30cm<br />\r\nLưu lượng 70 l&iacute;t/giờ<br />\r\nC&oacute; khả năng điều chỉnh b&aacute;n k&iacute;nh, lưu lượng.<br />\r\n<strong>Th&ocirc;ng số kỹ thuật:</strong><br />\r\n&Aacute;p suất hoạt động: 1 bar<br />\r\nB&aacute;n k&iacute;nh 30cm<br />\r\nLưu lượng 70 l&iacute;t/giờ<br />\r\nC&oacute; khả năng điều chỉnh b&aacute;n k&iacute;nh, lưu lượng<br />\r\nC&ocirc;ng dụng: Tưới nhỏ giọt c&acirc;y bụi, c&acirc;y ăn tr&aacute;i như tưới chanh, tưới cam, tưới bưởi&hellip;, tưới c&acirc;y c&ocirc;ng nghiệp', 20000000, 49, 9),
(43, 'IPHONE 6S PLUS', '../upload/img-7.jpg', 'C&oacute; thể điều chỉnh b&aacute;n k&iacute;nh ph&ugrave; hợp với nhiều loại c&acirc;y trồng, nhiều giai đoạn ph&aacute;t triển, chi ph&iacute; hợp thấp, dễ d&agrave;ng lắp đặt, dễ vệ sinh&hellip;<br />\r\nĐầu tưới x&ograve;e phun mưa chỉnh lưu lượng b&aacute;n k&iacute;nh cho cảnh quan phạm vi nhỏ. Sử dụng c&ugrave;ng với ống 6mm hoặc 4mm, t&iacute;ch hợp sẵn 01 khớp nối tr&ecirc;n th&acirc;n b&eacute;c v&agrave; 01 khớp với ống trục PE. C&oacute; thể chỉnh lưu lượng từ 0 &ndash; 75 l&iacute;t/giờ, đường k&iacute;nh tưới từ 0 &ndash; 3.5m.<br />\r\nDễ sử dụng v&agrave; điều chỉnh.<br />\r\n<strong>Th&ocirc;ng số kỹ thuật:</strong><br />\r\n&Aacute;p suất hoạt động từ 1.0 &ndash; 2.0 bar<br />\r\nN&ecirc;n sử dụng ở mức &aacute;p 1.75 bar để ph&aacute;t huy tối đa hiệu quả.<br />\r\nPhạm vi phủ: 360&deg;<br />\r\nLưu lượng: 0 &ndash; 75 l&iacute;t/giờ<br />\r\nĐường k&iacute;nh tưới: 0 &ndash; 3.5m<br />\r\nKhoảng c&aacute;ch gắn đầu phun: Gắn dưới gốc c&acirc;y<br />\r\nVật liệu: Cọc đỡ nhựa polypropylene; đầu tưới nhựa cao cấp<br />\r\nC&oacute; thể di chuyển, cắm ở nhiều vị tr&iacute; quanh gốc c&acirc;y.<br />\r\nDễ d&agrave;ng thu cuốn khi l&agrave;m cỏ', 24000000, 45, 38),
(44, 'OPPO', '../upload/img-8.jpg', 'Lọc azud Modular 100 cỡ 2&Prime; thuộc d&ograve;ng lọc tầm nhỏ, đảm bảo dễ d&agrave;ng sử dụng, độ bền cao với lưu lượng tối đa 25m3/h.<br />\r\nMột số ưu điểm:<br />\r\n&ndash; Chất lượng nhựa cao cấp, n&acirc;ng cao độ bền sản phẩm<br />\r\n&ndash; Kh&ocirc;ng gian lọc nước lớn, nhằm tăng tối đa thời gian phải vệ sinh lọc<br />\r\n&ndash; Sản xuất tr&ecirc;n c&ocirc;ng nghệ nhựa dẻo n&oacute;ng gi&uacute;p sản phẩm tăng độ bền v&agrave; chắc chắn<br />\r\n&ndash; Chịu được &aacute;p suất cao<br />\r\n&ndash; Tổn thất &aacute;p qua lọc thấp<br />\r\n&ndash; Roăng cao su ở c&aacute;c khớp nối gi&uacute;p chống t&igrave;nh trạng r&ograve; rỉ nước<br />\r\n&ndash; Dễ d&agrave;ng th&aacute;o lắp<br />\r\n&ndash; Dễ lắp đặt &amp; sử dụng<br />\r\n&ndash; Chống ăn m&ograve;n bởi h&oacute;a chất<br />\r\n<strong>Th&ocirc;ng số kỹ thuật lọc Azud:</strong><br />\r\nChỉ ti&ecirc;u&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lọc 1 1/2&Prime; (49mm)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lọc 2&Prime; (60mm )<br />\r\nKhớp nối&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ren ngo&agrave;i 49mm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ren ngo&agrave;i 60mm<br />\r\nLưu lượng tối đa&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 14 m3/h&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 25m3/h<br />\r\nDiện t&iacute;ch bề mặt lọc&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 300 cm2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 525 cm2<br />\r\nChất liệu th&acirc;n vỏ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nhựa kỹ thuật<br />\r\nChất liệu đĩa lọc &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nhựa PP c&oacute; r&atilde;nh<br />\r\n&Aacute;p suất tối đa&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8 bar<br />\r\nĐộ lọc tinh&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120 mesh', 9000000, 51, 11);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `menu_aside`
--
ALTER TABLE `menu_aside`
  ADD PRIMARY KEY (`idAnh`);

--
-- Chỉ mục cho bảng `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Chỉ mục cho bảng `tbl_loaisanpham`
--
ALTER TABLE `tbl_loaisanpham`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Chỉ mục cho bảng `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`MaMenu`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`MaSanPham`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `menu_aside`
--
ALTER TABLE `menu_aside`
  MODIFY `idAnh` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  MODIFY `MaKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_loaisanpham`
--
ALTER TABLE `tbl_loaisanpham`
  MODIFY `MaLoai` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `MaMenu` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `MaSanPham` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
