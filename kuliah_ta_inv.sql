-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Mar 2022 pada 05.37
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kuliah_ta_inv`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barangs`
--

CREATE TABLE `barangs` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merek` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hargajual` double NOT NULL,
  `hargabeli` double NOT NULL,
  `stok` float(8,2) NOT NULL,
  `stokmin` float(8,2) NOT NULL,
  `pemasok_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `satuan_id` int(11) NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `barangs`
--

INSERT INTO `barangs` (`id`, `nama`, `merek`, `hargajual`, `hargabeli`, `stok`, `stokmin`, `pemasok_id`, `kategori_id`, `satuan_id`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Lemari Jati Vanilla', 'Almarian', 500000, 450000, 5.00, 3.00, 3, 1, 3, 'img', '2021-09-25 04:36:47', '2021-10-03 08:34:30'),
(2, 'Bantal Lavender', 'Okoyama', 20000, 15000, 27.00, 5.00, 1, 5, 1, 'img', '2021-09-25 04:36:47', '2021-09-29 10:01:20'),
(3, 'Selimut Bulu Tebal', 'Tiki', 350000, 280000, 10.00, 5.00, 2, 3, 3, 'img', '2021-09-25 04:36:47', '2021-10-03 08:34:19'),
(4, 'Seprai Chanel', 'Corona', 70000, 45000, 14.00, 20.00, 2, 3, 2, '1632585858100.TI.png', '2021-09-25 04:36:47', '2021-10-03 08:34:47'),
(5, 'QWERTY', 'qwe', 120000, 100000, 20.00, 5.00, 4, 1, 2, '163258359899.download.jpg', '2021-09-25 07:53:06', '2021-10-03 09:16:08'),
(6, 'Ace', 'Asse', 45000, 25000, 3.00, 3.00, 5, 9, 3, '163277403199.IMG_20201201_002227.jpg', '2021-09-27 13:20:31', '2021-10-01 09:06:11'),
(10, 'A', 'A', 10000, 5000, 45.00, 30.00, 8, 9, 1, '163326594299.WhatsApp Image 2021-09-12 at 16.28.13.jpeg', '2021-10-03 05:58:38', '2021-10-03 08:33:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pembelians`
--

