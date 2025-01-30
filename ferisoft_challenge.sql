-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 30 Oca 2025, 17:12:26
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `ferisoft_challenge`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Firstjkj', NULL, '2025-01-30 12:24:54'),
(2, 'hjkhkjhjk', '2025-01-30 12:25:01', '2025-01-30 12:25:01'),
(3, 'reiciendis', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(4, 'deleniti', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(5, 'necessitatibus', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(6, 'deleniti', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(7, 'adipisci', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(8, 'pariatur', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(9, 'aut', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(10, 'cum', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(11, 'qui', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(12, 'maiores', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(13, 'suscipit', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(14, 'exercitationem', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(15, 'eum', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(16, 'qui', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(17, 'est', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(18, 'voluptates', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(19, 'molestiae', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(20, 'et', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(21, 'nisi', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(22, 'atque', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(23, 'ut', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(24, 'repellat', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(25, 'officiis', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(26, 'natus', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(27, 'fugit', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(28, 'laborum', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(29, 'aut', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(30, 'quidem', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(31, 'eum', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(32, 'modi', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(33, 'dolores', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(34, 'et', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(35, 'qui', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(36, 'autem', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(37, 'sit', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(38, 'impedit', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(39, 'autem', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(40, 'minus', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(41, 'quam', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(42, 'et', '2025-01-30 12:41:27', '2025-01-30 12:41:27');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_30_132410_create_categories_table', 1),
(5, '2025_01_30_132419_create_posts_table', 1),
(6, '2025_01_30_134313_add_relations_to_post_table', 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `category_id`) VALUES
(4, 'Similique et labore', 'Aut laboriosam libe', '2025-01-30 11:54:18', '2025-01-30 12:50:29', 2, 18),
(5, 'Nihil est incididun', 'Architecto amet sed', '2025-01-30 11:54:22', '2025-01-30 11:54:22', 1, 1),
(6, 'Dolorem libero explicabo eaque sed enim qui inventore.', 'Nemo perferendis deleniti sed enim. Consectetur occaecati incidunt eligendi nihil sed incidunt iure ea. Aut et dolore maiores dolore ea at.', '2025-01-30 12:41:27', '2025-01-30 12:41:27', 3, 23),
(7, 'Voluptas distinctio delectus eos porro ut sunt velit.', 'Aut omnis nobis repudiandae necessitatibus natus voluptatem. Quasi velit ratione eaque et inventore repudiandae reprehenderit. Repellendus cum officia molestiae quibusdam. Aut maxime facere sunt porro.', '2025-01-30 12:41:27', '2025-01-30 12:41:27', 4, 24),
(8, 'Officia ut dolorum rerum aperiam.', 'Aliquid iure quis et odit nisi quis eveniet voluptatem. Vitae architecto non consequuntur quas. Eos dignissimos dolores velit rem perspiciatis consequatur. Velit maxime sed error error quae vel accusantium.', '2025-01-30 12:41:27', '2025-01-30 12:41:27', 5, 25),
(9, 'Deserunt debitis maxime molestiae et quasi.', 'Aut exercitationem totam inventore ut vero. Impedit atque totam esse cumque. Corporis doloremque ipsa eum et corporis.', '2025-01-30 12:41:27', '2025-01-30 12:41:27', 6, 26),
(10, 'Pariatur nihil cum sunt inventore in autem cum.', 'Excepturi et aliquam dolor inventore vel iusto tempore. Omnis qui voluptas perspiciatis est. Recusandae quis sed ratione dolorum natus rerum tempora qui. Alias et laudantium minima.', '2025-01-30 12:41:27', '2025-01-30 12:41:27', 7, 27),
(11, 'Et nulla atque culpa.', 'Asperiores omnis nostrum est vel. Praesentium vel ut qui voluptatem nesciunt molestiae. Aut architecto dolorum est dolor et architecto.', '2025-01-30 12:41:27', '2025-01-30 12:41:27', 8, 28),
(12, 'Quos officiis molestiae accusamus error quae et aliquid.', 'Dignissimos sunt sint maxime error omnis. Beatae et non consequatur delectus qui soluta. Praesentium error architecto optio libero et vel quos.', '2025-01-30 12:41:27', '2025-01-30 12:41:27', 9, 29),
(13, 'Perspiciatis ea voluptatem voluptatum est aliquid nemo autem iste.', 'Aut laborum est ut repellendus inventore qui cupiditate vitae. Quas asperiores occaecati illo sunt rerum et expedita quis. Ut natus explicabo quis cum minima dolores. Est quam sit sed. Velit voluptas qui eius repellat voluptatem harum.', '2025-01-30 12:41:27', '2025-01-30 12:41:27', 10, 30),
(14, 'Rerum nihil qui et dolorem aut quam.', 'Laborum accusamus libero quidem autem est deserunt est. Sit et magni et assumenda. Labore earum ut voluptate optio accusantium suscipit.', '2025-01-30 12:41:27', '2025-01-30 12:41:27', 11, 31),
(15, 'Sequi tenetur quidem quis et.', 'Officiis rerum doloribus omnis officiis soluta velit qui. Veritatis quasi et sed. Dolores quae sunt rerum eaque qui sed. Non non consequuntur temporibus officiis maxime libero.', '2025-01-30 12:41:27', '2025-01-30 12:41:27', 12, 32),
(16, 'Vitae possimus quidem amet officiis quos sit.', 'Animi architecto magnam ex et rerum qui officiis. Temporibus perspiciatis eum adipisci consequatur quis id. Voluptatibus reiciendis nostrum porro delectus quia enim.', '2025-01-30 12:41:27', '2025-01-30 12:41:27', 13, 33),
(17, 'Saepe repudiandae sed sapiente quam ad minus recusandae.', 'Et fugiat non voluptas est qui. Unde qui hic enim. Unde deleniti sint aliquam optio fugit voluptate adipisci. Quibusdam quia facilis dolorem sit sed.', '2025-01-30 12:41:27', '2025-01-30 12:41:27', 14, 34),
(18, 'Exercitationem rerum corrupti nemo vitae repellendus velit quisquam.', 'Vero sit saepe saepe a quia voluptatem. Quo quaerat consequatur est nihil quis ut. Velit molestias libero vel molestias amet.', '2025-01-30 12:41:27', '2025-01-30 12:41:27', 15, 35),
(19, 'Animi quasi dolores neque et amet.', 'Voluptatem dolor sit perferendis id vero. Suscipit nam ipsa suscipit dignissimos. Perspiciatis optio vitae voluptates fuga. Eum ducimus dolor ratione culpa similique vitae.', '2025-01-30 12:41:27', '2025-01-30 12:41:27', 16, 36),
(20, 'Totam placeat quasi sunt eos aut.', 'Et dolor necessitatibus in debitis voluptatem incidunt amet dolore. Tempora ut quia at esse ea voluptas ea. Et qui inventore itaque at quas qui.', '2025-01-30 12:41:27', '2025-01-30 12:41:27', 17, 37),
(21, 'Dolorum minus sit voluptatem autem odio asperiores.', 'Temporibus labore ut voluptatem quo. Quam asperiores architecto omnis eaque voluptas aut aliquam facilis. Natus laborum ut quia est et nam consectetur. Voluptatum sequi non aut veritatis qui provident tempore quis.', '2025-01-30 12:41:27', '2025-01-30 12:41:27', 18, 38),
(22, 'Dolores dicta cupiditate iusto.', 'Vitae voluptas non ea atque quae quia. Et non sit quidem qui porro earum qui temporibus. Odit rem neque id atque. Officiis soluta accusantium sint. Similique possimus quas voluptatem id nisi cum.', '2025-01-30 12:41:27', '2025-01-30 12:41:27', 19, 39),
(23, 'Soluta accusamus nam alias ut velit et est doloribus.', 'Suscipit enim laboriosam facere sunt corporis deleniti. Itaque qui provident quisquam corrupti reiciendis deleniti distinctio.', '2025-01-30 12:41:27', '2025-01-30 12:41:27', 20, 40),
(24, 'Ab distinctio qui eum.', 'Saepe dicta at nemo voluptas dolorem minus minima odio. Vitae culpa ea fuga laudantium dolores eum. Est sed nam quas architecto expedita necessitatibus. Nobis commodi ex quos temporibus et ut.', '2025-01-30 12:41:27', '2025-01-30 12:41:27', 21, 41),
(25, 'Ut quasi nostrum debitis.', 'Occaecati ut at esse illum sit. Id repellendus qui molestiae facilis quisquam est. Nihil repudiandae modi accusamus recusandae quo. Delectus exercitationem doloremque iure sunt.', '2025-01-30 12:41:27', '2025-01-30 12:41:27', 22, 42);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0bQMABEjCORJqZ1Xbh7uvs1gmUNwjVjxFtXBFOHQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMThKU1hFdzhOcjdCcGVMZXNPdkJnQTlJR212clZWZkk1d0JRbkVRdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1738253514);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Abod', 'test@test.com', NULL, '$2y$12$FVNThUeN0y9eODH2EufGeeZ8TAIBfBZAwCCSIGIhIyz//D.lwNkai', NULL, '2025-01-30 11:06:32', '2025-01-30 11:06:32'),
(2, 'Admin User', 'admin@example.com', '2025-01-30 12:41:27', '$2y$12$F5Jh0CEDXslpu.RIATWPSO6asQdq7I9EYBYVccn9sFJHyNbSCOPVi', '6DeRtxqCtQN4n0rfl0B64a6Ta40qqovwhhbQxoraYzo4n1QTKAzSO62vY6Qd', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(3, 'Adrienne Kunde I', 'amelie.torp@example.com', '2025-01-30 12:41:27', '$2y$12$5xIifmg7.qi4v6AMNfdSy.o60CSlzJh2MN3nD3iKNPXDBfhPB8M3i', 'kvRGvJ5ZXx', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(4, 'Mrs. Ima Donnelly', 'easton.bins@example.com', '2025-01-30 12:41:27', '$2y$12$5xIifmg7.qi4v6AMNfdSy.o60CSlzJh2MN3nD3iKNPXDBfhPB8M3i', 'O42JbrCkNX', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(5, 'Kameron Romaguera', 'ebert.forrest@example.net', '2025-01-30 12:41:27', '$2y$12$5xIifmg7.qi4v6AMNfdSy.o60CSlzJh2MN3nD3iKNPXDBfhPB8M3i', '0rRhE3o4Kk', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(6, 'Dr. Jamarcus Lakin V', 'gerardo.rempel@example.com', '2025-01-30 12:41:27', '$2y$12$5xIifmg7.qi4v6AMNfdSy.o60CSlzJh2MN3nD3iKNPXDBfhPB8M3i', '3V72OyDQVR', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(7, 'Zackery Huel', 'bahringer.sigrid@example.org', '2025-01-30 12:41:27', '$2y$12$5xIifmg7.qi4v6AMNfdSy.o60CSlzJh2MN3nD3iKNPXDBfhPB8M3i', 'u7VTcOi4f1', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(8, 'Mr. Brandon Schoen', 'chloe.gorczany@example.net', '2025-01-30 12:41:27', '$2y$12$5xIifmg7.qi4v6AMNfdSy.o60CSlzJh2MN3nD3iKNPXDBfhPB8M3i', '26TsitkmKA', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(9, 'Estrella Ebert', 'roderick.oberbrunner@example.org', '2025-01-30 12:41:27', '$2y$12$5xIifmg7.qi4v6AMNfdSy.o60CSlzJh2MN3nD3iKNPXDBfhPB8M3i', 'FcVvFbQ0VE', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(10, 'Mr. Donato Boyer', 'joanne.watsica@example.net', '2025-01-30 12:41:27', '$2y$12$5xIifmg7.qi4v6AMNfdSy.o60CSlzJh2MN3nD3iKNPXDBfhPB8M3i', 'oUQKhdjtSC', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(11, 'Hazle Nader', 'ngerhold@example.org', '2025-01-30 12:41:27', '$2y$12$5xIifmg7.qi4v6AMNfdSy.o60CSlzJh2MN3nD3iKNPXDBfhPB8M3i', 'BkI5d9sV4o', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(12, 'Mrs. Antonia Dicki IV', 'shills@example.net', '2025-01-30 12:41:27', '$2y$12$5xIifmg7.qi4v6AMNfdSy.o60CSlzJh2MN3nD3iKNPXDBfhPB8M3i', 'xfOGp8VArL', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(13, 'Cheyenne Fadel', 'qrodriguez@example.net', '2025-01-30 12:41:27', '$2y$12$5xIifmg7.qi4v6AMNfdSy.o60CSlzJh2MN3nD3iKNPXDBfhPB8M3i', 'p5jPxx3FnG', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(14, 'Ayden Torphy PhD', 'murazik.jedediah@example.org', '2025-01-30 12:41:27', '$2y$12$5xIifmg7.qi4v6AMNfdSy.o60CSlzJh2MN3nD3iKNPXDBfhPB8M3i', '4nsVZKWEWN', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(15, 'Yadira Kshlerin', 'iconn@example.com', '2025-01-30 12:41:27', '$2y$12$5xIifmg7.qi4v6AMNfdSy.o60CSlzJh2MN3nD3iKNPXDBfhPB8M3i', 'gqsGsD3BDj', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(16, 'Drake Stamm', 'sdooley@example.net', '2025-01-30 12:41:27', '$2y$12$5xIifmg7.qi4v6AMNfdSy.o60CSlzJh2MN3nD3iKNPXDBfhPB8M3i', '79hZ655yBi', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(17, 'Georgette Waters', 'eldora.rosenbaum@example.net', '2025-01-30 12:41:27', '$2y$12$5xIifmg7.qi4v6AMNfdSy.o60CSlzJh2MN3nD3iKNPXDBfhPB8M3i', 'NCWfSI3AzJ', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(18, 'Jeanette Rodriguez', 'jerde.ross@example.net', '2025-01-30 12:41:27', '$2y$12$5xIifmg7.qi4v6AMNfdSy.o60CSlzJh2MN3nD3iKNPXDBfhPB8M3i', 'r1lA1UhnB7', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(19, 'Ms. Santina O\'Connell', 'isporer@example.com', '2025-01-30 12:41:27', '$2y$12$5xIifmg7.qi4v6AMNfdSy.o60CSlzJh2MN3nD3iKNPXDBfhPB8M3i', 'XVq3nqCgSR', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(20, 'Madeline Gorczany', 'iokon@example.com', '2025-01-30 12:41:27', '$2y$12$5xIifmg7.qi4v6AMNfdSy.o60CSlzJh2MN3nD3iKNPXDBfhPB8M3i', 'OZo9DumUAq', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(21, 'Penelope Waters', 'allan.jacobi@example.net', '2025-01-30 12:41:27', '$2y$12$5xIifmg7.qi4v6AMNfdSy.o60CSlzJh2MN3nD3iKNPXDBfhPB8M3i', 'H50d9mJt5n', '2025-01-30 12:41:27', '2025-01-30 12:41:27'),
(22, 'Lucy Yundt III', 'rlemke@example.com', '2025-01-30 12:41:27', '$2y$12$5xIifmg7.qi4v6AMNfdSy.o60CSlzJh2MN3nD3iKNPXDBfhPB8M3i', 'LElLmg32iG', '2025-01-30 12:41:27', '2025-01-30 12:41:27');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Tablo için indeksler `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Tablo için indeksler `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Tablo için indeksler `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Tablo için indeksler `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
