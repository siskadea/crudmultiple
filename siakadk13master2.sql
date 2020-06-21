-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2020 at 03:50 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siakadk13master2`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absensi` varchar(5) NOT NULL,
  `nis` int(11) DEFAULT NULL,
  `tgl_absen` date DEFAULT NULL,
  `status` enum('A','I','S') DEFAULT NULL,
  `tahun_ajar` varchar(10) DEFAULT NULL,
  `semester` enum('Ganjil','Genap') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `anggota_kelas`
--

CREATE TABLE `anggota_kelas` (
  `id_anggotakls` varchar(5) NOT NULL,
  `id_kelas` varchar(5) NOT NULL,
  `nis` int(11) NOT NULL,
  `tahun_ajaran` varchar(10) DEFAULT NULL,
  `semester` enum('Ganjil','Genap') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota_kelas`
--

INSERT INTO `anggota_kelas` (`id_anggotakls`, `id_kelas`, `nis`, `tahun_ajaran`, `semester`) VALUES
('AK001', '7A', 7001, '2020', 'Genap'),
('AK002', '7I', 7002, '2020', 'Genap'),
('AK003', '7I', 7003, '2020', 'Genap'),
('AK004', '7I', 7004, '2020', 'Genap'),
('AK005', '7I', 7005, '2020', 'Genap'),
('AK006', '7I', 7006, '2020', 'Genap'),
('AK007', '7I', 7007, '2020', 'Genap');

-- --------------------------------------------------------

--
-- Table structure for table `deskripsi_nilai`
--

CREATE TABLE `deskripsi_nilai` (
  `id_deskripsi` varchar(5) NOT NULL,
  `predikat_deskripsi` varchar(5) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deskripsi_nilai`
--

INSERT INTO `deskripsi_nilai` (`id_deskripsi`, `predikat_deskripsi`, `deskripsi`) VALUES
('1', 'A', 'Sangat baik'),
('2', 'B', 'Memiliki kemampuan sangat baik dalam memahami teknik permainan bola voli, teknik passing, servis berkemampuan baik dalam passing'),
('3', 'C', 'Memiliki kemampuan sangat baik dalam Iman kepada Allah SWT Thaharah shalat berjama\'ah berkemampuan baik dalam jujur, amanah, dan istiqomah perjuangan Nabi Muhammad SAW pentingnya Ilmu Pengetahuan\r\n'),
('4', 'D', 'deskripsi BINA'),
('5', 'A', 'deskripsi AGAMA'),
('6', 'B', 'deskripsi agama'),
('7', 'C', 'deskripsi agama'),
('8', 'D', 'deskripsi agama');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` varchar(5) NOT NULL,
  `id_jabatan` varchar(5) DEFAULT NULL,
  `nip_guru` varchar(20) DEFAULT NULL,
  `nama_guru` varchar(50) DEFAULT NULL,
  `alamat_guru` text DEFAULT NULL,
  `agama_guru` enum('Islam','Kristen','Katolik','Hindu','Budha') DEFAULT NULL,
  `no_telp_guru` varchar(20) DEFAULT NULL,
  `jk_guru` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `tmp_lahir_guru` varchar(30) DEFAULT NULL,
  `tgl_lahir_guru` date DEFAULT NULL,
  `username_g` varchar(20) DEFAULT NULL,
  `password_g` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `id_jabatan`, `nip_guru`, `nama_guru`, `alamat_guru`, `agama_guru`, `no_telp_guru`, `jk_guru`, `tmp_lahir_guru`, `tgl_lahir_guru`, `username_g`, `password_g`) VALUES
('GR001', 'JBT01', '191335000901234567', 'Dina', 'Ds. Ngaringan, Kec. Gandusari, Kab. Blitar', 'Islam', '082132456123', 'Perempuan', 'Blitar', '1988-05-14', 'guru1', 'guru1'),
('GR003', 'JBT03', '199123459800020013', 'Arif', 'Karangploso, Malang', 'Islam', '082345123600', 'Laki-laki', 'Malang', '1987-05-23', 'guru3', 'guru3'),
('GR004', 'JBT04', '199123459800020003', 'Umita', 'Jl. Simpang mendut no.11, Kota Malang', 'Islam', '082345123678', 'Perempuan', 'Malang', '1990-05-29', 'guru4', 'guru4'),
('GR005', 'JBT05', '199123459800020009', 'Ulvi', 'Jl. Simpang Borobudur no.11, Kota Malang', 'Islam', '082345123987', 'Perempuan', 'Malang', '1986-05-19', 'guru5', 'd0c5563b2d314c3d94959b73c30256a3'),
('GR006', 'JBT05', '198765432100012001', 'Ratna Anggun', 'Karangploso, Malang', 'Islam', '087756890206', 'Perempuan', 'Malang', '1988-09-10', 'guru6', '382a97b190cd838177fe39fc3c53e1c3'),
('GR007', 'JBT05', '198765432100013001', 'Sintia Harumsari', 'Pakisaji, Malang', 'Islam', '085606466235', 'Perempuan', 'Malang', '1987-10-09', 'guru7', 'bda61bdfcd4007041f0c3e2b6c335d18'),
('GR009', 'JBT05', '199123459800020008', 'Yuliana Safira', 'Jl. Borobudur no.9, Kota Malang', 'Islam', '082345123888', 'Perempuan', 'Malang', '1990-06-26', 'GR009', 'a54e9f129b2173b8a8e7bc4523a314c4');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` varchar(5) NOT NULL,
  `jabatan` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `jabatan`) VALUES