CREATE TABLE `detail_pembelians` (
  `id_detail` int(11) NOT NULL,
  `pembelian_faktur` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_id` int(11) NOT NULL,
  `jml` float(8,2) NOT NULL,
  `harga` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_pembelians`
--

INSERT INTO `detail_pembelians` (`id_detail`, `pembelian_faktur`, `barang_id`, `jml`, `harga`, `total`, `created_at`, `updated_at`) VALUES
(7, '100221', 2, 2.00, 15000, 30000, '2021-09-25 10:19:03', '2021-09-25 10:19:03'),
(9, '100223', 5, 3.00, 100000, 300000, '2021-09-25 12:30:08', '2021-09-25 12:30:08'),
(10, '100223', 2, 4.00, 10000, 40000, '2021-09-25 12:30:34', '2021-09-25 12:30:34'),
(12, '100224', 3, 2.00, 265000, 530000, '2021-09-26 05:49:45', '2021-09-26 05:49:45'),
(13, '55462', 3, 3.00, 280000, 840000, '2021-09-30 04:03:00', '2021-09-30 04:03:00'),
(14, 'WD 5099', 5, 10.00, 100000, 1000000, '2021-10-01 08:50:57', '2021-10-01 08:50:57'),
(15, 'WD 5099', 3, 2.00, 250000, 500000, '2021-10-01 08:51:15', '2021-10-01 08:51:15'),
(16, '200226', 5, 5.00, 100000, 500000, '2021-10-02 22:48:45', '2021-10-02 22:48:45'),
(18, '200227', 1, 2.00, 350000, 700000, '2021-10-03 08:12:19', '2021-10-03 08:12:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_penjualans`
--

CREATE TABLE `detail_penjualans` (
  `id_detail` int(11) NOT NULL,
  `penjualan_faktur` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `jml` float(8,2) NOT NULL,
  `harga` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_penjualans`
--

INSERT INTO `detail_penjualans` (`id_detail`, `penjualan_faktur`, `barang_id`, `jml`, `harga`, `total`, `created_at`, `updated_at`) VALUES
(1, 2001, 1, 6.00, 15000, 90000, NULL, NULL),
(2, 2001, 5, 1.00, 110000, 110000, NULL, NULL),
(3, 2002, 1, 1.00, 400000, 40000, NULL, NULL),
(4, 2002, 2, 5.00, 10000, 50000, NULL, NULL),
(5, 2003, 4, 5.00, 40000, 200000, '2021-09-30 07:01:54', '2021-09-30 07:01:54'),
(7, 2003, 5, 3.00, 100000, 300000, '2021-09-30 07:25:15', '2021-09-30 07:25:15'),
(10, 2006, 1, 1.00, 425000, 425000, '2021-10-01 09:05:30', '2021-10-01 09:05:30'),
(11, 2006, 6, 1.00, 22000, 22000, '2021-10-01 09:06:11', '2021-10-01 09:06:11'),
(13, 2011, 3, 1.00, 250000, 250000, '2021-10-03 08:34:19', '2021-10-03 08:34:19'),
(14, 2011, 1, 1.00, 400000, 400000, '2021-10-03 08:34:30', '2021-10-03 08:34:30'),
(15, 2011, 4, 1.00, 40000, 40000, '2021-10-03 08:34:47', '2021-10-03 08:34:47'),
(17, 2011, 5, 3.00, 90000, 270000, '2021-10-03 08:35:49', '2021-10-03 08:35:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoris`
--

CREATE TABLE `kategoris` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategoris`
--

INSERT INTO `kategoris` (`id_kategori`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Lemari', '2021-09-23 07:20:49', NULL),
(2, 'Meja', '2021-09-23 07:20:49', NULL),
(3, 'Kasur', '2021-09-23 07:20:49', NULL),
(4, 'Seprai', '2021-09-23 07:20:49', NULL),
(5, 'Bantal', '2021-09-23 07:20:49', NULL),
(9, 'Alat Sholat', '2021-09-27 13:12:25', '2021-09-27 13:13:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_17_135758_kategori', 1),
(6, '2021_09_19_145704_satuan', 1),
(7, '2021_09_19_174356_pemasok', 1),
(8, '2021_09_20_054533_pelanggan', 1),
(9, '2021_09_21_114158_barang', 1),
(10, '2021_09_22_150709_pembelian', 1),
(11, '2021_09_22_150741_detail_pembelian', 1),
(12, '2021_09_23_071938_detail_penjualan', 1),
(13, '2021_09_23_073916_penjualan', 1),
(14, '2021_09_26_114411_pengembalian', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggans`
--

CREATE TABLE `pelanggans` (
  `id_pelanggan` int(11) NOT NULL,
  `pelanggan` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenkel` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nohp` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pelanggans`
--

INSERT INTO `pelanggans` (`id_pelanggan`, `pelanggan`, `jenkel`, `nohp`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Yve', 'P', '111111111111', 'Land of Dawn', '2021-09-23 07:20:49', NULL),
(2, 'Estes', 'L', '111111111111', 'Land of Dawn', '2021-09-23 07:20:49', NULL),
(3, 'Fanny', 'P', '111111111111', 'Land of Dawn', '2021-09-23 07:20:49', NULL),
(4, 'Gussion', 'L', '111111111111', 'Land of Dawn', '2021-09-23 07:20:49', NULL),
(5, 'Harith', 'L', '111111111111', 'Land of Dawn', '2021-09-23 07:20:49', NULL),
(6, 'Guinnevere', 'P', '12345678901', 'Land of Dawn', '2021-09-23 07:20:49', '2021-09-27 13:07:15'),
(8, 'Nando', 'L', '085272508235', '?', '2021-09-27 13:06:56', '2021-09-27 13:06:56'),
(9, 'Yaya', 'P', '012345678999', 'Pasar Baru', '2021-09-29 23:26:27', '2021-09-29 23:26:27'),
(10, 'Merisa Adha Azzahra', 'N', '082384637581', 'Padang', '2021-10-01 08:54:03', '2021-10-03 06:33:34'),
(13, 'Karrura', 'P', '09874678865', 'akugdiuegfi', '2021-10-03 08:31:19', '2021-10-03 08:31:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemasoks`
--

CREATE TABLE `pemasoks` (
  `id_pemasok` int(11) NOT NULL,
  `nama_pemasok` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descr` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pemasoks`
--

INSERT INTO `pemasoks` (`id_pemasok`, `nama_pemasok`, `telp`, `alamat`, `descr`, `created_at`, `updated_at`) VALUES
(1, 'PT Bantal Berguling', '0987654321', 'Bikini Bottom', 'Data ini hanyalah hoax belaka', '2021-09-23 07:20:49', NULL),
(2, 'CV Selimuti Kasur', '0123456789', 'Land of Dawn', 'Data ini tidak benar', '2021-09-23 07:20:49', NULL),
(3, 'PT Masuk Lemari', '1231231234', 'Underworld', 'ini adalah keterangan', '2021-09-23 07:20:49', NULL),
(4, 'PT Percobaan', '082384637581', 'Irigasi Padang', 'Data ini tidak bisa dipercaya, produser barang-barang aneh', '2021-09-23 07:20:49', '2021-09-27 13:08:38'),
(5, 'CV Kain', '5674255533', 'Kebun Sutra', 'Produser kain', '2021-09-23 07:20:49', NULL),
(7, 'CV Pratama Harau', '56789532452', 'QWERTYYUIO', '-', '2021-10-01 08:42:29', '2021-10-01 08:42:29'),
(8, 'Warta Dianukusuma', '08136563748', 'Khatib Sulaiman', '-', '2021-10-01 08:45:03', '2021-10-01 08:45:03'),
(9, 'AXEL', '123454321', 'AXEL', 'ACCEL', '2021-10-01 08:45:57', '2021-10-01 08:45:57'),
(11, 'MEII', '234532', 'Mall', 'mall', '2021-10-03 08:05:26', '2021-10-03 08:05:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelians`
--

CREATE TABLE `pembelians` (
  `id_pembelian` int(11) NOT NULL,
  `faktur` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl` date NOT NULL,
  `pemasok_id` int(11) NOT NULL,
  `harga` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembelians`
--

INSERT INTO `pembelians` (`id_pembelian`, `faktur`, `tgl`, `pemasok_id`, `harga`, `created_at`, `updated_at`) VALUES
(1, '100221', '2021-09-19', 1, 30000, '2021-09-23 07:26:05', '2021-09-26 05:50:29'),
(16, '100223', '2021-09-13', 2, 340000, '2021-09-24 12:24:54', '2021-09-24 12:24:54'),
(23, '100224', '2021-09-21', 4, 530000, '2021-09-26 05:48:09', '2021-09-26 05:48:09'),
(24, '55462', '2021-09-13', 2, 840000, '2021-09-30 04:02:34', '2021-09-30 04:02:34'),
(25, '200225', '2021-09-22', 3, 1800000, '2021-09-30 04:41:28', '2021-09-30 04:41:28'),
(28, 'WD 5099', '2021-09-26', 8, 1500000, '2021-10-01 08:49:49', '2021-10-01 08:49:49'),
(29, '200226', '2021-09-30', 8, 500000, '2021-10-02 22:48:13', '2021-10-02 22:48:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalians`
--

CREATE TABLE `pengembalians` (
  `id_pengembalian` int(11) NOT NULL,
  `penjualan_faktur` int(11) NOT NULL,
  `pelanggan_id` int(11) NOT NULL,
  `penjualan_tgl` date NOT NULL,
  `tglretur` date NOT NULL,
  `barang_id` int(11) NOT NULL,
  `jml` float(8,2) NOT NULL,
  `descretur` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengembalians`
--

INSERT INTO `pengembalians` (`id_pengembalian`, `penjualan_faktur`, `pelanggan_id`, `penjualan_tgl`, `tglretur`, `barang_id`, `jml`, `descretur`, `created_at`, `updated_at`) VALUES
(1, 2001, 3, '2021-09-08', '2021-09-09', 5, 1.00, 'Barang penyok', NULL, NULL),
(5, 2002, 1, '2021-09-20', '2021-09-22', 2, 2.00, 'Rusak bantalnya', '2021-09-29 08:58:13', '2021-09-29 10:01:20'),
(7, 2006, 10, '2021-09-28', '2021-09-29', 1, 1.00, 'Pintu patah', '2021-10-01 09:16:03', '2021-10-01 09:16:03'),
(9, 2011, 13, '2021-10-02', '2021-10-03', 5, 1.00, 'Penyok', '2021-10-03 09:16:08', '2021-10-03 09:16:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualans`
--

CREATE TABLE `penjualans` (
  `faktur` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `pelanggan_id` int(11) NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tharga` double NOT NULL,
  `tbayar` double NOT NULL,
  `tkembali` double NOT NULL,
  `descr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penjualans`
--

INSERT INTO `penjualans` (`faktur`, `tgl`, `pelanggan_id`, `status`, `tharga`, `tbayar`, `tkembali`, `descr`, `created_at`, `updated_at`) VALUES
(2001, '2021-09-08', 3, 'Lunas', 200000, 200000, 0, '-', NULL, NULL),
(2002, '2021-09-20', 1, 'Lunas', 450000, 500000, 50000, '-', NULL, NULL),
(2003, '2021-09-26', 9, 'Lunas', 500000, 600000, 100000, 'Clear', '2021-09-29 23:31:37', '2021-10-01 05:00:32'),
(2006, '2021-09-28', 10, 'Lunas', 447000, 500000, 53000, '-', '2021-10-01 08:57:52', '2021-10-01 09:06:27'),
(2010, '2021-10-03', 11, '-', 0, 0, 0, '-', '2021-10-02 22:54:45', '2021-10-02 22:54:45'),
(2011, '2021-10-02', 13, 'Lunas', 960000, 1000000, 40000, 'Grosir', '2021-10-03 08:32:12', '2021-10-03 08:36:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuans`
--

CREATE TABLE `satuans` (
  `id_satuan` int(11) NOT NULL,
  `nama_satuan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `satuans`
--

INSERT INTO `satuans` (`id_satuan`, `nama_satuan`, `created_at`, `updated_at`) VALUES
(1, 'Buah', '2021-09-23 07:20:49', NULL),
(2, 'Pieces', '2021-09-23 07:20:49', NULL),
(3, 'Set', '2021-09-23 07:20:49', NULL),
(4, 'Hasta', '2021-09-23 07:20:49', NULL),
(5, 'Papan', '2021-09-23 07:20:49', NULL),
(6, 'Paket', '2021-09-23 07:20:49', NULL),
(7, 'Box', '2021-09-23 07:20:49', NULL),
(10, 'Meter', '2021-10-03 06:04:09', '2021-10-03 06:04:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama`, `username`, `password`, `level`) VALUES
(1, 'Administrator', 'admin', '$2y$10$yMkQ4uIMfGUYdX.DyIs42eusVWZHcwUMEYtQ8Yhd28FOKVcdLgyMe', 'Admin'),
(2, 'Pemilik', 'pemilik', '$2y$10$6TJmmY7cOX/sjEf.S1cSqeIIBVPNRPcN1548CA54Xy/RnQI2oQ5RC', 'Pemilik'),
(3, 'Karyawan', 'karyawan', '$2y$10$lk6bLlQhqh/Jfi0qlhUEdeHgZ5P1CLaSNmrY5KHfzGZQDgZcUfVtu', 'Karyawan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_pengguna` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_pengguna`, `name`, `uname`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', '12345', 'Admin', '2021-09-23 07:20:48', '2021-10-03 18:38:28'),
(2, 'User', 'User', '12345', 'User', '2021-09-23 07:20:49', '2021-10-03 18:38:57'),
(3, 'Pemilik', 'Pemilik', '12345', 'Pemilik', '2021-09-23 07:20:49', '2021-10-03 18:39:44'),
(5, 'Karrura', 'karrura', '7ed6c1f2', 'Admin', '2021-09-27 13:03:33', '2021-09-27 13:04:49');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_pembelians`
--
ALTER TABLE `detail_pembelians`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indeks untuk tabel `detail_penjualans`
--
ALTER TABLE `detail_penjualans`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pelanggans`
--
ALTER TABLE `pelanggans`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `pemasoks`
--
ALTER TABLE `pemasoks`
  ADD PRIMARY KEY (`id_pemasok`);

--
-- Indeks untuk tabel `pembelians`
--
ALTER TABLE `pembelians`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `pengembalians`
--
ALTER TABLE `pengembalians`
  ADD PRIMARY KEY (`id_pengembalian`);

--
-- Indeks untuk tabel `penjualans`
--
ALTER TABLE `penjualans`
  ADD PRIMARY KEY (`faktur`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `satuans`
--
ALTER TABLE `satuans`
  ADD PRIMARY KEY (`id_satuan`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `detail_pembelians`
--
ALTER TABLE `detail_pembelians`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `detail_penjualans`
--
ALTER TABLE `detail_penjualans`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `pelanggans`
--
ALTER TABLE `pelanggans`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `pemasoks`
--
ALTER TABLE `pemasoks`
  MODIFY `id_pemasok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `pembelians`
--
ALTER TABLE `pembelians`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `pengembalians`
--
ALTER TABLE `pengembalians`
  MODIFY `id_pengembalian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `penjualans`
--
ALTER TABLE `penjualans`
  MODIFY `faktur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2012;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `satuans`
--
ALTER TABLE `satuans`
  MODIFY `id_satuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
