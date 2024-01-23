drop database if exists quan_ly_vat_tu;
create database if not exists quan_ly_vat_tu;
use quan_ly_vat_tu;
create table vat_tu (
id_vtu int primary key auto_increment,
ma_vtu varchar(50) not null,
ten_vtu varchar(50) not null,
don_vtinh varchar(50) not null,
gia_vtu int not null
);
create table ton_kho(
id_tkho int primary key auto_increment,
id_vtu int,
foreign key (id_vtu) references vat_tu(id_vtu),
sluong_dau float not null,
tong_sluong_nhap float not null,
tong_sluong_xuat float not null
);
create table nha_cc(
id_cc int primary key auto_increment,
ma_cc varchar(50) not null,
ten_cc varchar(50) not null,
dia_chi_cc varchar(50) not null,
so_dt int not null
);
create table don_dat_hang(
id_dhang int primary key auto_increment,
ma_dhang varchar(50) not null,
ngay_dhang date not null,
id_cc int,
foreign key (id_cc) references nha_cc(id_cc)
);
create table phieu_nhap(
id_pnhap int primary key auto_increment,
ma_pnhap varchar(50) not null,
ngay_nhap date not null,
id_dhang int,
foreign key (id_dhang) references don_dat_hang(id_dhang)
);
create table phieu_xuat(
id_pxuat int primary key auto_increment,
ma_pxuat varchar(50) not null,
ngay_xuat date not null,
ten_khach_hang varchar(50) not null
);
create table  chi_tiet_dh(
id_ct_dh int primary key auto_increment,
id_dhang int,
foreign key (id_dhang) references don_dat_hang(id_dhang),
id_vtu int,
foreign key (id_vtu) references vat_tu(id_vtu),
so_luong_dat float not null
);
create table chi_tiet_pnhap(
id_ct_pnhap int primary key auto_increment,
id_pnhap int,
foreign key (id_pnhap) references phieu_nhap(id_pnhap),
id_vtu int,
foreign key (id_vtu) references vat_tu(id_vtu),
sluong_nhap float not null,
don_gia_nhap float not null,
ghi_chu varchar(50)
);
create table chi_tiet_pxuat(
id_ct_pxuat int primary key auto_increment,
id_pxuat int,
foreign key (id_pxuat) references phieu_xuat(id_pxuat ),
id_vtu int,
foreign key (id_vtu) references vat_tu(id_vtu),
sluong_xuat float not null,
don_gia_xuat float not null,
ghi_chu varchar(50)
);

INSERT INTO `quan_ly_vat_tu`.`vat_tu` (`id_vtu`, `ma_vtu`, `ten_vtu`, `don_vtinh`, `gia_vtu`) VALUES ('1', 'vt1', 'sat', 'tan', '10');
INSERT INTO `quan_ly_vat_tu`.`vat_tu` (`id_vtu`, `ma_vtu`, `ten_vtu`, `don_vtinh`, `gia_vtu`) VALUES ('2', 'vt2', 'thep', 'tan', '7');
INSERT INTO `quan_ly_vat_tu`.`vat_tu` (`id_vtu`, `ma_vtu`, `ten_vtu`, `don_vtinh`, `gia_vtu`) VALUES ('3', 'vt3', 'xi mang', 'tan', '15');
INSERT INTO `quan_ly_vat_tu`.`vat_tu` (`id_vtu`, `ma_vtu`, `ten_vtu`, `don_vtinh`, `gia_vtu`) VALUES ('4', 'vt4', 'cat', 'khoi', '8');
INSERT INTO `quan_ly_vat_tu`.`vat_tu` (`id_vtu`, `ma_vtu`, `ten_vtu`, `don_vtinh`, `gia_vtu`) VALUES ('5', 'vt5', 'gach', 'tan', '12');

