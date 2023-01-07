CREATE database ban_ve_may_bay

-- //bảng nhân viên//
create table NhanVien(
	MaNV int not null primary key,
	TenNV nvarchar(50) not null,
	Diachi nvarchar(50) not null,
	SDT text,
	TrangThai nvarchar(30)
);
-- //bảng khách hàng//
create table KhachHang(
	MaKH int not null primary key,
	TenKH nvarchar(50) not null,
	Diachi nvarchar(50) not null,
	CMND text,
	SDT text,
	TrangThai nvarchar(30)
);
-- //bảng máy bay//
create table Maybay(
	MaMB int not null primary key,
	TenMB nvarchar(50) not null,
	HangSanXuat nvarchar(100),
	SoGheLoai1 int,
	SoGheLoai2 int,
	Tongsoghe int
);
-- //bảng sân bay//
create table Sanbay(
	MaSB int not null primary key,
	TenSB nvarchar(50) not null,
	DiaChi nvarchar(50),
	TrangThai nvarchar(50)
);

-- //bảng tuyến bay//
create table TuyenBay(
	MaTuyen int not null primary key,
	MaSB nvarchar(10) not null,
	Sanbaydi nvarchar(50) not null,
	Sanbayden nvarchar(50) not null
	foreign key (MaSB) references Sanbay(MaSB)
);
-- bảng chuyến bay
create table Chuyenbay(
	Machuyenbay int not null primary key,
	MaTuyen nvarchar(10) not null,
	MaMB nvarchar(10) not null,
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
	MaHD int not null primary key,
	MaKH nvarchar(10) not null,
	MaNV nvarchar (10) not null,
	Ngaylap datetime,
	TongTien int,
	foreign key(MaKH) references Khachhang(MaKH),
	foreign key(MaNV) references Nhanvien(MaNV)
);
-- //bảng thông tin chi tiết vé//
create table ThongTinChiTietVe(
	MaThongTinVe int not null primary key,
	Machuyenbay nvarchar(10) not null,
	Loaive nvarchar(20) not null,
	SoLuong int,
	SoLuongCon int,
	GiaVe money,
	foreign key(Machuyenbay) references Chuyenbay(Machuyenbay)
);

-- //bảng vé bán//
create table VeBan(
	MaVeBan int not null primary key,
	MaHoaDon nvarchar(10) not null,
	MaThongTinVe nvarchar(10) not null,
	SoLuong int,
	ThanhTien money,
	foreign key(MaHoaDon) references HoaDon(MaHD),
	foreign key(MaThongTinVe) references ThongTinChiTietVe(MaThongTinVe)
);