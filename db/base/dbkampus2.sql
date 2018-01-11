-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 18, 2017 at 09:31 AM
-- Server version: 10.1.9-MariaDB-log
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbkampus`
--

-- --------------------------------------------------------

--
-- Table structure for table `bimbingan_akademik`
--

CREATE TABLE `bimbingan_akademik` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `bimbingan_presensi` text,
  `bimbingan_keuangan` text,
  `bimbingan_akademik` text,
  `kategori_id` int(11) NOT NULL,
  `semester` int(11) DEFAULT NULL,
  `nim` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bimbingan_akademik`
--

INSERT INTO `bimbingan_akademik` (`id`, `tanggal`, `bimbingan_presensi`, `bimbingan_keuangan`, `bimbingan_akademik`, `kategori_id`, `semester`, `nim`) VALUES
(1, '2017-12-20', 'Kehadiran PBO kurang', 'ok', 'ok', 3, 20171, '110116059'),
(2, '2017-12-20', 'Kehadiran BASDAT dan METPEN Kurang', '-', 'Nilai UTS masih belum bagus', 3, 20171, '110216018');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` int(11) NOT NULL,
  `nidn` varchar(10) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `gelar_depan` varchar(6) DEFAULT NULL,
  `gelar_belakang` varchar(15) DEFAULT NULL,
  `tmp_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jk` char(1) DEFAULT NULL,
  `prodi_id` int(11) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `jabatan_id` int(11) NOT NULL,
  `pend_akhir` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `nidn`, `nama`, `gelar_depan`, `gelar_belakang`, `tmp_lahir`, `tgl_lahir`, `jk`, `prodi_id`, `email`, `jabatan_id`, `pend_akhir`) VALUES
(1, '0413128601', 'AHMAD RIO ADRIANSYAH', NULL, 'S.Si,M.Si', NULL, NULL, 'L', 2, NULL, 2, 'S2'),
(2, '0402018701', 'AMALIA RAHMAH', NULL, 'S.T,M.T', NULL, NULL, 'P', 1, NULL, 2, 'S2'),
(3, '0404017602', 'BACHTIAR FIRDAUS', NULL, 'S.T,M.P', NULL, NULL, 'L', 1, NULL, 1, 'S2'),
(4, '9903019258', 'BAMBANG PRIANTONO', NULL, 'M.T,Dr', NULL, NULL, 'L', 1, NULL, 1, 'S3'),
(5, '0407097405', 'HENRY SAPTONO', NULL, 'S.Si,M.Kom', NULL, NULL, 'L', 2, NULL, 2, 'S2'),
(6, '0411118402', 'HILMY ABIDZAR TAWAKAL', NULL, 'S.T,M.Kom', NULL, NULL, 'L', 2, NULL, 2, 'S2'),
(7, '0413038701', 'INDRA HERMAWAN', NULL, 'S.Kom,M.Kom', NULL, NULL, 'L', 2, NULL, 2, 'S2'),
(8, '0415108403', 'KURNIAWAN DWI PRASETYO', NULL, 'S.T,M.T', NULL, NULL, 'L', 1, NULL, 1, 'S2'),
(9, '0421117805', 'LUKMAN ROSYIDI', NULL, 'S.T,M.M.,M.T', NULL, NULL, 'L', 2, NULL, 2, 'S2'),
(10, '0420097706', 'MUHAMMAD BINTANG', NULL, 'S.Kom', NULL, NULL, 'L', 1, NULL, 1, 'S2'),
(11, '0431088701', 'NUGROHO DWI SAPUTRA', NULL, 'S.Kom,M.Ti', NULL, NULL, 'L', 1, NULL, 1, 'S2'),
(12, '0429058305', 'REZA ALDIANSYAH', NULL, 'S.T,M.Ti', NULL, NULL, 'L', 1, NULL, 1, 'S2'),
(13, '0427057704', 'REZA PRIMARDIANSYAH', NULL, 'S.T,M.Kom', NULL, NULL, 'L', 2, NULL, 1, 'S2'),
(14, '0423076303', 'RUSMANTO', NULL, 'M.M.,Drs', NULL, NULL, 'L', 1, NULL, 2, 'S2'),
(15, '0424088901', 'SALMAN EL FARISI', NULL, 'S.Kom,M.Kom', NULL, NULL, 'L', 2, NULL, 1, 'S2'),
(16, '0426096501', 'SAPTO WALUYO', NULL, 'S.Sos,M.Sc.', NULL, NULL, 'L', 1, NULL, 1, 'S2'),
(17, '0414047101', 'SIROJUL MUNIR', NULL, 'S.Si,M.Kom', NULL, NULL, 'L', 2, NULL, 2, 'S2'),
(18, '0006067204', 'SUHENDI', NULL, 'S.T,M.M.S.I', NULL, NULL, 'L', 1, NULL, 2, 'S2'),
(19, '0401017122', 'WARSONO', NULL, 'S.Kom,M.Ti', NULL, NULL, 'L', 1, NULL, 1, 'S2'),
(20, '0426088302', 'ZAKI IMADUDDIN', NULL, 'S.T,M.Kom', NULL, NULL, 'L', 2, NULL, 2, 'S2');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan_akademik`
--