INSERT INTO `quan_ly_vat_tu`.`ton_kho` (`id_tkho`, `id_vtu`, `sluong_dau`, `tong_sluong_nhap`, `tong_sluong_xuat`) VALUES ('1', '1', '20', '20', '14');
INSERT INTO `quan_ly_vat_tu`.`ton_kho` (`id_tkho`, `id_vtu`, `sluong_dau`, `tong_sluong_nhap`, `tong_sluong_xuat`) VALUES ('2', '2', '15', '15', '12');
INSERT INTO `quan_ly_vat_tu`.`ton_kho` (`id_tkho`, `id_vtu`, `sluong_dau`, `tong_sluong_nhap`, `tong_sluong_xuat`) VALUES ('3', '5', '20', '18', '10');
INSERT INTO `quan_ly_vat_tu`.`ton_kho` (`id_tkho`, `id_vtu`, `sluong_dau`, `tong_sluong_nhap`, `tong_sluong_xuat`) VALUES ('4', '4', '18', '10', '10');
INSERT INTO `quan_ly_vat_tu`.`ton_kho` (`id_tkho`, `id_vtu`, `sluong_dau`, `tong_sluong_nhap`, `tong_sluong_xuat`) VALUES ('5', '3', '20', '16', '10');

INSERT INTO `quan_ly_vat_tu`.`nha_cc` (`id_cc`, `ma_cc`, `ten_cc`, `dia_chi_cc`, `so_dt`) VALUES ('1', 'cc1', 'hoa phat', 'hoa khanh', '0123');
INSERT INTO `quan_ly_vat_tu`.`nha_cc` (`id_cc`, `ma_cc`, `ten_cc`, `dia_chi_cc`, `so_dt`) VALUES ('2', 'cc2', 'van dat', 'hai chau', '0147');
INSERT INTO `quan_ly_vat_tu`.`nha_cc` (`id_cc`, `ma_cc`, `ten_cc`, `dia_chi_cc`, `so_dt`) VALUES ('3', 'cc3', 'van dung', 'lien chieu', '0159');

INSERT INTO `quan_ly_vat_tu`.`don_dat_hang` (`id_dhang`, `ma_dhang`, `ngay_dhang`, `id_cc`) VALUES ('1', 'dh1', '2024-01-14', '3');
INSERT INTO `quan_ly_vat_tu`.`don_dat_hang` (`id_dhang`, `ma_dhang`, `ngay_dhang`, `id_cc`) VALUES ('2', 'dh2', '2024-01-19', '2');
INSERT INTO `quan_ly_vat_tu`.`don_dat_hang` (`id_dhang`, `ma_dhang`, `ngay_dhang`, `id_cc`) VALUES ('3', 'dh3', '2023-12-12', '1');

INSERT INTO `quan_ly_vat_tu`.`phieu_nhap` (`id_pnhap`, `ma_pnhap`, `ngay_nhap`, `id_dhang`) VALUES ('1', 'pn1', '2023-01-14', '1');
INSERT INTO `quan_ly_vat_tu`.`phieu_nhap` (`id_pnhap`, `ma_pnhap`, `ngay_nhap`, `id_dhang`) VALUES ('2', 'pn2', '2023-02-10', '3');
INSERT INTO `quan_ly_vat_tu`.`phieu_nhap` (`id_pnhap`, `ma_pnhap`, `ngay_nhap`, `id_dhang`) VALUES ('3', 'pn3', '2023-04-18', '2');

INSERT INTO `quan_ly_vat_tu`.`phieu_xuat` (`id_pxuat`, `ma_pxuat`, `ngay_xuat`, `ten_khach_hang`) VALUES ('1', 'px1', '2024-01-15', 'thanh dung');
INSERT INTO `quan_ly_vat_tu`.`phieu_xuat` (`id_pxuat`, `ma_pxuat`, `ngay_xuat`, `ten_khach_hang`) VALUES ('2', 'px2', '2024-01-22', 'van dat le');
INSERT INTO `quan_ly_vat_tu`.`phieu_xuat` (`id_pxuat`, `ma_pxuat`, `ngay_xuat`, `ten_khach_hang`) VALUES ('3', 'px3', '2024-01-02', 'hai nhat');

