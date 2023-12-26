-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 25, 2023 at 02:49 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_uts`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_10_061426_create_tb_produk', 2),
(6, '2023_11_10_071616_create_tb_kategori', 3),
(7, '2023_11_20_073625_update_tb_produk', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('andika@gmail.com', '$2y$10$gn8zh/6LUwB2W4hP2E7EzOMv5BfeIGiHaRmSzU0st5usiTKxoY8ra', '2023-11-20 04:14:34');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 7, 'mobile', '8d306fcfaa5954cf9a74f384dabb34ca095349c77cf9569a0a8b405dcd51a809', '[\"*\"]', NULL, '2023-12-14 01:01:45', '2023-12-14 01:01:45'),
(2, 'App\\Models\\User', 8, 'mobile', '863ab2f272ef1715bdec6cfb721b4b5febe2d41742fb2664df816937dea221fe', '[\"*\"]', NULL, '2023-12-14 01:03:00', '2023-12-14 01:03:00'),
(3, 'App\\Models\\User', 7, 'mobile', '0b1d328b2a4b14103b52aef0e21ea96983b5203b95fb5665c2593c0b009eca91', '[\"*\"]', NULL, '2023-12-14 01:03:35', '2023-12-14 01:03:35'),
(4, 'App\\Models\\User', 8, 'desktop', 'f0dc1047e6236822dd2985251d056f50ba6ae986400f98663b6084067e8a0f52', '[\"*\"]', NULL, '2023-12-14 01:04:26', '2023-12-14 01:04:26'),
(5, 'App\\Models\\User', 9, 'mobile', 'b06095824035ca70d72e93f9853186ae1235268c2a02701defd26e70cfcb92f1', '[\"*\"]', NULL, '2023-12-14 01:45:15', '2023-12-14 01:45:15'),
(6, 'App\\Models\\User', 8, 'desktop', '8baeca1ed9fad2e42b4171a00417785d3382d3b2c10d88e227ad7a78c50ebe6a', '[\"*\"]', '2023-12-16 08:49:29', '2023-12-14 02:37:25', '2023-12-16 08:49:29'),
(7, 'App\\Models\\User', 12, 'mobile', '6027681ebefdae5237da5640dbd09df5f1843cdfa0ac584e2ba2e58f158c0dcf', '[\"*\"]', NULL, '2023-12-16 01:34:12', '2023-12-16 01:34:12'),
(8, 'App\\Models\\User', 7, 'mobile', '867f02c9f93ba8eefb774a8b1ba84e1e9b0957b5dfa115fd23dcb2e91e581638', '[\"*\"]', NULL, '2023-12-16 01:48:36', '2023-12-16 01:48:36'),
(9, 'App\\Models\\User', 13, 'mobile', '378abd15284e8a3dd76a1f1f7829398a6adb62d3f4491d5cae810f5ae39f12e1', '[\"*\"]', NULL, '2023-12-16 01:56:22', '2023-12-16 01:56:22'),
(10, 'App\\Models\\User', 7, 'api-token', 'e1d386a8eb8e912a839c30bf385092280212dfbd64c32d0c1ed1c1f2cb198443', '[\"*\"]', NULL, '2023-12-16 02:06:12', '2023-12-16 02:06:12'),
(11, 'App\\Models\\User', 21, 'api-token', '0e79774bef5d9adc1acf3b3bda71c208e98fc81ef939c5a22831d5ed5c10f7c1', '[\"*\"]', NULL, '2023-12-16 02:12:33', '2023-12-16 02:12:33');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_kategori` int NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`created_at`, `updated_at`, `id_kategori`, `nama_kategori`) VALUES
(NULL, NULL, 1, 'Makanan '),
(NULL, NULL, 2, 'Minuman');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_produk` int NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desk_produk` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_produk` int NOT NULL,
  `stok_produk` int NOT NULL,
  `id_kategori` int NOT NULL,
  `gambar_produk` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id`, `created_at`, `updated_at`, `id_produk`, `nama_produk`, `desk_produk`, `harga_produk`, `stok_produk`, `id_kategori`, `gambar_produk`) VALUES
