//masuk kedalam mariadb dengan command prompt xampp
C:\xampp\mysql\bin>mysql -u root -p
//melihat seluruh database
MariaDB [(none)]>show databases;
//membuat database baru
MariaDB [(none)]>CREATE DATABASE dbtoko1;
//menggunakan db
MariaDB [(none)]>USE dbtoko1;
//Buat table kartu
MariaDB [dbpos]> create table kartu(
    -> id int auto_increment primary key,
    -> kode varchar(6) unique,
    -> nama varchar(30) not null,
    -> diskon double,
    -> iuran double);
//Buat table pelanggan
MariaDB [dbpos]> create table pelanggan(
    -> id int auto_increment primary key,
    -> kode varchar(10) unique,
    -> nama varchar(45),
    -> jk char(1),
    -> tmp_lahir varchar(30),
    -> tgl_lahir date,
    -> email varchar(45),
    -> kartu_id int not null references kartu(id));
//Buat table pesanan
MariaDB [dbpos]> create table pesanan(
    -> id int not null auto_increment primary key,
    -> tanggal date,
    -> total double,
    -> pelanggan_id int not null references pelanggan(id));
//Buat table Pembayaran
MariaDB [dbpos]> create table pembayaran(
    -> id int not null auto_increment primary key,
    -> nokuitansi varchar(10) unique,
    -> tanggal date,
    -> jumlah double,
    -> ke int,
    -> pesanan_id int not null references pesanan(id));
//Buat table Jenis_produk
MariaDB [dbpos]> create table jenis_produk(
    -> id int not null auto_increment primary key,
    -> nama varchar(45));
//Buat table produk
    -> id int not null auto_increment primary key,
    -> nama varchar(45));




