-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 10.1.36-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win32
-- HeidiSQL Versi:               9.4.0.5174
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Membuang struktur basisdata untuk kargo
DROP DATABASE IF EXISTS `kargo`;
CREATE DATABASE IF NOT EXISTS `kargo` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `kargo`;

-- membuang struktur untuk table kargo.absensi
DROP TABLE IF EXISTS `absensi`;
CREATE TABLE IF NOT EXISTS `absensi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_karyawan` int(11) DEFAULT '0',
  `id_jabatan` int(11) DEFAULT '0',
  `tanggal` varchar(20) DEFAULT NULL,
  `masuk` int(2) DEFAULT NULL,
  `tidak_masuk` int(2) DEFAULT NULL,
  `izin` int(2) DEFAULT '0',
  `keterangan_izin` varchar(50) DEFAULT '0',
  `uang_makan` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel kargo.absensi: ~9 rows (lebih kurang)
DELETE FROM `absensi`;
/*!40000 ALTER TABLE `absensi` DISABLE KEYS */;
INSERT INTO `absensi` (`id`, `id_karyawan`, `id_jabatan`, `tanggal`, `masuk`, `tidak_masuk`, `izin`, `keterangan_izin`, `uang_makan`) VALUES
	(27, 1, 1, '2019-04-06', 1, 0, 0, '-', ''),
	(28, 1, 1, '2019-04-12', 1, 0, 0, '-', NULL),
	(29, 2, 26, '2019-04-12', 0, 1, 0, '-', NULL),
	(30, 3, 25, '2019-04-12', 1, 0, 0, '-', NULL),
	(31, 4, 26, '2019-04-12', 1, 0, 0, '-', NULL),
	(32, 6, 24, '2019-04-12', 1, 0, 0, '-', NULL),
	(33, 7, 24, '2019-04-12', 1, 0, 0, '-', NULL),
	(34, 8, 25, '2019-04-12', 1, 0, 0, '-', NULL),
	(35, 5, 24, '2019-04-12', 1, 0, 0, '-', NULL);
/*!40000 ALTER TABLE `absensi` ENABLE KEYS */;

-- membuang struktur untuk table kargo.admin
DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` text,
  `nama` varchar(100) NOT NULL,
  `telp` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel kargo.admin: ~3 rows (lebih kurang)
DELETE FROM `admin`;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`, `kode`, `username`, `password`, `nama`, `telp`, `email`, `alamat`, `level`) VALUES
	(6, 'Admin-000001', 'devasatrio', '74b213f68f648006a318f52713450f27', 'deva satrio', '085604556712', 'satriosuklun@gmail.com', 'gurah magersari', 'programer'),
	(7, 'Admin-000002', 'harianti', '74b213f68f648006a318f52713450f27', 'harianto', '085604556712', 'harianto@gmail.com', 'magersari gurah depan pga', 'admin'),
	(9, 'Admin-000003', 'abiihsan', '74b213f68f648006a318f52713450f27', 'abi ihsan fadli', '098765546', 'abi@gmail.com', 'gurah', 'programer');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- membuang struktur untuk table kargo.armada
DROP TABLE IF EXISTS `armada`;
CREATE TABLE IF NOT EXISTS `armada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(60) DEFAULT NULL,
  `nopol` varchar(60) DEFAULT NULL,
  `nomor_rangka` varchar(60) DEFAULT NULL,
  `nomor_mesin` varchar(60) DEFAULT NULL,
  `warna` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel kargo.armada: ~2 rows (lebih kurang)
DELETE FROM `armada`;
/*!40000 ALTER TABLE `armada` DISABLE KEYS */;
INSERT INTO `armada` (`id`, `nama`, `nopol`, `nomor_rangka`, `nomor_mesin`, `warna`) VALUES
	(1, 'gran max', '203482390', 'skdfjw8r', 'kljfdflkswe8r', 'merah'),
	(4, 'pajero', '028492', 'i34ui43o', '9034', 'hitam');
/*!40000 ALTER TABLE `armada` ENABLE KEYS */;

-- membuang struktur untuk table kargo.gaji_karyawan
DROP TABLE IF EXISTS `gaji_karyawan`;
CREATE TABLE IF NOT EXISTS `gaji_karyawan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_karyawan` varchar(20) DEFAULT NULL,
  `nama_karyawan` varchar(40) DEFAULT NULL,
  `id_jabatan` int(11) DEFAULT NULL,
  `gaji_pokok` int(11) DEFAULT NULL,
  `uang_makan` int(11) DEFAULT NULL,
  `gaji_tambahan` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `bulan` int(11) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel kargo.gaji_karyawan: ~38 rows (lebih kurang)
DELETE FROM `gaji_karyawan`;
/*!40000 ALTER TABLE `gaji_karyawan` DISABLE KEYS */;
INSERT INTO `gaji_karyawan` (`id`, `kode_karyawan`, `nama_karyawan`, `id_jabatan`, `gaji_pokok`, `uang_makan`, `gaji_tambahan`, `total`, `bulan`, `tahun`) VALUES
	(1, 'Karyawan-000001', 'abi ihsan', 1, 400000, 30000, 2638, 432638, 1, 2019),
	(2, 'Karyawan-000005', 'hari anti', 24, 400000, 30000, NULL, 430000, 1, 2019),
	(3, 'Karyawan-000006', 'herman', 24, 400000, 30000, NULL, 430000, 1, 2019),
	(4, 'Karyawan-000007', 'dina', 24, 400000, 30000, NULL, 430000, 1, 2019),
	(5, 'Karyawan-000003', 'hari anti', 25, 500000, 30000, NULL, 530000, 1, 2019),
	(6, 'Karyawan-000002', 'abi ihsan singo', 26, 400000, 30000, NULL, 430000, 1, 2019),
	(7, 'Karyawan-000004', 'dina', 26, 400000, 30000, NULL, 430000, 1, 2019),
	(8, 'Karyawan-000001', 'abi ihsan fadli', 1, 400000, 30000, 22425, 452425, 2, 2019),
	(9, 'Karyawan-000005', 'hari anti', 24, 400000, 30000, NULL, 430000, 2, 2019),
	(10, 'Karyawan-000006', 'herman', 24, 400000, 30000, NULL, 430000, 2, 2019),
	(11, 'Karyawan-000007', 'dina', 24, 400000, 30000, NULL, 430000, 2, 2019),
	(12, 'Karyawan-000003', 'fadli', 25, 500000, 30000, NULL, 530000, 2, 2019),
	(13, 'Karyawan-000002', 'abi ihsan singo', 26, 400000, 30000, NULL, 430000, 2, 2019),
	(14, 'Karyawan-000004', 'singo', 26, 400000, 30000, NULL, 430000, 2, 2019),
	(15, 'Karyawan-000001', 'abi ihsan', 1, 400000, 30000, 0, 430000, 3, 2019),
	(16, 'Karyawan-000005', 'hari anti', 24, 400000, 30000, NULL, 430000, 3, 2019),
	(17, 'Karyawan-000006', 'herman', 24, 400000, 30000, NULL, 430000, 3, 2019),
	(18, 'KLC-0008', 'dina', 24, 400000, 30000, NULL, 430000, 3, 2019),
	(19, 'Karyawan-000003', 'fadli', 25, 500000, 30000, NULL, 530000, 3, 2019),
	(20, 'KLC-0009', 'abi ihsan fadli', 25, 500000, 30000, NULL, 530000, 3, 2019),
	(21, 'Karyawan-000002', 'abi ihsan singo', 26, 400000, 30000, NULL, 430000, 3, 2019),
	(22, 'Karyawan-000004', 'singo', 26, 400000, 30000, NULL, 430000, 3, 2019),
	(23, 'Karyawan-000001', 'abi ihsan', 1, 400000, 0, 17410, 417410, 3, 2019),
	(24, 'Karyawan-000005', 'hari anti', 24, 400000, 0, NULL, 430000, 3, 2019),
	(25, 'Karyawan-000006', 'herman', 24, 400000, 0, NULL, 430000, 3, 2019),
	(26, 'KLC-0008', 'dina', 24, 400000, 0, NULL, 430000, 3, 2019),
	(27, 'Karyawan-000003', 'fadli', 25, 500000, 0, NULL, 530000, 3, 2019),
	(28, 'KLC-0009', 'abi ihsan fadli', 25, 500000, 0, NULL, 530000, 3, 2019),
	(29, 'Karyawan-000002', 'abi ihsan singo', 26, 400000, 0, NULL, 430000, 3, 2019),
	(30, 'Karyawan-000004', 'singo', 26, 400000, 0, NULL, 430000, 3, 2019),
	(31, 'Karyawan-000001', 'abi ihsan', 1, 400000, 0, 60116, 460116, 4, 2019),
	(32, 'Karyawan-000005', 'hari anti', 24, 400000, 0, NULL, 430000, 4, 2019),
	(33, 'Karyawan-000006', 'herman', 24, 400000, 0, NULL, 430000, 4, 2019),
	(34, 'KLC-0008', 'dina', 24, 400000, 0, NULL, 430000, 4, 2019),
	(35, 'Karyawan-000003', 'fadli', 25, 500000, 0, NULL, 530000, 4, 2019),
	(36, 'KLC-0009', 'abi ihsan fadli', 25, 500000, 0, NULL, 530000, 4, 2019),
	(37, 'Karyawan-000002', 'abi ihsan singo', 26, 400000, 0, NULL, 430000, 4, 2019),
	(38, 'Karyawan-000004', 'singo', 26, 400000, 0, NULL, 430000, 4, 2019);
/*!40000 ALTER TABLE `gaji_karyawan` ENABLE KEYS */;

-- membuang struktur untuk table kargo.jabatan
DROP TABLE IF EXISTS `jabatan`;
CREATE TABLE IF NOT EXISTS `jabatan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jabatan` varchar(40) NOT NULL,
  `gaji_pokok` varchar(20) NOT NULL,
  `uang_makan` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel kargo.jabatan: ~4 rows (lebih kurang)
DELETE FROM `jabatan`;
/*!40000 ALTER TABLE `jabatan` DISABLE KEYS */;
INSERT INTO `jabatan` (`id`, `jabatan`, `gaji_pokok`, `uang_makan`) VALUES
	(1, 'Base Managger', '400000', '30000'),
	(24, 'Staff', '400000', '30000'),
	(25, 'Staff Keuangan Pusat', '500000', '30000'),
	(26, 'Staff Keuangan Cabang', '400000', '30000');
/*!40000 ALTER TABLE `jabatan` ENABLE KEYS */;

-- membuang struktur untuk table kargo.karyawan
DROP TABLE IF EXISTS `karyawan`;
CREATE TABLE IF NOT EXISTS `karyawan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel kargo.karyawan: ~8 rows (lebih kurang)
DELETE FROM `karyawan`;
/*!40000 ALTER TABLE `karyawan` DISABLE KEYS */;
INSERT INTO `karyawan` (`id`, `kode`, `nama`, `telp`, `alamat`, `id_jabatan`) VALUES
	(1, 'Karyawan-000001', 'abi ihsan', '085755957230', 'kediri', 1),
	(2, 'Karyawan-000002', 'abi ihsan singo', '5654', 'kediri bajulan', 26),
	(3, 'Karyawan-000003', 'fadli', '57656', 'kediri', 25),
	(4, 'Karyawan-000004', 'singo', '65677', 'kediri', 26),
	(5, 'Karyawan-000005', 'hari anti', '14045', 'gurah magersari', 24),
	(6, 'Karyawan-000006', 'herman', '2390482390', 'gurah', 24),
	(7, 'KLC-0008', 'dina', '2390482390', 'gurah', 24),
	(8, 'KLC-0009', 'abi ihsan fadli', '08226111039', 'gurah', 25);
