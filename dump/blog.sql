-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 12 2022 г., 17:43
-- Версия сервера: 10.4.19-MariaDB
-- Версия PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Marketing', 'marketing', '2022-02-07 08:41:55', '2022-02-07 08:41:55'),
(2, 'Make Money', 'make-money', '2022-02-07 08:42:09', '2022-02-07 08:42:09');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2022_02_04_202844_create_categories_table', 1),
(12, '2022_02_04_203037_create_tags_table', 1),
(13, '2022_02_04_203050_create_posts_table', 1),
(14, '2022_02_04_203247_create_post_tag_table', 1),
(15, '2022_02_06_151830_alter_table_users_add_isadmin', 2),
(16, '2022_02_07_160011_alter_table_posts_add_title_index', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
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
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `view` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `description`, `content`, `category_id`, `view`, `thumbnail`, `created_at`, `updated_at`) VALUES
(1, 'You can learn how to make money with your blog and videos', 'you-can-learn-how-to-make-money-with-your-blog-and-videos', '<p>Aenean interdum arcu blandit, vehicula magna non, placerat elit. Mauris et pharetratortor. Suspendissea sodales urna. In at augue elit. Vivamus enimcerat elicerat eli nibh, maximus ac felis nec, maximus tempor odio.</p>', '<p style=\"text-align:justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vitae rhoncus eros. Vivamus in aliquam arcu, sed eleifend velit. Duis vitae augue bibendum, consequat dolor at, vestibulum enim. Curabitur vehicula nibh felis, eu pharetra enim feugiat ut. Donec sed posuere urna. Aliquam vehicula accumsan neque, nec semper augue scelerisque sed. Aenean eu varius tellus. Pellentesque aliquet nibh a odio pellentesque semper. Vivamus dignissim est eget nunc convallis, vestibulum viverra ligula vehicula. Nam feugiat hendrerit massa, et elementum felis auctor non. Ut nibh ipsum, sollicitudin sed fermentum id, dignissim nec ante. Nunc volutpat elementum neque quis placerat. Vivamus posuere venenatis purus, id tincidunt neque consectetur nec. Suspendisse volutpat arcu at suscipit vulputate. Curabitur sit amet lobortis libero, ut efficitur dolor.</p><p style=\"text-align:justify;\">Etiam pharetra ante metus, a finibus turpis ultrices nec. Quisque ultricies mollis mattis. Etiam tincidunt mauris venenatis elit tempus tempor. Cras tristique turpis quis magna bibendum, eu porttitor neque feugiat. Nunc a molestie ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Duis venenatis ornare augue, eget venenatis erat efficitur in. Sed vehicula, ex molestie fringilla sodales, dolor velit tincidunt magna, eu rhoncus leo nisi ut sem. Integer pellentesque neque ultricies, porta enim quis, aliquam nibh. Suspendisse sit amet urna hendrerit, varius purus mattis, malesuada quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. In vehicula eget magna quis pretium.</p><p style=\"text-align:justify;\">Nam euismod pellentesque porttitor. Praesent quis mi quis elit fermentum dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum bibendum massa imperdiet elit ultrices rutrum. Vestibulum venenatis nisi vel ipsum dictum maximus. Mauris vitae bibendum elit. Aliquam consectetur, orci pulvinar scelerisque porta, neque orci congue dui, eget consequat enim mi ut felis. Fusce eu tincidunt nunc.</p><p style=\"text-align:justify;\">Donec non ullamcorper odio, eget consectetur ipsum. Aliquam erat volutpat. Nulla non erat viverra, molestie sapien et, scelerisque mauris. Donec at mi egestas, suscipit sapien sit amet, posuere mauris. Fusce accumsan ipsum quis nisi bibendum ultrices. Donec rhoncus iaculis semper. Nam et lorem vitae odio efficitur varius. In a dolor augue. Cras in justo luctus, condimentum ex a, consequat diam. Etiam sodales lacinia convallis. Nullam eleifend purus nisl, eget rhoncus quam eleifend id. In lorem nisl, tempus ac pretium eget, scelerisque in orci.</p><p style=\"text-align:justify;\">Quisque ex orci, molestie vitae est ac, consequat aliquam enim. Nulla facilisi. Nullam consectetur erat a odio vehicula, quis fermentum purus tincidunt. Vestibulum quis magna felis. Nullam sollicitudin egestas mattis. Pellentesque sed vestibulum mauris, id ullamcorper lectus. Mauris ultrices sapien eget quam sollicitudin, a sagittis sem lobortis. Ut ornare laoreet massa non sodales. Duis eros nulla, semper id diam id, venenatis consectetur erat. Vestibulum sit amet luctus magna.</p>', 2, 8, 'images/2022-02-07/LlAB8GhtP3OtxpEQ2ohYSuLDjbH45vMfK0luFxc5.jpg', '2022-02-07 08:48:22', '2022-02-07 11:50:27'),
(2, 'The way to reach hundreds of thousands of customers is through the SEO', 'the-way-to-reach-hundreds-of-thousands-of-customers-is-through-the-seo', '<p>Aenean interdum arcu blandit, vehicula magna non, placerat elit. Mauris et pharetratortor. Suspendissea sodales urna. In at augue elit. Vivamus enimcerat elicerat eli nibh, maximus ac felis nec, maximus tempor odio.</p>', '<p style=\"text-align:justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam iaculis quam ac eros elementum, nec suscipit est mollis. Praesent ultrices dolor diam, nec sollicitudin enim viverra sed. Maecenas nunc diam, dapibus ac arcu vel, mattis sollicitudin elit. Etiam nec velit blandit dui dapibus venenatis vulputate ut nibh. Nunc et risus nec purus faucibus consequat. Aenean quam nulla, varius nec gravida vitae, consequat quis lorem. Fusce consectetur ipsum augue, ut convallis turpis tempor ut. Suspendisse luctus erat at condimentum efficitur.</p><p style=\"text-align:justify;\">Fusce rutrum, metus a consectetur mattis, mauris dui facilisis neque, nec dapibus felis neque vel quam. Sed imperdiet, ante eget congue lobortis, nulla felis tincidunt lorem, ut maximus ex risus vitae risus. Curabitur tempor nibh sed mauris tempor interdum. Mauris vitae libero convallis, aliquam nibh eget, accumsan mauris. Vivamus at rhoncus ipsum, eget auctor velit. Aliquam tristique ante et leo aliquet, ut finibus libero varius. Aliquam laoreet sem sed lectus viverra, non tempus nulla tincidunt. Nam eu tristique nibh.</p><p style=\"text-align:justify;\">Pellentesque vel vestibulum magna. Donec id tincidunt velit. Integer consectetur sem quis nisl pretium egestas id vel magna. Nulla mollis odio eget tempus efficitur. Curabitur mollis nibh eget justo consequat viverra. Maecenas mauris ipsum, ultricies ac leo sit amet, ultrices blandit nisl. Etiam at egestas odio. Vivamus nunc urna, auctor quis lacus quis, facilisis ultrices sem. Aliquam erat volutpat. Aliquam erat volutpat. Aenean volutpat, dui fringilla laoreet gravida, mauris nisi aliquam mauris, id molestie purus metus in ex. Aliquam tristique tincidunt consequat.</p>', 2, 0, 'images/2022-02-07/rQGLE4VXI5IURpanupujmj6bWVeIRreDSGe6QOkd.jpg', '2022-02-07 08:50:24', '2022-02-07 08:50:24'),
(3, 'Ways to reach the world through mobile phones', 'ways-to-reach-the-world-through-mobile-phones', '<p>Aenean interdum arcu blandit, vehicula magna non, placerat elit. Mauris et pharetratortor. Suspendissea sodales urna. In at augue elit. Vivamus enimcerat elicerat eli nibh, maximus ac felis nec, maximus tempor odio.</p>', '<p style=\"text-align:justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eu augue vulputate, rhoncus ipsum eu, condimentum lectus. Etiam tincidunt tellus at nibh congue, vitae feugiat mi suscipit. Mauris ultrices cursus arcu, et iaculis neque auctor sed. Donec id arcu eu metus maximus sagittis eget nec ligula. Proin tempus maximus ligula, eu ultricies quam tristique et. Praesent vehicula tortor dui, sit amet hendrerit neque mollis et. Quisque cursus at lectus ac consequat. Duis velit lacus, egestas ut fermentum ut, fermentum id justo. Praesent sit amet tellus quis diam sagittis accumsan. Nunc finibus commodo aliquet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p><p style=\"text-align:justify;\">Integer venenatis orci lectus, et venenatis neque pulvinar ut. Duis vitae mauris posuere, congue purus nec, porta tortor. Ut ac mauris nec velit fringilla mattis eu eu odio. Pellentesque sit amet molestie enim. Praesent vitae nulla et urna fringilla viverra efficitur nec velit. Nullam sodales leo metus, et rhoncus dolor fermentum a. Aenean iaculis sapien eu velit molestie, nec auctor ipsum ornare. Fusce fermentum felis ac nunc gravida ullamcorper. Morbi posuere placerat tempor.</p><p style=\"text-align:justify;\">In nec neque hendrerit dolor volutpat feugiat vel sed erat. Duis volutpat, urna sit amet posuere dapibus, sapien sapien iaculis eros, id rutrum erat purus vitae ligula. Proin feugiat, est eget lobortis pharetra, diam velit posuere erat, bibendum faucibus diam lectus eu nunc. Pellentesque tincidunt venenatis fringilla. Nunc faucibus justo in dignissim pretium. Aenean velit urna, finibus non nisi non, pellentesque bibendum libero. Donec interdum lacus eu metus varius, non elementum ante semper. Praesent ac congue nibh. Proin pellentesque ex eget malesuada gravida. Sed ut faucibus lectus. Nunc ipsum arcu, ultricies id ipsum ac, elementum accumsan quam. Maecenas et lectus neque. Aliquam semper nibh vel sapien fermentum, nec vestibulum neque eleifend.</p><p style=\"text-align:justify;\">Fusce ac erat est. Sed non lectus eros. Donec in rhoncus justo. Nunc tempus tellus in elementum suscipit. Nulla feugiat nibh eget ipsum gravida aliquet. In vulputate ultricies egestas. Maecenas ut rutrum dolor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec egestas neque at sem pretium, sed aliquet neque molestie. Morbi metus sem, pulvinar ut condimentum a, placerat a risus. Vivamus at ante ante. Pellentesque vehicula, magna in vestibulum scelerisque, odio arcu viverra sem, vel luctus neque velit nec nisl. Nam iaculis bibendum nisi, a ullamcorper ligula consectetur sed. Aliquam egestas condimentum tellus. Donec volutpat placerat volutpat.</p>', 1, 0, 'images/2022-02-07/ghx9lFVt7qVEPiIQTTtl3oKvLYmXJ4cZcAHEw561.jpg', '2022-02-07 08:50:58', '2022-02-07 08:50:58'),
(4, 'Would you like to work as a freelancer for lifetime?', 'would-you-like-to-work-as-a-freelancer-for-lifetime', '<p>Aenean interdum arcu blandit, vehicula magna non, placerat elit. Mauris et pharetratortor. Suspendissea sodales urna. In at augue elit. Vivamus enimcerat elicerat eli nibh, maximus ac felis nec, maximus tempor odio.</p>', '<p style=\"text-align:justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis ipsum est. Quisque porttitor nibh quis lectus blandit, quis pretium nisi vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi commodo, elit in pretium convallis, purus mauris tempor odio, aliquam bibendum risus turpis ac tellus. Etiam sodales felis eget elit egestas pretium. Sed sem quam, faucibus eu lorem ac, convallis convallis velit. Nulla laoreet eros quis mauris facilisis porta. Fusce malesuada nec nunc sit amet sagittis. Nullam pharetra porttitor porta. Vestibulum quis convallis velit, et tincidunt neque. Sed ornare elit non nisi congue tincidunt. Proin nec lectus eget urna fringilla blandit hendrerit quis ipsum.</p><p style=\"text-align:justify;\">Duis faucibus urna eget molestie suscipit. Mauris at leo at tellus elementum hendrerit. Phasellus quis risus fringilla, auctor felis id, cursus dolor. Praesent elit justo, imperdiet sit amet elit quis, placerat semper nunc. Fusce sollicitudin risus id vestibulum convallis. Fusce et felis eu nisi euismod venenatis. Pellentesque accumsan enim quis ipsum sollicitudin, id pretium nulla lobortis. Curabitur ipsum est, varius sit amet cursus quis, consequat vel leo. Nulla sem mi, molestie vel congue sit amet, tincidunt eget quam.</p><p style=\"text-align:justify;\">Cras sagittis porta posuere. Nulla ac arcu id sem varius mattis cursus ac lectus. Maecenas vulputate arcu id sem convallis, vitae imperdiet justo gravida. Vestibulum a feugiat elit, in volutpat mauris. Pellentesque porttitor, lacus pellentesque luctus condimentum, enim justo tincidunt ipsum, id congue risus mi eget leo. Integer sed arcu ullamcorper, sodales quam nec, egestas ligula. Proin at vestibulum nunc. Cras tristique id magna vel fermentum. Pellentesque bibendum, est eget vulputate vehicula, leo mauris molestie erat, nec euismod nisl nunc eget est. Donec non purus lacus. In hac habitasse platea dictumst. Quisque mollis gravida neque, at iaculis justo rhoncus sed. Etiam tincidunt erat tortor, eu varius diam maximus vitae. Aenean tincidunt nibh nulla, a placerat lectus rutrum vel.</p><p style=\"text-align:justify;\">Sed vel lobortis dui. Maecenas vitae massa ac quam ultrices vulputate eu at lacus. Aenean viverra leo id vehicula efficitur. Aliquam volutpat ac erat at sagittis. Curabitur vel arcu velit. Donec iaculis, purus ac consectetur rutrum, elit enim tristique lorem, eget vehicula dolor nisi vestibulum tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam erat volutpat. Fusce efficitur justo elementum, fermentum neque ac, luctus libero. Duis vitae magna a lorem dignissim finibus. Proin quis posuere eros. Sed ac neque non est lobortis tempor. Phasellus sit amet viverra ipsum. Maecenas eu sagittis velit.</p><p style=\"text-align:justify;\">Vivamus semper enim non mauris venenatis blandit. Nulla egestas mauris viverra lacus eleifend, nec varius eros suscipit. Praesent maximus, leo vel ultrices venenatis, felis eros scelerisque lectus, in vehicula lorem erat ut tellus. Maecenas lacinia, velit sed ultrices hendrerit, augue sapien lacinia tellus, ac scelerisque augue nisi id nulla. Duis et diam rhoncus, facilisis justo a, porttitor felis. Etiam vel nisl massa. Sed eu faucibus quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nam tempor mi a accumsan sollicitudin. Proin sollicitudin libero nibh, eu fringilla quam placerat non.</p><p style=\"text-align:justify;\">Ut dapibus, purus ac dignissim semper, felis nulla accumsan metus, a tempor leo mi ut libero. Duis finibus dolor sed nunc bibendum fermentum. Proin magna libero, congue quis eros ac, blandit feugiat risus. Mauris eu lobortis justo. Etiam quis eros eu tellus malesuada tempor et vel eros. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent erat nunc, varius non ipsum ut, dapibus laoreet mi. Aenean semper arcu dictum scelerisque mattis. Vestibulum id pellentesque justo. Proin consectetur urna sed luctus blandit. Phasellus lacinia dui quis nisl accumsan elementum ut eu est. Phasellus libero urna, sodales sit amet interdum non, mattis non ante. In consectetur, nulla sed porta dictum, ligula velit auctor dui, eu vestibulum enim quam sit amet massa. Vestibulum rutrum vulputate lacinia. Vestibulum non erat porta, lobortis massa ut, tincidunt est.</p><p style=\"text-align:justify;\">Integer posuere felis eget lectus interdum rhoncus. Vestibulum scelerisque est eget quam mollis, ut tristique libero feugiat. Nullam aliquet, lorem ut lacinia rhoncus, enim nisi tincidunt justo, a condimentum arcu sapien ac mi. Suspendisse eleifend sit amet nisi nec vulputate. Sed at consectetur metus, ut bibendum urna. Curabitur vestibulum enim metus, nec malesuada quam aliquet eu. Nulla at turpis vel erat suscipit mattis a a ligula. Nunc et sapien lectus. Aliquam pharetra ultrices nulla vel hendrerit. Sed vel est cursus quam ornare varius. Fusce purus sapien, maximus vel dapibus ac, faucibus nec nibh. Pellentesque bibendum leo quis consequat pharetra. Proin blandit, mi at ultrices sollicitudin, urna purus finibus purus, sit amet bibendum dui magna at velit. Suspendisse et eros felis. Integer ac nisi sapien.</p>', 1, 4, 'images/2022-02-07/DoaoIi1m2ZTB76wBBfHaESrdR7UT3Cuf8hqlwBiL.jpg', '2022-02-07 08:51:35', '2022-02-07 11:08:15'),
(5, 'Ten golden rules to be followed for a real team work', 'ten-golden-rules-to-be-followed-for-a-real-team-work', '<p>Aenean interdum arcu blandit, vehicula magna non, placerat elit. Mauris et pharetratortor. Suspendissea sodales urna. In at augue elit. Vivamus enimcerat elicerat eli nibh, maximus ac felis nec, maximus tempor odio.</p>', '<p style=\"text-align:justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id elit id diam posuere mattis eget egestas lorem. Donec sit amet dapibus turpis. Phasellus molestie rhoncus velit in facilisis. Ut faucibus eros elementum, blandit risus id, bibendum quam. Sed vitae purus laoreet, varius nisl ac, ultricies sapien. In sed leo ac enim tincidunt dignissim in vitae ex. Sed nisi arcu, scelerisque eu accumsan vitae, ultrices lacinia nibh.</p><p style=\"text-align:justify;\">Cras sapien nunc, blandit at neque at, aliquam aliquam ipsum. Vivamus venenatis, mauris id tempor fringilla, tellus enim tristique augue, non maximus quam justo et metus. Curabitur ac imperdiet ligula, id mattis neque. Mauris sed lacinia arcu. Quisque mi risus, pellentesque ut elit in, porttitor tempor lectus. Vestibulum sit amet risus id ex accumsan euismod mattis eget nisi. Aenean nec arcu ut nulla ultricies placerat. Phasellus sed sagittis libero, porta egestas elit. Nullam venenatis quam lacus, a aliquam ante tristique vel. Sed commodo aliquam lacus, in posuere ligula rutrum eu. In dui erat, rhoncus consequat placerat ut, semper et tortor. Sed placerat justo quam, sed ullamcorper orci scelerisque sit amet. Mauris purus magna, dapibus ut suscipit vitae, egestas ut elit.</p>', 2, 8, 'images/2022-02-07/0XWaxFq0dynsey06xbKWJpIb8sdCbxiCdbSJREOo.jpg', '2022-02-07 08:52:10', '2022-02-07 12:06:17'),
(6, 'Thanks to the Internet, there is no limit to what you will just try!', 'thanks-to-the-internet-there-is-no-limit-to-what-you-will-just-try', '<p>Aenean interdum arcu blandit, vehicula magna non, placerat elit. Mauris et pharetratortor. Suspendissea sodales urna. In at augue elit. Vivamus enimcerat elicerat eli nibh, maximus ac felis nec, maximus tempor odio.</p>', '<p style=\"text-align:justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed nisi vulputate, cursus est a, pellentesque orci. Mauris id nulla massa. Vivamus vestibulum mattis neque, a suscipit neque consectetur sed. Ut ac nunc tempus, vulputate nisi non, suscipit eros. Aenean ac purus auctor, convallis neque id, molestie nisi. Nullam sodales vel nisl gravida tincidunt. Aliquam sagittis est orci, eget fringilla eros vestibulum vitae. Nulla congue lacus purus, non consectetur lacus lacinia in. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi et sagittis sem. Sed vitae laoreet urna, non posuere lacus. Donec sed nisi a nulla feugiat sodales eu quis erat.</p><p style=\"text-align:justify;\">Sed cursus, magna ut tempor scelerisque, dolor nibh luctus nibh, ut interdum dolor metus sed velit. Sed bibendum tempus maximus. Mauris et ipsum maximus erat rutrum sollicitudin. Donec porta ligula vel nibh porttitor laoreet. Cras pharetra urna ut ante congue dignissim. Integer sed odio mattis, blandit mauris vitae, congue arcu. Suspendisse et eros dui. Maecenas at rhoncus eros. Quisque sed lacus sed neque ultricies convallis a in tellus. Phasellus sed ultrices ex. Aenean sit amet risus sit amet nulla luctus consectetur. Sed volutpat odio sed felis congue interdum.</p><p style=\"text-align:justify;\">Proin vulputate posuere dui id fermentum. Ut consequat sit amet quam nec sollicitudin. Nunc diam enim, condimentum sed risus sodales, molestie ornare nisl. Integer neque nulla, elementum non ultrices quis, sodales vitae orci. Sed justo velit, tempor varius sagittis ut, mollis at arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed rutrum sem nec lorem placerat vestibulum. Nunc dictum est ac mattis ullamcorper.</p><p style=\"text-align:justify;\">Quisque a nisi magna. Nunc egestas neque quis mauris sagittis iaculis. Sed semper neque luctus faucibus luctus. Nam sagittis luctus lorem quis venenatis. Nullam massa purus, cursus id est eu, bibendum pretium justo. Aenean commodo imperdiet diam, id ullamcorper erat tempus eu. Mauris id quam magna. Nulla facilisi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque rhoncus ante eget cursus dignissim. Cras ac euismod diam. Suspendisse ut tellus et elit lacinia sagittis. Sed auctor vestibulum enim, ac hendrerit turpis venenatis sit amet. Pellentesque interdum posuere gravida. Nullam quis velit condimentum, fermentum ligula at, pharetra mi. Maecenas placerat ullamcorper semper.</p><p style=\"text-align:justify;\">Ut dapibus, nibh sit amet tempus sagittis, risus quam feugiat enim, eget condimentum neque neque at dui. Ut eget mauris sapien. Integer volutpat, lacus in viverra rutrum, odio nunc molestie velit, ut aliquet libero nibh a neque. Proin ultrices augue quis nisi molestie, vitae finibus enim interdum. Proin varius facilisis erat, euismod blandit est pulvinar sed. Mauris gravida eros ut elit scelerisque, a vulputate orci convallis. Sed eu tincidunt lacus. Quisque tincidunt, nisl a pulvinar venenatis, dolor mauris facilisis felis, a porta lacus quam eu lorem. Nunc purus lacus, condimentum eget velit et, sollicitudin condimentum erat. Proin ut lectus ac lectus viverra volutpat. Duis auctor purus vitae tincidunt egestas. Duis lacinia orci ac dolor fermentum posuere. Sed at vulputate mauris, at porttitor neque. Cras vulputate ultricies iaculis. Nulla facilisi. Donec condimentum nulla vel sapien vehicula iaculis.</p><p style=\"text-align:justify;\">Sed at odio vel tortor condimentum mollis. Pellentesque auctor enim orci, a malesuada ipsum fringilla eu. Praesent non sem id sapien suscipit sagittis quis pretium risus. Sed eleifend tortor justo, ut viverra neque vulputate quis. Integer sed mattis risus. Aliquam in bibendum magna. Donec felis eros, fringilla scelerisque mollis et, consectetur eu nulla. Aenean commodo porta odio. Sed convallis rhoncus elit malesuada auctor. Morbi rutrum leo ut arcu pellentesque, et euismod libero facilisis. Phasellus a nisl eu mi aliquet fringilla at eget magna. Proin ac lacinia eros. Suspendisse potenti. Donec scelerisque ante at est feugiat, in maximus urna facilisis. Donec pretium</p>', 1, 12, 'images/2022-02-07/dUBQl165Z6Mb5R0ZWg1Si5CrEyFzcOEgqXrP7UtG.jpg', '2022-02-07 08:52:49', '2022-02-07 11:05:51');

