create function checkghe(@mmb int,@ghe_l1 int,@ghe_l2 int) returns int
as begin
	declare @ck int;
	if ((select SoGheLoai1 from MayBay where MaMB=@mmb)<@ghe_l1 or (select SoGheLoai2 from MayBay where MaMB=@mmb)<@ghe_l2)  
		set @ck=0
	else set @ck=1
	return @ck
end 

drop function checkghe

create function fc_KiemTraThoiGianBay
(@ThoiGianCatCanh datetime,
@ThoiGianHaCanh datetime)
returns int
as begin
	if @ThoiGianCatCanh > @ThoiGianHaCanh
		return 0
	else 
		if exists ( select * from Chuyenbay where @ThoiGianCatCanh > ThoiGianKhoiHanh and DATEADD(day, 1, @ThoiGianHaCanh) < ThoiGianHaCanh)
			return 0
		if exists ( select * from Chuyenbay where @ThoiGianCatCanh < ThoiGianKhoiHanh and  DATEADD(day, 1, @ThoiGianHaCanh) > ThoiGianKhoiHanh)
			return 0
		if exists ( select * from Chuyenbay where @ThoiGianCatCanh < DATEADD(day, 1, ThoiGianHaCanh) and @ThoiGianHaCanh > ThoiGianHaCanh)
			return 0
		else return 1
	return 1
	end
--------------------------------
create proc lapchuyenbay
@matuyenbay int, @mamaybay int, @tg_kh datetime, @tg_hc datetime,
@vloai1 int, @vloai2 int, @gloai1 money, @gloai2 money as begin tran
	insert into ChuyenBay(MaTuyen,MaMB,ThoiGianKhoiHanh,ThoiGianHaCanh,
							SoGheLoai1,SoGheLoai2,TongSoGhe,TrangThai)
	values (@matuyenbay, @mamaybay, @tg_kh, @tg_hc, @vloai1, 
			@vloai2,@vloai1+@vloai2,'chua_bay')
--if check thời gian sai –
	if (dbo.fc_KiemTraThoiGianBay(@tg_kh, @tg_hc) = 0)
rollback tran

--if check ghe sai--
else if (dbo.checkghe(@mamaybay,@vloai1,@vloai2)=0)  
	rollback tran
else begin
	commit tran;
	declare @mcb int;
	set @mcb=(select MaChuyenbay from ChuyenBay where MaTuyen=@matuyenbay and
		MaMB=@mamaybay and ThoiGianKhoiHanh=@tg_kh and ThoiGianHaCanh =@tg_hc and
		SoGheLoai1=@vloai1 and SoGheLoai2=@vloai2)
	insert into ThongTinChiTietVe(MaChuyenbay,Loaive,SoLuong,SoLuongCon,Giave)
	values 
		(@mcb,'1',@vloai1,@vloai1,@gloai1),
		(@mcb,'2',@vloai2,@vloai2,@gloai2);
end