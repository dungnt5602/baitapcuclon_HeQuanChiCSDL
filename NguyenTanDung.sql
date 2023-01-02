-- Tra cứu
Điểm đi, điểm đến
Ngày đi

-- Lập lịch tuyến bay
input: sân bay xuất phát, sân bay đến
điều kiện:
không trùng sân bay đi và sân bay đến
output: cập nhật tuyến bay vào bảng TuyenBay
-- Xoá tuyến bay: cập nhật trạng thái bảng TuyenBay

-- Lập lịch chuyến bay
input: MaTuyenBay, MaMB, ThoiGianKhoiHanh, ThoiGianBayDuKien
GhiChu
+ Kiểm tra máy bay trùng thời gian bay: kiểm tra bảng chuyenbay
ThoiGianKhoiHanh > thời gian bay + thời gian ước tính + 1 ngày
+ Kiểm tra tuyến bay (còn hoạt động không)
+ Tổng số ghế tự gen = số ghế máy bay
+ Tự gen vé trên bảng thông tin chi tiết vé (2 loại)


output: Cập nhật thông tin chuyến bay vào bảng ChuyenBay
-- Tổng kết thông tin bay
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


