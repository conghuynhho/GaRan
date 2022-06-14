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