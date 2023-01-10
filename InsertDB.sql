INSERT INTO [dbo].[NhanVien]([TenNV],[Diachi],[SDT],[TrangThai])
     VALUES('Nhan vien abc', 'jkvia', '098385310', 'active')
INSERT INTO [dbo].[NhanVien]([TenNV],[Diachi],[SDT],[TrangThai])
     VALUES('Nhan 9uea9f', 'NVMNV', '098385311', 'active')
INSERT INTO [dbo].[NhanVien]([TenNV],[Diachi],[SDT],[TrangThai])
     VALUES('Nhan mnvcm', 'Ha Noij', '098385312', 'duoiviec')
INSERT INTO [dbo].[NhanVien]([TenNV],[Diachi],[SDT],[TrangThai])
     VALUES('Nhan q2t3t3', 'Ha Dong', '098385313', 'active')
INSERT INTO [dbo].[NhanVien]([TenNV],[Diachi],[SDT],[TrangThai])
     VALUES('Nguyen Van A', 'Hoa Binh', '098385314', 'active')
INSERT INTO [dbo].[NhanVien]([TenNV],[Diachi],[SDT],[TrangThai])
     VALUES('Nguyen Van B', 'Cao abng', '098385315', 'active')
INSERT INTO [dbo].[NhanVien]([TenNV],[Diachi],[SDT],[TrangThai])
     VALUES('May bay Airline', 'Tay Nguyen', '098385316', 'active')
INSERT INTO [dbo].[NhanVien]([TenNV],[Diachi],[SDT],[TrangThai])
     VALUES('Line abc', 'ava', '098385317', 'active')
INSERT INTO [dbo].[NhanVien]([TenNV],[Diachi],[SDT],[TrangThai])
     VALUES('Nhan vien a', 'r3r3', '098385318', 'active')
INSERT INTO [dbo].[NhanVien]([TenNV],[Diachi],[SDT],[TrangThai])
     VALUES('IJOIO', 'qwf', '098385319', 'active')
INSERT INTO [dbo].[NhanVien]([TenNV],[Diachi],[SDT],[TrangThai])
     VALUES('VNMNV', 'gag', '098385320', 'duoiviec')
INSERT INTO [dbo].[NhanVien]([TenNV],[Diachi],[SDT],[TrangThai])
     VALUES('Y@RY*', 'vava', '098385321', 'active')
INSERT INTO [dbo].[NhanVien]([TenNV],[Diachi],[SDT],[TrangThai])
     VALUES('MNVMN', 'r1r', '098385322', 'active')
INSERT INTO [dbo].[NhanVien]([TenNV],[Diachi],[SDT],[TrangThai])
     VALUES('&@R&', 'fqfqf', '098385323', 'active')
INSERT INTO [dbo].[NhanVien]([TenNV],[Diachi],[SDT],[TrangThai])
     VALUES('ABCBCBC', 'baba', '098385324', 'active')


INSERT INTO [dbo].[KhachHang]([TenKH],[Diachi],[CMND],[SDT])
     VALUES
           ('Khach hang 1', 'Ha Noi', '95312858128', '092375382')
INSERT INTO [dbo].[KhachHang]([TenKH],[Diachi],[CMND],[SDT])
     VALUES
           ('Khach hang 2', 'Ha Noi', '95312858129', '092375383')
INSERT INTO [dbo].[KhachHang]([TenKH],[Diachi],[CMND],[SDT])
     VALUES
           ('Khach hang 3', 'Ha Noi', '95312858130', '092375384')
INSERT INTO [dbo].[KhachHang]([TenKH],[Diachi],[CMND],[SDT])
     VALUES
           ('Khach hang 4', 'Ha Noi', '95312858131', '092375385')
INSERT INTO [dbo].[KhachHang]([TenKH],[Diachi],[CMND],[SDT])
     VALUES
           ('Khach hang 5', 'Ha Noi', '95312858132', '092375386')
INSERT INTO [dbo].[KhachHang]([TenKH],[Diachi],[CMND],[SDT])
     VALUES
           ('Khach hang 6', 'Ha Noi', '95312858133', '092375387')
INSERT INTO [dbo].[KhachHang]([TenKH],[Diachi],[CMND],[SDT])
     VALUES
           ('Khach hang 7', 'Ha Noi', '95312858134', '092375387')
INSERT INTO [dbo].[KhachHang]([TenKH],[Diachi],[CMND],[SDT])
     VALUES
           ('Khach hang 8', 'Ha Noi', '95312858135', '092375389')
INSERT INTO [dbo].[KhachHang]([TenKH],[Diachi],[CMND],[SDT])
     VALUES
           ('Khach hang 9', 'Ha Noi', '95312858136', '092375390')
INSERT INTO [dbo].[KhachHang]([TenKH],[Diachi],[CMND],[SDT])
     VALUES
           ('Khach hang 10', 'Ha Noi', '95312858137', '092375391')
INSERT INTO [dbo].[KhachHang]([TenKH],[Diachi],[CMND],[SDT])
     VALUES
           ('Khach hang 11', 'Ha Noi', '95312858138', '092375392')