/*!40000 ALTER TABLE `karyawan` ENABLE KEYS */;

-- membuang struktur untuk table kargo.kategori_barang
DROP TABLE IF EXISTS `kategori_barang`;
CREATE TABLE IF NOT EXISTS `kategori_barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spesial_cargo` varchar(40) NOT NULL,
  `charge` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel kargo.kategori_barang: ~3 rows (lebih kurang)
DELETE FROM `kategori_barang`;
/*!40000 ALTER TABLE `kategori_barang` DISABLE KEYS */;
INSERT INTO `kategori_barang` (`id`, `spesial_cargo`, `charge`) VALUES
	(1, 'Hewan Hidup', '100'),
	(2, 'Tanaman Hidup', '50'),
	(3, 'Meat / Frozen Food', '50');
/*!40000 ALTER TABLE `kategori_barang` ENABLE KEYS */;

-- membuang struktur untuk table kargo.omset
DROP TABLE IF EXISTS `omset`;
CREATE TABLE IF NOT EXISTS `omset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bulan` int(5) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `pemasukan` bigint(20) DEFAULT NULL,
  `pengeluaran` bigint(20) DEFAULT NULL,
  `pengeluaran_lainya` bigint(20) DEFAULT NULL,
  `gaji_karyawan` bigint(20) DEFAULT NULL,
  `pajak` bigint(20) DEFAULT NULL,
  `laba` bigint(20) DEFAULT NULL,
  `omset_awal` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel kargo.omset: ~5 rows (lebih kurang)
DELETE FROM `omset`;
/*!40000 ALTER TABLE `omset` DISABLE KEYS */;
INSERT INTO `omset` (`id`, `bulan`, `tahun`, `pemasukan`, `pengeluaran`, `pengeluaran_lainya`, `gaji_karyawan`, `pajak`, `laba`, `omset_awal`) VALUES
	(1, 1, 2019, 263790, 55000, 52000, 3112638, 2638, -2958486, NULL),
	(2, 2, 2019, 2242470, 50000, 23000, 3132425, 22425, -985380, NULL),
	(3, 3, 2019, NULL, NULL, NULL, 3640000, 0, -3640000, NULL),
	(4, 4, 2019, 1741000, 29000, 150000, NULL, 8705, -2086705, -3640000),
	(5, 5, 2019, 6011608, NULL, 140000, NULL, 30058, 3754845, -2086705);
/*!40000 ALTER TABLE `omset` ENABLE KEYS */;

-- membuang struktur untuk table kargo.pajak
DROP TABLE IF EXISTS `pajak`;
CREATE TABLE IF NOT EXISTS `pajak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bulan` int(4) DEFAULT NULL,
  `tahun` int(9) DEFAULT NULL,
  `nama_pajak` varchar(150) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `status` enum('bulanan','tahunan') DEFAULT 'bulanan',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel kargo.pajak: ~6 rows (lebih kurang)
DELETE FROM `pajak`;
/*!40000 ALTER TABLE `pajak` DISABLE KEYS */;
INSERT INTO `pajak` (`id`, `bulan`, `tahun`, `nama_pajak`, `total`, `status`) VALUES
	(1, 1, 2019, 'pajak', 2638, 'bulanan'),
	(2, NULL, 2018, 'total_pajak', 5000, 'tahunan'),
	(3, 2, 2019, 'pajak', 22425, 'bulanan'),
	(4, 3, 2019, 'pajak', 0, 'bulanan'),
	(5, 4, 2019, 'pajak', 8705, 'bulanan'),
	(6, 5, 2019, 'pajak', 30058, 'bulanan');
/*!40000 ALTER TABLE `pajak` ENABLE KEYS */;

-- membuang struktur untuk table kargo.pajak_armada
DROP TABLE IF EXISTS `pajak_armada`;
CREATE TABLE IF NOT EXISTS `pajak_armada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_armada` int(11) DEFAULT '0',
  `nama_pajak` varchar(50) DEFAULT '0',
  `tgl_bayar` date DEFAULT NULL,
  `tgl_kadaluarsa` date DEFAULT NULL,
  `tgl_peringatan` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel kargo.pajak_armada: ~5 rows (lebih kurang)
DELETE FROM `pajak_armada`;
/*!40000 ALTER TABLE `pajak_armada` DISABLE KEYS */;
INSERT INTO `pajak_armada` (`id`, `id_armada`, `nama_pajak`, `tgl_bayar`, `tgl_kadaluarsa`, `tgl_peringatan`) VALUES
	(1, 4, 'pajak tahunan', '2019-05-09', '2019-11-20', '2019-11-13'),
	(10, 4, 'pajak 5 tahun', '2019-05-09', '2019-11-22', '2019-11-15'),
	(11, 4, 'pajak KIR', NULL, NULL, NULL),
	(12, 1, 'pajak tahunan', '2019-05-08', '2019-06-08', '2019-06-01'),
	(13, 1, 'pajak KIR', NULL, NULL, NULL);
/*!40000 ALTER TABLE `pajak_armada` ENABLE KEYS */;

-- membuang struktur untuk table kargo.pengeluaran_lain
DROP TABLE IF EXISTS `pengeluaran_lain`;
CREATE TABLE IF NOT EXISTS `pengeluaran_lain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin` varchar(200) DEFAULT NULL,
  `kategori` varchar(40) DEFAULT NULL,
  `keterangan` text,
  `jumlah` int(11) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `gambar` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel kargo.pengeluaran_lain: ~18 rows (lebih kurang)