CREATE TABLE `jabatan_akademik` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jabatan_akademik`
--

INSERT INTO `jabatan_akademik` (`id`, `nama`) VALUES
(1, 'Tenaga Pengajar'),
(2, 'Asisten Ahli'),
(3, 'Lektor'),
(4, 'Lektor Kepala'),
(5, 'Profesor');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_bimbingan`
--

CREATE TABLE `kategori_bimbingan` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategori_bimbingan`
--

INSERT INTO `kategori_bimbingan` (`id`, `nama`) VALUES
(1, 'Awal Perkuliahan'),
(2, 'Pra UTS'),
(3, 'Pra UAS');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_pkm`
--

CREATE TABLE `kategori_pkm` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategori_pkm`
--

INSERT INTO `kategori_pkm` (`id`, `nama`) VALUES
(1, 'Internal Kampus'),
(2, 'Hibah Dikti');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_prestasi`
--

CREATE TABLE `kategori_prestasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategori_prestasi`
--

INSERT INTO `kategori_prestasi` (`id`, `nama`) VALUES
(1, 'Internal Kampus'),
(2, 'Regional Depok'),
(3, 'Nasional'),
(4, 'Internasional Nasional');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_riset`
--

CREATE TABLE `kategori_riset` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategori_riset`
--

INSERT INTO `kategori_riset` (`id`, `nama`) VALUES
(1, 'Dosen Pemula'),
(2, 'Doktoral'),
(3, 'Pekerti');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_seminar`
--

CREATE TABLE `kategori_seminar` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategori_seminar`
--

INSERT INTO `kategori_seminar` (`id`, `nama`) VALUES
(1, 'Proposal TA'),
(2, 'Seminar Hasil TA'),
(3, 'Sidang TA');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_surat`
--

CREATE TABLE `kategori_surat` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategori_surat`
--

INSERT INTO `kategori_surat` (`id`, `nama`) VALUES
(1, 'Surat Keterangan Kuliah'),
(2, 'Surat Keterangan Lulus'),
(3, 'Surat Pengajuan Beastudi'),
(4, 'Surat Kepesertaan Lomba');

-- --------------------------------------------------------

--
-- Table structure for table `kunjungan_perpustakaan`
--