(1, '2023-11-20 06:02:21', '2023-11-20 06:02:33', 1, 'Healty Meal', 'Sarapan Pagi yang sehat.', 10000, 3, 1, 'https://asset-2.tstatic.net/tribunnewswiki/foto/bank/images/sarapan-pagi.jpg'),
(2, '2023-12-12 08:26:57', '2023-12-12 08:26:57', 8, 'Sop Jagung', 'Sop Jagung dengan kuah yang menggiurkan.', 12000, 3, 1, 'gambarproduk/1702398416090233200_1625038470-shutterstock_1996774550.webp'),
(3, '2023-12-12 08:27:51', '2023-12-12 08:27:51', 9, 'Tumis Sawi', 'Tumis Sawi enak.', 10000, 2, 1, 'gambarproduk/1702398471Resep-Tumis-Sawi-Sendok.webp'),
(4, '2023-12-12 08:29:00', '2023-12-12 08:29:00', 10, 'Sereal', 'Sereal pagi.', 5000, 5, 1, 'gambarproduk/1702398540oatmealcoverdalam (1).jpg'),
(5, '2023-12-12 08:32:37', '2023-12-18 07:56:18', 11, 'susu sapi murni', 'susu sapi yang masih segar', 10000, 6, 2, 'gambarproduk/1702398757Blog_Kandungan-dan-Manfaat-Susu-Sapi-Murni-untuk-Kesehatan-Tubuh.jpeg'),
(6, '2023-12-12 08:35:40', '2023-12-12 08:35:40', 12, 'susu kambing murni', 'susu kambing yang masih segar', 10000, 6, 2, 'gambarproduk/170239894008885cdd2b62e4500230f001cd5069d4.jpeg'),
(7, '2023-12-12 08:39:37', '2023-12-12 08:39:37', 13, 'jamu', 'jamu wedang kunyit asam jawa', 5000, 5, 2, 'gambarproduk/1702399177603e41b8eaf6b.jpg'),
(8, '2023-12-12 08:41:51', '2023-12-12 08:41:51', 14, 'teh jahe', 'teh jahe panas', 5000, 3, 2, 'gambarproduk/17023993119.-Teh-Jahe.jpg'),
(9, '2023-12-17 00:42:47', '2023-12-17 00:43:29', 84, 'aaa', 'rian kuntulllllll', 1000, 2, 1, 'gambarproduk/1702802567logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'raka', 'raka@gmail.com', NULL, '$2y$10$hBNPGTYtYasQ.TPhaoyZy.XadpcYIGaxYK4nzzUPE8jGuVNu6M456', 'user', NULL, '2023-12-14 01:01:45', '2023-12-14 01:01:45'),
(8, 'Admin', 'admin@gmail.com', NULL, '$2y$10$ict8.q6x6IspFUAU0p2Gx.lR7tM7Rnd9SHXwyNVgm2Cx.JTZfaLdO', 'admin', NULL, '2023-12-14 01:02:59', '2023-12-14 01:02:59'),
(9, 'dika', 'dika@gmail.com', NULL, '$2y$10$9k32Di1wwWvGPQCOEqeYGuNMDlzlpaikCPIhMxGUvhiETpXnztCw2', 'user', NULL, '2023-12-14 01:45:15', '2023-12-14 01:45:15'),
(27, 'dd', 'dd@gmail.com', NULL, '$2y$10$oZhgpMrBFqeZ77v3jjbgVuHh2YakZcj3LMCIyKQ8fOaBDqgK/pTUK', 'user', NULL, '2023-12-16 08:39:11', '2023-12-16 08:39:11'),
(28, 'rr', 'rr@gmail.com', NULL, '$2y$10$YsHfztmLqsbe5A8bLcabueBIj7PHJ8o7Iq68fOzJu7Lq0V3ivAm5S', 'user', NULL, '2023-12-16 22:30:11', '2023-12-16 22:30:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id_produk` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD CONSTRAINT `tb_produk_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tb_kategori` (`id_kategori`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