INSERT INTO `quan_ly_vat_tu`.`chi_tiet_dh` (`id_ct_dh`, `id_dhang`, `id_vtu`, `so_luong_dat`) VALUES ('1', '1', '1', '10');
INSERT INTO `quan_ly_vat_tu`.`chi_tiet_dh` (`id_ct_dh`, `id_dhang`, `id_vtu`, `so_luong_dat`) VALUES ('2', '2', '2', '10');
INSERT INTO `quan_ly_vat_tu`.`chi_tiet_dh` (`id_ct_dh`, `id_dhang`, `id_vtu`, `so_luong_dat`) VALUES ('3', '3', '3', '5');
INSERT INTO `quan_ly_vat_tu`.`chi_tiet_dh` (`id_ct_dh`, `id_dhang`, `id_vtu`, `so_luong_dat`) VALUES ('4', '3', '4', '10');
INSERT INTO `quan_ly_vat_tu`.`chi_tiet_dh` (`id_ct_dh`, `id_dhang`, `id_vtu`, `so_luong_dat`) VALUES ('5', '2', '5', '9');
INSERT INTO `quan_ly_vat_tu`.`chi_tiet_dh` (`id_ct_dh`, `id_dhang`, `id_vtu`, `so_luong_dat`) VALUES ('6', '1', '4', '7');

INSERT INTO `quan_ly_vat_tu`.`chi_tiet_pnhap` (`id_ct_pnhap`, `id_pnhap`, `id_vtu`, `sluong_nhap`, `don_gia_nhap`, `ghi_chu`) VALUES ('1', '1', '1', '5', '15', 'km');
INSERT INTO `quan_ly_vat_tu`.`chi_tiet_pnhap` (`id_ct_pnhap`, `id_pnhap`, `id_vtu`, `sluong_nhap`, `don_gia_nhap`, `ghi_chu`) VALUES ('2', '2', '2', '2', '17', 'kkm');
INSERT INTO `quan_ly_vat_tu`.`chi_tiet_pnhap` (`id_ct_pnhap`, `id_pnhap`, `id_vtu`, `sluong_nhap`, `don_gia_nhap`, `ghi_chu`) VALUES ('3', '3', '3', '3', '18', 'km');
INSERT INTO `quan_ly_vat_tu`.`chi_tiet_pnhap` (`id_ct_pnhap`, `id_pnhap`, `id_vtu`, `sluong_nhap`, `don_gia_nhap`, `ghi_chu`) VALUES ('4', '3', '4', '4', '20', 'km');
INSERT INTO `quan_ly_vat_tu`.`chi_tiet_pnhap` (`id_ct_pnhap`, `id_pnhap`, `id_vtu`, `sluong_nhap`, `don_gia_nhap`, `ghi_chu`) VALUES ('5', '2', '5', '9', '28', 'kkm');
INSERT INTO `quan_ly_vat_tu`.`chi_tiet_pnhap` (`id_ct_pnhap`, `id_pnhap`, `id_vtu`, `sluong_nhap`, `don_gia_nhap`, `ghi_chu`) VALUES ('6', '1', '2', '8', '25', 'km');

INSERT INTO `quan_ly_vat_tu`.`chi_tiet_pxuat` (`id_ct_pxuat`, `id_pxuat`, `id_vtu`, `sluong_xuat`, `don_gia_xuat`, `ghi_chu`) VALUES ('1', '1', '1', '10', '50', 'km');
INSERT INTO `quan_ly_vat_tu`.`chi_tiet_pxuat` (`id_ct_pxuat`, `id_pxuat`, `id_vtu`, `sluong_xuat`, `don_gia_xuat`, `ghi_chu`) VALUES ('2', '2', '2', '10', '40', 'kkm');
INSERT INTO `quan_ly_vat_tu`.`chi_tiet_pxuat` (`id_ct_pxuat`, `id_pxuat`, `id_vtu`, `sluong_xuat`, `don_gia_xuat`, `ghi_chu`) VALUES ('3', '2', '4', '10', '52', 'km');
INSERT INTO `quan_ly_vat_tu`.`chi_tiet_pxuat` (`id_ct_pxuat`, `id_pxuat`, `id_vtu`, `sluong_xuat`, `don_gia_xuat`, `ghi_chu`) VALUES ('4', '3', '5', '12', '55', 'km');
INSERT INTO `quan_ly_vat_tu`.`chi_tiet_pxuat` (`id_ct_pxuat`, `id_pxuat`, `id_vtu`, `sluong_xuat`, `don_gia_xuat`, `ghi_chu`) VALUES ('5', '1', '3', '10', '51', 'kkm');
INSERT INTO `quan_ly_vat_tu`.`chi_tiet_pxuat` (`id_ct_pxuat`, `id_pxuat`, `id_vtu`, `sluong_xuat`, `don_gia_xuat`, `ghi_chu`) VALUES ('6', '1', '3', '5', '47', 'kkm');

