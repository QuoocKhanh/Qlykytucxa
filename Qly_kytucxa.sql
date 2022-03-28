create database Qly_kytucxa;
use Qly_kytucxa;

create table Khunha
(
		MaNha int primary key not null,
        TenNha varchar(20) not null
);

create table Phong
(
		MaPhong int primary key not null,
        TenPhong varchar(50) not null,
        MaNha int not null,
        LoaiPhong varchar(20) not null,
        SoNguoiToiDa int not null,
        SoNguoiDangO int,
        TienThue decimal not null,
        GhiChu text,
        foreign key (Manha) references Khunha(Manha)
);

create table ThietBi
(
		MaThietBi int primary key not null,
        TenThietBi varchar(30) not null,
        GiaTri decimal not null 
);

create table ThietbiPhong
(
		MaPhong int not null,
        MaThietBi int not null,
        SoLuong int,
        TinhTrang varchar(50) not null,
        FOREIGN KEY (MaPhong) REFERENCES Phong(MaPhong),
        FOREIGN KEY (MaThietBi) REFERENCES ThietBi(MaThietBi)
);

create table Account 
(
	AccountId int primary key,
	Username varchar(100) not null,
    Password varchar(1000) not null,
    AccountType int not null default 0 -- 0 la staff va 1 la admin
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
    foreign key (Makhoa) references Khoa(Makhoa)
);

create table Que
(
	Maque int primary key not null,
    Tenque varchar(20) not null
);

create table Sinhvien
(
	Masv int primary key not null,
    Tensv varchar(50) not null,
    Ngaysinh int not null,
    Gioitinh varchar(10) not null,
    MaQue int not null,
    MaKhoa int not null,
    MaLop int not null,
    foreign key (MaKhoa) references Khoa(MaKhoa),
    foreign key (MaLop) references Lop(MaLop),
    foreign key (MaQue) references Que(MaQue)
);

create table Thuephong
(
	Masothue int primary key not null,
    Masv int not null,
    Maphong int not null,
    NgayBDau date not null,
    Ngaykt date not null,
    Ghichu text,
    foreign key (Maphong) references Phong(Maphong),
    foreign key (Masv) references Sinhvien(Masv)
);

create table Thutienphong
(
	Maphong int not null,
    Thang int not null,
    Nam int not null,
    primary key (Maphong, Thang, Nam),
    Tiennha decimal not null,
    Tiendien decimal not null,
    Tiennuoc decimal not null,
    Tienvesinh decimal not null,
    Tienphat decimal,
    Ngayhethan date not null,
    Ngaydong date not null,
    foreign key (Maphong) references Phong(Maphong)
);

create table Traphong
(
	Masothue int not null,
    Ngaytra date not null,
    Tienvipham decimal,
    foreign key (Masothue) references Thuephong (Masothue)
);