CREATE TABLE `kunjungan_perpustakaan` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `keperluan` varchar(45) DEFAULT NULL,
  `nim` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `tmp_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jk` char(1) DEFAULT NULL,
  `prodi_id` int(11) NOT NULL,
  `ipk` double DEFAULT NULL,
  `thnmasuk` int(11) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `rombel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `tmp_lahir`, `tgl_lahir`, `jk`, `prodi_id`, `ipk`, `thnmasuk`, `email`, `rombel_id`) VALUES
('110116002', 'Andhito Diaz Revandra', NULL, NULL, 'L', 1, NULL, 2016, NULL, 1),
('110116007', 'Maurice Yoga Ibrahim', NULL, NULL, 'L', 1, NULL, 2016, NULL, 1),
('110116008', 'Bayhaqi Alfaridzi', NULL, NULL, 'L', 1, NULL, 2016, NULL, 2),
('110116010', 'Muhammad Hanif Dwi Cahya Ardiansyah', NULL, NULL, 'L', 1, NULL, 2016, NULL, 2),
('110116011', 'Muhamad Idris', NULL, NULL, 'L', 1, NULL, 2016, NULL, 2),
('110116015', 'Lizza Noor Azizah', NULL, NULL, 'L', 1, NULL, 2016, NULL, 2),
('110116016', 'Fauzi Hafsar', NULL, NULL, 'L', 1, NULL, 2016, NULL, 2),
('110116017', 'Lazuardi Dwi Putra', NULL, NULL, 'L', 1, NULL, 2016, NULL, 2),
('110116018', 'Miftakhul Aris', NULL, NULL, 'L', 1, NULL, 2016, NULL, 2),
('110116019', 'Chairin Nashrillah', NULL, NULL, 'P', 1, NULL, 2016, NULL, 2),
('110116023', 'Elsa Nadira', NULL, NULL, 'L', 1, NULL, 2016, NULL, 2),
('110116026', 'Lia Khairunnisa', NULL, NULL, 'L', 1, NULL, 2016, NULL, 2),
('110116028', 'Rizka Amalia Apriliani', NULL, NULL, 'L', 1, NULL, 2016, NULL, 2),
('110116030', 'Shafura Iryani', NULL, NULL, 'P', 1, NULL, 2016, NULL, 2),
('110116032', 'Nihlah Karimah', NULL, NULL, 'P', 1, NULL, 2016, NULL, 2),
('110116033', 'Latifa Diniputri', NULL, NULL, 'P', 1, NULL, 2016, NULL, 2),
('110116034', 'Afifa Diniputri', NULL, NULL, 'P', 1, NULL, 2016, NULL, 2),
('110116035', 'Lailia Cahya Putri', NULL, NULL, 'P', 1, NULL, 2016, NULL, 2),
('110116037', 'Azmi Faiz Habibi', NULL, NULL, 'L', 1, NULL, 2016, NULL, 2),
('110116038', 'Ibrahim Syafiq Musyaffa', NULL, NULL, 'L', 1, NULL, 2016, NULL, 2),
('110116041', 'Haiqal Firdho Ghifari', NULL, NULL, 'L', 1, NULL, 2016, NULL, 2),
('110116043', 'Naila Natalia Aufar', NULL, NULL, 'P', 1, NULL, 2016, NULL, 2),
('110116044', 'Hulwah Zahidah', NULL, NULL, 'P', 1, NULL, 2016, NULL, 2),
('110116047', 'Muhammad Ridho Fadhillah', NULL, NULL, 'L', 1, NULL, 2016, NULL, 2),
('110116048', 'Randi', NULL, NULL, 'L', 1, NULL, 2016, NULL, 2),
('110116049', 'Ade Trisna Wardah', NULL, NULL, 'L', 1, NULL, 2016, NULL, 2),
('110116058', 'Cica Nur Latifah', NULL, NULL, 'P', 1, NULL, 2016, NULL, 2),
('110116059', 'Laila Nafila', NULL, NULL, 'P', 1, NULL, 2016, NULL, 2),
('110214036', 'Ulin Nuha Abdillah', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216002', 'Vindi Pop Ardinoto', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216003', 'Fahmi Hafizul Haq', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216007', 'Andrean Dwi Putra', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216010', 'Anifatul Aufah', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216011', 'Kuati Septiani', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216015', 'Nendi Ilham Munanda Tampubolon', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216017', 'Wahab Rahmanto', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216018', 'Muhammad Alwi Mahfud', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216019', 'Annisa Tahira', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216020', 'Muhammad fajar saputra', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216022', 'Adittya Wicaksono', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216024', 'Rizki Aji Gusti Ekaputra', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216028', 'Rizky Hidayat Panjaitan', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216030', 'Arius Wanimbo', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216031', 'Satria Suryanegara', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216035', 'Mohammad Akmaluddin Novianto', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216036', 'Cartridge Ryan Fraditya', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216037', 'Muhammad Fadhil Hilmi', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216040', 'Mohammad Reza Nurrahman', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216042', 'Muhammad Rafi', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216044', 'Arfian Mulya Pasha', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216045', 'Dimas Agung Sahrul Bayan', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216046', 'Arif Ariyanto', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216048', 'Isham Dienurrahman', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216053', 'Mohamad Andika Riedo Pangestu', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216056', 'Faiz Khoiron', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216057', 'Iqbal Ajie Wahyudin', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216058', 'Muhammad Rifki Chairil', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216060', 'Sukmo Afri Ardisa putro', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216061', 'Umair', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216065', 'Haya Rasikhah', NULL, NULL, 'P', 2, NULL, 2016, NULL, 1),
('110216068', 'Arisy Basyiruddin', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1),
('110216070', 'Syifa Tazkiy Fauziah', NULL, NULL, 'P', 2, NULL, 2016, NULL, 1),
('110216075', 'Rakha Diasry', NULL, NULL, 'L', 2, NULL, 2016, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_surat`
--

