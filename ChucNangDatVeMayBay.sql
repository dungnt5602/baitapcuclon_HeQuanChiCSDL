

create proc pd_datvemaybay
@maKhach int,
@maNhanVien int,
@maThongTinVe int,
@soLuong int
as begin tran 
	declare @ngayTaoHoaDon datetime;
	set @ngayTaoHoaDon = getdate();
	insert into HoaDon (MaKH, MaNV, Ngaylap, TrangThai) values (@maKhach, @maNhanVien, getdate(), 'hoan_thanh')
-- check so luong nhap vao
if (@soLuong > (select SoLuongCon from ThongTinChiTietVe where MaThongTinVe = @maThongTinVe))
	rollback tran
else begin
	commit tran;
		declare @maHoaDon int
		declare @giaTien money, @thanhTien money
		set @giaTien = (select GiaVe from ThongTinChiTietVe where MaThongTinVe = @maThongTinVe)
		set @thanhTien = @giaTien * @soLuong
		set @maHoaDon = (select MaHD from HoaDon where MaKH = @maKhach
		and Ngaylap = @ngayTaoHoaDon and @maNhanVien = MaNV)

		insert into VeBan(MaHoaDon, MaThongTinVe, SoLuong, ThanhTien)
		values (@maHoaDon, @maThongTinVe, @soLuong, @thanhTien)
	end
