-- Tra cứu
Điểm đi, điểm đến
Ngày đi

-- Lập lịch tuyến bay
input: sân bay xuất phát, sân bay đến
điều kiện:
không trùng sân bay đi và sân bay đến
output: cập nhật tuyến bay vào bảng TuyenBay
-- Xoá tuyến bay: cập nhật trạng thái bảng TuyenBay

-- Lập chuyến bay
input: MaTuyenBay, MaMB, ThoiGianKhoiHanh, ThoiGianBayDuKien,
GhiChu
+ Kiểm tra máy bay trùng thời gian bay: kiểm tra bảng chuyenbay
ThoiGianKhoiHanh > thời gian bay + thời gian ước tính + 1 ngày
+ Kiểm tra tuyến bay (còn hoạt động không)
+ Tổng số ghế tự gen = số ghế máy bay
+ Tự gen vé trên bảng thông tin chi tiết vé (2 loại)

-- Chốt lập chuyến bay
input: Matuyenbay, Mamb, ThoiGianKhoiHanh, ThoiGianHaCanh, loai 1, loai 2, GiaLoai1, GiaLoai2 (tran)
- Check tuyen bay: Còn hoạt động không ? (function) return 0 or 1 
- Check thoi gian khoi hanh  < thoi gian ha canh (thông tin nhập vào) 
- Check máy bay: 
thoigiankhoihanh2 -> thoigian_ha_canh2 + 1d(nhập vào) 4/8 => 6/8
thoigiankhoihanh1 -> thoigian_ha_canh1  (có sẵn) 8/8 => 11/8
thoigiankhoihanh2 -> thoigian_ha_canh2 (nhập vào) 4/8 => 6/8
condition: select * from chuyenbay where tghc2 + 1d < tgkh1 (bay trước) || tghc1 + 1d < tgkh2 (bay sau))(proc)
@bienMaChuyenBay = machuyenbay 
- check so ghe: trong bảng máy bay

insert 
- Gen data: số ghế (số loại 1, loại 2, tổng) (trigger)
loai 1 > insert
null > lấy số ghế default trong bảng máy bay
-- Chốt lập chuyến bay

output: Cập nhật thông tin chuyến bay vào bảng ChuyenBay
-- Đặt vé
input: 
thông tin khách hàng: (CMND, tên, số điện thoại, địa chỉ)

-- Đổi vé
+ check ngày đặt (1 ngày)
+ check ngày bay (trước 3 ngày)
+ xoá hoá đơn cũ, tạo hoá đơn mới

-- Huỷ vé
+ check ngày bay (trước 3 ngày ko huỷ)
+ check ngày lập hoá đơn (quá 1 ngày thì ko cho huỷ)
-- Tính số lượng vé và doanh thu
-- Tính tỷ lệ từng chuyến bay

-- Tổng kết thông tin bay

--Đặt vé
input: makhach, manhanvien,ngaytaohoadon(getdate()),machuyen,loaive,so ---proc
+ tao hoa don(makhach,manv,ngaylap)
+ tạo vé bán(mahd,ma_tt_ve,soluong) 
+ tạo trigger trừ số lượng vé trong tt chi tiết vé sau khi tạo vé bán
+ tao function tinh tong tien hoa don
+ tao view hien thi mahd,makhach,manv,ngaylaphd,tongtien