CREATE TABLE `pengajuan_surat` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `deskirpsi` varchar(45) DEFAULT NULL,
  `nim` varchar(10) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pengajuan_surat`
--

INSERT INTO `pengajuan_surat` (`id`, `tanggal`, `deskirpsi`, `nim`, `kategori_id`, `status`, `semester`) VALUES
(1, '2017-12-01', 'Bea Studi Pemda DKI', '110116037', 3, 1, 20171),
(2, '2017-12-02', 'PKL', '110216053', 1, 1, 20171),
(3, '2018-01-10', 'Lomba Gemastik 2018', '110216061', 4, 0, 20172);

-- --------------------------------------------------------

--
-- Table structure for table `pkm_dosen`
--

CREATE TABLE `pkm_dosen` (
  `id` int(11) NOT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_akhir` date DEFAULT NULL,
  `judul` text,
  `tempat` varchar(100) DEFAULT NULL,
  `biaya` double DEFAULT NULL,
  `dosen_id` int(11) NOT NULL,
  `semester` int(11) DEFAULT NULL,
  `kategori_pkm_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pkm_dosen`
--

INSERT INTO `pkm_dosen` (`id`, `tanggal_mulai`, `tanggal_akhir`, `judul`, `tempat`, `biaya`, `dosen_id`, `semester`, `kategori_pkm_id`) VALUES
(1, '2017-12-10', '2017-12-10', 'Training Web Desain', 'Pesantren TIK Lazis PLN', 300000, 18, 20171, 1),
(2, '2017-12-15', '2017-12-15', 'Trainin Web Security', 'Mabes TNI Cilangkap', 350000, 5, 20171, 1),
(3, '2017-12-20', '2017-12-20', 'Pengembangan Aplikasi Android', 'SMK Amaliyah Jakarta', 350000, 6, 20171, 1);

-- --------------------------------------------------------

--
-- Table structure for table `prestasi_mahasiswa`
--

CREATE TABLE `prestasi_mahasiswa` (
  `id` int(11) NOT NULL,
  `semester` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `deskripsi` varchar(45) DEFAULT NULL,
  `nim` varchar(10) NOT NULL,
  `namatim` varchar(30) DEFAULT NULL,
  `kategori_prestasi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prestasi_mahasiswa`
--

INSERT INTO `prestasi_mahasiswa` (`id`, `semester`, `tanggal`, `deskripsi`, `nim`, `namatim`, `kategori_prestasi_id`) VALUES
(1, 20171, '2017-11-01', 'Juara I Hackaton Depicta Depok', '110116037', 'NFGO', 2),
(2, 20171, '2017-11-01', 'Juara II Decoding Confest UI', '110216003', 'UltraNF', 3),
(3, 20171, '2017-11-01', 'Juara II Decoding Confest UI', '110216002', 'UltraNF', 3),
(4, 20171, '2017-11-01', 'Juara I Hackaton Depicta Depok', '110116044', 'NFGO', 2);

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id` int(11) NOT NULL,
  `kode` varchar(3) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id`, `kode`, `nama`) VALUES
