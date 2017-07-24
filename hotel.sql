-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th6 05, 2017 lúc 08:40 AM
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hotel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `datphong`
--

CREATE TABLE `datphong` (
  `id` int(11) NOT NULL,
  `hoten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `id_khachsan` int(11) NOT NULL,
  `loaiphong` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sophong` int(11) NOT NULL,
  `ngayden` date NOT NULL,
  `ngaydi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `datphong`
--

INSERT INTO `datphong` (`id`, `hoten`, `sdt`, `id_khachsan`, `loaiphong`, `sophong`, `ngayden`, `ngaydi`) VALUES
(2, 'Họ tên', '0123456789', 9, 'Phòng đơn', 1, '2017-05-27', '2017-05-28'),
(3, 'Bùi Thị Diệu', '01248100296', 16, 'Phòng đơn', 1, '2017-06-01', '2017-06-02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diadiem`
--

CREATE TABLE `diadiem` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `diadiem`
--

INSERT INTO `diadiem` (`id`, `ten`) VALUES
(1, 'An Giang'),
(2, 'Bà Rịa - Vũng Tàu'),
(3, 'Bắc Giang'),
(4, 'Bắc Kạn'),
(5, 'Bạc Liêu'),
(6, 'Bắc Ninh'),
(7, 'Bến Tre'),
(8, 'Bình Định'),
(9, 'Bình Dương'),
(10, 'Bình Phước'),
(11, 'Bình Thuận'),
(12, 'Cà Mau'),
(13, 'Cao Bằng'),
(14, 'Đắk Lắk'),
(15, 'Đắk Nông'),
(16, 'Điện Biên'),
(17, 'Đồng Nai'),
(18, 'Đồng Tháp'),
(19, 'Gia Lai'),
(20, 'Hà Giang'),
(21, 'Hà Nam'),
(22, 'Hà Tĩnh'),
(23, 'Hải Dương'),
(24, 'Hậu Giang'),
(25, 'Hòa Bình'),
(26, 'Hưng Yên'),
(27, 'Khánh Hòa'),
(28, 'Kiên Giang'),
(29, 'Kon Tum'),
(30, 'Lai Châu'),
(31, 'Lâm Đồng'),
(32, 'Lạng Sơn'),
(33, 'Lào Cai'),
(34, 'Long An'),
(35, 'Nam Định'),
(36, 'Nghệ An'),
(37, 'Ninh Bình'),
(38, 'Ninh Thuận'),
(39, 'Phú Thọ'),
(40, 'Quảng Bình'),
(41, 'Quảng Nam'),
(42, 'Quảng Ngãi'),
(43, 'Quảng Ninh'),
(44, 'Quảng Trị'),
(45, 'Sóc Trăng'),
(46, 'Sơn La'),
(47, 'Tây Ninh'),
(48, 'Thái Bình'),
(49, 'Thái Nguyên'),
(50, 'Thanh Hóa'),
(51, 'Thừa Thiên Huế'),
(52, 'Tiền Giang'),
(53, 'Trà Vinh'),
(54, 'Tuyên Quang'),
(55, 'Vĩnh Long'),
(56, 'Vĩnh Phúc'),
(57, 'Yên Bái'),
(58, 'Phú Yên'),
(59, 'Cần Thơ'),
(60, 'Đà Nẵng'),
(61, 'Hải Phòng'),
(62, 'Hà Nội'),
(63, 'TP HCM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachsan`
--

CREATE TABLE `khachsan` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `diadiem` int(11) NOT NULL,
  `sdt` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gioithieu` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachsan`
--

INSERT INTO `khachsan` (`id`, `ten`, `diachi`, `diadiem`, `sdt`, `hinhanh`, `gioithieu`) VALUES
(9, 'Khách sạn New World Saigon', '76 Lê Lai - Quận 1', 63, '084838228888', '/hotel/images/hotel/key_overview_1.jpg', '<h4>NEWWORLDSAIGONHOTEL</h4>\r\n\r\n<p>Every one of us at the luxury&nbsp;<a href=\"https://saigon.newworldhotels.com/en/\">New World Saigon Hotel</a>&nbsp;in Vietnam wants to make your stay with us a pleasure, whether you&rsquo;re here on business or leisure &hellip; or even to get married.</p>\r\n\r\n<p>Great food is an important part of any stay and we have three excellent restaurants serving Chinese, Japanese and international cuisines.<br />\r\nWe make work a little easier with complimentary Internet service in your room and throughout the hotel, flexible venues for meetings and conferences of all sizes, and a business center that can handle all your needs, from office supplies and photocopying to secretarial and translation support.</p>\r\n\r\n<p>We make holidays more enjoyable with a fitness center equipped with full range of professional Technogym equipment, a hydrotherapy area with massage showers, steam bath, sauna and Jacuzzi, an outdoor swimming pool, a tennis court, and spa and massage services.<br />\r\nSightseeing and shopping are made easier with our private limousine service and a complimentary city shuttle service that makes it easy to move around Ho Chi Minh City.</p>\r\n\r\n<p>And we love weddings. If you&rsquo;re getting married, we can make everything you dream of come true.</p>\r\n'),
(11, 'Ruby', '81 Thùy Vân', 2, '0123456789', '/hotel/images/hotel/Capture.PNG', '<p>Nằm ở vị tr&iacute; thuận lợi trong Phường 2, Ruby Hotel l&agrave; một điểm l&yacute; tưởng để khởi h&agrave;nh chuyến du ngoạn của bạn ở Vũng T&agrave;u. Kh&aacute;ch sạn nằm c&aacute;ch trung t&acirc;m th&agrave;nh phố 0.5 Km v&agrave; dễ d&agrave;ng tiếp cận c&aacute;c địa điểm kh&aacute;c trong th&agrave;nh phố . Như một thi&ecirc;n đường nghỉ dưỡng v&agrave; thư gi&atilde;n, kh&aacute;ch sạn mang lại sự đổi mới ho&agrave;n to&agrave;n so với những điểm th&uacute; vị trong th&agrave;nh phố như Lăng c&aacute; &ocirc;ng, Tram Y Te Phuong 2, Tượng Ch&uacute;a Gi&ecirc;su.<br />\r\n<br />\r\nH&atilde;y tận hưởng hết v&ocirc; số dịch vụ v&agrave; tiện nghi kh&ocirc;ng g&igrave; s&aacute;nh được ở kh&aacute;ch sạn Vũng T&agrave;u n&agrave;y. Khi nghỉ ngơi trong kh&aacute;ch sạn tuyệt vời n&agrave;y, kh&aacute;ch c&oacute; thể tận hưởng miễn ph&iacute; wifi tất cả c&aacute;c ph&ograve;ng, quầy lễ t&acirc;n 24 giờ, wifi c&ocirc;ng cộng, b&atilde;i đậu xe, phục vụ ph&ograve;ng.<br />\r\n<br />\r\nKh&aacute;ch sạn rất ch&uacute; &yacute; đến việc trang bị đầy đủ tiện nghi để đạt được sự thoải m&aacute;i v&agrave; tiện lợi nhất. Trong một số ph&ograve;ng, kh&aacute;ch h&agrave;ng c&oacute; thể t&igrave;m thấy tivi m&agrave;n h&igrave;nh phẳng, internet kh&ocirc;ng d&acirc;y, internet kh&ocirc;ng d&acirc;y (miễn ph&iacute;), ph&ograve;ng kh&ocirc;ng h&uacute;t thuốc, m&aacute;y điều h&ograve;a. B&ecirc;n cạnh đ&oacute;, kh&aacute;ch sạn c&ograve;n gợi &yacute; cho bạn những hoạt động vui chơi giải tr&iacute; bảo đảm bạn lu&ocirc;n thấy hứng th&uacute; trong suốt k&igrave; nghỉ. Khi bạn t&igrave;m kiếm chỗ tạm tr&uacute; thoải m&aacute;i v&agrave; tiện nghi ở Vũng T&agrave;u, h&atilde;y bắt đầu cuộc h&agrave;nh tr&igrave;nh đến Ruby Hotel.</p>\r\n'),
(12, 'Golden Legend Diamond Hotel', 'Số 18, Chân Cầm, Hoàn Kiếm, Hà Nội', 62, '0988787878', '/hotel/images/hotel/53690552.jpeg', '<div id=\"summary\">\r\n<p>Kh&aacute;ch sạn Golden Legend Diamond Hotel ở th&agrave;nh phố H&agrave; Nội n&agrave;y tọa lạc tại trung t&acirc;m Khu Phố Cổ, c&aacute;ch Hồ Ho&agrave;n Kiếm, Nh&agrave; h&aacute;t M&uacute;a rối Nước, Đền Ngọc Sơn v&agrave; Chợ Đồng Xu&acirc;n chỉ 5 ph&uacute;t đi bộ.</p>\r\n\r\n<p>Tất cả c&aacute;c ph&ograve;ng nghỉ tại đ&acirc;y đều được trang tr&iacute; với m&agrave;u đen v&agrave; trắng hiện đại, đồng thời c&oacute; c&aacute;c bức ảnh của phố cổ H&agrave; Nội. Mỗi ph&ograve;ng c&ograve;n được trang bị TV m&agrave;n h&igrave;nh phẳng với c&aacute;c k&ecirc;nh truyền h&igrave;nh c&aacute;p, Wi-Fi miễn ph&iacute;, minibar, k&eacute;t an to&agrave;n v&agrave; ph&ograve;ng tắm ri&ecirc;ng. Một số ph&ograve;ng c&oacute; ban c&ocirc;ng ri&ecirc;ng nh&igrave;n ra th&agrave;nh phố.</p>\r\n\r\n<p>Bữa s&aacute;ng h&agrave;ng ng&agrave;y được phục vụ theo kiểu tự chọn với một loạt c&aacute;c m&oacute;n Việt Nam v&agrave; phương T&acirc;y. Nh&acirc;n vi&ecirc;n lễ t&acirc;n 24 giờ c&oacute; thể hỗ trợ qu&yacute; kh&aacute;ch với dịch vụ đưa đ&oacute;n s&acirc;n bay, cho thu&ecirc; xe m&aacute;y/xe đạp, chỗ để h&agrave;nh l&yacute;, dịch vụ giặt l&agrave; cũng như sắp xếp c&aacute;c tour du lịch.</p>\r\n\r\n<p>Kh&aacute;ch sạn nằm trong b&aacute;n k&iacute;nh 1 km từ Văn Miếu, 2 km từ Lăng Chủ tịch Hồ Ch&iacute; Minh v&agrave; 35 ph&uacute;t l&aacute;i xe từ S&acirc;n bay Nội B&agrave;i.</p>\r\n\r\n<p>Quận Ho&agrave;n Kiếm l&agrave; lựa chọn tuyệt vời cho du kh&aacute;ch th&iacute;ch mua sắm, ẩm thực đường phố v&agrave; kh&ocirc;ng gian.</p>\r\n</div>\r\n\r\n<p>Đ&acirc;y l&agrave; khu vực ở Hà N&ocirc;̣i m&agrave; kh&aacute;ch y&ecirc;u th&iacute;ch, theo c&aacute;c đ&aacute;nh gi&aacute; độc lập.</p>\r\n\r\n<p>Chỗ nghỉ n&agrave;y l&agrave; một trong những vị tr&iacute; được đ&aacute;nh gi&aacute; tốt nhất ở Hà N&ocirc;̣i! Kh&aacute;ch th&iacute;ch nơi đ&acirc;y hơn so với những chỗ nghỉ kh&aacute;c trong khu vực.</p>\r\n'),
(13, 'Hanoi Daewoo Hotel', '360 Kim Mã, quận Ba Đình, Hà Nội', 62, '0192883773', '/hotel/images/hotel/86327330.jpeg', '<p>Với tầm nh&igrave;n tuyệt đẹp ra quang cảnh th&agrave;nh phố H&agrave; Nội cũng như Hồ Thủ Lệ, Daewoo Hotel c&oacute; hồ bơi ngo&agrave;i trời, b&atilde;i tập đ&aacute;nh g&ocirc;n trong nh&agrave; v&agrave; spa. C&aacute;c ph&ograve;ng của kh&aacute;ch sạn đều c&oacute; truy cập Internet miễn ph&iacute; v&agrave; chỗ đỗ xe ri&ecirc;ng cũng được cung cấp miễn ph&iacute;.</p>\r\n\r\n<p>Daewoo Hotel nằm c&aacute;ch trung t&acirc;m th&agrave;nh phố 10 ph&uacute;t l&aacute;i xe. Dịch vụ đưa đ&oacute;n miễn ph&iacute; được cung cấp đến c&aacute;c điểm tham quan gần đ&oacute; như Bảo t&agrave;ng Mỹ thuật, Lăng Chủ tịch Hồ Ch&iacute; Minh v&agrave; Phố Mua sắm H&agrave;ng Gai.</p>\r\n\r\n<p>C&aacute;c ph&ograve;ng m&aacute;y lạnh tại đ&acirc;y được trang bị minibar đầy ắp đồ, truyền h&igrave;nh c&aacute;p m&agrave;n h&igrave;nh phẳng, k&eacute;t an to&agrave;n c&aacute; nh&acirc;n v&agrave; tiện nghi pha tr&agrave;/c&agrave; ph&ecirc;. Trong ph&ograve;ng tắm ri&ecirc;ng có m&aacute;y sấy t&oacute;c v&agrave; &aacute;o cho&agrave;ng tắm.</p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch c&oacute; thể luyện tập trong ph&ograve;ng tập thể dục hoặc tận hưởng buổi tắm spa hay đến ph&ograve;ng x&ocirc;ng hơi kh&ocirc; thư gi&atilde;n. Dịch vụ cho thu&ecirc; xe hơi v&agrave; thu đổi ngoại tệ c&oacute; thể được thu xếp tại b&agrave;n b&aacute;n tour. Tại đ&acirc;y có s&acirc;n chơi cho trẻ em.</p>\r\n\r\n<p>Cafe Promenade phục vụ tiệc tự chọn quốc tế mỗi ng&agrave;y. Ngo&agrave;i ra c&ograve;n c&oacute; c&aacute;c lựa chọn ăn uống kh&aacute;c như nh&agrave; h&agrave;ng Nhật Bản Edo v&agrave; nh&agrave; h&agrave;ng Trung Quốc Silk Road. Du kh&aacute;ch c&oacute; thể thưởng thức đồ uống tại Palm Court Lobby Lounge v&agrave; Lake View Rooftop Lounge.</p>\r\n\r\n<p>Quận Ba Đ&igrave;nh l&agrave; lựa chọn tuyệt vời cho du kh&aacute;ch th&iacute;ch lịch sử, kh&aacute;m ph&aacute; Phố Cổ v&agrave; người d&acirc;n th&acirc;n thiện.</p>\r\n'),
(14, ' Somerset Hoa Binh Hanoi ', '106 Hoàng Quốc Việt, quận Tây Hồ, Hà Nội', 62, '0989898989', '/hotel/images/hotel/49735444.jpeg', '<p>Somerset Hoa Binh cung cấp c&aacute;c căn hộ với nh&agrave; bếp đầy đủ vật dụng v&agrave; TV truyền h&igrave;nh c&aacute;p m&agrave;n h&igrave;nh phẳng. Spa tại đ&acirc;y c&oacute; dịch vụ m&aacute;t-xa v&agrave; bể sục. C&aacute;c căn hộ đi k&egrave;m trung t&acirc;m thể dục v&agrave; nh&agrave; h&agrave;ng.</p>\r\n\r\n<p>Somerset Hoa Binh Hanoi c&aacute;ch Khu Phố Cổ H&agrave; Nội 15 ph&uacute;t l&aacute;i xe. C&aacute;c trung t&acirc;m th&agrave;nh phố ch&iacute;nh l&agrave; quận Ho&agrave;n Kiếm v&agrave; Ba Đ&igrave;nh c&aacute;ch đ&oacute; 10 ph&uacute;t l&aacute;i xe.</p>\r\n\r\n<p>C&aacute;c căn hộ tại đ&acirc;y được trang bị đầy đủ tiện nghi với khu vực tiếp kh&aacute;ch v&agrave; sinh hoạt. Ngo&agrave;i ra c&ograve;n đi k&egrave;m đầu đĩa DVD v&agrave; hệ thống &acirc;m thanh. M&aacute;y giặt cũng được cung cấp trong mỗi căn hộ.</p>\r\n\r\n<p>Kh&aacute;ch c&oacute; thể đến thư viện đĩa DVD để giải tr&iacute;. Chỗ nghỉ n&agrave;y c&ograve;n c&oacute; ph&ograve;ng vui chơi trong nh&agrave; d&agrave;nh cho trẻ em. C&aacute;c dịch vụ thu đổi ngoại tệ v&agrave; cho thu&ecirc; xe hơi cũng được cung cấp để tạo thuận tiện cho du kh&aacute;ch. Tất cả c&aacute;c kh&aacute;ch lưu tr&uacute; đều được sử dụng xe đưa đ&oacute;n miễn ph&iacute; đến trung t&acirc;m th&agrave;nh phố.</p>\r\n\r\n<p>Ẩm thực Nhật Bản được phục vụ tại Nh&agrave; h&agrave;ng Takara. Ngo&agrave;i ra, dịch vụ ph&ograve;ng được cung cấp theo y&ecirc;u cầu.</p>\r\n\r\n<p>Quận T&acirc;y Hồ l&agrave; lựa chọn tuyệt vời cho du kh&aacute;ch th&iacute;ch lịch sử, ngắm cảnh v&agrave; văn h&oacute;a.</p>\r\n'),
(15, 'Crowne Plaza West Hanoi', '30 Lê Đức Thọ, Cầu Giấy, Hà Nội', 62, '0979797977', '/hotel/images/hotel/64066206.jpeg', '<p>Tọa lạc tại khu thương mại ri&ecirc;ng ở ph&iacute;a T&acirc;y th&agrave;nh phố H&agrave; Nội, Crowne Plaza Hanoi c&aacute;ch Bảo t&agrave;ng Quốc gia 5 ph&uacute;t l&aacute;i xe. Chỗ nghỉ c&oacute; hồ bơi ngo&agrave;i trời, spa sang trọng, trung t&acirc;m thể dục cũng như nh&agrave; h&agrave;ng v&agrave; sảnh kh&aacute;ch phục vụ cocktail. Du kh&aacute;ch được quyền đỗ xe miễn ph&iacute;.</p>\r\n\r\n<p>Crowne Plaza West Hanoi nằm c&aacute;ch nhiều văn ph&ograve;ng c&ocirc;ng ty, Bảo t&agrave;ng Quốc gia v&agrave; Trung t&acirc;m Hội nghị Quốc gia chỉ 5 ph&uacute;t l&aacute;i xe. Kh&aacute;ch sạn c&aacute;ch S&acirc;n bay Quốc tế Nội B&agrave;i khoảng 29 km, tương đương tầm 30 ph&uacute;t l&aacute;i xe.</p>\r\n\r\n<p>Mỗi ph&ograve;ng nghỉ tại đ&acirc;y đều c&oacute; cửa sổ k&iacute;nh suốt từ trần tới s&agrave;n v&agrave; kiểu trang tr&iacute; hiện đại. Trong ph&ograve;ng được trang bị ổ cắm cho iPod v&agrave; TV truyền h&igrave;nh c&aacute;p m&agrave;n h&igrave;nh phẳng để kh&aacute;ch giải tr&iacute;. Ngo&agrave;i ra c&ograve;n đi k&egrave;m tiện nghi pha tr&agrave;/c&agrave; ph&ecirc;. Ph&ograve;ng tắm ri&ecirc;ng rộng r&atilde;i v&agrave; tho&aacute;ng m&aacute;t, c&oacute; v&ograve;i sen ri&ecirc;ng biệt c&ugrave;ng bồn tắm rộng r&atilde;i.</p>\r\n\r\n<p>Kh&aacute;ch sạn cung cấp dịch vụ mát-xa. Bàn đặt tour tại đ&acirc;y có th&ecirc;̉ h&ocirc;̃ trợ qu&yacute; khách sắp xếp vi&ecirc;̣c đi tham quan v&agrave; thu đổi ngoại tệ. Dịch vụ ăn uống tại ph&ograve;ng cũng được cung cấp.</p>\r\n\r\n<p>Du kh&aacute;ch c&oacute; thể thưởng thức ẩm thực địa phương và qu&ocirc;́c t&ecirc;́ tại nhà hàng trong khách sạn, còn đ&ocirc;̀ u&ocirc;́ng có tại qu&acirc;̀y bar.</p>\r\n'),
(16, 'Somerset Grand Hanoi', '49 Hai Bà Trưng, Hoàn Kiếm, Hà Nội', 62, '0889898989', '/hotel/images/hotel/42964855.jpeg', '<p>Đứng sừng sững tại Khu Phố Cổ duy&ecirc;n d&aacute;ng lấy cảm hứng từ Ph&aacute;p, Somerset Grand Hanoi cung cấp c&aacute;c dinh thự tự phục vụ với quyền sử dụng hồ bơi ngo&agrave;i trời v&agrave; tiện nghi tập thể dục. Nơi nghỉ n&agrave;y c&oacute; sảnh mua sắm v&agrave; nh&agrave; h&agrave;ng với bữa s&aacute;ng tự chọn.</p>\r\n\r\n<p><span style=\"color:#2980b9\">Somerset Grand Hanoi</span> c&aacute;ch Hồ Ho&agrave;n Kiếm một qu&atilde;ng tản bộ. Từ nơi nghỉ n&agrave;y, qu&yacute; kh&aacute;ch chỉ cần đi bộ 1 ph&uacute;t l&agrave; đến bến xe bu&yacute;t v&agrave; 10 ph&uacute;t l&agrave; tới Ga H&agrave; Nội. S&acirc;n bay Quốc tế Nội B&agrave;i c&aacute;ch đ&oacute; 22 km.</p>\r\n\r\n<p>Với tầm nh&igrave;n to&agrave;n cảnh th&agrave;nh phố, c&aacute;c chỗ ở rộng r&atilde;i tại đ&acirc;y c&oacute; ph&ograve;ng sinh hoạt v&agrave; ăn uống c&ugrave;ng nh&agrave; bếp được trang bị đầy đủ tiện nghi. Ngo&agrave;i ra c&ograve;n đi k&egrave;m truyền h&igrave;nh c&aacute;p m&agrave;n h&igrave;nh phẳng, hệ thống giải tr&iacute; gia đ&igrave;nh v&agrave; bồn tắm. C&aacute;c căn hộ được trang bị đầy đủ tiện nghi giặt l&agrave; v&agrave; đầu đĩa DVD.</p>\r\n\r\n<p>Tại đ&acirc;y c&oacute; c&aacute;c lựa chọn giải tr&iacute; như s&acirc;n tennis, bể sục v&agrave; ph&ograve;ng x&ocirc;ng hơi kh&ocirc;. Kh&aacute;ch sạn cũng c&oacute; trung t&acirc;m dịch vụ doanh nh&acirc;n v&agrave; c&oacute; thể cung cấp dịch vụ giữ trẻ cũng như giặt l&agrave;.</p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch c&oacute; thể thưởng thức c&aacute;c bữa ăn Việt Nam v&agrave; quốc tế thịnh soạn tại nh&agrave; h&agrave;ng Jaspa Restaurant hay trong sự thoải m&aacute;i ngay tại ph&ograve;ng m&igrave;nh.</p>\r\n\r\n<p>Quận Ho&agrave;n Kiếm l&agrave; lựa chọn tuyệt vời cho du kh&aacute;ch th&iacute;ch mua sắm, ẩm thực đường phố v&agrave; kh&ocirc;ng gian.</p>\r\n'),
(17, 'Sunland Hotel', '302 Vỗ Văn Kiệt , Quân 1, TP.Hồ Chí Minh', 63, '0968686868', '/hotel/images/hotel/36427442.jpeg', '<p>Tọa lạc tại Quận 1 của Th&agrave;nh phố Hồ Ch&iacute; Minh, Sunland Hotel nằm c&aacute;ch S&ocirc;ng S&agrave;i G&ograve;n chỉ v&agrave;i ph&uacute;t đi bộ. C&aacute;ch Khu phố T&acirc;y Ba L&ocirc; v&agrave; Chợ Bến Th&agrave;nh 5 ph&uacute;t đi xe, kh&aacute;ch sạn n&agrave;y c&oacute; hồ bơi ngo&agrave;i trời, nh&agrave; h&agrave;ng v&agrave; qu&aacute;n bar tại chỗ. Wi-Fi được cung cấp miễn ph&iacute; trong to&agrave;n bộ khu&ocirc;n vi&ecirc;n kh&aacute;ch sạn.</p>\r\n\r\n<p>Kh&aacute;ch sạn chỉ c&aacute;ch Chợ Nga v&agrave; Ng&acirc;n h&agrave;ng ACB một đoạn đi bộ ngắn. Du kh&aacute;ch chỉ mất 7 ph&uacute;t đi bộ l&agrave; đến Dinh Thống Nhất, Nh&agrave; h&aacute;t Lớn S&agrave;i G&ograve;n cũng như Nh&agrave; thờ Đức B&agrave; S&agrave;i G&ograve;n. Du kh&aacute;ch l&aacute;i xe 30 ph&uacute;t l&agrave; đến S&acirc;n bay Quốc Tế T&acirc;n Sơn Nhất.</p>\r\n\r\n<p>Tất cả ph&ograve;ng nghỉ tại đ&acirc;y được trang bị m&aacute;y lạnh, TV truyền h&igrave;nh c&aacute;p m&agrave;n h&igrave;nh phẳng v&agrave; minibar. Mỗi ph&ograve;ng đều c&oacute; ph&ograve;ng tắm được trang tr&iacute; theo phong c&aacute;ch độc đ&aacute;o với tiện nghi v&ograve;i sen v&agrave; đồ vệ sinh c&aacute; nh&acirc;n. Dịch vụ ph&ograve;ng cũng được cung cấp.</p>\r\n\r\n<p>Kh&aacute;ch c&oacute; thể đến lễ t&acirc;n 24 giờ để được hỗ trợ c&aacute;c dịch vụ để h&agrave;nh l&yacute;, giặt ủi v&agrave; thu đổi ngoại tệ. K&eacute;t an to&agrave;n cũng được cung cấp cho kh&aacute;ch.</p>\r\n\r\n<p>Quận 1 l&agrave; lựa chọn tuyệt vời cho du kh&aacute;ch th&iacute;ch hoạt động giải tr&iacute; về đ&ecirc;m, mua sắm v&agrave; chợ.</p>\r\n'),
(18, 'Rex Hotel', '141 Nguyễn Huệ, Quận 1, TP.Hồ Chí Minh', 63, '0912121212', '/hotel/images/hotel/52575323.jpeg', '<div id=\"summary\">\r\n<p><span style=\"color:#3498db\">Rex Hotel S&agrave;i G&ograve;n</span> nằm ở khu trung t&acirc;m Th&agrave;nh phố Hồ Ch&iacute; Minh, cách Chợ Bến Th&agrave;nh 1 km. Kh&aacute;ch sạn có s&ograve;ng bạc và nh&agrave; h&agrave;ng tr&ecirc;n tầng m&aacute;i. Ph&ograve;ng tập thể dục v&agrave; spa đủ dịch vụ cũng có tại đ&acirc;y.</p>\r\n\r\n<p>Kh&aacute;ch sạn Rex Hotel cách Nhà hát Múa r&ocirc;́i Nước R&ocirc;̀ng Vàng và Nhà hát lớn Thành ph&ocirc;́ 10 phút đi b&ocirc;̣. Nh&agrave; thờ Đức B&agrave; c&aacute;ch kh&aacute;ch sạn 500 m.</p>\r\n\r\n<p>C&aacute;c ph&ograve;ng nghỉ tại đ&acirc;y c&oacute; phong c&aacute;ch trang tr&iacute; hiện đại kiểu Việt Nam v&agrave; đi k&egrave;m truyền h&igrave;nh c&aacute;p, tiện nghi pha tr&agrave;/c&agrave; ph&ecirc; cũng như truy cập Wi-Fi miễn ph&iacute;.</p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch có th&ecirc;̉ thư giãn bằng cách bơi trong h&ocirc;̀ bơi hoặc chơi tr&ograve; tennis. Các lớp học yoga, thể dục nhịp điệu v&agrave; khi&ecirc;u vũ cũng được tổ chức tại đ&acirc;y. Ngo&agrave;i ra, kh&aacute;ch sạn c&ograve;n c&oacute; bồn tắm nước n&oacute;ng.</p>\r\n\r\n<p>Nh&agrave; h&agrave;ng Rooftop Garden phục vụ ẩm thực Trung Hoa v&agrave; Ph&aacute;p.&quot;</p>\r\n\r\n<p>Quận 1 l&agrave; lựa chọn tuyệt vời cho du kh&aacute;ch th&iacute;ch hoạt động giải tr&iacute; về đ&ecirc;m, mua sắm v&agrave; chợ.</p>\r\n</div>\r\n\r\n<p>Đ&acirc;y l&agrave; khu vực ở TP. H&ocirc;̀ Chí Minh m&agrave; kh&aacute;ch y&ecirc;u th&iacute;ch, theo c&aacute;c đ&aacute;nh gi&aacute; độc lập.</p>\r\n'),
(19, 'Sum House 1906 ', '9 Nguyễn Khoái, Quận 4, TP.Hồ Chí Minh', 63, '094343434', '/hotel/images/hotel/85565663.jpeg', '<p>Nằm c&aacute;ch Bảo t&agrave;ng Mỹ thuật Th&agrave;nh phố Hồ Ch&iacute; Minh 1,7 km, căn hộ n&agrave;y c&oacute; ban c&ocirc;ng, khu vườn, Wi-Fi miễn ph&iacute; v&agrave; chỗ đỗ xe miễn ph&iacute; trong khu&ocirc;n vi&ecirc;n.</p>\r\n\r\n<p>Căn hộ c&oacute; nh&agrave; bếp với l&ograve; vi s&oacute;ng v&agrave; tủ lạnh. Truyền h&igrave;nh c&aacute;p cũng được trang bị cho kh&aacute;ch. C&aacute;c tiện nghi kh&aacute;c tại Sum House 1906 gồm tiện nghi BBQ.</p>\r\n\r\n<p>Chợ Bến Th&agrave;nh v&agrave; Bến Nh&agrave; Rồng đều nằm c&aacute;ch Sum House 1906 khoảng 1,9 km. S&acirc;n bay gần nhất l&agrave; S&acirc;n bay Quốc tế T&acirc;n Sơn Nhất, nằm trong khoảng c&aacute;ch 8 km từ Sum House 1906.</p>\r\n\r\n<p>Quận 4 l&agrave; lựa chọn tuyệt vời cho du kh&aacute;ch th&iacute;ch nh&agrave; h&agrave;ng, thực phẩm địa phương v&agrave; đi dạo trong th&agrave;nh phố.</p>\r\n'),
(20, 'Hoa Trang An', 'Quận Tân Bình, TP.Hồ Chí Minh', 63, '094545454', '/hotel/images/hotel/90517224.jpeg', '<div id=\"summary\">\r\n<p>Hoa Trang An cung cấp c&aacute;c ph&ograve;ng nghỉ tại Th&agrave;nh phố Hồ Ch&iacute; Minh.</p>\r\n\r\n<p>Tất cả ph&ograve;ng tại đ&acirc;y được trang bị TV m&agrave;n h&igrave;nh phẳng v&agrave; ph&ograve;ng tắm ri&ecirc;ng với d&eacute;p c&ugrave;ng đồ vệ sinh c&aacute; nh&acirc;n miễn ph&iacute;. Hoa Trang An cung cấp Wi-Fi miễn ph&iacute;.</p>\r\n\r\n<p>Chỗ nghỉ cũng c&oacute; cửa h&agrave;ng qu&agrave; tặng.</p>\r\n\r\n<p>Hoa Trang An c&aacute;ch Trung t&acirc;m Hội nghị v&agrave; Triển l&atilde;m Quốc tế Hồ Ch&iacute; Minh (HIECC) 1,1 km, Ch&ugrave;a Gi&aacute;c L&acirc;m 2,5 km v&agrave; s&acirc;n bay gần nhất l&agrave; S&acirc;n bay Quốc tế T&acirc;n Sơn Nhất 2 km.</p>\r\n\r\n<p>Quận T&acirc;n B&igrave;nh l&agrave; lựa chọn tuyệt vời cho du kh&aacute;ch th&iacute;ch kh&ocirc;ng gian, ẩm thực đường phố v&agrave; tham quan th&agrave;nh phố.</p>\r\n</div>\r\n\r\n<p>Chỗ nghỉ n&agrave;y cũng được đ&aacute;nh gi&aacute; l&agrave; đ&aacute;ng gi&aacute; tiền nhất ở TP. H&ocirc;̀ Chí Minh! Kh&aacute;ch sẽ tiết kiệm được nhiều hơn so với nghỉ tại những chỗ nghỉ kh&aacute;c ở th&agrave;nh phố n&agrave;y.</p>\r\n'),
(21, 'Diamond Sea Hotel', '232 Võ Nguyên Giáp, Đà Nẵng', 60, '095656565', '/hotel/images/hotel/92074963.jpeg', '<p>Nằm cạnh B&atilde;i biển Mỹ Kh&ecirc; ở th&agrave;nh phố Đ&agrave; Nẵng, Diamond Sea Hotel cung cấp c&aacute;c chỗ ở hiện đại v&agrave; thoải m&aacute;i với Wi-Fi miễn ph&iacute; to&agrave;n khu&ocirc;n vi&ecirc;n. Kh&aacute;ch sạn c&oacute; hồ bơi ngo&agrave;i trời tr&ecirc;n tầng m&aacute;i, trung t&acirc;m thể dục v&agrave; chỗ đỗ xe miễn ph&iacute; tại chỗ.</p>\r\n\r\n<p>Kh&aacute;ch sạn nằm dọc b&atilde;i biển, c&aacute;ch Cầu S&ocirc;ng H&agrave;n 2 km v&agrave; c&aacute;ch Bảo t&agrave;ng Chăm 2,4 km trong khi S&acirc;n bay Đ&agrave; Nẵng c&aacute;ch đ&oacute; trong v&ograve;ng 15 ph&uacute;t l&aacute;i xe.</p>\r\n\r\n<p>Với tầm nh&igrave;n ra biển, c&aacute;c ph&ograve;ng m&aacute;y lạnh tại đ&acirc;y được trang bị tủ quần &aacute;o, gi&aacute; treo quần &aacute;o, truyền h&igrave;nh c&aacute;p m&agrave;n h&igrave;nh phẳng v&agrave; khu vực tiếp kh&aacute;ch. Ngo&agrave;i ra c&ograve;n c&oacute; minibar v&agrave; ấm đun nước điện. Ph&ograve;ng tắm ri&ecirc;ng đi k&egrave;m tiện nghi v&ograve;i sen, d&eacute;p v&agrave; m&aacute;y sấy t&oacute;c.</p>\r\n\r\n<p>Tại Diamond Sea Hotel, qu&yacute; kh&aacute;ch c&oacute; thể tận hưởng liệu ph&aacute;p m&aacute;t-xa thư gi&atilde;n ở spa hoặc sử dụng tiện nghi x&ocirc;ng hơi kh&ocirc;. Nh&acirc;n vi&ecirc;n th&acirc;n thiện tại quầy lễ t&acirc;n 24 giờ c&oacute; thể hỗ trợ qu&yacute; kh&aacute;ch với c&aacute;c dịch vụ cho thu&ecirc; xe đạp/xe hơi, giặt l&agrave; v&agrave; sắp xếp tour du lịch.</p>\r\n'),
(22, 'A La Carte Da Nang Beach ', '200 Võ Nguyên Giáp, Sơn Trà, Đà Nẵng', 60, '023232322', '/hotel/images/hotel/35160862.jpeg', '<div id=\"summary\">\r\n<p>Chỗ nghỉ n&agrave;y c&aacute;ch b&atilde;i biển 1 ph&uacute;t đi bộ. Alacarte Danang Beach nằm trong b&aacute;n k&iacute;nh chỉ 50 m từ B&atilde;i biển C&ocirc;ng cộng Phạm Văn Đồng. Nơi đ&acirc;y c&oacute; hồ bơi ngo&agrave;i trời, trung t&acirc;m thể dục v&agrave; spa. Wi-Fi được cung cấp miễn ph&iacute;.</p>\r\n\r\n<p>C&aacute;c studio v&agrave; căn hộ đi k&egrave;m khu vực tiếp kh&aacute;ch v&agrave; ăn uống, truyền h&igrave;nh c&aacute;p m&agrave;n h&igrave;nh phẳng, ấm đun nước điện v&agrave; ph&ograve;ng tắm ri&ecirc;ng với đ&ocirc;̀ v&ecirc;̣ sinh cá nh&acirc;n c&ugrave;ng m&aacute;y sấy t&oacute;c. Một số c&oacute; tầm nh&igrave;n ra biển.</p>\r\n\r\n<p>Cả dịch vụ ăn uống theo kiểu gọi m&oacute;n lẫn tự chọn đều được phục vụ tại nh&agrave; h&agrave;ng trong khu&ocirc;n vi&ecirc;n, trong khi đồ uống giải kh&aacute;t được cung cấp tại quầy bar. Dịch vụ ăn uống tại ph&ograve;ng cũng được cung cấp.</p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch c&oacute; thể tận hưởng c&aacute;c hoạt động như lặn biển, lặn với &ocirc;́ng thở, đi xe đạp hoặc c&acirc;u c&aacute;. C&aacute;c tiện nghi kh&aacute;c tại Alacarte bao gồm ph&ograve;ng tr&ograve; chơi, s&acirc;n chơi trẻ em, thư viện v&agrave; c&acirc;u lạc bộ trẻ em.</p>\r\n\r\n<p>Nơi nghỉ n&agrave;y c&aacute;ch B&atilde;i Biển Mỹ Kh&ecirc; 900 m v&agrave; Chợ H&agrave;n 3 km. Ngũ H&agrave;nh Sơn v&agrave; B&atilde;i biển Non Nước đều nằm trong khoảng c&aacute;ch 8 km từ nơi nghỉ n&agrave;y. S&acirc;n bay Quốc tế Đ&agrave; Nẵng c&aacute;ch đ&oacute; 6 km.</p>\r\n</div>\r\n\r\n<p>Chỗ nghỉ n&agrave;y l&agrave; một trong những vị tr&iacute; được đ&aacute;nh gi&aacute; tốt nhất ở Đà Nẵng! Kh&aacute;ch th&iacute;ch nơi đ&acirc;y hơn so với những chỗ nghỉ kh&aacute;c trong khu vực.</p>\r\n\r\n<p>C&aacute;c cặp đ&ocirc;i đặc biệt th&iacute;ch địa điểm n&agrave;y &mdash; họ cho điểm 9 cho kỳ nghỉ d&agrave;nh cho 2 người.</p>\r\n'),
(23, 'Vanda Hotel', '3 Nguyễn Văn Linh, Đà Nẵng', 60, '098888989', '/hotel/images/hotel/51872541.jpeg', '<div id=\"summary\">\r\n<p>Tọa lạc tại trung t&acirc;m th&agrave;nh phố Đ&agrave; Nẵng gần Cầu Rồng, Vanda Hotel hiện đại n&agrave;y c&oacute; hồ bơi trong nh&agrave; v&agrave; nh&agrave; h&agrave;ng. Trong khu&ocirc;n vi&ecirc;n kh&aacute;ch sạn c&ograve;n c&oacute; trung t&acirc;m thể dục v&agrave; spa m&aacute;t-xa. Wi-Fi được cung cấp miễn ph&iacute;.</p>\r\n\r\n<p>Mỗi ph&ograve;ng v&agrave; suite tại kh&aacute;ch sạn n&agrave;y đều c&oacute; truyền h&igrave;nh c&aacute;p m&agrave;n h&igrave;nh phẳng cũng như l&ograve; sưởi. Ngo&agrave;i ra c&ograve;n đi k&egrave;m b&agrave;n l&agrave;m việc với k&eacute;t an to&agrave;n v&agrave; minibar. Ph&ograve;ng tắm l&aacute;t gạch rộng r&atilde;i được trang bị bồn rửa vệ sinh (bidet), &aacute;o cho&agrave;ng tắm, m&aacute;y sấy t&oacute;c v&agrave; d&eacute;p. Qu&yacute; kh&aacute;ch c&oacute; thể thưởng ngoạn tầm nh&igrave;n ra quang cảnh xung quanh.</p>\r\n\r\n<p>Lễ t&acirc;n 24 giờ c&oacute; thể thu xếp dịch vụ đưa đ&oacute;n s&acirc;n bay v&agrave; đỗ xe cho kh&aacute;ch. Nơi đ&acirc;y c&oacute; ti&ecirc;̣n nghi tổ chức h&ocirc;̣i họp. Dịch vụ giặt l&agrave; cũng được cung cấp.</p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch chỉ cần đi 5 ph&uacute;t l&agrave; tới Chợ H&agrave;n. B&atilde;i biển Mỹ Kh&ecirc; v&agrave; S&acirc;n bay Đ&agrave; Nẵng c&aacute;ch đ&oacute; lần lượt 3 km v&agrave; 2 km.</p>\r\n</div>\r\n\r\n<p>Chỗ nghỉ n&agrave;y l&agrave; một trong những vị tr&iacute; được đ&aacute;nh gi&aacute; tốt nhất ở Đà Nẵng! Kh&aacute;ch th&iacute;ch nơi đ&acirc;y hơn so với những chỗ nghỉ kh&aacute;c trong khu vực.</p>\r\n\r\n<p>C&aacute;c cặp đ&ocirc;i đặc biệt th&iacute;ch địa điểm n&agrave;y &mdash; họ cho điểm 9 cho kỳ nghỉ d&agrave;nh cho 2 người.</p>\r\n'),
(24, 'Tulip Hotel ', '26 Ba Tháng Hai, Đà Lạt, Lâm Đồng', 31, '098776688', '/hotel/images/hotel/46034701.jpeg', '<div id=\"summary\">\r\n<p>Tọa lạc tại trung t&acirc;m th&agrave;nh phố, Tulip Hotel nằm trong b&aacute;n k&iacute;nh 5 ph&uacute;t đi bộ từ Chợ Đ&agrave; Lạt cũng như Hồ Xu&acirc;n Hương. Kh&aacute;ch sạn cung cấp c&aacute;c ph&ograve;ng nghỉ tiện nghi với ph&ograve;ng tắm ri&ecirc;ng v&agrave; minibar.</p>\r\n\r\n<p>Ở khu vực xung quanh kh&aacute;ch sạn c&oacute; một số nh&agrave; h&agrave;ng phục vụ c&aacute;c m&oacute;n ăn Việt Nam v&agrave; phương T&acirc;y. Hotel Tulip tọa lạc ở vị tr&iacute; thuận tiện chỉ c&aacute;ch Thiền viện Tr&uacute;c L&acirc;m 15 ph&uacute;t l&aacute;i xe v&agrave; s&acirc;n bay Li&ecirc;n Khương 45 ph&uacute;t l&aacute;i xe.</p>\r\n\r\n<p>C&aacute;c ph&ograve;ng nghỉ tại đ&acirc;y được trang tr&iacute; trang nh&atilde; v&agrave; c&oacute; bộ khăn trải giường mới giặt cũng như hệ thống &aacute;nh s&aacute;ng ấm &aacute;p. Trong ph&ograve;ng c&ograve;n c&oacute; TV truyền h&igrave;nh c&aacute;p m&agrave;n h&igrave;nh phẳng v&agrave; khu vực tiếp kh&aacute;ch. Ph&ograve;ng tắm đi k&egrave;m tiện nghi v&ograve;i sen hoặc bồn tắm. Đồ vệ sinh c&aacute; nh&acirc;n miễn ph&iacute; cũng được cung cấp trong ph&ograve;ng.</p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch c&oacute; thể sử dụng m&aacute;y vi t&iacute;nh đặt tại sảnh đợi miễn ph&iacute;. Wi-Fi được cung cấp miễn ph&iacute; trong to&agrave;n bộ kh&aacute;ch sạn. Du kh&aacute;ch c&oacute; thể thu&ecirc; xe hơi hoặc xe đạp để kh&aacute;m ph&aacute; th&agrave;nh phố.</p>\r\n</div>\r\n\r\n<p>Đ&acirc;y l&agrave; khu vực ở Đà Lạt m&agrave; kh&aacute;ch y&ecirc;u th&iacute;ch, theo c&aacute;c đ&aacute;nh gi&aacute; độc lập.</p>\r\n\r\n<p>Chỗ nghỉ n&agrave;y l&agrave; một trong những vị tr&iacute; được đ&aacute;nh gi&aacute; tốt nhất ở Đà Lạt! Kh&aacute;ch th&iacute;ch nơi đ&acirc;y hơn so với những chỗ nghỉ kh&aacute;c trong khu vực.</p>\r\n'),
(25, 'Dalat Hotel Du Parc', '15 Trần Phú, Đà Lạt', 31, '09343434', '/hotel/images/hotel/91436173.jpeg', '<div id=\"summary\">\r\n<p>Nằm trong 1 t&ograve;a nh&agrave; được tu bổ lại c&oacute; từ những năm 1930, Dalat Hotel Du Parc l&agrave; một kh&aacute;ch sạn sang trọng nằm c&aacute;ch Chợ Đ&agrave; Lạt 3 ph&uacute;t l&aacute;i xe. Tự h&agrave;o với s&acirc;n g&ocirc;n ri&ecirc;ng của m&igrave;nh, kh&aacute;ch sạn n&agrave;y c&oacute; c&aacute;c ph&ograve;ng nghỉ với Wi-Fi miễn ph&iacute;.</p>\r\n\r\n<p>Hotel Du Parc c&aacute;ch Ga Đ&agrave; Lạt 2 km. Hồ Tuyền L&acirc;m c&aacute;ch đ&oacute; 8 ph&uacute;t đi xe.</p>\r\n\r\n<p>C&aacute;c ph&ograve;ng nghỉ với s&agrave;n l&aacute;t gỗ được trang bị minibar v&agrave; thiết bị pha tr&agrave;, c&agrave; ph&ecirc;. C&aacute;c k&ecirc;nh truyền h&igrave;nh c&aacute;p v&agrave; vệ tinh được cung cấp. Đồ vệ sinh c&aacute; nh&acirc;n ph&ograve;ng tắm v&agrave; m&aacute;y sấy t&oacute;c cũng được trang bị.</p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch c&oacute; thể thư gi&atilde;n với dịch vụ m&aacute;t-xa tại spa hoặc hướng đến trung t&acirc;m thể dục để tập luyện. Dịch vụ thu đổi ngoại tệ v&agrave; cho thu&ecirc; &ocirc; t&ocirc; c&oacute; thể được thực hiện tại b&agrave;n b&aacute;n tour của kh&aacute;ch sạn. Chỗ đỗ xe miễn ph&iacute; c&oacute; sẵn tại đ&acirc;y.</p>\r\n\r\n<p>Ẩm thực cảu Ph&aacute;p, Việt Nam v&agrave; phương T&acirc;y c&oacute; thể được thưởng thức tại Le Caf&eacute; de la Poste, qu&aacute;n caf&eacute; mang phong c&aacute;ch Ph&aacute;p của kh&aacute;ch sạn. Đồ uống được phục vụ tại Le Select Bar.</p>\r\n</div>\r\n\r\n<p>Đ&acirc;y l&agrave; khu vực ở Đà Lạt m&agrave; kh&aacute;ch y&ecirc;u th&iacute;ch, theo c&aacute;c đ&aacute;nh gi&aacute; độc lập.</p>\r\n'),
(26, 'Thang Long Hotel', '2 Hoàng Văn Thụ', 61, '0945454545', '/hotel/images/hotel/35536399.jpeg', '<div id=\"summary\">\r\n<p>Thang Long Hotel tại th&agrave;nh phố Hải Ph&ograve;ng n&agrave;y cung cấp chỗ ở trang nh&atilde; v&agrave; thoải m&aacute;i với truy cập Wi-Fi miễn ph&iacute; trong c&aacute;c ph&ograve;ng nghỉ. Kh&aacute;ch sạn c&oacute; quầy lễ t&acirc;n 24 giờ, trung t&acirc;m dịch vụ doanh nh&acirc;n v&agrave; chỗ đậu xe miễn ph&iacute; trong khu&ocirc;n vi&ecirc;n.</p>\r\n\r\n<p>C&aacute;c ph&ograve;ng tại đ&acirc;y được trang bị m&aacute;y lạnh, s&agrave;n trải thảm, tủ quần &aacute;o, k&eacute;t an to&agrave;n, b&agrave;n l&agrave;m việc v&agrave; truyền h&igrave;nh c&aacute;p m&agrave;n h&igrave;nh phẳng. Ấm đun nước điện v&agrave; minibar cũng được cung cấp. Ph&ograve;ng tắm ri&ecirc;ng đi k&egrave;m v&ograve;i sen, m&aacute;y sấy t&oacute;c v&agrave; đồ vệ sinh c&aacute; nh&acirc;n miễn ph&iacute;.</p>\r\n\r\n<p>Đội ngũ nh&acirc;n vi&ecirc;n th&acirc;n thiện tại Thang Long Hotel c&oacute; thể hỗ trợ du kh&aacute;ch với dịch vụ giữ h&agrave;nh l&yacute;, giặt l&agrave; v&agrave; sắp xếp c&aacute;c cuộc họp/yến tiệc. Dịch vụ đưa đ&oacute;n v&agrave; vận chuyển s&acirc;n bay c&oacute; thể được cung cấp với một khoản phụ ph&iacute;.</p>\r\n\r\n<p>Nh&agrave; h&agrave;ng trong nh&agrave; phục vụ h&agrave;ng loạt m&oacute;n ăn địa phương v&agrave; phương T&acirc;y ngon miệng. Đồ uống sau bữa ăn được cung cấp tại quầy bar trong khi dịch vụ ăn uống tại ph&ograve;ng cũng đ&aacute;p ứng nhu cầu của kh&aacute;ch.</p>\r\n\r\n<p>S&acirc;n bay C&aacute;t Bi c&aacute;ch kh&aacute;ch sạn khoảng 55 km.</p>\r\n</div>\r\n\r\n<p>Chỗ nghỉ n&agrave;y l&agrave; một trong những vị tr&iacute; được đ&aacute;nh gi&aacute; tốt nhất ở Hải Phòng! Kh&aacute;ch th&iacute;ch nơi đ&acirc;y hơn so với những chỗ nghỉ kh&aacute;c trong khu vực.</p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong`
--

CREATE TABLE `phong` (
  `id_khachsan` int(11) NOT NULL,
  `loaiphong` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `giaphong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phong`
--

INSERT INTO `phong` (`id_khachsan`, `loaiphong`, `giaphong`) VALUES
(9, 'Phòng đơn', 800000),
(9, 'Phòng đôi', 1500000),
(11, 'Phòng đơn', 200000),
(11, 'Phòng đôi', 350000),
(12, 'Phòng đơn', 1200000),
(12, 'Phòng đôi', 1800000),
(13, 'Phòng đơn', 2000000),
(13, 'Phòng đôi', 3000000),
(14, 'Phòng đơn', 700000),
(14, 'Phòng đôi', 1300000),
(15, 'Phòng đơn', 900000),
(15, 'Phòng đôi', 1500000),
(16, 'Phòng đơn', 800000),
(16, 'Phòng đôi', 1400000),
(17, 'Phòng đơn', 1200000),
(17, 'Phòng đôi', 2000000),
(18, 'Phòng đơn', 1500000),
(18, 'Phòng đôi', 2400000),
(19, 'Phòng đơn', 1000000),
(19, 'Phòng đôi', 1600000),
(20, 'Phòng đơn', 500000),
(20, 'Phòng đôi', 950000),
(21, 'Phòng đơn', 1200000),
(21, 'Phòng đôi', 2000000),
(22, 'Phòng đơn', 1200000),
(22, 'Phòng đôi', 2000000),
(23, 'Phòng đơn', 1200000),
(23, 'Phòng đôi', 2000000),
(24, 'Phòng đơn', 1200000),
(24, 'Phòng đôi', 2100000),
(25, 'Phòng đơn', 1400000),
(25, 'Phòng đôi', 2300000),
(26, 'Phòng đơn', 800000),
(26, 'Phòng đôi', 1500000);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `datphong`
--
ALTER TABLE `datphong`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `diadiem`
--
ALTER TABLE `diadiem`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khachsan`
--
ALTER TABLE `khachsan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `datphong`
--
ALTER TABLE `datphong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `diadiem`
--
ALTER TABLE `diadiem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT cho bảng `khachsan`
--
ALTER TABLE `khachsan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