('JBT01', 'Kepala Sekolah'),
('JBT02', 'Waka Kurikulum'),
('JBT03', 'Wali Kelas'),
('JBT04', 'Guru BP'),
('JBT05', 'Guru Mapel');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(5) NOT NULL,
  `id_guru` varchar(5) DEFAULT NULL,
  `nama_kelas` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `id_guru`, `nama_kelas`) VALUES
('7A', 'GR003', '7A'),
('7B', NULL, '7B'),
('7C', NULL, '7C'),
('7D', NULL, '7D'),
('7E', NULL, '7E'),
('7F', NULL, '7F'),
('7G', NULL, '7G'),
('7H', NULL, '7H'),
('7I', NULL, '7I'),
('8A', NULL, '8A'),
('8B', NULL, '8B'),
('8C', NULL, '8C'),
('8D', NULL, '8D'),
('8E', NULL, '8E'),
('8F', NULL, '8F'),
('8G', NULL, '8G'),
('8H', NULL, '8H'),
('8I', NULL, '8I'),
('9A', NULL, '9A'),
('9B', NULL, '9B'),
('9C', NULL, '9C'),
('9D', NULL, '9D'),
('9E', NULL, '9E'),
('9F', NULL, '9F'),
('9G', NULL, '9G'),
('9H', NULL, '9H'),
('9I', NULL, '9I'),
('K98', NULL, '9H'),
('K99', NULL, '9I');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` varchar(5) NOT NULL,
  `nama_mapel` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `nama_mapel`) VALUES
('MP1', 'Pendidikan Agama dan Budi Pekerti'),
('MP10', 'Prakarya'),
('MP11', 'Bahasa Daerah'),
('MP2', 'Pendidikan Pancasila dan Kewarganegaraan'),
('MP3', 'Bahasa Indonesia'),
('MP4', 'Matematika'),
('MP5', 'Ilmu Pengetahuan Alam'),
('MP6', 'Ilmu Pengetahuan Sosial'),
('MP7', 'Bahasa Inggris'),
('MP8', 'Seni Budaya'),
('MP9', 'Pendidikan Jasmasi, Olahraga, dan Kesehatan');

-- --------------------------------------------------------

--
-- Table structure for table `master_sekolah`
--

CREATE TABLE `master_sekolah` (
  `id_ms` varchar(5) NOT NULL,
  `nama_sekolah` varchar(50) NOT NULL,
  `npsn` varchar(10) NOT NULL,
  `nss` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `website` varchar(50) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `nama_kepsek` varchar(50) NOT NULL,
  `nip_kepsek` varchar(20) NOT NULL,
  `tahun_ajaran` varchar(10) NOT NULL,
  `smt` enum('Ganjil','Genap') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_sekolah`
--

INSERT INTO `master_sekolah` (`id_ms`, `nama_sekolah`, `npsn`, `nss`, `alamat`, `website`, `email`, `nama_kepsek`, `nip_kepsek`, `tahun_ajaran`, `smt`) VALUES
('MS1', 'SMP Negeri 1 Karangploso', ' 20206113', '201020812170', 'Jl. PB Sudirman', 'www.smpn1karangploso.com', 'smpn1karangploso@gmail.com', 'B', '12', '2019/2020', 'Genap');

-- --------------------------------------------------------

--
-- Table structure for table `mengajar`
--

