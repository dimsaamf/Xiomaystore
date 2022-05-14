-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Mar 2022 pada 04.55
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ta_sbd_anhar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `psword` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `email`, `psword`, `nama`, `alamat`) VALUES
(1, 'anhar@mail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Anhar', 'Jakarta'),
(2, 'admin@mail.com', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'Semarang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_aksesoris`
--

CREATE TABLE `tb_aksesoris` (
  `id_aksesoris` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_aksesoris`
--

INSERT INTO `tb_aksesoris` (`id_aksesoris`, `nama`, `gambar`, `harga`, `stok`) VALUES
(2, 'Xiaomi Mi 65W Fast Charger', 'aksesoris1637889321.jpg', 350000, 5),
(3, 'USB C to C', 'aksesoris1637919043.jpg', 100000, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_ekosistem`
--

CREATE TABLE `tb_ekosistem` (
  `id_produk` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_ekosistem`
--

INSERT INTO `tb_ekosistem` (`id_produk`, `nama`, `gambar`, `harga`, `stok`) VALUES
(2, 'Mi Band 5', 'ekosistem1637891866.jpg', 350000, 25),
(3, 'Mi Band 6', 'ekosistem1637891919.jpg', 500000, 49);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_hp`
--

CREATE TABLE `tb_hp` (
  `id_hp` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_hp`
--

INSERT INTO `tb_hp` (`id_hp`, `nama`, `gambar`, `harga`, `stok`) VALUES
(7, 'Xiaomi Mi 11T', 'hp1637858540.jpg', 6500000, 6),
(8, 'Xiaomi Mi 11 Lite (pink)', 'hp1637860767.jpg', 4499000, 18),
(11, 'mi 10', 'hp1638159545.png', 6500000, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pembeli`
--

CREATE TABLE `tb_pembeli` (
  `id_pembeli` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pembeli`
--

INSERT INTO `tb_pembeli` (`id_pembeli`, `nama`, `alamat`) VALUES
(36, 'Anhar', 'Gando, Kenagarian Piobang, Kec. Payakumbuh, Kab. Lima Puluh Kota'),
(37, 'Indah', 'Taeh Bukik'),
(38, 'Anhar', 'Semarang'),
(39, 'Anhar', 'Jakarta Pusat'),
(40, 'Mas Shadam', 'Semarang'),
(41, 'Anhar', 'Payakumbuh'),
(42, 'Aa', 'Aa'),
(43, 'Anhar', 'Payakumbuh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `produk` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `tanggal`, `produk`, `harga`) VALUES
(36, '2021-11-28', 'Xiaomi Mi 11 Lite (pink)', 4499000),
(37, '2021-11-28', 'Xiaomi Mi 65W Fast Charger', 350000),
(38, '2021-11-28', 'Mi Band 5', 350000),
(39, '2021-11-28', 'Xiaomi Mi 11T', 6500000),
(40, '2021-11-29', 'USB C to C', 100000),
(41, '2021-12-01', 'mi 10', 6500000),
(42, '2021-12-01', 'USB C to C', 100000),
(43, '2021-12-01', 'mi 10', 6500000);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_transaksi`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_transaksi` (
`tanggal` varchar(50)
,`produk` varchar(100)
,`harga` int(11)
,`nama` varchar(50)
,`alamat` text
);

-- --------------------------------------------------------

--
-- Struktur untuk view `view_transaksi`
--
DROP TABLE IF EXISTS `view_transaksi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_transaksi`  AS SELECT `tb_transaksi`.`tanggal` AS `tanggal`, `tb_transaksi`.`produk` AS `produk`, `tb_transaksi`.`harga` AS `harga`, `tb_pembeli`.`nama` AS `nama`, `tb_pembeli`.`alamat` AS `alamat` FROM (`tb_transaksi` join `tb_pembeli` on(`tb_transaksi`.`id_transaksi` = `tb_pembeli`.`id_pembeli`)) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tb_aksesoris`
--
ALTER TABLE `tb_aksesoris`
  ADD PRIMARY KEY (`id_aksesoris`);

--
-- Indeks untuk tabel `tb_ekosistem`
--
ALTER TABLE `tb_ekosistem`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `tb_hp`
--
ALTER TABLE `tb_hp`
  ADD PRIMARY KEY (`id_hp`);

--
-- Indeks untuk tabel `tb_pembeli`
--
ALTER TABLE `tb_pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indeks untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_aksesoris`
--
ALTER TABLE `tb_aksesoris`
  MODIFY `id_aksesoris` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_ekosistem`
--
ALTER TABLE `tb_ekosistem`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_hp`
--
ALTER TABLE `tb_hp`
  MODIFY `id_hp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tb_pembeli`
--
ALTER TABLE `tb_pembeli`
  MODIFY `id_pembeli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