DELETE FROM `pengeluaran_lain`;
/*!40000 ALTER TABLE `pengeluaran_lain` DISABLE KEYS */;
INSERT INTO `pengeluaran_lain` (`id`, `admin`, `kategori`, `keterangan`, `jumlah`, `tgl`, `gambar`) VALUES
	(8, 'devasatrio', '005', 'beli bensin', 30000, '2019-01-02', '1546440740-logo.jpg'),
	(9, 'devasatrio', '007', 'parkir mobil', 20000, '2019-01-03', '1546477524-logo.jpg'),
	(10, 'devasatrio', '008', 'bayar tol surabaya', 3000, '2019-02-03', '1546482244-img-20181126-wa0003.jpg'),
	(11, 'devasatrio', '007', 'parkir jet', 40000, '2018-12-03', '1546484974-img-20181023-wa0023.jpg'),
	(12, 'devasatrio', '007', 'parkir mobil putih', 2000, '2019-01-04', '1546576232-favicon.png'),
	(13, 'devasatrio', '009', 'untuk beli alat tulis', 20000, '2019-02-15', '1550231029-500_f_212165279_5nn4hrmazulxpsbbcyutb7kn7f667gu2.jpg'),
	(14, 'devasatrio', '005', 'halo halo', 20000, '2019-02-06', '1554960625-kaos3.jpg'),
	(15, 'devasatrio', '005', 'alskjfklasfdj', 30000, '2019-06-27', '1554960686-client.png'),
	(16, 'devasatrio', '004', 'asdfasdfasfasfsf', 20000, '2019-04-12', '1555062448-1548762928-kemeja5.jpg'),
	(17, 'devasatrio', '004', 'aasfasdf', 40000, '2019-04-12', '1555063100-admin.png'),
	(18, 'devasatrio', '004', 'aadasdklfj aajsdfkljasdfk', 40000, '2019-04-12', '1555072139-client.png'),
	(19, 'devasatrio', '004', 'sdafk', 30000, '2019-04-12', '1555072654-kaos4.jpg'),
	(20, 'devasatrio', '004', 'asdf', 20000, '2019-04-12', '1555072691-kaos1.jpeg'),
	(21, 'abiihsan', '012', 'modal usaha', 10000, '2019-05-28', NULL),
	(22, 'abiihsan', '012', 'asda', 10000, '2019-05-28', NULL),
	(23, 'abiihsan', '012', '565556', 10000, '2019-05-29', NULL),
	(24, 'abiihsan', '013', '45443', 40, '2019-05-29', '1559121450-9.jpg'),
	(25, 'devasatrio', '004', 'asdf', 20000, '2019-05-09', '1555072691-kaos1.jpeg');
/*!40000 ALTER TABLE `pengeluaran_lain` ENABLE KEYS */;

-- membuang struktur untuk table kargo.resi_pengiriman
DROP TABLE IF EXISTS `resi_pengiriman`;
CREATE TABLE IF NOT EXISTS `resi_pengiriman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_resi` text,
  `no_smu` text,
  `kode_jalan` text,
  `kode_antar` text,
  `admin` varchar(100) DEFAULT NULL,
  `nama_barang` text,
  `pengiriman_via` enum('darat','laut','udara') DEFAULT NULL,
  `kota_asal` varchar(40) DEFAULT NULL,
  `kode_tujuan` text,
  `tgl` date DEFAULT NULL,
  `tgl_bayar` date DEFAULT NULL,
  `tgl_lunas` date DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `berat` varchar(30) DEFAULT NULL,
  `dimensi` varchar(30) DEFAULT NULL,
  `ukuran_volume` varchar(30) DEFAULT NULL,
  `nama_pengirim` varchar(70) DEFAULT NULL,
  `nama_penerima` varchar(70) DEFAULT NULL,
  `telp_pengirim` varchar(20) DEFAULT NULL,
  `telp_penerima` varchar(20) DEFAULT NULL,
  `alamat_pengirim` text,
  `alamat_penerima` text,
  `biaya_kirim` int(11) DEFAULT '0',
  `biaya_packing` int(11) DEFAULT '0',
  `biaya_asuransi` int(11) DEFAULT '0',
  `biaya_ppn` int(11) DEFAULT '0',
  `biaya_smu` int(11) DEFAULT '0',
  `biaya_karantina` int(11) DEFAULT '0',
  `biaya_charge` int(11) DEFAULT '0',
  `biaya_cancel` int(11) DEFAULT '0',
  `total_biaya` int(11) DEFAULT '0',
  `biaya_suratjalan` int(11) DEFAULT '0',
  `keterangan` text,
  `status` enum('Y','N','US','RS') DEFAULT 'N',
  `satuan` varchar(10) DEFAULT NULL,
  `metode_bayar` enum('cash','bt') DEFAULT 'cash',
  `metode_input` enum('manual','otomatis') DEFAULT 'otomatis',
  `pemegang` varchar(90) DEFAULT NULL,
  `batal` enum('Y','N') DEFAULT 'N',
  `status_pengiriman` enum('siap dikirim','handle by vendor','menuju alamat tujuan','pengantaran ulang','paket telah sampai','dikembalikan ke pengirim','sudah dikembalikan') DEFAULT 'siap dikirim',
  `status_antar` enum('N','Y','G','P','KL') DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel kargo.resi_pengiriman: ~49 rows (lebih kurang)
