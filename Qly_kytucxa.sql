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
create table Sinhvien
(
	ma_sv int primary key not null,
    Ten_sv varchar(50) not null,
    Ngaysinh int not null,
    Gioitinh varchar(10) not null,
    MaQue int not null,
    MaKhoa int not null,
    MaLop int not null
);

create table Khoa
(
	Makhoa int primary key not null,
    Tenkhoa varchar(20)
);

create table Lop
(
	Malop int primary key not null,
    Tenlop int not null,
    Makhoa int not null,
    constraint fk_makhoa foreign key (Makhoa) references Khoa(Makhoa)
);

create table Que
(
	Maque int primary key not null,
    Tenque varchar(20) not null
);
