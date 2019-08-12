-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2019 at 04:41 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommapi`
--
CREATE DATABASE IF NOT EXISTS `ecommapi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ecommapi`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(13, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(14, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(15, '2016_06_01_000004_create_oauth_clients_table', 1),
(16, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(17, '2019_08_11_020029_create_products_table', 1),
(18, '2019_08_11_020134_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0f257bf599ff44eaf4183fb2707a94b5eec7e3534d5d1440db7a19db6545e736012e2ac6e5fdc4cf', 5, 2, NULL, '[]', 0, '2019-08-11 06:28:39', '2019-08-11 06:28:39', '2020-08-11 14:28:39'),
('64b453d0a6e3232f4effc56b2d2daa901def907946d33bd1955598b92e20d725642b3827fcc4c974', 5, 2, NULL, '[]', 0, '2019-08-11 06:13:54', '2019-08-11 06:13:54', '2020-08-11 14:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '5ECQKIlOP82MPbf6DhHNMr51ae8IWvzaG2XiivMR', 'http://localhost', 1, 0, 0, '2019-08-11 06:07:21', '2019-08-11 06:07:21'),
(2, NULL, 'Laravel Password Grant Client', 'IwnTORIWayIGeklYrFYMTuKTXfXW9TxgR8X5aOP1', 'http://localhost', 0, 1, 0, '2019-08-11 06:07:22', '2019-08-11 06:07:22');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-08-11 06:07:22', '2019-08-11 06:07:22');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('94251f44b89a61a9dd2ad5c227f85e6848cb2a6301e022701dc35e40503827970d45f7f2d6192d23', '64b453d0a6e3232f4effc56b2d2daa901def907946d33bd1955598b92e20d725642b3827fcc4c974', 0, '2020-08-11 14:13:55'),
('a76f960f7b6b119b55b75d076c86927876439c86d5a2ad0a687c17f0482692405f91a6a1376b3018', '0f257bf599ff44eaf4183fb2707a94b5eec7e3534d5d1440db7a19db6545e736012e2ac6e5fdc4cf', 0, '2020-08-11 14:28:39');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `price`, `stock`, `discount`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'sunt', 'Distinctio minus non ipsam voluptates ut. Id voluptate corporis molestiae expedita nobis ad aut non.', 192, 4, 20, 1, '2019-08-11 05:56:24', '2019-08-11 05:56:24'),
(2, 'dicta', 'Dolorum vel molestias earum. Qui impedit dolorum quis in velit.', 697, 6, 19, 4, '2019-08-11 05:56:24', '2019-08-11 05:56:24'),
(3, 'iure', 'Modi voluptas sint aspernatur et ullam. Qui ipsa dolores voluptatem mollitia eum. Perferendis illum recusandae libero et explicabo nulla. Qui sapiente autem ullam nulla sit adipisci dolore.', 237, 9, 9, 3, '2019-08-11 05:56:25', '2019-08-11 05:56:25'),
(4, 'fuga', 'Dignissimos dolore voluptatem modi ut. Error rerum voluptatum voluptas. Vel quidem enim veniam eligendi reiciendis.', 826, 9, 18, 1, '2019-08-11 05:56:25', '2019-08-11 05:56:25'),
(5, 'ad', 'Provident et nulla excepturi aut. Ut ipsa ut tenetur voluptatem quae. Minus perferendis nobis ut ea impedit. Alias dolores non assumenda impedit voluptatibus reiciendis.', 391, 3, 16, 4, '2019-08-11 05:56:25', '2019-08-11 05:56:25'),
(6, 'voluptas', 'Perferendis quia et ut aperiam delectus aut facere. Neque doloribus odio perferendis exercitationem vel.', 312, 8, 18, 3, '2019-08-11 05:56:25', '2019-08-11 05:56:25'),
(7, 'accusantium', 'Officiis voluptas molestias eaque sed qui minus eligendi vel. Ex voluptatem et hic excepturi ratione repellat dolorem. Qui aut quas aut in et dicta quo tempora.', 236, 7, 13, 1, '2019-08-11 05:56:25', '2019-08-11 05:56:25'),
(8, 'hic', 'Perspiciatis reiciendis maxime minima est. Omnis aut voluptate distinctio similique reprehenderit. Voluptatem porro nam quia expedita reiciendis quos.', 494, 8, 5, 1, '2019-08-11 05:56:26', '2019-08-11 05:56:26'),
(9, 'eaque', 'Consequatur aut ea sequi nihil iusto deserunt. Rerum qui iure libero vitae. Rerum ut odio quia est quis sit. Consequatur aliquam delectus maiores dolorem unde id consequuntur est.', 230, 9, 5, 1, '2019-08-11 05:56:26', '2019-08-11 05:56:26'),
(10, 'temporibus', 'Suscipit necessitatibus modi ipsa facere. Consequatur et rerum quibusdam sed tenetur aperiam.', 791, 5, 16, 3, '2019-08-11 05:56:26', '2019-08-11 05:56:26'),
(11, 'Iphone 8 Updated Again', 'The best ever phone in the planet Ever', 800, 10, 60, 5, '2019-08-11 05:56:27', '2019-08-11 06:29:55'),
(12, 'est', 'Occaecati illo qui ad adipisci omnis rerum id. Voluptas ipsam eum voluptas molestiae et voluptatem. Ea tempore ratione dolores pariatur exercitationem laborum cum.', 133, 9, 10, 2, '2019-08-11 05:56:27', '2019-08-11 05:56:27'),
(13, 'molestiae', 'Commodi quod quis possimus non. Tempore dolor dolorem a dolores quia earum. Voluptatem officiis qui suscipit ullam eligendi rerum beatae.', 686, 6, 11, 1, '2019-08-11 05:56:27', '2019-08-11 05:56:27'),
(14, 'perferendis', 'Iusto odio animi modi veniam vel. Eius nobis quaerat amet voluptatibus. Ea est quae facere soluta corrupti est doloribus.', 168, 0, 14, 3, '2019-08-11 05:56:27', '2019-08-11 05:56:27'),
(15, 'non', 'Aut quis sint quia. Et autem ut suscipit nobis possimus. Voluptatem illo quam impedit. Reiciendis et cum sed quod explicabo sint.', 327, 4, 20, 2, '2019-08-11 05:56:27', '2019-08-11 05:56:27'),
(16, 'cupiditate', 'Et exercitationem eveniet dolor debitis est consectetur. Occaecati perspiciatis quae in id vero dolores et. Consequatur repellendus et eius delectus dolorum dolorem iure. Nihil iusto fuga molestiae vel.', 534, 1, 17, 1, '2019-08-11 05:56:28', '2019-08-11 05:56:28'),
(17, 'et', 'Tenetur qui fuga aut at et optio. Blanditiis vel eos labore magni. A est quia quia blanditiis aut qui molestias.', 689, 5, 4, 3, '2019-08-11 05:56:28', '2019-08-11 05:56:28'),
(18, 'sunt', 'Et molestiae adipisci aliquid qui enim. Voluptatem expedita sed sit ut quasi repellat illo dolore. Aut dicta quam recusandae quis ad harum delectus voluptas.', 244, 9, 2, 5, '2019-08-11 05:56:28', '2019-08-11 05:56:28'),
(19, 'accusantium', 'Sed sapiente numquam pariatur praesentium sed consequatur omnis at. Vero et doloribus enim est impedit quia. Enim est provident iure doloribus. Aliquid eaque sed explicabo tenetur qui itaque a.', 354, 8, 12, 1, '2019-08-11 05:56:28', '2019-08-11 05:56:28'),
(20, 'aspernatur', 'Vel ex et sapiente sapiente doloremque voluptates optio voluptates. Eligendi ipsum officiis vel ut. Veniam ad suscipit temporibus labore harum asperiores aut. Reiciendis laborum repellat tempore.', 759, 7, 16, 2, '2019-08-11 05:56:28', '2019-08-11 05:56:28'),
(21, 'est', 'Maiores ducimus sunt laborum sint. Vel perferendis blanditiis et. Numquam sed saepe qui tenetur velit.', 871, 5, 18, 3, '2019-08-11 05:56:29', '2019-08-11 05:56:29'),
(22, 'consequatur', 'Nobis ut fuga eum inventore et magni atque ipsum. Explicabo similique expedita sapiente sed aut corporis voluptas dolore. Eaque similique sit dolorum enim.', 421, 5, 18, 4, '2019-08-11 05:56:29', '2019-08-11 05:56:29'),
(23, 'pariatur', 'Qui debitis harum ipsum quis. Sed aut exercitationem consectetur pariatur dolores similique. Est tempore pariatur autem ut fugiat id ut.', 629, 7, 4, 3, '2019-08-11 05:56:29', '2019-08-11 05:56:29'),
(24, 'nihil', 'Qui illum est numquam fugit. Fugit vel velit qui nulla sunt perspiciatis sed. Et reiciendis quaerat illum quae consequatur. Fugiat voluptas voluptatibus aut similique in dicta voluptas.', 399, 3, 5, 3, '2019-08-11 05:56:30', '2019-08-11 05:56:30'),
(25, 'aut', 'Quis quibusdam ipsum beatae. Asperiores et voluptas nostrum optio eligendi aliquid. Et magni ex laborum accusamus facilis dolor. Est voluptatem maxime in consectetur id.', 785, 7, 16, 5, '2019-08-11 05:56:30', '2019-08-11 05:56:30'),
(26, 'sunt', 'Natus nostrum consequatur sit voluptate ipsum omnis earum soluta. Qui vitae adipisci quidem ut. Non ea quo eius. Magni officiis aut tempora qui et.', 288, 3, 17, 2, '2019-08-11 05:56:30', '2019-08-11 05:56:30'),
(27, 'quod', 'Necessitatibus dolores facilis id voluptatem. Vel facilis eos ut tenetur. Laborum nesciunt molestiae libero enim quia minus omnis. Assumenda sed omnis rerum aperiam possimus eveniet. Non odit reiciendis sed quia.', 514, 4, 13, 2, '2019-08-11 05:56:30', '2019-08-11 05:56:30'),
(28, 'doloribus', 'Aliquam voluptatum hic voluptatem est eaque id consequatur. Enim consequatur est laborum tempora quia. Recusandae quas velit adipisci aliquam.', 956, 5, 19, 3, '2019-08-11 05:56:30', '2019-08-11 05:56:30'),
(29, 'omnis', 'Nisi est commodi perspiciatis deleniti nihil commodi. Aut eius molestiae iste ullam qui illo. Qui expedita officiis rerum doloremque hic. Sit reiciendis natus quasi enim.', 1000, 2, 8, 4, '2019-08-11 05:56:31', '2019-08-11 05:56:31'),
(30, 'rerum', 'Quis quo aut sed quas. Dolorem qui voluptas ea est veniam molestiae. Natus maiores reiciendis velit et dolor. Voluptatibus qui impedit eum dolorem ex ut.', 939, 2, 14, 5, '2019-08-11 05:56:31', '2019-08-11 05:56:31'),
(31, 'eum', 'Et placeat est odio provident sunt earum. Cum ducimus recusandae omnis sequi sed libero. Et veritatis animi et eum nihil.', 763, 1, 20, 5, '2019-08-11 05:56:31', '2019-08-11 05:56:31'),
(32, 'necessitatibus', 'Repellendus ut dolores accusamus rerum ut eveniet impedit et. Eos sit modi iste. Natus et sed porro dolores aut dolores.', 518, 1, 17, 4, '2019-08-11 05:56:31', '2019-08-11 05:56:31'),
(33, 'aut', 'Sunt illum adipisci incidunt. Tempora asperiores ad labore et laboriosam. Qui rerum sint quia eos. Odio aut dicta dolorum perspiciatis.', 273, 9, 14, 2, '2019-08-11 05:56:31', '2019-08-11 05:56:31'),
(34, 'soluta', 'Ut incidunt nobis sunt voluptatibus ad sunt. Dolor inventore non ut quidem iusto culpa. Reiciendis eum dolor quo nesciunt dolorum. Nesciunt quas qui vero quia est incidunt non.', 606, 0, 16, 1, '2019-08-11 05:56:31', '2019-08-11 05:56:31'),
(35, 'expedita', 'Ea consequuntur nesciunt totam quaerat modi non nulla. Ea deserunt ut odio itaque qui hic. Fugiat esse consequatur nulla est. Omnis distinctio a ipsam esse nihil numquam. Aut deserunt dolorem perspiciatis quis natus laboriosam repudiandae.', 533, 9, 19, 1, '2019-08-11 05:56:32', '2019-08-11 05:56:32'),
(36, 'vel', 'Sequi doloremque corrupti earum expedita. Nemo quo quisquam tempora assumenda ut consequuntur consequatur amet. Dolor corporis quasi voluptas architecto aliquid repudiandae ut.', 749, 9, 13, 3, '2019-08-11 05:56:32', '2019-08-11 05:56:32'),
(37, 'praesentium', 'Recusandae a magni enim laboriosam veritatis error cum. Quasi adipisci molestias eius et. Veritatis qui reiciendis esse ea unde reiciendis sunt. Reprehenderit corrupti eaque tempora et libero ut consequatur.', 688, 5, 11, 1, '2019-08-11 05:56:32', '2019-08-11 05:56:32'),
(38, 'aut', 'Debitis maiores cupiditate voluptatem omnis. Praesentium sunt sunt pariatur error. Eos odit in quod numquam quia non nemo. Quasi blanditiis officia dolores.', 382, 2, 17, 5, '2019-08-11 05:56:33', '2019-08-11 05:56:33'),
(39, 'qui', 'Dolorem delectus id earum officia sed nesciunt. Iure corporis vel voluptatum laboriosam velit. Beatae consequatur mollitia quo sed voluptatem nobis. Quidem sunt sequi iste reprehenderit voluptate nemo.', 419, 3, 20, 2, '2019-08-11 05:56:33', '2019-08-11 05:56:33'),
(40, 'in', 'Ea quo qui aut sit voluptas. A qui voluptatem nihil autem autem. Voluptatem nam tempora molestiae temporibus tempore.', 732, 8, 16, 5, '2019-08-11 05:56:33', '2019-08-11 05:56:33'),
(41, 'dolores', 'Temporibus ullam sunt numquam. Pariatur et tempore rerum repudiandae. Fugit iure et laudantium velit quia. Quis reprehenderit a repudiandae.', 581, 5, 19, 1, '2019-08-11 05:56:33', '2019-08-11 05:56:33'),
(42, 'quis', 'Eveniet minima beatae minima. Ipsum sed necessitatibus aperiam aliquid. Voluptas incidunt tempora voluptatum quia possimus dolorem sunt.', 698, 6, 9, 4, '2019-08-11 05:56:34', '2019-08-11 05:56:34'),
(43, 'facere', 'Porro vel accusantium dolor. Officiis nostrum occaecati expedita ducimus aut voluptas. Ratione sed omnis nisi impedit quo.', 973, 2, 10, 5, '2019-08-11 05:56:34', '2019-08-11 05:56:34'),
(44, 'nihil', 'Consectetur voluptatem nobis excepturi animi ipsam tenetur ut. Itaque quam quidem impedit delectus aut dolore sunt. Omnis ea ut voluptas. Rerum est itaque commodi et consequatur et error illum.', 361, 5, 16, 4, '2019-08-11 05:56:34', '2019-08-11 05:56:34'),
(45, 'praesentium', 'Earum et sit aliquam doloribus aut atque recusandae. Est ea quod modi. Velit quisquam itaque sunt eum ut.', 210, 9, 8, 4, '2019-08-11 05:56:34', '2019-08-11 05:56:34'),
(46, 'rerum', 'Praesentium est voluptatem fuga non nulla minus cumque. Laudantium enim eum sint omnis eaque tempore.', 721, 4, 12, 2, '2019-08-11 05:56:34', '2019-08-11 05:56:34'),
(47, 'consequatur', 'Qui ut temporibus rem qui mollitia vitae. Sequi doloremque et et neque maxime officia dolores. Accusantium voluptatem voluptates est sed labore mollitia velit. Nobis aut qui placeat laborum.', 382, 6, 11, 5, '2019-08-11 05:56:34', '2019-08-11 05:56:34'),
(48, 'ex', 'Blanditiis rerum voluptatum temporibus aliquam quos adipisci. Praesentium voluptas suscipit impedit totam. Omnis recusandae sint eveniet rerum dolorem sint illum. Tempore doloribus aperiam facilis rerum.', 426, 8, 6, 5, '2019-08-11 05:56:34', '2019-08-11 05:56:34'),
(49, 'vel', 'Vel distinctio esse necessitatibus nisi ad quisquam itaque possimus. Laudantium libero blanditiis dolores similique id est temporibus totam. Aut aliquam ut quod enim facilis assumenda a magnam. Et sequi quidem ea omnis autem.', 759, 8, 16, 1, '2019-08-11 05:56:36', '2019-08-11 05:56:36'),
(50, 'accusantium', 'Impedit consequatur et porro natus magni. Iste et minus cupiditate ipsa. Vel at repellat laboriosam qui quae maxime et. Quaerat eos explicabo unde sint.', 144, 3, 18, 3, '2019-08-11 05:56:36', '2019-08-11 05:56:36');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(1, 17, 'Ms. Fae Zieme', 'Est eum quidem repellendus ut magni et magnam. Error deleniti aspernatur accusamus aut amet error ipsa eveniet. Alias dolor praesentium repudiandae voluptate quos. Et ipsa cum autem omnis id quia dolores deserunt.', 5, '2019-08-11 05:56:37', '2019-08-11 05:56:37'),
(2, 47, 'Gillian Treutel', 'Incidunt maxime odio temporibus temporibus rerum facere. Occaecati modi nesciunt facere fugit quia rem. Autem occaecati corporis ut minus. Est accusamus officiis architecto expedita non laudantium eaque.', 1, '2019-08-11 05:56:38', '2019-08-11 05:56:38'),
(3, 4, 'Lucio O\'Kon', 'Et atque corrupti qui aut. Voluptatem occaecati tempora fuga natus molestiae tempore hic. Adipisci et commodi voluptas architecto a quam. Maiores exercitationem explicabo vero.', 3, '2019-08-11 05:56:39', '2019-08-11 05:56:39'),
(4, 21, 'Katheryn Heaney', 'Dolore corporis ipsa delectus esse repellendus. Blanditiis iste soluta quisquam laudantium excepturi consequatur nisi. Odio voluptatum voluptas id aut dolorem at et. Et aspernatur quaerat cupiditate eaque quis dicta.', 1, '2019-08-11 05:56:40', '2019-08-11 05:56:40'),
(5, 12, 'Carlo Rosenbaum', 'Suscipit atque velit assumenda aut asperiores et eaque. Eum et tempora sit reiciendis et maiores nesciunt omnis. Voluptatem qui quae quo quia. Eos ea aut nobis et.', 4, '2019-08-11 05:56:40', '2019-08-11 05:56:40'),
(6, 21, 'Prof. Deron Sawayn', 'Aut dolorem pariatur a vel omnis et et. Et quo nobis cumque pariatur minus magni ratione. Vel est expedita est. Consequuntur omnis amet ut ipsum.', 2, '2019-08-11 05:56:40', '2019-08-11 05:56:40'),
(7, 35, 'Bobby Boyle', 'Consequatur labore aperiam delectus voluptas. Qui accusamus perspiciatis numquam at et magnam quis. Quo qui fugit vitae aut et sit illo. Numquam magni et et eligendi et impedit perferendis.', 4, '2019-08-11 05:56:40', '2019-08-11 05:56:40'),
(8, 29, 'Vallie Lueilwitz', 'Optio et quidem esse incidunt delectus quas. Quo saepe quia consequatur sint deleniti. Suscipit quasi ea expedita vero. Quos et quia consequatur nobis.', 4, '2019-08-11 05:56:40', '2019-08-11 05:56:40'),
(9, 8, 'Tabitha Schowalter', 'Deleniti autem excepturi in voluptates iste. Maxime molestiae eaque voluptatem aliquam. Quibusdam illo nulla velit optio quos. Soluta aut nobis in non reiciendis. Ut illo id et quia cupiditate.', 0, '2019-08-11 05:56:40', '2019-08-11 05:56:40'),
(10, 26, 'Prof. Hattie Jerde DDS', 'Dolorem pariatur ut officiis ipsam qui mollitia. Ut illum eum aut. Magnam velit quis veritatis ipsum iste atque recusandae eligendi.', 1, '2019-08-11 05:56:40', '2019-08-11 05:56:40'),
(11, 20, 'Aleen Kulas', 'Commodi tempore vitae expedita voluptas voluptatem beatae ea vel. Beatae eos non et eius. Similique aliquam voluptas voluptatem.', 5, '2019-08-11 05:56:41', '2019-08-11 05:56:41'),
(12, 14, 'Joshuah Feeney III', 'Consequuntur veniam rem cum id rerum alias sed. Est doloribus et in fuga. Nihil aut ducimus totam corrupti. Dolore sit nobis omnis nisi provident libero at.', 2, '2019-08-11 05:56:41', '2019-08-11 05:56:41'),
(13, 9, 'Cecelia Shields', 'Qui deleniti dolorem tenetur autem est. Placeat quis voluptas veritatis beatae quasi fugiat. Sequi id et provident dolor voluptate numquam.', 4, '2019-08-11 05:56:41', '2019-08-11 05:56:41'),
(14, 21, 'Megane Konopelski', 'Similique autem sint dolorem doloribus excepturi. Nihil non atque aut animi doloremque. A odit et beatae deleniti non minus culpa. Aut praesentium aliquid totam iste fugit. Corporis optio aliquid quam quia et quo debitis.', 0, '2019-08-11 05:56:41', '2019-08-11 05:56:41'),
(15, 27, 'Jimmie McClure II', 'Voluptatem aut occaecati dolorem quo ratione. Necessitatibus aliquid et sint. Magnam et ea repellat repudiandae dolores doloribus. Quam earum veritatis laboriosam saepe error eius et et.', 2, '2019-08-11 05:56:41', '2019-08-11 05:56:41'),
(16, 30, 'Prof. Demetrius Howe', 'Laudantium quidem maxime sunt adipisci unde voluptate. Dolores quia quia et ut cupiditate maxime unde. Ab tempore ab fuga non perspiciatis error ad.', 2, '2019-08-11 05:56:42', '2019-08-11 05:56:42'),
(17, 25, 'Kip Morissette', 'Harum praesentium placeat aut libero sed quaerat. Laborum dolor id officiis laboriosam id qui aut qui. Vel rem dignissimos et.', 2, '2019-08-11 05:56:42', '2019-08-11 05:56:42'),
(18, 24, 'Avis Wilderman', 'Aut eius nostrum vero sed sint quaerat. Sequi asperiores laboriosam totam harum earum mollitia id. Modi molestias maxime mollitia ipsam qui modi vel. Necessitatibus neque sed officia rem aut soluta in.', 5, '2019-08-11 05:56:42', '2019-08-11 05:56:42'),
(19, 21, 'Trenton Rogahn', 'Laudantium accusantium vitae vero possimus. Sed saepe autem iure laboriosam enim repellendus omnis. In ut id reiciendis distinctio eaque quam recusandae. Est iusto tempore asperiores qui dolorum.', 0, '2019-08-11 05:56:42', '2019-08-11 05:56:42'),
(20, 23, 'Diego Sanford', 'Ducimus reprehenderit nam illo dolorem sint et. Quam similique nihil ea voluptas adipisci velit distinctio molestiae. Rerum totam est facilis soluta ea molestiae.', 0, '2019-08-11 05:56:42', '2019-08-11 05:56:42'),
(21, 36, 'Jerome Koepp', 'Quod voluptatem voluptatibus officiis asperiores impedit. Officiis quo qui eveniet laboriosam. Sed esse ad doloribus est. Officia est magnam accusamus nihil ut.', 0, '2019-08-11 05:56:42', '2019-08-11 05:56:42'),
(22, 7, 'Lauretta Sawayn', 'Voluptates eveniet sunt est quis doloribus suscipit quibusdam. Nihil quis velit est. Consequuntur ut magnam velit omnis id.', 5, '2019-08-11 05:56:42', '2019-08-11 05:56:42'),
(23, 41, 'Dorian Wintheiser', 'Nisi officiis voluptas dignissimos totam odit autem. Ipsa dolor quos dicta delectus hic dolore. In illo odit quia. Sint sapiente quisquam nihil autem necessitatibus porro autem.', 4, '2019-08-11 05:56:42', '2019-08-11 05:56:42'),
(24, 20, 'Lukas Kuhlman', 'Autem a cum corrupti dolor laboriosam. Nihil pariatur totam ducimus at consequatur saepe sint. Sit vel et amet ad maxime nam totam. Eum nam quibusdam quaerat. Ut explicabo dolor sequi aspernatur.', 1, '2019-08-11 05:56:42', '2019-08-11 05:56:42'),
(25, 21, 'Lexus Jacobi Jr.', 'Nemo corporis et laborum molestiae nihil dignissimos. Iusto labore vero quisquam maiores. Consequatur tempora excepturi suscipit dolorem repellat corrupti. Aperiam eius voluptates fugit facilis animi iusto.', 5, '2019-08-11 05:56:43', '2019-08-11 05:56:43'),
(26, 4, 'Georgianna Ondricka', 'Est quae vel eligendi placeat. Quis explicabo temporibus sint consequatur nesciunt dolorem nemo. Sed accusamus consequuntur ducimus earum accusantium mollitia. Sit eius atque blanditiis enim officia deleniti illo.', 3, '2019-08-11 05:56:43', '2019-08-11 05:56:43'),
(27, 4, 'Cecilia Reinger', 'Voluptatibus deleniti iusto et. Amet odit natus perferendis autem accusamus dolores. Nesciunt optio culpa quia blanditiis dignissimos.', 0, '2019-08-11 05:56:43', '2019-08-11 05:56:43'),
(28, 37, 'Geo Hamill DVM', 'Reiciendis suscipit consequatur repellat non. Earum cupiditate pariatur et ad in. Temporibus eum ut nobis sed harum. Ab non ut repellendus velit quis nemo quia debitis.', 5, '2019-08-11 05:56:43', '2019-08-11 05:56:43'),
(29, 13, 'Kelsi Waters', 'Soluta perferendis qui reprehenderit et aut consequatur a. Quam est in magnam cupiditate eaque itaque placeat. Harum quos non cum rerum debitis tenetur ut.', 2, '2019-08-11 05:56:43', '2019-08-11 05:56:43'),
(30, 4, 'Jennings Treutel', 'Voluptas vitae doloribus sit expedita consequatur dolore sed. Sunt ea quaerat vel. Corporis similique cupiditate molestiae omnis. Animi atque et reiciendis quia. Numquam maiores cupiditate suscipit aut doloribus itaque omnis enim.', 1, '2019-08-11 05:56:43', '2019-08-11 05:56:43'),
(31, 31, 'Dillan Marvin', 'Velit aut id nisi eum quo vero laudantium. Veniam officiis tempore est. Rerum ea earum expedita ut. Sed sit architecto qui vero necessitatibus iste.', 3, '2019-08-11 05:56:44', '2019-08-11 05:56:44'),
(32, 31, 'Don Koelpin', 'Dolorem mollitia minima mollitia. Sint qui reprehenderit qui. Quisquam enim sit qui.', 5, '2019-08-11 05:56:44', '2019-08-11 05:56:44'),
(33, 18, 'Mrs. Beryl Mitchell', 'Quod enim doloribus numquam sed. Autem et in impedit culpa voluptate voluptas autem commodi. Eos repellendus dolor et maxime.', 4, '2019-08-11 05:56:44', '2019-08-11 05:56:44'),
(34, 45, 'Clarabelle Wilkinson', 'Esse ducimus consequatur et aliquam nisi. Atque est omnis ut voluptas. Quaerat eum explicabo ratione alias. Iusto quis rem ea officia sed laborum et.', 1, '2019-08-11 05:56:44', '2019-08-11 05:56:44'),
(35, 23, 'Joyce Flatley', 'Aspernatur quis inventore quo labore laboriosam atque officiis. Est sapiente ut et nesciunt maxime eaque magni. Qui sed molestiae qui temporibus aliquid quia soluta modi.', 3, '2019-08-11 05:56:44', '2019-08-11 05:56:44'),
(36, 34, 'Isidro Roberts', 'Eius magnam eum quia minus quam non quae consequatur. Vel dolore nisi accusamus amet distinctio rerum assumenda accusamus. Et quod sequi soluta et velit. Qui in deleniti voluptatem est ut eos debitis veniam. Modi aliquid ipsa libero.', 4, '2019-08-11 05:56:44', '2019-08-11 05:56:44'),
(37, 18, 'Hilton Rodriguez', 'Quis ut sed corporis ut modi laudantium totam id. Quis numquam et quod consequatur neque.', 0, '2019-08-11 05:56:45', '2019-08-11 05:56:45'),
(38, 5, 'Rylee Yost', 'Ut quae et est nesciunt illo cupiditate natus. Voluptas eligendi numquam quos facilis vel ea. Vel quo voluptate sunt accusantium. Illum et consequatur voluptatem sit expedita tempora assumenda.', 5, '2019-08-11 05:56:45', '2019-08-11 05:56:45'),
(39, 47, 'Kathleen Abbott', 'Vel est quis alias et. Esse dolores enim repellat consequatur. Aut sequi quis quidem repellat.', 2, '2019-08-11 05:56:46', '2019-08-11 05:56:46'),
(40, 17, 'Carlee Gusikowski', 'Error doloremque aliquid et est sunt ut. Impedit laudantium sint accusantium officia. Vel deserunt et nostrum ea et. Quia sit et et aliquam provident aut.', 0, '2019-08-11 05:56:46', '2019-08-11 05:56:46'),
(41, 35, 'Aubree Schuppe', 'Quia quam aut cumque. Quam et id perferendis enim. Dolor sequi error occaecati perspiciatis.', 3, '2019-08-11 05:56:46', '2019-08-11 05:56:46'),
(42, 2, 'Christ Kiehn', 'Minus eos ducimus culpa dolor. Ab et cumque asperiores. Ut voluptas maxime reiciendis nobis aut rerum.', 3, '2019-08-11 05:56:47', '2019-08-11 05:56:47'),
(43, 30, 'Wilton Bogan', 'Sequi delectus consequatur maxime vel alias harum molestias et. Omnis vel nihil numquam est vero doloremque. Labore qui recusandae ipsam expedita.', 4, '2019-08-11 05:56:47', '2019-08-11 05:56:47'),
(44, 41, 'Nannie Labadie', 'Quia qui qui maiores voluptas sed itaque omnis. Commodi fuga quidem quae dolorum harum nulla. Quos beatae et maiores fuga aut. Quibusdam impedit odio sed debitis laudantium.', 3, '2019-08-11 05:56:47', '2019-08-11 05:56:47'),
(45, 49, 'Daija Pacocha V', 'Aut ab et id nihil ipsum sed. Ut cumque expedita a eveniet earum. Nostrum sit officiis veritatis quas. Laborum inventore nemo sint quae non cum.', 3, '2019-08-11 05:56:47', '2019-08-11 05:56:47'),
(46, 9, 'Kasandra Mayert', 'Nam ut dolor consequatur maiores sapiente. Sit et aut voluptas ratione consectetur. Omnis est accusamus laudantium tempore molestiae perspiciatis.', 0, '2019-08-11 05:56:47', '2019-08-11 05:56:47'),
(47, 8, 'Miss Yolanda Stark DVM', 'Asperiores perspiciatis velit ut adipisci. Ad quia sequi harum tempora placeat dignissimos rerum.', 5, '2019-08-11 05:56:48', '2019-08-11 05:56:48'),
(48, 11, 'Dr. Marcella Weimann II', 'Quis est minima expedita est est ipsum vel. Reiciendis sit velit quia qui ipsam sit. Qui similique vel et ea architecto eaque. Nemo enim velit adipisci laudantium et quia dicta perspiciatis.', 3, '2019-08-11 05:56:48', '2019-08-11 05:56:48'),
(49, 36, 'Dr. Ryann Borer', 'Maiores quasi accusamus modi. Optio labore aliquam optio reiciendis perferendis doloribus voluptates iusto. Sapiente quod et nobis pariatur. Saepe possimus velit repellendus voluptatem quis placeat inventore eveniet.', 1, '2019-08-11 05:56:48', '2019-08-11 05:56:48'),
(50, 15, 'Prof. Nathaniel Mosciski Sr.', 'Consequatur voluptatem dolores nihil ex et aut quasi praesentium. Dolorem delectus ea quia ab ipsa eligendi. Eligendi at sunt optio consequuntur molestiae provident.', 2, '2019-08-11 05:56:48', '2019-08-11 05:56:48'),
(51, 1, 'Giovani Bins', 'Ut quos fuga alias ut veniam. Aut numquam sapiente minima soluta. Et quia reprehenderit commodi. Et molestiae illo eos ut dolor tenetur.', 1, '2019-08-11 05:56:48', '2019-08-11 05:56:48'),
(52, 38, 'Emily Brown', 'Quas deleniti accusamus animi animi. Esse dolorem atque distinctio. Voluptatem perferendis ipsa totam doloremque ratione amet. Sapiente minima et unde similique architecto praesentium blanditiis.', 0, '2019-08-11 05:56:48', '2019-08-11 05:56:48'),
(53, 36, 'Dexter Barton', 'Eligendi sed qui dolor ut. Eaque sit esse laboriosam fuga quidem. Eveniet ipsum commodi nulla nesciunt. Sed minus iure enim et voluptatem. Dicta modi soluta saepe voluptates placeat et amet ipsum.', 4, '2019-08-11 05:56:48', '2019-08-11 05:56:48'),
(54, 31, 'Carole Price', 'Et sunt quia praesentium et itaque nostrum dignissimos aut. Consectetur qui est quibusdam vero molestias necessitatibus ut rem. Quisquam ad placeat dolorum maiores minima ab ad est. Unde eaque aspernatur aliquid ut excepturi quia quidem magnam.', 0, '2019-08-11 05:56:49', '2019-08-11 05:56:49'),
(55, 15, 'Cora Upton', 'Vero perspiciatis ab eaque commodi aspernatur. Et id laudantium numquam iusto quia iusto. Eum enim dolores consectetur dolorem unde fuga.', 3, '2019-08-11 05:56:49', '2019-08-11 05:56:49'),
(56, 16, 'Berneice Grant', 'Sed dolores incidunt animi totam architecto. Totam aliquid dolorem molestias ipsum. Qui dolor magni quod ratione delectus mollitia.', 0, '2019-08-11 05:56:49', '2019-08-11 05:56:49'),
(57, 7, 'Sven O\'Reilly', 'Sequi quod consequatur numquam dolorum est. Nesciunt aperiam velit distinctio quidem mollitia non provident. Fugiat et praesentium earum quam aperiam velit illo.', 1, '2019-08-11 05:56:49', '2019-08-11 05:56:49'),
(58, 27, 'Ewald Dach', 'Maxime omnis sit ea sunt voluptas minus sunt ad. Dignissimos dolores facere consequuntur. Qui similique ea a rerum optio laudantium.', 4, '2019-08-11 05:56:49', '2019-08-11 05:56:49'),
(59, 40, 'Gregoria Bins', 'Quia ut veniam delectus. Recusandae et voluptatem ullam dicta accusamus. Nemo labore ut neque provident dolorem. Natus at modi consequatur dolores nobis ab sit.', 2, '2019-08-11 05:56:49', '2019-08-11 05:56:49'),
(60, 30, 'Mike Waters', 'Ea dolorem molestias fuga sit debitis ut. Inventore rerum veritatis molestias provident et laboriosam. Ipsam soluta minus odio architecto atque placeat rerum. Consectetur voluptas et beatae est.', 4, '2019-08-11 05:56:49', '2019-08-11 05:56:49'),
(61, 47, 'Alexis Zemlak', 'Aliquid dolor et fugit earum quisquam. Eos qui autem aut voluptas nihil voluptatem.', 1, '2019-08-11 05:56:49', '2019-08-11 05:56:49'),
(62, 38, 'Joanne Aufderhar III', 'Tempora necessitatibus nostrum repudiandae. Et dicta voluptatibus et praesentium quisquam. Est vitae accusamus architecto magnam rerum. Perspiciatis aut animi tenetur consequatur et.', 3, '2019-08-11 05:56:50', '2019-08-11 05:56:50'),
(63, 17, 'Monica Volkman', 'Quis ab quo voluptas qui. Quidem inventore qui animi ad molestiae. Non laudantium quasi fugit enim. Unde sed consequatur maxime nesciunt.', 4, '2019-08-11 05:56:50', '2019-08-11 05:56:50'),
(64, 18, 'Keegan Maggio', 'Nulla voluptatem ab temporibus ipsam ad sint. Est hic eius suscipit quisquam optio quibusdam suscipit. Harum qui dignissimos velit magni.', 3, '2019-08-11 05:56:50', '2019-08-11 05:56:50'),
(65, 48, 'Lucious Boyle', 'Magni ad fugit nemo repellendus sit. Minus voluptate quis ad alias mollitia et. Ut at sunt perspiciatis quis consequatur voluptate.', 0, '2019-08-11 05:56:50', '2019-08-11 05:56:50'),
(66, 31, 'Elliott Weissnat', 'Qui molestiae molestiae eum ut voluptatibus. Ad itaque minus quia ex earum. Quod doloremque quo excepturi voluptates est.', 0, '2019-08-11 05:56:50', '2019-08-11 05:56:50'),
(67, 23, 'Prof. Isidro Pfeffer Sr.', 'Fugiat iusto qui ipsum ut porro quo hic. Ipsa id dolor deserunt quia. Deserunt voluptatum et perferendis exercitationem. Impedit eos eos corporis. Vel consequatur vel accusamus.', 2, '2019-08-11 05:56:50', '2019-08-11 05:56:50'),
(68, 34, 'Dr. Randall Roob Sr.', 'Vel consequatur ut aut explicabo enim et. Quos ut non velit non. Est qui sit sed deleniti nemo sit.', 2, '2019-08-11 05:56:51', '2019-08-11 05:56:51'),
(69, 15, 'Al Lakin', 'Atque quia soluta dolores ipsum quis ipsa atque. Occaecati consequuntur laborum adipisci nisi ipsam dolorem reprehenderit. Tenetur vel minus qui sunt eveniet.', 0, '2019-08-11 05:56:51', '2019-08-11 05:56:51'),
(70, 11, 'Rafaela Considine', 'Natus eligendi ipsa omnis voluptas amet qui. Expedita temporibus labore odio nisi quae quis sed. Sunt vel voluptas libero voluptate aliquid.', 1, '2019-08-11 05:56:51', '2019-08-11 05:56:51'),
(71, 7, 'Sarai Champlin', 'Quia voluptas minus quia est ut commodi itaque. Dolores velit nam eveniet voluptas. Atque et cupiditate atque similique sed iusto.', 4, '2019-08-11 05:56:51', '2019-08-11 05:56:51'),
(72, 18, 'Myles Ondricka MD', 'Qui consequatur magnam quo ex. Adipisci perferendis voluptatem sunt omnis. Tempora quia qui molestiae. Aliquid dolorem est repellendus ex incidunt dolore.', 4, '2019-08-11 05:56:51', '2019-08-11 05:56:51'),
(73, 17, 'Elliott Jones', 'Optio ratione alias in animi voluptatem quo. Voluptate tempora qui non ea molestiae non. Facere quia maiores sint repellendus eum. Expedita consequatur et natus non. Iure voluptatem reprehenderit voluptatem sit ex cumque.', 5, '2019-08-11 05:56:52', '2019-08-11 05:56:52'),
(74, 1, 'Garth VonRueden', 'Facere hic officia dolorem placeat tenetur quasi. Voluptatibus assumenda est sed quis ea debitis. Non voluptatum sunt placeat non asperiores illo suscipit non. Consectetur ratione illum velit nemo.', 4, '2019-08-11 05:56:52', '2019-08-11 05:56:52'),
(75, 28, 'Zechariah Parker', 'Sint cum dolorum nemo eius. Accusantium ab eum eum in. Itaque fugiat molestias est.', 3, '2019-08-11 05:56:52', '2019-08-11 05:56:52'),
(76, 22, 'Macy Wintheiser', 'Neque praesentium pariatur magnam. Accusantium esse ex est et facilis reprehenderit expedita. Et sint rerum dolorem velit molestias. Tempora et sunt tempora provident sit.', 2, '2019-08-11 05:56:52', '2019-08-11 05:56:52'),
(77, 20, 'Zackery Pfannerstill', 'Dignissimos sed ea temporibus aut atque cum aut iusto. Magnam magni rerum laboriosam. Autem qui esse autem cupiditate. Autem minus ad maiores inventore.', 5, '2019-08-11 05:56:52', '2019-08-11 05:56:52'),
(78, 7, 'Lazaro Jaskolski', 'Necessitatibus harum provident et sint. Nisi reprehenderit est excepturi molestiae aut. Architecto qui quasi nihil quod nostrum veritatis. Aspernatur quae deserunt illum error dignissimos. Tempora ut ut consectetur ducimus similique architecto maxime.', 4, '2019-08-11 05:56:52', '2019-08-11 05:56:52'),
(79, 41, 'Ms. Sarah Breitenberg Jr.', 'Est incidunt itaque voluptatem et. Iure quaerat quo incidunt nulla. Laborum optio asperiores enim voluptates vitae recusandae. Et quod nihil officia dolor praesentium aut sit.', 4, '2019-08-11 05:56:53', '2019-08-11 05:56:53'),
(80, 1, 'Ms. Madilyn Greenfelder', 'Quo explicabo voluptas dolor commodi aut quia iste. Voluptatum qui neque veritatis. Voluptas aut et ad est voluptas odio dignissimos. Dolorum fugiat atque error consequatur adipisci. Adipisci tenetur ea doloremque aliquam inventore.', 2, '2019-08-11 05:56:53', '2019-08-11 05:56:53'),
(81, 17, 'Letitia O\'Keefe', 'Possimus et quod nostrum necessitatibus et. Maiores facilis odit vero ullam est aut pariatur. Facere amet ut beatae nam eos ad veniam.', 3, '2019-08-11 05:56:53', '2019-08-11 05:56:53'),
(82, 25, 'Kale Kohler', 'Ducimus fuga dolor iste ipsum dolorum aspernatur voluptatem. Quod temporibus occaecati voluptatem nam distinctio eos qui culpa. Earum est hic vel corrupti est voluptas. Aut deleniti illum sequi deleniti alias provident.', 3, '2019-08-11 05:56:53', '2019-08-11 05:56:53'),
(83, 37, 'Dedric Lind', 'Accusantium non sed veritatis quas recusandae aspernatur. Soluta repellat odit sit similique omnis deleniti a. Eum aperiam possimus minima sed rerum nisi cupiditate.', 4, '2019-08-11 05:56:53', '2019-08-11 05:56:53'),
(84, 35, 'Prof. Aurelio Hoeger III', 'Unde sed sint et suscipit in et. Porro eius illum ea sunt non suscipit dolore. Cumque distinctio ex reiciendis corrupti voluptatem consequatur ut. Aut eum ut facilis facilis aliquam et. Autem ipsum sit labore dolorem quia voluptas laboriosam.', 0, '2019-08-11 05:56:54', '2019-08-11 05:56:54'),
(85, 7, 'Prof. Glen Dickinson', 'Doloribus velit id velit. Ipsa dolor vero saepe perferendis temporibus incidunt unde odio. Id maiores ea cupiditate omnis odio accusamus. Vel excepturi quis et accusamus.', 2, '2019-08-11 05:56:54', '2019-08-11 05:56:54'),
(86, 11, 'Erna Kerluke', 'Ipsa nam maiores libero aperiam dolores animi. Quia omnis provident molestias sint iste. Sed eos voluptatem dolorem velit praesentium voluptate. Illum incidunt nemo beatae repellendus minima est.', 4, '2019-08-11 05:56:54', '2019-08-11 05:56:54'),
(87, 11, 'Dr. Maximilian Swift II', 'Est facere et occaecati et. Libero ratione beatae inventore voluptatem. Atque tempora quo voluptates qui laboriosam. Autem rerum molestias omnis inventore.', 5, '2019-08-11 05:56:54', '2019-08-11 05:56:54'),
(88, 50, 'Prof. Lavada Greenholt', 'Eos et voluptatem reprehenderit dolor. Ut et quisquam illo quod et quae. Hic non blanditiis et laborum quo ut earum quidem.', 3, '2019-08-11 05:56:54', '2019-08-11 05:56:54'),
(89, 26, 'Herta Hamill III', 'Enim dolores dolor assumenda minus corrupti ut. Eum soluta non non et. Voluptatibus enim eveniet sed at quidem doloremque minus. Quia et eligendi et harum eligendi et.', 3, '2019-08-11 05:56:54', '2019-08-11 05:56:54'),
(90, 3, 'Immanuel Dicki', 'Et voluptatem odit aliquid voluptate iure enim quia. Officiis placeat ut eos blanditiis. Et ullam molestiae et quam.', 2, '2019-08-11 05:56:54', '2019-08-11 05:56:54'),
(91, 45, 'Emilie Hauck DDS', 'Corporis qui temporibus dolorem sed possimus sunt et. Accusamus sit tempora ut aperiam aperiam eveniet. Consectetur eos dolore a iusto nisi doloremque.', 3, '2019-08-11 05:56:55', '2019-08-11 05:56:55'),
(92, 40, 'Mr. Kory Balistreri IV', 'Laudantium rerum iste omnis porro placeat et. Repellat natus repellendus quasi blanditiis unde tempora. Praesentium non et cupiditate.', 3, '2019-08-11 05:56:55', '2019-08-11 05:56:55'),
(93, 24, 'Catherine Lowe DVM', 'Esse et iusto suscipit velit. Voluptas voluptatum eveniet facilis voluptatum quidem id dolore cum. Dolore saepe sit quis omnis. Facere molestias aliquam delectus et aspernatur non dolore.', 0, '2019-08-11 05:56:55', '2019-08-11 05:56:55'),
(94, 33, 'Mr. Bernhard Kilback', 'Nostrum architecto quia ducimus. Et nulla ipsa voluptas sed cum soluta molestiae. Consequatur ut qui et laborum libero. Aliquid ipsum dolores placeat dignissimos corporis laboriosam.', 3, '2019-08-11 05:56:55', '2019-08-11 05:56:55'),
(95, 8, 'Miss Teresa Mueller II', 'Impedit hic nobis aut ut minima. Sit dignissimos voluptatem ea magni rerum. Iure numquam possimus libero architecto dignissimos et vel sapiente. Eligendi nisi eaque fugit. Perferendis odio illum quia in sapiente qui nulla.', 0, '2019-08-11 05:56:55', '2019-08-11 05:56:55'),
(96, 28, 'Carson Breitenberg', 'Ipsum necessitatibus et fugiat voluptatem nisi. Labore illum eum eos architecto cumque consequuntur. Est consequatur cupiditate laboriosam hic et ipsum modi.', 0, '2019-08-11 05:56:56', '2019-08-11 05:56:56'),
(97, 31, 'Sonia Kessler V', 'Magni et nihil atque ut. Libero nisi tempore et earum sunt corporis quos. Aut vero tenetur enim porro ut.', 4, '2019-08-11 05:56:56', '2019-08-11 05:56:56'),
(98, 15, 'Dr. Ellis Hudson Jr.', 'Nihil aut dignissimos nemo et. Quos excepturi voluptates sed optio aut et nesciunt. Id occaecati et libero quo odit.', 4, '2019-08-11 05:56:56', '2019-08-11 05:56:56'),
(99, 33, 'Maribel Bahringer MD', 'Deleniti sunt veniam unde ex. Dolorum molestias cupiditate quis tenetur et. Laborum odit quas amet.', 1, '2019-08-11 05:56:56', '2019-08-11 05:56:56'),
(100, 10, 'Alva Padberg', 'Aut alias ut nihil tempora cupiditate necessitatibus dolores esse. Fugiat cupiditate in accusantium aut quas voluptas. Voluptatem labore quia nesciunt enim.', 5, '2019-08-11 05:56:56', '2019-08-11 05:56:56'),
(101, 2, 'Enrico Will', 'Voluptatem rerum suscipit ut debitis optio nemo. Velit corporis deleniti corporis ad. Harum voluptas dignissimos non voluptatum laboriosam mollitia. Voluptatem voluptatibus est modi debitis natus aut cum.', 3, '2019-08-11 05:56:56', '2019-08-11 05:56:56'),
(102, 26, 'Prof. Kurt Considine', 'Odit sunt exercitationem numquam ab ad qui aut laborum. Qui molestiae numquam qui id qui voluptatem deleniti. Ad impedit similique quis.', 3, '2019-08-11 05:56:57', '2019-08-11 05:56:57'),
(103, 39, 'Prof. Greg Green', 'Eaque voluptas eos enim. Doloremque architecto dolor quam et suscipit. Impedit enim dicta doloribus rerum expedita eaque ipsum. Consequatur nihil natus praesentium impedit et.', 0, '2019-08-11 05:56:57', '2019-08-11 05:56:57'),
(104, 48, 'Katarina Kemmer', 'Ea dolor aliquam quia neque fugiat tenetur. Amet rerum molestiae autem voluptas. Qui quaerat nesciunt porro quibusdam velit.', 0, '2019-08-11 05:56:57', '2019-08-11 05:56:57'),
(105, 33, 'Maximo Bogan', 'Repudiandae eos illo consequuntur dolorem. Eos aspernatur sunt ratione facilis.', 5, '2019-08-11 05:56:57', '2019-08-11 05:56:57'),
(106, 36, 'Verla Wolf I', 'Soluta accusamus eum delectus ex doloribus aut sunt. Ipsam eum delectus sunt vel. Vero nemo tempore saepe sit modi quam.', 3, '2019-08-11 05:56:58', '2019-08-11 05:56:58'),
(107, 21, 'Prof. Emmet Pagac IV', 'Similique nihil labore molestiae vel numquam quo eius dolorem. Dolor occaecati laudantium vitae autem consequatur et omnis. Inventore odio rerum deleniti a doloremque. Aut rerum temporibus eos doloribus.', 1, '2019-08-11 05:56:58', '2019-08-11 05:56:58'),
(108, 13, 'Miss Zena Mann PhD', 'Consequatur quaerat et ut id illum aspernatur ut. Ut iste enim ut dolores ratione omnis. Iste aut dolores aut sunt.', 5, '2019-08-11 05:56:58', '2019-08-11 05:56:58'),
(109, 48, 'Dr. Lavinia Ziemann Jr.', 'Rerum qui labore et fugiat. Minima libero odit blanditiis sint atque. Autem eos non harum. Aliquam ipsum nulla aperiam corrupti autem enim beatae. Voluptatum omnis labore consequatur voluptas voluptatum.', 3, '2019-08-11 05:56:58', '2019-08-11 05:56:58'),
(110, 48, 'Jaqueline Bernhard', 'Et unde quia sunt accusamus perspiciatis ut neque. Laborum possimus asperiores et accusantium. Qui qui dolor vitae ut.', 2, '2019-08-11 05:56:59', '2019-08-11 05:56:59'),
(111, 21, 'Cleora Rice DVM', 'Blanditiis esse atque accusamus praesentium. Eius sed quas ratione quia. Voluptatem ut eos voluptatum aliquid. Iste eius corrupti sed.', 3, '2019-08-11 05:56:59', '2019-08-11 05:56:59'),
(112, 6, 'Rachelle Stark PhD', 'Omnis ad enim omnis quo ut. Occaecati at recusandae reprehenderit dolor itaque sed minima sint. Ipsum quia nihil earum temporibus nulla qui occaecati. Minus nemo quasi incidunt neque assumenda perferendis.', 1, '2019-08-11 05:56:59', '2019-08-11 05:56:59'),
(113, 44, 'Leonora Cole', 'Nemo ea rerum minima. Et itaque veritatis ipsam minus repudiandae voluptatem quod. Accusamus beatae praesentium nam culpa alias. Voluptas quibusdam incidunt ea enim ut dignissimos nesciunt.', 3, '2019-08-11 05:56:59', '2019-08-11 05:56:59'),
(114, 40, 'Jon Tremblay IV', 'Dolores occaecati rem impedit sed iste commodi. Beatae dolorem blanditiis porro dicta doloribus nemo ipsa. Minima qui natus illo error.', 0, '2019-08-11 05:56:59', '2019-08-11 05:56:59'),
(115, 30, 'Jabari Kiehn', 'At ullam autem non ea natus. Aspernatur non eos autem beatae enim.', 3, '2019-08-11 05:56:59', '2019-08-11 05:56:59'),
(116, 34, 'Raymundo Pollich', 'Magni dolore ducimus ut mollitia. Aut aperiam expedita repellendus molestiae rerum exercitationem praesentium unde. Sed deleniti quia illum quia illum. Mollitia qui sapiente reiciendis sit inventore omnis dolores.', 5, '2019-08-11 05:56:59', '2019-08-11 05:56:59'),
(117, 17, 'Wilmer Stark', 'Quidem aliquid ullam esse voluptatibus eveniet vitae dolor. Beatae voluptatem alias ipsum in ipsum eligendi qui. Ut reprehenderit et provident quos.', 5, '2019-08-11 05:56:59', '2019-08-11 05:56:59'),
(118, 26, 'Trenton Hoeger', 'Ratione expedita velit consequatur quo adipisci iure blanditiis quis. Unde dolores dolorum dicta nesciunt. Et optio beatae perferendis. Tempore fugiat omnis ex harum sit quia.', 1, '2019-08-11 05:57:00', '2019-08-11 05:57:00'),
(119, 50, 'Arturo Sipes', 'Commodi molestiae quasi mollitia aspernatur placeat excepturi dolorem. Rem sequi ea amet quaerat quam assumenda. Blanditiis dolor reprehenderit ea aut odit.', 5, '2019-08-11 05:57:00', '2019-08-11 05:57:00'),
(120, 30, 'Prof. Elyssa Bauch', 'Est asperiores ut rerum voluptas saepe qui. Vero cum molestias quis reiciendis. Et sed optio vitae corrupti error. Animi voluptate est mollitia quia odio tempora nobis.', 1, '2019-08-11 05:57:00', '2019-08-11 05:57:00'),
(121, 11, 'Malinda Stehr', 'Laudantium architecto et dolores nostrum quia. Accusantium veritatis temporibus laborum maxime modi et. Voluptate aliquid voluptatem deleniti est.', 0, '2019-08-11 05:57:00', '2019-08-11 05:57:00'),
(122, 47, 'Roxanne Rempel', 'Repudiandae enim voluptatem omnis deleniti deserunt saepe autem. Tempora a sapiente in in ad nisi voluptas repellendus. Maxime assumenda et nostrum harum aspernatur enim.', 4, '2019-08-11 05:57:00', '2019-08-11 05:57:00'),
(123, 26, 'Kaylee Krajcik IV', 'Quis sint magni laborum iure asperiores ut sint. Autem voluptatum consectetur harum sit porro. Veniam ut debitis nesciunt sunt tempora nam veniam. Necessitatibus error et illum voluptate consequuntur necessitatibus temporibus.', 4, '2019-08-11 05:57:00', '2019-08-11 05:57:00'),
(124, 39, 'Dr. Samantha Hamill DDS', 'Iure alias voluptas libero. Non sequi tempore mollitia aspernatur possimus. Ratione ad perspiciatis voluptas alias.', 3, '2019-08-11 05:57:00', '2019-08-11 05:57:00'),
(125, 22, 'Miss Yvonne Littel I', 'Ratione assumenda consequatur sit cum quas est. Ut voluptatem dolorem dolorem exercitationem praesentium dolores. Quia eveniet ullam officia aut. Doloribus molestias enim qui deserunt fuga et libero.', 3, '2019-08-11 05:57:00', '2019-08-11 05:57:00'),
(126, 42, 'Eunice Wilkinson', 'Quia voluptatem ratione enim aut incidunt et. Numquam rerum ut praesentium corrupti voluptatem quia. Voluptatibus molestiae nemo velit aliquid inventore sed.', 3, '2019-08-11 05:57:00', '2019-08-11 05:57:00'),
(127, 43, 'Tabitha Pfannerstill', 'Magnam aut velit veniam fugiat magnam pariatur. Rerum iste qui deleniti quis. Sed accusamus quos possimus animi unde. Vitae odio magnam maiores accusantium et molestiae.', 5, '2019-08-11 05:57:01', '2019-08-11 05:57:01'),
(128, 4, 'Kaela Considine', 'Excepturi sit eos voluptatibus quos sit. Quia quia accusamus ducimus cupiditate. Animi exercitationem delectus maxime iure.', 4, '2019-08-11 05:57:01', '2019-08-11 05:57:01'),
(129, 22, 'Miss Orie Cassin', 'Maiores quia et sit ipsa. Ut id ipsa sunt recusandae eius fugit neque. Qui fugiat molestiae saepe a soluta dolorum.', 0, '2019-08-11 05:57:01', '2019-08-11 05:57:01'),
(130, 40, 'Brandi Legros', 'Debitis quasi dolore non ut. Adipisci ratione ducimus eos iste repudiandae. Provident libero earum omnis vel beatae iusto.', 4, '2019-08-11 05:57:02', '2019-08-11 05:57:02'),
(131, 5, 'Maximillian Schulist', 'Fugiat nulla fuga dolorem reiciendis commodi dolore impedit. Inventore quae provident vel maxime eum provident asperiores. Cupiditate doloremque nostrum nihil facilis vero. Tenetur reprehenderit odio voluptatibus itaque et.', 2, '2019-08-11 05:57:02', '2019-08-11 05:57:02'),
(132, 9, 'Mekhi Bins', 'Accusamus minima sed sapiente. At eum nisi porro sint sed. Omnis asperiores assumenda quia sed sed magnam.', 4, '2019-08-11 05:57:02', '2019-08-11 05:57:02'),
(133, 7, 'Kelly Wintheiser', 'Et et optio nisi. Veritatis ut provident quisquam laborum quia. Quis non est est sed odit. Esse optio perferendis aliquam nihil quia aliquam nostrum assumenda.', 5, '2019-08-11 05:57:02', '2019-08-11 05:57:02'),
(134, 30, 'Kennith Rogahn', 'Distinctio consequatur reprehenderit sed similique repellendus. Voluptatem itaque recusandae dolorem deleniti possimus modi. Vitae minima quia ipsum eos qui repudiandae. Ex tempore omnis temporibus quam expedita deleniti.', 4, '2019-08-11 05:57:03', '2019-08-11 05:57:03'),
(135, 33, 'Miss Grace Kozey I', 'Aliquid iusto corrupti quis. Sit ab deserunt error aut debitis placeat. Aspernatur eos et qui dolorem et odit omnis. Id molestiae sunt totam sequi eum placeat iure.', 3, '2019-08-11 05:57:03', '2019-08-11 05:57:03'),
(136, 32, 'Matilda Dickinson', 'Tempore unde laudantium voluptas velit nam qui harum excepturi. Aperiam aliquid vel odio. Itaque ratione quis ipsum beatae. Quam qui vel iure saepe vel vitae architecto similique. Culpa repellat veritatis id provident.', 2, '2019-08-11 05:57:03', '2019-08-11 05:57:03'),
(137, 46, 'Yasmin Buckridge', 'Neque recusandae voluptatum dolorem commodi voluptates qui. Soluta iste aut atque quaerat. Assumenda facilis est est est non qui.', 1, '2019-08-11 05:57:03', '2019-08-11 05:57:03'),
(138, 7, 'Norberto Kunze', 'Quibusdam aut nesciunt esse non. Blanditiis totam reprehenderit deserunt necessitatibus et praesentium. Esse voluptas sed aperiam magni incidunt corporis.', 4, '2019-08-11 05:57:03', '2019-08-11 05:57:03'),
(139, 7, 'Adriana Jaskolski', 'Quod veniam dolorem repellat voluptatem. Inventore harum in perspiciatis dolore ea. Dolor aperiam totam unde perspiciatis et. Deserunt sed perferendis ullam recusandae quia distinctio.', 0, '2019-08-11 05:57:03', '2019-08-11 05:57:03'),
(140, 13, 'Dr. Diana Parisian', 'Corporis et et veritatis saepe odio porro et. Accusamus autem et perspiciatis sunt quibusdam et accusantium. Similique impedit iste ut rem.', 2, '2019-08-11 05:57:04', '2019-08-11 05:57:04'),
(141, 21, 'Mrs. Pearlie Zboncak II', 'Facere id ut rerum expedita. Id voluptas id reprehenderit et autem impedit quam. Molestiae doloremque molestiae voluptatem omnis minima veniam perferendis.', 5, '2019-08-11 05:57:04', '2019-08-11 05:57:04'),
(142, 4, 'Ettie Pagac', 'Aut illo vel placeat cupiditate dolores. Temporibus a et esse sunt.', 1, '2019-08-11 05:57:04', '2019-08-11 05:57:04'),
(143, 29, 'Jerome Adams', 'Architecto enim consequuntur aliquid voluptas. Voluptas atque dolores inventore facilis. Aliquid accusantium ducimus eligendi tempora quis.', 4, '2019-08-11 05:57:04', '2019-08-11 05:57:04'),
(144, 43, 'Afton Jacobs Sr.', 'Beatae minus rem consequatur eum eos dolorem nostrum atque. Id nemo quibusdam ea recusandae iste sit. Nulla quia tempora nobis id. Dolor praesentium harum quis numquam dicta ratione esse est.', 0, '2019-08-11 05:57:04', '2019-08-11 05:57:04'),
(145, 46, 'Dr. Tremaine Kessler V', 'Quisquam nobis voluptas voluptate qui. Voluptatum quia qui possimus adipisci sed eaque. Est quaerat cum corporis consequatur exercitationem. Sed dolores voluptatem cumque qui.', 4, '2019-08-11 05:57:05', '2019-08-11 05:57:05'),
(146, 14, 'Jennifer Swaniawski', 'Molestias non officiis consequatur ut et. Aut et beatae ut necessitatibus. Rerum qui vitae est repellendus.', 4, '2019-08-11 05:57:05', '2019-08-11 05:57:05'),
(147, 32, 'Mr. Thurman Mitchell MD', 'Necessitatibus vel porro quia vel aut quae. Aut est cupiditate et corporis ut assumenda. Quibusdam odit ipsum provident quo velit ut consequatur. Fugit sit aut voluptatibus quibusdam architecto dolorem debitis. Laboriosam aliquid assumenda dignissimos incidunt porro eum.', 1, '2019-08-11 05:57:05', '2019-08-11 05:57:05'),
(148, 49, 'Irwin Hudson', 'Et voluptatem quibusdam et eum ut. Error quisquam molestiae saepe quia aperiam distinctio reprehenderit. Eveniet quia error sit illo cum illo deserunt et. Autem eaque placeat qui libero.', 3, '2019-08-11 05:57:05', '2019-08-11 05:57:05'),
(149, 13, 'Maude Zieme', 'Aut aspernatur officiis officiis non ad fuga aliquid. Labore beatae placeat saepe quibusdam quia. Qui non nihil quaerat minus. Voluptas aperiam expedita assumenda explicabo qui assumenda.', 4, '2019-08-11 05:57:05', '2019-08-11 05:57:05'),
(150, 22, 'Miss Destiny White', 'Non sed blanditiis et provident dolorum sunt ea fugiat. Harum autem minus facilis aliquid esse at. Eveniet voluptates veniam rem ea aliquam aut optio. Quaerat quis molestiae sint.', 0, '2019-08-11 05:57:06', '2019-08-11 05:57:06'),
(151, 29, 'Carlotta Nader', 'Et in rerum molestiae recusandae libero dolores minus omnis. Dolorum cum voluptas laudantium laborum consequatur non distinctio. Rerum quis sit nisi blanditiis sed repellat. Molestiae sit necessitatibus pariatur dolorem porro. Adipisci dolores earum ad odit et dolores.', 0, '2019-08-11 05:57:06', '2019-08-11 05:57:06'),
(152, 24, 'Mr. Leopold Wehner V', 'Asperiores est beatae accusamus voluptate. Reprehenderit omnis enim rerum. Voluptatem autem aut enim id eligendi ut quam. Ut quia expedita cumque delectus vel assumenda.', 4, '2019-08-11 05:57:06', '2019-08-11 05:57:06'),
(153, 13, 'Bill Hodkiewicz', 'Sequi fugit ratione aspernatur voluptas provident aut consectetur. Esse ullam modi ullam est voluptatem sapiente qui. Blanditiis et delectus maiores sed sit assumenda.', 3, '2019-08-11 05:57:06', '2019-08-11 05:57:06'),
(154, 29, 'Darrick Howe', 'Expedita aut mollitia voluptatibus enim est doloribus illum. Rerum dolores repudiandae id eum. Hic exercitationem expedita ducimus esse omnis possimus distinctio. Blanditiis et et aliquam tempore tempora error esse iste.', 0, '2019-08-11 05:57:06', '2019-08-11 05:57:06'),
(155, 39, 'Dolores Blick', 'Culpa neque qui error ullam. Omnis occaecati quam ea provident quae magnam. Voluptatibus voluptas dolor ducimus optio.', 4, '2019-08-11 05:57:06', '2019-08-11 05:57:06'),
(156, 41, 'Savanna Predovic', 'Assumenda dicta in quae dignissimos neque vel dicta. Eligendi sunt quaerat impedit labore praesentium. Officia atque ex non dolor quia maiores voluptas.', 2, '2019-08-11 05:57:06', '2019-08-11 05:57:06'),
(157, 31, 'Annamarie Brown', 'Sunt alias cumque dignissimos. Nihil et nihil expedita quidem quasi consequatur voluptatibus rem. Incidunt aut tempore esse pariatur. Eveniet recusandae numquam molestiae iste.', 4, '2019-08-11 05:57:06', '2019-08-11 05:57:06'),
(158, 47, 'Otilia Johnson', 'Deleniti qui asperiores libero vel. Accusantium facere ducimus quibusdam ea. Recusandae adipisci velit omnis enim deserunt rerum. Porro beatae aut et nulla.', 2, '2019-08-11 05:57:07', '2019-08-11 05:57:07'),
(159, 31, 'Emmanuel Hilpert', 'Aut velit natus esse aliquam est rem. Veniam incidunt quas impedit. Facere veniam et asperiores nobis omnis maiores. Facilis delectus sunt enim et.', 2, '2019-08-11 05:57:07', '2019-08-11 05:57:07'),
(160, 10, 'Dario Marks', 'Facere vel qui libero quis libero provident aliquam esse. Similique non nemo pariatur amet et occaecati. Magnam voluptatem quos velit facere dolorem et fuga nostrum. Omnis dolor vel in et eius.', 1, '2019-08-11 05:57:07', '2019-08-11 05:57:07'),
(161, 2, 'Mrs. Pearline Fisher DVM', 'Explicabo reiciendis eos voluptatem sit. Assumenda ipsam distinctio qui animi dolorem eos. Non in doloremque sit est harum. Quaerat aut blanditiis dolores repellat. Accusamus sit sint sit eveniet.', 3, '2019-08-11 05:57:07', '2019-08-11 05:57:07'),
(162, 12, 'Judge VonRueden', 'Aspernatur deserunt inventore at. Voluptatum veniam qui rem porro amet sapiente facere. Harum totam quia itaque autem.', 5, '2019-08-11 05:57:07', '2019-08-11 05:57:07'),
(163, 38, 'Pink Lubowitz', 'A nisi dolorum aut molestiae itaque. Autem porro doloribus fugit aut exercitationem facilis. Qui et quo eos.', 4, '2019-08-11 05:57:07', '2019-08-11 05:57:07'),
(164, 22, 'Prof. Hailey Friesen', 'Dolores nemo voluptas enim ut labore. Et magni minus excepturi voluptatibus consequuntur labore. A culpa voluptate amet sit atque error. Quaerat eos modi nisi sequi ad sapiente cum. Odit voluptatem aut mollitia sed.', 5, '2019-08-11 05:57:07', '2019-08-11 05:57:07'),
(165, 6, 'Dr. Lyda Goodwin', 'Sit accusantium corporis ut quibusdam amet. Earum consequuntur incidunt aut qui. Officiis error rerum asperiores labore neque quae dignissimos corporis.', 1, '2019-08-11 05:57:07', '2019-08-11 05:57:07'),
(166, 2, 'Lavonne Hodkiewicz', 'Itaque neque quaerat quidem omnis. Animi est ut et ea. Inventore dicta beatae et similique quasi. Autem rerum illum nam rerum cumque.', 3, '2019-08-11 05:57:08', '2019-08-11 05:57:08'),
(167, 21, 'Megane Fay III', 'Sed aut suscipit possimus reiciendis. Ipsum nihil impedit magni eligendi quasi illum magnam sapiente. Qui cumque eum qui nihil ex nihil molestias.', 1, '2019-08-11 05:57:08', '2019-08-11 05:57:08'),
(168, 45, 'Osvaldo Altenwerth', 'Exercitationem consequatur et voluptatem est velit eligendi ut. Quia voluptates totam odio in iure. Id eos nam ex ullam.', 3, '2019-08-11 05:57:08', '2019-08-11 05:57:08'),
(169, 37, 'Emerson Yundt', 'Fuga totam ut aut tempore voluptas similique esse. Error totam in voluptate magnam. Omnis voluptates quos dolores est.', 2, '2019-08-11 05:57:08', '2019-08-11 05:57:08'),
(170, 20, 'Layla Bergstrom', 'Veniam aspernatur quas amet impedit consequatur. Reprehenderit voluptatem illo cum et eius sed qui. Iure magni sunt enim et nostrum molestiae.', 3, '2019-08-11 05:57:08', '2019-08-11 05:57:08'),
(171, 35, 'Harold Stokes III', 'Optio quos quo et error dignissimos. Non doloribus non placeat dicta necessitatibus suscipit repellendus. Minima consequatur non est earum sit numquam.', 5, '2019-08-11 05:57:08', '2019-08-11 05:57:08'),
(172, 39, 'Art Nikolaus', 'Quos a dicta ipsum quis molestiae iure accusantium. Amet natus nihil ipsam sit sed vel.', 4, '2019-08-11 05:57:09', '2019-08-11 05:57:09'),
(173, 37, 'Hillary Lowe', 'Et enim laboriosam debitis reiciendis et voluptatibus praesentium. Ipsa culpa officiis eum ad omnis. Tempora rem aut enim. Iure deserunt eum dignissimos quasi.', 0, '2019-08-11 05:57:09', '2019-08-11 05:57:09'),
(174, 8, 'Mr. Guy Towne III', 'Natus placeat qui non fuga autem quod. Quae labore facilis natus aut fugit officia. Vitae quos quas deleniti error ex minima. Et corrupti dolores aut voluptate dignissimos consequatur.', 0, '2019-08-11 05:57:09', '2019-08-11 05:57:09'),
(175, 9, 'Noemi Kunze', 'Voluptatem aliquid deserunt unde non perferendis at sunt. Sit corrupti molestias vitae quidem facere nulla fuga fugiat. Enim placeat eaque aut numquam qui est ullam odio. Voluptas corporis consectetur laborum enim necessitatibus.', 4, '2019-08-11 05:57:09', '2019-08-11 05:57:09'),
(176, 35, 'Jabari DuBuque Jr.', 'Eligendi ab fuga temporibus in molestiae consequatur ab. Impedit sit esse esse occaecati minima impedit. Quia eveniet quaerat praesentium odit. Molestiae eveniet molestiae non vitae eaque explicabo velit.', 4, '2019-08-11 05:57:09', '2019-08-11 05:57:09'),
(177, 10, 'Rod Rath', 'Animi quam qui omnis accusantium deserunt. Quia velit ut sed quia.', 4, '2019-08-11 05:57:10', '2019-08-11 05:57:10'),
(178, 1, 'Wilber Daugherty', 'Deserunt consequuntur eum ducimus voluptate dolores nihil. Aut maiores doloremque a ipsa amet. Doloremque eum vel est. Aliquid architecto esse et voluptatem veniam.', 5, '2019-08-11 05:57:10', '2019-08-11 05:57:10'),
(179, 18, 'Eldridge Conn', 'Consequuntur voluptatem deserunt voluptates consequatur. Doloribus vero nam nemo unde sit. Ut eos impedit qui officiis. Quia sunt vero neque minima laudantium vero dolorem.', 0, '2019-08-11 05:57:10', '2019-08-11 05:57:10'),
(180, 20, 'Dr. Katlyn Johnson Jr.', 'Velit autem a quo voluptates aut. Laudantium sunt debitis sunt quis sed laborum. Est deserunt velit ut qui. Commodi assumenda eveniet nulla eaque quae.', 0, '2019-08-11 05:57:10', '2019-08-11 05:57:10'),
(181, 7, 'Caesar Osinski', 'Reprehenderit quaerat illo est repudiandae qui esse esse commodi. Autem sed voluptatem neque dolor. Sed modi dicta sunt.', 4, '2019-08-11 05:57:10', '2019-08-11 05:57:10'),
(182, 16, 'Mireille Lynch', 'Quidem qui ut autem voluptatem. Sunt eum atque et quibusdam ducimus at est cum. Quam qui nihil accusamus quos illo. Vero possimus id est et sapiente.', 0, '2019-08-11 05:57:10', '2019-08-11 05:57:10'),
(183, 11, 'Dr. Dorris Jakubowski', 'Excepturi et et maxime dolorum. Sapiente animi tempora consequatur dolore ratione. Modi aut quidem qui vitae ad quia repudiandae est. Non est perspiciatis velit similique qui nam et iusto.', 3, '2019-08-11 05:57:10', '2019-08-11 05:57:10'),
(184, 7, 'Elsa Mills', 'Sit amet quos natus voluptas est. Et iusto harum quo ut quibusdam error eius corporis. Mollitia consequatur veniam rerum. Velit sit doloremque sunt quasi.', 3, '2019-08-11 05:57:11', '2019-08-11 05:57:11'),
(185, 42, 'Virginie Morissette', 'Molestiae qui qui ut nihil dolores. A qui id tenetur assumenda est dolorum vel. Quae dolores recusandae est. Rem enim optio veritatis omnis voluptatem doloremque. Et illum ipsam molestiae minus.', 3, '2019-08-11 05:57:11', '2019-08-11 05:57:11'),
(186, 14, 'Audra Murazik', 'Et voluptates molestias et at. Rerum ratione impedit eum nemo voluptatem beatae. Quod unde rerum facere cum et deserunt. Facilis hic nisi in voluptates veniam. Voluptas id ipsum corrupti ratione ut molestiae accusantium.', 1, '2019-08-11 05:57:11', '2019-08-11 05:57:11'),
(187, 35, 'Prof. Clint Spencer', 'Aut quidem recusandae quas aut. Perspiciatis voluptatem vitae et harum sed porro temporibus nostrum. Rem et est quibusdam voluptatem vel nisi expedita. Nostrum iusto iste unde libero.', 2, '2019-08-11 05:57:11', '2019-08-11 05:57:11'),
(188, 40, 'Mina Stracke', 'Molestias aut numquam facere officiis. Cupiditate dolores accusantium ut quos. Autem atque similique nam perspiciatis cupiditate expedita. Quia sunt et sit saepe perferendis provident et.', 1, '2019-08-11 05:57:12', '2019-08-11 05:57:12'),
(189, 16, 'Orville Jaskolski V', 'Et saepe quis possimus et quos cum enim. Voluptatum reiciendis voluptates non atque. Unde esse voluptatem sed placeat aut sunt impedit. Rerum et neque consectetur vel aut voluptas sit. Enim qui ut quos quam aliquid accusantium voluptatem modi.', 3, '2019-08-11 05:57:12', '2019-08-11 05:57:12'),
(190, 29, 'Marcelo Feest', 'Repudiandae cum iusto ab libero officiis. Omnis qui sit amet ducimus. Aliquam occaecati optio pariatur nemo facere qui.', 0, '2019-08-11 05:57:12', '2019-08-11 05:57:12'),
(191, 46, 'Audie Franecki', 'Recusandae consequatur suscipit quia aut id sit sequi. Excepturi tenetur velit voluptas qui. A adipisci ratione harum quo et veritatis. Animi dolores libero temporibus voluptatem similique.', 0, '2019-08-11 05:57:12', '2019-08-11 05:57:12'),
(192, 11, 'Mrs. Nedra Ortiz Jr.', 'Cum omnis ipsam facilis soluta temporibus omnis in. Accusamus quisquam quo ipsam dolor omnis qui sapiente. Rerum quisquam perferendis qui eos. Aperiam consequatur commodi quia qui quo sit.', 5, '2019-08-11 05:57:12', '2019-08-11 05:57:12'),
(193, 41, 'Gregorio Pfeffer', 'Aliquid omnis et consequatur omnis illum harum. Temporibus cum possimus minima exercitationem tempore. Autem quia mollitia voluptas nihil occaecati id sint. Voluptatum quam explicabo et.', 5, '2019-08-11 05:57:12', '2019-08-11 05:57:12'),
(194, 20, 'Dean Morar', 'Est voluptatem assumenda recusandae nam voluptatum. Quod reiciendis rerum dolor corporis exercitationem voluptatibus. Accusantium sit praesentium dolor natus voluptatem. Quos voluptatum adipisci qui quas reiciendis asperiores eum molestiae.', 0, '2019-08-11 05:57:12', '2019-08-11 05:57:12'),
(195, 12, 'Mr. Joaquin Feest', 'Et velit dolor ipsam id consequuntur facere. Molestiae tempore ut eos odit. Corrupti aut ea cumque corrupti unde velit necessitatibus perspiciatis. Velit dolorem et quis dolor molestiae aut.', 0, '2019-08-11 05:57:13', '2019-08-11 05:57:13'),
(196, 50, 'Timothy Abernathy', 'Eaque eaque corporis in natus saepe a saepe. Occaecati omnis deserunt doloribus maxime. Doloremque quis impedit sit hic consequatur et. Nesciunt laudantium animi laudantium id repudiandae enim.', 4, '2019-08-11 05:57:13', '2019-08-11 05:57:13'),
(197, 41, 'Mr. Gaetano Russel MD', 'Vero rerum qui rerum omnis quasi. Rerum quo ratione laudantium quia quia. Dolor ut at voluptas ad optio ipsa minus.', 4, '2019-08-11 05:57:13', '2019-08-11 05:57:13'),
(198, 32, 'Vince Crooks', 'Accusamus harum qui dolore quia. Reprehenderit qui velit eum error tempora dolor consequatur. Laudantium saepe voluptas vel sit molestiae ducimus. Quod explicabo a possimus magnam debitis molestiae.', 5, '2019-08-11 05:57:13', '2019-08-11 05:57:13'),
(199, 28, 'Nella Conroy', 'Ratione officia iure aliquam perspiciatis. Ducimus voluptatem at ex error ullam est quo aperiam. Assumenda soluta minus adipisci enim harum excepturi.', 4, '2019-08-11 05:57:13', '2019-08-11 05:57:13'),
(200, 16, 'Cara Tillman', 'Consectetur quasi veritatis voluptatem quam. Repudiandae quia deleniti laboriosam itaque voluptatem velit beatae. Eum dolorem nisi voluptas vel ipsa.', 5, '2019-08-11 05:57:13', '2019-08-11 05:57:13'),
(201, 19, 'Dr. Walker Stoltenberg', 'Qui dolor ea qui omnis dolorem id beatae. Occaecati rerum et corporis eius aut. Eos ut fuga animi quia officia quibusdam. Ut nisi nemo iste odit ut tenetur reiciendis ex.', 0, '2019-08-11 05:57:13', '2019-08-11 05:57:13'),
(202, 18, 'Theresia Kautzer', 'Quae nulla sit rerum. Soluta hic mollitia nisi et. Tempora quisquam quos officiis exercitationem facere quia.', 4, '2019-08-11 05:57:14', '2019-08-11 05:57:14'),
(203, 39, 'Miss Amelia Ziemann DDS', 'Assumenda quia ut dicta ut perferendis dolorem. Quia incidunt dignissimos et aut. Est eos velit earum at aut maxime repellat necessitatibus.', 4, '2019-08-11 05:57:14', '2019-08-11 05:57:14'),
(204, 13, 'Novella Cole', 'Dolorem rerum totam molestiae aliquam. Repellat eos voluptas eveniet. Beatae labore enim blanditiis aut.', 3, '2019-08-11 05:57:14', '2019-08-11 05:57:14'),
(205, 22, 'Prof. Chanel Daniel III', 'Est nihil quam quos quia. Commodi ipsum enim itaque ut sunt in. Sit quis eos tenetur temporibus. Sapiente iusto quia incidunt incidunt. Sint facilis occaecati qui.', 3, '2019-08-11 05:57:14', '2019-08-11 05:57:14'),
(206, 33, 'Cecil Greenholt', 'Est quo praesentium a eos vitae eaque. Totam et rerum culpa assumenda cum.', 3, '2019-08-11 05:57:14', '2019-08-11 05:57:14');
INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(207, 25, 'Dr. Georgianna Hammes', 'Voluptas iure in qui recusandae accusamus velit dolores fugiat. Sed qui tenetur ut. Eos fugit et cum dolor.', 3, '2019-08-11 05:57:14', '2019-08-11 05:57:14'),
(208, 6, 'Electa Jenkins', 'Voluptates exercitationem iste et laboriosam. Exercitationem deleniti et odit minus est. Cumque eligendi ut neque qui est.', 3, '2019-08-11 05:57:15', '2019-08-11 05:57:15'),
(209, 23, 'Elisa Volkman', 'Sed nulla dolores perferendis tenetur quo similique. Alias ipsam porro dolorem excepturi qui et. Nostrum unde illum rerum tempore eligendi iste alias.', 4, '2019-08-11 05:57:16', '2019-08-11 05:57:16'),
(210, 13, 'Guadalupe Grimes', 'Eum recusandae odit inventore eligendi nulla sed et. Aliquid autem ea provident deleniti sit tenetur. Incidunt iure et et optio harum atque rem.', 1, '2019-08-11 05:57:16', '2019-08-11 05:57:16'),
(211, 30, 'Celestino Gaylord', 'Eveniet hic sit et ut consequatur enim et. Omnis dignissimos atque alias distinctio doloremque velit et. Molestiae ut magnam ad temporibus ratione. Nemo deserunt voluptatum ab quis voluptatem hic voluptatem. Optio placeat vel et.', 3, '2019-08-11 05:57:16', '2019-08-11 05:57:16'),
(212, 44, 'Edwin Funk', 'Sunt odio rerum consequatur dolorem amet. Doloremque deserunt et quae architecto maiores reprehenderit est deleniti. Repellat possimus laboriosam possimus nihil. Quibusdam numquam voluptatibus facere voluptatem molestiae molestiae sit.', 0, '2019-08-11 05:57:16', '2019-08-11 05:57:16'),
(213, 25, 'Aileen Doyle', 'Quo nobis aut et. Ducimus fugiat eum ut accusantium doloremque non suscipit. Aut qui ut non similique voluptate porro.', 1, '2019-08-11 05:57:16', '2019-08-11 05:57:16'),
(214, 25, 'Geovanny Effertz III', 'Quia sit deleniti vitae repudiandae. Est quis qui voluptates pariatur. Ea quia maxime sunt eum sunt nihil.', 4, '2019-08-11 05:57:16', '2019-08-11 05:57:16'),
(215, 26, 'Earlene Mills', 'Molestiae fuga nesciunt reiciendis dolores quo sint. Veniam quas sit dolor itaque deserunt. Et possimus voluptatem porro sit.', 2, '2019-08-11 05:57:17', '2019-08-11 05:57:17'),
(216, 38, 'Georgiana Murazik', 'Ratione voluptatem delectus eligendi sunt soluta repellat doloribus. Vel explicabo itaque a corporis maiores pariatur sint. Quo nam aut magni libero minus. Atque ea eveniet commodi id veritatis consequuntur rerum.', 0, '2019-08-11 05:57:17', '2019-08-11 05:57:17'),
(217, 17, 'Quentin Olson I', 'Laudantium nobis voluptatem illum et non natus. Vitae exercitationem doloremque voluptatem optio et quis. Possimus sint alias enim aut consequatur sit. Non eveniet magnam amet consequatur libero asperiores qui. Ad dolore perspiciatis incidunt placeat numquam.', 4, '2019-08-11 05:57:17', '2019-08-11 05:57:17'),
(218, 22, 'Ryan Gaylord PhD', 'Vitae nostrum et nostrum. Et qui sunt sunt qui. Odit sunt non quidem expedita ut rerum et hic.', 3, '2019-08-11 05:57:17', '2019-08-11 05:57:17'),
(219, 16, 'Miss Angelica Crist III', 'Dolorum non cum error laboriosam veniam iusto. Modi autem velit consequatur atque in suscipit illum nesciunt. Amet ab omnis ratione at illo quibusdam. Eos impedit totam ut id.', 0, '2019-08-11 05:57:17', '2019-08-11 05:57:17'),
(220, 36, 'Geovanni Connelly', 'Ut beatae dolorem nam est doloremque velit. Provident incidunt voluptatem non qui sit rerum assumenda architecto. Eaque alias laborum velit doloribus ut. Repellendus maxime officiis asperiores perferendis consequatur.', 0, '2019-08-11 05:57:18', '2019-08-11 05:57:18'),
(221, 9, 'Prof. Monserrate Marquardt DDS', 'Inventore eos itaque labore nihil quia. Autem nihil sed nihil ex asperiores. Sit nisi iusto dicta voluptatibus qui reiciendis qui.', 3, '2019-08-11 05:57:18', '2019-08-11 05:57:18'),
(222, 39, 'Jordan Leffler Sr.', 'Sequi soluta odio cumque nemo quia. Quisquam eum adipisci cupiditate aperiam hic. Neque nihil et ut voluptatibus molestiae. Voluptatum maiores pariatur laboriosam perferendis odio excepturi magnam.', 3, '2019-08-11 05:57:18', '2019-08-11 05:57:18'),
(223, 44, 'Oswald Botsford', 'Consequuntur ab quas dolorem ratione alias et. Veritatis ab nihil voluptatem. Et voluptas quod error id non repellat.', 4, '2019-08-11 05:57:18', '2019-08-11 05:57:18'),
(224, 37, 'Mr. Trace Botsford MD', 'Aut soluta perspiciatis dolor aut beatae ipsa adipisci. Consequuntur iste exercitationem non sed id consequatur et. Officiis et aperiam suscipit qui.', 5, '2019-08-11 05:57:19', '2019-08-11 05:57:19'),
(225, 31, 'Palma Jaskolski', 'Non cupiditate fugiat suscipit tempora. Et perspiciatis nostrum eaque eaque corrupti totam voluptas.', 0, '2019-08-11 05:57:19', '2019-08-11 05:57:19'),
(226, 36, 'Lindsay Willms', 'Molestiae fuga esse distinctio dignissimos enim voluptatem eum. Iure magni ratione recusandae eum vitae. Sit error nobis quae et qui.', 3, '2019-08-11 05:57:19', '2019-08-11 05:57:19'),
(227, 1, 'Dr. Julius Wolff MD', 'Fugiat inventore quia qui voluptates culpa quia facere. Doloremque exercitationem dolores aperiam. Est accusamus hic qui dolorem aliquam.', 1, '2019-08-11 05:57:20', '2019-08-11 05:57:20'),
(228, 16, 'Albina Daugherty', 'Molestiae laboriosam consectetur aliquam est itaque reprehenderit eum sit. Dolor in quibusdam suscipit at quis. Dolorum excepturi cupiditate magni. Iure est hic doloremque qui.', 0, '2019-08-11 05:57:20', '2019-08-11 05:57:20'),
(229, 3, 'Neha Gorczany', 'Dolores nihil unde corporis sint provident. Molestiae et quidem natus ipsa veritatis quisquam tempora. Ut odio iusto vero esse fuga sed occaecati. Omnis rem quia cupiditate voluptates blanditiis non.', 5, '2019-08-11 05:57:21', '2019-08-11 05:57:21'),
(230, 19, 'Amy Bins', 'Tempore autem quam expedita hic nisi qui quia. Non voluptas est corrupti aut delectus. Deserunt quos eum dolore nulla quia dolores. Culpa nemo explicabo in eos fugit. Ea reiciendis minima fugiat sed.', 1, '2019-08-11 05:57:21', '2019-08-11 05:57:21'),
(231, 1, 'Ivory Gleichner Jr.', 'Est molestias rem voluptas error. Similique ea aut et error ad vel.', 5, '2019-08-11 05:57:21', '2019-08-11 05:57:21'),
(232, 42, 'Trystan Leuschke', 'Inventore nemo iste sed et sed earum consequatur. Magnam sunt eum et beatae. Voluptate at fuga exercitationem libero.', 1, '2019-08-11 05:57:21', '2019-08-11 05:57:21'),
(233, 42, 'Mylene Hahn II', 'Ipsa possimus cupiditate aut pariatur at aspernatur sit. Ex aut eligendi suscipit fugiat et nisi. Id quas aut voluptatem. Temporibus numquam nobis voluptatem harum at et.', 5, '2019-08-11 05:57:21', '2019-08-11 05:57:21'),
(234, 25, 'Dr. Rachael Champlin DVM', 'Cum blanditiis illum ut suscipit magni ducimus. Aut nostrum ipsam numquam. Velit sit voluptas in sequi aut.', 4, '2019-08-11 05:57:21', '2019-08-11 05:57:21'),
(235, 46, 'Raymundo Hirthe', 'Officiis et perspiciatis iusto iure. Eaque perspiciatis harum sit reprehenderit corrupti eveniet vitae. Laudantium aut animi debitis et neque molestias reprehenderit. Est facere explicabo repellat ea eos aliquid.', 4, '2019-08-11 05:57:22', '2019-08-11 05:57:22'),
(236, 12, 'Raphaelle Bradtke', 'Sed dolorem voluptate enim dolorem fuga hic similique. Nihil fugit vel voluptatem deserunt. Maxime laborum et ipsum natus accusamus. Aut praesentium quos voluptatem libero repellat architecto possimus.', 1, '2019-08-11 05:57:22', '2019-08-11 05:57:22'),
(237, 48, 'Dylan DuBuque', 'Sunt laboriosam dolores praesentium ea consectetur debitis. Recusandae earum expedita quo dolore sapiente vitae nostrum a. Facere blanditiis maiores quia facere totam veniam.', 1, '2019-08-11 05:57:22', '2019-08-11 05:57:22'),
(238, 47, 'Ariane Bode', 'Error hic quia dicta tenetur. Magnam quia culpa eos error ullam soluta ut. Eveniet reiciendis illum totam praesentium corrupti nobis. Rem consequatur laboriosam voluptatem ea magni.', 3, '2019-08-11 05:57:22', '2019-08-11 05:57:22'),
(239, 50, 'Landen Schamberger', 'Enim consequatur adipisci incidunt veniam. Veritatis id provident esse nisi molestias qui asperiores architecto. Et error ex totam cumque commodi et et cumque. Assumenda ducimus molestiae reprehenderit consequatur sed aut quae.', 5, '2019-08-11 05:57:22', '2019-08-11 05:57:22'),
(240, 28, 'Tessie Fritsch', 'Officia quis quaerat in facere aut reiciendis. Illum delectus eveniet consequatur vero neque libero perspiciatis. Numquam voluptatibus saepe et nobis cumque et ipsa.', 3, '2019-08-11 05:57:23', '2019-08-11 05:57:23'),
(241, 42, 'Mona Pollich', 'Cupiditate repellendus molestiae est expedita et occaecati iure. Dolores doloremque consequatur id aspernatur repellendus. Quaerat iure possimus delectus incidunt dicta at id qui. Aut neque accusamus modi.', 3, '2019-08-11 05:57:23', '2019-08-11 05:57:23'),
(242, 2, 'Margret Romaguera', 'Labore laboriosam autem quidem quo eligendi. Commodi ut sit accusantium. Perferendis et ipsum amet inventore dolor maiores reiciendis recusandae.', 4, '2019-08-11 05:57:24', '2019-08-11 05:57:24'),
(243, 5, 'Columbus O\'Conner', 'Quo accusantium et quaerat aliquam. Sunt et saepe excepturi reiciendis repellendus non rerum. Nulla quo impedit ullam. Qui sunt temporibus ea eligendi cum dolorum.', 2, '2019-08-11 05:57:24', '2019-08-11 05:57:24'),
(244, 27, 'Adriel Crooks', 'Voluptatem excepturi beatae aliquam quia porro error et. Officia necessitatibus ut repellendus qui quidem.', 0, '2019-08-11 05:57:24', '2019-08-11 05:57:24'),
(245, 30, 'Miss Elmira Rippin DVM', 'Impedit ut quia sit ullam non ratione at. Voluptatum animi nobis qui et fugit accusamus. Et exercitationem sunt ad.', 1, '2019-08-11 05:57:24', '2019-08-11 05:57:24'),
(246, 24, 'Carmella Nikolaus', 'Et deserunt eos libero quibusdam. Laborum tempore nesciunt aut dicta nisi quo. Ipsum voluptatem et et dolor error neque quaerat quia.', 5, '2019-08-11 05:57:24', '2019-08-11 05:57:24'),
(247, 28, 'Sonia Effertz', 'Unde excepturi beatae dignissimos ab tempore sequi quia. Suscipit vel maxime aut provident. Officiis consectetur facere et non.', 5, '2019-08-11 05:57:25', '2019-08-11 05:57:25'),
(248, 27, 'Carolyn Haag', 'Rerum sed fugit distinctio laborum. Qui porro placeat aspernatur dolorum odit excepturi. Animi eos in hic dolorem repudiandae ut et. Ut nulla eligendi deleniti ipsa sint laudantium. Velit qui excepturi eligendi ab voluptates adipisci saepe.', 2, '2019-08-11 05:57:25', '2019-08-11 05:57:25'),
(249, 20, 'Monique Hagenes I', 'Aut distinctio quod sit modi ut. Ipsam eum ducimus nisi qui animi. Qui praesentium iusto rerum laboriosam dolor. Aut quaerat laudantium fugit eum possimus totam molestiae.', 5, '2019-08-11 05:57:25', '2019-08-11 05:57:25'),
(250, 15, 'Sandy Williamson', 'Et amet doloremque in magni quod. Soluta voluptatem ut consequatur cumque repellendus nam laboriosam. Saepe modi asperiores ipsa error.', 2, '2019-08-11 05:57:25', '2019-08-11 05:57:25'),
(251, 23, 'Bethel Rice', 'Totam itaque cumque praesentium quia sequi. Eum odit harum velit iure facere nisi autem delectus. Et molestiae odit sed voluptatem. Quisquam commodi illum id.', 1, '2019-08-11 05:57:26', '2019-08-11 05:57:26'),
(252, 26, 'Meda Schimmel', 'Perspiciatis earum laboriosam ut quia officia. Sapiente laboriosam dolore est libero ratione quo quod. Velit ut et maiores cupiditate dolore ullam. Tempore et nisi molestiae ut placeat ex necessitatibus.', 1, '2019-08-11 05:57:26', '2019-08-11 05:57:26'),
(253, 39, 'Kacie Hessel', 'Sed molestiae impedit assumenda dolorum. Voluptatum labore cupiditate enim molestiae. Vel minus similique atque ipsum.', 3, '2019-08-11 05:57:26', '2019-08-11 05:57:26'),
(254, 21, 'Pinkie Sporer PhD', 'Ex et voluptatem assumenda voluptas nisi. Et ut dolor architecto sint eum repellendus ipsum. Hic quos possimus perferendis qui rem similique. Saepe nihil molestiae et autem facilis.', 3, '2019-08-11 05:57:27', '2019-08-11 05:57:27'),
(255, 46, 'Nola Ryan', 'Consequatur non sed nobis. Voluptas consequatur voluptas provident ut libero itaque magni. Esse quibusdam dicta magni modi tempore nulla.', 4, '2019-08-11 05:57:27', '2019-08-11 05:57:27'),
(256, 40, 'Miss Camila Herman IV', 'Doloremque voluptas nihil animi nulla ut. Eum odit illo in a. Tenetur ut et voluptatibus. Iusto rerum voluptatibus labore natus qui totam.', 2, '2019-08-11 05:57:27', '2019-08-11 05:57:27'),
(257, 17, 'Dr. Jamal Gerlach', 'Voluptatem blanditiis fuga minima ut nesciunt vel molestias possimus. Porro voluptas harum quia. Perferendis voluptate voluptates molestiae excepturi tempore officiis repellendus. Necessitatibus quo ipsam ut. Nihil quasi assumenda enim unde quis.', 1, '2019-08-11 05:57:27', '2019-08-11 05:57:27'),
(258, 33, 'Mr. Ewald Nicolas', 'Tempore voluptates ducimus ad enim ut. Cum libero veritatis libero qui ut et qui. Doloremque qui enim aut laborum et mollitia quis ab.', 5, '2019-08-11 05:57:27', '2019-08-11 05:57:27'),
(259, 20, 'Mrs. Emmie Tremblay', 'Debitis quia nulla quae id accusantium vel. Voluptatibus recusandae ipsa ut eum. Quasi reprehenderit minima cum iure perferendis est.', 5, '2019-08-11 05:57:27', '2019-08-11 05:57:27'),
(260, 5, 'Nina Wolf', 'Pariatur exercitationem quibusdam laborum id qui nulla consectetur. Quia aliquam veritatis eius ea at exercitationem. Repellendus cupiditate natus nostrum beatae explicabo nostrum labore aut.', 1, '2019-08-11 05:57:28', '2019-08-11 05:57:28'),
(261, 30, 'Stella Hudson', 'Optio reiciendis distinctio adipisci quia eligendi cum. Ut et voluptate voluptatem est architecto. Hic eveniet dicta et dolore non.', 4, '2019-08-11 05:57:28', '2019-08-11 05:57:28'),
(262, 39, 'Sven Bernhard', 'Qui labore odio sapiente recusandae nihil est. Officiis facere qui architecto qui odio modi. Iusto debitis facilis debitis qui. Quo enim omnis non voluptas dignissimos accusamus.', 2, '2019-08-11 05:57:28', '2019-08-11 05:57:28'),
(263, 5, 'Dorcas Ferry', 'Praesentium est qui iste exercitationem. Non culpa ut omnis qui illum.', 4, '2019-08-11 05:57:28', '2019-08-11 05:57:28'),
(264, 39, 'Prof. Vada Johns DDS', 'Expedita voluptatem non blanditiis distinctio provident qui totam ipsam. Error qui labore maxime accusamus. Est veniam et placeat.', 3, '2019-08-11 05:57:28', '2019-08-11 05:57:28'),
(265, 23, 'Chloe Kulas', 'Voluptas repellendus molestiae voluptates aut. Veritatis et culpa ipsam eos commodi est vitae. Qui ut quae autem eum atque perferendis non. Et et voluptatem ipsum quas molestiae id.', 2, '2019-08-11 05:57:28', '2019-08-11 05:57:28'),
(266, 44, 'Gustave Keebler DDS', 'Dolores ab voluptatem et doloribus debitis eos aliquam. Unde error sunt nesciunt qui distinctio excepturi quo. Iusto sit fugiat blanditiis cumque est reprehenderit consectetur. Ut natus voluptatem dicta repudiandae.', 4, '2019-08-11 05:57:28', '2019-08-11 05:57:28'),
(267, 17, 'Miss Jammie Kuhic', 'Et repellendus laudantium expedita nulla quisquam. Consequatur id vel iusto beatae omnis enim iste est. Voluptas natus molestias est libero maxime ullam enim. Labore eligendi incidunt ipsam qui voluptatem aut et neque.', 0, '2019-08-11 05:57:29', '2019-08-11 05:57:29'),
(268, 26, 'Jocelyn Nicolas', 'Eos sint aliquid facilis ut. Perferendis ab accusantium aut qui iure. Eveniet at eius ut in.', 3, '2019-08-11 05:57:29', '2019-08-11 05:57:29'),
(269, 42, 'Rubye Lang DDS', 'Voluptatibus qui eos totam magni maxime. Ratione quasi eligendi minus corrupti repudiandae ratione ut. Neque odio sint sapiente beatae eum tenetur rerum quis.', 5, '2019-08-11 05:57:29', '2019-08-11 05:57:29'),
(270, 37, 'Teagan Stokes', 'Suscipit iure ab reprehenderit sed perferendis tempora. Earum facilis cumque quidem officia. Reiciendis non et iure quasi sint sed.', 0, '2019-08-11 05:57:29', '2019-08-11 05:57:29'),
(271, 12, 'Prof. Ola Heaney', 'Pariatur suscipit doloribus pariatur delectus aut omnis. Fugit quis est sit omnis quas. Quisquam quas rem asperiores. Qui accusamus debitis animi.', 5, '2019-08-11 05:57:30', '2019-08-11 05:57:30'),
(272, 42, 'Kiana Goyette', 'Corporis et perspiciatis ipsa fugiat dicta culpa. Totam ut alias autem fugiat esse ducimus. Beatae blanditiis eveniet tempore doloribus.', 4, '2019-08-11 05:57:30', '2019-08-11 05:57:30'),
(273, 6, 'Alfonso Tremblay', 'Et quia esse laborum dolores minus. Necessitatibus saepe nesciunt esse voluptas odit est. A ut est provident. At a fuga quos. Fugit ad ducimus veritatis expedita quae rem.', 1, '2019-08-11 05:57:30', '2019-08-11 05:57:30'),
(274, 30, 'Prof. Chauncey Ondricka V', 'Qui quia dolorem voluptate a. Sed pariatur blanditiis vitae iure culpa libero et. Rem quo totam eaque ut consequuntur recusandae nostrum. Omnis incidunt minus ut voluptatibus est molestiae voluptatibus.', 5, '2019-08-11 05:57:30', '2019-08-11 05:57:30'),
(275, 39, 'Dr. Greg Casper', 'Sit unde dolores voluptas modi maxime. Cum reiciendis et quidem nostrum sint. Iusto nam veniam omnis enim eius placeat animi. Nulla aut eveniet molestiae ipsam eius rerum.', 1, '2019-08-11 05:57:30', '2019-08-11 05:57:30'),
(276, 50, 'Blanca Schneider', 'Suscipit quidem dolorem consectetur voluptatem. Autem modi illo ea. Sapiente perferendis possimus incidunt ut esse facere voluptas perspiciatis. At illo autem voluptatum deleniti. Sunt pariatur quia porro.', 5, '2019-08-11 05:57:30', '2019-08-11 05:57:30'),
(277, 43, 'Jeffrey Sporer', 'Velit veniam error cupiditate natus. Modi repellendus magnam nemo dicta. Velit eos eligendi voluptatibus consequuntur.', 0, '2019-08-11 05:57:30', '2019-08-11 05:57:30'),
(278, 28, 'Dr. Cory Denesik', 'Velit autem omnis eaque est. Ratione debitis aperiam sed iure quo pariatur occaecati.', 2, '2019-08-11 05:57:31', '2019-08-11 05:57:31'),
(279, 1, 'Myra Grimes', 'Repellat aliquid esse minus tempore. Adipisci molestiae dolor quo consequuntur unde. Eos labore aliquam dolorem enim.', 5, '2019-08-11 05:57:31', '2019-08-11 05:57:31'),
(280, 18, 'Lazaro Schneider', 'Inventore ipsam neque nemo incidunt quia delectus. Occaecati est quo quia explicabo aut ab id alias. Et ipsam hic hic mollitia voluptatem.', 4, '2019-08-11 05:57:31', '2019-08-11 05:57:31'),
(281, 44, 'Ariane Gerlach', 'Aliquid corporis rerum quia alias magni possimus eos. Et necessitatibus eveniet aliquam voluptatibus beatae aut.', 1, '2019-08-11 05:57:31', '2019-08-11 05:57:31'),
(282, 44, 'Clint Bashirian', 'Rerum quibusdam ad pariatur. Rerum sunt et soluta eos dignissimos perferendis incidunt doloremque. Vitae sit est voluptas vel natus quia pariatur.', 0, '2019-08-11 05:57:31', '2019-08-11 05:57:31'),
(283, 29, 'Cooper Hagenes Jr.', 'Omnis quaerat quia numquam tempore nemo quos debitis. Totam dignissimos rerum vitae iusto iste quasi.', 5, '2019-08-11 05:57:32', '2019-08-11 05:57:32'),
(284, 24, 'Dr. Herbert Beer', 'Nulla et consectetur doloribus aut et. Sed neque adipisci sint quia. Ab exercitationem mollitia tempora placeat nihil rerum.', 1, '2019-08-11 05:57:33', '2019-08-11 05:57:33'),
(285, 10, 'Ladarius Grimes MD', 'Quod dolorem tenetur itaque praesentium. Totam et tempora amet eos accusamus. Eveniet sed mollitia eos fuga. Libero non excepturi quia. Quae reiciendis ut voluptatibus eum labore ut est quia.', 4, '2019-08-11 05:57:33', '2019-08-11 05:57:33'),
(286, 30, 'Valentin O\'Reilly', 'Cum fuga non dignissimos cumque et saepe. Veniam nam eius rerum quasi atque. Neque dolor et ipsam dolor. Ab dolor minima et ut necessitatibus illum vel.', 3, '2019-08-11 05:57:33', '2019-08-11 05:57:33'),
(287, 35, 'Dr. Jarvis Kovacek V', 'Qui sed provident minus illo magni. Veritatis minus perferendis dolore corrupti ut harum praesentium. Velit tempora perspiciatis asperiores debitis autem.', 2, '2019-08-11 05:57:33', '2019-08-11 05:57:33'),
(288, 31, 'Margarete Schimmel', 'Minus consectetur vitae hic voluptates sit nam enim. Ut neque nostrum nemo inventore accusantium. Corrupti officia autem fuga et quia odit error.', 5, '2019-08-11 05:57:33', '2019-08-11 05:57:33'),
(289, 23, 'Janelle Stanton', 'Ducimus quaerat et nam nobis animi rerum quia non. Praesentium et consequatur libero natus blanditiis.', 2, '2019-08-11 05:57:33', '2019-08-11 05:57:33'),
(290, 41, 'Dr. Lilliana Kemmer DVM', 'Ipsa molestias necessitatibus sed est. Qui itaque dolorem numquam vero. Non non veritatis similique facere sunt explicabo similique dolor. Quia repellendus maiores tempore occaecati temporibus eveniet quos.', 5, '2019-08-11 05:57:34', '2019-08-11 05:57:34'),
(291, 4, 'Colt Nikolaus', 'Odio est quisquam natus rerum excepturi aut blanditiis. Sit eveniet dignissimos doloremque esse rem qui mollitia dolores. Vel quidem aliquid et sed cumque.', 0, '2019-08-11 05:57:34', '2019-08-11 05:57:34'),
(292, 49, 'Dr. Gust Bashirian I', 'Sit nam quo nobis consequuntur. Expedita aut nihil dicta corporis.', 3, '2019-08-11 05:57:34', '2019-08-11 05:57:34'),
(293, 18, 'Miss Lenna Christiansen', 'Et aliquid voluptatem natus accusantium aut qui consequatur. Commodi eos cum dignissimos nesciunt. Repudiandae ab non eum.', 5, '2019-08-11 05:57:34', '2019-08-11 05:57:34'),
(294, 33, 'Marlee Krajcik', 'Id quia suscipit quasi. Qui ducimus quo fuga quasi amet sapiente quis. Harum autem omnis odit eum. Fugit aut iusto laborum molestias necessitatibus molestias sit itaque.', 4, '2019-08-11 05:57:34', '2019-08-11 05:57:34'),
(295, 44, 'Emmalee Conn Jr.', 'Rerum hic illum pariatur molestiae omnis in. Reprehenderit quis illo saepe perspiciatis. Vitae cumque beatae at sed quisquam. Aliquid dolores error officia quaerat mollitia doloremque est.', 3, '2019-08-11 05:57:34', '2019-08-11 05:57:34'),
(296, 7, 'Joelle Schuppe', 'Tempora corporis voluptatum est et et quisquam. Ab numquam et commodi. Aut ut dolorum omnis expedita.', 0, '2019-08-11 05:57:34', '2019-08-11 05:57:34'),
(297, 14, 'Deon Flatley DDS', 'Necessitatibus sint laborum iure quo dolorem et ut. Reprehenderit culpa vitae molestiae aliquid reprehenderit quis cum eum. Aliquid voluptatem officia esse dolorem.', 1, '2019-08-11 05:57:34', '2019-08-11 05:57:34'),
(298, 8, 'Prof. Donato Maggio', 'Vel veniam ut consequatur est qui. A non omnis qui voluptas molestiae. Nulla ut nihil architecto. Fugit illum dolorem quis delectus fuga minus velit.', 4, '2019-08-11 05:57:35', '2019-08-11 05:57:35'),
(299, 31, 'Darwin Deckow', 'Aperiam animi consequatur maxime atque ex saepe. Commodi sunt nobis ducimus et in. Animi molestiae voluptatem animi. Sed ut aut laudantium numquam dicta ut.', 3, '2019-08-11 05:57:35', '2019-08-11 05:57:35'),
(300, 6, 'Dr. Jettie Gulgowski III', 'Officiis eaque error perspiciatis voluptatem. Fuga et voluptates sapiente voluptas et autem blanditiis quia. Minus illum sit velit corporis voluptas et deleniti neque. Praesentium natus aut ea quaerat saepe repellendus.', 4, '2019-08-11 05:57:35', '2019-08-11 05:57:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Colby Emmerich', 'granville59@example.net', '2019-08-11 05:56:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nnysU1Oocm', '2019-08-11 05:56:23', '2019-08-11 05:56:23'),
(2, 'Ned Murray Jr.', 'rbode@example.com', '2019-08-11 05:56:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M8mixjaZDj', '2019-08-11 05:56:23', '2019-08-11 05:56:23'),
(3, 'Miss Priscilla Vandervort', 'forrest06@example.net', '2019-08-11 05:56:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4uGDTuivaT', '2019-08-11 05:56:24', '2019-08-11 05:56:24'),
(4, 'Hope Mosciski', 'damian.boyle@example.com', '2019-08-11 05:56:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wPvDuLDYIV', '2019-08-11 05:56:24', '2019-08-11 05:56:24'),
(5, 'Prof. Isidro Pollich MD', 'barbara.hickle@example.net', '2019-08-11 05:56:23', '$2y$10$M42MAfQUJ/..rRW3p0mgHep.VeOGvj4lEzt1kTIhGwja58UOBoWE6', 'Uq1UtslfpX', '2019-08-11 05:56:24', '2019-08-11 05:56:24'),
(6, 'Yan Aung', 'yanaung85@gmail.com', NULL, '$2y$10$M42MAfQUJ/..rRW3p0mgHep.VeOGvj4lEzt1kTIhGwja58UOBoWE6', NULL, '2019-08-11 06:11:13', '2019-08-11 06:11:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_index` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