-- Câu 1. Tạo view có tên vw_CTPNHAP bao gồm các thông tin sau: số phiếu nhập hàng, mã vật tư, số lượng nhập, đơn giá nhập, thành tiền nhập.

 create view vw_ctpnhap as
  select phieu_nhap.ma_pnhap, vat_tu.ma_vtu, chi_tiet_pnhap.sluong_nhap, chi_tiet_pnhap.don_gia_nhap, chi_tiet_pnhap.sluong_nhap*chi_tiet_pnhap.don_gia_nhap as thanh_tien
  from phieu_nhap join chi_tiet_pnhap on phieu_nhap.id_pnhap =  chi_tiet_pnhap.id_pnhap join vat_tu on chi_tiet_pnhap.id_vtu = vat_tu.id_vtu;
  
-- Câu 2. Tạo view có tên vw_CTPNHAP_VT bao gồm các thông tin sau: số phiếu nhập hàng, mã vật tư, tên vật tư, số lượng nhập, đơn giá nhập, thành tiền nhập.
create view vw_ctpnhap_vt as
  select phieu_nhap.ma_pnhap, vat_tu.ma_vtu,vat_tu.ten_vtu, chi_tiet_pnhap.sluong_nhap, chi_tiet_pnhap.don_gia_nhap, chi_tiet_pnhap.sluong_nhap*chi_tiet_pnhap.don_gia_nhap as thanh_tien
  from phieu_nhap join chi_tiet_pnhap on phieu_nhap.id_pnhap =  chi_tiet_pnhap.id_pnhap join vat_tu on chi_tiet_pnhap.id_vtu = vat_tu.id_vtu;
-- Câu 3. Tạo view có tên vw_CTPNHAP_VT_PN bao gồm các thông tin sau: số phiếu nhập hàng, ngày nhập hàng,
-- số đơn đặt hàng, mã vật tư, tên vật tư, số lượng nhập, đơn giá nhập, thành tiền nhập.
create view vw_ctpnhap_vt_pn as
  select phieu_nhap.ma_pnhap, phieu_nhap.ngay_nhap,chi_tiet_dh.so_luong_dat, vat_tu.ma_vtu,vat_tu.ten_vtu, chi_tiet_pnhap.sluong_nhap, chi_tiet_pnhap.don_gia_nhap, chi_tiet_pnhap.sluong_nhap*chi_tiet_pnhap.don_gia_nhap as thanh_tien
  from phieu_nhap join chi_tiet_pnhap on phieu_nhap.id_pnhap =  chi_tiet_pnhap.id_pnhap join vat_tu on chi_tiet_pnhap.id_vtu = vat_tu.id_vtu
  join chi_tiet_dh on vat_tu.id_vtu = chi_tiet_dh.id_vtu;
  -- câu 4 Tạo view có tên vw_CTPNHAP_VT_PN_DH bao gồm các thông tin sau: số phiếu nhập hàng, ngày nhập hàng, số đơn đặt hàng, 
  -- mã nhà cung cấp, mã vật tư, tên vật tư, số lượng nhập, đơn giá nhập, thành tiền nhập.
