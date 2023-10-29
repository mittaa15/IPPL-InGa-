-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2023 at 09:25 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_simkbs3`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_control`
--

CREATE TABLE `tabel_control` (
  `id` int(11) NOT NULL,
  `nama_desa` varchar(255) NOT NULL,
  `logo_desa` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `maps` text NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_control`
--

INSERT INTO `tabel_control` (`id`, `nama_desa`, `logo_desa`, `alamat`, `maps`, `email`) VALUES
(1, 'RT. 06 Tanjung Tengah', '1633914908.64566163901c9d9ff.png', 'RT. 06 Kel. Tanjung Tengah, Penajam Paser Utara, Kalimantan Timur', 'https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d957.4923717601984!2d116.65348257905413!3d-1.3839001303291738!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1srt.%2006%20tanjung%20tengah%20ppu!5e0!3m2!1sen!2sid!4v1697618183519!5m2!1sen!2sid', 'rt06tanjungtengahppu@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_dusun`
--

CREATE TABLE `tabel_dusun` (
  `id` int(11) NOT NULL,
  `dusun` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_dusun`
--

INSERT INTO `tabel_dusun` (`id`, `dusun`) VALUES
(7, 'Palampang');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_form`
--

CREATE TABLE `tabel_form` (
  `jenis_surat` text NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `tempat_lahir` text NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `agama` text NOT NULL,
  `status_perkawinan` int(100) NOT NULL,
  `jenis_kelamin` text NOT NULL,
  `submit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_form`
--

INSERT INTO `tabel_form` (`jenis_surat`, `nama`, `nik`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `email`, `pekerjaan`, `agama`, `status_perkawinan`, `jenis_kelamin`, `submit`) VALUES
('Surat Keterangan Belum Menikah', 'Miftahul Jannah Zaharatunnisa', '6409015502030005', 'Tanah Grogot', '2003-02-15', 'Jl. Sultan Hasanuddin Gg. Mawar No. 64', 'mtazhra@gmail.com', 'Mahasiswa', 'Islam', 0, 'Wanita', '06:53:29pm'),
('Surat Keterangan Bantuan', 'Miftahul Jannah Zahratunnisa', '640109550203005', 'Paser', '2003-02-15', 'Paser', 'mtazhra@gmail.com', 'Mahasiswa', 'Islam', 0, 'Wanita', '08:57:38pm'),
('Surat Keterangan Belum Menikah', 'fsgs', '352435345', 'fnsekgn', '2002-12-20', 'esgegq', 'rds@srgdr', 'esgseg', 'Kristen', 0, 'Wanita', '10:27:23am');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_kependudukan`
--

CREATE TABLE `tabel_kependudukan` (
  `NO_KK` char(16) NOT NULL,
  `NIK` char(16) NOT NULL,
  `NAMA_LGKP` varchar(50) NOT NULL,
  `HBKEL` varchar(2) NOT NULL,
  `JK` tinyint(1) NOT NULL,
  `TMPT_LHR` varchar(30) NOT NULL,
  `TGL_LHR` date NOT NULL,
  `TAHUN` varchar(3) NOT NULL,
  `BULAN` varchar(2) NOT NULL,
  `HARI` varchar(2) NOT NULL,
  `NAMA_LGKP_AYAH` varchar(100) NOT NULL,
  `NAMA_LGKP_IBU` varchar(100) NOT NULL,
  `KECAMATAN` varchar(30) NOT NULL,
  `KELURAHAN` varchar(30) NOT NULL,
  `DSN` int(11) NOT NULL,
  `AGAMA` varchar(10) NOT NULL,
  `bantuan` varchar(2) NOT NULL,
  `jenis_bantuan` varchar(100) NOT NULL,
  `ibu_hamil` varchar(2) NOT NULL,
  `disabilitas` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_kependudukan`
--

INSERT INTO `tabel_kependudukan` (`NO_KK`, `NIK`, `NAMA_LGKP`, `HBKEL`, `JK`, `TMPT_LHR`, `TGL_LHR`, `TAHUN`, `BULAN`, `HARI`, `NAMA_LGKP_AYAH`, `NAMA_LGKP_IBU`, `KECAMATAN`, `KELURAHAN`, `DSN`, `AGAMA`, `bantuan`, `jenis_bantuan`, `ibu_hamil`, `disabilitas`) VALUES
('6409012001090049', '5409016610860006', 'KASNITA', '3', 0, '', '1986-10-26', '37', '0', '2', 'HALIKE', 'KAMSIAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '0', '0'),
('6409011302190006', '6401041509090007', 'RAFIQ FIRMAN RAMADHAN', '9', 1, 'SEMPULANG', '2009-09-15', '14', '1', '13', 'RACHIM ERTANTO', 'RINA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409011302190006', '6401043103810002', 'RACHIM ERTANTO', '1', 1, 'TARAKAN', '1987-03-31', '36', '6', '28', 'AMIRUDIN', 'KANIRAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '0', '', '', '0'),
('6409010506170003', '6401046204890003', 'TUTI TRISNAWATI', '3', 2, 'KUARO', '1989-04-22', '34', '6', '6', 'AKIL', 'SITI', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '0', '0'),
('6409010506170003', '6401046809130001', 'SYAKIRA NUR SYAFA', '9', 2, 'PASER', '2013-09-28', '10', '1', '0', 'SUMARDI', 'TUTI TRISNAWATI', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409011302190006', '6401046911120005', 'HESTY ANANTA', '9', 2, 'BALIKPAPAN', '2012-11-29', '10', '10', '29', 'RACHIM ERTANTO', 'RINA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409012008070467', '6402034606761003', 'FITRIANI BAHARUDDIN', '3', 2, 'UJUNG PANDANG', '1975-06-06', '48', '4', '22', 'BAHARUDDIN', 'RUSMIATI', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '0', '0'),
('6409012202120008', '6409010101870017', 'MUHAMMAD ARDIN', '1', 1, 'PETUNG', '1987-01-01', '36', '9', '27', 'HALING', 'JAMIAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '0', '', '', '0'),
('6409011508070161', '6409010103770004', 'AWAL MUHDIN', '1', 1, 'PETUNG', '1977-03-01', '46', '7', '27', 'HALING', 'DJAMIAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409012202120008', '6409010304080001', 'REYHAN NOOR FAZRIEL PRATAMA', '9', 1, 'WARU', '2008-04-03', '15', '6', '25', 'M.ARDIN', 'MASNAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409011412110005', '6409010310080004', 'ALDY FIRANSYAH PUTRA', '9', 1, 'TANJUNG TENGAH', '2008-10-03', '15', '0', '25', '-', 'AGUSTINA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409012108070216', '6409010504880004', 'JUSMAN', '9', 1, 'TANJUNG TENGAH', '1988-04-05', '35', '6', '23', 'SUDDIN SINAJA', 'RATIA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409012108070188', '6409010804040001', 'NURHIDAYAT', '9', 1, 'TANJUNG TENGAH', '2004-04-08', '19', '6', '20', 'SANGKALA HASAN', 'YANTI', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409012112110012', '6409010809870003', 'DARMANSYAH', '1', 1, 'BALIKPAPAN', '1987-08-08', '36', '2', '20', '-', 'MASTIAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '0', '', '', '0'),
('6409011412110005', '6409010902890007', 'HASANUDIN', '1', 1, 'PETUNG', '1989-02-09', '34', '8', '19', 'MISBAH', 'BARIYAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409012008070427', '6409010907970002', 'RISMAN MAULADI', '9', 1, 'BALIKPAPAN', '2003-03-06', '20', '7', '22', 'YUSMAN', 'SAMSIYAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409011302190006', '6409010911190001', 'RAZKA ARKANA MAULIDAN', '9', 1, 'PENAJAM PASER UTARA', '2019-11-09', '3', '11', '19', 'RACHIM ERTANTO', 'RINA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409012008070412', '6409010911840004', 'RAMLI', '9', 1, 'BALIKPAPAN', '1984-11-09', '38', '11', '19', 'SALAMA', 'KAMU', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409013103090036', '6409011009180002', 'ALFIE ALFARIZI ARFAN', '9', 1, 'PENAJAM PASER UTARA', '2018-09-10', '5', '1', '18', 'HENDRA IRAWAN', 'SAMSIYAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409010907090013', '6409011010830011', 'ARBANUT', '1', 1, 'PETUNG', '1983-10-10', '40', '0', '18', 'KENTA', 'KEJES', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409013103090036', '6409011012100005', 'ALIEF ARDHANI PRATAMA', '9', 1, 'PENAJAM PASER UTARA', '2010-12-10', '12', '10', '18', 'HENDRA IRAWAN', 'SAMSIYAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409011909170010', '6409011103180001', 'MUHAMMAD RAZKA', '9', 1, 'PENAJAM PASER UTARA', '2018-03-11', '5', '7', '17', 'RUDIANSYAH', 'SITTI AISAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409013103090036', '6409011104840008', 'HENDRA IRAWAN ', '1', 1, 'BALIKPAPAN', '1984-04-11', '39', '6', '17', 'BENNU', 'HAPSAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '0', '', '', '0'),
('6409012008070420', '6409011204800003', 'JASRI INDING', '4', 1, 'TAMPANG', '1980-04-12', '43', '6', '16', 'INDING', 'JAWIDA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409011001120022', '6409011204940009', 'MOCH. ROFIK', '1', 1, 'BONTANG', '1994-04-12', '29', '6', '16', 'MUHAMAD JAHIM', 'KHORIYAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '0', '', '', '0'),
('640901010823001', '6409011403020003', 'ANDI DARMAN ARDIANSYAH', '1', 1, 'ABBEKAE', '2002-03-14', '21', '7', '14', 'ANDI DAHRUNG', 'DARMAWATI', 'TILONGKABILA', 'BUTU', 7, 'islam', '0', '', '', '0'),
('6409010706220006', '6409011430918000', 'NUR FADILAH', '9', 2, 'PENAJAM PASER UTARA', '2018-09-03', '5', '1', '25', 'MUHAMMAD YUSUF', 'NURASIA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6571030103190004', '6409011601180003', 'MUHAMMAD FATIH MUBARAK', '9', 1, 'PENAJAM PASER UTARA', '2018-01-16', '5', '9', '12', 'RUSDIANTO', 'MUNAJIA SALMAN', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409012001090040', '6409011607120002', 'NASZRAN', '9', 1, 'PENAJAM PASER UTARA', '2012-07-16', '11', '3', '12', 'BASTAN', 'KASNITA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409012108070188', '6409011704100001', 'MUHAMMAD ABDUL AKBAR', '9', 1, 'TANJUNG TENGAH', '2010-04-17', '13', '6', '11', 'SANGKALA HASAN', 'YANTI', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409012108070188', '6409011705020007', 'ASHAR', '9', 1, 'TANJUNG TENGAH', '2002-05-17', '21', '5', '11', 'SANGKALA HASAN', 'YANTI', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409012108070188', '6409011805000005', 'TAWAKAL', '9', 1, 'TANJUNG TENGAH', '2000-05-18', '23', '5', '10', 'SANGKALA HASAN', 'YANTI', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409010907090013', '6409012101180002', 'MARWAN ABDUL MANAF', '9', 1, 'PENAJAM PASER UTARA', '2018-01-21', '5', '9', '7', 'ARBANUT', 'RATIA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409012008070427', '640901210760003', 'YUSMAN', '1', 1, 'BONE', '1976-10-22', '47', '0', '6', 'RUSTANG', 'NIA', 'TILONGKABILA', 'BUTU', 7, 'islam', '0', '', '', '0'),
('6409012001090040', '6409012205080001', 'MUHAMMAD FADLAN ', '9', 1, 'PALAMPANG', '2008-05-22', '15', '5', '6', 'BASTAN', 'KASNITA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409012008070467', '6409012504580001', 'ABDUL RAHMAN', '1', 1, 'BARRU', '1958-04-25', '65', '6', '3', 'TAKING', 'INABI', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6571030103190004', '6409012710890003', 'RUSDIANTO', '1', 1, 'TANJUNG TENGAH', '1989-10-27', '34', '0', '1', 'SUDDIN SINAJA', 'RATIA', 'TILONGKABILA', 'BUTU', 7, 'islam', '0', '', '', '0'),
('6409010506170003', '6409012804890006', 'SUMARDI', '1', 1, 'PETUNG', '1989-04-28', '34', '6', '0', 'ABDUL RAHMAN', 'NAHRIYAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '0', '', '', '0'),
('6409011909170010', '6409013004900002', 'RUDIANSYAH', '1', 1, 'PALAMPANG', '1990-04-30', '33', '5', '28', 'ACHMAD', 'MASTIAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '0', '', '', '0'),
('6409011508070256', '6409013012560012', 'HALING', '1', 2, 'PETUNG', '1956-12-30', '66', '9', '29', 'M SAID', 'HANIYAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '0', '', '', '0'),
('6409012207190010', '6409013012960010', 'SURIANSYAH', '1', 1, 'BARABAI', '1996-12-30', '26', '9', '29', 'SARUDIN', 'RUSNAWATI', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409012108070216', '6409013112520104', 'SUDDIN SINAJA', '1', 1, 'ENREKANG', '1952-12-31', '70', '9', '28', 'SINAJA', 'LAIDA', 'TILONGKABILA', 'BUTU', 7, 'islam', '0', '', '', '0'),
('6409012008070442', '6409013112580102', 'BENNU', '1', 1, 'BALIKPAPAN', '1958-12-31', '64', '9', '28', 'MUSTAMING', 'HADIRAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '1', 'BPNT', '', '0'),
('6409012008070420', '6409013112620114', 'JABIR', '1', 1, 'TAMPANG', '1962-12-31', '60', '9', '28', 'INDING', 'JAWIDA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409012108070188', '6409013112750096', 'SANGKALA HASAN', '1', 1, 'MAKASSAR', '1975-12-01', '47', '10', '27', 'HASAN', 'TING', 'TILONGKABILA', 'BUTU', 7, 'islam', '1', 'PKH', '', '0'),
('6409012001090049', '6409013112750100', 'BASTAN', '1', 1, 'BALIKPAPAN', '1975-12-31', '47', '9', '28', 'BASO', 'SUKA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409011708070251', '6409013112770067', 'ANDI DAHRUNG', '1', 1, 'BALIKPAPAN', '1977-12-31', '45', '9', '28', 'KOPI', 'SURUGA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409011708070251', '6409014103860003', 'DARMAWATI', '3', 2, 'ABBEKAE', '1986-03-01', '37', '7', '27', 'BAKERI', 'BUNGA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '0', '0'),
('6409011508070161', '6409014108830001', 'MINAH', '3', 2, 'BALIKPAPAN', '1983-08-01', '40', '2', '27', 'SALENG', 'ARBAYAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '0', '0'),
('6409010907090013', '6409014203870001', 'NUR LAELA', '3', 2, 'BALIKPAPAN', '1987-03-02', '36', '7', '26', '-', 'SIMA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '0', '0'),
('6409010506170003', '6409014304200002', 'FAIZAH NUR FADILA', '9', 2, 'PENAJAM PASER UTARA', '2020-04-03', '3', '6', '25', 'SUMARDI', 'TUTI TRISNAWATI', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409010907090013', '6409014406130003', 'NAURA SYAKIRA PUTRI', '9', 2, 'PENAJAM PASER UTARA', '2013-06-04', '10', '4', '24', 'ARBANUT', 'NUR LAELA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409011302190006', '6409014406890003', 'RINA', '3', 2, 'TANJUNG TENGAH', '1989-06-04', '34', '4', '24', 'ABDUL RAHMAN', 'NOHRIAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '0', '0'),
('6409012108070216', '6409014503990007', 'JUMIATI', '9', 2, 'TANJUNG TENGAH', '1999-03-05', '24', '7', '23', 'SUDDIN SINAJA', 'RATIA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409012112110012', '6409014507920001', 'MARIYANA', '3', 2, 'PASIR', '1992-07-05', '31', '3', '23', 'SAMBO', 'MARIATI', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '0', '0'),
('6440901010823000', '6409014510030005', 'NOR AISA', '3', 2, 'MUARA TUNAN', '2003-10-05', '20', '0', '23', 'SEBBAR', 'NURBAYAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '0', '0'),
('6409011508070161', '6409014609160000', 'ATIKA ZAHRA RATIFA', '9', 2, 'PENAJAM PASER UTARA', '2016-09-06', '7', '1', '22', 'AWAL MUHDIN', 'MINAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409013103090036', '6409014906900003', 'SAMSIYAH', '3', 2, 'PASIR MAYANG', '1990-06-09', '33', '4', '19', 'JAMJAM', 'MASNAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '0', '0'),
('6409012112110012', '6409015001120004', 'ALIFAH NUR ZAHIRAH', '9', 2, 'PENAJAM PASER UTARA', '2012-01-10', '11', '9', '18', 'DARMANSYAH', 'MARIYANA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409012008070427', '6409015001770007', 'SAMSIYAH', '3', 2, 'TANJUNG TENGAH', '1977-01-10', '46', '9', '18', 'SALENG', 'ARBAYAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '0', '0'),
('6409012108070188', '6409015004980006', '', '9', 0, 'MAROS', '1998-04-10', '25', '6', '18', 'SANGKALA HASAN', 'YANTI', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409011001120022', '6409015208990007', 'IRNA SHEYRINA', '3', 2, 'TANJUNG TENGAH', '1999-08-12', '24', '2', '16', 'ABDUL RAHMAN', 'NAHRIYAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '0', '0'),
('6409011412110005', '6409015508840007', 'AGUSTINA', '3', 2, 'PASIR', '1984-08-15', '39', '2', '13', 'ACHMAD', 'MASTIAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '0', '0'),
('6409012108070216', '6409015602970005', 'NUR AENI', '9', 2, 'TANJUNG TENGAH', '1997-02-16', '26', '8', '12', 'SUDDIN SINAJA', 'RATIA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409012108070216', '6409015612000003', 'FITRI RAHMIATI', '9', 2, 'TANJUNG TENGAH', '2000-12-16', '22', '10', '12', 'SUDDIN SINAJA', 'RATIA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409011412110005', '6409015811110006', 'ALYA NUR WULAN', '9', 2, 'PENAJAM PASER UTARA', '2011-11-18', '11', '11', '10', '-', 'AGUSTINA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409012202120008', '6409016312890002', 'MASNAH', '3', 2, 'WARU', '1989-12-23', '33', '10', '5', 'MASRI', 'MASNIAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '0', '0'),
('6409012207190010', '6409016412190001', 'AZKA SYAHQIRA', '9', 2, 'BALIKPAPAN', '2019-12-24', '3', '10', '4', 'SURIANSYAH', 'MIA ARSITA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409010907090013', '6409016504090004', 'NISRINA AULIA', '9', 2, 'TANJUNG TENGAH', '2009-04-25', '14', '6', '3', 'ARBANUT', 'NUR LAELA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409010706220006', '6409016704230002', 'HASNATUL HARSY', '9', 2, 'PENAJAM PASER UTARA', '2023-04-27', '0', '6', '1', 'HARIS SUPRAYITNO', 'NURASIA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409011909170010', '6409016709970008', 'SITI AISAH', '3', 2, 'BALIKPAPAN', '1997-09-27', '26', '1', '1', 'AGUS', 'SALEHA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '0', '0'),
('6409012207190010', '6409016711970007', 'MIA ARSITA', '3', 2, 'BALIKPAPAN', '1997-11-27', '25', '11', '1', 'ARSIDIN', 'ROSIDAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '0', '0'),
('6409011508070161', '6409016906030004', 'AL FINA', '9', 2, 'PETUNG', '2003-06-29', '20', '3', '29', 'AWAL MUHDIN', 'MINAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409012108070216', '6409016911950003', 'SUMIRAH', '9', 2, 'TANJUNG TENGAH', '1995-11-29', '27', '10', '29', 'SUDDIN SINAJA', 'RATIA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409012008070427', '6409016912150002', 'ROSMI', '9', 2, 'PENAJAM PASER UTARA', '2015-12-29', '7', '9', '30', 'YUSMAN', 'SAMSIYAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409012108070188', '6409017001130001', 'USWA TUN HASANAH', '9', 2, 'TANJUNG TENGAH', '2013-01-30', '10', '8', '29', 'SANGKALA HASAN', 'YANTI', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409012108070188', '6409017005050005', 'NUR HANISA', '9', 2, 'TANJUNG TENGAH', '2005-05-30', '18', '4', '29', 'SANGKALA HASAN', 'YANTI', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409012108070231', '6409017012500032', 'ARBAYAH', '1', 2, 'KOTA BARU', '1951-12-30', '71', '9', '29', 'TAGEN', 'MARWIYAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '1', '', '', '0'),
('6409012202120008', '6409017103120002', 'ARNESHA PUTRI ZAHRA', '9', 2, 'PENAJAM PASER UTARA', '2012-03-31', '11', '6', '28', 'M.ARDIN', 'MASNAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409011508070256', '6409017112510059', 'DJAMIAH', '3', 2, 'PETUNG', '1951-12-31', '71', '9', '28', 'MANGUJU', 'SATIMAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '0', '0'),
('6409012008070412', '6409017112550116', 'KAMU', '1', 2, 'SINJAI', '1955-12-31', '67', '9', '28', 'PANDE', 'FATIMANG', 'TILONGKABILA', 'BUTU', 7, 'islam', '1', 'BPNT', '', '0'),
('6409012108070216', '6409017112590114', 'RATIA', '3', 2, 'ENREKANG', '1959-12-31', '63', '9', '28', 'LISA', 'BADARI', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '0', '0'),
('6409012008070420', '6409017112660144', 'CARMINA', '3', 2, '', '1966-12-31', '56', '9', '28', 'MIRING', 'CENANG', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '0', '0'),
('6409012108070188', '6409017112780093', 'YANTI', '3', 2, 'BARAMBANG', '1978-12-31', '44', '9', '28', 'SADDA', 'GASIN', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '0', '0'),
('6409012008070442', '6409017112810104', 'HAPSAH', '3', 2, 'BALIKPAPAN', '1961-12-31', '61', '9', '28', 'LAMPE', 'BOLLO', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '0', '0'),
('6409010706220006', '6409020508980003', 'HARIS SUPRAYITNO', '1', 1, 'WARU', '1998-08-05', '25', '2', '23', 'SUGIANTO', 'SUPRIATIN', 'TILONGKABILA', 'BUTU', 7, 'islam', '1', 'BPNT', '', '0'),
('6409012003120020', '6409021202680001', 'JUNAIDI', '1', 1, 'WONOSOBO', '1968-02-12', '55', '8', '16', 'SUDARMONO', 'MAINEM', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409012003120020', '6409021206020001', 'RISKI', '9', 1, 'PENAJAM PASER UTARA', '0000-00-00', '21', '4', '16', 'JUNAIDI', 'PARIYATI', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409012003120020', '6409024901040001', 'NOVITASARI', '9', 2, 'PENAJAM PASER UTARA', '2004-01-09', '19', '9', '19', 'JUNAIDI', 'PARIYATI', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('640901290719004', '6471010609110001', 'MUHAMMAD JASIIM AL-JAWWAD', '9', 1, 'BALIKPAPAN', '2011-09-06', '12', '1', '22', 'KHALID USMAN', 'NURMUTIAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('640901290719004', '6471015106130001', 'PUTRI FAHDA', '9', 2, 'BALIKPAPAN', '2003-06-11', '20', '4', '17', 'KHALID USMAN', 'NURMUTIAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('640901290719004', '6471015908830003', 'NURMUTIAH', '1', 2, 'PETUNG', '1983-08-19', '40', '2', '9', 'SAPARUDIN', 'LIAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '1', '', '', '0'),
('640901290719004', '6471017007070002', 'JIHAN SHABIRA', '9', 2, 'BALIKPAPAN', '2007-07-30', '16', '2', '29', 'KHALID USMAN', 'NURMUTIAH', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6571030103190004', '6571035310190002', 'MARYAM TAQIYYA', '9', 2, 'TARAKAN', '2019-10-13', '4', '0', '15', 'RUSDIANTO', 'MUNAJIA SALMAN', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409012211180002', '7308014107670026', '', '--', 0, 'BONE', '1967-07-01', '56', '3', '27', 'SALENG', 'SANANG', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('7371090607180019', '7308014107840052', 'JUSMIATI', '3', 2, 'CAMMILO', '2000-01-28', '23', '9', '0', 'ISKANDAR', 'BANIA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '0', '0'),
('7308272550521000', '7308060107950086', 'LUKMAN', '1', 1, 'DESA BUNE', '1995-10-07', '28', '0', '21', 'ABUSTAN', 'HASNA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('6409010706220006', '7308275212000001', 'NURASIA', '3', 2, 'BULU ULAWENG', '2000-12-27', '22', '10', '1', 'ABD RAHIM', 'TAHRIA', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '0', '0'),
('7308272550521000', '7308276505980002', 'HASLINDA', '3', 2, 'BULU ELAWENG', '1998-05-25', '25', '5', '3', 'MATTANG', 'GUNATANG', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '0', '0'),
('7371090607180019', '7371051704980006', 'M FAHMI FIRDIANSYAH MANSYUR', '1', 1, 'UJUNG PANDANG', '1998-04-17', '25', '6', '11', 'SUTRIAH', 'TANE MANSUR', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0'),
('7371090607180019', '7371095301190004', 'AISYAH AYUDIAH NUR ASYIFAH', '9', 2, 'MAKASSAR', '2019-01-13', '4', '9', '15', 'M FAHMI FIRDIANSYAH MANSYUR', 'JUSMIATI', 'TILONGKABILA', 'BUTU', 7, 'islam', '', '', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_konsumsi`
--

CREATE TABLE `tabel_konsumsi` (
  `NIK` varchar(16) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `BAHAN_MAKANAN` varchar(10) NOT NULL,
  `FREKUENSI_PER_MINGGU` varchar(2) NOT NULL,
  `PAKAIAN_PER_TAHUN` varchar(2) NOT NULL,
  `MAKAN_PER_HARI` varchar(2) NOT NULL,
  `BIAYA_PENGOBATAN` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_konsumsi`
--

INSERT INTO `tabel_konsumsi` (`NIK`, `NAMA`, `BAHAN_MAKANAN`, `FREKUENSI_PER_MINGGU`, `PAKAIAN_PER_TAHUN`, `MAKAN_PER_HARI`, `BIAYA_PENGOBATAN`) VALUES
('1302100901880001', 'ARIF FAREZA', '1', '0', '1', '2', '0'),
('4565432123456789', 'paling baru', '1', '3', '3', '3', '1'),
('5409016610860006', 'KASNITA', '', '', '', '', ''),
('6401041509090007', 'RAFIQ FIRMAN RAMADHAN', '', '', '', '', ''),
('6401043103810002', 'RACHIM ERTANTO', '4', '4', '2', '3', '0'),
('6401046204890003', 'TUTI TRISNAWATI', '', '', '', '', ''),
('6401046809130001', 'SYAKIRA NUR SYAFA', '', '', '', '', ''),
('6401046911120005', 'HESTY ANANTA', '', '', '', '', ''),
('6402034606761003', 'FITRIANI BAHARUDDIN', '', '', '', '', ''),
('6409010101870017', 'MUHAMMAD ARDIN', '4', '4', '1', '3', '0'),
('6409010103770004', 'AWAL MUHDIN', '', '3', '1', '3', '0'),
('6409010304080001', 'REYHAN NOOR FAZRIEL PRATAMA', '', '', '', '', ''),
('6409010310080004', 'ALDY FIRANSYAH PUTRA', '', '', '', '', ''),
('6409010504880004', 'JUSMAN', '', '', '', '', ''),
('6409010804040001', 'NURHIDAYAT', '', '', '', '', ''),
('6409010809870003', 'DARMANSYAH', '4', '4', '2', '3', '0'),
('6409010902890007', 'HASANUDIN', '4', '4', '1', '3', '0'),
('6409010907970002', 'RISMAN MAULADI', '', '', '', '', ''),
('6409010911190001', 'RAZKA ARKANA MAULIDAN', '', '', '', '', ''),
('6409010911840004', 'RAMLI', '', '', '', '', ''),
('6409011009180002', 'ALFIE ALFARIZI ARFAN', '', '', '', '', ''),
('6409011010830011', 'ARBANUT', '4', '', '1', '3', '0'),
('6409011012100005', 'ALIEF ARDHANI PRATAMA', '', '', '', '', ''),
('6409011103180001', 'MUHAMMAD RAZKA', '', '', '', '', ''),
('6409011104840008', 'HENDRA IRAWAN ', '4', '4', '2', '3', '0'),
('6409011204800003', 'JASRI INDING', '', '', '', '', ''),
('6409011204940009', 'MOCH. ROFIK', '4', '4', '2', '3', '0'),
('6409011403020003', 'ANDI DARMAN ARDIANSYAH', '', '4', '2', '3', '0'),
('6409011430918000', 'NUR FADILAH', '', '', '', '', ''),
('6409011601180003', 'MUHAMMAD FATIH MUBARAK', '', '', '', '', ''),
('6409011607120002', 'NASZRAN', '', '', '', '', ''),
('6409011704100001', 'MUHAMMAD ABDUL AKBAR', '', '', '', '', ''),
('6409011705020007', 'ASHAR', '', '', '', '', ''),
('6409011805000005', 'TAWAKAL', '', '', '', '', ''),
('6409012101180002', 'MARWAN ABDUL MANAF', '', '', '', '', ''),
('640901210760003', 'YUSMAN', '4', '4', '2', '3', '0'),
('6409012205080001', 'MUHAMMAD FADLAN ', '', '', '', '', ''),
('6409012504580001', 'ABDUL RAHMAN', '4', '4', '1', '3', '0'),
('6409012710890003', 'RUSDIANTO', '4', '4', '2', '3', '0'),
('6409012804890006', 'SUMARDI', '4', '4', '2', '3', '0'),
('6409013004900002', 'RUDIANSYAH', '4', '4', '2', '3', '0'),
('6409013012560012', 'HALING', '', '4', '0', '3', '0'),
('6409013012960010', 'SURIANSYAH', '4', '4', '1', '3', '0'),
('6409013112520104', 'SUDDIN SINAJA', '4', '4', '1', '3', '0'),
('6409013112580102', 'BENNU', '4', '3', '0', '3', '0'),
('6409013112620114', 'JABIR', '4', '4', '2', '3', '0'),
('6409013112750096', 'SANGKALA HASAN', '4', '4', '1', '3', '0'),
('6409013112750100', 'BASTAN', '4', '4', '1', '3', '0'),
('6409013112770067', 'ANDI DAHRUNG', '4', '4', '0', '3', '0'),
('6409014103860003', 'DARMAWATI', '', '', '', '', ''),
('6409014108830001', 'MINAH', '', '', '', '', ''),
('6409014203870001', 'NUR LAELA', '', '', '', '', ''),
('6409014304200002', 'FAIZAH NUR FADILA', '', '', '', '', ''),
('6409014406130003', 'NAURA SYAKIRA PUTRI', '', '', '', '', ''),
('6409014406890003', 'RINA', '', '', '', '', ''),
('6409014503990007', 'JUMIATI', '', '', '', '', ''),
('6409014507920001', 'MARIYANA', '', '', '', '', ''),
('6409014510030005', 'NOR AISA', '', '', '', '', ''),
('6409014609160000', 'ATIKA ZAHRA RATIFA', '', '', '', '', ''),
('6409014906900003', 'SAMSIYAH', '', '', '', '', ''),
('6409015001120004', 'ALIFAH NUR ZAHIRAH', '', '', '', '', ''),
('6409015001770007', 'SAMSIYAH', '', '', '', '', ''),
('6409015004980006', '', '', '', '', '', ''),
('6409015208990007', 'IRNA SHEYRINA', '', '', '', '', ''),
('6409015508840007', 'AGUSTINA', '', '', '', '', ''),
('6409015602970005', 'NUR AENI', '', '', '', '', ''),
('6409015612000003', 'FITRI RAHMIATI', '', '', '', '', ''),
('6409015811110006', 'ALYA NUR WULAN', '', '', '', '', ''),
('6409016312890002', 'MASNAH', '', '', '', '', ''),
('6409016412190001', 'AZKA SYAHQIRA', '', '', '', '', ''),
('6409016504090004', 'NISRINA AULIA', '', '', '', '', ''),
('6409016704230002', 'HASNATUL HARSY', '', '', '', '', ''),
('6409016709970008', 'SITI AISAH', '', '', '', '', ''),
('6409016711970007', 'MIA ARSITA', '', '', '', '', ''),
('6409016906030004', 'AL FINA', '', '', '', '', ''),
('6409016911950003', 'SUMIRAH', '', '', '', '', ''),
('6409016912150002', 'ROSMI', '', '', '', '', ''),
('6409017001130001', 'USWA TUN HASANAH', '', '', '', '', ''),
('6409017005050005', 'NUR HANISA', '', '', '', '', ''),
('6409017012500032', 'ARBAYAH', '4', '4', '2', '3', '0'),
('6409017103120002', 'ARNESHA PUTRI ZAHRA', '', '', '', '', ''),
('6409017112510059', 'DJAMIAH', '', '', '', '', ''),
('6409017112550116', 'KAMU', '4', '4', '1', '3', '0'),
('6409017112590114', 'RATIA', '', '', '', '', ''),
('6409017112660144', 'CARMINA', '', '', '', '', ''),
('6409017112780093', 'YANTI', '', '', '', '', ''),
('6409017112810104', 'HAPSAH', '', '', '', '', ''),
('6409020508980003', 'HARIS SUPRAYITNO', '4', '2', '1', '3', '0'),
('6409021202680001', 'JUNAIDI', '4', '4', '1', '3', '0'),
('6409021206020001', 'RISKI', '', '', '', '', ''),
('6409024901040001', 'NOVITASARI', '', '', '', '', ''),
('6471010609110001', 'MUHAMMAD JASIIM AL-JAWWAD', '', '', '', '', ''),
('6471015106130001', 'PUTRI FAHDA', '', '', '', '', ''),
('6471015908830003', 'NURMUTIAH', '4', '4', '2', '3', '0'),
('6471017007070002', 'JIHAN SHABIRA', '', '', '', '', ''),
('6473034606930000', '', '', '', '', '', ''),
('6571035310190002', 'MARYAM TAQIYYA', '', '', '', '', ''),
('7204040405770001', 'TASWIR', '1', '0', '1', '0', '0'),
('7308014107670026', '', '4', '4', '1', '3', '0'),
('7308014107840052', 'JUSMIATI', '', '', '', '', ''),
('7308060107950086', 'LUKMAN', '4', '4', '1', '3', '0'),
('7308275212000001', 'NURASIA', '', '', '', '', ''),
('7308276505980002', 'HASLINDA', '', '', '', '', ''),
('7371051704980006', 'M FAHMI FIRDIANSYAH MANSYUR', '4', '4', '1', '3', '0'),
('7371095301190004', 'AISYAH AYUDIAH NUR ASYIFAH', '', '', '', '', ''),
('7371114901030001', 'IZZAH FAUZIAH IRFAN', '', '', '', '', ''),
('7501190712690001', 'KARIM ADAM', '1', '0', '1', '1', '0'),
('7502012203100002', 'RAHMAT SUAIB', '', '0', '0', '0', '0'),
('7503031505690001', 'Explicabo Commodo d', '1', '0', '1', '2', '0'),
('7503035010630002', 'HAPSA ADAM', '', '', '', '', ''),
('7503035703070001', 'NIKMAWATI ADAM', '', '0', '0', '0', '0'),
('7503060111850001', 'ISMAIL DJAFAR', '1', '0', '1', '1', '0'),
('7503060510770001', 'RAMIN G LADIKU', '1', '0', '1', '2', '0'),
('7503061208170001', 'ARFATTA DINAR FAREZA ', '', '', '', '', ''),
('7503061212710002', '', '', '0', '0', '0', '0'),
('7503061308840001', 'YUMAN TALANGO', '1', '1', '1', '1', '0'),
('7503061705470001', 'BAHRUDIN KARIM', '', '', '', '', ''),
('7503061706670001', 'DRS HENDRO NURJOKO MPKIM', '1', '0', '1', '2', '0'),
('7503062306700001', 'WAHAB SUAIBA', '1', '1', '1', '2', '0'),
('7503064206670001', 'HARLIN DJAFAR', '', '', '', '', ''),
('7503065112160001', 'SYAFIRA AZ-ZAHRA DJAFAR', '', '', '', '', ''),
('7503065407900001', '', '', '0', '0', '0', '0'),
('7503065801010002', 'RISKAWATI SAMANI', '', '', '', '', ''),
('7503070907130001', 'AQILAH ADRIYANA DJAFAR', '', '', '', '', ''),
('7503075601900002', 'VENDRIYANTI USMAN', '', '', '', '', ''),
('7505020511640001', 'SONI MANYOE', '1', '1', '1', '2', '0'),
('7571030805610001', 'SARJANA MILE', '2', '0', '1', '2', '0'),
('9876543219876543', 'test HBKL', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pekerjaan`
--

CREATE TABLE `tabel_pekerjaan` (
  `NIK` varchar(16) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `PEKERJAAN` varchar(30) NOT NULL,
  `PENGHASILAN_PER_BULAN` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_pekerjaan`
--

INSERT INTO `tabel_pekerjaan` (`NIK`, `NAMA`, `PEKERJAAN`, `PENGHASILAN_PER_BULAN`) VALUES
('1302100901880001', 'ARIF FAREZA', 'Buruh Bangunan', 500000),
('4565432123456789', 'paling baru', 'Pengolahan/Industri', 50000000),
('5409016610860006', 'KASNITA', 'Lainnya', 0),
('6401041509090007', 'RAFIQ FIRMAN RAMADHAN', 'Tidak Bekerja', 0),
('6401043103810002', 'RACHIM ERTANTO', 'Petani', 0),
('6401046204890003', 'TUTI TRISNAWATI', 'Lainnya', 0),
('6401046809130001', 'SYAKIRA NUR SYAFA', 'Tidak Bekerja', 0),
('6401046911120005', 'HESTY ANANTA', 'Tidak Bekerja', 0),
('6402034606761003', 'FITRIANI BAHARUDDIN', 'Lainnya', 0),
('6409010101870017', 'MUHAMMAD ARDIN', 'Lainnya', 0),
('6409010103770004', 'AWAL MUHDIN', 'Buruh Perkebunan', 0),
('6409010304080001', 'REYHAN NOOR FAZRIEL PRATAMA', 'Tidak Bekerja', 0),
('6409010310080004', 'ALDY FIRANSYAH PUTRA', 'Tidak Bekerja', 0),
('6409010504880004', 'JUSMAN', 'Lainnya', 0),
('6409010804040001', 'NURHIDAYAT', 'Tidak Bekerja', 0),
('6409010809870003', 'DARMANSYAH', 'Buruh Tani', 0),
('6409010902890007', 'HASANUDIN', 'Buruh Tani', 0),
('6409010907970002', 'RISMAN MAULADI', 'Tidak Bekerja', 0),
('6409010911190001', 'RAZKA ARKANA MAULIDAN', 'Tidak Bekerja', 0),
('6409010911840004', 'RAMLI', 'Tidak Bekerja', 0),
('6409011009180002', 'ALFIE ALFARIZI ARFAN', 'Tidak Bekerja', 0),
('6409011010830011', 'ARBANUT', 'Lainnya', 0),
('6409011012100005', 'ALIEF ARDHANI PRATAMA', 'Tidak Bekerja', 0),
('6409011103180001', 'MUHAMMAD RAZKA', 'Tidak Bekerja', 0),
('6409011104840008', 'HENDRA IRAWAN ', 'Petani', 0),
('6409011204800003', 'JASRI INDING', 'Tidak Bekerja', 0),
('6409011204940009', 'MOCH. ROFIK', 'Buruh Tani', 0),
('6409011403020003', 'ANDI DARMAN ARDIANSYAH', 'Petani', 0),
('6409011430918000', 'NUR FADILAH', 'Tidak Bekerja', 0),
('6409011601180003', 'MUHAMMAD FATIH MUBARAK', 'Tidak Bekerja', 0),
('6409011607120002', 'NASZRAN', 'Tidak Bekerja', 0),
('6409011704100001', 'MUHAMMAD ABDUL AKBAR', 'Tidak Bekerja', 0),
('6409011705020007', 'ASHAR', 'Tidak Bekerja', 0),
('6409011805000005', 'TAWAKAL', 'Lainnya', 0),
('6409012101180002', 'MARWAN ABDUL MANAF', 'Tidak Bekerja', 0),
('640901210760003', 'YUSMAN', 'Petani', 0),
('6409012205080001', 'MUHAMMAD FADLAN ', 'Tidak Bekerja', 0),
('6409012504580001', 'ABDUL RAHMAN', 'Petani', 0),
('6409012710890003', 'RUSDIANTO', 'Lainnya', 0),
('6409012804890006', 'SUMARDI', 'Lainnya', 0),
('6409013004900002', 'RUDIANSYAH', 'Lainnya', 0),
('6409013012560012', 'HALING', 'Buruh Tani', 0),
('6409013012960010', 'SURIANSYAH', 'Lainnya', 0),
('6409013112520104', 'SUDDIN SINAJA', 'Petani', 0),
('6409013112580102', 'BENNU', 'Petani', 0),
('6409013112620114', 'JABIR', 'Petani', 0),
('6409013112750096', 'SANGKALA HASAN', 'Petani', 0),
('6409013112750100', 'BASTAN', 'Petani', 0),
('6409013112770067', 'ANDI DAHRUNG', 'Petani', 0),
('6409014103860003', 'DARMAWATI', 'Tidak Bekerja', 0),
('6409014108830001', 'MINAH', 'Lainnya', 0),
('6409014203870001', 'NUR LAELA', 'Lainnya', 0),
('6409014304200002', 'FAIZAH NUR FADILA', 'Tidak Bekerja', 0),
('6409014406130003', 'NAURA SYAKIRA PUTRI', 'Tidak Bekerja', 0),
('6409014406890003', 'RINA', 'Lainnya', 0),
('6409014503990007', 'JUMIATI', 'Tidak Bekerja', 0),
('6409014507920001', 'MARIYANA', 'Lainnya', 0),
('6409014510030005', 'NOR AISA', 'Lainnya', 0),
('6409014609160000', 'ATIKA ZAHRA RATIFA', 'Tidak Bekerja', 0),
('6409014906900003', 'SAMSIYAH', 'Tidak Bekerja', 0),
('6409015001120004', 'ALIFAH NUR ZAHIRAH', 'Tidak Bekerja', 0),
('6409015001770007', 'SAMSIYAH', 'Lainnya', 0),
('6409015004980006', '', 'Lainnya', 0),
('6409015208990007', 'IRNA SHEYRINA', 'Lainnya', 0),
('6409015508840007', 'AGUSTINA', 'Lainnya', 0),
('6409015602970005', 'NUR AENI', 'Lainnya', 0),
('6409015612000003', 'FITRI RAHMIATI', 'Tidak Bekerja', 0),
('6409015811110006', 'ALYA NUR WULAN', 'Tidak Bekerja', 0),
('6409016312890002', 'MASNAH', 'Tidak Bekerja', 0),
('6409016412190001', 'AZKA SYAHQIRA', 'Tidak Bekerja', 0),
('6409016504090004', 'NISRINA AULIA', 'Tidak Bekerja', 0),
('6409016704230002', 'HASNATUL HARSY', 'Tidak Bekerja', 0),
('6409016709970008', 'SITI AISAH', 'Lainnya', 0),
('6409016711970007', 'MIA ARSITA', 'Tidak Bekerja', 0),
('6409016906030004', 'AL FINA', 'Tidak Bekerja', 0),
('6409016911950003', 'SUMIRAH', 'Tidak Bekerja', 0),
('6409016912150002', 'ROSMI', 'Tidak Bekerja', 0),
('6409017001130001', 'USWA TUN HASANAH', 'Tidak Bekerja', 0),
('6409017005050005', 'NUR HANISA', 'Tidak Bekerja', 0),
('6409017012500032', 'ARBAYAH', 'Lainnya', 0),
('6409017103120002', 'ARNESHA PUTRI ZAHRA', 'Tidak Bekerja', 0),
('6409017112510059', 'DJAMIAH', 'Lainnya', 0),
('6409017112550116', 'KAMU', 'Lainnya', 0),
('6409017112590114', 'RATIA', 'Lainnya', 0),
('6409017112660144', 'CARMINA', 'Lainnya', 0),
('6409017112780093', 'YANTI', 'Lainnya', 0),
('6409017112810104', 'HAPSAH', 'Tidak Bekerja', 0),
('6409020508980003', 'HARIS SUPRAYITNO', 'Buruh Tani', 0),
('6409021202680001', 'JUNAIDI', 'Lainnya', 0),
('6409021206020001', 'RISKI', 'Tidak Bekerja', 0),
('6409024901040001', 'NOVITASARI', 'Tidak Bekerja', 0),
('6471010609110001', 'MUHAMMAD JASIIM AL-JAWWAD', 'Tidak Bekerja', 0),
('6471015106130001', 'PUTRI FAHDA', 'Tidak Bekerja', 0),
('6471015908830003', 'NURMUTIAH', 'Lainnya', 0),
('6471017007070002', 'JIHAN SHABIRA', 'Lainnya', 0),
('6473034606930000', '', '--Pilih Pekerjaan--', 0),
('6571035310190002', 'MARYAM TAQIYYA', 'Tidak Bekerja', 0),
('7204040405770001', 'TASWIR', 'Buruh Bangunan', 500000),
('7308014107670026', '', 'Tidak Bekerja', 0),
('7308014107840052', 'JUSMIATI', 'Lainnya', 0),
('7308060107950086', 'LUKMAN', 'Petani', 0),
('7308275212000001', 'NURASIA', 'Lainnya', 0),
('7308276505980002', 'HASLINDA', 'Lainnya', 0),
('7371051704980006', 'M FAHMI FIRDIANSYAH MANSYUR', 'Tidak Bekerja', 0),
('7371095301190004', 'AISYAH AYUDIAH NUR ASYIFAH', 'Tidak Bekerja', 0),
('7371114901030001', 'IZZAH FAUZIAH IRFAN', '--Pilih Pekerjaan--', 0),
('7501190712690001', 'KARIM ADAM', 'Buruh Tani', 500000),
('7502012203100002', 'RAHMAT SUAIB', 'TKI', 0),
('7503031505690001', 'Explicabo Commodo d', 'Pengolahan/Industri', 70),
('7503035010630002', 'HAPSA ADAM', 'Buruh Tani', 500000),
('7503035703070001', 'NIKMAWATI ADAM', 'Perangkat Desa', 0),
('7503060111850001', 'ISMAIL DJAFAR', 'Buruh Bangunan', 500000),
('7503060510770001', 'RAMIN G LADIKU', 'Buruh Tani', 500000),
('7503061208170001', 'ARFATTA DINAR FAREZA ', 'Tidak Bekerja', 0),
('7503061212710002', 'GUNTUR SAMANI', 'Nelayan', 500000),
('7503061308840001', 'YUMAN TALANGO', 'Buruh Tani', 500000),
('7503061705470001', 'BAHRUDIN KARIM', 'Tidak Bekerja', 0),
('7503061706670001', 'DRS HENDRO NURJOKO MPKIM', 'Buruh Tani', 500000),
('7503062306700001', 'WAHAB SUAIBA', 'Buruh Perkebunan', 500000),
('7503064206670001', 'HARLIN DJAFAR', 'Tidak Bekerja', 0),
('7503065112160001', 'SYAFIRA AZ-ZAHRA DJAFAR', '--Pilih Pekerjaan--', 0),
('7503065407900001', 'SELVIANA HASAN', 'Tidak Bekerja', 0),
('7503065801010002', 'RISKAWATI SAMANI', 'Tidak Bekerja', 0),
('7503070907130001', 'AQILAH ADRIYANA DJAFAR', '--Pilih Pekerjaan--', 0),
('7503075601900002', 'VENDRIYANTI USMAN', 'Buruh Tani', 500000),
('7505020511640001', 'SONI MANYOE', 'Buruh Bangunan', 400000),
('7571030805610001', 'SARJANA MILE', 'Buruh Tani', 500000),
('9876543219876543', 'test HBKL', 'Buruh Tani', 500000);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pendidikan`
--

CREATE TABLE `tabel_pendidikan` (
  `NIK` varchar(16) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `PENDIDIKAN_TERAKHIR` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_pendidikan`
--

INSERT INTO `tabel_pendidikan` (`NIK`, `NAMA`, `PENDIDIKAN_TERAKHIR`) VALUES
('1302100901880001', 'ARIF FAREZA', 'Tidak Tamat SD'),
('4565432123456789', 'paling baru', 'S3 dan Sederajat'),
('5409016610860006', 'KASNITA', 'SMA dan Sederajat'),
('6401041509090007', 'RAFIQ FIRMAN RAMADHAN', 'SD dan Sederajat'),
('6401043103810002', 'RACHIM ERTANTO', 'SMA dan Sederajat'),
('6401046204890003', 'TUTI TRISNAWATI', 'SMA dan Sederajat'),
('6401046809130001', 'SYAKIRA NUR SYAFA', 'Tidak Sekolah'),
('6401046911120005', 'HESTY ANANTA', 'Tidak Sekolah'),
('6402034606761003', 'FITRIANI BAHARUDDIN', 'SMA dan Sederajat'),
('6409010101870017', 'MUHAMMAD ARDIN', 'SD dan Sederajat'),
('6409010103770004', 'AWAL MUHDIN', 'SD dan Sederajat'),
('6409010304080001', 'REYHAN NOOR FAZRIEL PRATAMA', 'Tidak Sekolah'),
('6409010310080004', 'ALDY FIRANSYAH PUTRA', 'Tidak Sekolah'),
('6409010504880004', 'JUSMAN', 'SMA dan Sederajat'),
('6409010804040001', 'NURHIDAYAT', 'Tidak Sekolah'),
('6409010809870003', 'DARMANSYAH', 'SMP dan Sederajat'),
('6409010902890007', 'HASANUDIN', 'SD dan Sederajat'),
('6409010907970002', 'RISMAN MAULADI', 'Tidak Sekolah'),
('6409010911190001', 'RAZKA ARKANA MAULIDAN', 'Tidak Sekolah'),
('6409010911840004', 'RAMLI', 'SMP dan Sederajat'),
('6409011009180002', 'ALFIE ALFARIZI ARFAN', 'Tidak Sekolah'),
('6409011010830011', 'ARBANUT', 'Tidak Sekolah'),
('6409011012100005', 'ALIEF ARDHANI PRATAMA', 'Tidak Sekolah'),
('6409011103180001', 'MUHAMMAD RAZKA', 'Tidak Sekolah'),
('6409011104840008', 'HENDRA IRAWAN ', 'SMA dan Sederajat'),
('6409011204800003', 'JASRI INDING', 'SMA dan Sederajat'),
('6409011204940009', 'MOCH. ROFIK', 'Tidak Tamat SD'),
('6409011403020003', 'ANDI DARMAN ARDIANSYAH', 'Tidak Sekolah'),
('6409011430918000', 'NUR FADILAH', 'Tidak Sekolah'),
('6409011601180003', 'MUHAMMAD FATIH MUBARAK', 'Tidak Sekolah'),
('6409011607120002', 'NASZRAN', 'Tidak Sekolah'),
('6409011704100001', 'MUHAMMAD ABDUL AKBAR', 'Tidak Sekolah'),
('6409011705020007', 'ASHAR', 'Tidak Sekolah'),
('6409011805000005', 'TAWAKAL', 'SD dan Sederajat'),
('6409012101180002', 'MARWAN ABDUL MANAF', 'Tidak Sekolah'),
('640901210760003', 'YUSMAN', 'Tidak Tamat SD'),
('6409012205080001', 'MUHAMMAD FADLAN ', 'Tidak Sekolah'),
('6409012504580001', 'ABDUL RAHMAN', 'Tidak Sekolah'),
('6409012710890003', 'RUSDIANTO', 'SMA dan Sederajat'),
('6409012804890006', 'SUMARDI', 'SMP dan Sederajat'),
('6409013004900002', 'RUDIANSYAH', 'SMA dan Sederajat'),
('6409013012560012', 'HALING', 'SD dan Sederajat'),
('6409013012960010', 'SURIANSYAH', 'SMA dan Sederajat'),
('6409013112520104', 'SUDDIN SINAJA', 'SMA dan Sederajat'),
('6409013112580102', 'BENNU', 'SD dan Sederajat'),
('6409013112620114', 'JABIR', 'SMA dan Sederajat'),
('6409013112750096', 'SANGKALA HASAN', 'SD dan Sederajat'),
('6409013112750100', 'BASTAN', 'SD dan Sederajat'),
('6409013112770067', 'ANDI DAHRUNG', 'SMP dan Sederajat'),
('6409014103860003', 'DARMAWATI', 'SD dan Sederajat'),
('6409014108830001', 'MINAH', 'SD dan Sederajat'),
('6409014203870001', 'NUR LAELA', 'SD dan Sederajat'),
('6409014304200002', 'FAIZAH NUR FADILA', 'Tidak Sekolah'),
('6409014406130003', 'NAURA SYAKIRA PUTRI', 'Tidak Sekolah'),
('6409014406890003', 'RINA', 'SMA dan Sederajat'),
('6409014503990007', 'JUMIATI', 'SMP dan Sederajat'),
('6409014507920001', 'MARIYANA', 'SMP dan Sederajat'),
('6409014510030005', 'NOR AISA', 'Tidak Sekolah'),
('6409014609160000', 'ATIKA ZAHRA RATIFA', 'Tidak Sekolah'),
('6409014906900003', 'SAMSIYAH', 'Tidak Sekolah'),
('6409015001120004', 'ALIFAH NUR ZAHIRAH', 'Tidak Sekolah'),
('6409015001770007', 'SAMSIYAH', 'Tidak Tamat SD'),
('6409015004980006', '', 'Tidak Tamat SD'),
('6409015208990007', 'IRNA SHEYRINA', 'SD dan Sederajat'),
('6409015508840007', 'AGUSTINA', 'SMA dan Sederajat'),
('6409015602970005', 'NUR AENI', 'Tidak Sekolah'),
('6409015612000003', 'FITRI RAHMIATI', 'Tidak Sekolah'),
('6409015811110006', 'ALYA NUR WULAN', 'Tidak Sekolah'),
('6409016312890002', 'MASNAH', 'SMA dan Sederajat'),
('6409016412190001', 'AZKA SYAHQIRA', 'Tidak Sekolah'),
('6409016504090004', 'NISRINA AULIA', 'Tidak Sekolah'),
('6409016704230002', 'HASNATUL HARSY', 'Tidak Sekolah'),
('6409016709970008', 'SITI AISAH', 'SMA dan Sederajat'),
('6409016711970007', 'MIA ARSITA', 'SMA dan Sederajat'),
('6409016906030004', 'AL FINA', 'Tidak Sekolah'),
('6409016911950003', 'SUMIRAH', 'SMP dan Sederajat'),
('6409016912150002', 'ROSMI', 'Tidak Sekolah'),
('6409017001130001', 'USWA TUN HASANAH', 'Tidak Sekolah'),
('6409017005050005', 'NUR HANISA', 'Tidak Sekolah'),
('6409017012500032', 'ARBAYAH', 'Tidak Tamat SD'),
('6409017103120002', 'ARNESHA PUTRI ZAHRA', 'Tidak Sekolah'),
('6409017112510059', 'DJAMIAH', 'SD dan Sederajat'),
('6409017112550116', 'KAMU', 'Tidak Sekolah'),
('6409017112590114', 'RATIA', 'SD dan Sederajat'),
('6409017112660144', 'CARMINA', 'Diploma 1-3'),
('6409017112780093', 'YANTI', 'SD dan Sederajat'),
('6409017112810104', 'HAPSAH', 'SD dan Sederajat'),
('6409020508980003', 'HARIS SUPRAYITNO', 'Tidak Tamat SD'),
('6409021202680001', 'JUNAIDI', 'Tidak Sekolah'),
('6409021206020001', 'RISKI', 'Tidak Sekolah'),
('6409024901040001', 'NOVITASARI', 'Tidak Sekolah'),
('6471010609110001', 'MUHAMMAD JASIIM AL-JAWWAD', 'Tidak Sekolah'),
('6471015106130001', 'PUTRI FAHDA', 'Tidak Sekolah'),
('6471015908830003', 'NURMUTIAH', 'SMA dan Sederajat'),
('6471017007070002', 'JIHAN SHABIRA', 'SD dan Sederajat'),
('6473034606930000', '', '--Pilih Pendidikan--'),
('6571035310190002', 'MARYAM TAQIYYA', 'Tidak Sekolah'),
('7204040405770001', 'TASWIR', 'Tidak Tamat SD'),
('7308014107670026', '', 'SD dan Sederajat'),
('7308014107840052', 'JUSMIATI', 'SMA dan Sederajat'),
('7308060107950086', 'LUKMAN', 'SMA dan Sederajat'),
('7308275212000001', 'NURASIA', 'SD dan Sederajat'),
('7308276505980002', 'HASLINDA', 'Diploma 1-3'),
('7371051704980006', 'M FAHMI FIRDIANSYAH MANSYUR', 'SMA dan Sederajat'),
('7371095301190004', 'AISYAH AYUDIAH NUR ASYIFAH', 'Tidak Sekolah'),
('7371114901030001', 'IZZAH FAUZIAH IRFAN', 'SMA dan Sederajat'),
('7501190712690001', 'KARIM ADAM', 'Tidak Tamat SD'),
('7502012203100002', 'RAHMAT SUAIB', 'SD dan Sederajat'),
('7503031505690001', 'Explicabo Commodo d', 'Tidak Tamat SD'),
('7503035010630002', 'HAPSA ADAM', 'Tidak Tamat SD'),
('7503035703070001', 'NIKMAWATI ADAM', 'SMP dan Sederajat'),
('7503060111850001', 'ISMAIL DJAFAR', 'Tidak Tamat SD'),
('7503060510770001', 'RAMIN G LADIKU', 'SMA dan Sederajat'),
('7503061208170001', 'ARFATTA DINAR FAREZA ', 'SD dan Sederajat'),
('7503061212710002', '', '--Pilih Pendidikan--'),
('7503061308840001', 'YUMAN TALANGO', 'Tidak Tamat SD'),
('7503061705470001', 'BAHRUDIN KARIM', 'Tidak Tamat SD'),
('7503061706670001', 'DRS HENDRO NURJOKO MPKIM', 'Tidak Tamat SD'),
('7503062306700001', 'WAHAB SUAIBA', 'Tidak Tamat SD'),
('7503064206670001', 'HARLIN DJAFAR', 'Tidak Sekolah'),
('7503065112160001', 'SYAFIRA AZ-ZAHRA DJAFAR', 'Tidak Sekolah'),
('7503065407900001', '', '--Pilih Pendidikan--'),
('7503065801010002', 'RISKAWATI SAMANI', 'S1 dan Sederajat'),
('7503070907130001', 'AQILAH ADRIYANA DJAFAR', 'SD dan Sederajat'),
('7503075601900002', 'VENDRIYANTI USMAN', 'SMP dan Sederajat'),
('7505020511640001', 'SONI MANYOE', 'Tidak Tamat SD'),
('7571030805610001', 'SARJANA MILE', 'Tidak Tamat SD'),
('9876543219876543', 'test HBKL', 'Tidak Tamat SD');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_rumah`
--

CREATE TABLE `tabel_rumah` (
  `NIK` varchar(16) NOT NULL,
  `LUAS_LANTAI` int(2) NOT NULL,
  `JENIS_LANTAI` varchar(20) NOT NULL,
  `JENIS_DINDING` varchar(30) NOT NULL,
  `FASILITAS_BAB` tinyint(1) NOT NULL,
  `SUMBER_PENERANGAN` tinyint(1) NOT NULL,
  `SUMBER_AIR_MINUM` varchar(30) NOT NULL,
  `BAHAN_BAKAR_MEMASAK` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_rumah`
--

INSERT INTO `tabel_rumah` (`NIK`, `LUAS_LANTAI`, `JENIS_LANTAI`, `JENIS_DINDING`, `FASILITAS_BAB`, `SUMBER_PENERANGAN`, `SUMBER_AIR_MINUM`, `BAHAN_BAKAR_MEMASAK`) VALUES
('0987654321234587', 1, 'Semen', 'Tembok Tanpa Di Plester', 0, 0, 'Air Hujan', 'Minyak Tanah'),
('1234567890987678', 1, 'Tanah', 'Kayu berkualitas rendah/Bambu', 0, 0, 'Mata air tidak terlindung', 'Kayu Bakar'),
('1302100901880001', 1, 'Bambu', 'Bambu', 0, 0, 'Sungai', 'Kayu Bakar'),
('7204040405770001', 1, 'Bambu', 'Kayu berkualitas rendah/Bambu', 0, 0, 'Mata air tidak terlindung', 'Kayu Bakar'),
('7501190712690001', 1, 'Bambu', 'Kayu berkualitas rendah/Bambu', 0, 0, 'Mata air tidak terlindung', 'Kayu Bakar'),
('7503060111850001', 1, 'Kayu/Papan', 'Rumbia', 0, 0, 'Sungai', 'Kayu Bakar'),
('7503061212710002', 1, 'Kayu/Papan', 'Rumbia', 0, 0, 'Mata Air tidak Terlindung', 'Kayu Bakar'),
('7503061308840001', 1, 'Bambu', 'Kayu berkualitas rendah/Bambu', 0, 0, 'Mata air tidak terlindung', 'Kayu Bakar'),
('7503061706670001', 1, 'Kayu/Papan', 'Bambu', 0, 0, 'Sungai', 'Kayu Bakar'),
('7503062306700001', 1, 'Bambu', 'Rumbia', 0, 0, 'Mata Air tidak Terlindung', 'Kayu Bakar'),
('750306251187002', 1, 'Kayu/Papan', 'Bambu', 0, 0, 'Air Hujan', 'Minyak Tanah'),
('7505020511640001', 1, 'Bambu', 'Rumbia', 0, 0, 'Mata Air tidak Terlindung', 'Kayu Bakar'),
('7571030805610001', 1, 'Bambu', 'Bambu', 0, 0, 'Mata Air tidak Terlindung', 'Kayu Bakar');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_tabungan`
--

CREATE TABLE `tabel_tabungan` (
  `NIK` varchar(16) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `KEPEMILIKAN_TABUNGAN` varchar(1) NOT NULL,
  `JENIS_TABUNGAN` varchar(4) NOT NULL,
  `HARGA` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_tabungan`
--

INSERT INTO `tabel_tabungan` (`NIK`, `NAMA`, `KEPEMILIKAN_TABUNGAN`, `JENIS_TABUNGAN`, `HARGA`) VALUES
('1302100901880001', 'ARIF FAREZA', '0', '', ''),
('4565432123456789', 'paling baru', '1', '5', '100000000'),
('5409016610860006', 'KASNITA', '', '', ''),
('6401041509090007', 'RAFIQ FIRMAN RAMADHAN', '', '', ''),
('6401043103810002', 'RACHIM ERTANTO', '0', '', ''),
('6401046204890003', 'TUTI TRISNAWATI', '', '', ''),
('6401046809130001', 'SYAKIRA NUR SYAFA', '', '', ''),
('6401046911120005', 'HESTY ANANTA', '', '', ''),
('6402034606761003', 'FITRIANI BAHARUDDIN', '', '', ''),
('6409010101870017', 'MUHAMMAD ARDIN', '0', '', ''),
('6409010103770004', 'AWAL MUHDIN', '0', '', ''),
('6409010304080001', 'REYHAN NOOR FAZRIEL PRATAMA', '', '', ''),
('6409010310080004', 'ALDY FIRANSYAH PUTRA', '', '', ''),
('6409010504880004', 'JUSMAN', '', '', ''),
('6409010804040001', 'NURHIDAYAT', '', '', ''),
('6409010809870003', 'DARMANSYAH', '0', '', ''),
('6409010902890007', 'HASANUDIN', '0', '', ''),
('6409010907970002', 'RISMAN MAULADI', '', '', ''),
('6409010911190001', 'RAZKA ARKANA MAULIDAN', '', '', ''),
('6409010911840004', 'RAMLI', '', '', ''),
('6409011009180002', 'ALFIE ALFARIZI ARFAN', '', '', ''),
('6409011010830011', 'ARBANUT', '0', '', ''),
('6409011012100005', 'ALIEF ARDHANI PRATAMA', '', '', ''),
('6409011103180001', 'MUHAMMAD RAZKA', '', '', ''),
('6409011104840008', 'HENDRA IRAWAN ', '0', '', ''),
('6409011204800003', 'JASRI INDING', '', '', ''),
('6409011204940009', 'MOCH. ROFIK', '0', '', ''),
('6409011403020003', 'ANDI DARMAN ARDIANSYAH', '1', '5', ''),
('6409011430918000', 'NUR FADILAH', '', '', ''),
('6409011601180003', 'MUHAMMAD FATIH MUBARAK', '', '', ''),
('6409011607120002', 'NASZRAN', '', '', ''),
('6409011704100001', 'MUHAMMAD ABDUL AKBAR', '', '', ''),
('6409011705020007', 'ASHAR', '', '', ''),
('6409011805000005', 'TAWAKAL', '', '', ''),
('6409012101180002', 'MARWAN ABDUL MANAF', '', '', ''),
('640901210760003', 'YUSMAN', '0', '', ''),
('6409012205080001', 'MUHAMMAD FADLAN ', '', '', ''),
('6409012504580001', 'ABDUL RAHMAN', '', '', ''),
('6409012710890003', 'RUSDIANTO', '1', '3', ''),
('6409012804890006', 'SUMARDI', '0', '', ''),
('6409013004900002', 'RUDIANSYAH', '0', '', ''),
('6409013012560012', 'HALING', '0', '', ''),
('6409013012960010', 'SURIANSYAH', '0', '', ''),
('6409013112520104', 'SUDDIN SINAJA', '1', '3', ''),
('6409013112580102', 'BENNU', '0', '', ''),
('6409013112620114', 'JABIR', '', '', ''),
('6409013112750096', 'SANGKALA HASAN', '0', '', ''),
('6409013112750100', 'BASTAN', '', '', ''),
('6409013112770067', 'ANDI DAHRUNG', '0', '', ''),
('6409014103860003', 'DARMAWATI', '', '', ''),
('6409014108830001', 'MINAH', '', '', ''),
('6409014203870001', 'NUR LAELA', '', '', ''),
('6409014304200002', 'FAIZAH NUR FADILA', '', '', ''),
('6409014406130003', 'NAURA SYAKIRA PUTRI', '', '', ''),
('6409014406890003', 'RINA', '', '', ''),
('6409014503990007', 'JUMIATI', '', '', ''),
('6409014507920001', 'MARIYANA', '', '', ''),
('6409014510030005', 'NOR AISA', '', '', ''),
('6409014609160000', 'ATIKA ZAHRA RATIFA', '', '', ''),
('6409014906900003', 'SAMSIYAH', '', '', ''),
('6409015001120004', 'ALIFAH NUR ZAHIRAH', '', '', ''),
('6409015001770007', 'SAMSIYAH', '', '', ''),
('6409015004980006', '', '', '', ''),
('6409015208990007', 'IRNA SHEYRINA', '', '', ''),
('6409015508840007', 'AGUSTINA', '', '', ''),
('6409015602970005', 'NUR AENI', '', '', ''),
('6409015612000003', 'FITRI RAHMIATI', '', '', ''),
('6409015811110006', 'ALYA NUR WULAN', '', '', ''),
('6409016312890002', 'MASNAH', '', '', ''),
('6409016412190001', 'AZKA SYAHQIRA', '', '', ''),
('6409016504090004', 'NISRINA AULIA', '', '', ''),
('6409016704230002', 'HASNATUL HARSY', '', '', ''),
('6409016709970008', 'SITI AISAH', '', '', ''),
('6409016711970007', 'MIA ARSITA', '', '', ''),
('6409016906030004', 'AL FINA', '', '', ''),
('6409016911950003', 'SUMIRAH', '', '', ''),
('6409016912150002', 'ROSMI', '', '', ''),
('6409017001130001', 'USWA TUN HASANAH', '', '', ''),
('6409017005050005', 'NUR HANISA', '', '', ''),
('6409017012500032', 'ARBAYAH', '0', '', ''),
('6409017103120002', 'ARNESHA PUTRI ZAHRA', '', '', ''),
('6409017112510059', 'DJAMIAH', '', '', ''),
('6409017112550116', 'KAMU', '0', '', ''),
('6409017112590114', 'RATIA', '', '', ''),
('6409017112660144', 'CARMINA', '', '', ''),
('6409017112780093', 'YANTI', '', '', ''),
('6409017112810104', 'HAPSAH', '', '', ''),
('6409020508980003', 'HARIS SUPRAYITNO', '0', '', ''),
('6409021202680001', 'JUNAIDI', '0', '', ''),
('6409021206020001', 'RISKI', '', '', ''),
('6409024901040001', 'NOVITASARI', '', '', ''),
('6471010609110001', 'MUHAMMAD JASIIM AL-JAWWAD', '', '', ''),
('6471015106130001', 'PUTRI FAHDA', '', '', ''),
('6471015908830003', 'NURMUTIAH', '0', '', ''),
('6471017007070002', 'JIHAN SHABIRA', '', '', ''),
('6473034606930000', '', '', '', ''),
('6571035310190002', 'MARYAM TAQIYYA', '', '', ''),
('7204040405770001', 'TASWIR', '0', '', ''),
('7308014107670026', '', '', '', ''),
('7308014107840052', 'JUSMIATI', '', '', ''),
('7308060107950086', 'LUKMAN', '', '', ''),
('7308275212000001', 'NURASIA', '', '', ''),
('7308276505980002', 'HASLINDA', '', '', ''),
('7371051704980006', 'M FAHMI FIRDIANSYAH MANSYUR', '', '', ''),
('7371095301190004', 'AISYAH AYUDIAH NUR ASYIFAH', '', '', ''),
('7371114901030001', 'IZZAH FAUZIAH IRFAN', '', '', ''),
('7501190712690001', 'KARIM ADAM', '0', '', ''),
('7502012203100002', 'RAHMAT SUAIB', '0', '', ''),
('7503031505690001', 'Explicabo Commodo d', '0', '', ''),
('7503035010630002', 'HAPSA ADAM', '', '', ''),
('7503035703070001', 'NIKMAWATI ADAM', '0', '', ''),
('7503060111850001', 'ISMAIL DJAFAR', '0', '', ''),
('7503060510770001', 'RAMIN G LADIKU', '0', '', ''),
('7503061208170001', 'ARFATTA DINAR FAREZA ', '', '', ''),
('7503061212710002', '', '0', '', ''),
('7503061308840001', 'YUMAN TALANGO', '0', '', ''),
('7503061705470001', 'BAHRUDIN KARIM', '', '', ''),
('7503061706670001', 'DRS HENDRO NURJOKO MPKIM', '0', '', ''),
('7503062306700001', 'WAHAB SUAIBA', '0', '', ''),
('7503064206670001', 'HARLIN DJAFAR', '', '', ''),
('7503065112160001', 'SYAFIRA AZ-ZAHRA DJAFAR', '', '', ''),
('7503065407900001', '', '0', '', ''),
('7503065801010002', 'RISKAWATI SAMANI', '', '', ''),
('7503070907130001', 'AQILAH ADRIYANA DJAFAR', '', '', ''),
('7503075601900002', 'VENDRIYANTI USMAN', '', '', ''),
('7505020511640001', 'SONI MANYOE', '0', '', ''),
('7571030805610001', 'SARJANA MILE', '0', '', ''),
('9876543219876543', 'test HBKL', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(10) NOT NULL,
  `pass` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `pass`) VALUES
(2, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_control`
--
ALTER TABLE `tabel_control`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_dusun`
--
ALTER TABLE `tabel_dusun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_form`
--
ALTER TABLE `tabel_form`
  ADD UNIQUE KEY `nama` (`nama`,`nik`,`tempat_lahir`,`tanggal_lahir`,`alamat`,`email`,`pekerjaan`,`agama`,`status_perkawinan`,`jenis_kelamin`,`submit`) USING HASH,
  ADD UNIQUE KEY `nama_2` (`nama`,`nik`,`tempat_lahir`,`tanggal_lahir`,`alamat`,`email`,`pekerjaan`,`agama`,`status_perkawinan`,`jenis_kelamin`,`submit`) USING HASH;

--
-- Indexes for table `tabel_kependudukan`
--
ALTER TABLE `tabel_kependudukan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `tabel_konsumsi`
--
ALTER TABLE `tabel_konsumsi`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `tabel_pekerjaan`
--
ALTER TABLE `tabel_pekerjaan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `tabel_pendidikan`
--
ALTER TABLE `tabel_pendidikan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `tabel_rumah`
--
ALTER TABLE `tabel_rumah`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `tabel_tabungan`
--
ALTER TABLE `tabel_tabungan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_control`
--
ALTER TABLE `tabel_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tabel_dusun`
--
ALTER TABLE `tabel_dusun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
