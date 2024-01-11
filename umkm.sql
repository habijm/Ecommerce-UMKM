-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jan 2024 pada 05.01
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
-- Database: `umkm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alamat_pengiriman`
--

CREATE TABLE `alamat_pengiriman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_penerima` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_tlp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelurahan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kodepos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `alamat_pengiriman`
--

INSERT INTO `alamat_pengiriman` (`id`, `user_id`, `status`, `nama_penerima`, `no_tlp`, `alamat`, `provinsi`, `kota`, `kecamatan`, `kelurahan`, `kodepos`, `created_at`, `updated_at`) VALUES
(1, 1, 'tidak', 'Habi Jiyan Mu', '0812345678', 'CondongCatur, Sleman, Yogyakarta', 'Yogyakarta', 'Sleman', 'Condong Catur', 'Congcat', '31313', '2024-01-05 22:45:00', '2024-01-10 19:31:50'),
(2, 4, 'tidak', 'Habi Jiyan M', '0812345678', 'CondongCatur, Sleman, Yogyakarta', 'Yogyakarta', 'Sleman', 'Condong Catur', 'Congcat', '31313', '2024-01-10 06:49:09', '2024-01-10 19:31:50'),
(3, 5, 'utama', 'Budi', '0812345678', 'CondongCatur, Sleman, Yogyakarta', 'Yogyakarta', 'Sleman', 'Condong Catur', 'Congcat', '31313', '2024-01-10 19:31:50', '2024-01-10 19:31:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `no_invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_cart` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_pengiriman` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_resi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ekspedisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` double(12,2) NOT NULL DEFAULT 0.00,
  `ongkir` double(12,2) NOT NULL DEFAULT 0.00,
  `diskon` double(12,2) NOT NULL DEFAULT 0.00,
  `total` double(12,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `no_invoice`, `status_cart`, `status_pembayaran`, `status_pengiriman`, `no_resi`, `ekspedisi`, `subtotal`, `ongkir`, `diskon`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 'INV 001', 'checkout', 'belum', 'belum', NULL, NULL, 13000.00, 0.00, 0.00, 13000.00, '2024-01-05 22:39:43', '2024-01-05 22:45:07'),
(2, 1, 'INV 002', 'checkout', 'belum', 'belum', NULL, NULL, 17600.00, 0.00, 0.00, 17600.00, '2024-01-08 11:43:14', '2024-01-08 11:43:42'),
(3, 1, 'INV 003', 'checkout', 'belum', 'belum', NULL, NULL, 13500.00, 0.00, 0.00, 13500.00, '2024-01-09 20:57:28', '2024-01-09 20:57:36'),
(4, 4, 'INV 001', 'checkout', 'belum', 'belum', NULL, NULL, 18000.00, 0.00, 0.00, 18000.00, '2024-01-10 06:48:49', '2024-01-10 06:49:15'),
(5, 4, 'INV 002', 'checkout', 'belum', 'belum', NULL, NULL, 23400.00, 0.00, 0.00, 23400.00, '2024-01-10 07:47:42', '2024-01-10 07:52:49'),
(6, 4, 'INV 003', 'checkout', 'belum', 'belum', NULL, NULL, 23400.00, 0.00, 0.00, 23400.00, '2024-01-10 07:56:51', '2024-01-10 07:56:55'),
(7, 4, 'INV 004', 'checkout', 'belum', 'belum', NULL, NULL, 23400.00, 0.00, 0.00, 23400.00, '2024-01-10 07:59:36', '2024-01-10 07:59:38'),
(8, 4, 'INV 005', 'checkout', 'belum', 'belum', NULL, NULL, 23400.00, 0.00, 0.00, 23400.00, '2024-01-10 09:40:45', '2024-01-10 09:40:57'),
(9, 5, 'INV 001', 'checkout', 'belum', 'belum', NULL, NULL, 23400.00, 0.00, 0.00, 23400.00, '2024-01-10 19:31:12', '2024-01-10 19:31:56'),
(10, 5, 'INV 002', 'checkout', 'belum', 'belum', NULL, NULL, 40500.00, 0.00, 0.00, 40500.00, '2024-01-10 20:02:51', '2024-01-10 20:49:33'),
(11, 1, 'INV 004', 'cart', 'belum', 'belum', NULL, NULL, 13500.00, 0.00, 0.00, 13500.00, '2024-01-10 20:37:35', '2024-01-10 20:37:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart_details`
--

CREATE TABLE `cart_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `produk_id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `qty` double(12,2) NOT NULL DEFAULT 0.00,
  `harga` double(12,2) NOT NULL DEFAULT 0.00,
  `diskon` double(12,2) NOT NULL DEFAULT 0.00,
  `subtotal` double(12,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cart_details`
--

INSERT INTO `cart_details` (`id`, `produk_id`, `cart_id`, `qty`, `harga`, `diskon`, `subtotal`, `created_at`, `updated_at`) VALUES
(2, 15, 2, 1.00, 22000.00, 4400.00, 17600.00, '2024-01-08 11:43:14', '2024-01-08 11:43:14'),
(3, 11, 3, 1.00, 15000.00, 1500.00, 13500.00, '2024-01-09 20:57:28', '2024-01-09 20:57:28'),
(4, 8, 4, 1.00, 20000.00, 2000.00, 18000.00, '2024-01-10 06:48:49', '2024-01-10 06:48:49'),
(5, 14, 5, 1.00, 26000.00, 2600.00, 23400.00, '2024-01-10 07:47:42', '2024-01-10 07:47:42'),
(6, 14, 6, 1.00, 26000.00, 2600.00, 23400.00, '2024-01-10 07:56:51', '2024-01-10 07:56:51'),
(7, 14, 7, 1.00, 26000.00, 2600.00, 23400.00, '2024-01-10 07:59:36', '2024-01-10 07:59:36'),
(9, 14, 8, 1.00, 26000.00, 2600.00, 23400.00, '2024-01-10 09:40:54', '2024-01-10 09:40:54'),
(10, 14, 9, 1.00, 26000.00, 2600.00, 23400.00, '2024-01-10 19:31:12', '2024-01-10 19:31:12'),
(11, 11, 10, 3.00, 15000.00, 1500.00, 40500.00, '2024-01-10 20:02:51', '2024-01-10 20:45:10'),
(12, 11, 11, 1.00, 15000.00, 1500.00, 13500.00, '2024-01-10 20:37:35', '2024-01-10 20:37:35');

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
-- Struktur dari tabel `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `images`
--

INSERT INTO `images` (`id`, `user_id`, `url`, `created_at`, `updated_at`) VALUES
(2, 1, 'public/files/n8R4tVbM0VoYuvNbRBiOAJ2MWlhq2ICsszE3jtpl.jpg', '2023-12-29 21:16:39', '2023-12-29 21:16:39'),
(4, 1, 'public/files/bJb3rZZ0H0DNfLkBRnAUP2guBWIc1G3Z8GtWpdjN.jpg', '2023-12-29 21:18:33', '2023-12-29 21:18:33'),
(5, 1, 'public/files/ZV9r8LjYbYCRix6hYyOvmmbqaJj6TP8AKv9vEoFj.jpg', '2023-12-30 06:15:12', '2023-12-30 06:15:12'),
(6, 1, 'public/files/CtzZUbMtMuSRinsSizHD1wN1yvvWzPBL36TcTnLv.jpg', '2023-12-30 06:15:30', '2023-12-30 06:15:30'),
(8, 1, 'public/files/g5geJWbrhyL7mP1h3RxGASnF7Mk2Ho3kZ4Xt6xII.jpg', '2023-12-30 07:48:08', '2023-12-30 07:48:08'),
(9, 1, 'public/files/SIFH5kzvT3j2uIWwayl4SYV9txxHIWyR8pvV8vWW.jpg', '2023-12-30 08:46:19', '2023-12-30 08:46:19'),
(10, 1, 'public/files/OHokgVj4MYhO6pJrLVSoxEuOH43AZTu5wyhmJJIk.jpg', '2023-12-30 08:48:28', '2023-12-30 08:48:28'),
(11, 1, 'public/files/q5DwN8dnwTRrtAG01tBNbAhfgbR7DC22vER4qRdw.jpg', '2023-12-30 08:49:22', '2023-12-30 08:49:22'),
(12, 1, 'public/files/u3N1OA2IbDH4EnqTOdKuzbM8KHjSXwJn9Nrr6GRd.jpg', '2023-12-30 08:50:27', '2023-12-30 08:50:27'),
(13, 1, 'public/files/DEi54klnxTnVEjmOLjA9WXnnYb6Nycto5MehsQvG.jpg', '2023-12-30 09:34:48', '2023-12-30 09:34:48'),
(14, 1, 'public/files/r8uJ7Nsrs576zpMHxFKDTlN9YWAqDtNgSoDqobBN.jpg', '2024-01-08 10:28:28', '2024-01-08 10:28:28'),
(15, 1, 'public/files/7AkrDEHVhVbuMJWyP1DJ8pdH3cc2Mt38zJkr78GS.jpg', '2024-01-08 10:29:20', '2024-01-08 10:29:20'),
(16, 1, 'public/files/DnZBs6FxpCCHhnZHEqbWToAYn9bvBbvnxMBIt0LQ.jpg', '2024-01-08 10:30:19', '2024-01-08 10:30:19'),
(17, 1, 'public/files/9rfmthjxbtbHWQ3MCpV5TmeKrVFiWC5vGZQcZgFN.jpg', '2024-01-08 10:31:10', '2024-01-08 10:31:10'),
(18, 1, 'public/files/gtDNQNcd8oX4eL6OGfdCZ0N2xhEZw4H3o9aCoSNd.jpg', '2024-01-08 10:31:55', '2024-01-08 10:31:55'),
(19, 1, 'public/files/l5AqP8YjXwTxDQBdIbbFIhycPVWZo1F1N56PxW1T.jpg', '2024-01-08 10:32:58', '2024-01-08 10:32:58'),
(20, 1, 'public/files/h54NZfDO2FvbdW0zHcb2TuDUUl6e2x8LHKN4xb0D.jpg', '2024-01-08 10:33:49', '2024-01-08 10:33:49'),
(21, 1, 'public/files/RDJQ4HhPZKhNz2e7ZLzdihd0tBhei2x1NPNnlsv8.jpg', '2024-01-08 10:34:32', '2024-01-08 10:34:32'),
(22, 1, 'public/files/QIbU940KpRF5QhKg8VFGi5cu6PmsEfV1pOD6NIfB.jpg', '2024-01-08 10:38:08', '2024-01-08 10:38:08'),
(23, 1, 'public/files/vjHdgIxr8vMNlHXo1bRGAVYooNZ7J6dX3B8VdvXb.jpg', '2024-01-08 10:38:52', '2024-01-08 10:38:52'),
(24, 1, 'public/files/X7yBwIu2eJu9zDnlmYdiMAi1nczsPeFN8TEzeGif.jpg', '2024-01-08 10:43:02', '2024-01-08 10:43:02'),
(25, 1, 'public/files/SZqsMcHOp7rWErbhoBuiGuUI94KhsfUMRuZFvS0N.jpg', '2024-01-08 10:43:12', '2024-01-08 10:43:12'),
(26, 1, 'public/files/GfN2skJBdlSWAb3wltlPMLJtEou1sMYo2tZRayVX.jpg', '2024-01-08 10:43:37', '2024-01-08 10:43:37'),
(27, 1, 'public/files/8HpfqA5owwondHTIgoYeRKw7DZgHAT22jk4sK6GM.jpg', '2024-01-08 10:45:47', '2024-01-08 10:45:47'),
(28, 1, 'public/files/ooJP0bZOvlYM0UBE01jkohfhhYpDqI0EAsl9ZxVg.jpg', '2024-01-10 20:21:49', '2024-01-10 20:21:49'),
(29, 1, 'public/files/0DAGDhBdY7rAeBmVUez9PK6xhKnEGIjJmvCqxOcB.jpg', '2024-01-10 20:30:04', '2024-01-10 20:30:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_kategori` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategoris`
--

INSERT INTO `kategoris` (`id`, `kode_kategori`, `nama_kategori`, `slug_kategori`, `deskripsi_kategori`, `status`, `foto`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '01', 'Sayur', 'sayur-segar', 'Sayur Hijau', 'publish', 'public/files/vjHdgIxr8vMNlHXo1bRGAVYooNZ7J6dX3B8VdvXb.jpg', 1, '2023-12-29 21:15:20', '2024-01-08 10:38:52'),
(2, '02', 'Buah', 'buah-sehat', 'segarrr', 'publish', 'public/files/QIbU940KpRF5QhKg8VFGi5cu6PmsEfV1pOD6NIfB.jpg', 1, '2023-12-30 07:46:39', '2024-01-08 10:38:08');

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
(1, '2009_10_23_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_21_143521_create_kategoris_table', 1),
(6, '2022_11_22_143334_create_produks_table', 1),
(7, '2022_11_29_140629_create_images_table', 1),
(8, '2022_12_14_025624_create_produk_images_table', 1),
(9, '2022_12_20_094207_create_slideshows_table', 1),
(10, '2022_12_20_142757_create_produk_promos_table', 1),
(11, '2022_12_27_124922_create_carts_table', 1),
(12, '2022_12_27_125507_create_cart_details_table', 1),
(13, '2022_12_27_133547_create_alamat_pengirimen_table', 1),
(14, '2022_12_27_134320_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `nama_penerima` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_tlp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelurahan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kodepos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `cart_id`, `nama_penerima`, `no_tlp`, `alamat`, `provinsi`, `kota`, `kecamatan`, `kelurahan`, `kodepos`, `created_at`, `updated_at`) VALUES
(1, 1, 'Habi Jiyan Mu', '0812345678', 'CondongCatur, Sleman, Yogyakarta', 'Yogyakarta', 'Sleman', 'Condong Catur', 'Congcat', '31313', '2024-01-05 22:45:07', '2024-01-05 22:45:07'),
(2, 2, 'Habi Jiyan Mu', '0812345678', 'CondongCatur, Sleman, Yogyakarta', 'Yogyakarta', 'Sleman', 'Condong Catur', 'Congcat', '31313', '2024-01-08 11:43:42', '2024-01-08 11:43:42'),
(3, 3, 'Habi Jiyan Mu', '0812345678', 'CondongCatur, Sleman, Yogyakarta', 'Yogyakarta', 'Sleman', 'Condong Catur', 'Congcat', '31313', '2024-01-09 20:57:36', '2024-01-09 20:57:36'),
(4, 4, 'Habi Jiyan M', '0812345678', 'CondongCatur, Sleman, Yogyakarta', 'Yogyakarta', 'Sleman', 'Condong Catur', 'Congcat', '31313', '2024-01-10 06:49:15', '2024-01-10 06:49:15'),
(5, 5, 'Habi Jiyan M', '0812345678', 'CondongCatur, Sleman, Yogyakarta', 'Yogyakarta', 'Sleman', 'Condong Catur', 'Congcat', '31313', '2024-01-10 07:52:49', '2024-01-10 07:52:49'),
(6, 6, 'Habi Jiyan M', '0812345678', 'CondongCatur, Sleman, Yogyakarta', 'Yogyakarta', 'Sleman', 'Condong Catur', 'Congcat', '31313', '2024-01-10 07:56:55', '2024-01-10 07:56:55'),
(7, 7, 'Habi Jiyan M', '0812345678', 'CondongCatur, Sleman, Yogyakarta', 'Yogyakarta', 'Sleman', 'Condong Catur', 'Congcat', '31313', '2024-01-10 07:59:38', '2024-01-10 07:59:38'),
(8, 8, 'Habi Jiyan M', '0812345678', 'CondongCatur, Sleman, Yogyakarta', 'Yogyakarta', 'Sleman', 'Condong Catur', 'Congcat', '31313', '2024-01-10 09:40:57', '2024-01-10 09:40:57'),
(9, 9, 'Budi', '0812345678', 'CondongCatur, Sleman, Yogyakarta', 'Yogyakarta', 'Sleman', 'Condong Catur', 'Congcat', '31313', '2024-01-10 19:31:56', '2024-01-10 19:31:56'),
(10, 10, 'Budi', '0812345678', 'CondongCatur, Sleman, Yogyakarta', 'Yogyakarta', 'Sleman', 'Condong Catur', 'Congcat', '31313', '2024-01-10 20:49:33', '2024-01-10 20:49:33');

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
-- Struktur dari tabel `produks`
--

CREATE TABLE `produks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `kode_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_produk` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double(12,2) NOT NULL DEFAULT 0.00,
  `satuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` double(12,2) NOT NULL DEFAULT 0.00,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produks`
--

INSERT INTO `produks` (`id`, `kategori_id`, `user_id`, `kode_produk`, `nama_produk`, `slug_produk`, `deskripsi_produk`, `foto`, `qty`, `satuan`, `harga`, `status`, `created_at`, `updated_at`) VALUES
(8, 2, 1, '001', 'Apel', 'apel-merah', 'Manis', 'public/files/r8uJ7Nsrs576zpMHxFKDTlN9YWAqDtNgSoDqobBN.jpg', 10.00, 'kg', 20000.00, 'publish', '2024-01-08 10:27:35', '2024-01-08 10:28:28'),
(9, 2, 1, '002', 'Mangga', 'mangga-manis', 'Enak', 'public/files/7AkrDEHVhVbuMJWyP1DJ8pdH3cc2Mt38zJkr78GS.jpg', 5.00, 'kg', 25000.00, 'publish', '2024-01-08 10:29:11', '2024-01-08 10:29:20'),
(10, 2, 1, '003', 'Buah Naga', 'buah-naga-merah', 'Enak', 'public/files/DnZBs6FxpCCHhnZHEqbWToAYn9bvBbvnxMBIt0LQ.jpg', 5.00, 'kg', 30000.00, 'publish', '2024-01-08 10:30:10', '2024-01-08 10:30:19'),
(11, 2, 1, '004', 'Semangka', 'buah-semangka-enak', 'Mantap', 'public/files/9rfmthjxbtbHWQ3MCpV5TmeKrVFiWC5vGZQcZgFN.jpg', 7.00, 'kg', 15000.00, 'publish', '2024-01-08 10:31:02', '2024-01-08 10:31:10'),
(12, 2, 1, '005', 'Jeruk', 'buah-jeruk', 'Manis', 'public/files/gtDNQNcd8oX4eL6OGfdCZ0N2xhEZw4H3o9aCoSNd.jpg', 11.00, 'kg', 14000.00, 'publish', '2024-01-08 10:31:47', '2024-01-08 10:31:55'),
(13, 2, 1, '006', 'Anggur', 'buah-anggur', 'Manis', 'public/files/l5AqP8YjXwTxDQBdIbbFIhycPVWZo1F1N56PxW1T.jpg', 14.00, 'kg', 40000.00, 'publish', '2024-01-08 10:32:48', '2024-01-08 10:32:58'),
(14, 2, 1, '007', 'Alpukat', 'buah-alpukat', 'Enak', 'public/files/h54NZfDO2FvbdW0zHcb2TuDUUl6e2x8LHKN4xb0D.jpg', 20.00, 'kg', 26000.00, 'publish', '2024-01-08 10:33:40', '2024-01-08 10:33:49'),
(15, 2, 1, '008', 'Pisang', 'buah-pisang', 'Enak', 'public/files/RDJQ4HhPZKhNz2e7ZLzdihd0tBhei2x1NPNnlsv8.jpg', 32.00, 'kg', 22000.00, 'publish', '2024-01-08 10:34:26', '2024-01-08 10:34:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_images`
--

CREATE TABLE `produk_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `produk_id` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produk_images`
--

INSERT INTO `produk_images` (`id`, `produk_id`, `foto`, `created_at`, `updated_at`) VALUES
(9, 8, 'public/files/r8uJ7Nsrs576zpMHxFKDTlN9YWAqDtNgSoDqobBN.jpg', '2024-01-08 10:28:28', '2024-01-08 10:28:28'),
(10, 9, 'public/files/7AkrDEHVhVbuMJWyP1DJ8pdH3cc2Mt38zJkr78GS.jpg', '2024-01-08 10:29:20', '2024-01-08 10:29:20'),
(11, 10, 'public/files/DnZBs6FxpCCHhnZHEqbWToAYn9bvBbvnxMBIt0LQ.jpg', '2024-01-08 10:30:19', '2024-01-08 10:30:19'),
(12, 11, 'public/files/9rfmthjxbtbHWQ3MCpV5TmeKrVFiWC5vGZQcZgFN.jpg', '2024-01-08 10:31:10', '2024-01-08 10:31:10'),
(13, 12, 'public/files/gtDNQNcd8oX4eL6OGfdCZ0N2xhEZw4H3o9aCoSNd.jpg', '2024-01-08 10:31:55', '2024-01-08 10:31:55'),
(14, 13, 'public/files/l5AqP8YjXwTxDQBdIbbFIhycPVWZo1F1N56PxW1T.jpg', '2024-01-08 10:32:58', '2024-01-08 10:32:58'),
(15, 14, 'public/files/h54NZfDO2FvbdW0zHcb2TuDUUl6e2x8LHKN4xb0D.jpg', '2024-01-08 10:33:49', '2024-01-08 10:33:49'),
(16, 15, 'public/files/RDJQ4HhPZKhNz2e7ZLzdihd0tBhei2x1NPNnlsv8.jpg', '2024-01-08 10:34:32', '2024-01-08 10:34:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_promos`
--

CREATE TABLE `produk_promos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `produk_id` bigint(20) UNSIGNED NOT NULL,
  `harga_awal` decimal(16,2) NOT NULL DEFAULT 0.00,
  `harga_akhir` decimal(16,2) NOT NULL DEFAULT 0.00,
  `diskon_persen` int(11) NOT NULL DEFAULT 0,
  `diskon_nominal` decimal(16,2) NOT NULL DEFAULT 0.00,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produk_promos`
--

INSERT INTO `produk_promos` (`id`, `produk_id`, `harga_awal`, `harga_akhir`, `diskon_persen`, `diskon_nominal`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 11, '15000.00', '13500.00', 10, '1500.00', 1, '2024-01-08 10:40:43', '2024-01-08 10:40:43'),
(7, 15, '22000.00', '17600.00', 20, '4400.00', 1, '2024-01-08 10:40:51', '2024-01-08 10:40:51'),
(8, 9, '25000.00', '22500.00', 10, '2500.00', 1, '2024-01-08 10:40:59', '2024-01-08 10:40:59'),
(9, 12, '14000.00', '12600.00', 10, '1400.00', 1, '2024-01-08 10:41:09', '2024-01-08 10:41:09'),
(10, 10, '30000.00', '27000.00', 10, '3000.00', 1, '2024-01-08 10:41:17', '2024-01-08 10:41:17'),
(11, 8, '20000.00', '18000.00', 10, '2000.00', 1, '2024-01-08 10:41:25', '2024-01-08 10:41:25'),
(12, 13, '40000.00', '34000.00', 15, '6000.00', 1, '2024-01-08 10:41:35', '2024-01-08 10:41:35'),
(13, 14, '26000.00', '23400.00', 10, '2600.00', 1, '2024-01-08 10:41:48', '2024-01-08 10:41:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slideshows`
--

CREATE TABLE `slideshows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `slideshows`
--

INSERT INTO `slideshows` (`id`, `foto`, `caption_title`, `caption_content`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 'public/files/X7yBwIu2eJu9zDnlmYdiMAi1nczsPeFN8TEzeGif.jpg', 'Buah', 'Enak', 1, '2024-01-08 10:43:02', '2024-01-08 10:43:02'),
(5, 'public/files/SZqsMcHOp7rWErbhoBuiGuUI94KhsfUMRuZFvS0N.jpg', 'Sayur', 'Sehat', 1, '2024-01-08 10:43:12', '2024-01-08 10:43:12'),
(6, 'public/files/GfN2skJBdlSWAb3wltlPMLJtEou1sMYo2tZRayVX.jpg', 'Buah', 'Sehat', 1, '2024-01-08 10:43:37', '2024-01-08 10:43:37'),
(7, 'public/files/8HpfqA5owwondHTIgoYeRKw7DZgHAT22jk4sK6GM.jpg', 'Cabe', 'Pedas', 1, '2024-01-08 10:45:47', '2024-01-08 10:45:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'member',
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `alamat`, `role`, `foto`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Habi Jiyan M', 'habijiyan111@gmail.com', NULL, '$2y$10$kEelUYs.4XFRg4tVP5wzA.qS5e51VF9JfApiQIBJlf5Uu6f0ZbLfG', '123456789', 'Yogyakarta', 'admin', NULL, 'aktif', NULL, '2023-12-29 21:14:28', '2023-12-29 21:14:28'),
(2, 'yono', 'yono@gmail.com', NULL, '$2y$10$nIZ42sxPRHW3g1yfxQZzC.iariqH9Cd3y8P149OpN/p3baIwxD.zm', '08123456789', NULL, 'member', NULL, 'aktif', NULL, '2023-12-30 21:30:59', '2023-12-30 21:30:59'),
(3, 'user', 'user@gmail.com', NULL, '$2y$10$Aq5xCN9rxsLA5Yzcp5iN8uT3nBvPsXTC0qs4Z9C9tyR6BXBtHud/.', '08123456789', NULL, 'member', NULL, 'aktif', NULL, '2024-01-05 08:23:09', '2024-01-05 08:23:09'),
(4, 'jaja', 'jaja@gmail.com', NULL, '$2y$10$rzAlbnHeI4iI49ZkySmeMOgAIcFQwhmHpiuzu6ME/sEN4x57LoqpS', '08123456789', NULL, 'member', NULL, 'aktif', NULL, '2024-01-09 22:29:45', '2024-01-09 22:29:45'),
(5, 'Budi', 'budi@gmail.com', NULL, '$2y$10$MwYOlVnXfmtUq0zUyB5/euOn49KMU1qdbfCLg2ulHItpDLIaBalDG', '08123456789', NULL, 'member', NULL, 'aktif', NULL, '2024-01-10 19:12:36', '2024-01-10 19:12:36');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alamat_pengiriman`
--
ALTER TABLE `alamat_pengiriman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alamat_pengiriman_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_details_cart_id_foreign` (`cart_id`),
  ADD KEY `cart_details_produk_id_foreign` (`produk_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategoris_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_cart_id_foreign` (`cart_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `produks`
--
ALTER TABLE `produks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produks_user_id_foreign` (`user_id`),
  ADD KEY `produks_kategori_id_foreign` (`kategori_id`);

--
-- Indeks untuk tabel `produk_images`
--
ALTER TABLE `produk_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produk_images_produk_id_foreign` (`produk_id`);

--
-- Indeks untuk tabel `produk_promos`
--
ALTER TABLE `produk_promos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produk_promos_user_id_foreign` (`user_id`),
  ADD KEY `produk_promos_produk_id_foreign` (`produk_id`);

--
-- Indeks untuk tabel `slideshows`
--
ALTER TABLE `slideshows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slideshows_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alamat_pengiriman`
--
ALTER TABLE `alamat_pengiriman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produks`
--
ALTER TABLE `produks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `produk_images`
--
ALTER TABLE `produk_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `produk_promos`
--
ALTER TABLE `produk_promos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `slideshows`
--
ALTER TABLE `slideshows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `alamat_pengiriman`
--
ALTER TABLE `alamat_pengiriman`
  ADD CONSTRAINT `alamat_pengiriman_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `cart_details`
--
ALTER TABLE `cart_details`
  ADD CONSTRAINT `cart_details_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_details_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  ADD CONSTRAINT `kategoris_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produks`
--
ALTER TABLE `produks`
  ADD CONSTRAINT `produks_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategoris` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `produks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produk_images`
--
ALTER TABLE `produk_images`
  ADD CONSTRAINT `produk_images_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produk_promos`
--
ALTER TABLE `produk_promos`
  ADD CONSTRAINT `produk_promos_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `produk_promos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `slideshows`
--
ALTER TABLE `slideshows`
  ADD CONSTRAINT `slideshows_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