create view vw_ctpnhap_vt_pn_dh as
  select phieu_nhap.ma_pnhap, phieu_nhap.ngay_nhap,chi_tiet_dh.so_luong_dat,nha_cc.ma_cc , vat_tu.ma_vtu,vat_tu.ten_vtu, chi_tiet_pnhap.sluong_nhap, chi_tiet_pnhap.don_gia_nhap, chi_tiet_pnhap.sluong_nhap*chi_tiet_pnhap.don_gia_nhap as thanh_tien
  from phieu_nhap join chi_tiet_pnhap on phieu_nhap.id_pnhap =  chi_tiet_pnhap.id_pnhap join vat_tu on chi_tiet_pnhap.id_vtu = vat_tu.id_vtu
  join chi_tiet_dh on vat_tu.id_vtu = chi_tiet_dh.id_vtu
  join don_dat_hang on don_dat_hang.id_dhang = chi_tiet_dh.id_dhang
  join nha_cc on nha_cc.id_cc = don_dat_hang.id_cc ;
  -- Câu 5. Tạo view có tên vw_CTPNHAP_loc  bao gồm các thông tin sau: số phiếu nhập hàng, mã vật tư, số lượng nhập, 
  -- đơn giá nhập, thành tiền nhập. Và chỉ liệt kê các chi tiết nhập có số lượng nhập > 5.
   create view vw_ctpnhap_loc as
  select phieu_nhap.ma_pnhap, vat_tu.ma_vtu, chi_tiet_pnhap.sluong_nhap, chi_tiet_pnhap.don_gia_nhap, chi_tiet_pnhap.sluong_nhap*chi_tiet_pnhap.don_gia_nhap as thanh_tien
  from phieu_nhap join chi_tiet_pnhap on phieu_nhap.id_pnhap =  chi_tiet_pnhap.id_pnhap join vat_tu on chi_tiet_pnhap.id_vtu = vat_tu.id_vtu
  where chi_tiet_pnhap.sluong_nhap > 5;
  -- Câu 6. Tạo view có tên vw_CTPNHAP_VT_loc bao gồm các thông tin sau: số phiếu nhập hàng, mã vật tư, 
  -- tên vật tư, số lượng nhập, đơn giá nhập, thành tiền nhập. Và chỉ liệt kê các chi tiết nhập vật tư có đơn vị tính là tan.
  create view vw_ctpnhap_vt_loc as
  select phieu_nhap.ma_pnhap, vat_tu.ma_vtu,vat_tu.ten_vtu, chi_tiet_pnhap.sluong_nhap, chi_tiet_pnhap.don_gia_nhap, chi_tiet_pnhap.sluong_nhap*chi_tiet_pnhap.don_gia_nhap as thanh_tien
  from phieu_nhap join chi_tiet_pnhap on phieu_nhap.id_pnhap =  chi_tiet_pnhap.id_pnhap join vat_tu on chi_tiet_pnhap.id_vtu = vat_tu.id_vtu
  where vat_tu.don_vtinh like 'tan';
  -- Câu 7. Tạo view có tên vw_CTPXUAT bao gồm các thông tin sau: số phiếu xuất hàng, mã vật tư, số lượng xuất, đơn giá xuất, thành tiền xuất.
  create view vw_ctpxuat as
  select phieu_xuat.ma_pxuat, vat_tu.ma_vtu, chi_tiet_pxuat.sluong_xuat, chi_tiet_pxuat.don_gia_xuat, chi_tiet_pxuat.sluong_xuat*chi_tiet_pxuat.don_gia_xuat as thanh_tien_xuat
  from phieu_xuat join chi_tiet_pxuat on phieu_xuat.id_pxuat =  chi_tiet_pxuat.id_pxuat join vat_tu on chi_tiet_pxuat.id_vtu = vat_tu.id_vtu;
  
  -- Câu 8. Tạo view có tên vw_CTPXUAT_VT bao gồm các thông tin sau: số phiếu xuất hàng, mã vật tư, tên vật tư, số lượng xuất, đơn giá xuất.
  create view vw_ctpxuat_vt as
  select phieu_xuat.ma_pxuat, vat_tu.ma_vtu,vat_tu.ten_vtu, chi_tiet_pxuat.sluong_xuat, chi_tiet_pxuat.don_gia_xuat
  from phieu_xuat join chi_tiet_pxuat on phieu_xuat.id_pxuat =  chi_tiet_pxuat.id_pxuat join vat_tu on chi_tiet_pxuat.id_vtu = vat_tu.id_vtu;
  -- Câu 9. Tạo view có tên vw_CTPXUAT_VT_PX bao gồm các thông tin sau: 
  -- số phiếu xuất hàng, tên khách hàng, mã vật tư, tên vật tư, số lượng xuất, đơn giá xuất.
    create view vw_ctpxuat_vt_px as
  select phieu_xuat.ma_pxuat,phieu_xuat.ten_khach_hang, vat_tu.ma_vtu,vat_tu.ten_vtu, chi_tiet_pxuat.sluong_xuat, chi_tiet_pxuat.don_gia_xuat
  from phieu_xuat join chi_tiet_pxuat on phieu_xuat.id_pxuat =  chi_tiet_pxuat.id_pxuat join vat_tu on chi_tiet_pxuat.id_vtu = vat_tu.id_vtu;
  
  -- Tạo các stored procedure sau

