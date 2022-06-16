SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlygaran`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `SanPham`
--

CREATE TABLE `SanPham` (
  `MaSP` int(11) NOT NULL,
  `TenSP` varchar(255) NOT NULL,
  `MaLoai` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonViTinh` varchar(255) NOT NULL,
  `HinhAnh` varchar(255) NOT NULL,
  `DonGia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Bang San Pham';

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `SanPham` (`MaSP`, `TenSP`, `MaLoai`, `SoLuong`, `DonViTinh`, `HinhAnh`, `DonGia`) VALUES
(111, 'Gà Rán (1 miếng)', 1, 41, 'Cái', 'garan0.jpeg', 35000),
(112, 'Gà Rán (2 miếng)', 1, 39, 'Cái', 'garan1.jpeg', 68000),
(113, 'Gà Rán (3 miếng)', 1, 44, 'Cái', 'garan2.jpeg', 101000),
(114, 'Gà Rán (6 miếng)', 1, 26, 'Cái', 'garan3.png', 195000),
(115, 'Đùi Gà Quay (1 miếng)', 2, 38, 'Cái', 'gaquay0.jpeg', 67000),
(116, 'Phi Lê Gà Quay (1 miếng)', 2, 39, 'Cái', 'gaquay1.jpeg', 35000),
(117, 'Cơm Gà Rán (1 phần)', 3, 24, 'Phần', 'comgaran0.jpeg', 42000),
(118, 'Cơm Gà Phi Lê (1 phần)', 3, 36, 'Phần', 'comgaphile0.jpeg', 42000),
(119, 'Cơm Gà Bít-tết (1 phần)', 3, 32, 'Phần', 'comgabittet0.jpeg', 42000),
(120, 'Gà Bít-tết với khoai tây chiên (1 phần)', 4, 37, 'Phần', 'gabittetkhoaitay0.jpeg', 42000),
(121, 'Cơm Gà Phi Lê Giòn (1 phần)', 3, 41, 'Phần', 'comgaphilegion0.jpeg', 42000),
(122, 'Cơm Gà Xiên Que (1 phần)', 3, 43, 'Phần', 'comgaxienque0.jpeg', 42000),
(123, 'Burger Tôm (1 phần)', 5, 30, 'Cái', 'burger0.jpeg', 41000),
(124, 'Burger Gà Quay (1 phần)', 5, 20, 'Cái', 'burger1.jpeg', 47000),
(125, 'Mì Ý Sốt Cà Gà Viên (1 phần)', 6, 10, 'Phần', 'miy0.jpeg', 37000),
(126, 'Mì Ý Sốt Cà Gà Zinger (1 phần)', 6, 15, 'Phần', 'miy1.jpeg', 53000),
(127, 'Phô Mai Viên (4 viên)', 7, 20, 'Phần', 'phomaivien0.jpeg', 30000),
(128, 'Cá Thanh (3 thanh)', 7, 21, 'Phần', 'cathanh0.jpeg', 40000),
(129, 'Bắp Cải Trộn', 8, 20, 'Phần', 'bapcaitron0.jpeg', 12000),
(130, 'Bánh Trứng', 9, 30, 'Cái', 'banhtrung0.png', 17000),
(131, 'Bánh Trứng (4 cái)', 9, 32, 'Cái', 'banhtrung1.webp', 54000),
(132, 'Pepsi Vị Chanh', 10, 20, 'Lon', 'pepsivichanh.jpeg', 17000),
(135, 'Mirinda Cam Lon', 10, 17, 'Lon', 'mirindalon.jpeg', 17000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TaiKhoan`
--

