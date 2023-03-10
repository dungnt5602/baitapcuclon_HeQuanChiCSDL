CREATE database ban_ve_may_bay

go
use ban_ve_may_bay
-- //bảng nhân viên//
create table NhanVien(
	MaNV int not null IDENTITY(1,1) primary key,
	TenNV nvarchar(50) not null,
	Diachi nvarchar(50) not null,
	SDT varchar(15),
	TrangThai nvarchar(30)
);
-- //bảng khách hàng//
create table KhachHang(
	MaKH int not null IDENTITY(1,1) primary key,
	TenKH nvarchar(50) not null,
	Diachi nvarchar(50) not null,
	CMND varchar(20),
	SDT varchar(15),
);
-- //bảng máy bay//
create table Maybay(
	MaMB int not null IDENTITY(1,1) primary key,
	TenMB nvarchar(50) not null,
	HangSanXuat nvarchar(100),
	SoGheLoai1 int,
	SoGheLoai2 int,
	Tongsoghe int
);
-- //bảng sân bay//
create table Sanbay(
	MaSB int not null IDENTITY(1,1) primary key,
	TenSB nvarchar(50) not null,
	DiaChi nvarchar(50),
	TrangThai nvarchar(50)
);

-- //bảng tuyến bay//
create table TuyenBay(
	MaTuyen int not null IDENTITY(1,1) primary key,
	MaSanbaydi int not null,
	MaSanbayden int not null,
);
-- bảng chuyến bay
create table Chuyenbay(
	Machuyenbay int not null IDENTITY(1,1) primary key,
	MaTuyen int not null,
	MaMB int not null,
	ThoiGianKhoiHanh datetime not null,
	ThoiGianHaCanh datetime not null,
	SoGheLoai1 int,
	SoGheLoai2 int,
	TongSoGhe int,
	TrangThai nvarchar(50),
	foreign key (MaTuyen) references Tuyenbay(MaTuyen),
	foreign key (MaMB) references Maybay(MaMB)
);
-- //bảng hóa đơn//
create table HoaDon(
	MaHD int not null IDENTITY(1,1) primary key,
	MaKH int not null,
	MaNV int not null,
	Ngaylap datetime,
	TongTien int,
	TrangThai nvarchar(30)
	foreign key(MaKH) references Khachhang(MaKH),
	foreign key(MaNV) references Nhanvien(MaNV)
);
-- //bảng thông tin chi tiết vé//
create table ThongTinChiTietVe(
	MaThongTinVe int not null IDENTITY(1,1) primary key,
	Machuyenbay int not null,
	Loaive nvarchar(20) not null,
	SoLuong int,
	SoLuongCon int,
	GiaVe money,
	foreign key(Machuyenbay) references Chuyenbay(Machuyenbay)
);

-- //bảng vé bán//
create table VeBan(
	MaVeBan int not null IDENTITY(1,1) primary key,
	MaHoaDon int not null,
	MaThongTinVe int not null,
	SoLuong int,
	ThanhTien money,
	foreign key(MaHoaDon) references HoaDon(MaHD),
	foreign key(MaThongTinVe) references ThongTinChiTietVe(MaThongTinVe)
);