CREATE TABLE `mengajar` (
  `id_mengajar` varchar(5) NOT NULL,
  `id_mapel` varchar(5) NOT NULL,
  `id_guru` varchar(5) NOT NULL,
  `tahun_ajaran` varchar(10) NOT NULL,
  `smt` enum('Ganjil','Genap') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mengajar`
--

INSERT INTO `mengajar` (`id_mengajar`, `id_mapel`, `id_guru`, `tahun_ajaran`, `smt`) VALUES
('AJ001', 'MP1', 'GR005', '2019/2020', 'Genap'),
('AJ002', 'MP2', 'GR006', '2019/2020', 'Genap'),
('AJ003', 'MP3', 'GR007', '2019/2020', 'Genap'),
('AJ004', 'MP6', 'GR009', '2019/2020', 'Genap');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_ekstra`
--

CREATE TABLE `nilai_ekstra` (
  `id_ne` varchar(5) NOT NULL,
  `nis` int(11) DEFAULT NULL,
  `nama_ekstra` varchar(50) DEFAULT NULL,
  `nilai` enum('SB','B','C','D') DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `tahun_ajaran` varchar(10) DEFAULT NULL,
  `semester` enum('Ganjil','Genap') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_keterampilan`
--

CREATE TABLE `nilai_keterampilan` (
  `id_nk` varchar(5) NOT NULL,
  `nis` int(11) DEFAULT NULL,
  `id_mapel` varchar(5) DEFAULT NULL,
  `id_deskripsi` varchar(5) DEFAULT NULL,
  `kkm_nk` int(11) DEFAULT NULL,
  `nilai_nk` int(3) DEFAULT NULL,
  `n1` int(3) DEFAULT NULL,
  `n2` int(3) DEFAULT NULL,
  `n3` int(3) DEFAULT NULL,
  `n4` int(3) DEFAULT NULL,
  `n5` int(3) DEFAULT NULL,
  `n6` int(3) DEFAULT NULL,
  `n7` int(3) DEFAULT NULL,
  `n8` int(3) DEFAULT NULL,
  `nts` int(3) DEFAULT NULL,
  `nas` int(3) DEFAULT NULL,
  `predikat_nk` enum('A','B','C','D') DEFAULT NULL,
  `tahun_ajaran` varchar(10) DEFAULT NULL,
  `semester` enum('Ganjil','Genap') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_pengetahuan`
--

CREATE TABLE `nilai_pengetahuan` (
  `id_np` varchar(5) NOT NULL,
  `nis` int(11) DEFAULT NULL,
  `id_mapel` varchar(5) DEFAULT NULL,
  `id_deskripsi` varchar(5) DEFAULT NULL,
  `kkm_np` int(11) DEFAULT NULL,
  `nilai_np` int(3) DEFAULT NULL,
  `predikat_np` enum('A','B','C','D') DEFAULT NULL,
  `tahun_ajaran` varchar(10) DEFAULT NULL,
  `semester` enum('Ganjil','Genap') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_pengetahuan`
--

INSERT INTO `nilai_pengetahuan` (`id_np`, `nis`, `id_mapel`, `id_deskripsi`, `kkm_np`, `nilai_np`, `predikat_np`, `tahun_ajaran`, `semester`) VALUES
('1', 7001, 'MP1', '1', 75, 85, 'A', '2020', 'Genap');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_sikap`
--

CREATE TABLE `nilai_sikap` (
  `id_ns` varchar(5) NOT NULL,
  `nis` int(11) DEFAULT NULL,
  `id_deskripsi` varchar(5) DEFAULT NULL,
  `kategori_ns` enum('Spiritual','Sosial') DEFAULT NULL,
  `predikat_ns` enum('Sangat Baik','Baik','Cukup') DEFAULT NULL,
  `tahun_ajaran` varchar(10) DEFAULT NULL,
  `semester` enum('Ganjil','Genap') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ortu`
--

CREATE TABLE `ortu` (
  `id_ortu` varchar(5) NOT NULL,
  `id_pegawai` varchar(6) DEFAULT NULL,
  `nama_ayah` varchar(50) DEFAULT NULL,
  `nama_ibu` varchar(50) DEFAULT NULL,
  `pekerjaan_ayah` varchar(20) DEFAULT NULL,
  `pekerjaan_ibu` varchar(20) DEFAULT NULL,
  `alamat_ortu` text DEFAULT NULL,
  `no_telp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ortu`
--

INSERT INTO `ortu` (`id_ortu`, `id_pegawai`, `nama_ayah`, `nama_ibu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `alamat_ortu`, `no_telp`) VALUES
('OR001', 'PG001', 'Han', 'Elena', 'Wiraswasta', 'Ibu rumah tangga', 'Sumber pucung, Malang', '087123456123'),
('OR002', 'PG001', 'Hari', 'Disa', 'Petani', 'Pedagang', 'Malang', '082098765432'),
('OR003', 'PG002', 'Deby Purwantoro', 'Ninda Ayuning Tyas', 'Tukang', 'Pedagang', 'Ngaringan, Gandusari, Blitar', '087123456100'),
('OR004', 'PG001', 'Andrian Setyo', 'Susi Wahyuni', 'Wiraswasta', 'Ibu rumah tangga', 'Sukoreno, Tulungagung', '087123456101');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` varchar(5) NOT NULL,
  `nip_pegawai` varchar(20) DEFAULT NULL,
  `nama_pegawai` varchar(50) DEFAULT NULL,
  `alamat_pegawai` text DEFAULT NULL,
  `agama_pegawai` enum('Islam','Kristen','Katolik','Hindu','Budha') DEFAULT NULL,
  `notelp_pegawai` varchar(20) DEFAULT NULL,
  `jk_pegawai` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `tmp_lahir_pegawai` varchar(30) DEFAULT NULL,
  `tgl_lahir_pegawai` date DEFAULT NULL,
  `username_pegawai` varchar(20) DEFAULT NULL,
  `password_pegawai` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nip_pegawai`, `nama_pegawai`, `alamat_pegawai`, `agama_pegawai`, `notelp_pegawai`, `jk_pegawai`, `tmp_lahir_pegawai`, `tgl_lahir_pegawai`, `username_pegawai`, `password_pegawai`) VALUES
('PG001', '191234000100199119', 'Karita Anugrah', 'Jl. Ikan piranha no.11, Kota Malang', 'Kristen', '087123456145', 'Perempuan', 'Surabaya', '1987-05-22', 'pgw1', 'pgw1'),
('PG002', '199179471071298801', 'Janet', 'Jl. Pisang kipas', 'Islam', '0871235431121', 'Laki-laki', 'Blitar', '2020-05-20', 'pegawai', '047aeeb234644b9e2d4138ed3bc7976a'),
('PG003', '199179471071290001', 'Nuha', 'Jl. Pisang kipas', 'Islam', '089123098234', 'Laki-laki', 'Blitar', '2020-05-14', 'pgw3', 'pgw3'),
('PG004', '199179471071298800', 'Fauziah', 'Jl. Pisang kipas', 'Islam', '0871235431121', 'Perempuan', 'Blitar', '1988-12-31', 'pegawai1', '0b96cb1d0dfbcc85f6b57041656abc49');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggaran`
--

CREATE TABLE `pelanggaran` (
  `id_pelanggaran` varchar(5) NOT NULL,
  `nis` int(11) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `tahun_ajar` varchar(10) DEFAULT NULL,
  `semester` enum('Ganjil','Genap') DEFAULT NULL,
  `ket` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prestasi`
--

CREATE TABLE `prestasi` (
  `id_prestasi` varchar(5) NOT NULL,
  `nis` int(11) DEFAULT NULL,
  `jenis` enum('Akademik','Non-Akademik') DEFAULT NULL,
  `ket_prestasi` mediumtext DEFAULT NULL,
  `tgl_prestasi` date DEFAULT NULL,
  `tahun_ajaran` varchar(10) DEFAULT NULL,
  `semester` enum('Ganjil','Genap') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` int(11) NOT NULL,
  `id_ortu` varchar(5) DEFAULT NULL,
  `id_pegawai` varchar(5) DEFAULT NULL,
  `nisn` int(11) DEFAULT NULL,
  `nama_siswa` varchar(50) DEFAULT NULL,
  `jk_siswa` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `tmp_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` enum('Islam','Kristen','Katolik','Hindu','Budha') DEFAULT NULL,
  `alamat_siswa` text DEFAULT NULL,
  `username_s` varchar(20) DEFAULT NULL,
  `password_s` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `id_ortu`, `id_pegawai`, `nisn`, `nama_siswa`, `jk_siswa`, `tmp_lahir`, `tgl_lahir`, `agama`, `alamat_siswa`, `username_s`, `password_s`) VALUES
(7, 'OR001', 'PG002', 22, 'aq', 'Laki-laki', 'sw', '2020-06-06', 'Islam', 'Sumber, Malang', '700', 'e5841df2166dd424a571'),
(8, 'OR003', 'PG004', 11, 'Pasha', 'Laki-laki', 'Yogyakarta', '2006-12-09', 'Islam', 'Blitar', '8', '8'),
(7001, 'OR002', 'PG003', 1234567899, 'Arita Wira', 'Laki-laki', 'Solo', '2007-10-11', 'Islam', 'Sumber, Malang', '7001', '7001'),
(7002, 'OR001', 'PG001', 1234567891, 'Arini Salsa ', 'Perempuan', 'Malang', '2007-11-17', 'Islam', 'Sumber pucung, Malang', '7002', '7002'),
(7003, 'OR002', 'PG001', 1234567892, 'Rosalina', 'Perempuan', 'Malang', '2006-10-09', 'Islam', 'Malang', '7003', '7003'),
(7004, 'OR002', 'PG002', 1234567893, 'Kia', 'Perempuan', 'Blitar', '2002-05-07', 'Islam', 'adad', '7004', '7004'),
(7005, 'OR003', 'PG003', 1234567894, 'Anggun Disa', 'Perempuan', 'Malang', '2006-05-08', 'Islam', 'Jl. Ikan paus no. 9, Kota Malang', '7005', '7005'),
(7006, 'OR003', 'PG003', 1234567895, 'Yunina Arumi', 'Perempuan', 'Blitar', '2007-06-18', 'Islam', 'Tambakan, Gandusari, Blitar', '7006', '7006'),
(7007, 'OR004', 'PG002', 1234567899, 'Andini Ulfa Tiara', 'Perempuan', 'Malang', '2020-06-19', 'Islam', 'Malang', '7007', '7007'),
(7013, 'OR004', 'PG003', 12, 'Yayang Meilia', 'Perempuan', 'Yogyakarta', '2006-05-26', 'Islam', 'Bantul, Yogyakarta', '7013', '7013'),
(7124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absensi`),
  ADD UNIQUE KEY `absensi_pk` (`id_absensi`),
  ADD KEY `fk_absensi_reference_siswa` (`nis`);

--
-- Indexes for table `anggota_kelas`
--
ALTER TABLE `anggota_kelas`
  ADD PRIMARY KEY (`id_anggotakls`),
  ADD KEY `menempati_fk` (`id_kelas`),
  ADD KEY `menempati2_fk` (`nis`);

--
-- Indexes for table `deskripsi_nilai`
--
ALTER TABLE `deskripsi_nilai`
  ADD PRIMARY KEY (`id_deskripsi`),
  ADD UNIQUE KEY `deskripsi_nilai_pk` (`id_deskripsi`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`),
  ADD UNIQUE KEY `guru_pk` (`id_guru`),
  ADD KEY `fk_guru_reference_jabatan` (`id_jabatan`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD UNIQUE KEY `kelas_pk` (`id_kelas`),
  ADD KEY `fk_kelas_reference_guru` (`id_guru`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`),
  ADD UNIQUE KEY `mapel_pk` (`id_mapel`);

--
-- Indexes for table `master_sekolah`
--
ALTER TABLE `master_sekolah`
  ADD PRIMARY KEY (`id_ms`);

--
-- Indexes for table `mengajar`
--
ALTER TABLE `mengajar`
  ADD PRIMARY KEY (`id_mengajar`),
  ADD KEY `mengajar_fk` (`id_mapel`),
  ADD KEY `mengajar2_fk` (`id_guru`);

--
-- Indexes for table `nilai_ekstra`
--
ALTER TABLE `nilai_ekstra`
  ADD PRIMARY KEY (`id_ne`),
  ADD UNIQUE KEY `nilai_ekstra_pk` (`id_ne`),
  ADD KEY `fk_nilai_ek_reference_siswa` (`nis`);

--
-- Indexes for table `nilai_keterampilan`
--
ALTER TABLE `nilai_keterampilan`
  ADD PRIMARY KEY (`id_nk`),
  ADD UNIQUE KEY `nilai_keterampilan_pk` (`id_nk`),
  ADD KEY `fk_nilai_ke_reference_siswa` (`nis`),
  ADD KEY `fk_nilai_ke_reference_mapel` (`id_mapel`),
  ADD KEY `fk_nilai_ke_reference_deskrips` (`id_deskripsi`);

--
-- Indexes for table `nilai_pengetahuan`
--
ALTER TABLE `nilai_pengetahuan`
  ADD PRIMARY KEY (`id_np`),
  ADD UNIQUE KEY `nilai_pengetahuan_pk` (`id_np`),
  ADD KEY `fk_nilai_pe_reference_siswa` (`nis`),
  ADD KEY `fk_nilai_pe_reference_mapel` (`id_mapel`),
  ADD KEY `fk_nilai_pe_reference_deskrips` (`id_deskripsi`);

--
-- Indexes for table `nilai_sikap`
--
ALTER TABLE `nilai_sikap`
  ADD PRIMARY KEY (`id_ns`),
  ADD UNIQUE KEY `nilai_sikap_pk` (`id_ns`),
  ADD KEY `fk_nilai_si_reference_deskrips` (`id_deskripsi`),
  ADD KEY `fk_nilai_si_reference_siswa` (`nis`);

--
-- Indexes for table `ortu`
--
ALTER TABLE `ortu`
  ADD PRIMARY KEY (`id_ortu`),
  ADD UNIQUE KEY `ortu_pk` (`id_ortu`),
  ADD KEY `fk_ortu_reference_pegawai` (`id_pegawai`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD UNIQUE KEY `pegawai_pk` (`id_pegawai`);

--
-- Indexes for table `pelanggaran`
--
ALTER TABLE `pelanggaran`
  ADD PRIMARY KEY (`id_pelanggaran`),
  ADD UNIQUE KEY `pelanggaran_pk` (`id_pelanggaran`),
  ADD KEY `fk_pelangga_reference_siswa` (`nis`);

--
-- Indexes for table `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id_prestasi`),
  ADD UNIQUE KEY `prestasi_pk` (`id_prestasi`),
  ADD KEY `fk_prestasi_reference_siswa` (`nis`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`),
  ADD UNIQUE KEY `siswa_pk` (`nis`),
  ADD KEY `fk_siswa_reference_ortu` (`id_ortu`),
  ADD KEY `fk_siswa_reference_pegawai` (`id_pegawai`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absensi`
--
ALTER TABLE `absensi`
  ADD CONSTRAINT `absensi_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`);

--
-- Constraints for table `anggota_kelas`
--
ALTER TABLE `anggota_kelas`
  ADD CONSTRAINT `anggota_kelas_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`),
  ADD CONSTRAINT `anggota_kelas_ibfk_2` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`);

--
-- Constraints for table `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `guru_ibfk_1` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id_jabatan`);

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`);

