-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Des 2020 pada 09.56
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
(3, 1, 'Mozilla/5.0 (Windows NT 10.0; ', '::1', '2020-12-07 08:38:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(6) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
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
(1, 'farizrifqi26@gmail.com', 'asdf', 'Fariz', 'Rifqi', 'Fariz', '2020-11-07', 'asdf', '2020-12-07', '2020-12-07 15:30:46'),
(2, 'refrira@gmail.com', '123123', 'Refri', 'Rizky', '085155094006', '2020-11-07', 'asdf', '2020-12-07', '2020-12-07 15:38:06'),
(3, 'zeranel@gmail.com', 'Bismillah123', 'Zere', 'Nale', '082190450269', '2020-11-07', 'Jl Kaliurang', '2020-12-07', '2020-12-07 15:43:49'),
(4, 'agastian@gmail.com', 'agas123123', 'Agastian', 'Rizki', '085155094006', '2020-11-07', 'Jl Concat', '2020-12-07', '2020-12-07 15:46:30'),
(5, 'rafiq@gmail.com', '123123123', 'Rafiq', 'Ezza', '082142312324', '2020-11-07', 'sadfasdf', '2020-12-07', '2020-12-07 15:47:30');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `riwayat_login`
--
ALTER TABLE `riwayat_login`
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
-- AUTO_INCREMENT untuk tabel `riwayat_login`
--
ALTER TABLE `riwayat_login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
