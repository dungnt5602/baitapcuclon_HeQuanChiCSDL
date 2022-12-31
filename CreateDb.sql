CREATE database ban_ve_may_bay
use ban_ve_may_bay
-- //bảng nhân viên//
create table Nhanvien(
	MaNV nvarchar(10) not null primary key,
	TenNV nvarchar(50) not null,
	Diachi nvarchar(50) not null,
	SDT text,
	Ngaysinh datetime,
	Gioitinh nchar(5)
);
-- //bảng khách hàng//
create table Khachhang(
	MaKH nvarchar(10) not null primary key,
	TenKH nvarchar(50) not null,
	Diachi nvarchar(50) not null,
	CMND text,
	Sove text
);
-- //bảng máy bay//
create table Maybay(
	MaMB nvarchar(10) not null primary key,
	TenMB nvarchar(50) not null,
	Tongsoghe int
);
-- //bảng sân bay//
create table Sanbay(
	MaSB nvarchar(10) not null primary key,
	TenSB nvarchar(50) not null,
	Tinh nvarchar(50)
);

-- //bảng tuyến bay//
create table Tuyenbay(
	MaTuyen nvarchar(10) not null primary key,
	MaSB nvarchar(10) not null,
	Sanbaydi nvarchar(50) not null,
	Sanbayden nvarchar(50) not null
	foreign key (MaSB) references Sanbay(MaSB)
);
-- //bảng chuyến bay//
create table Chuyenbay(
	Machuyenbay nvarchar(10) not null primary key,
	MaTuyen nvarchar(10) not null,
	MaMB nvarchar(10) not null,
	Khoihanh datetime not null,
	Thoigiandukien time not null,
	Soghetrong int,
	foreign key (MaTuyen) references Tuyenbay(MaTuyen),
	foreign key (MaMB) references Maybay(MaMB)
);
-- //bảng hóa đơn//
create table Hoadon(
	MaHD nvarchar(10) not null primary key,
	MaKH nvarchar(10) not null,
	MaNV nvarchar (10) not null,
	Ngaylap datetime,
	Thanhtien int,
	foreign key(MaKH) references Khachhang(MaKH),
	foreign key(MaNV) references Nhanvien(MaNV)
);
-- //bảng vé//
create table VE(
	MaVE nvarchar(10) not null primary key,
	Machuyenbay nvarchar(10) not null,
	MaKH nvarchar(10) not null,
	MaHD nvarchar(10) not null,
	Hangve nvarchar(50) not null,
	Loaive nvarchar(20) not null,
	Sohe int,
	Tinhtrang nvarchar(10)
	foreign key(Machuyenbay) references Chuyenbay(Machuyenbay),
	foreign key(MaKH) references Khachhang(MaKH),
	foreign key(MaHD) references Hoadon(MaHD)
);
