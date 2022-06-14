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

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `MaLoai`, `SoLuong`, `DonViTinh`, `HinhAnh`, `DonGia`) VALUES
(111, 'Gà Rán (1 miếng)', 1, 41, 'Cái', 'garan0.png', 35000),
(112, 'Gà Rán (2 miếng)', 1, 39, 'Cái', 'garan1.png', 68000),
(113, 'Gà Rán (3 miếng)', 1, 44, 'Cái', 'garan2.png', 101000),
(114, 'Gà Rán (6 miếng)', 1, 26, 'Cái', 'garan3.png', 195000),
(115, 'Đùi Gà Quay (1 miếng)', 2, 38, 'Cái', 'gaquay0.png', 67000),
(116, 'Phi Lê Gà Quay (1 miếng)', 2, 39, 'Cái', 'gaquay1.png', 35000),
(117, 'Cơm Gà Rán (1 phần)', 3, 24, 'Phần', 'comgaran0.png', 42000),
(118, 'Cơm Gà Phi Lê (1 phần)', 3, 36, 'Phần', 'comgaphile0.png', 42000),
(119, 'Cơm Gà Bít-tết (1 phần)', 3, 32, 'Phần', 'comgabittet0.jpg', 42000),
(120, 'Gà Bít-tết với khoai tây chiên (1 phần)', 4, 37, 'Phần', 'gabittetkhoaitay0.jpg', 42000),
(121, 'Cơm Gà Phi Lê Giòn (1 phần)', 3, 41, 'Phần', 'comgaphilegion0.jpg', 42000),
(122, 'Cơm Gà Xiên Que (1 phần)', 3, 43, 'Phần', 'comgaxienque0.jpg', 42000),
(123, 'Burger Tôm (1 phần)', 5, 30, 'Cái', 'burger0.jpg', 41000),
(124, 'Burger Gà Quay (1 phần)', 5, 20, 'Cái', 'burger1.jpeg', 47000),
(125, 'Mì Ý Sốt Cà Gà Viên (1 phần)', 6, 10, 'Phần', 'miy0.jpeg', 37000),
(126, 'Mì Ý Sốt Cà Gà Zinger (1 phần)', 6, 15, 'Phần', 'miy1.jpeg', 53000),
(127, 'Phô Mai Viên (4 viên)', 7, 20, 'Phần', 'phomaivien0.jpeg', 30000),
(128, 'Cá Thanh (3 thanh)', 7, 21, 'Phần', 'cathanh0.jpg', 40000),
(129, 'Bắp Cải Trộn', 8, 20, 'Phần', 'bapcaitron0.jpg', 12000),
(130, 'Bánh Trứng', 9, 30, 'Cái', 'banhtrung0.jpg', 17000),
(131, 'Bánh Trứng (4 cái)', 9, 32, 'Cái', 'banhtrung1.jpg', 54000),
(132, 'Pepsi Vị Chanh', 10, 20, 'Lon', 'pepsivichanh.jpg', 17000),
(135, 'Mirinda Cam Lon', 10, 17, 'Lon', 'mirindalon.png', 17000),

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
(5, 'nv02', 'nv02', 'Nhân viên', 1);
(6, 'nv03', 'nv03', 'Nhân viên', 1);
(7, 'nv04', 'nv04', 'Nhân viên', 1);
(8, 'nv08', 'nv08', 'Nhân viên', 1);
(9, 'nv09', 'nv09', 'Nhân viên', 1);
(10, 'nv10', 'nv10', 'Nhân viên', 1);

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
(3, 'Cơm Gà');
(4, 'Gà với Khoai Tây');
(5, 'Burger');
(6, 'Mì Ý');
(7, 'Thức Ăn Nhẹ');
(8, 'Bắp Cải Trộn');
(9, 'Tráng Miệng');
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
(6, '30/04-01/05 giảm 30% đơn hàng từ 300.000đ', 30, 300000, '2022-04-20', '2022-05-08');
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