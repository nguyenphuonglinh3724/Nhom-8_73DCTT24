-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 11, 2024 lúc 06:37 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ban_sach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietgiohang`
--

CREATE TABLE `chitietgiohang` (
  `MaChiTiet` int(11) NOT NULL,
  `MaGioHang` int(11) DEFAULT NULL,
  `MaHangHoa` bigint(10) NOT NULL,
  `SoLuong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id_chi_tiet_hoadon` bigint(10) NOT NULL,
  `sodh` bigint(20) NOT NULL,
  `masp` bigint(20) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` float NOT NULL,
  `thanhtien` decimal(9,2) NOT NULL,
  `madv` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id_chi_tiet_hoadon`, `sodh`, `masp`, `soluong`, `dongia`, `thanhtien`, `madv`) VALUES
(144, 127, 214, 1, 214, 214.00, '15'),
(145, 128, 224, 3, 10, 30.00, '15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `tenUser` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `noidung` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhgia`
--

INSERT INTO `danhgia` (`tenUser`, `email`, `noidung`) VALUES
('Lý Bính', 'lybinh@gmail.com', 'test'),
('Lý Bính2', 'lybinh2@gmail.com', 'test2'),
('Lý Bính2', 'lybinh2@gmail.com', 'test2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `madv` bigint(20) NOT NULL,
  `tendv` varchar(200) NOT NULL,
  `gia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`madv`, `tendv`, `gia`) VALUES
(15, 'Bọc sách', 10),
(16, 'Gói quà tặng', 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `MaGioHang` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `NgayTao` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `sodh` bigint(20) NOT NULL,
  `emailkh` varchar(50) NOT NULL,
  `ngaygiao` date NOT NULL,
  `tenkh` varchar(100) NOT NULL,
  `diachi` varchar(250) NOT NULL,
  `dienthoai` varchar(50) NOT NULL,
  `hinhthucthanhtoan` varchar(100) NOT NULL,
  `thanhtien` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`sodh`, `emailkh`, `ngaygiao`, `tenkh`, `diachi`, `dienthoai`, `hinhthucthanhtoan`, `thanhtien`) VALUES
(127, 'thanh@gmail.com', '2021-06-26', 'Thanh Truong', 'Hà Nội', '1234567890', 'ATM', 224.00),
(128, 'lybinh@gmail.com', '2024-11-12', 'Ly Binh', 'hà nội', '1234567890', 'ATM', 40.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loginadmin`
--

CREATE TABLE `loginadmin` (
  `tendangnhap` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loginadmin`
--

INSERT INTO `loginadmin` (`tendangnhap`, `matkhau`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loginuser`
--

CREATE TABLE `loginuser` (
  `email` varchar(50) NOT NULL,
  `matkhau` int(200) NOT NULL,
  `HoTen` varchar(100) NOT NULL,
  `DienThoai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loginuser`
--

INSERT INTO `loginuser` (`email`, `matkhau`, `HoTen`, `DienThoai`) VALUES
('chiduc@gmail.com', 123, 'Chi Duc', '0123456789'),
('lybinh@gmail.com', 123, 'Ly Binh', '1234567890'),
('quochao@gmail.com', 123, 'Quoc Hao', '098888998');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNhanVien` int(11) NOT NULL,
  `TenNhanVien` varchar(100) DEFAULT NULL,
  `TaiKhoan` varchar(50) DEFAULT NULL,
  `MatKhau` varchar(100) DEFAULT NULL,
  `SoDienThoai` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhaxuatban`
--

CREATE TABLE `nhaxuatban` (
  `ID` bigint(10) NOT NULL,
  `Ten` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhaxuatban`
--

INSERT INTO `nhaxuatban` (`ID`, `Ten`) VALUES
(15, 'NXB Trẻ'),
(16, 'NXB Tổng hợp TP.HCM'),
(17, 'NXB Thế Giới'),
(18, 'NXB Hội Nhà Văn'),
(19, 'Kim Đồng'),
(20, 'Lý Bính');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ID` bigint(10) NOT NULL,
  `Ten` varchar(200) NOT NULL,
  `Gia` double NOT NULL,
  `HinhAnh` varchar(200) NOT NULL,
  `Manhasx` bigint(10) NOT NULL,
  `Mota` text NOT NULL,
  `date` date NOT NULL,
  `KhuyenMai` tinyint(1) NOT NULL,
  `giakhuyenmai` double NOT NULL,
  `tacgia` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ID`, `Ten`, `Gia`, `HinhAnh`, `Manhasx`, `Mota`, `date`, `KhuyenMai`, `giakhuyenmai`, `tacgia`) VALUES
(212, 'Bản Án Chế Độ Thực Dân Pháp', 75, 'DSHCM.jpg', 15, '<p>&ldquo;Bản &aacute;n chế độ thực d&acirc;n Ph&aacute;p&rdquo; (Le Proc&egrave;s de la Colonisation Fran&ccedil;aise) l&agrave; t&aacute;c phẩm của Hồ Chủ tịch viết bằng tiếng Ph&aacute;p trong khoảng những năm 1921-1925, đăng tải lần đầu ti&ecirc;n năm 1925 tại Paris (thủ đ&ocirc; nước Ph&aacute;p) tr&ecirc;n b&aacute;o Impr&eacute;kor của Quốc tế Cộng sản. T&aacute;c phẩm gồm 12 chương v&agrave; phần phụ lục, với c&aacute;ch h&agrave;nh văn ngắn gọn, s&uacute;c t&iacute;ch, c&ugrave;ng với những sự kiện đầy sức thuyết phục, t&aacute;c phẩm tố c&aacute;o thực d&acirc;n Ph&aacute;p d&ugrave;ng mọi thủ đoạn khốc liệt bắt &ldquo;d&acirc;n bản xứ&rdquo; phải đ&oacute;ng &ldquo;thuế m&aacute;u&rdquo; cho ch&iacute;nh quốc... để &ldquo;phơi th&acirc;y tr&ecirc;n chiến trường ch&acirc;u &Acirc;u&rdquo;; đ&agrave;y đọa phụ nữ, trẻ em &ldquo;thuộc địa&rdquo;; c&aacute;c thống sứ, quan lại thực d&acirc;n độc &aacute;c như một bầy th&uacute; dữ, v.v... T&aacute;c phẩm đ&atilde; g&acirc;y được tiếng vang lớn ngay từ khi ra đời, thức tỉnh lương tri của những con người y&ecirc;u tự do, b&igrave;nh đẳng, b&aacute;c &aacute;i, hướng c&aacute;c d&acirc;n tộc bị &aacute;p bức đi theo con đường C&aacute;ch mạng th&aacute;ng Mười Nga v&agrave; chủ nghĩa M&aacute;c &ndash; L&ecirc;nin, thắp l&ecirc;n ngọn lửa đấu tranh cho độc lập, tự do v&agrave; chủ nghĩa x&atilde; hội của d&acirc;n tộc Việt Nam. Nh&acirc;n hưởng ứng cuộc vận động học tập v&agrave; l&agrave;m theo tấm gương đạo đức Hồ Ch&iacute; Minh, Nh&agrave; xuất bản Trẻ in t&aacute;c phẩm &ldquo;Bản &aacute;n chế độ thực d&acirc;n Ph&aacute;p&rdquo; &ndash; một trong những đỉnh cao của văn chương ch&iacute;nh luận c&aacute;ch mạng.</p>\r\n', '2021-06-26', 0, 0, 'Hồ Chí Minh'),
(213, 'Và Rồi Chẳng Còn Ai - And Then There Were None', 110, 'VRCCA.jpg', 15, '<p>&ldquo;Mười&hellip;&rdquo; Mười người bị lừa ra một h&ograve;n đảo nằm trơ trọi giữa biển khơi thuộc vịnh Devon, tất cả được bố tr&iacute; cho ở trong một căn nh&agrave;. T&aacute;c giả của tr&ograve; bịp n&agrave;y l&agrave; một nh&acirc;n vật b&iacute; hiểm c&oacute; t&ecirc;n &ldquo;U.N.Owen&rdquo;. &ldquo;Ch&iacute;n&hellip;&rdquo; Trong bữa ăn tối, một th&ocirc;ng điệp được thu &acirc;m sẵn vang l&ecirc;n lần lượt buộc tội từng người đ&atilde; g&acirc;y ra những tội &aacute;c b&iacute; mật. V&agrave;o cuối buổi tối h&ocirc;m đ&oacute;, một vị kh&aacute;ch đ&atilde; thiệt mạng. &ldquo;T&aacute;m&hellip;&rdquo; Bị kẹt lại giữa mu&ocirc;n tr&ugrave;ng khơi v&igrave; gi&ocirc;ng b&atilde;o c&ugrave;ng nỗi &aacute;m ảnh về một b&agrave;i v&egrave; đếm ngược, từng người, từng người một&hellip; những vị kh&aacute;ch tr&ecirc;n đảo bắt đầu bỏ mạng. &ldquo;Bảy&hellip;&rdquo; Ai trong số mười người tr&ecirc;n đảo l&agrave; kẻ giết người, v&agrave; liệu ai trong số họ c&oacute; thể sống s&oacute;t? &ldquo;Một trong những t&aacute;c phẩm g&acirc;y t&ograve; m&ograve; hay nhất, xuất sắc nhất của Christie.&rdquo; &ndash; Tạp ch&iacute; Observer &ldquo;Kiệt t&aacute;c của Agatha Christie.&rdquo; &ndash; Tạp ch&iacute; Spectator</p>\r\n', '2021-06-26', 1, 94, 'Agatha Christie'),
(214, 'Muôn Kiếp Nhân Sinh Tập 2', 268, 'MKNS.jpg', 16, '<p>T&aacute;c phẩm Mu&ocirc;n Kiếp Nh&acirc;n Sinh tập 1 của t&aacute;c giả Nguy&ecirc;n Phong xuất bản giữa t&acirc;m điểm của đại dịch đ&atilde; thực sự tạo n&ecirc;n một hiện tượng xuất bản hiếm c&oacute; ở Việt Nam. Cuốn s&aacute;ch đ&atilde; khơi dậy những trực cảm tiềm ẩn của con người, l&agrave;m thay đổi g&oacute;c nh&igrave;n cuộc sống v&agrave; thức tỉnh nhận thức của ch&uacute;ng ta giữa một thế giới đang ng&agrave;y c&agrave;ng bất ổn v&agrave; đầy biến động. Ngo&agrave;i việc ph&aacute;t h&agrave;nh hơn 200.000 bản trong 6 th&aacute;ng, chưa kể lượng ph&aacute;t h&agrave;nh Ebook v&agrave; Audio Book qua Voiz-FM, First News c&ograve;n nhận được h&agrave;ng ng&agrave;n tin nhắn, e-mail chuyển lời cảm ơn đến t&aacute;c giả Nguy&ecirc;n Phong. Điều n&agrave;y chứng tỏ sức lan tỏa của cuốn s&aacute;ch đ&atilde; tạo n&ecirc;n một hiện tượng trong văn h&oacute;a đọc của năm 2020.</p>\r\n', '2021-06-26', 1, 214, 'Nguyên Phong'),
(216, 'Hiểu Về Trái Tim (Tái Bản 2019) ', 138, 'image_195509_1_14922.jpg', 16, 'HIỂU VỀ TRÁI TIM – CUỐN SÁCH MỞ CỬA THẾ GIỚI CẢM XÚC CỦA MỖI NGƯỜI  \r\n\r\n“Hiểu về trái tim” là một cuốn sách đặc biệt được viết bởi thiền sư Minh Niệm. Với phong thái và lối hành văn gần gũi với những sinh hoạt của người Việt, thầy Minh Niệm đã thật sự thổi hồn Việt vào cuốn sách nhỏ này.\r\n\r\nXuất bản lần đầu tiên vào năm 2011, Hiểu Về Trái Tim trình làng cũng lúc với kỷ lục: cuốn sách có số lượng in lần đầu lớn nhất: 100.000 bản. Trung tâm sách kỷ lục Việt Nam công nhận kỳ tích ấy nhưng đến nay, con số phát hành của Hiểu về trái tim vẫn chưa có dấu hiệu chậm lại.\r\n\r\nLà tác phẩm đầu tay của nhà sư Minh Niệm, người sáng lập dòng thiền hiểu biết (Understanding Meditation), kết hợp giữa tư tưởng Phật giáo Đại thừa và Thiền nguyên thủy Vipassana, nhưng Hiểu Về Trái Tim không phải tác phẩm thuyết giáo về Phật pháp. Cuốn sách rất “đời” với những ưu tư của một người tu nhìn về cõi thế. Ở đó, có hạnh phúc, có đau khổ, có tình yêu, có cô đơn, có tuyệt vọng, có lười biếng, có yếu đuối, có buông xả… Nhưng, tất cả những hỉ nộ ái ố ấy đều được khoác lên tấm áo mới, một tấm áo tinh khiết và xuyên suốt, khiến người đọc khi nhìn vào, đều thấy mọi sự như nhẹ nhàng hơn…\r\n', '2021-06-26', 1, 110, 'Minh Niệm'),
(218, 'Đừng Chạy Theo Số Đông ', 200, 'image_195509_1_37011.jpg', 17, 'Nếu tất cả mọi người ai cũng làm chủ doanh nghiệp, thì ai sẽ đi làm thuê?\r\n\r\nTôi.\r\n\r\nBởi lúc đó họ sẽ phải đấu giá để có được tôi.\r\n\r\nNhưng điều này không bao giờ xảy ra. Bởi ngay từ trong trứng đến lúc mọc cánh, chúng ta đã được dạy phải làm cho người khác cả đời. Chỉ có 1% được dạy khác.\r\n\r\nBạn không chạy theo số đông.\r\n\r\nBạn LÀ số đông.\r\n\r\nTuy nhiên bạn đừng nhầm lẫn. Cuốn sách này không chỉ nói về vấn đề “làm thuê” hay “làm riêng”. Đây chỉ là một trong những khía cạnh rất nhỏ.\r\n\r\nCuốn sách này muốn làm nổi bật một hệ tư duy ngầm lớn và khủng khiếp hơn thế mà chúng ta không nhận ra. Một sức hút vô hình nhưng mạnh mẽ.', '2021-06-26', 0, 0, 'Kiên Trần'),
(219, 'Nhà Giả Kim (Tái Bản 2020) ', 79, 'image_195509_1_36793.jpg', 18, 'Tất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người. \r\n\r\nTiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.\r\n\r\n“Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”', '2021-06-26', 1, 59, 'Paulo Coelho'),
(220, 'Doraemon', 100, 'Doraemon1.jpg', 19, '<p>C&acirc;u chuyện về một ch&uacute; m&egrave;o m&aacute;y quay về qu&aacute; khứ để gi&uacute;p cậu nh&oacute;c nobita ph&aacute;t triển</p>\r\n', '2024-11-06', 1, 90, 'Fujiko Fujio'),
(221, 'Death Note ', 200, 'DeathNote_vol1_cover.jpg', 20, '<p>Viết về một người thanh ni&ecirc;n c&oacute; tinh thần bị rối loạn muốn huỷ diệt người xấu&nbsp;</p>\r\n', '2024-11-06', 1, 20, 'Ōba Tsugumi'),
(222, 'Dragon Ball', 999, 'Goku-kid1.png', 20, '<p>truyện m&ocirc; tả cuộc h&agrave;nh tr&igrave;nh của&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Son_Goku\">Son Goku</a>&nbsp;từ l&uacute;c b&eacute; đến trưởng th&agrave;nh, qua c&aacute;c lần tầm sư học v&otilde; v&agrave; kh&aacute;m ph&aacute; thế giới để truy t&igrave;m c&aacute;c vi&ecirc;n ngọc rồng với điều ước từ rồng thi&ecirc;ng. Xuy&ecirc;n suốt h&agrave;nh tr&igrave;nh của Son Goku, cậu đ&atilde; gặp được nhiều bạn b&egrave; v&agrave; chống lại những kẻ hung &aacute;c c&oacute; &acirc;m mưu d&ugrave;ng điều ước từ rồng thi&ecirc;ng để l&agrave;m b&aacute; chủ thế giới.</p>\r\n', '2024-11-06', 1, 990, 'Toriyama Akira'),
(223, 'Dororo', 100, 'unnamed.png', 20, '<p>Truyện kể về một cậu b&eacute; bị cha m&igrave;nh hiến tế để đổi lấy tiền t&agrave;i v&agrave; danh phận.&nbsp;C&acirc;u b&eacute; kh&ocirc;ng chịu khuất phục đ&atilde; đi ngao du khắp nơi để t&igrave;m lại to&agrave;n bộ phận cơ thể của m&igrave;nh</p>\r\n', '2024-11-06', 1, 80, 'Tezuka Osamu'),
(224, 'Ma vương tu len', 10, 'Clove2_N2emWnD.png', 15, '<p>c&ocirc; b&eacute; valorant</p>\r\n', '2024-11-06', 0, 0, 'Riots'),
(228, 'Attack on Titan', 500, 'ATTACK ON TITAN 16.jpg', 17, '<p>Lấy bối cảnh thế giới hậu tận thế, nơi những g&igrave; c&ograve;n s&oacute;t lại của nh&acirc;n loại sống sau những bức tường bảo vệ họ khỏi&nbsp;<a href=\"https://en.wikipedia.org/wiki/List_of_Attack_on_Titan_characters#Titans\">những Titan</a>&nbsp;khổng lồ giống người ,&nbsp;<em>Attack on Titan</em>&nbsp;theo ch&acirc;n nh&acirc;n vật ch&iacute;nh&nbsp;<a href=\"https://en.wikipedia.org/wiki/Eren_Yeager\">Eren Yeager</a>&nbsp;, c&ugrave;ng với những người bạn&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mikasa_Ackerman\">Mikasa Ackerman</a>&nbsp;v&agrave;&nbsp;<a href=\"https://en.wikipedia.org/wiki/List_of_Attack_on_Titan_characters#Armin_Arlert\">Armin Arlert</a>&nbsp;. Khi một&nbsp;<a href=\"https://en.wikipedia.org/wiki/List_of_Attack_on_Titan_characters#Colossus_Titan\">Titan Khổng lồ</a>&nbsp;ph&aacute; vỡ bức tường qu&ecirc; hương của họ, Titan đ&atilde; ph&aacute; hủy th&agrave;nh phố v&agrave; ăn thịt mẹ của Eren. Thề trả th&ugrave;, Eren gia nhập Qu&acirc;n&nbsp;<a href=\"https://en.wikipedia.org/wiki/List_of_Attack_on_Titan_characters#Survey_Corps\">đo&agrave;n Khảo s&aacute;t</a>&nbsp;tinh nhuệ , một nh&oacute;m binh l&iacute;nh chiến đấu chống lại Titan. Bộ phim ghi lại h&agrave;nh tr&igrave;nh của Eren c&ugrave;ng Qu&acirc;n đo&agrave;n Khảo s&aacute;t khi họ chiến đấu chống lại Titan trong khi điều tra nguồn gốc v&agrave; lịch sử của ch&uacute;ng.</p>\r\n', '2024-11-11', 0, 0, 'Isayama Hajime'),
(229, 'Conan', 100, 'conan-tap-99.jpg', 19, '<p>Truyện xoay quanh một cậu&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Th%C3%A1m_t%E1%BB%AD\">th&aacute;m tử</a>&nbsp;trung học c&oacute; t&ecirc;n l&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Kudo_Shinichi\">Kudo Shinichi</a>&nbsp;trong l&uacute;c đang điều tra một&nbsp;<a href=\"https://vi.wikipedia.org/wiki/T%E1%BB%95_ch%E1%BB%A9c_%C3%81o_%C4%91en\">Tổ chức &Aacute;o đen</a>&nbsp;b&iacute; ẩn đ&atilde; bị &eacute;p phải uống một loại thuốc độc c&oacute; thể g&acirc;y chết người. May mắn l&agrave; đ&atilde; sống s&oacute;t nhưng cơ thể th&igrave; lại bị teo nhỏ như một đứa b&eacute; 6-7 tuổi. Kể từ đ&oacute; để tr&aacute;nh bị lộ th&acirc;n phận thực sự của m&igrave;nh, Shinichi đ&atilde; lấy t&ecirc;n l&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Edogawa_Conan\">Edogawa Conan</a>&nbsp;v&agrave; chuyển đến sống ở nh&agrave; của c&ocirc; bạn thời thơ ấu&nbsp;<a href=\"https://vi.wikipedia.org/wiki/M%C5%8Dri_Ran\">Mori Ran</a>&nbsp;c&ugrave;ng với cha của c&ocirc; ấy l&agrave; một th&aacute;m tử tư t&ecirc;n&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Mori_Kogoro\">Mori Kogoro</a>&nbsp;với hy vọng một ng&agrave;y n&agrave;o đ&oacute; cậu c&oacute; thể hạ gục Tổ chức &Aacute;o Đen v&agrave; lấy lại h&igrave;nh d&aacute;ng ban đầu.</p>\r\n', '2024-11-11', 1, 90, 'Aoyama Gōshō'),
(230, 'Your Name', 1000, 'Poster_phim_Tên_bạn_là_gì.jpg', 20, '<p>Bộ truy&ecirc;n kể về Mitsuha &ndash; một nữ sinh trung học buồn ch&aacute;n với cuộc sống tẻ nhạt ở v&ugrave;ng th&ocirc;n qu&ecirc; v&agrave; Taki &ndash; một ch&agrave;ng trai Tokyo &ndash; v&igrave; một l&yacute; do n&agrave;o đ&oacute; bị ho&aacute;n đổi cơ thể trong khi sao chổi thi&ecirc;n ni&ecirc;n kỉ đang đến gần.&nbsp;</p>\r\n', '2024-11-11', 1, 999, 'Shinkai Makoto'),
(231, '5cm per second', 888, '5_Centimeters_Per_Second.jpg', 20, '<p>Truyện xoay quanh mối quan hệ của một cậu b&eacute; t&ecirc;n Tōno Takaki với một c&ocirc; g&aacute;i l&agrave; bạn từ khi c&ograve;n đi học v&agrave;o khoảng những năm 1990 cho đến thời hiện đại, nhưng giữa họ lu&ocirc;n c&oacute; một khoảng c&aacute;ch v&agrave; thường chỉ li&ecirc;n lạc với nhau từ xa qua thư hay điện thoại.</p>\r\n', '2024-11-11', 1, 800, 'Shinkai Makoto'),
(232, 'Tắt Đèn', 100, 'Tắt_đèn-Nhã_Nam.jpeg', 18, '<p>Truy&ecirc;nh&nbsp;kể về nh&acirc;n vật ch&iacute;nh l&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Ch%E1%BB%8B_D%E1%BA%ADu_(phim)\">chị Dậu.</a>&nbsp;Trước khi lấy chồng chị c&oacute; t&ecirc;n l&agrave; L&ecirc; Thị Đ&agrave;o, một c&ocirc; g&aacute;i đẹp, giỏi giang, th&aacute;o v&aacute;t v&agrave; (theo&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Ng%C3%B4_T%E1%BA%A5t_T%E1%BB%91\">nh&agrave; văn</a>) sinh ra trong gia đ&igrave;nh trung lưu.</p>\r\n\r\n<p>Vốn l&uacute;c đầu, gia cảnh anh chị Dậu c&oacute; dư giả, nhưng v&igrave; liền l&uacute;c mẹ v&agrave; em trai anh Dậu c&ugrave;ng qua đời, anh chị d&ugrave; đ&atilde; hết sức cần kiệm nhưng vẫn phải ti&ecirc;u qu&aacute; nhiều tiền cho hai đ&aacute;m ma. Chưa hết, sau khi đ&aacute;m ma cho em trai xong, anh Dậu bỗng mắc bệnh sốt r&eacute;t, kh&ocirc;ng l&agrave;m g&igrave; được, mọi vất vả dồn l&ecirc;n vai chị Dậu, khiến gia cảnh l&acirc;m v&agrave;o cảnh &#39;nhất nh&igrave; trong hạng c&ugrave;ng đinh trong l&agrave;ng.</p>\r\n', '2024-11-11', 1, 70, 'Ngô Tất Tố'),
(233, 'Chiếc thuyền ngoài xa Sách ', 90, '182898244_2249607161840424_4796320413415168559_n.jpg', 18, '<p><em>Chiếc thuyền ngo&agrave;i xa</em>&nbsp;thuộc dạng truyện luận đề với việc&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Nguy%E1%BB%85n_Minh_Ch%C3%A2u_(nh%C3%A0_v%C4%83n)\">Nguyễn Minh Ch&acirc;u</a>&nbsp;đ&atilde; đặt ra vấn đề mối quan hệ giữa&nbsp;<a href=\"https://vi.wikipedia.org/wiki/V%C4%83n_h%E1%BB%8Dc\">văn học</a>&nbsp;v&agrave; đời sống. Tuy vậy,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Nh%C3%A0_v%C4%83n\">nh&agrave; văn</a>&nbsp;kh&ocirc;ng biến nh&acirc;n vật th&agrave;nh c&aacute;i loa ph&aacute;t biểu luận đề.<a href=\"https://vi.wikipedia.org/wiki/Chi%E1%BA%BFc_thuy%E1%BB%81n_ngo%C3%A0i_xa#cite_note-CTNX23-1\">[1]</a>&nbsp;Th&ocirc;ng qua c&acirc;u chuyện kể về chuyến đi của một&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Nhi%E1%BA%BFp_%E1%BA%A3nh_gia\">nghệ sĩ nhiếp ảnh</a>&nbsp;đến một v&ugrave;ng biển&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Mi%E1%BB%81n_Trung_(Vi%E1%BB%87t_Nam)\">miền Trung</a>&nbsp;để chụp ảnh nghệ thuật, với một cốt truyện nhiều t&igrave;nh huống bất ngờ với hệ thống nh&acirc;n vật đa dạng, nh&agrave; văn đề cập đến t&iacute;nh trung thực của người nghệ sĩ, n&ecirc;u l&ecirc;n mối quan hệ chặt chẽ giữa&nbsp;<a href=\"https://vi.wikipedia.org/wiki/V%C4%83n_h%E1%BB%8Dc\">văn học</a>&nbsp;v&agrave; hiện thực cũng như những vấn đề phức tạp của cuộc sống, kể cả bi kịch số phận con người.</p>\r\n', '2024-11-11', 0, 0, 'Nguyễn Minh Châu'),
(234, 'Vợ nhặt Tiểu thuyết ', 200, '15d486453126270eacf54d6c85dcf39e.jpg', 18, '<p><em><strong>Vợ nhặt</strong></em>&nbsp;l&agrave; một t&aacute;c phẩm&nbsp;<a href=\"https://vi.wikipedia.org/wiki/V%C4%83n_h%E1%BB%8Dc\">văn học</a>&nbsp;của&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Nh%C3%A0_v%C4%83n\">nh&agrave; văn</a>&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Kim_L%C3%A2n\">Kim L&acirc;n</a>&nbsp;viết về thời kỳ xảy ra&nbsp;<a href=\"https://vi.wikipedia.org/wiki/N%E1%BA%A1n_%C4%91%C3%B3i_n%C4%83m_%E1%BA%A4t_D%E1%BA%ADu,_1944-1945\">nạn đ&oacute;i năm 1945</a>&nbsp;diễn ra tại Th&aacute;i B&igrave;nh. Được in trong tập&nbsp;<em>Con ch&oacute; xấu x&iacute;</em>&nbsp;(truyện ngắn 1962), tiền th&acirc;n của truyện l&agrave; tiểu thuyết&nbsp;<em>X&oacute;m ngụ cư (1946)</em>&nbsp;được viết ngay sau&nbsp;<a href=\"https://vi.wikipedia.org/wiki/C%C3%A1ch_m%E1%BA%A1ng_Th%C3%A1ng_T%C3%A1m\">C&aacute;ch mạng th&aacute;ng T&aacute;m</a>&nbsp;nhưng c&ograve;n dang dở v&agrave; bị mất bản thảo. Về sau (1954), t&aacute;c giả đ&atilde; dựa v&agrave;o cốt truyện cũ để viết truyện ngắn n&agrave;y.</p>\r\n', '2024-11-11', 1, 150, 'Kim Lân'),
(235, 'Haikyuu!!', 999, 'Haikyu!!_-_Chàng_khổng_lồ_tí_hon.jpg', 20, '<p>Hinata Shōyō, một&nbsp;<a href=\"https://vi.wikipedia.org/wiki/H%E1%BB%8Dc_sinh\">học sinh</a>&nbsp;cấp 2 đ&atilde; ấp ủ ước mơ trở th&agrave;nh&nbsp;<a href=\"https://vi.wikipedia.org/wiki/V%E1%BA%ADn_%C4%91%E1%BB%99ng_vi%C3%AAn\">vận động vi&ecirc;n</a>&nbsp;<a href=\"https://vi.wikipedia.org/wiki/B%C3%B3ng_chuy%E1%BB%81n\">b&oacute;ng chuyền</a>&nbsp;sau khi t&igrave;nh cờ xem tr&ecirc;n TV C&acirc;u lạc bộ B&oacute;ng chuyền THPT Karasuno gi&agrave;nh lấy chiến thắng ở v&ograve;ng loại tiến v&agrave;o Giải B&oacute;ng chuyền Thiếu ni&ecirc;n Quốc gia. C&oacute; điểm chung l&agrave; v&oacute;c người nhỏ con, cậu đặc biệt ngưỡng mộ tay đập bi&ecirc;n thấp người nhưng v&ocirc; c&ugrave;ng t&agrave;i năng, đồng thời l&agrave; &quot;ace&quot; của đội Karasuno, người được c&aacute;c b&igrave;nh luận vi&ecirc;n mệnh danh l&agrave; &quot;Ch&agrave;ng khổng lồ t&iacute; hon&quot;. D&ugrave; ho&agrave;n to&agrave;n thiếu kinh nghiệm, Hinata c&oacute; một tinh thần thể thao rất ấn tượng c&ugrave;ng một sức bật nhảy đ&aacute;ng gờm; cậu tham gia v&agrave;o c&acirc;u lạc bộ b&oacute;ng chuyền của trường &ndash; nhưng trớ tr&ecirc;u thay lại l&agrave; th&agrave;nh vi&ecirc;n duy nhất. Hinata đ&agrave;nh d&agrave;nh ra hai năm tiếp theo thuyết phục những học sinh kh&aacute;c gia nhập c&acirc;u lạc bộ để c&oacute; đủ th&agrave;nh vi&ecirc;n tham gia c&aacute;c giải đấu.</p>\r\n', '2024-11-11', 0, 0, '	Furudate Haruichi'),
(236, 'Đại quản gia là ma hoàng', 999, '933566716c.jpg', 20, '<p>Truyện kể về một ma ho&agrave;ng</p>\r\n', '2024-11-11', 0, 0, 'lybinhprovjp'),
(237, 'Đắc nhân tâm', 100, '10990.jpg', 20, '<p>Đọc l&agrave; cuốn</p>\r\n', '2024-11-11', 0, 0, 'Lý Bính'),
(238, 'Số đỏ', 500, 'Sodobanindau.jpg', 18, '<p>Số đỏ được xem l&agrave; một t&aacute;c phẩm c&oacute; nhiều ảnh hưởng lớn đến đời sống x&atilde; hội Việt Nam, với nhiều nh&acirc;n vật v&agrave; c&acirc;u n&oacute;i trong t&aacute;c phẩm đ&atilde; đi v&agrave;o cuộc sống đời thường. Số đỏ cũng đ&atilde; được dựng th&agrave;nh kịch v&agrave; phim.</p>\r\n', '2024-11-11', 0, 0, 'Vũ Trọng Phụng'),
(239, 'Kiếm lai', 999, 'download.jpg', 20, '<p>Kiếm v&ocirc; địch</p>\r\n', '2024-11-11', 0, 0, 'lybinhsieucap'),
(240, 'Đấu phá thương khung', 500, 'dau-pha-thuong-khung-phan-5-gia-nam-hoc-vien-1-1-300x450.jpg', 17, '<p>Truyện về một cậu b&eacute; muốn mạnh l&ecirc;n&nbsp;</p>\r\n', '2024-11-11', 1, 0, 'noname'),
(241, 'One Piece', 888, 'One_Piece,_Volume_61_Cover_(Japanese).jpg', 17, '<p>C&acirc;u chuyện kể về&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Monkey_D._Luffy\">Monkey D. Luffy</a>, một ch&agrave;ng trai trẻ tuổi, được thần tượng thời thơ ấu của m&igrave;nh l&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Danh_s%C3%A1ch_nh%C3%A2n_v%E1%BA%ADt_trong_One_Piece#Shanks_%22T%C3%B3c_%C4%90%E1%BB%8F%22\">Shanks &quot;T&oacute;c Đỏ&quot;</a>&nbsp;truyền cảm hứng trở th&agrave;nh một&nbsp;<a href=\"https://vi.wikipedia.org/wiki/H%E1%BA%A3i_t%E1%BA%B7c\">hải tặc</a>, bắt đầu cuộc h&agrave;nh tr&igrave;nh tại East Blue t&igrave;m kiếm kho b&aacute;u danh gi&aacute; v&agrave; trở th&agrave;nh Vua Hải Tặc.</p>\r\n', '2024-11-12', 1, 0, 'Oda Eiichiro'),
(242, 'Naruto ', 777, 'Naruto_Volume_1_manga_cover.jpg', 19, '<p>Truyện lấy bối cảnh bắt nguồn từ sự việc xảy ra v&agrave;o mười hai năm trước, con Hồ Ly Ch&iacute;n Đu&ocirc;i&nbsp;<strong>(Kyuubi-Kurama</strong><a href=\"https://vi.wikipedia.org/wiki/Naruto#cite_note-3\">[2]</a><strong>)</strong>&nbsp;đ&atilde; tấn c&ocirc;ng L&agrave;ng L&aacute;&nbsp;(木ノ葉隠れ&nbsp;(Mộc Diệp Ẩn L&yacute;)&nbsp;<em>Konohagakure / Konohagakure no Sato</em><a href=\"https://vi.wikipedia.org/wiki/Tr%E1%BB%A3_gi%C3%BAp:Ti%E1%BA%BFng_Nh%E1%BA%ADt\"><strong>?</strong></a>). Với lượng sức mạnh khổng lồ, n&oacute; c&oacute; thể dễ d&agrave;ng khiến&nbsp;<a href=\"https://vi.wikipedia.org/wiki/S%C3%B3ng_th%E1%BA%A7n\">s&oacute;ng thần</a>&nbsp;nổi dậy v&agrave; san bằng n&uacute;i non chỉ với một trong số ch&iacute;n c&aacute;i đu&ocirc;i, n&oacute; đ&atilde; g&acirc;y ra sự hỗn loạn tột c&ugrave;ng v&agrave; giết chết nhiều người, cho tới khi người l&atilde;nh đạo của l&agrave;ng L&aacute; &ndash; ng&agrave;i&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Danh_s%C3%A1ch_nh%C3%A2n_v%E1%BA%ADt_ph%E1%BB%A5_trong_Naruto#Hokage_%C4%91%E1%BB%87_t%E1%BB%A9\">Hokage Đệ Tứ</a>&nbsp;(<a href=\"https://vi.wikipedia.org/wiki/Namikaze_Minato\">Namikaze Minato</a>) đ&atilde; hi sinh để phong ấn con qu&aacute;i th&uacute; v&agrave;o cơ thể con trai m&igrave;nh - Naruto khi cậu chỉ vừa mới được sinh ra, bằng cấm thuật: Kin Jutsu Ogi &quot;Shiki Fuin&quot; (Thi Quỷ Phong Tận - một thuật cấm phải đ&aacute;nh đổi bằng t&iacute;nh mạng). Hokage Đệ Tứ, người được vinh danh v&igrave; đ&atilde; phong ấn con y&ecirc;u hồ, khi&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Ch%E1%BA%BFt\">nhắm mắt xu&ocirc;i tay</a>&nbsp;đ&atilde; mong muốn Naruto được người d&acirc;n t&ocirc;n trọng khi c&oacute; th&acirc;n x&aacute;c l&agrave; nơi chứa đựng con qu&aacute;i vật.</p>\r\n', '2024-11-12', 0, 0, '	Kishimoto Masashi'),
(243, 'Kimetsu no Yaiba', 555, 'Demon_Slayer_-_Kimetsu_no_Yaiba,_volume_1.jpg', 19, '<p>Bộ truyện lấy bối cảnh Nhật Bản&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Th%E1%BB%9Di_k%E1%BB%B3_%C4%90%E1%BA%A1i_Ch%C3%ADnh\">thời kỳ Đại Ch&iacute;nh</a>, l&agrave; nơi m&agrave; một&nbsp;<a href=\"https://vi.wikipedia.org/wiki/T%E1%BB%95_ch%E1%BB%A9c_b%C3%AD_m%E1%BA%ADt\">tổ chức b&iacute; mật</a>&nbsp;c&oacute; t&ecirc;n Qu&acirc;n Đo&agrave;n Diệt Quỷ đ&atilde; thầm lặng chiến đấu chống lại lo&agrave;i&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Oni\">quỷ</a>&nbsp;suốt h&agrave;ng trăm năm qua. Lo&agrave;i quỷ n&agrave;y vốn từng l&agrave; con người nhưng đ&atilde; được Muzan cho m&aacute;u để ho&aacute; quỷ; ch&uacute;ng ăn thịt người v&agrave; sở hữu những năng lực si&ecirc;u nhi&ecirc;n, trong đ&oacute; c&oacute; khả năng t&aacute;i sinh v&agrave; &quot;Huyết Quỷ Thuật&quot;, thứ dị năng m&agrave; những con quỷ bậc cao đạt được. V&igrave; lo&agrave;i quỷ c&oacute; khả năng t&aacute;i sinh n&ecirc;n chỉ c&oacute; một số phương ph&aacute;p để ti&ecirc;u diệt ch&uacute;ng, trong đ&oacute; c&oacute; việc lấy đầu lũ quỷ bằng những vũ kh&iacute; được chế tạo từ loại quặng c&oacute; thể hấp thu &aacute;nh nắng, hoặc ti&ecirc;m cho ch&uacute;ng chất độc chiết xuất từ hoa&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Wisteria\">tử đằng</a>, hoặc cho ch&uacute;ng tiếp x&uacute;c trực tiếp với &aacute;nh s&aacute;ng mặt trời. Mặt kh&aacute;c, c&aacute;c kiếm sĩ diệt quỷ ho&agrave;n to&agrave;n l&agrave; người trần mắt thịt, tuy nhi&ecirc;n họ sở hữu c&aacute;c kỹ thuật h&ocirc; hấp đặc biệt gọi l&agrave; &quot;Hơi Thở&quot;, gi&uacute;p họ n&acirc;ng sức mạnh của m&igrave;nh l&ecirc;n mức si&ecirc;u ph&agrave;m v&agrave; tăng cường khả năng đối kh&aacute;ng trước lo&agrave;i quỷ.</p>\r\n', '2024-11-12', 0, 0, 'Gotōge Koyoharu'),
(244, 'My Hero Academia', 789, 'Boku_no_Hero_Academia_Volume_1.png', 15, '<p><em>My Hero Academia</em>&nbsp;is set in a world where about 80% of the human population has gained superpowers called &quot;Quirks&quot;&nbsp;(個性,&nbsp;<em>Kosei</em>). Quirks vary widely and can be inherited. Among the Quirk-enhanced individuals, a few of them earn the title of&nbsp;<a href=\"https://en.wikipedia.org/wiki/List_of_My_Hero_Academia_characters#Pro_Heroes\">Heroes</a>, who cooperate with authorities in rescue operations and apprehending criminals who abuse their Quirks, commonly known as&nbsp;<a href=\"https://en.wikipedia.org/wiki/List_of_My_Hero_Academia_characters#Villains\">Villains</a>. In addition, Heroes who excel on their duties gain celebrity status and are recognized as &quot;Pro Heroes&quot;&nbsp;(プロヒーロー,&nbsp;<em>Puro Hīrō</em>). Heroes are ranked in popularity, with higher ranking heroes receiving public appeal, although it is not uncommon for rookie heroes to gain popularity as well.</p>\r\n', '2024-11-12', 0, 0, '	Kōhei Horikoshi'),
(245, 'One Punch Man', 10000, 'OnePunchMan_manga_cover.png', 20, '<p>The story is set on a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Supercontinent\">supercontinent</a>&nbsp;version of Earth on which powerful monsters and supervillains wreak havoc. The millionaire Agoni creates the Hero Association, which employs superheroes to fight evil. Saitama, an unassociated hero, hails from City Z and performs heroic deeds as a hobby. For three years, he has trained enough to defeat any enemy with a single punch. His unmatched strength has made him very successful, to the point where he has become bored from the lack of any serious challengers. He becomes a reluctant mentor to Genos, a cyborg seeking revenge against another cyborg who killed his family and destroyed his hometown, after Saitama defeats the monster Mosquito Girl that defeated Genos.</p>\r\n', '2024-11-12', 0, 0, 'One'),
(246, 'Bleach', 567, 'Bleach_cover_01.jpg', 20, '<p><a href=\"https://vi.wikipedia.org/wiki/Kurosaki_Ichigo\">Kurosaki Ichigo</a>&nbsp;l&agrave; một thiếu ni&ecirc;n c&oacute; khả năng nh&igrave;n thấy c&aacute;c&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Linh_h%E1%BB%93n\">linh hồn</a>. Cuộc sống của cậu thay đổi sau sự xuất hiện của một Shinigami (<em>Tử Thần</em>, l&agrave; những người điều h&ograve;a d&ograve;ng chảy của linh hồn giữa thế giới con người v&agrave; thế giới b&ecirc;n kia), t&ecirc;n l&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Kuchiki_Rukia\">Kuchiki Rukia</a>, đến thế giới con người để ti&ecirc;u diệt&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Hollow_(Bleach)\">Hollow</a>&nbsp;- những linh hồn lạc lối nguy hiểm. Khi Rukia bị thương nặng khi đang bảo vệ Ichigo khỏi Hollow, c&ocirc; cố gắng chuyển một nửa lượng Reiatsu&nbsp;(霊圧&nbsp;(Linh &Aacute;p)<a href=\"https://vi.wikipedia.org/wiki/Tr%E1%BB%A3_gi%C3%BAp:Ti%E1%BA%BFng_Nh%E1%BA%ADt\"><strong>?</strong></a>&nbsp;&quot;&aacute;p lực t&acirc;m linh&quot;)) của c&ocirc; cho Ichigo để anh c&oacute; thể đ&aacute;nh bại Hollow. Tuy nhi&ecirc;n, Ichigo lấy gần như tất cả sức mạnh của Rukia v&agrave; biến đổi th&agrave;nh một Shinigami, v&agrave; nhờ đ&oacute; anh c&oacute; thể đ&aacute;nh bại con Hollow dễ d&agrave;ng. Do mất hết sức mạnh, Rukia mắc kẹt ở thế giới con người v&agrave; phải sống tại đ&acirc;y cho đến khi phục hồi hết sức mạnh của m&igrave;nh. Trong thời gian đ&oacute;, Ichigo thay Rukia l&agrave;m Shinigami, chiến đấu với Hollow v&agrave; dẫn dắt linh hồn đến thế giới b&ecirc;n kia được gọi l&agrave; Souru Sosaeti&nbsp;</p>\r\n', '2024-11-12', 0, 0, 'Kubo Taito');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD PRIMARY KEY (`MaChiTiet`),
  ADD KEY `MaGioHang` (`MaGioHang`),
  ADD KEY `MaHangHoa` (`MaHangHoa`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id_chi_tiet_hoadon`),
  ADD KEY `chitiethoadon` (`sodh`);

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`madv`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`MaGioHang`),
  ADD KEY `email` (`email`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`sodh`);

--
-- Chỉ mục cho bảng `loginadmin`
--
ALTER TABLE `loginadmin`
  ADD PRIMARY KEY (`tendangnhap`);

--
-- Chỉ mục cho bảng `loginuser`
--
ALTER TABLE `loginuser`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNhanVien`),
  ADD UNIQUE KEY `TaiKhoan` (`TaiKhoan`);

--
-- Chỉ mục cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Ten` (`Ten`),
  ADD KEY `sanpham` (`Manhasx`),
  ADD KEY `giakhuyenmai` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_2` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_3` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_4` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_5` (`giakhuyenmai`);
ALTER TABLE `sanpham` ADD FULLTEXT KEY `Ten_2` (`Ten`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  MODIFY `MaChiTiet` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id_chi_tiet_hoadon` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `madv` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `MaGioHang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `sodh` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNhanVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD CONSTRAINT `chitietgiohang_ibfk_1` FOREIGN KEY (`MaGioHang`) REFERENCES `giohang` (`MaGioHang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietgiohang_ibfk_2` FOREIGN KEY (`MaHangHoa`) REFERENCES `sanpham` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon` FOREIGN KEY (`sodh`) REFERENCES `hoadon` (`sodh`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`email`) REFERENCES `loginuser` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham` FOREIGN KEY (`Manhasx`) REFERENCES `nhaxuatban` (`ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
