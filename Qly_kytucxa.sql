create database Qly_kytucxa;
use Qly_kytucxa;


-- Khanh Phong , Thietbi_phong,Khu_nha ,thiet bi 
-- Phong
create table Phong
(
		Ma_Phong int primary key not null,
        Ten_Phong nvarchar(50) not null,
        Ma_Nha int not null,
        Loai_Phong nvarchar(20) not null,
        So_Nguoi_Toi_Da int not null,
        So_Nguoi_Dang_O int,
        Tien_Thue decimal not null,
        Ghi_Chu text
);


-- Hai ThutienPhong , traphong , que


-- Hieu sinh vien , Khoa , lop  ,thue phong