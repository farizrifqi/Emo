-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Des 2020 pada 16.36
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_harga`
--

CREATE TABLE `riwayat_harga` (
  `id` int(11) NOT NULL,
  `harga` int(255) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `riwayat_harga`
--

INSERT INTO `riwayat_harga` (`id`, `harga`, `waktu`) VALUES
(1, 953000, '2020-12-08 12:28:11'),
(2, 966000, '2020-12-08 12:55:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_login`
--

CREATE TABLE `riwayat_login` (
  `id` int(10) NOT NULL,
  `id_user` int(6) NOT NULL,
  `ua` varchar(30) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `riwayat_login`
--

INSERT INTO `riwayat_login` (`id`, `id_user`, `ua`, `ip`, `time`) VALUES
(1, 1, 'Mozilla/5.0 (Windows NT 10.0; ', '::1', '2020-12-07 08:23:37'),
(2, 2, 'Mozilla/5.0 (Windows NT 10.0; ', '::1', '2020-12-07 08:36:29'),
(3, 1, 'Mozilla/5.0 (Windows NT 10.0; ', '::1', '2020-12-07 08:38:16'),
(4, 6, 'Mozilla/5.0 (Windows NT 10.0; ', '::1', '2020-12-08 11:21:45'),
(5, 1, 'Mozilla/5.0 (Windows NT 10.0; ', '::1', '2020-12-08 11:33:41'),
(6, 1, 'Mozilla/5.0 (Windows NT 10.0; ', '::1', '2020-12-08 12:44:45'),
(7, 1, 'Mozilla/5.0 (Windows NT 10.0; ', '::1', '2020-12-08 15:09:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(6) NOT NULL,
  `id_user` int(6) NOT NULL,
  `tipe` varchar(30) NOT NULL,
  `deskripsi` varchar(30) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_user`, `tipe`, `deskripsi`, `jumlah`, `time`) VALUES
(1, 1, 'Deposit', 'via BCA VA', 10000000, '2020-12-08 12:05:38'),
(2, 1, 'Deposit', 'via BCA VA', 100000, '2020-12-08 12:07:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(6) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_depan` varchar(30) NOT NULL,
  `nama_belakang` varchar(30) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `register_date` date NOT NULL,
  `last_login` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `nama_depan`, `nama_belakang`, `no_hp`, `tanggal_lahir`, `alamat`, `register_date`, `last_login`) VALUES
(1, 'farizrifqi26@gmail.com', 'OTBUVVpwblV0cEZlSnBYVA==', 'Fariz', 'Rifqi', 'Fariz', '2020-11-07', 'asdf', '2020-12-07', '2020-12-08 23:09:22'),
(2, 'refrira@gmail.com', 'PT1RUDljMllzcFZiakJuU1lsRmVKcFhU', 'Refri', 'Rizky', '085155094006', '2020-11-07', 'asdf', '2020-12-07', '2020-12-07 15:38:06'),
(3, 'zeranel@gmail.com', 'PT1RUDljV1pzcEVXWlZuVkhKR2VKcFhU', 'Zere', 'Nale', '082190450269', '2020-11-07', 'Jl Kaliurang', '2020-12-07', '2020-12-07 15:43:49'),
(4, 'agastian@gmail.com', 'PT1RUDlFVld1WmtNamhYUzYxRWVKcFhU', 'Agastian', 'Rizki', '085155094006', '2020-11-07', 'Jl Concat', '2020-12-07', '2020-12-07 15:46:30'),
(5, 'rafiq@gmail.com', 'NGxrZU5oWFM2MUVlSnBYVA==', 'Rafiq', 'Ezza', '082142312324', '2020-11-07', 'sadfasdf', '2020-12-07', '2020-12-07 15:47:30'),
(6, 'ansellma@gmail.com', 'NGxrZU5oWFM2MUVlSnBYVA==', 'Ansellma', 'Putri', '082190450269', '2020-11-08', 'Jl Kaliurang', '2020-12-08', '2020-12-08 19:19:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `riwayat_harga`
--
ALTER TABLE `riwayat_harga`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `riwayat_login`
--
ALTER TABLE `riwayat_login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `riwayat_harga`
--
ALTER TABLE `riwayat_harga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `riwayat_login`
--
ALTER TABLE `riwayat_login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