-- --------------------------------------------------------

--
-- Структура таблицы `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post_tag`
--

INSERT INTO `post_tag` (`id`, `tag_id`, `post_id`, `created_at`, `updated_at`) VALUES
(4, 2, 2, '2022-02-06 09:11:36', '2022-02-06 09:11:36'),
(8, 2, 4, '2022-02-07 06:24:10', '2022-02-07 06:24:10'),
(9, 3, 4, '2022-02-07 06:24:10', '2022-02-07 06:24:10'),
(11, 4, 2, '2022-02-07 08:50:24', '2022-02-07 08:50:24'),
(12, 3, 3, '2022-02-07 08:50:58', '2022-02-07 08:50:58'),
(13, 5, 3, '2022-02-07 08:50:58', '2022-02-07 08:50:58'),
(14, 1, 4, '2022-02-07 08:51:35', '2022-02-07 08:51:35'),
(15, 4, 4, '2022-02-07 08:51:35', '2022-02-07 08:51:35'),
(16, 5, 4, '2022-02-07 08:51:35', '2022-02-07 08:51:35'),
(17, 4, 5, '2022-02-07 08:52:10', '2022-02-07 08:52:10'),
(18, 1, 6, '2022-02-07 08:52:49', '2022-02-07 08:52:49'),
(19, 4, 6, '2022-02-07 08:52:50', '2022-02-07 08:52:50'),
(20, 5, 6, '2022-02-07 08:52:50', '2022-02-07 08:52:50'),
(21, 4, 1, '2022-02-07 10:00:18', '2022-02-07 10:00:18');

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Marketing', 'marketing', '2022-02-07 08:42:25', '2022-02-07 08:42:25'),
(2, 'SEO Service', 'seo-service', '2022-02-07 08:42:35', '2022-02-07 08:42:35'),
(3, 'Digital Agency', 'digital-agency', '2022-02-07 08:42:51', '2022-02-07 08:42:51'),
(4, 'Blogging', 'blogging', '2022-02-07 08:43:01', '2022-02-07 08:43:01'),
(5, 'Video Tuts', 'video-tuts', '2022-02-07 08:43:10', '2022-02-07 08:43:10');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_title_index` (`title`);

--
-- Индексы таблицы `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