(1, 'SI', 'Sistem Informasi'),
(2, 'TI', 'Teknik Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `riset_dosen`
--

CREATE TABLE `riset_dosen` (
  `id` int(11) NOT NULL,
  `dosen_id` int(11) NOT NULL,
  `judul` text,
  `sumber_pendanaan` varchar(45) DEFAULT NULL,
  `biaya` double DEFAULT NULL,
  `mulai_semester` int(11) DEFAULT NULL,
  `akhir_semester` int(11) DEFAULT NULL,
  `deskripsi` varchar(100) DEFAULT NULL,
  `kategori_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `riset_dosen`
--

INSERT INTO `riset_dosen` (`id`, `dosen_id`, `judul`, `sumber_pendanaan`, `biaya`, `mulai_semester`, `akhir_semester`, `deskripsi`, `kategori_id`) VALUES
(1, 15, 'Pengembangan Framework Mobile Aplication', 'Dikti', 21000000, 20172, 20181, 'pengajuan hibah dikti 2018', 1),
(2, 20, 'Pengembangan Alat Deteksi Janin Bayi', 'Dikti', 221000000, 20172, 20191, 'pengajuan hibah dikti 2018', 3),
(3, 16, 'Analisa Peran Social Media Pemilihan Gubernur Jabar 2018', 'Dikti', 11000000, 20172, 20181, 'pengajuan hibah dikti 2018', 2);

-- --------------------------------------------------------

--
-- Table structure for table `rombel`
--

CREATE TABLE `rombel` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `mhs_angkatan` int(11) DEFAULT NULL,
  `dosen_pa` int(11) NOT NULL,
  `prodi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rombel`
--

INSERT INTO `rombel` (`id`, `nama`, `mhs_angkatan`, `dosen_pa`, `prodi_id`) VALUES
(1, 'TI01', 2016, 20, 2),
(2, 'SI01', 2016, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `seminar_ta`
--

CREATE TABLE `seminar_ta` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `nilai` double DEFAULT NULL,
  `tempat` varchar(45) DEFAULT NULL,
  `tugasakhir_id` int(11) NOT NULL,
  `dosen_penguji` int(11) NOT NULL,
  `kategori_seminar_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seminar_ta`
--

INSERT INTO `seminar_ta` (`id`, `tanggal`, `nilai`, `tempat`, `tugasakhir_id`, `dosen_penguji`, `kategori_seminar_id`) VALUES
(1, '2017-04-20', 0, 'B2 204', 1, 20, 1),
(2, '2017-05-05', 0, 'B2 203', 2, 17, 1),
(3, '2017-05-04', 0, 'B2 203', 2, 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tugasakhir`
--

CREATE TABLE `tugasakhir` (
  `id` int(11) NOT NULL,
  `judul` text,
  `semester` int(11) DEFAULT NULL,
  `nim` varchar(10) NOT NULL,
  `dosen_pembimbing` int(11) NOT NULL,
  `nilai` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tugasakhir`
--

INSERT INTO `tugasakhir` (`id`, `judul`, `semester`, `nim`, `dosen_pembimbing`, `nilai`) VALUES
(1, 'Perancangan eVoting berbasis Mobile', 20181, '110116026', 17, NULL),
(2, 'Implementasi Data Mining PT ABC', 20181, '110216011', 6, NULL),
(3, 'Pemanfaatan Social Media Pada Kampanye Gubernur Jabar 2018', 20181, '110116023', 16, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bimbingan_akademik`
--
ALTER TABLE `bimbingan_akademik`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bimbingan_akademik_kategori_bimbingan1_idx` (`kategori_id`),
  ADD KEY `fk_bimbingan_akademik_mahasiswa1_idx` (`nim`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_dosen_prodi1_idx` (`prodi_id`),
  ADD KEY `fk_dosen_jabatan_akademik1_idx` (`jabatan_id`);

--
-- Indexes for table `jabatan_akademik`
--
ALTER TABLE `jabatan_akademik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_bimbingan`
--
ALTER TABLE `kategori_bimbingan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_pkm`
--
ALTER TABLE `kategori_pkm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_prestasi`
--
ALTER TABLE `kategori_prestasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_riset`
--
ALTER TABLE `kategori_riset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_seminar`
--
ALTER TABLE `kategori_seminar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_surat`
--
ALTER TABLE `kategori_surat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kunjungan_perpustakaan`
--
ALTER TABLE `kunjungan_perpustakaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kunjungan_perpustakaan_mahasiswa1_idx` (`nim`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `fk_mahasiswa_prodi_idx` (`prodi_id`),
  ADD KEY `fk_mahasiswa_rombel1_idx` (`rombel_id`);

--
-- Indexes for table `pengajuan_surat`
--
ALTER TABLE `pengajuan_surat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pengajuan_surat_mahasiswa1_idx` (`nim`),
  ADD KEY `fk_pengajuan_surat_kategori_surat1_idx` (`kategori_id`);

--
-- Indexes for table `pkm_dosen`
--
ALTER TABLE `pkm_dosen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pkm_dosen_dosen1_idx` (`dosen_id`),
  ADD KEY `fk_pkm_dosen_kategori_pkm1_idx` (`kategori_pkm_id`);

--
-- Indexes for table `prestasi_mahasiswa`
--
ALTER TABLE `prestasi_mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_prestasi_mahasiswa_mahasiswa1_idx` (`nim`),
  ADD KEY `fk_prestasi_mahasiswa_kategori_prestasi1_idx` (`kategori_prestasi_id`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riset_dosen`
--
ALTER TABLE `riset_dosen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_riset_dosen_dosen1_idx` (`dosen_id`),
  ADD KEY `fk_riset_dosen_kategori_riset1_idx` (`kategori_id`);

--
-- Indexes for table `rombel`
--
ALTER TABLE `rombel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rombel_dosen1_idx` (`dosen_pa`),
  ADD KEY `fk_rombel_prodi1_idx` (`prodi_id`);

--
-- Indexes for table `seminar_ta`
--
ALTER TABLE `seminar_ta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_seminar_ta_tugasakhir1_idx` (`tugasakhir_id`),
  ADD KEY `fk_seminar_ta_dosen1_idx` (`dosen_penguji`);

--
-- Indexes for table `tugasakhir`
--
ALTER TABLE `tugasakhir`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tugasakhir_mahasiswa1_idx` (`nim`),
  ADD KEY `fk_tugasakhir_dosen1_idx` (`dosen_pembimbing`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bimbingan_akademik`
--
ALTER TABLE `bimbingan_akademik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `jabatan_akademik`
--
ALTER TABLE `jabatan_akademik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `kategori_bimbingan`
--
ALTER TABLE `kategori_bimbingan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `kategori_pkm`
--
ALTER TABLE `kategori_pkm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kategori_prestasi`
--
ALTER TABLE `kategori_prestasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `kategori_riset`
--
ALTER TABLE `kategori_riset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `kategori_seminar`
--
ALTER TABLE `kategori_seminar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `kategori_surat`
--
ALTER TABLE `kategori_surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `kunjungan_perpustakaan`
--
ALTER TABLE `kunjungan_perpustakaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pengajuan_surat`
--
ALTER TABLE `pengajuan_surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pkm_dosen`
--
ALTER TABLE `pkm_dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `prestasi_mahasiswa`
--
ALTER TABLE `prestasi_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `riset_dosen`
--
ALTER TABLE `riset_dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `rombel`
--
ALTER TABLE `rombel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `seminar_ta`
--
ALTER TABLE `seminar_ta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tugasakhir`
--
ALTER TABLE `tugasakhir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bimbingan_akademik`
--
ALTER TABLE `bimbingan_akademik`
  ADD CONSTRAINT `fk_bimbingan_akademik_kategori_bimbingan1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori_bimbingan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_bimbingan_akademik_mahasiswa1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `fk_dosen_jabatan_akademik1` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatan_akademik` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dosen_prodi1` FOREIGN KEY (`prodi_id`) REFERENCES `prodi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `kunjungan_perpustakaan`
--
ALTER TABLE `kunjungan_perpustakaan`
  ADD CONSTRAINT `fk_kunjungan_perpustakaan_mahasiswa1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `fk_mahasiswa_prodi` FOREIGN KEY (`prodi_id`) REFERENCES `prodi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mahasiswa_rombel1` FOREIGN KEY (`rombel_id`) REFERENCES `rombel` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pengajuan_surat`
--
ALTER TABLE `pengajuan_surat`
  ADD CONSTRAINT `fk_pengajuan_surat_kategori_surat1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori_surat` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pengajuan_surat_mahasiswa1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pkm_dosen`
--
ALTER TABLE `pkm_dosen`
  ADD CONSTRAINT `fk_pkm_dosen_dosen1` FOREIGN KEY (`dosen_id`) REFERENCES `dosen` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pkm_dosen_kategori_pkm1` FOREIGN KEY (`kategori_pkm_id`) REFERENCES `kategori_pkm` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `prestasi_mahasiswa`
--
ALTER TABLE `prestasi_mahasiswa`
  ADD CONSTRAINT `fk_prestasi_mahasiswa_kategori_prestasi1` FOREIGN KEY (`kategori_prestasi_id`) REFERENCES `kategori_prestasi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_prestasi_mahasiswa_mahasiswa1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `riset_dosen`
--
ALTER TABLE `riset_dosen`
  ADD CONSTRAINT `fk_riset_dosen_dosen1` FOREIGN KEY (`dosen_id`) REFERENCES `dosen` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_riset_dosen_kategori_riset1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori_riset` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `rombel`
--
ALTER TABLE `rombel`
  ADD CONSTRAINT `fk_rombel_dosen1` FOREIGN KEY (`dosen_pa`) REFERENCES `dosen` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_rombel_prodi1` FOREIGN KEY (`prodi_id`) REFERENCES `prodi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `seminar_ta`
--
ALTER TABLE `seminar_ta`
  ADD CONSTRAINT `fk_seminar_ta_dosen1` FOREIGN KEY (`dosen_penguji`) REFERENCES `dosen` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_seminar_ta_tugasakhir1` FOREIGN KEY (`tugasakhir_id`) REFERENCES `tugasakhir` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tugasakhir`
--
ALTER TABLE `tugasakhir`
  ADD CONSTRAINT `fk_tugasakhir_dosen1` FOREIGN KEY (`dosen_pembimbing`) REFERENCES `dosen` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tugasakhir_mahasiswa1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;