-- Câu 1. Tạo Stored procedure (SP) cho biết tổng số lượng cuối của vật tư với mã vật tư là tham số vào.
delimiter //
create procedure vat_tu_sp( in ma_vt varchar(50) )
begin 
select ton_kho.sluong_dau + ton_kho.tong_sluong_nhap - ton_kho.tong_sluong_xuat as so_luong_cuoi, vat_tu.ma_vtu
from ton_kho join vat_tu on ton_kho.id_vtu = vat_tu.id_vtu
where vat_tu.ma_vtu = ma_vt;
end //
delimiter ;
call vat_tu_sp('vt1');
-- Câu 2. Tạo SP cho biết tổng tiền xuất của vật tư với mã vật tư là tham số vào, out là tổng tiền xuất
delimiter // 
create procedure tong_tien_xuat_vt(in ma_vat_tu varchar(50), out tong_tien_xuat float)
begin 
select chi_tiet_pxuat.sluong_xuat*chi_tiet_pxuat.don_gia_xuat as tong_tien_xuat, vat_tu.ma_vtu
from chi_tiet_pxuat join vat_tu on chi_tiet_pxuat.id_vtu = vat_tu.id_vtu
where vat_tu.ma_vtu = ma_vat_tu;
end //
delimiter ;
call tong_tien_xuat_vt('vt3',@tong_tien_xuat);
-- Câu 3. Tạo SP cho biết tổng số lượng đặt theo số đơn hàng với số đơn hàng là tham số vào.
delimiter //
create procedure tong_sluong_dat(in so_don_hang varchar(50))
begin 
select sum(chi_tiet_dh.so_luong_dat) as tong_so_dat, don_dat_hang.ma_dhang
from  chi_tiet_dh join don_dat_hang on chi_tiet_dh.id_dhang = don_dat_hang.id_dhang
group by don_dat_hang.ma_dhang
having don_dat_hang.ma_dhang = so_don_hang;
end //
delimiter ;
call tong_sluong_dat('dh1');
-- Câu 4. Tạo SP dùng để thêm một đơn đặt hàng.
delimiter //
create procedure them_don_hang(
in t_ma_dhang varchar(50) ,
in t_ngay_dhang date ,
in t_id_cc int
)
begin
insert into don_dat_hang(ma_dhang, ngay_dhang, id_cc) value (t_ma_dhang,t_ngay_dhang,t_id_cc);
end //
delimiter ;
call them_don_hang('dh4','2024-01-12',2);
select * from don_dat_hang;
-- Câu 5. Tạo SP dùng để thêm một chi tiết đơn đặt hàng.

delimiter //
create procedure them_ct_dh(
t_id_dhang int,
t_id_vtu int,
t_so_luong_dat float
)
begin 
insert into chi_tiet_dh(id_dhang,id_vtu,so_luong_dat) value (t_id_dhang, t_id_vtu, t_so_luong_dat);
end //
delimiter ;
call them_ct_dh(2,1,11);
select * from chi_tiet_dh;