INSERT INTO [dbo].[KhachHang]([TenKH],[Diachi],[CMND],[SDT])
     VALUES
           ('Khach hang 12', 'Ha Noi', '95312858139', '092375393')

insert into Maybay(TenMB,HangSanXuat,SoGheLoai1,SoGheLoai2,Tongsoghe)
values	
	('being1','tesna',50,50,100),
	('boing2','tesna',60,50,110),
	('boing3','tesna',70,40,110),
	('boing4','tesna',80,20,100),
	('boing5','tesna',90,30,120),
	('boing6','tesna',40,70,110),
	('boing7','tesna',40,60,100),
	('boing8','tesna',30,70,100),
	('boing9','tesna',20,80,100),
	('boing8','tesna',50,60,110);

insert into Sanbay(TenSB,DiaChi,TrangThai)
values
	('NoiBai','HaNoi','active'),
	('TanSon1','HCM','active'),
	('SaoVang','ThanhHoa','active'),
	('VanDon','QuangNinh','active'),
	('CatBi','HaiPhong','active'),
	('Vinh','NgheAn','active'),
	('PhuBai','Hue','active'),
	('CamRanh','KhanhHoa','active'),
	('PhuQUoc','KienGiang','active'),
	('PhuCat','BinhDinh','active');

insert into HoaDon(MaKH, MaNV, Ngaylap, TrangThai)
values 
	(1, 1, '20220618 10:34:09 AM','hoan_thanh'),
	(2, 2, '20220218 10:34:09 AM', 'da_huy'),
	(3, 3, '20220318 10:34:09 AM','hoan_thanh'),
	(4, 4, '20220118 10:34:09 AM', 'hoan_thanh'),
	(5, 5, '20220718 10:34:09 AM', 'hoan_thanh'),
	(6, 6, '20220618 10:34:09 AM', 'hoan_thanh'),
	(7, 2, '20220618 10:34:09 AM', 'hoan_thanh'),
	(8, 3, '20220618 10:34:09 AM', 'hoan_thanh'),
	(9, 4, '20220618 10:34:09 AM', 'hoan_thanh'),
	(10, 2, '20220618 10:34:09 AM','hoan_thanh'),
	(11, 1, '20220618 10:34:09 AM', 'da_huy'),
	(12, 1, '20220618 10:34:09 AM', 'hoan_thanh')

insert into TuyenBay(MaSanbaydi,MaSanbayden)
values
	(1,2),(2,3),(3,5),(6,1),(7,3),(4,6),(5,1),(8,2),(9,5),(10,8);

insert into Chuyenbay(MaTuyen,MaMB,ThoiGianKhoiHanh,ThoiGianHaCanh,SoGheLoai1,SoGheLoai2,TongSoGhe,TrangThai)
values
	(1,1,'20220618 10:34:09 AM','20220621 10:34:09 AM',50,50,100,'ket_thuc'),
	(2,2,'20220623 10:34:09 AM','20220625 10:34:09 AM',60,50,110,'ket_thuc'),
	(3,3,'20220626 10:34:09 AM','20220627 10:34:09 AM',70,40,110,'ket_thuc'),
	(4,4,'20220619 10:34:09 AM','20220630 10:34:09 AM',80,20,100,'dang_bay'),
	(5,5,'20220701 10:34:09 AM','20220702 10:34:09 AM',90,30,120,'chua_bay'),
	(6,6,'20220704 10:34:09 AM','20220705 10:34:09 AM',40,70,110,'chua_bay'),
	(7,7,'20220706 10:34:09 AM','20220708 10:34:09 AM',40,60,100,'chua_bay'),
	(8,8,'20220710 10:34:09 AM','20220711 10:34:09 AM',30,70,100,'dang_bay'),
	(9,9,'20220712 10:34:09 AM','20220713 10:34:09 AM',20,80,100,'chua_bay'),
	(10,10,'20220614 10:34:09 AM','20220616 10:34:09 AM',50,60,110,'chua_bay');
	
insert into ThongTinChiTietVe(Machuyenbay, Loaive, SoLuong, SoLuongCon, GiaVe)
values 
	(1, '1', 22, 22, 100000),
	(1, '2', 22, 22, 110000),
	(2, '1', 22, 22, 120000),
	(2, '2', 30, 30, 130000),
	(3, '2', 22, 22, 140000),
	(4, '1', 22, 22, 150000),
	(5, '2', 22, 22, 160000),
	(6, '2', 20, 20, 170000),
	(7, '1', 22, 22, 180000),
	(8, '2', 15, 15, 190000),
	(9, '1', 22, 22, 175000),
	(10,'1', 22, 22, 125000);

insert into VeBan(MaHoaDon, MaThongTinVe, SoLuong, ThanhTien)
values 
	(1, 2, 2, 200000),
	(1, 3, 3, 360000),
	(2, 4, 1, 130000),
	(3, 3, 6, 720000),
	(4, 5, 2, 250000),
	(5, 6, 3, 280000),
	(6, 7, 1, 160000),
	(7, 2, 2, 220000),
	(8, 1, 3, 300000),
	(9, 6, 2, 300000),
	(10,3, 2, 240000),
	(11, 6, 2, 1320000),
	(12, 2, 2, 200000)