--
-- Constraints for table `mengajar`
--
ALTER TABLE `mengajar`
  ADD CONSTRAINT `mengajar_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`),
  ADD CONSTRAINT `mengajar_ibfk_2` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`);

--
-- Constraints for table `nilai_ekstra`
--
ALTER TABLE `nilai_ekstra`
  ADD CONSTRAINT `nilai_ekstra_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`);

--
-- Constraints for table `nilai_keterampilan`
--
ALTER TABLE `nilai_keterampilan`
  ADD CONSTRAINT `nilai_keterampilan_ibfk_1` FOREIGN KEY (`id_deskripsi`) REFERENCES `deskripsi_nilai` (`id_deskripsi`),
  ADD CONSTRAINT `nilai_keterampilan_ibfk_2` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`),
  ADD CONSTRAINT `nilai_keterampilan_ibfk_3` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`);

--
-- Constraints for table `nilai_pengetahuan`
--
ALTER TABLE `nilai_pengetahuan`
  ADD CONSTRAINT `nilai_pengetahuan_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`),
  ADD CONSTRAINT `nilai_pengetahuan_ibfk_2` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`),
  ADD CONSTRAINT `nilai_pengetahuan_ibfk_3` FOREIGN KEY (`id_deskripsi`) REFERENCES `deskripsi_nilai` (`id_deskripsi`);

--
-- Constraints for table `nilai_sikap`
--
ALTER TABLE `nilai_sikap`
  ADD CONSTRAINT `nilai_sikap_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`),
  ADD CONSTRAINT `nilai_sikap_ibfk_2` FOREIGN KEY (`id_deskripsi`) REFERENCES `deskripsi_nilai` (`id_deskripsi`);

--
-- Constraints for table `ortu`
--
ALTER TABLE `ortu`
  ADD CONSTRAINT `fk_ortu_reference_pegawai` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`);

--
-- Constraints for table `pelanggaran`
--
ALTER TABLE `pelanggaran`
  ADD CONSTRAINT `pelanggaran_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`);

--
-- Constraints for table `prestasi`
--
ALTER TABLE `prestasi`
  ADD CONSTRAINT `prestasi_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`);

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_ortu`) REFERENCES `ortu` (`id_ortu`),
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
