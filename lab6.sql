Create DataBase QLMonHoc;
use QLMonHoc;

---Tao Table BoMon
Create Table BoMon
(
MaBM char(4) primary key,
TenBM nvarchar(20)
);
Insert into BoMon values('CNPM',N'Công Nghệ Phần Mềm');
Insert into BoMon values('MMT',N'Mạng Máy Tính');
Create Table MonHoc
(
MaMH char(4) primary key,
TenMH nvarchar(20),
SoTiet bigint,
MaBM char(4) foreign key references BoMon(MaBM) on delete cascade
);
Insert into MonHoc values('MH01',N'Lập Trình Java',60,'CNPM');
Insert into MonHoc values('MH02',N'Lập Trình Android',60,'CNPM');
Insert into MonHoc values('MH03',N'Lập Trình PHP',60,'CNPM');
Insert into MonHoc values('MH04',N'Mạng Máy Tính',60,'MMT');
Insert into MonHoc values('MH05',N'Kiến Trúc Máy Tính',60,'MMT');