DELETE FROM `resi_pengiriman`;
/*!40000 ALTER TABLE `resi_pengiriman` DISABLE KEYS */;
INSERT INTO `resi_pengiriman` (`id`, `no_resi`, `no_smu`, `kode_jalan`, `kode_antar`, `admin`, `nama_barang`, `pengiriman_via`, `kota_asal`, `kode_tujuan`, `tgl`, `tgl_bayar`, `tgl_lunas`, `jumlah`, `berat`, `dimensi`, `ukuran_volume`, `nama_pengirim`, `nama_penerima`, `telp_pengirim`, `telp_penerima`, `alamat_pengirim`, `alamat_penerima`, `biaya_kirim`, `biaya_packing`, `biaya_asuransi`, `biaya_ppn`, `biaya_smu`, `biaya_karantina`, `biaya_charge`, `biaya_cancel`, `total_biaya`, `biaya_suratjalan`, `keterangan`, `status`, `satuan`, `metode_bayar`, `metode_input`, `pemegang`, `batal`, `status_pengiriman`, `status_antar`) VALUES
	(1, 'KDR291218-06-000001', NULL, 'SJ291218-06-000002', NULL, 'devasatrio', 'sepatu bola', 'darat', 'kediri', 'malang', '2018-12-29', '2019-04-09', NULL, 1, '8', '20 x 30 x 50', '7.5', 'deni', 'hadi', '0932749', '02934890', NULL, NULL, 24000, 2000, 60, 240, 0, 0, 0, 0, 26300, 4000, 'halo halo', 'N', 'kg', 'bt', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(2, 'KDR291218-06-000002', '4354345', 'SJ291218-06-000001', NULL, 'devasatrio', 'jkhjkhc', 'udara', 'hghghj', 'alor', '2018-12-29', '2019-04-09', NULL, 1, '3', '20 x 30 x 20', '3', 'ewre', 'werwer', '56456', '7687', NULL, NULL, 120000, 0, 0, 1200, 25000, 40000, 0, 0, 186200, 8000, 'dfsfd', 'Y', 'kg', 'bt', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(3, 'KDR291218-06-000003', NULL, 'SJ291218-06-000002', NULL, 'devasatrio', 'sepatu bola', 'laut', 'kediri', 'kalimantan', '2018-12-28', '2019-04-09', NULL, 1, '3', '30 x 10 x 30', '2.25', 'hari', 'dini', '027348628734678', '873248927389247', NULL, NULL, 120000, 8000, 800, 1200, 0, 0, 0, 0, 130000, 3000, 'halo halo', 'N', 'kg', 'cash', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(4, 'KDR020119-06-000001', NULL, 'SJ020119-06-000001', NULL, 'devasatrio', 'sepatu kuda', 'darat', 'kediri', 'malang', '2019-01-02', NULL, NULL, 1, '3', '20 x 30 x 20', '3', 'heri', 'marno', '02348920', '039485903', NULL, NULL, 9000, 1010, 900, 90, 0, 0, 0, 0, 11000, 0, 'cepet ya', 'N', 'kg', 'bt', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(5, 'KDR020119-06-000002', NULL, 'SJ020119-06-000001', NULL, 'devasatrio', 'rokok surya', 'laut', 'kediri', 'sumatra', '2019-01-02', NULL, NULL, 1, '4', '30 x 50 x 10', '3.75', 'hasan', 'fulan', '093284902', '289048290', NULL, NULL, 120000, 800, 1000, 1200, 0, 0, 0, 0, 123000, 0, 'cepet ya', 'N', 'kg', 'cash', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(6, 'KDR020119-06-000003', '256 - 8981290', 'SJ020119-06-000001', NULL, 'devasatrio', 'hanger baju', 'udara', 'kediri', 'balikpapan', '2019-01-02', NULL, NULL, 1, '3', '20 x 30 x 20', '3', 'indah', 'sari', '092384902', '0293480', NULL, NULL, 69000, 0, 0, 690, 25000, 4000, 0, 0, 98690, 0, 'cepet ya gan', 'N', 'kg', 'bt', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(7, 'KDR020119-06-000004', NULL, 'SJ020119-06-000002', NULL, 'devasatrio', 'koper', 'darat', 'kediri', 'nganjuk', '2019-01-02', NULL, NULL, 1, '3', '20 x 30 x 20', '3', 'hendri', 'dini', '902384902', '029384902', NULL, NULL, 7500, 2500, 25, 75, 0, 0, 0, 0, 10100, 0, 'asdf', 'N', 'kg', 'cash', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(8, 'KDR020119-06-000005', NULL, 'SJ020119-06-000002', NULL, 'devasatrio', 'casing hp', 'darat', 'kediri', 'malang', '2019-01-02', NULL, NULL, 1, '1', '30 x 20 x 10', '1.5', 'hina', 'hiwa', '0923489290', '093484590', NULL, NULL, 20000, 800, 0, 200, 0, 0, 0, 0, 21000, 0, 'celkawj', 'N', 'koli', 'bt', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(9, 'KDR020219-06-000001', NULL, 'SJ090419-06-000001', NULL, 'devasatrio', 'sepatu', 'udara', 'kediri', 'udara0001', '2019-02-02', NULL, NULL, 1, '3', '20 x 30 x 20', '3', 'deni', 'hari', '039480209', '02938402980', NULL, NULL, 60000, 0, 0, 600, 5000, 2000, 30000, 0, 97600, 0, 'askldfj', 'N', 'kg', 'cash', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(10, 'KDR020219-06-000002', NULL, 'SJ020219-06-000001', NULL, 'devasatrio', 'parfum', 'darat', 'kediri', 'malang kidul', '2019-02-02', NULL, NULL, 1, '3', '20 x 30 x 20', '3', 'heri', 'hendro', '023890230', '092384902890', NULL, NULL, 102000, 1000, 2000, 1020, 0, 0, 0, 0, 106020, 0, 'askldfj', 'Y', 'kg', 'cash', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(11, 'KDR020219-06-000003', NULL, 'SJ020219-06-000001', NULL, 'devasatrio', 'spiker', 'laut', 'kediri', 'laut04', '2019-02-02', NULL, NULL, 1, '1', '20 x 10 x 20', '1', 'heri', 'juki', '0238902390', '092384902830', NULL, NULL, 34000, 2000, 2000, 340, 0, 0, 0, 0, 38340, 0, 'aslkfj', 'N', 'kg', 'bt', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(12, 'KDR020219-06-000004', NULL, NULL, NULL, 'devasatrio', 'bakso kikil', 'udara', 'kediri', 'udara0002', '2019-02-02', NULL, NULL, 1, '3', '20 x 30 x 20', '3', 'diko', 'nur', '0938190890', '293902890', NULL, NULL, 60000, 0, 0, 600, 5000, 1000, 30000, 0, 96600, 0, 'sadfasdf', 'N', 'kg', 'cash', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(13, 'KDR020219-06-000005', NULL, 'SJ140219-06-000001', NULL, 'devasatrio', 'kambing qurban', 'udara', 'kediri', 'udara0003', '2019-02-02', NULL, NULL, 1, '3', '20 x 30 x 20', '3', 'heri', 'hadi', '02398490', '9238490809', NULL, NULL, 60000, 0, 0, 600, 5000, 2000, 60000, 0, 127600, 0, 'asdf', 'N', 'kg', 'cash', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(14, 'KDR020219-06-000006', NULL, NULL, NULL, 'devasatrio', 'tas cewek', 'udara', 'kediri', 'udara0001', '2019-02-02', NULL, NULL, 1, '1', '20 x 10 x 20', '1', 'hadi', 'heri', '2390482903', '90384902', NULL, NULL, 20000, 0, 0, 200, 5000, 300, 0, 0, 25500, 0, 'sjkadlfj', 'N', 'kg', 'bt', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(18, '12345-001', '3423-0004', 'SJ090419-06-000003', NULL, 'devasatrio', 'asdfasfdasdfsf', 'udara', 'kediri', 'kalimantan', '2019-02-14', NULL, NULL, 1, '2', '20 x 20 x 20', '1.3333333333333333', 'adfasdklfj', 'aklsjfklasd', '90312849023890', '029384902309', 'jklasdfjkasdfjkl aksldjfklas dfkllsa fklasjdfkls adflasdkjfklsad f', 'askdjklasf asfjklaf asdfjsafas asidweaf sadkasdf', 40000, 0, 0, 400, 5000, 1000, 0, 0, 46400, 0, 'kasdjfkl', 'Y', 'kg', 'cash', 'manual', '1', 'N', 'siap dikirim', 'N'),
	(19, '12345-002', NULL, NULL, NULL, 'devasatrio', 'aklsdf akdlfjklasf', 'laut', 'kediri', 'laut04', '2019-02-14', NULL, '2019-05-04', 1, '2', '20 x 20 x 20', '2', 'akdjsflaksd', 'asdfjkklasdfj', '092903489023490', '9028349082390', 'askfdjklasdf asdjfkladf kasjdfklasd fklajsdfklasdf aksdfjklasdf', 'kalsdfjlk asdlkfjklasdf klasdjfklasd fkasjdf', 68000, 1000, 1000, 680, 0, 0, 0, 70680, 21204, 0, 'alskdfj', 'US', 'kg', 'cash', 'manual', '1', 'Y', 'siap dikirim', 'N'),
	(20, '12345-003', NULL, NULL, NULL, 'devasatrio', 'hp samsung', 'darat', 'kediri', 'malang kidul', '2019-02-14', NULL, '2019-05-04', 1, '2', '20 x 20 x 20', '2', 'klajsf', 'akdlfjaklsdf', '908290482030', '9238402934890', 'asdfasdf asdfasdf asdfasdf asdfasdf asdfasdf', 'adfs asdadsfas asdfasdf asdfasdf asdfasd fasdfasdf', 68000, 2000, 1000, 680, 0, 0, 0, 71680, 21504, 0, 'asdfasdf', 'US', 'kg', 'cash', 'manual', '1', 'Y', 'siap dikirim', 'N'),
	(22, '12345-004', NULL, 'SJ140219-06-000001', NULL, 'devasatrio', 'asdfasdfsdf', 'darat', 'kediri', 'kediri lor', '2019-04-08', NULL, '2019-05-04', 1, '2', '20 x 20 x 20', '2', 'askldfjklasdf', '9akdfjkasdfasdf;asdf', '092839049023890', '2934290348902', 'asdfsfd', 'asdfasfd', 68000, 1000, 2000, 0, 0, 0, 0, 0, 71000, 0, 'pengiriman darat', 'Y', 'kg', 'cash', 'manual', '2', 'N', 'siap dikirim', 'N'),
	(24, '12345-006', '123 - 098394888', 'SJ090419-06-000003', NULL, 'devasatrio', 'nasi padang', 'udara', 'kediri', 'bali', '2019-04-08', NULL, NULL, 1, '3', '20 x 30 x 20', '3', 'aslkdfjskdl', 'sadkfljklsadf', '9320482093203', '293482309409', 'sadfasdfasdf', 'sadfasdfasdf', 60000, 0, 0, 0, 5000, 2000, 0, 0, 67000, 0, 'pengiriman udara', 'Y', 'kg', 'bt', 'manual', '2', 'N', 'siap dikirim', 'N'),
	(25, 'KDR080219-06-000001', NULL, 'SJ090419-06-000001', NULL, 'devasatrio', 'asdfsa', 'darat', 'kediri', 'malang kidul', '2019-02-08', NULL, NULL, 1, '3', '20 x 30 x 20', '3', 'skdjaf', 'skdafja', '9283908290', '038294890', NULL, NULL, 102000, 2000, 1000, 1020, 0, 0, 0, 0, 106020, 0, 'aslkdfjakl', 'N', 'kg', 'cash', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(27, 'KDR080219-06-000003', '112', 'SJ090419-06-000002', NULL, 'devasatrio', 'jlkjkljlk', 'udara', 'kediri', 'bandung betet', '2019-02-08', NULL, NULL, 1, '4', '20 x 30 x 30', '4.5', 'kljkljkljkl', 'lkjkljkl', '09890890', '79878989', NULL, NULL, 80000, 0, 0, 800, 5000, 2000, 40000, 0, 127800, 0, ';skl;kl;', 'N', 'kg', 'cash', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(29, 'KDR080219-06-000005', NULL, 'SJ090419-06-000002', NULL, 'devasatrio', 'sadfsadfsaf', 'udara', 'kediri', 'bandung betet', '2019-02-08', '2019-04-09', NULL, 1, '3', '20 x 30 x 20', '3', 'asldkfjaskld', 'lksjflk', '098293890', '928390289', NULL, NULL, 60000, 0, 0, 600, 5000, 1000, 60000, 0, 126600, 4000, 'aksldj', 'N', 'kg', 'cash', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(31, 'KDR140219-06-000001', NULL, 'SJ090419-06-000002', NULL, 'devasatrio', 'spiker aktiv', 'darat', 'kediri', 'malang kidul', '2019-02-14', '2019-04-09', NULL, 1, '2', '20 x 20 x 20', '2', 'hari anto', 'dian ade setiawan', '0852387468238', '08502398490230', 'magersari gurah kediri, jln pga no 1 rw 01 rt 01', 'mungkung loceret no 07 nganjuk, jln suro pati 01 rt 01 rw 01', 68000, 1000, 2000, 680, 0, 0, 0, 0, 71680, 5000, 'aklsdfj', 'N', 'kg', 'bt', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(32, 'KDR140219-06-000002', NULL, 'SJ090419-06-000001', NULL, 'devasatrio', 'sepatu bola', 'darat', 'kediri', 'kediri lor', '2019-02-14', NULL, NULL, 1, '2', '20 x 20 x 20', '2', 'hari anto', 'dendi', '09349023890', '90123940', 'magersari gurah kediri, jln pga no 1 rw 01 rt 01', 'mungkung loceret no 07 nganjuk, jln suro pati 01 rt 01 rw 01', 68000, 100, 1000, 680, 0, 0, 0, 0, 69780, 0, 'jasdlfk', 'N', 'kg', 'cash', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(35, 'KDR160219-06-000001', NULL, NULL, NULL, 'devasatrio', 'asdfsadf sadfasdf', 'darat', 'kediri', 'malang kidul', '2019-02-16', NULL, NULL, 1, '2', '5 x 5 x 5', '0.03', 'sadfsdf', 'kkasjfklasf', '023894092380', '09849023840', 'jasldkfj asdjfkls dfksjadfkls fjaklsfj', 'akjsdfj askdjfka sdfjksaldfj safj', 51000, 1000, 1000, 510, 0, 0, 0, 0, 53510, 0, 'ksjf', 'N', 'kg', 'cash', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(36, 'KDR160219-06-000002', NULL, NULL, 'SA120519-06-000001', 'devasatrio', 'sadf', 'laut', 'kediri', 'manado', '2019-04-26', NULL, NULL, 1, '4', '5 x 5 x 5', '0.03', 'agung herkules', 'hadi', '14045', '0928340982340', 'gurah', 'jkkaldsfjklsdaf', 140000, 2000, 2000, 0, 0, 0, 0, 0, 144000, 0, 'pengiriman laut', 'N', 'kg', 'cash', 'otomatis', NULL, 'N', 'paket telah sampai', 'Y'),
	(37, 'KDR160219-06-000003', NULL, NULL, 'SA080519-06-000001', 'devasatrio', 'asdfasdf', 'laut', 'kediri', 'manado', '2019-02-16', NULL, NULL, 1, '3.5', '5 x 5 x 5', '0.03', 'aklsjfkals', 'akjfkalsdjf', '098290482930', '09238490209283', 'klsadjf aksjdfk asdfkjaksdfjka', 'asdklfjaskdf asdjfklasf askfjkas', 140000, 1000, 1000, 1400, 0, 0, 0, 0, 143400, 0, 'klsadfj', 'N', 'kg', 'bt', 'otomatis', NULL, 'N', 'paket telah sampai', 'Y'),
	(38, 'KDR160219-06-000004', '123-2304982390', 'SJ090419-06-000002', NULL, 'devasatrio', 'asdklasdfj', 'udara', 'kediri', 'kalimantan', '2019-02-16', '2019-04-09', NULL, 1, '1.5', '20 x 20 x 20', '1.33', 'aslkdfjaksldf', 'kalsdjfaskdf', '093849028390', '092834908230', 'klsajdfkl asdjfklasfd sadf asjdfklsa dfsajdflk', 'kasldfj askldjfksaldf kjasd fksdjdf asdfj', 30000, 0, 0, 300, 5000, 1000, 0, 0, 36300, 5000, 'asklfj', 'N', 'kg', 'cash', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(40, '2222', NULL, NULL, NULL, 'devasatrio', 'halo halo coba darat nih', 'darat', 'kediri', 'malang kidul', '2019-05-04', NULL, NULL, 1, '5', '30 x 30 x 20', '5', 'hehe', 'haha', '09238490', '92034892', 'kjsadkfasj', 'jskladfjksajf', 170000, 2000, 1000, 0, 0, 0, 0, 0, 173000, 0, 'pengiriman darat', 'Y', 'kg', 'cash', 'manual', '4', 'N', 'siap dikirim', 'N'),
	(41, '44444', NULL, NULL, NULL, 'devasatrio', 'coba manual darat', 'darat', 'kediri', 'malang kidul', '2019-05-03', NULL, '2019-05-03', 1, '5', '30 x 30 x 20', '5', 'halo', 'deni', '1234567', '7654321', 'gurah', 'magersari', 170000, 2000, 3000, 0, 0, 0, 0, 0, 175000, 0, 'pengiriman darat', 'Y', 'kg', 'cash', 'manual', '4', 'N', 'siap dikirim', 'N'),
	(42, 'KDR180419-06-000001', NULL, NULL, NULL, 'devasatrio', 'aslkdfjasklfjksladf', 'udara', 'kediri', 'kalimantan', '2019-04-18', NULL, '2019-05-04', 1, '8', '30 x 40 x 40', '8', 'asdklfjskalf', 'jkasdjfklasfj', '90284902390', '9028394', 'kjaskldfjasklfj', 'kjasdkljskadfl', 160000, 0, 0, 0, 5000, 2000, 0, 0, 167000, 0, 'pengiriman udara', 'Y', 'kg', 'cash', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(43, 'KDR180419-06-000002', NULL, NULL, NULL, 'devasatrio', 'asdfjasklfjkl', 'udara', 'kediri', 'lampung', '2019-04-27', NULL, '2019-05-04', 1, '21', '50 x 50 x 50', '21', 'askdlfjkla', 'askldfjkla', '928349032890', '2903849023', 'jklasfklajf', 'jklasjdfklaj', 630000, 0, 0, 0, 20000, 2000, 0, 0, 652000, 0, 'pengiriman udara', 'Y', 'kg', 'cash', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(44, 'KDR260419-06-000001', 'asdfaf', NULL, NULL, 'devasatrio', 'halo halo', 'udara', 'kediri', 'udara0009', '2019-04-26', NULL, NULL, 2, '13', '-', '-', 'asdfjlkasfj', 'kjasdkfljakl', '092384902', '9028490', 'jskladfjklaf', 'skaldfklafjk', 260000, 0, 0, 0, 5000, 40000, 0, 0, 305000, 0, 'pengiriman udara', 'N', 'kg', 'cash', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(45, 'KDR260419-06-000002', NULL, NULL, NULL, 'devasatrio', 'aslkdfjakslfjl', 'udara', 'kediri', 'bali', '2019-04-26', NULL, '2019-05-02', 2, '14', '-', '-', 'sadklfjaksldfj', 'klasdjfklasjfkl', '9028349028390', '902348920', 'klsadjklasjfdkl', 'jklasdfjklasfjd', 280000, 0, 0, 0, 5000, 50000, 0, 0, 335000, 0, 'pengiriman udara', 'Y', 'kg', 'cash', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(46, 'KDR010519-06-000001', NULL, NULL, 'SA120519-06-000004', 'devasatrio', 'coba status bayar', 'darat', 'kediri', 'kediri lor', '2019-05-01', NULL, '2019-05-02', 1, '3', '20 x 30 x 20', '3', 'heru', 'askldfjklasdf', '9023849023890', '9023489023490', 'aksdfjkl;asd asdfjklas dfksajdfklasdf klasdfkasdfkl;asdjklsjafkl;', 'skldfj sdfj askldf sk sdfjklsadfjasdkl;f', 102000, 2000, 5000, 0, 0, 0, 0, 0, 109000, 0, 'males ae ngeter ne', 'Y', 'kg', 'cash', 'otomatis', NULL, 'N', 'menuju alamat tujuan', 'P'),
	(47, 'KDR010519-06-000002', 'sadfasdfasdf', NULL, NULL, 'devasatrio', 'coba status bayar sukses', 'darat', 'kediri', 'malang kidul', '2019-05-01', NULL, '2019-05-01', 1, '1', '40 x 40 x 40', '16', 'heri', 'laskdjkls', '092384902384902', '90482390', 'kjskldf sadf asdklf skl;afjasdkl;fjklskl;f', 'jsdklfj fsfklsfj aslfjklasd', 34000, 40000, 2000, 0, 0, 0, 0, 0, 76000, 0, 'pengiriman darat', 'Y', 'kg', 'cash', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(48, 'KDR020519-06-000001', NULL, NULL, NULL, 'devasatrio', 'coba status lagi', 'darat', 'kediri', 'etan', '2019-05-02', NULL, '2019-05-02', 1, '30', '40 x 40 x 40', '16', 'doni', 'deni', '001', '002', 'gurah', 'kediri', 1200000, 2000, 4000, 0, 0, 0, 0, 0, 1206000, 0, 'pengiriman darat', 'Y', 'kg', 'bt', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(49, 'KDR020519-06-000002', NULL, NULL, 'SA080519-06-000001', 'devasatrio', 'coba status bayar lagi 2', 'darat', 'kediri', 'malang kidul', '2019-05-02', NULL, '2019-05-02', 1, '2', '30 x 20 x 10', '2', 'hendri', 'dini', '004', '003', 'ngadi', 'boyo', 68000, 4000, 5000, 0, 0, 0, 0, 0, 77000, 0, 'pengiriman darat', 'Y', 'kg', 'cash', 'otomatis', NULL, 'N', 'paket telah sampai', 'Y'),
	(50, 'KDR020519-06-000003', NULL, NULL, NULL, 'devasatrio', 'coba status bayar 4', 'darat', 'kediri', 'malang kidul', '2019-05-02', NULL, '2019-05-02', 1, '5', '40 x 40 x 20', '8', 'hadi', 'ono', '29098', '09890890', 'mager', 'sari', 170000, 5000, 50000, 0, 0, 0, 0, 0, 225000, 0, 'pengiriman darat', 'Y', 'kg', 'cash', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(51, 'KDR020519-06-000004', NULL, NULL, NULL, 'devasatrio', 'coba resi lautnya ok', 'laut', 'kediri', 'laut01', '2019-05-02', NULL, '2019-05-02', 1, '7', '30 x 30 x 30', '7', 'heri', 'gendi', '003', '002', 'gurah', 'magersari', 238000, 2000, 5000, 0, 0, 0, 0, 0, 245000, 0, 'pengiriman laut', 'Y', 'kg', 'cash', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(52, 'KDR020519-06-000005', NULL, NULL, NULL, 'devasatrio', 'coba resi laut lagi brooo', 'laut', 'kediri', 'laut03', '2019-05-02', NULL, '2019-05-02', 1, '4', '20 x 40 x 20', '4', 'heru adi', 'heri', '004004004', '005', 'gurah', 'magersari', 136000, 2000, 2000, 0, 0, 0, 0, 0, 140000, 0, 'pengiriman laut', 'Y', 'kg', 'cash', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(53, 'KDR020519-06-000006', 'asdfasdf', NULL, NULL, 'devasatrio', 'coba lagi resi nya say', 'laut', 'kediri', 'manado', '2019-05-02', NULL, '2019-05-02', 1, '15', '40 x 40 x 40', '16', 'halo halo', 'hihihi', '00005', '00006', 'hey', 'hiiiiihiiii', 600000, 20000, 4000, 0, 0, 0, 0, 0, 624000, 0, 'pengiriman laut', 'Y', 'kg', 'cash', 'otomatis', NULL, 'N', 'siap dikirim', 'N'),
	(54, 'KDR020519-06-000007', '20394890', NULL, 'SA120519-06-000003', 'devasatrio', 'coba resi udara gan', 'udara', 'asdf', 'kalimantan', '2019-05-02', NULL, '2019-05-02', 3, '19', '-', '-', 'halo', 'hay', '29348290', '09384902890', 'heaskldfj', 'kasldfjklsaf asdkljf klasjdf', 380000, 0, 0, 0, 500000, 200000, 190000, 0, 1270000, 0, 'pengiriman udara', 'Y', 'kg', 'bt', 'otomatis', NULL, 'N', 'paket telah sampai', 'Y'),
	(55, 'KDR020519-06-000008', NULL, NULL, NULL, 'devasatrio', 'coba resi udara lagi cuy', 'udara', 'kediri', 'bali', '2019-05-02', NULL, '2019-05-03', 2, '16', '-', '-', 'hari', 'hari', '982349080', '09234890111', 'gurah', 'kediri', 320000, 0, 0, 0, 5000, 3000, 160000, 488000, 146400, 0, 'pengiriman udara', 'Y', 'kg', 'cash', 'otomatis', NULL, 'Y', 'siap dikirim', 'N'),
	(56, '12345-101', NULL, NULL, 'SA120519-06-000004', 'devasatrio', 'coba darat lagi cuy', 'darat', 'kediri', 'malang kidul', '2019-05-04', NULL, NULL, 1, '5', '30 x 40 x 40', '12', 'hari', 'dini', '0928349090', '0923892839', 'gurah', 'ksdljfklasd', 170000, 2000, 2000, 0, 0, 0, 0, 0, 174000, 0, 'Tempat penerima tutup', 'Y', 'kg', 'cash', 'manual', '4', 'N', 'menuju alamat tujuan', 'P'),
	(57, '12345-102', NULL, NULL, NULL, 'devasatrio', 'coba jalur laut lagi nih', 'laut', 'kediri', 'manado', '2019-05-04', NULL, '2019-05-04', 1, '5', '30 x 30 x 30', '7', 'haris', 'dendi', '092834902389', '0938490328', 'gurah', 'jsakldfj', 200000, 3000, 2000, 0, 0, 0, 0, 205000, 61500, 0, 'pengiriman laut', 'Y', 'kg', 'bt', 'manual', '4', 'Y', 'siap dikirim', 'N'),
	(58, '12345-103', NULL, NULL, 'SA120519-06-000003', 'devasatrio', 'coba jalur laut', 'laut', 'kediri', 'laut03', '2019-05-03', NULL, '2019-05-03', 1, '5', '20 x 40 x 20', '4', 'heru', 'dindi', '0938490', '9028490', 'gurah', 'magersari', 170000, 2000, 1000, 0, 0, 0, 0, 0, 173000, 0, 'pengiriman laut', 'Y', 'kg', 'bt', 'manual', '4', 'N', 'dikembalikan ke pengirim', 'G'),
	(60, '12345-202', NULL, NULL, 'SA120519-06-000004', 'devasatrio', 'coba laut cuy', 'laut', 'kediri', 'manado', '2019-05-04', NULL, '2019-05-04', 1, '1', '30 x 10 x 10', '1', 'harr', 'dini', '09238490', '9283904', 'jskdfjkl', 'gurah', 40000, 2000, 1000, 0, 0, 0, 0, 0, 43000, 0, 'Alamat salah atau tidak lengkap', 'Y', 'kg', 'cash', 'manual', '7', 'N', 'menuju alamat tujuan', 'P'),
	(61, '12345-203', NULL, NULL, 'SA120519-06-000002', 'devasatrio', 'coba darat bos ku', 'darat', 'kediri', 'kediri lor', '2019-05-04', NULL, '2019-05-04', 1, '5', '30 x 20 x 10', '2', 'heri', 'ksdjfklsdfj', '93890890', '90989', 'skladjf', 'ksadfjklsadf', 170000, 2000, 1000, 0, 0, 0, 0, 0, 173000, 0, 'pengiriman darat', 'Y', 'kg', 'cash', 'manual', '7', 'N', 'sudah dikembalikan', 'G');
/*!40000 ALTER TABLE `resi_pengiriman` ENABLE KEYS */;

-- membuang struktur untuk table kargo.setting
DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namaweb` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `kontak` varchar(45) NOT NULL,
  `icon` varchar(200) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `header` varchar(100) DEFAULT NULL,
  `landing` varchar(100) DEFAULT NULL,
  `sapaan` varchar(100) DEFAULT NULL,
  `desk` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `desk_udara` text,
  `desk_laut` text,
  `desk_darat` text,
  `status` enum('Y','N') DEFAULT NULL,
  `bulan_sekarang` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel kargo.setting: ~0 rows (lebih kurang)
DELETE FROM `setting`;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` (`id`, `namaweb`, `email`, `kontak`, `icon`, `logo`, `header`, `landing`, `sapaan`, `desk`, `alamat`, `desk_udara`, `desk_laut`, `desk_darat`, `status`, `bulan_sekarang`) VALUES
	(1, 'Suryantara', 'abihsan@gmail.com', '082261110369', '1546485899-favicon.png', '1546486783-favicon.png', 'PT SURYANTARA CARGO', '1546074136-delivery.png', 'SELAMAT DATANG DI WEBSITE RESMI KAMI', 'PT SURYANTARA CARGO adalah jasa pengiriman barang yang telah terbukti kwalitas dan pelayanan nya', 'Jln PGA No.1 RW 01 RT 01 magersari gurah kediri', '<ul><li><strong>Estimasi</strong> biaya akan kosong apa bila berat tidak memenuhi berat minimal pengiriman</li><li><strong>Estimasi</strong> biaya belum termasuk biaya tambahan</li><li>Biaya tambahan meliputi : ppn, biaya surat muatan udara(SMU), biaya Surcharge, biaya karantina.</li><li><strong>Surcharge</strong> adalah kategori barang tertentu yang mendapat tambahan biaya udara</li></ul>', '<ul><li><strong>Estimasi</strong> biaya akan kosong apa bila berat tidak memenuhi berat minimal pengiriman</li><li><strong>Estimasi</strong> biaya belum termasuk biaya tambahan</li><li>Biaya tambahan meliputi : ppn, biaya surat muatan udara(SMU), biaya Surcharge, biaya karantina.</li><li><strong>Surcharge</strong> adalah kategori barang tertentu yang mendapat tambahan biaya laut</li></ul>', '<ul><li><strong>Estimasi</strong> biaya akan kosong apa bila berat tidak memenuhi berat minimal pengiriman</li><li><strong>Estimasi</strong> biaya belum termasuk biaya tambahan</li><li>Biaya tambahan meliputi : ppn, biaya surat muatan udara(SMU), biaya Surcharge, biaya karantina.</li><li><strong>Surcharge</strong> adalah kategori barang tertentu yang mendapat tambahan biaya darat</li></ul>', 'Y', 6);
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;

-- membuang struktur untuk table kargo.surat_antar
DROP TABLE IF EXISTS `surat_antar`;
CREATE TABLE IF NOT EXISTS `surat_antar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_karyawan` varchar(50) DEFAULT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `pemegang` varchar(50) DEFAULT NULL,
  `telp` varchar(50) DEFAULT NULL,
  `status` enum('Y','N','S') DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel kargo.surat_antar: ~5 rows (lebih kurang)
DELETE FROM `surat_antar`;
/*!40000 ALTER TABLE `surat_antar` DISABLE KEYS */;
INSERT INTO `surat_antar` (`id`, `id_karyawan`, `kode`, `tgl`, `pemegang`, `telp`, `status`) VALUES
	(1, '7', 'SA080519-06-000001', '2019-05-08', 'dina', '2390482390', 'S'),
	(2, '2', 'SA120519-06-000001', '2019-05-12', 'abi ihsan singo', '5654', 'S'),
	(3, '5', 'SA120519-06-000002', '2019-05-12', 'hari anti', '14045', 'S'),
	(4, '5', 'SA120519-06-000003', '2019-05-12', 'hari anti', '14045', 'S'),
	(5, '7', 'SA120519-06-000004', '2019-05-12', 'dina', '2390482390', 'Y');
/*!40000 ALTER TABLE `surat_antar` ENABLE KEYS */;

-- membuang struktur untuk table kargo.surat_jalan
DROP TABLE IF EXISTS `surat_jalan`;
CREATE TABLE IF NOT EXISTS `surat_jalan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin` varchar(100) DEFAULT NULL,
  `kode` text,
  `tujuan` text,
  `tgl` date DEFAULT NULL,
  `status` enum('Y','N','P') DEFAULT 'N',
  `totalkg` int(11) DEFAULT NULL,
  `totalkoli` int(11) DEFAULT NULL,
  `totalcash` int(11) DEFAULT NULL,
  `totalbt` int(11) DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL,
  `alamat_tujuan` varchar(70) DEFAULT NULL,
  `cabang` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel kargo.surat_jalan: ~9 rows (lebih kurang)
DELETE FROM `surat_jalan`;
/*!40000 ALTER TABLE `surat_jalan` DISABLE KEYS */;
INSERT INTO `surat_jalan` (`id`, `admin`, `kode`, `tujuan`, `tgl`, `status`, `totalkg`, `totalkoli`, `totalcash`, `totalbt`, `biaya`, `alamat_tujuan`, `cabang`) VALUES
	(1, 'devasatrio', 'SJ291218-06-000001', 'PT Iwak Enak-083223336313', '2018-12-29', 'P', 3, 1, 0, 186200, 58000, 'mungkung loceret nganjuk', 'N'),
	(2, 'devasatrio', 'SJ291218-06-000002', 'PT tani mundur jaya-085552344556', '2018-12-29', 'P', 11, 2, 130000, 26300, 87000, 'Jln saguling no 1 malang', 'N'),
	(3, 'devasatrio', 'SJ020119-06-000001', 'PT Moro Dadi-082122272212', '2019-01-02', 'P', 10, 3, 123000, 109690, 30000, 'Jln badut ulang tahun no 3 magelang', 'N'),
	(4, 'devasatrio', 'SJ020119-06-000002', 'PT tani mundur jaya-085552344556', '2019-01-02', 'P', 4, 2, 10100, 21000, 25000, 'Jln saguling no 1 malang', 'N'),
	(5, 'devasatrio', 'SJ020219-06-000001', 'PT Iwak Enak-083223336313', '2019-02-02', 'Y', 4, 2, 106020, 38340, 30000, 'mungkung loceret nganjuk', 'N'),
	(6, 'devasatrio', 'SJ140219-06-000001', 'PT Iwak Enak-083223336313', '2019-02-14', 'Y', 5, 2, 199280, 0, 20000, 'mungkung loceret nganjuk', 'N'),
	(7, 'devasatrio', 'SJ090419-06-000001', 'PT tani mundur jaya-085552344556', '2019-04-09', 'P', 8, 3, 273400, 0, NULL, 'Jln saguling no 1 malang', 'Y'),
	(8, 'devasatrio', 'SJ090419-06-000002', 'PT Moro Dadi-082122272212', '2019-04-09', 'Y', 11, 4, 290700, 71680, 14000, 'Jln badut ulang tahun no 3 magelang', 'N'),
	(9, 'devasatrio', 'SJ090419-06-000003', 'pt pubg-2303849023890', '2019-04-09', 'P', 5, 2, 46400, 67000, NULL, 'gurah kediri', 'Y');
/*!40000 ALTER TABLE `surat_jalan` ENABLE KEYS */;

-- membuang struktur untuk table kargo.tarif_darat
DROP TABLE IF EXISTS `tarif_darat`;
CREATE TABLE IF NOT EXISTS `tarif_darat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(100) DEFAULT NULL,
  `tujuan` varchar(100) DEFAULT NULL,
  `tarif` int(11) DEFAULT NULL,
  `berat_min` int(11) DEFAULT NULL,
  `estimasi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel kargo.tarif_darat: ~3 rows (lebih kurang)
DELETE FROM `tarif_darat`;
/*!40000 ALTER TABLE `tarif_darat` DISABLE KEYS */;
INSERT INTO `tarif_darat` (`id`, `kode`, `tujuan`, `tarif`, `berat_min`, `estimasi`) VALUES
	(13, 'darat00001', 'malang kidul', 34000, 3, '2'),
	(14, 'darat00002', 'kediri lor', 34000, 3, '2'),
	(16, 'darat00004', 'etan', 40000, 3, '2');
/*!40000 ALTER TABLE `tarif_darat` ENABLE KEYS */;

-- membuang struktur untuk table kargo.tarif_laut
DROP TABLE IF EXISTS `tarif_laut`;
CREATE TABLE IF NOT EXISTS `tarif_laut` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(100) DEFAULT NULL,
  `tujuan` varchar(100) DEFAULT NULL,
  `tarif` int(11) DEFAULT NULL,
  `berat_min` int(11) DEFAULT NULL,
  `estimasi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel kargo.tarif_laut: ~51 rows (lebih kurang)
DELETE FROM `tarif_laut`;
/*!40000 ALTER TABLE `tarif_laut` DISABLE KEYS */;
INSERT INTO `tarif_laut` (`id`, `kode`, `tujuan`, `tarif`, `berat_min`, `estimasi`) VALUES
	(6, 'laut004', 'manado', 40000, 1, '2'),
	(7, 'laut0009', 'laut01', 34000, 34, '2'),
	(8, 'laut0010', 'laut02', 34000, 34, '2'),
	(9, 'laut0011', 'laut03', 34000, 34, '2'),
	(10, 'laut0012', 'laut04', 34000, 34, '2'),
	(11, 'laut0013', 'laut05', 34000, 34, '2'),
	(12, 'laut0014', 'laut06', 34000, 34, '2'),
	(13, 'wer', 'qwer', 2334, 23, '23'),
	(14, 'laut0001', 'laut01', 10000, 34, '2'),
	(15, 'laut0002', 'laut02', 34000, 20, '2'),
	(16, 'laut0003', 'laut03', 34000, 34, '2'),
	(17, 'laut0004', 'laut04', 40000, 10, '2'),
	(18, 'laut0005', 'laut05', 34000, 34, '2'),
	(19, 'laut0006', 'laut06', 12000, 11, '2'),
	(27, 'laut0020', 'laut20', 12014, 25, '2'),
	(28, 'laut0021', 'laut21', 12015, 26, '2'),
	(29, 'laut0022', 'laut22', 12016, 27, '2'),
	(30, 'laut0023', 'laut23', 12017, 28, '2'),
	(31, 'laut0024', 'laut24', 12018, 29, '2'),
	(32, 'laut0025', 'laut25', 12019, 30, '2'),
	(33, 'laut0026', 'laut26', 12020, 31, '2'),
	(34, 'laut0027', 'laut27', 12021, 32, '2'),
	(35, 'laut0028', 'laut28', 12022, 33, '2'),
	(36, 'laut0029', 'laut29', 12023, 34, '2'),
	(37, 'laut0030', 'laut30', 12024, 35, '2'),
	(38, 'laut0031', 'laut31', 12025, 36, '2'),
	(39, 'laut0032', 'laut32', 12026, 37, '2'),
	(40, 'laut0033', 'laut33', 12027, 38, '2'),
	(41, 'laut0034', 'laut34', 12028, 39, '2'),
	(42, 'laut0035', 'laut35', 12029, 40, '2'),
	(43, 'laut0036', 'laut36', 12030, 41, '2'),
	(44, 'laut0037', 'laut37', 12031, 42, '2'),
	(45, 'laut0038', 'laut38', 12032, 43, '2'),
	(46, 'laut0039', 'laut39', 12033, 44, '2'),
	(47, 'laut0040', 'laut40', 12034, 45, '2'),
	(48, 'laut0041', 'laut41', 12035, 46, '2'),
	(49, 'laut0042', 'laut42', 12036, 47, '2'),
	(50, 'laut0043', 'laut43', 12037, 48, '2'),
	(51, 'laut0044', 'laut44', 12038, 49, '2'),
	(52, 'laut0045', 'laut45', 12039, 50, '2'),
	(53, 'laut0046', 'laut46', 12040, 51, '2'),
	(54, 'laut0047', 'laut47', 12041, 52, '2'),
	(55, 'laut0048', 'laut48', 12042, 53, '2'),
	(56, 'laut0049', 'laut49', 12043, 54, '2'),
	(57, 'laut0050', 'laut50', 12044, 55, '2'),
	(58, 'laut0051', 'laut51', 12045, 56, '2'),
	(59, 'laut0052', 'laut52', 12046, 57, '2'),
	(60, 'laut0053', 'laut53', 12047, 58, '2'),
	(61, 'laut0054', 'laut54', 12048, 59, '2'),
	(62, 'laut0055', 'laut55', 12049, 60, '2'),
	(63, 'laut0056', 'laut56', 12050, 61, '2');
/*!40000 ALTER TABLE `tarif_laut` ENABLE KEYS */;

-- membuang struktur untuk table kargo.tarif_udara
DROP TABLE IF EXISTS `tarif_udara`;
CREATE TABLE IF NOT EXISTS `tarif_udara` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(100) DEFAULT NULL,
  `tujuan` varchar(100) DEFAULT NULL,
  `airlans` varchar(100) DEFAULT NULL,
  `perkg` int(11) DEFAULT '0',
  `minimal_heavy` int(11) DEFAULT '0',
  `biaya_dokumen` int(11) DEFAULT '0',
  `berat_minimal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel kargo.tarif_udara: ~15 rows (lebih kurang)
DELETE FROM `tarif_udara`;
/*!40000 ALTER TABLE `tarif_udara` DISABLE KEYS */;
INSERT INTO `tarif_udara` (`id`, `kode`, `tujuan`, `airlans`, `perkg`, `minimal_heavy`, `biaya_dokumen`, `berat_minimal`) VALUES
	(6, 'udara0001', 'bandung betet', 'LION', 20000, 55, 5000, 15),
	(7, 'udara0002', 'banten', 'LION', 20000, 55, 5000, 15),
	(8, 'udara0003', 'bali', 'LION', 20000, 55, 5000, 11),
	(9, 'udara0004', 'bandung betet', 'garuda', 20000, 55, 5000, 11),
	(10, 'udara0005', 'bali', 'garuda', 30000, 55, 5000, 11),
	(11, 'udara0006', 'lampung', 'citilink', 20000, 55, 5000, 12),
	(12, 'udara0007', 'kalimantan', 'garuda', 20000, 55, 5000, 10),
	(13, 'udara0008', 'lampung', 'Lion NR', 30000, 55, 5000, 15),
	(14, 'udara0009', 'udara0009', 'LION', 20000, 55, 5000, 10),
	(15, 'udara0010', 'udara0010', 'LION', 20000, 55, 5000, 12),
	(17, 'udara011', 'papua', 'garuda', 500000, 50, 25000, 11),
	(18, 'udara0012', 'lombok', 'LION', 40000, 50, 25000, 11),
	(19, 'udara0013', 'cikarang', 'LION', 45000, 40, 25000, 11),
	(20, 'udara0014', 'situbondo', 'garuda', 50000, 30, 25000, 11),
	(21, 'udara0015', 'ngadiboyo', 'garuda', 30000, 50, 25000, 11);
/*!40000 ALTER TABLE `tarif_udara` ENABLE KEYS */;

-- membuang struktur untuk table kargo.tb_kategoriakutansi
DROP TABLE IF EXISTS `tb_kategoriakutansi`;
CREATE TABLE IF NOT EXISTS `tb_kategoriakutansi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` text NOT NULL,
  `nama` varchar(100) NOT NULL,
  `status` enum('pendapatan','pengeluaran') NOT NULL,
  `aksi` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel kargo.tb_kategoriakutansi: ~13 rows (lebih kurang)
DELETE FROM `tb_kategoriakutansi`;
/*!40000 ALTER TABLE `tb_kategoriakutansi` DISABLE KEYS */;
INSERT INTO `tb_kategoriakutansi` (`id`, `kode`, `nama`, `status`, `aksi`) VALUES
	(1, '001', 'Pemasukan Resi', 'pendapatan', 'N'),
	(2, '002', 'Pengeluaran Vendor', 'pengeluaran', 'N'),
	(3, '003', 'Hutang Usaha', 'pengeluaran', 'N'),
	(4, '004', 'Pajak Armada', 'pengeluaran', 'N'),
	(5, '005', 'BBM', 'pengeluaran', 'Y'),
	(6, '006', 'Service', 'pengeluaran', 'Y'),
	(7, '007', 'Parkir', 'pengeluaran', 'Y'),
	(8, '008', 'Tol', 'pengeluaran', 'Y'),
	(9, '009', 'ATK', 'pengeluaran', 'Y'),
	(10, '010', 'Listrik', 'pengeluaran', 'Y'),
	(11, '011', 'Internet', 'pengeluaran', 'Y'),
	(12, '012', 'Modal', 'pendapatan', 'N'),
	(13, '013', 'Pajak Perusahaan', 'pengeluaran', 'N');
/*!40000 ALTER TABLE `tb_kategoriakutansi` ENABLE KEYS */;

-- membuang struktur untuk table kargo.tb_neraca
DROP TABLE IF EXISTS `tb_neraca`;
CREATE TABLE IF NOT EXISTS `tb_neraca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(11) DEFAULT NULL,
  `bulan` int(11) DEFAULT NULL,
  `kas` bigint(40) DEFAULT NULL,
  `modal` bigint(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel kargo.tb_neraca: ~0 rows (lebih kurang)
DELETE FROM `tb_neraca`;
/*!40000 ALTER TABLE `tb_neraca` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_neraca` ENABLE KEYS */;

-- membuang struktur untuk table kargo.vendor
DROP TABLE IF EXISTS `vendor`;
CREATE TABLE IF NOT EXISTS `vendor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idvendor` varchar(100) DEFAULT NULL,
  `vendor` varchar(100) DEFAULT NULL,
  `telp` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `cabang` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel kargo.vendor: ~4 rows (lebih kurang)
DELETE FROM `vendor`;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` (`id`, `idvendor`, `vendor`, `telp`, `alamat`, `cabang`) VALUES
	(3, 'vendor001', 'PT tani mundur jaya', '085552344556', 'Jln saguling no 1 malang', 'Y'),
	(4, 'vendor002', 'PT Iwak Enak', '083223336313', 'mungkung loceret nganjuk', 'N'),
	(5, 'vendor003', 'PT Moro Dadi', '082122272212', 'Jln badut ulang tahun no 3 magelang', 'N'),
	(6, 'vendor0013', 'pt pubg', '2303849023890', 'gurah kediri', 'Y');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;

-- membuang struktur untuk trigger kargo.editadmin
DROP TRIGGER IF EXISTS `editadmin`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `editadmin` BEFORE UPDATE ON `admin` FOR EACH ROW BEGIN
update resi_pengiriman set admin=new.username where admin=old.username;
update surat_jalan set admin=new.username where admin=old.username;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- membuang struktur untuk trigger kargo.editkaryawan
DROP TRIGGER IF EXISTS `editkaryawan`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `editkaryawan` BEFORE UPDATE ON `karyawan` FOR EACH ROW BEGIN
update gaji_karyawan set nama_karyawan=new.nama where nama_karyawan=old.nama;
update surat_antar set pemegang=new.nama, telp=new.telp where id_karyawan=old.id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- membuang struktur untuk trigger kargo.editvendor
DROP TRIGGER IF EXISTS `editvendor`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `editvendor` BEFORE UPDATE ON `vendor` FOR EACH ROW BEGIN
update surat_jalan set tujuan=concat(new.vendor,'-',new.telp) where tujuan=concat(old.vendor,'-',old.telp);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- membuang struktur untuk trigger kargo.hapus_suratantar
DROP TRIGGER IF EXISTS `hapus_suratantar`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `hapus_suratantar` BEFORE DELETE ON `surat_antar` FOR EACH ROW BEGIN
delete from resi_pengiriman where resi_pengiriman.kode_antar = old.kode;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- membuang struktur untuk trigger kargo.hapus_suratjalan
DROP TRIGGER IF EXISTS `hapus_suratjalan`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `hapus_suratjalan` BEFORE DELETE ON `surat_jalan` FOR EACH ROW BEGIN
delete from resi_pengiriman where resi_pengiriman.kode_jalan = old.kode;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
