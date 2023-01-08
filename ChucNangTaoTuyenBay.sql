-- Lập lịch tuyến bay
--input: sân bay xuất phát, sân bay đến
--điều kiện:
--không trùng sân bay đi và sân bay đến
--output: cập nhật tuyến bay vào bảng TuyenBay
-- Xoá tuyến bay: cập nhật trạng thái bảng TuyenBay
create trigger tg_TaoTuyenBay
	on TuyenBay for insert as
	declare @maSBdiInsert int, @maSBdenInsert int;
	set @maSBdiInsert = (select MaSanbaydi from inserted)
	set @maSBdenInsert = (select MaSanbayden from inserted)
	if @maSBdenInsert = null or @maSBdiInsert = null
		rollback transaction;
	declare @ketqua int;
	set @ketqua = 0;

	declare @maSBdi int, @maSBden int;
	declare checkTuyenBay cursor dynamic scroll
	for select MaSanbaydi, MaSanbayden from TuyenBay

	open checkTuyenBay;
	fetch next from checkTuyenBay into @maSBdi, @maSBden;
	while (@@FETCH_STATUS = 0)
	Begin 
		if (@maSBdiInsert = @maSBdi) and (@maSBdenInsert = @maSBden)
			begin
				set @ketqua = @ketqua + 1;
			end
		fetch next from checkTuyenBay into @maSBdi, @maSBden;
	end;
	close checkTuyenBay;
	deallocate checkTuyenBay;

	if @ketqua > 1
		rollback transaction;


drop trigger tg_TaoTuyenBay

insert into TuyenBay(MaSanbaydi,MaSanbayden)
values (6, 3);
