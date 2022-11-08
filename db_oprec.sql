-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Nov 2022 pada 09.47
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_oprec`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pendaftar`
--

CREATE TABLE `tb_pendaftar` (
  `npm` int(8) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jurusan` varchar(60) NOT NULL,
  `prodi` varchar(60) NOT NULL,
  `berkas` varchar(60) NOT NULL,
  `gambar` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('Student','Admin','Supervisor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
(9, 'smpn2', '$2y$10$m9OO5w4oejGECTFYMMYrkOFkq7e2L7.ihexVSw4n5eQMP6r.UAuwi', 'Student'),
(12, 'yogi', 'e1775ed9c063ceaa461fc5debbc7a409', 'Admin'),
(13, 'bunggi', 'f779cb9489a260467bb5f1bf4fc6bdc6', 'Supervisor');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_pendaftar`
--
ALTER TABLE `tb_pendaftar`
  ADD PRIMARY KEY (`npm`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
