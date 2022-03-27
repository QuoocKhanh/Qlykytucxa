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
create table Thietbi_Phong
(
		Ma_Phong int not null,
        Ma_Thiet_Bi int not null,
        So_Luong int,
        Tinh_Trang nvarchar(50) not null,
        FOREIGN KEY (Ma_Phong) REFERENCES Phong(Ma_Phong),
        FOREIGN KEY (Ma_Thiet_Bi) REFERENCES Thiet_Bi(Ma_Thiet_Bi)
);
create table Khu_nha
(
		Ma_Nha int primary key not null,
        Ten_Nha nvarchar(20) not null
);
create table Thiet_Bi
(
		Ma_Thiet_Bi int primary key not null,
        Ten_Thiet_Bi nvarchar(30) not null,
        Gia_Tri decimal not null 
);
create table Account 
(
	Account_id int primary key,
	Username nvarchar(100) not null,
    Password nvarchar(1000) not null,
    Account_type int not null default 0 -- 0 la staff va 1 la admin
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