CREATE TABLE `TaiKhoan` (
  `MaNV` int(11) NOT NULL,
  `TenDangNhap` varchar(255) NOT NULL,
  `MatKhau` varchar(255) NOT NULL,
  `Quyen` varchar(255) NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `TaiKhoan`
--

INSERT INTO `TaiKhoan` (`MaNV`, `TenDangNhap`, `MatKhau`, `Quyen`, `TrangThai`) VALUES
(0, 'admin', 'admin', 'Quản trị', 1),
(1, 'ql01', 'ql01', 'Quản lý', 1),
(2, 'ql02', 'ql02', 'Quản lý', 1),
(3, 'ql03', 'ql03', 'Quản lý', 1),
(4, 'nv01', 'nv01', 'Nhân viên', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `PhanQuyen`
--

CREATE TABLE `PhanQuyen` (
  `Quyen` varchar(255) NOT NULL,
  `NhapHang` int(1) NOT NULL,
  `QLSanPham` int(1) NOT NULL,
  `QLNhanVien` int(1) NOT NULL,
  `QLKhachHang` int(1) NOT NULL,
  `ThongKe` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `PhanQuyen`
--

INSERT INTO `PhanQuyen` (`Quyen`, `NhapHang`, `QLSanPham`, `QLNhanVien`, `QLKhachHang`, `ThongKe`) VALUES
('Default', 0, 0, 0, 0, 0),
('Nhân viên', 0, 0, 0, 1, 0),
('Quản lý', 1, 0, 1, 1, 1),
('Quản trị', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `PhieuNhap` (
  `MaPN` int(11) NOT NULL,
  `MaNCC` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `NgayLap` date NOT NULL,
  `TongTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phieuNhap`
--

INSERT INTO `PhieuNhap` (`MaPN`, `MaNCC`, `MaNV`, `NgayLap`, `TongTien`) VALUES
(4, 2, 0, '2021-04-19', 1027000),
(5, 2, 0, '2021-04-23', 268000),
(7, 2, 0, '2021-04-26', 90000),
(8, 2, 0, '2021-05-02', 1070000),
(9, 1, 0, '2021-05-04', 1000000),
(10, 5, 0, '2021-05-07', 11360000);

-- --------------------------------------------------------
--
-- Cấu trúc bảng cho bảng `NhanVien`
--

CREATE TABLE `NhanVien` (
  `MaNV` int(11) NOT NULL,
  `Ho` varchar(255) NOT NULL,
  `Ten` varchar(255) NOT NULL,
  `GioiTinh` varchar(3) NOT NULL,
  `ChucVu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `NhanVien` (`MaNV`, `Ho`, `Ten`, `GioiTinh`, `ChucVu`) VALUES
(0, 'Admin', '', '', 'Admin'),
(1, 'Hồ Công', 'Huynh', 'Nam', 'Quản Lý'),
(2, 'Bùi Anh', 'Thư', 'Nữ', 'Quản Lý'),
(3, 'Trương Quang', 'Khải', 'Nam', 'Quản Lý'),
(4, 'Phạm Hoàng', 'Đức', 'Nam', 'Nhân Viên'),
(12, 'Bùi Thuý', 'Vi', 'Nữ', 'Nhân Viên'),
(13, 'Phan Lê Bảo', 'Kiên', 'Nữ', 'Nhân Viên'),
(14, 'Lê Văn', 'Thắng', 'Nam', 'Nhân Viên'),
(15, 'Nguyễn Bá', 'Đắc', 'Nam', 'Quản Lý');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `NhaCungCap`
--

CREATE TABLE `NhaCungCap` (
  `MaNCC` int(11) NOT NULL,
  `TenNCC` varchar(255) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `DienThoai` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `NhaCungCap`
--

INSERT INTO `NhaCungCap` (`MaNCC`, `TenNCC`, `DiaChi`, `DienThoai`) VALUES
(1, 'Gà Tươi Khánh An', '273 An Dương Vương, phường 6, quận 5, TP.HCM', '0989713111'),
(2, 'Siêu thị Coop Mart Phú Nhuận', '462 Phan Xích Long, quận Phú Nhuận, HCM', '02438242526'),
(5, 'Đại lý nước ngọt An Thư', '492 Xô Viết Nghệ Tĩnh, P.25, Q. Bình Thạnh', '0978647281');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Loai`
--

CREATE TABLE `Loai` (
  `MaLoai` int(11) NOT NULL,
  `TenLoai` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `Loai`
--

INSERT INTO `Loai` (`MaLoai`, `TenLoai`) VALUES
(1, 'Gà Rán'),
(2, 'Gà Quay'),
(3, 'Cơm Gà'),
(4, 'Gà với Khoai Tây'),
(5, 'Burger'),
(6, 'Mì Ý'),
(7, 'Thức Ăn Nhẹ'),
(8, 'Bắp Cải Trộn'),
(9, 'Tráng Miệng'),
(10, 'Nước Ngọt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `GiamGia`
--

CREATE TABLE `GiamGia` (
  `MaGiam` int(11) NOT NULL,
  `TenGiamGia` text NOT NULL,
  `PhanTramGiam` int(11) NOT NULL,
  `DieuKien` int(11) NOT NULL,
  `NgayBD` date NOT NULL,
  `NgayKT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `GiamGia`
--

INSERT INTO `GiamGia` (`MaGiam`, `TenGiamGia`, `PhanTramGiam`, `DieuKien`, `NgayBD`, `NgayKT`) VALUES
(1, 'Không giảm giá', 0, 0, '2022-01-01', '2024-12-31'),
(2, 'Giảm 20% đơn hàng từ 150.000đ', 20, 150000, '2022-04-22', '2022-05-13'),
(4, 'Giảm 10% đơn hàng từ 80.000đ', 10, 80000, '2022-03-26', '2022-05-31'),
(5, '30/04-01/05 giảm 30% đơn hàng từ 300.000đ', 30, 300000, '2022-04-20', '2022-05-08'),
(6, '1/6 giảm 25% đơn hàng từ 106.000đ', 25, 106000, '2022-05-31', '2022-06-02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctphieunhap`
--

CREATE TABLE `CTPhieuNhap` (
  `MaPN` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `ThanhTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ctphieunhap`
--

INSERT INTO `CTPhieuNhap` (`MaPN`, `MaSP`, `SoLuong`, `DonGia`, `ThanhTien`) VALUES
(4, 128, 100, 10000, 1000000),
(4, 129, 3, 9000, 27000),
(5, 124, 6, 10000, 60000),
(5, 125, 3, 15000, 45000),
(5, 126, 7, 10000, 70000),
(5, 127, 2, 15000, 30000),
(5, 130, 3, 9000, 27000),
(5, 131, 9, 4000, 36000),
(7, 126, 9, 10000, 90000),
(8, 124, 30, 10000, 300000),
(8, 126, 50, 10000, 500000),
(8, 129, 30, 9000, 270000),
(9, 135, 100, 10000, 1000000),
(10, 136, 200, 23000, 4600000),
(10, 137, 80, 84500, 6760000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `HoaDon`
--

CREATE TABLE `HoaDon` (
  `MaHD` int(11) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `NgayLap` date NOT NULL,
  `TongTien` int(11) NOT NULL,
  `GhiChu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `HoaDon`
--

INSERT INTO `HoaDon` (`MaHD`, `MaKH`, `MaNV`, `NgayLap`, `TongTien`, `GhiChu`) VALUES
(18, 4, 3, '2022-01-18', 1013600, 'Đã thanh toán'),
(19, 1, 1, '2022-01-20', 482400, 'Đã thanh toán'),
(20, 2, 1, '2022-01-28', 840000, 'Đã thanh toán'),
(21, 3, 2, '2022-02-07', 1045600, 'Đã thanh toán'),
(22, 1, 1, '2022-02-14', 1004000, 'Đã thanh toán'),
(23, 7, 3, '2022-02-16', 576800, 'Đã thanh toán'),
(24, 7, 2, '2022-03-08', 601300, 'Đã thanh toán'),
(25, 2, 2, '2022-03-09', 391300, 'Đã thanh toán'),
(26, 8, 4, '2022-03-12', 1286600, 'Đã thanh toán'),
(27, 8, 3, '2022-03-24', 590400, 'Đã thanh toán'),
(28, 7, 4, '2022-02-04', 2041600, 'Đã thanh toán'),
(29, 9, 2, '2022-04-10', 633500, 'Đã thanh toán'),
(30, 10, 4, '2022-04-15', 3136800, 'Đã thanh toán'),
(31, 11, 4, '2022-05-02', 782600, 'Đã thanh toán'),
(32, 11, 0, '2022-05-03', 1477700, 'Đã thanh toán'),
(33, 9, 0, '2022-05-06', 5110000, 'Đã thanh toán'),
(35, 3, 0, '2022-05-08', 304200, 'Đã thanh toán'),
(37, 2, 0, '2022-05-08', 117000, 'Đã thanh toán');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `CTHoaDon`
--

CREATE TABLE `CTHoaDon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `ThanhTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cthoadon`
--

INSERT INTO `CTHoaDon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`, `ThanhTien`) VALUES
(18, 114, 2, 159000, 318000),
(18, 122, 3, 249000, 747000),
(18, 124, 6, 19000, 114000),
(18, 130, 2, 19000, 38000),
(18, 132, 2, 25000, 50000),
(19, 115, 2, 119000, 238000),
(19, 120, 1, 239000, 239000),
(19, 128, 4, 19000, 76000),
(19, 131, 5, 10000, 50000),
(20, 118, 1, 129000, 129000),
(20, 120, 2, 239000, 478000),
(20, 129, 5, 19000, 38000),
(20, 130, 5, 19000, 95000),
(20, 131, 10, 10000, 100000),
(21, 112, 3, 129000, 387000),
(21, 117, 2, 149000, 298000),
(21, 126, 10, 19000, 190000),
(21, 127, 3, 29000, 87000),
(21, 128, 15, 19000, 285000),
(21, 131, 6, 10000, 60000),
(22, 114, 5, 159000, 795000),
(22, 127, 10, 29000, 290000),
(22, 129, 6, 19000, 95000),
(22, 132, 3, 25000, 75000),
(23, 112, 3, 129000, 387000),
(23, 113, 1, 119000, 119000),
(23, 118, 1, 129000, 129000),
(23, 128, 6, 19000, 114000),
(23, 131, 5, 10000, 50000),
(23, 132, 2, 25000, 25000),
(24, 115, 1, 119000, 119000),
(24, 116, 1, 130000, 130000),
(24, 119, 1, 239000, 239000),
(24, 126, 6, 19000, 114000),
(24, 127, 3, 29000, 87000),
(24, 131, 7, 10000, 70000),
(24, 132, 4, 25000, 100000),
(25, 118, 1, 129000, 129000),
(25, 121, 1, 229000, 229000),
(25, 130, 4, 19000, 76000),
(25, 131, 5, 10000, 50000),
(25, 132, 3, 25000, 75000),
(26, 111, 3, 169000, 507000),
(26, 120, 3, 239000, 717000),
(26, 122, 2, 249000, 498000),
(26, 127, 4, 29000, 116000),
(27, 113, 1, 119000, 119000),
(27, 119, 1, 239000, 239000),
(27, 123, 1, 269000, 269000),
(27, 126, 1, 19000, 19000),
(27, 131, 1, 10000, 10000),
(28, 113, 10, 119000, 1190000),
(28, 116, 4, 130000, 520000),
(28, 119, 3, 239000, 717000),
(28, 132, 5, 25000, 125000),
(29, 114, 4, 159000, 636000),
(29, 115, 1, 119000, 119000),
(29, 116, 1, 130000, 130000),
(29, 131, 2, 10000, 20000),
(30, 116, 1, 130000, 130000),
(30, 117, 7, 149000, 1043000),
(30, 123, 10, 269000, 2690000),
(30, 125, 1, 29000, 29000),
(30, 127, 2, 29000, 29000),
(31, 111, 1, 169000, 169000),
(31, 115, 6, 119000, 595000),
(31, 117, 1, 149000, 149000),
(31, 118, 1, 129000, 129000),
(31, 130, 4, 19000, 76000),
(32, 120, 5, 239000, 1195000),
(32, 121, 4, 229000, 916000),
(33, 116, 1, 130000, 130000),
(33, 119, 30, 239000, 7170000),
(35, 113, 1, 119000, 119000),
(35, 117, 1, 149000, 149000),
(35, 131, 8, 10000, 70000),
(37, 116, 1, 130000, 130000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `KhachHang`
--

CREATE TABLE `KhachHang` (
  `MaKH` int(11) NOT NULL,
  `Ho` varchar(255) NOT NULL,
  `Ten` varchar(255) NOT NULL,
  `GioiTinh` varchar(3) NOT NULL,
  `TongChiTieu` int(11) NOT NULL DEFAULT 0,
  `TinhTrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `KhachHang` (`MaKH`, `Ho`, `Ten`, `GioiTinh`, `TongChiTieu`, `TinhTrang`) VALUES
(1, 'Bùi Quang', 'Thái', 'Nam', 1486400, 1),
(2, 'Nguyễn Thu', 'Việt', 'Nữ', 1497300, 1),
(3, 'Hồ Gia', 'Hân', 'Nữ', 1468800, 1),
(4, 'Phan Ngọc', 'An', 'Nam', 1013600, 1),
(7, 'Từ Kim', 'Ngọc', 'Nữ', 3219700, 1),
(8, 'Phan Tấn Nhất', 'Khâm', 'Nam', 1877000, 1),
(9, 'Tô Diễm', 'Trinh', 'Nữ', 5743500, 1),
(10, 'Nguyễn Hải', 'Hưng', 'Nam', 3136800, 1),
(11, 'Đào Nhật', 'Tân', 'Nam', 2260300, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `CTHoaDon`
--
ALTER TABLE `CTHoaDon`
  ADD PRIMARY KEY (`MaHD`,`MaSP`),
  ADD KEY `cthoadon_ibfk_1` (`MaHD`);

--
-- Chỉ mục cho bảng `CTPhieuNhap`
--
ALTER TABLE `CTPhieuNhap`
  ADD PRIMARY KEY (`MaPN`,`MaSP`);

--
-- Chỉ mục cho bảng `GiamGia`
--
ALTER TABLE `GiamGia`
  ADD PRIMARY KEY (`MaGiam`);

--
-- Chỉ mục cho bảng `HoaDon`
--
ALTER TABLE `HoaDon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `hoadon_ibfk_1` (`MaNV`),
  ADD KEY `hoadon_ibfk_2` (`MaKH`);

--
-- Chỉ mục cho bảng `KhachHang`
--
ALTER TABLE `KhachHang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Chỉ mục cho bảng `Loai`
--
ALTER TABLE `Loai`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Chỉ mục cho bảng `NhaCungCap`
--
ALTER TABLE `NhaCungCap`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Chỉ mục cho bảng `NhanVien`
--
ALTER TABLE `NhanVien`
  ADD PRIMARY KEY (`MaNV`);

--
-- Chỉ mục cho bảng `PhanQuyen`
--
ALTER TABLE `PhanQuyen`
  ADD PRIMARY KEY (`Quyen`);

--
-- Chỉ mục cho bảng `PhieuNhap`
--
ALTER TABLE `PhieuNhap`
  ADD PRIMARY KEY (`MaPN`),
  ADD KEY `phieunhap_ibfk_1` (`MaNCC`),
  ADD KEY `phieunhap_ibfk_2` (`MaNV`);

--
-- Chỉ mục cho bảng `SanPham`
--
ALTER TABLE `SanPham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `sanpham_ibfk_1` (`MaLoai`);

--
-- Chỉ mục cho bảng `TaiKhoan`
--
ALTER TABLE `TaiKhoan`
  ADD PRIMARY KEY (`MaNV`),
  ADD KEY `taikhoan_ibfk_2` (`Quyen`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `GiamGia`
--
ALTER TABLE `GiamGia`
  MODIFY `MaGiam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `HoaDon`
--
ALTER TABLE `HoaDon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `KhachHang`
--
ALTER TABLE `KhachHang`
  MODIFY `MaKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `Loai`
--
ALTER TABLE `Loai`
  MODIFY `MaLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `NhaCungCap`
--
ALTER TABLE `NhaCungCap`
  MODIFY `MaNCC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `NhanVien`
--
ALTER TABLE `NhanVien`
  MODIFY `MaNV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `PhieuNhap`
  MODIFY `MaPN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `SanPham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `TaiKhoan`
  MODIFY `MaNV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cthoadon`
--
ALTER TABLE `CTHoaDon`
  ADD CONSTRAINT `cthoadon_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `HoaDon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `ctphieunhap`
--
ALTER TABLE `CTPhieuNhap`
  ADD CONSTRAINT `ctphieunhap_ibfk_2` FOREIGN KEY (`MaPN`) REFERENCES `PhieuNhap` (`MaPN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `HoaDon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `NhanVien` (`MaNV`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`MaKH`) REFERENCES `KhachHang` (`MaKH`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `PhieuNhap`
  ADD CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`MaNCC`) REFERENCES `NhaCungCap` (`MaNCC`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `phieunhap_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `NhanVien` (`MaNV`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `SanPham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaLoai`) REFERENCES `Loai` (`MaLoai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `taikhoan`
--
ALTER TABLE `TaiKhoan`
  ADD CONSTRAINT `taikhoan_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `NhanVien` (`MaNV`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `taikhoan_ibfk_2` FOREIGN KEY (`Quyen`) REFERENCES `PhanQuyen` (`Quyen`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
