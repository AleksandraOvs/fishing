-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: MySQL-8.0
-- Время создания: Сен 17 2025 г., 09:32
-- Версия сервера: 8.0.35
-- Версия PHP: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `fish`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Комментатор WordPress', 'wapuu@wordpress.example', 'https://ru.wordpress.org/', '', '2025-04-10 08:34:45', '2025-04-10 05:34:45', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:10:{i:1751553289;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1751564093;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1751567684;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1751569484;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1751571284;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1751607288;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1751607293;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1751607300;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1752127131;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'https://fishing.local', 'on'),
(3, 'home', 'https://fishing.local', 'on'),
(4, 'blogname', 'Рыболовная база', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'hello@purple-web.ru', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', 'password', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '0', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'd.m.Y', 'on'),
(25, 'time_format', 'H:i', 'on'),
(26, 'links_updated_date_format', 'd.m.Y H:i', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '', 'on'),
(30, 'rewrite_rules', '', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:2:{i:0;s:25:\"purple-web/purple-web.php\";i:1;s:21:\"safe-svg/safe-svg.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'http://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '3', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'fishing', 'on'),
(42, 'stylesheet', 'fishing', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '58975', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '0', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'page', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '7', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1759815284', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'off'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '57155', 'on'),
(102, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'auto'),
(103, 'fresh_site', '0', 'off'),
(104, 'WPLANG', 'ru_RU', 'auto'),
(105, 'user_count', '1', 'off'),
(106, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:167:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:247:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие комментарии</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архивы</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Рубрики</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(107, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.6.1\";s:5:\"files\";a:496:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:29:\"comment-content/style-rtl.css\";i:77;s:33:\"comment-content/style-rtl.min.css\";i:78;s:25:\"comment-content/style.css\";i:79;s:29:\"comment-content/style.min.css\";i:80;s:30:\"comment-template/style-rtl.css\";i:81;s:34:\"comment-template/style-rtl.min.css\";i:82;s:26:\"comment-template/style.css\";i:83;s:30:\"comment-template/style.min.css\";i:84;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:85;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:86;s:38:\"comments-pagination-numbers/editor.css\";i:87;s:42:\"comments-pagination-numbers/editor.min.css\";i:88;s:34:\"comments-pagination/editor-rtl.css\";i:89;s:38:\"comments-pagination/editor-rtl.min.css\";i:90;s:30:\"comments-pagination/editor.css\";i:91;s:34:\"comments-pagination/editor.min.css\";i:92;s:33:\"comments-pagination/style-rtl.css\";i:93;s:37:\"comments-pagination/style-rtl.min.css\";i:94;s:29:\"comments-pagination/style.css\";i:95;s:33:\"comments-pagination/style.min.css\";i:96;s:29:\"comments-title/editor-rtl.css\";i:97;s:33:\"comments-title/editor-rtl.min.css\";i:98;s:25:\"comments-title/editor.css\";i:99;s:29:\"comments-title/editor.min.css\";i:100;s:23:\"comments/editor-rtl.css\";i:101;s:27:\"comments/editor-rtl.min.css\";i:102;s:19:\"comments/editor.css\";i:103;s:23:\"comments/editor.min.css\";i:104;s:22:\"comments/style-rtl.css\";i:105;s:26:\"comments/style-rtl.min.css\";i:106;s:18:\"comments/style.css\";i:107;s:22:\"comments/style.min.css\";i:108;s:20:\"cover/editor-rtl.css\";i:109;s:24:\"cover/editor-rtl.min.css\";i:110;s:16:\"cover/editor.css\";i:111;s:20:\"cover/editor.min.css\";i:112;s:19:\"cover/style-rtl.css\";i:113;s:23:\"cover/style-rtl.min.css\";i:114;s:15:\"cover/style.css\";i:115;s:19:\"cover/style.min.css\";i:116;s:22:\"details/editor-rtl.css\";i:117;s:26:\"details/editor-rtl.min.css\";i:118;s:18:\"details/editor.css\";i:119;s:22:\"details/editor.min.css\";i:120;s:21:\"details/style-rtl.css\";i:121;s:25:\"details/style-rtl.min.css\";i:122;s:17:\"details/style.css\";i:123;s:21:\"details/style.min.css\";i:124;s:20:\"embed/editor-rtl.css\";i:125;s:24:\"embed/editor-rtl.min.css\";i:126;s:16:\"embed/editor.css\";i:127;s:20:\"embed/editor.min.css\";i:128;s:19:\"embed/style-rtl.css\";i:129;s:23:\"embed/style-rtl.min.css\";i:130;s:15:\"embed/style.css\";i:131;s:19:\"embed/style.min.css\";i:132;s:19:\"embed/theme-rtl.css\";i:133;s:23:\"embed/theme-rtl.min.css\";i:134;s:15:\"embed/theme.css\";i:135;s:19:\"embed/theme.min.css\";i:136;s:19:\"file/editor-rtl.css\";i:137;s:23:\"file/editor-rtl.min.css\";i:138;s:15:\"file/editor.css\";i:139;s:19:\"file/editor.min.css\";i:140;s:18:\"file/style-rtl.css\";i:141;s:22:\"file/style-rtl.min.css\";i:142;s:14:\"file/style.css\";i:143;s:18:\"file/style.min.css\";i:144;s:23:\"footnotes/style-rtl.css\";i:145;s:27:\"footnotes/style-rtl.min.css\";i:146;s:19:\"footnotes/style.css\";i:147;s:23:\"footnotes/style.min.css\";i:148;s:23:\"freeform/editor-rtl.css\";i:149;s:27:\"freeform/editor-rtl.min.css\";i:150;s:19:\"freeform/editor.css\";i:151;s:23:\"freeform/editor.min.css\";i:152;s:22:\"gallery/editor-rtl.css\";i:153;s:26:\"gallery/editor-rtl.min.css\";i:154;s:18:\"gallery/editor.css\";i:155;s:22:\"gallery/editor.min.css\";i:156;s:21:\"gallery/style-rtl.css\";i:157;s:25:\"gallery/style-rtl.min.css\";i:158;s:17:\"gallery/style.css\";i:159;s:21:\"gallery/style.min.css\";i:160;s:21:\"gallery/theme-rtl.css\";i:161;s:25:\"gallery/theme-rtl.min.css\";i:162;s:17:\"gallery/theme.css\";i:163;s:21:\"gallery/theme.min.css\";i:164;s:20:\"group/editor-rtl.css\";i:165;s:24:\"group/editor-rtl.min.css\";i:166;s:16:\"group/editor.css\";i:167;s:20:\"group/editor.min.css\";i:168;s:19:\"group/style-rtl.css\";i:169;s:23:\"group/style-rtl.min.css\";i:170;s:15:\"group/style.css\";i:171;s:19:\"group/style.min.css\";i:172;s:19:\"group/theme-rtl.css\";i:173;s:23:\"group/theme-rtl.min.css\";i:174;s:15:\"group/theme.css\";i:175;s:19:\"group/theme.min.css\";i:176;s:21:\"heading/style-rtl.css\";i:177;s:25:\"heading/style-rtl.min.css\";i:178;s:17:\"heading/style.css\";i:179;s:21:\"heading/style.min.css\";i:180;s:19:\"html/editor-rtl.css\";i:181;s:23:\"html/editor-rtl.min.css\";i:182;s:15:\"html/editor.css\";i:183;s:19:\"html/editor.min.css\";i:184;s:20:\"image/editor-rtl.css\";i:185;s:24:\"image/editor-rtl.min.css\";i:186;s:16:\"image/editor.css\";i:187;s:20:\"image/editor.min.css\";i:188;s:19:\"image/style-rtl.css\";i:189;s:23:\"image/style-rtl.min.css\";i:190;s:15:\"image/style.css\";i:191;s:19:\"image/style.min.css\";i:192;s:19:\"image/theme-rtl.css\";i:193;s:23:\"image/theme-rtl.min.css\";i:194;s:15:\"image/theme.css\";i:195;s:19:\"image/theme.min.css\";i:196;s:29:\"latest-comments/style-rtl.css\";i:197;s:33:\"latest-comments/style-rtl.min.css\";i:198;s:25:\"latest-comments/style.css\";i:199;s:29:\"latest-comments/style.min.css\";i:200;s:27:\"latest-posts/editor-rtl.css\";i:201;s:31:\"latest-posts/editor-rtl.min.css\";i:202;s:23:\"latest-posts/editor.css\";i:203;s:27:\"latest-posts/editor.min.css\";i:204;s:26:\"latest-posts/style-rtl.css\";i:205;s:30:\"latest-posts/style-rtl.min.css\";i:206;s:22:\"latest-posts/style.css\";i:207;s:26:\"latest-posts/style.min.css\";i:208;s:18:\"list/style-rtl.css\";i:209;s:22:\"list/style-rtl.min.css\";i:210;s:14:\"list/style.css\";i:211;s:18:\"list/style.min.css\";i:212;s:25:\"media-text/editor-rtl.css\";i:213;s:29:\"media-text/editor-rtl.min.css\";i:214;s:21:\"media-text/editor.css\";i:215;s:25:\"media-text/editor.min.css\";i:216;s:24:\"media-text/style-rtl.css\";i:217;s:28:\"media-text/style-rtl.min.css\";i:218;s:20:\"media-text/style.css\";i:219;s:24:\"media-text/style.min.css\";i:220;s:19:\"more/editor-rtl.css\";i:221;s:23:\"more/editor-rtl.min.css\";i:222;s:15:\"more/editor.css\";i:223;s:19:\"more/editor.min.css\";i:224;s:30:\"navigation-link/editor-rtl.css\";i:225;s:34:\"navigation-link/editor-rtl.min.css\";i:226;s:26:\"navigation-link/editor.css\";i:227;s:30:\"navigation-link/editor.min.css\";i:228;s:29:\"navigation-link/style-rtl.css\";i:229;s:33:\"navigation-link/style-rtl.min.css\";i:230;s:25:\"navigation-link/style.css\";i:231;s:29:\"navigation-link/style.min.css\";i:232;s:33:\"navigation-submenu/editor-rtl.css\";i:233;s:37:\"navigation-submenu/editor-rtl.min.css\";i:234;s:29:\"navigation-submenu/editor.css\";i:235;s:33:\"navigation-submenu/editor.min.css\";i:236;s:25:\"navigation/editor-rtl.css\";i:237;s:29:\"navigation/editor-rtl.min.css\";i:238;s:21:\"navigation/editor.css\";i:239;s:25:\"navigation/editor.min.css\";i:240;s:24:\"navigation/style-rtl.css\";i:241;s:28:\"navigation/style-rtl.min.css\";i:242;s:20:\"navigation/style.css\";i:243;s:24:\"navigation/style.min.css\";i:244;s:23:\"nextpage/editor-rtl.css\";i:245;s:27:\"nextpage/editor-rtl.min.css\";i:246;s:19:\"nextpage/editor.css\";i:247;s:23:\"nextpage/editor.min.css\";i:248;s:24:\"page-list/editor-rtl.css\";i:249;s:28:\"page-list/editor-rtl.min.css\";i:250;s:20:\"page-list/editor.css\";i:251;s:24:\"page-list/editor.min.css\";i:252;s:23:\"page-list/style-rtl.css\";i:253;s:27:\"page-list/style-rtl.min.css\";i:254;s:19:\"page-list/style.css\";i:255;s:23:\"page-list/style.min.css\";i:256;s:24:\"paragraph/editor-rtl.css\";i:257;s:28:\"paragraph/editor-rtl.min.css\";i:258;s:20:\"paragraph/editor.css\";i:259;s:24:\"paragraph/editor.min.css\";i:260;s:23:\"paragraph/style-rtl.css\";i:261;s:27:\"paragraph/style-rtl.min.css\";i:262;s:19:\"paragraph/style.css\";i:263;s:23:\"paragraph/style.min.css\";i:264;s:25:\"post-author/style-rtl.css\";i:265;s:29:\"post-author/style-rtl.min.css\";i:266;s:21:\"post-author/style.css\";i:267;s:25:\"post-author/style.min.css\";i:268;s:33:\"post-comments-form/editor-rtl.css\";i:269;s:37:\"post-comments-form/editor-rtl.min.css\";i:270;s:29:\"post-comments-form/editor.css\";i:271;s:33:\"post-comments-form/editor.min.css\";i:272;s:32:\"post-comments-form/style-rtl.css\";i:273;s:36:\"post-comments-form/style-rtl.min.css\";i:274;s:28:\"post-comments-form/style.css\";i:275;s:32:\"post-comments-form/style.min.css\";i:276;s:27:\"post-content/editor-rtl.css\";i:277;s:31:\"post-content/editor-rtl.min.css\";i:278;s:23:\"post-content/editor.css\";i:279;s:27:\"post-content/editor.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"quote/style-rtl.css\";i:357;s:23:\"quote/style-rtl.min.css\";i:358;s:15:\"quote/style.css\";i:359;s:19:\"quote/style.min.css\";i:360;s:19:\"quote/theme-rtl.css\";i:361;s:23:\"quote/theme-rtl.min.css\";i:362;s:15:\"quote/theme.css\";i:363;s:19:\"quote/theme.min.css\";i:364;s:23:\"read-more/style-rtl.css\";i:365;s:27:\"read-more/style-rtl.min.css\";i:366;s:19:\"read-more/style.css\";i:367;s:23:\"read-more/style.min.css\";i:368;s:18:\"rss/editor-rtl.css\";i:369;s:22:\"rss/editor-rtl.min.css\";i:370;s:14:\"rss/editor.css\";i:371;s:18:\"rss/editor.min.css\";i:372;s:17:\"rss/style-rtl.css\";i:373;s:21:\"rss/style-rtl.min.css\";i:374;s:13:\"rss/style.css\";i:375;s:17:\"rss/style.min.css\";i:376;s:21:\"search/editor-rtl.css\";i:377;s:25:\"search/editor-rtl.min.css\";i:378;s:17:\"search/editor.css\";i:379;s:21:\"search/editor.min.css\";i:380;s:20:\"search/style-rtl.css\";i:381;s:24:\"search/style-rtl.min.css\";i:382;s:16:\"search/style.css\";i:383;s:20:\"search/style.min.css\";i:384;s:20:\"search/theme-rtl.css\";i:385;s:24:\"search/theme-rtl.min.css\";i:386;s:16:\"search/theme.css\";i:387;s:20:\"search/theme.min.css\";i:388;s:24:\"separator/editor-rtl.css\";i:389;s:28:\"separator/editor-rtl.min.css\";i:390;s:20:\"separator/editor.css\";i:391;s:24:\"separator/editor.min.css\";i:392;s:23:\"separator/style-rtl.css\";i:393;s:27:\"separator/style-rtl.min.css\";i:394;s:19:\"separator/style.css\";i:395;s:23:\"separator/style.min.css\";i:396;s:23:\"separator/theme-rtl.css\";i:397;s:27:\"separator/theme-rtl.min.css\";i:398;s:19:\"separator/theme.css\";i:399;s:23:\"separator/theme.min.css\";i:400;s:24:\"shortcode/editor-rtl.css\";i:401;s:28:\"shortcode/editor-rtl.min.css\";i:402;s:20:\"shortcode/editor.css\";i:403;s:24:\"shortcode/editor.min.css\";i:404;s:24:\"site-logo/editor-rtl.css\";i:405;s:28:\"site-logo/editor-rtl.min.css\";i:406;s:20:\"site-logo/editor.css\";i:407;s:24:\"site-logo/editor.min.css\";i:408;s:23:\"site-logo/style-rtl.css\";i:409;s:27:\"site-logo/style-rtl.min.css\";i:410;s:19:\"site-logo/style.css\";i:411;s:23:\"site-logo/style.min.css\";i:412;s:27:\"site-tagline/editor-rtl.css\";i:413;s:31:\"site-tagline/editor-rtl.min.css\";i:414;s:23:\"site-tagline/editor.css\";i:415;s:27:\"site-tagline/editor.min.css\";i:416;s:25:\"site-title/editor-rtl.css\";i:417;s:29:\"site-title/editor-rtl.min.css\";i:418;s:21:\"site-title/editor.css\";i:419;s:25:\"site-title/editor.min.css\";i:420;s:24:\"site-title/style-rtl.css\";i:421;s:28:\"site-title/style-rtl.min.css\";i:422;s:20:\"site-title/style.css\";i:423;s:24:\"site-title/style.min.css\";i:424;s:26:\"social-link/editor-rtl.css\";i:425;s:30:\"social-link/editor-rtl.min.css\";i:426;s:22:\"social-link/editor.css\";i:427;s:26:\"social-link/editor.min.css\";i:428;s:27:\"social-links/editor-rtl.css\";i:429;s:31:\"social-links/editor-rtl.min.css\";i:430;s:23:\"social-links/editor.css\";i:431;s:27:\"social-links/editor.min.css\";i:432;s:26:\"social-links/style-rtl.css\";i:433;s:30:\"social-links/style-rtl.min.css\";i:434;s:22:\"social-links/style.css\";i:435;s:26:\"social-links/style.min.css\";i:436;s:21:\"spacer/editor-rtl.css\";i:437;s:25:\"spacer/editor-rtl.min.css\";i:438;s:17:\"spacer/editor.css\";i:439;s:21:\"spacer/editor.min.css\";i:440;s:20:\"spacer/style-rtl.css\";i:441;s:24:\"spacer/style-rtl.min.css\";i:442;s:16:\"spacer/style.css\";i:443;s:20:\"spacer/style.min.css\";i:444;s:20:\"table/editor-rtl.css\";i:445;s:24:\"table/editor-rtl.min.css\";i:446;s:16:\"table/editor.css\";i:447;s:20:\"table/editor.min.css\";i:448;s:19:\"table/style-rtl.css\";i:449;s:23:\"table/style-rtl.min.css\";i:450;s:15:\"table/style.css\";i:451;s:19:\"table/style.min.css\";i:452;s:19:\"table/theme-rtl.css\";i:453;s:23:\"table/theme-rtl.min.css\";i:454;s:15:\"table/theme.css\";i:455;s:19:\"table/theme.min.css\";i:456;s:23:\"tag-cloud/style-rtl.css\";i:457;s:27:\"tag-cloud/style-rtl.min.css\";i:458;s:19:\"tag-cloud/style.css\";i:459;s:23:\"tag-cloud/style.min.css\";i:460;s:28:\"template-part/editor-rtl.css\";i:461;s:32:\"template-part/editor-rtl.min.css\";i:462;s:24:\"template-part/editor.css\";i:463;s:28:\"template-part/editor.min.css\";i:464;s:27:\"template-part/theme-rtl.css\";i:465;s:31:\"template-part/theme-rtl.min.css\";i:466;s:23:\"template-part/theme.css\";i:467;s:27:\"template-part/theme.min.css\";i:468;s:30:\"term-description/style-rtl.css\";i:469;s:34:\"term-description/style-rtl.min.css\";i:470;s:26:\"term-description/style.css\";i:471;s:30:\"term-description/style.min.css\";i:472;s:27:\"text-columns/editor-rtl.css\";i:473;s:31:\"text-columns/editor-rtl.min.css\";i:474;s:23:\"text-columns/editor.css\";i:475;s:27:\"text-columns/editor.min.css\";i:476;s:26:\"text-columns/style-rtl.css\";i:477;s:30:\"text-columns/style-rtl.min.css\";i:478;s:22:\"text-columns/style.css\";i:479;s:26:\"text-columns/style.min.css\";i:480;s:19:\"verse/style-rtl.css\";i:481;s:23:\"verse/style-rtl.min.css\";i:482;s:15:\"verse/style.css\";i:483;s:19:\"verse/style.min.css\";i:484;s:20:\"video/editor-rtl.css\";i:485;s:24:\"video/editor-rtl.min.css\";i:486;s:16:\"video/editor.css\";i:487;s:20:\"video/editor.min.css\";i:488;s:19:\"video/style-rtl.css\";i:489;s:23:\"video/style-rtl.min.css\";i:490;s:15:\"video/style.css\";i:491;s:19:\"video/style.min.css\";i:492;s:19:\"video/theme-rtl.css\";i:493;s:23:\"video/theme-rtl.min.css\";i:494;s:15:\"video/theme.css\";i:495;s:19:\"video/theme.min.css\";}}', 'on'),
(126, 'recovery_keys', 'a:0:{}', 'off'),
(127, 'nonce_key', 'DD?:T3:m].NkI>hK[(zPb5KS*li .^w9XqFps0wQ]2d.SJb3-{:vYB1U+W-`fG2N', 'off'),
(128, 'nonce_salt', '+UXB&WnW$MR}?K#pK-TW(%<e.U;4wB:Hx:,E9oJ7d|`&ix2m)Ez/-:1^5p+f7CWO', 'off'),
(131, 'secure_auth_key', '~S;_gNQa~+{sUFvg=X^!MJP;K8f&m#)RjINc-q%fPQ>Mt&`B6jNS!)pTJ9?((U:R', 'off'),
(132, 'secure_auth_salt', 'R NPY59(-`~lMebtH7sR+YSKXzcE46`P,>GwHYlz0g3*,j4ISZB^aKKJYmfMLWZx', 'off'),
(133, 'logged_in_key', 'Yg9y?@t:F>Q.BZnW%RP@|D{X]!-v8`6s:$~l5;Ca/$?];W`E:`i1;zy4U7B~@7G<', 'off'),
(134, 'logged_in_salt', '+EG]PsW!(+`ZG=,DN0DR`~@)gW&!#ZlmitlY09|m]CeJdY:u7FumCMm9!%mdrNfa', 'off'),
(158, 'theme_mods_twentytwentyfour', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1744263316;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(159, 'current_theme', 'fishing', 'auto'),
(160, 'theme_mods_fishing', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:11:\"header_logo\";i:11;s:11:\"footer_logo\";i:5;s:11:\"custom_logo\";i:11;}', 'on'),
(161, 'theme_switched', '', 'auto'),
(166, 'finished_updating_comment_type', '1', 'auto'),
(167, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(168, 'recently_activated', 'a:0:{}', 'off'),
(172, 'auth_key', ';J%#Hne@,(1z(xph*+e2a@Crb01],,/5%{a>[PQF`hr;5]M-0T%d|%N:v<  Zm=P', 'off'),
(173, 'auth_salt', '`cKMbe:qBNw) /w%a?x;N)A.W/18{Jn&5p%6e>TwAQZg1fUA[6XO^4{WH%M @FvS', 'off'),
(174, 'site_logo', '11', 'auto'),
(182, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.8.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.8.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.1\";s:7:\"version\";s:5:\"6.8.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.8.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.8.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.8.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.8.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.1\";s:7:\"version\";s:5:\"6.8.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.8.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.8.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.1\";s:7:\"version\";s:5:\"6.8.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1751550904;s:15:\"version_checked\";s:5:\"6.7.2\";s:12:\"translations\";a:0:{}}', 'off'),
(185, 'db_upgraded', '', 'on'),
(188, 'can_compress_scripts', '1', 'on'),
(193, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"2ed76c65b819c20e22a8a2431f386944\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(256, 'recovery_mode_email_last_sent', '1744909217', 'auto'),
(436, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":6,\"critical\":0}', 'on'),
(543, '_crb_mes_address', '', 'off'),
(544, '_crb_mes_address_icon', '', 'off'),
(545, '_crb_mes_address_link', '', 'off'),
(546, '_crb_mes_phone', '8-800-000-00-00', 'off'),
(547, '_crb_mes_phone_link', '/', 'off'),
(548, '_crb_mes_phone_link_img', '27', 'off'),
(549, '_messengers|||0|value', '_', 'off'),
(550, '_messengers|||1|value', '_', 'off'),
(551, '_messengers|||2|value', '_', 'off'),
(552, '_messengers|crb_mes_name|0|0|value', '1', 'off'),
(553, '_messengers|crb_mes_link|0|0|value', '/', 'off'),
(554, '_messengers|crb_mes_image|0|0|value', '28', 'off'),
(555, '_messengers|crb_mes_name|1|0|value', '2', 'off'),
(556, '_messengers|crb_mes_link|1|0|value', '/', 'off'),
(557, '_messengers|crb_mes_image|1|0|value', '29', 'off'),
(558, '_messengers|crb_mes_name|2|0|value', '3', 'off'),
(559, '_messengers|crb_mes_link|2|0|value', '/', 'off'),
(560, '_messengers|crb_mes_image|2|0|value', '31', 'off'),
(561, '_crb_map_code', '<iframe src=\"https://yandex.ru/map-widget/v1/?um=constructor%3Aa22cd80e8b1e29b5ecca32cc8e054a875c15e9ea810864f832264ed72c34c1b1&amp;source=constructor\" width=\"100%\" height=\"400\" frameborder=\"0\"></iframe>', 'off'),
(562, '_crb_reg_button_link', '', 'off'),
(563, '_crb_reg_button_text', '', 'off'),
(564, '_crb_footer_form_shortcode', '', 'off'),
(565, '_crb_footer_bg', '', 'off'),
(566, '_crb_footer_docs|||0|_empty', '', 'off'),
(900, '_site_transient_timeout_php_check_b177535be5f1790a48742622cfd50ecb', '1752087153', 'off'),
(901, '_site_transient_php_check_b177535be5f1790a48742622cfd50ecb', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(907, '_site_transient_timeout_theme_roots', '1751552702', 'off'),
(908, '_site_transient_theme_roots', 'a:5:{s:7:\"fishing\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'off'),
(911, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1751550908;s:7:\"checked\";a:5:{s:7:\"fishing\";s:5:\"1.0.0\";s:16:\"twentytwentyfive\";s:3:\"1.0\";s:16:\"twentytwentyfour\";s:3:\"1.2\";s:17:\"twentytwentythree\";s:3:\"1.5\";s:15:\"twentytwentytwo\";s:3:\"1.8\";}s:8:\"response\";a:4:{s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.2.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.3.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.2.0.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'off'),
(912, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1751550908;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.8.1\";s:12:\"requires_php\";s:3:\"7.2\";s:16:\"requires_plugins\";a:0:{}}s:21:\"safe-svg/safe-svg.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:22:\"w.org/plugins/safe-svg\";s:4:\"slug\";s:8:\"safe-svg\";s:6:\"plugin\";s:21:\"safe-svg/safe-svg.php\";s:11:\"new_version\";s:5:\"2.3.1\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/safe-svg/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/safe-svg.2.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=2779013\";s:3:\"svg\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=2779013\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/safe-svg/assets/banner-1544x500.png?rev=2683939\";s:2:\"1x\";s:63:\"https://ps.w.org/safe-svg/assets/banner-772x250.png?rev=2683939\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.5\";s:6:\"tested\";s:5:\"6.8.1\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}}', 'off');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2025/04/logo.svg'),
(4, 5, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:66;s:6:\"height\";i:41;s:4:\"file\";s:16:\"2025/04/logo.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(7, 7, '_edit_lock', '1745222952:1'),
(8, 7, '_edit_last', '1'),
(9, 10, '_wp_attached_file', '2025/04/Изображение-WhatsApp-2025-03-27-в-21.04.21_248d68dd-scaled.jpg'),
(10, 10, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1196;s:4:\"file\";s:82:\"2025/04/Изображение-WhatsApp-2025-03-27-в-21.04.21_248d68dd-scaled.jpg\";s:8:\"filesize\";i:575485;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:75:\"Изображение-WhatsApp-2025-03-27-в-21.04.21_248d68dd-300x140.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10103;}s:5:\"large\";a:5:{s:4:\"file\";s:76:\"Изображение-WhatsApp-2025-03-27-в-21.04.21_248d68dd-1024x478.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:478;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:102417;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:75:\"Изображение-WhatsApp-2025-03-27-в-21.04.21_248d68dd-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5446;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:75:\"Изображение-WhatsApp-2025-03-27-в-21.04.21_248d68dd-768x359.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:359;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:58435;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:76:\"Изображение-WhatsApp-2025-03-27-в-21.04.21_248d68dd-1536x717.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:717;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:225878;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:76:\"Изображение-WhatsApp-2025-03-27-в-21.04.21_248d68dd-2048x956.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:956;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:387077;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:67:\"Изображение-WhatsApp-2025-03-27-в-21.04.21_248d68dd.jpg\";}'),
(75, 11, '_wp_attached_file', '2025/04/logo1.svg'),
(76, 11, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:232;s:6:\"height\";i:68;s:4:\"file\";s:17:\"2025/04/logo1.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:9:\"logo1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:9:\"logo1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:9:\"logo1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:9:\"logo1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:9:\"logo1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:9:\"logo1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(271, 13, '_wp_attached_file', '2025/04/23552fd7-0cc5-4f4e-82e1-d13df4a99249.jpg'),
(272, 13, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:960;s:4:\"file\";s:48:\"2025/04/23552fd7-0cc5-4f4e-82e1-d13df4a99249.jpg\";s:8:\"filesize\";i:137923;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:48:\"23552fd7-0cc5-4f4e-82e1-d13df4a99249-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12717;}s:5:\"large\";a:5:{s:4:\"file\";s:49:\"23552fd7-0cc5-4f4e-82e1-d13df4a99249-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:105416;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:48:\"23552fd7-0cc5-4f4e-82e1-d13df4a99249-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4528;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:48:\"23552fd7-0cc5-4f4e-82e1-d13df4a99249-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64542;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(337, 14, '_wp_attached_file', '2025/04/Изображение-WhatsApp-2025-03-27-в-20.58.21_66043534.jpg'),
(338, 14, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1600;s:4:\"file\";s:75:\"2025/04/Изображение-WhatsApp-2025-03-27-в-20.58.21_66043534.jpg\";s:8:\"filesize\";i:246186;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:75:\"Изображение-WhatsApp-2025-03-27-в-20.58.21_66043534-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18568;}s:5:\"large\";a:5:{s:4:\"file\";s:76:\"Изображение-WhatsApp-2025-03-27-в-20.58.21_66043534-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:155664;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:75:\"Изображение-WhatsApp-2025-03-27-в-20.58.21_66043534-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7578;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:76:\"Изображение-WhatsApp-2025-03-27-в-20.58.21_66043534-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:155664;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:77:\"Изображение-WhatsApp-2025-03-27-в-20.58.21_66043534-1152x1536.jpg\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:301454;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(339, 15, '_wp_attached_file', '2025/04/Изображение-WhatsApp-2025-03-27-в-20.58.54_4283d0f6.jpg'),
(340, 15, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:960;s:6:\"height\";i:1280;s:4:\"file\";s:75:\"2025/04/Изображение-WhatsApp-2025-03-27-в-20.58.54_4283d0f6.jpg\";s:8:\"filesize\";i:266775;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:75:\"Изображение-WhatsApp-2025-03-27-в-20.58.54_4283d0f6-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22251;}s:5:\"large\";a:5:{s:4:\"file\";s:76:\"Изображение-WhatsApp-2025-03-27-в-20.58.54_4283d0f6-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:220674;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:75:\"Изображение-WhatsApp-2025-03-27-в-20.58.54_4283d0f6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8344;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:76:\"Изображение-WhatsApp-2025-03-27-в-20.58.54_4283d0f6-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:220674;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(469, 8, '_crb_reasons_list|||0|_empty', ''),
(600, 7, '_crb_why_head', 'Путь до базы'),
(601, 7, '_crb_why_desc', ''),
(602, 7, '_crb_reasons_list|||0|value', '_'),
(603, 7, '_crb_reasons_list|||1|value', '_'),
(604, 7, '_crb_reasons_list|||2|value', '_'),
(605, 7, '_crb_reasons_list|crb_reason_head|0|0|value', ''),
(606, 7, '_crb_reasons_list|crb_reason_desc|0|0|value', 'Путь начинается в Красноярске'),
(607, 7, '_crb_reasons_list|crb_reason_img|0|0|value', ''),
(608, 7, '_crb_reasons_list|crb_reason_head|1|0|value', ''),
(609, 7, '_crb_reasons_list|crb_reason_desc|1|0|value', 'перелёт до Байкита (1 час 40 минут)'),
(610, 7, '_crb_reasons_list|crb_reason_img|1|0|value', ''),
(611, 7, '_crb_reasons_list|crb_reason_head|2|0|value', ''),
(612, 7, '_crb_reasons_list|crb_reason_desc|2|0|value', 'трансфер до самой базы'),
(613, 7, '_crb_reasons_list|crb_reason_img|2|0|value', ''),
(648, 8, '_crb_why_head', 'Путь до базы'),
(649, 8, '_crb_why_desc', ''),
(650, 8, '_crb_reasons_list|||0|value', '_'),
(651, 8, '_crb_reasons_list|||1|value', '_'),
(652, 8, '_crb_reasons_list|||2|value', '_'),
(653, 8, '_crb_reasons_list|crb_reason_head|0|0|value', ''),
(654, 8, '_crb_reasons_list|crb_reason_desc|0|0|value', 'Путь начинается в Красноярске'),
(655, 8, '_crb_reasons_list|crb_reason_img|0|0|value', ''),
(656, 8, '_crb_reasons_list|crb_reason_head|1|0|value', ''),
(657, 8, '_crb_reasons_list|crb_reason_desc|1|0|value', 'перелёт до Байкита (1 час 40 минут)'),
(658, 8, '_crb_reasons_list|crb_reason_img|1|0|value', ''),
(659, 8, '_crb_reasons_list|crb_reason_head|2|0|value', ''),
(660, 8, '_crb_reasons_list|crb_reason_desc|2|0|value', 'трансфер до самой базы'),
(661, 8, '_crb_reasons_list|crb_reason_img|2|0|value', ''),
(1443, 16, '_wp_attached_file', '2025/04/boat.svg'),
(1444, 16, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:23;s:6:\"height\";i:25;s:4:\"file\";s:16:\"2025/04/boat.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:8:\"boat.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"boat.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"boat.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"boat.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:8:\"boat.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:8:\"boat.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1445, 17, '_wp_attached_file', '2025/04/food.svg'),
(1446, 17, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:25;s:6:\"height\";i:23;s:4:\"file\";s:16:\"2025/04/food.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:8:\"food.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"food.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"food.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"food.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:8:\"food.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:8:\"food.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1447, 18, '_wp_attached_file', '2025/04/tree.svg'),
(1448, 18, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:21;s:6:\"height\";i:25;s:4:\"file\";s:16:\"2025/04/tree.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:8:\"tree.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"tree.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"tree.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"tree.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:8:\"tree.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:8:\"tree.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1569, 19, '_wp_attached_file', '2025/04/tg.svg'),
(1570, 19, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:20;s:6:\"height\";i:18;s:4:\"file\";s:14:\"2025/04/tg.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:6:\"tg.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"tg.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"tg.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"tg.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:6:\"tg.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:6:\"tg.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1571, 20, '_wp_attached_file', '2025/04/vk.svg'),
(1572, 20, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:20;s:6:\"height\";i:12;s:4:\"file\";s:14:\"2025/04/vk.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:6:\"vk.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"vk.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"vk.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"vk.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:6:\"vk.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:6:\"vk.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1573, 21, '_wp_attached_file', '2025/04/wa.svg'),
(1574, 21, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:20;s:6:\"height\";i:20;s:4:\"file\";s:14:\"2025/04/wa.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:6:\"wa.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"wa.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"wa.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"wa.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:6:\"wa.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:6:\"wa.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1575, 22, '_wp_attached_file', '2025/04/phone.svg'),
(1576, 22, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:14;s:6:\"height\";i:14;s:4:\"file\";s:17:\"2025/04/phone.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:9:\"phone.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:9:\"phone.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:9:\"phone.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:9:\"phone.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:9:\"phone.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:9:\"phone.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1577, 23, '_wp_attached_file', '2025/04/boat-w.svg'),
(1578, 23, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:22;s:6:\"height\";i:25;s:4:\"file\";s:18:\"2025/04/boat-w.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:10:\"boat-w.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:10:\"boat-w.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:10:\"boat-w.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:10:\"boat-w.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:10:\"boat-w.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:10:\"boat-w.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1579, 24, '_wp_attached_file', '2025/04/food-w.svg'),
(1580, 24, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:25;s:6:\"height\";i:23;s:4:\"file\";s:18:\"2025/04/food-w.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:10:\"food-w.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:10:\"food-w.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:10:\"food-w.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:10:\"food-w.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:10:\"food-w.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:10:\"food-w.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1581, 25, '_wp_attached_file', '2025/04/tree-w.svg'),
(1582, 25, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:21;s:6:\"height\";i:25;s:4:\"file\";s:18:\"2025/04/tree-w.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:10:\"tree-w.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:10:\"tree-w.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:10:\"tree-w.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:10:\"tree-w.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:10:\"tree-w.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:10:\"tree-w.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1624, 7, '_crb_services_head', ''),
(1625, 7, '_crb_services_desc', ''),
(1626, 7, '_crb_services_description', ''),
(1684, 8, '_crb_services_head', ''),
(1685, 8, '_crb_services_desc', ''),
(1686, 8, '_crb_services_description', ''),
(1703, 26, '_wp_attached_file', '2025/04/video.mp4'),
(1704, 26, '_wp_attachment_metadata', 'a:10:{s:8:\"filesize\";i:27248220;s:9:\"mime_type\";s:9:\"video/mp4\";s:6:\"length\";i:149;s:16:\"length_formatted\";s:4:\"2:29\";s:5:\"width\";i:848;s:6:\"height\";i:480;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:5:\"audio\";a:7:{s:10:\"dataformat\";s:3:\"mp4\";s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:44100;s:8:\"channels\";i:2;s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:6:\"stereo\";}s:17:\"created_timestamp\";i:-2082844800;}'),
(2130, 8, '_crb_way_list|||2|value', '_'),
(2137, 8, '_crb_way_list|crb_way|2|0|value', 'Трансфер до самой базы'),
(2138, 8, '_crb_way_list|crb_way_desc|2|0|value', 'Здесь немного поясняющей информации при необходимости'),
(2139, 8, '_crb_way_list|crb_way_img|2|0|value', ''),
(2646, 7, '_crb_aboutus_head', ''),
(2647, 7, '_crb_aboutus_desc', ''),
(2648, 7, '_crb_aboutus_text', ''),
(2649, 7, '_crb_aboutus_background', ''),
(2650, 7, '_crb_aboutus_link', ''),
(2651, 7, '_crb_aboutus_link_text', ''),
(2652, 7, '_crb_aboutus_slides|||0|_empty', ''),
(2653, 7, '_crb_trainers_head', ''),
(2654, 7, '_crb_trainers_desc', ''),
(2655, 7, '_crb_trainers_link', ''),
(2656, 7, '_crb_trainers_link_text', ''),
(2701, 8, '_crb_aboutus_head', ''),
(2702, 8, '_crb_aboutus_desc', ''),
(2703, 8, '_crb_aboutus_text', ''),
(2704, 8, '_crb_aboutus_background', ''),
(2705, 8, '_crb_aboutus_link', ''),
(2706, 8, '_crb_aboutus_link_text', ''),
(2707, 8, '_crb_aboutus_slides|||0|_empty', ''),
(2708, 8, '_crb_trainers_head', ''),
(2709, 8, '_crb_trainers_desc', ''),
(2710, 8, '_crb_trainers_link', ''),
(2711, 8, '_crb_trainers_link_text', ''),
(2717, 27, '_wp_attached_file', '2025/04/tel.svg'),
(2718, 27, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:14;s:6:\"height\";i:14;s:4:\"file\";s:15:\"2025/04/tel.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:7:\"tel.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"tel.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"tel.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"tel.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:7:\"tel.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:7:\"tel.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(2719, 28, '_wp_attached_file', '2025/04/wa1.svg'),
(2720, 28, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:20;s:6:\"height\";i:20;s:4:\"file\";s:15:\"2025/04/wa1.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:7:\"wa1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"wa1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"wa1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"wa1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:7:\"wa1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:7:\"wa1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(2721, 29, '_wp_attached_file', '2025/04/vk1.svg'),
(2722, 29, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:20;s:6:\"height\";i:12;s:4:\"file\";s:15:\"2025/04/vk1.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:7:\"vk1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"vk1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"vk1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"vk1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:7:\"vk1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:7:\"vk1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(2723, 30, '_wp_attached_file', '2025/04/tg-1.svg'),
(2724, 30, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:20;s:6:\"height\";i:18;s:4:\"file\";s:16:\"2025/04/tg-1.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:8:\"tg-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"tg-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"tg-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"tg-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:8:\"tg-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:8:\"tg-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(2725, 31, '_wp_attached_file', '2025/04/tg1.svg'),
(2726, 31, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:20;s:6:\"height\";i:18;s:4:\"file\";s:15:\"2025/04/tg1.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:7:\"tg1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"tg1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"tg1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"tg1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:7:\"tg1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:7:\"tg1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(3637, 7, '_crb_add_background', ''),
(3699, 8, '_crb_add_background', ''),
(3843, 32, '_wp_attached_file', '2025/04/Эпизод-01.mp4'),
(3844, 32, '_wp_attachment_metadata', 'a:11:{s:7:\"bitrate\";i:10676814;s:8:\"filesize\";i:90221325;s:9:\"mime_type\";s:9:\"video/mp4\";s:6:\"length\";i:66;s:16:\"length_formatted\";s:4:\"1:06\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:5:\"audio\";a:9:{s:10:\"dataformat\";s:3:\"mp4\";s:7:\"bitrate\";i:317292;s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:48000;s:8:\"channels\";i:2;s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:6:\"stereo\";s:17:\"compression_ratio\";d:0.2065703125;}s:17:\"created_timestamp\";i:1744364869;}'),
(3969, 33, '_wp_attached_file', '2025/04/0a440d28-1a35-45f2-ab40-bb3b347685ba.jpg'),
(3970, 33, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:960;s:4:\"file\";s:48:\"2025/04/0a440d28-1a35-45f2-ab40-bb3b347685ba.jpg\";s:8:\"filesize\";i:109188;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:48:\"0a440d28-1a35-45f2-ab40-bb3b347685ba-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9313;}s:5:\"large\";a:5:{s:4:\"file\";s:49:\"0a440d28-1a35-45f2-ab40-bb3b347685ba-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:82864;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:48:\"0a440d28-1a35-45f2-ab40-bb3b347685ba-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3630;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:48:\"0a440d28-1a35-45f2-ab40-bb3b347685ba-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:49387;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(4623, 60, '_edit_last', '1'),
(4625, 60, '_edit_lock', '1744983132:1'),
(4626, 61, '_edit_last', '1'),
(4628, 61, '_edit_lock', '1744955062:1'),
(4629, 62, '_edit_last', '1'),
(4631, 62, '_edit_lock', '1744955114:1'),
(4632, 63, '_edit_last', '1'),
(4634, 63, '_edit_lock', '1744956358:1'),
(4636, 64, '_wp_attached_file', '2025/04/Изображение-WhatsApp-2025-03-27-в-20.58.18_25a8d050.jpg'),
(4637, 64, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:960;s:4:\"file\";s:75:\"2025/04/Изображение-WhatsApp-2025-03-27-в-20.58.18_25a8d050.jpg\";s:8:\"filesize\";i:118172;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:75:\"Изображение-WhatsApp-2025-03-27-в-20.58.18_25a8d050-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14332;}s:5:\"large\";a:5:{s:4:\"file\";s:76:\"Изображение-WhatsApp-2025-03-27-в-20.58.18_25a8d050-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:98331;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:75:\"Изображение-WhatsApp-2025-03-27-в-20.58.18_25a8d050-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5736;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:75:\"Изображение-WhatsApp-2025-03-27-в-20.58.18_25a8d050-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:63847;}s:7:\"gallery\";a:5:{s:4:\"file\";s:75:\"Изображение-WhatsApp-2025-03-27-в-20.58.18_25a8d050-400x270.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20037;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(4638, 60, '_thumbnail_id', '64'),
(4640, 65, '_wp_attached_file', '2025/04/Изображение-WhatsApp-2025-03-27-в-20.58.53_982fe68e-e1744955197851.jpg'),
(4641, 65, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:960;s:6:\"height\";i:962;s:4:\"file\";s:90:\"2025/04/Изображение-WhatsApp-2025-03-27-в-20.58.53_982fe68e-e1744955197851.jpg\";s:8:\"filesize\";i:290133;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:90:\"Изображение-WhatsApp-2025-03-27-в-20.58.53_982fe68e-e1744955197851-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:30667;}s:5:\"large\";a:5:{s:4:\"file\";s:76:\"Изображение-WhatsApp-2025-03-27-в-20.58.53_982fe68e-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:191931;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:90:\"Изображение-WhatsApp-2025-03-27-в-20.58.53_982fe68e-e1744955197851-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8710;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:90:\"Изображение-WhatsApp-2025-03-27-в-20.58.53_982fe68e-e1744955197851-768x770.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:770;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:172363;}s:7:\"gallery\";a:5:{s:4:\"file\";s:90:\"Изображение-WhatsApp-2025-03-27-в-20.58.53_982fe68e-e1744955197851-400x270.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:37115;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(4642, 65, '_wp_attachment_backup_sizes', 'a:6:{s:9:\"full-orig\";a:4:{s:5:\"width\";i:960;s:6:\"height\";i:1280;s:8:\"filesize\";i:259236;s:4:\"file\";s:67:\"Изображение-WhatsApp-2025-03-27-в-20.58.53_982fe68e.jpg\";}s:14:\"thumbnail-orig\";a:5:{s:4:\"file\";s:75:\"Изображение-WhatsApp-2025-03-27-в-20.58.53_982fe68e-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8084;}s:11:\"medium-orig\";a:5:{s:4:\"file\";s:75:\"Изображение-WhatsApp-2025-03-27-в-20.58.53_982fe68e-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20478;}s:17:\"medium_large-orig\";a:5:{s:4:\"file\";s:76:\"Изображение-WhatsApp-2025-03-27-в-20.58.53_982fe68e-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:191931;}s:10:\"large-orig\";a:5:{s:4:\"file\";s:76:\"Изображение-WhatsApp-2025-03-27-в-20.58.53_982fe68e-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:191931;}s:12:\"gallery-orig\";a:5:{s:4:\"file\";s:75:\"Изображение-WhatsApp-2025-03-27-в-20.58.53_982fe68e-400x270.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36511;}}'),
(4643, 61, '_thumbnail_id', '65'),
(4644, 61, '_crb_gallery_images|||0|_empty', ''),
(4645, 66, '_crb_gallery_images|||0|_empty', ''),
(4646, 67, '_wp_attached_file', '2025/04/Изображение-WhatsApp-2025-03-27-в-20.59.08_f7c92c17.jpg'),
(4647, 67, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:960;s:6:\"height\";i:1280;s:4:\"file\";s:75:\"2025/04/Изображение-WhatsApp-2025-03-27-в-20.59.08_f7c92c17.jpg\";s:8:\"filesize\";i:323887;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:75:\"Изображение-WhatsApp-2025-03-27-в-20.59.08_f7c92c17-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17511;}s:5:\"large\";a:5:{s:4:\"file\";s:76:\"Изображение-WhatsApp-2025-03-27-в-20.59.08_f7c92c17-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:128158;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:75:\"Изображение-WhatsApp-2025-03-27-в-20.59.08_f7c92c17-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6957;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:76:\"Изображение-WhatsApp-2025-03-27-в-20.59.08_f7c92c17-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:128158;}s:7:\"gallery\";a:5:{s:4:\"file\";s:75:\"Изображение-WhatsApp-2025-03-27-в-20.59.08_f7c92c17-400x270.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22550;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(4648, 62, '_thumbnail_id', '67'),
(4649, 62, '_crb_gallery_images|||0|_empty', ''),
(4650, 68, '_wp_attached_file', '2025/04/3daaafb3-8f49-4790-8c97-7362c1f47fdc.jpg'),
(4651, 68, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:900;s:4:\"file\";s:48:\"2025/04/3daaafb3-8f49-4790-8c97-7362c1f47fdc.jpg\";s:8:\"filesize\";i:238361;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:48:\"3daaafb3-8f49-4790-8c97-7362c1f47fdc-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:26211;}s:5:\"large\";a:5:{s:4:\"file\";s:49:\"3daaafb3-8f49-4790-8c97-7362c1f47fdc-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:147525;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:48:\"3daaafb3-8f49-4790-8c97-7362c1f47fdc-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16814;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:48:\"3daaafb3-8f49-4790-8c97-7362c1f47fdc-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:92403;}s:7:\"gallery\";a:5:{s:4:\"file\";s:48:\"3daaafb3-8f49-4790-8c97-7362c1f47fdc-400x270.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:32875;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(4652, 63, '_thumbnail_id', '69'),
(4654, 69, '_wp_attached_file', '2025/04/3daaafb3-8f49-4790-8c97-7362c1f47fdc-1.jpg'),
(4655, 69, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:900;s:4:\"file\";s:50:\"2025/04/3daaafb3-8f49-4790-8c97-7362c1f47fdc-1.jpg\";s:8:\"filesize\";i:238361;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:50:\"3daaafb3-8f49-4790-8c97-7362c1f47fdc-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:26211;}s:5:\"large\";a:5:{s:4:\"file\";s:51:\"3daaafb3-8f49-4790-8c97-7362c1f47fdc-1-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:147525;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:50:\"3daaafb3-8f49-4790-8c97-7362c1f47fdc-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16814;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:50:\"3daaafb3-8f49-4790-8c97-7362c1f47fdc-1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:92403;}s:7:\"gallery\";a:5:{s:4:\"file\";s:50:\"3daaafb3-8f49-4790-8c97-7362c1f47fdc-1-400x270.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:32875;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(4656, 63, '_crb_gallery_images|||0|_empty', ''),
(4660, 70, '_wp_attached_file', '2025/04/Изображение-WhatsApp-2025-03-27-в-20.58.18_5a222879.jpg'),
(4661, 70, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:900;s:4:\"file\";s:75:\"2025/04/Изображение-WhatsApp-2025-03-27-в-20.58.18_5a222879.jpg\";s:8:\"filesize\";i:280428;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:75:\"Изображение-WhatsApp-2025-03-27-в-20.58.18_5a222879-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33817;}s:5:\"large\";a:5:{s:4:\"file\";s:76:\"Изображение-WhatsApp-2025-03-27-в-20.58.18_5a222879-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:183918;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:75:\"Изображение-WhatsApp-2025-03-27-в-20.58.18_5a222879-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21634;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:75:\"Изображение-WhatsApp-2025-03-27-в-20.58.18_5a222879-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:117565;}s:7:\"gallery\";a:5:{s:4:\"file\";s:75:\"Изображение-WhatsApp-2025-03-27-в-20.58.18_5a222879-400x270.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:42951;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(4671, 71, '_wp_attached_file', '2025/04/Изображение-WhatsApp-2025-03-27-в-20.58.18_25a8d050-1.jpg'),
(4672, 71, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:900;s:4:\"file\";s:77:\"2025/04/Изображение-WhatsApp-2025-03-27-в-20.58.18_25a8d050-1.jpg\";s:8:\"filesize\";i:185794;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:77:\"Изображение-WhatsApp-2025-03-27-в-20.58.18_25a8d050-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:29931;}s:5:\"large\";a:5:{s:4:\"file\";s:78:\"Изображение-WhatsApp-2025-03-27-в-20.58.18_25a8d050-1-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:129124;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:77:\"Изображение-WhatsApp-2025-03-27-в-20.58.18_25a8d050-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19625;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:77:\"Изображение-WhatsApp-2025-03-27-в-20.58.18_25a8d050-1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:87808;}s:7:\"gallery\";a:5:{s:4:\"file\";s:77:\"Изображение-WhatsApp-2025-03-27-в-20.58.18_25a8d050-1-400x270.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36497;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(4682, 60, '_crb_gallery_images|||0|value', '_'),
(4683, 60, '_crb_gallery_images|||1|value', '_'),
(4684, 60, '_crb_gallery_images|||2|value', '_'),
(4685, 60, '_crb_gallery_images|crb_gallery_image|0|0|value', '64'),
(4686, 60, '_crb_gallery_images|crb_gallery_image_desc|0|0|value', 'Описание к фото здесь.....'),
(4687, 60, '_crb_gallery_images|crb_gallery_image|1|0|value', '70'),
(4688, 60, '_crb_gallery_images|crb_gallery_image_desc|1|0|value', ''),
(4689, 60, '_crb_gallery_images|crb_gallery_image|2|0|value', '71'),
(4690, 60, '_crb_gallery_images|crb_gallery_image_desc|2|0|value', ''),
(4942, 8, '_crb_bath_list|||0|_empty', ''),
(4971, 72, '_wp_attached_file', '2025/04/001.svg'),
(4972, 72, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:136;s:6:\"height\";i:135;s:4:\"file\";s:15:\"2025/04/001.svg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:7:\"001.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"001.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"001.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"001.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:7:\"001.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:7:\"001.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:7:\"gallery\";a:5:{s:5:\"width\";i:400;s:6:\"height\";i:270;s:4:\"crop\";i:1;s:4:\"file\";s:7:\"001.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(4973, 73, '_wp_attached_file', '2025/04/002.svg'),
(4974, 73, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:136;s:6:\"height\";i:134;s:4:\"file\";s:15:\"2025/04/002.svg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:7:\"002.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"002.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"002.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"002.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:7:\"002.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:7:\"002.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:7:\"gallery\";a:5:{s:5:\"width\";i:400;s:6:\"height\";i:270;s:4:\"crop\";i:1;s:4:\"file\";s:7:\"002.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(4975, 74, '_wp_attached_file', '2025/04/003.svg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(4976, 74, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:135;s:6:\"height\";i:134;s:4:\"file\";s:15:\"2025/04/003.svg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:7:\"003.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"003.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"003.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"003.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:7:\"003.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:7:\"003.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:7:\"gallery\";a:5:{s:5:\"width\";i:400;s:6:\"height\";i:270;s:4:\"crop\";i:1;s:4:\"file\";s:7:\"003.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(4977, 75, '_wp_attached_file', '2025/04/004.svg'),
(4978, 75, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:136;s:6:\"height\";i:135;s:4:\"file\";s:15:\"2025/04/004.svg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:7:\"004.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"004.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"004.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"004.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:7:\"004.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:7:\"004.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:7:\"gallery\";a:5:{s:5:\"width\";i:400;s:6:\"height\";i:270;s:4:\"crop\";i:1;s:4:\"file\";s:7:\"004.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(4979, 76, '_wp_attached_file', '2025/04/005.svg'),
(4980, 76, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:136;s:6:\"height\";i:134;s:4:\"file\";s:15:\"2025/04/005.svg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:7:\"005.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"005.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"005.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"005.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:7:\"005.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:7:\"005.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:7:\"gallery\";a:5:{s:5:\"width\";i:400;s:6:\"height\";i:270;s:4:\"crop\";i:1;s:4:\"file\";s:7:\"005.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(5340, 78, '_wp_attached_file', '2025/04/01.svg'),
(5341, 78, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:82;s:6:\"height\";i:81;s:4:\"file\";s:14:\"2025/04/01.svg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:6:\"01.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"01.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"01.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"01.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:6:\"01.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:6:\"01.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:7:\"gallery\";a:5:{s:5:\"width\";i:400;s:6:\"height\";i:270;s:4:\"crop\";i:1;s:4:\"file\";s:6:\"01.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(5342, 79, '_wp_attached_file', '2025/04/02.svg'),
(5343, 79, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:81;s:6:\"height\";i:80;s:4:\"file\";s:14:\"2025/04/02.svg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:6:\"02.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"02.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"02.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"02.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:6:\"02.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:6:\"02.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:7:\"gallery\";a:5:{s:5:\"width\";i:400;s:6:\"height\";i:270;s:4:\"crop\";i:1;s:4:\"file\";s:6:\"02.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(5344, 80, '_wp_attached_file', '2025/04/03.svg'),
(5345, 80, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:82;s:6:\"height\";i:81;s:4:\"file\";s:14:\"2025/04/03.svg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:6:\"03.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"03.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"03.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"03.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:6:\"03.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:6:\"03.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:7:\"gallery\";a:5:{s:5:\"width\";i:400;s:6:\"height\";i:270;s:4:\"crop\";i:1;s:4:\"file\";s:6:\"03.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(5346, 81, '_wp_attached_file', '2025/04/04.svg'),
(5347, 81, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:82;s:6:\"height\";i:80;s:4:\"file\";s:14:\"2025/04/04.svg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:6:\"04.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"04.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"04.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"04.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:6:\"04.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:6:\"04.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:7:\"gallery\";a:5:{s:5:\"width\";i:400;s:6:\"height\";i:270;s:4:\"crop\";i:1;s:4:\"file\";s:6:\"04.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(5348, 82, '_wp_attached_file', '2025/04/05.svg'),
(5349, 82, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:14:\"2025/04/05.svg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:6:\"05.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"05.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"05.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"05.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:6:\"05.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:6:\"05.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:7:\"gallery\";a:5:{s:5:\"width\";i:400;s:6:\"height\";i:270;s:4:\"crop\";i:1;s:4:\"file\";s:6:\"05.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(5503, 8, '_crb_bath_gallery|||0|_empty', ''),
(5532, 83, '_wp_attached_file', '2025/04/94629182-0e1c-4c87-9d13-a2c0385b538a.jpg'),
(5533, 83, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:900;s:4:\"file\";s:48:\"2025/04/94629182-0e1c-4c87-9d13-a2c0385b538a.jpg\";s:8:\"filesize\";i:537789;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:48:\"94629182-0e1c-4c87-9d13-a2c0385b538a-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:49715;}s:5:\"large\";a:5:{s:4:\"file\";s:49:\"94629182-0e1c-4c87-9d13-a2c0385b538a-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:338204;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:48:\"94629182-0e1c-4c87-9d13-a2c0385b538a-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:27926;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:48:\"94629182-0e1c-4c87-9d13-a2c0385b538a-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:210407;}s:7:\"gallery\";a:5:{s:4:\"file\";s:48:\"94629182-0e1c-4c87-9d13-a2c0385b538a-400x270.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:66561;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(5911, 8, '_crb_faq_items|||0|_empty', ''),
(6156, 7, '_crb_hero_img', ''),
(6157, 7, '_crb_hero_img_mob', ''),
(6158, 7, '_crb_first_video|||0|value', '32'),
(6159, 7, '_crb_svg', ''),
(6160, 7, '_crb_png_img', ''),
(6161, 7, '_crb_hero_heading', 'Рыболовная база в сердце сибирской природы'),
(6162, 7, '_crb_hero_desc', 'где каждый день начинается с утреннего тумана над рекой и заканчивается ароматом ухи, сваренной на костре.'),
(6163, 7, '_crb_hero_link', ''),
(6164, 7, '_crb_hero_link_text', ''),
(6165, 7, '_crb_welcome_pics|||0|value', '_'),
(6166, 7, '_crb_welcome_pics|||1|value', '_'),
(6167, 7, '_crb_welcome_pics|crb_welcome_img|0|0|value', '15'),
(6168, 7, '_crb_welcome_pics|crb_welcome_img|1|0|value', '14'),
(6169, 7, '_crb_welcome_img2', ''),
(6170, 7, '_crb_welcome_head', ''),
(6171, 7, '_crb_welcome_text', 'Наша база расположена в труднодоступном, но удивительно живописном месте — добраться сюда можно на вертолёте или по реке, преодолев 200 километров на судне на воздушной подушке или быстроходном катере.'),
(6172, 7, '_crb_way_head', 'Путешествие на рыбалку'),
(6173, 7, '_crb_way_desc', 'Байкит — Лагерь'),
(6174, 7, '_crb_way_list|||0|value', '_'),
(6175, 7, '_crb_way_list|||1|value', '_'),
(6176, 7, '_crb_way_list|crb_way|0|0|value', 'Красноярск  → Байкит '),
(6177, 7, '_crb_way_list|crb_way_desc|0|0|value', '<strong>Транспорт:</strong> Самолёт\r\n\r\n<strong>Время в пути:</strong> 1 час 40 минут\r\n\r\nПрилёты в Байкит по понедельникам'),
(6178, 7, '_crb_way_list|crb_way_img|0|0|value', ''),
(6179, 7, '_crb_way_list|crb_way|1|0|value', 'Байкит → Рыболовная база'),
(6180, 7, '_crb_way_list|crb_way_desc|1|0|value', '<strong>Варианты транспорта:</strong>\r\n\r\n— Вертолёт – 1 час\r\n\r\n— Судно на воздушной подушке / катер\r\n\r\n<strong>Расстояние: 200 км</strong>\r\n\r\n<strong>Время в пути:</strong>~5 часов'),
(6181, 7, '_crb_way_list|crb_way_img|1|0|value', ''),
(6182, 7, '_crb_way_end_text', '<p style=\"text-transform: uppercase;\">По прибытию — ночной отдых, а уже с раннего утра начинается главное приключение: <span style=\"color: var(--accent);\">рыбалка</span>.</p>'),
(6183, 7, '_crb_about_head', 'О нашей базе'),
(6184, 7, '_crb_about_desc', 'что мы предлагаем'),
(6185, 7, '_crb_about_list|||0|value', '_'),
(6186, 7, '_crb_about_list|||1|value', '_'),
(6187, 7, '_crb_about_list|||2|value', '_'),
(6188, 7, '_crb_about_list|crb_about_img|0|0|value', '23'),
(6189, 7, '_crb_about_list|crb_about_text|0|0|value', 'Каждый день мы отправляемся в новое место на <span style=\"color: var(--accent);\">Хивусе-10</span> — это судно на воздушной подушке, идеально подходящее для таких условий. Одна лодка вмещает до 6 человек, для больших групп предусмотрено несколько судов.'),
(6190, 7, '_crb_about_list|crb_about_img|1|0|value', '24'),
(6191, 7, '_crb_about_list|crb_about_text|1|0|value', '<span style=\"color: var(--accent);\">Обедаем на природе</span> — обязательный элемент дня: свежая уха, приготовленная на костре. Вечером к девяти возвращаемся в лагерь. Вас ждёт баня на плавучей барже: горячая парилка и освежающее погружение в реку. После — сытный ужин, домашняя еда и тепло дружеской компании.'),
(6192, 7, '_crb_about_list|crb_about_img|2|0|value', '25'),
(6193, 7, '_crb_about_list|crb_about_text|2|0|value', 'Наша база — <span style=\"color: var(--accent);\">это не просто рыбалка.</span> Это — единение с природой, чистый воздух, настоящая сибирская тишина и уникальный опыт, который остаётся в памяти надолго.'),
(6194, 7, '_crb_bath_head', 'Баня на барже '),
(6195, 7, '_crb_bath_desc', 'лучшее завершение рыбацкого дня'),
(6196, 7, '_crb_bath_text', 'Обычная баня — это классика, но баня на барже посреди сибирской природы — <strong>совсем другой уровень отдыха</strong>. Это не просто парилка, а ритуал с максимальным эффектом перезагрузки.'),
(6197, 7, '_crb_bath_list|||0|value', '_'),
(6198, 7, '_crb_bath_list|||1|value', '_'),
(6199, 7, '_crb_bath_list|||2|value', '_'),
(6200, 7, '_crb_bath_list|||3|value', '_'),
(6201, 7, '_crb_bath_list|||4|value', '_'),
(6202, 7, '_crb_bath_list|crb_bath_img|0|0|value', '78'),
(6203, 7, '_crb_bath_list|crb_bath_list_head|0|0|value', 'Полное единение с природой'),
(6204, 7, '_crb_bath_list|crb_bath_list_desc|0|0|value', 'Баня стоит прямо на реке, в окружении тайги.\r\nНет стен, соседних домов и суеты — только вода, пар и тишина.'),
(6205, 7, '_crb_bath_list|crb_bath_img|1|0|value', '79'),
(6206, 7, '_crb_bath_list|crb_bath_list_head|1|0|value', 'Из парилки — сразу в реку'),
(6207, 7, '_crb_bath_list|crb_bath_list_desc|1|0|value', 'Здесь нет привычного «ведра с холодной водой» — вместо этого вы ныряете прямо в реку.\r\nКонтраст температур даёт мощный заряд бодрости и укрепляет здоровье.'),
(6208, 7, '_crb_bath_list|crb_bath_img|2|0|value', '80'),
(6209, 7, '_crb_bath_list|crb_bath_list_head|2|0|value', 'Жар, который пропитывает до костей'),
(6210, 7, '_crb_bath_list|crb_bath_list_desc|2|0|value', 'Парилка на воде прогревается равномернее, чем на земле, потому что нет холодного грунта.\r\nЖар выходит мягкий, глубокий, но без \"обжигающего\" эффекта.'),
(6211, 7, '_crb_bath_list|crb_bath_img|3|0|value', '81'),
(6212, 7, '_crb_bath_list|crb_bath_list_head|3|0|value', 'Вид, который нигде не повторится'),
(6213, 7, '_crb_bath_list|crb_bath_list_desc|3|0|value', 'Вы не просто сидите в парной — вы смотрите на реку, закат, отражение звёзд в воде.\r\nЭто совсем другой уровень релакса и атмосферности.'),
(6214, 7, '_crb_bath_list|crb_bath_img|4|0|value', '82'),
(6215, 7, '_crb_bath_list|crb_bath_list_head|4|0|value', 'Это часть сибирского стиля жизни'),
(6216, 7, '_crb_bath_list|crb_bath_list_desc|4|0|value', 'Баня на воде — традиция у северных рыбаков. Так смывают усталость, настраиваются на новый день и по-настоящему отдыхают.'),
(6217, 7, '_crb_bath_summary', 'Баня на барже — это не просто парилка. Это ощущения, которые нельзя испытать в городской сауне.\r\nНастоящий ритуал после рыбалки, который сделает ваш отдых незабываемым.'),
(6218, 7, '_crb_bath_gallery|||0|value', '_'),
(6219, 7, '_crb_bath_gallery|||1|value', '_'),
(6220, 7, '_crb_bath_gallery|||2|value', '_'),
(6221, 7, '_crb_bath_gallery|||3|value', '_'),
(6222, 7, '_crb_bath_gallery|||4|value', '_'),
(6223, 7, '_crb_bath_gallery|crb_bath_gal_img|0|0|value', '71'),
(6224, 7, '_crb_bath_gallery|crb_bath_gal_img|1|0|value', '64'),
(6225, 7, '_crb_bath_gallery|crb_bath_gal_img|2|0|value', '83'),
(6226, 7, '_crb_bath_gallery|crb_bath_gal_img|3|0|value', '70'),
(6227, 7, '_crb_bath_gallery|crb_bath_gal_img|4|0|value', '71'),
(6228, 7, '_crb_faq_head', 'Часто задаваемые вопросы'),
(6229, 7, '_crb_faq_desc', 'FAQ'),
(6230, 7, '_crb_faq_items|||0|value', '_'),
(6231, 7, '_crb_faq_items|||1|value', '_'),
(6232, 7, '_crb_faq_items|crb_faq_question|0|0|value', 'Сколько человек должно быть в группе?'),
(6233, 7, '_crb_faq_items|crb_faq_answer|0|0|value', 'Минимальное количество участников - 2, максимальное - не ограничено.'),
(6234, 7, '_crb_faq_items|crb_faq_question|1|0|value', 'Я хочу поехать, но у меня нет группы'),
(6235, 7, '_crb_faq_items|crb_faq_answer|1|0|value', 'Свяжитесь с нами и мы найдем для вас место в одной из групп.'),
(6236, 7, '_crb_hero_video|||0|value', '26'),
(6237, 7, '_crb_video_text', 'Наша база расположена в труднодоступном, но удивительно живописном месте — добраться сюда можно на вертолёте или по реке, преодолев 200 километров на судне на воздушной подушке или быстроходном катере.'),
(6238, 7, '_crb_image_background', '33'),
(6239, 7, '_crb_image_text', 'Тунгуска — это не просто место. Это формат рыбалки, который открывает Сибирь по-настоящему.'),
(6240, 7, '_crb_add_head', 'Подробнее о туре'),
(6241, 7, '_crb_add_desc', 'информация'),
(6242, 7, '_crb_add_text', 'Тур рассчитан на 1 неделю, но желанию можно продлить на 2 недели — удвойте удовольствие и откройте больше рыболовных мест!\r\n\r\n<strong>Свяжитесь с нами, чтобы узнать подробности:</strong>'),
(6243, 7, '_crb_add_link', '/'),
(6244, 7, '_crb_add_link_text', 'Написать'),
(6245, 7, '_crb_add_slides|||0|value', '_'),
(6246, 7, '_crb_add_slides|||1|value', '_'),
(6247, 7, '_crb_add_slides|||2|value', '_'),
(6248, 7, '_crb_add_slides|crb_add_slide_image|0|0|value', '13'),
(6249, 7, '_crb_add_slides|crb_add_slide_head|0|0|value', 'Проживание'),
(6250, 7, '_crb_add_slides|crb_add_slide_text|0|0|value', '<strong>Живём в палатках</strong>\r\n<ul>\r\n 	<li>Просторные палатки на 2 человека</li>\r\n 	<li>Кровати, постельное бельё</li>\r\n 	<li>На полу — линолеум</li>\r\n 	<li>Печки в каждой палатке — можно топить в любое время</li>\r\n 	<li>Ежедневная влажная уборка</li>\r\n</ul>'),
(6251, 7, '_crb_add_slides|crb_add_slide_image|1|0|value', '13'),
(6252, 7, '_crb_add_slides|crb_add_slide_head|1|0|value', 'Питание'),
(6253, 7, '_crb_add_slides|crb_add_slide_text|1|0|value', '<strong>Сытная и разнообразная кухня</strong>\r\n<ul>\r\n 	<li>Много блюд из рыбы:</li>\r\n 	<li>Жареная рыба</li>\r\n 	<li>Сугудай</li>\r\n 	<li>Котлеты</li>\r\n 	<li>Пельмени</li>\r\n 	<li>Манты</li>\r\n 	<li>Чебуреки</li>\r\n 	<li>Беляши</li>\r\n</ul>\r\n<strong>Обязательная уха на природе во время рыбалки</strong>'),
(6254, 7, '_crb_add_slides|crb_add_slide_image|2|0|value', '13'),
(6255, 7, '_crb_add_slides|crb_add_slide_head|2|0|value', 'Рыболовный день'),
(6256, 7, '_crb_add_slides|crb_add_slide_text|2|0|value', '<strong>Утро</strong>\r\n<ul>\r\n 	<li>Завтрак</li>\r\n 	<li>Выезд на рыбалку 08:30 (Транспорт: Хивус-10, вместимость 6 чел., при необходимости предоставляется 2 судна)</li>\r\n</ul>\r\n<strong>День</strong>\r\n<ul>\r\n 	<li>Рыбалка в разных местах каждый день</li>\r\n 	<li>Обед на природе, без возвращения на базу</li>\r\n</ul>\r\n<strong>Вечер</strong>\r\n<ul>\r\n 	<li>Возвращение на базу в 21:00</li>\r\n 	<li>Баня на барже: парилка и река</li>\r\n 	<li>Полноценный ужин</li>\r\n</ul>'),
(6257, 7, '_crb_map_head', 'Наша база на карте'),
(6258, 7, '_crb_map_desc', 'мы находимся здесь'),
(6259, 7, '_crb_cf_form_heading', ''),
(6260, 7, '_crb_cf_form_description', ''),
(6261, 7, '_crb_cf_form_text', ''),
(6262, 7, '_crb_cf_form_image', ''),
(6263, 7, '_crb_cf_form_shortcode', ''),
(6264, 8, '_crb_hero_img', ''),
(6265, 8, '_crb_hero_img_mob', ''),
(6266, 8, '_crb_first_video|||0|value', '32'),
(6267, 8, '_crb_svg', ''),
(6268, 8, '_crb_png_img', ''),
(6269, 8, '_crb_hero_heading', 'Рыболовная база в сердце сибирской природы'),
(6270, 8, '_crb_hero_desc', 'где каждый день начинается с утреннего тумана над рекой и заканчивается ароматом ухи, сваренной на костре.'),
(6271, 8, '_crb_hero_link', ''),
(6272, 8, '_crb_hero_link_text', ''),
(6273, 8, '_crb_welcome_pics|||0|value', '_'),
(6274, 8, '_crb_welcome_pics|||1|value', '_'),
(6275, 8, '_crb_welcome_pics|crb_welcome_img|0|0|value', '15'),
(6276, 8, '_crb_welcome_pics|crb_welcome_img|1|0|value', '14'),
(6277, 8, '_crb_welcome_img2', ''),
(6278, 8, '_crb_welcome_head', ''),
(6279, 8, '_crb_welcome_text', 'Наша база расположена в труднодоступном, но удивительно живописном месте — добраться сюда можно на вертолёте или по реке, преодолев 200 километров на судне на воздушной подушке или быстроходном катере.'),
(6280, 8, '_crb_way_head', 'Путешествие на рыбалку'),
(6281, 8, '_crb_way_desc', 'Байкит — Лагерь'),
(6282, 8, '_crb_way_list|||0|value', '_'),
(6283, 8, '_crb_way_list|||1|value', '_'),
(6284, 8, '_crb_way_list|crb_way|0|0|value', 'Красноярск  → Байкит '),
(6285, 8, '_crb_way_list|crb_way_desc|0|0|value', '<strong>Транспорт:</strong> Самолёт\r\n\r\n<strong>Время в пути:</strong> 1 час 40 минут\r\n\r\nПрилёты в Байкит по понедельникам'),
(6286, 8, '_crb_way_list|crb_way_img|0|0|value', ''),
(6287, 8, '_crb_way_list|crb_way|1|0|value', 'Байкит → Рыболовная база'),
(6288, 8, '_crb_way_list|crb_way_desc|1|0|value', '<strong>Варианты транспорта:</strong>\r\n\r\n— Вертолёт – 1 час\r\n\r\n— Судно на воздушной подушке / катер\r\n\r\n<strong>Расстояние: 200 км</strong>\r\n\r\n<strong>Время в пути:</strong>~5 часов'),
(6289, 8, '_crb_way_list|crb_way_img|1|0|value', ''),
(6290, 8, '_crb_way_end_text', '<p style=\"text-transform: uppercase;\">По прибытию — ночной отдых, а уже с раннего утра начинается главное приключение: <span style=\"color: var(--accent);\">рыбалка</span>.</p>'),
(6291, 8, '_crb_about_head', 'О нашей базе'),
(6292, 8, '_crb_about_desc', 'что мы предлагаем'),
(6293, 8, '_crb_about_list|||0|value', '_'),
(6294, 8, '_crb_about_list|||1|value', '_'),
(6295, 8, '_crb_about_list|||2|value', '_'),
(6296, 8, '_crb_about_list|crb_about_img|0|0|value', '23'),
(6297, 8, '_crb_about_list|crb_about_text|0|0|value', 'Каждый день мы отправляемся в новое место на <span style=\"color: var(--accent);\">Хивусе-10</span> — это судно на воздушной подушке, идеально подходящее для таких условий. Одна лодка вмещает до 6 человек, для больших групп предусмотрено несколько судов.'),
(6298, 8, '_crb_about_list|crb_about_img|1|0|value', '24'),
(6299, 8, '_crb_about_list|crb_about_text|1|0|value', '<span style=\"color: var(--accent);\">Обедаем на природе</span> — обязательный элемент дня: свежая уха, приготовленная на костре. Вечером к девяти возвращаемся в лагерь. Вас ждёт баня на плавучей барже: горячая парилка и освежающее погружение в реку. После — сытный ужин, домашняя еда и тепло дружеской компании.'),
(6300, 8, '_crb_about_list|crb_about_img|2|0|value', '25'),
(6301, 8, '_crb_about_list|crb_about_text|2|0|value', 'Наша база — <span style=\"color: var(--accent);\">это не просто рыбалка.</span> Это — единение с природой, чистый воздух, настоящая сибирская тишина и уникальный опыт, который остаётся в памяти надолго.'),
(6302, 8, '_crb_bath_head', 'Баня на барже '),
(6303, 8, '_crb_bath_desc', 'лучшее завершение рыбацкого дня'),
(6304, 8, '_crb_bath_text', 'Обычная баня — это классика, но баня на барже посреди сибирской природы — <strong>совсем другой уровень отдыха</strong>. Это не просто парилка, а ритуал с максимальным эффектом перезагрузки.'),
(6305, 8, '_crb_bath_list|||0|value', '_'),
(6306, 8, '_crb_bath_list|||1|value', '_'),
(6307, 8, '_crb_bath_list|||2|value', '_'),
(6308, 8, '_crb_bath_list|||3|value', '_'),
(6309, 8, '_crb_bath_list|||4|value', '_'),
(6310, 8, '_crb_bath_list|crb_bath_img|0|0|value', '78'),
(6311, 8, '_crb_bath_list|crb_bath_list_head|0|0|value', 'Полное единение с природой'),
(6312, 8, '_crb_bath_list|crb_bath_list_desc|0|0|value', 'Баня стоит прямо на реке, в окружении тайги.\r\nНет стен, соседних домов и суеты — только вода, пар и тишина.'),
(6313, 8, '_crb_bath_list|crb_bath_img|1|0|value', '79'),
(6314, 8, '_crb_bath_list|crb_bath_list_head|1|0|value', 'Из парилки — сразу в реку'),
(6315, 8, '_crb_bath_list|crb_bath_list_desc|1|0|value', 'Здесь нет привычного «ведра с холодной водой» — вместо этого вы ныряете прямо в реку.\r\nКонтраст температур даёт мощный заряд бодрости и укрепляет здоровье.'),
(6316, 8, '_crb_bath_list|crb_bath_img|2|0|value', '80'),
(6317, 8, '_crb_bath_list|crb_bath_list_head|2|0|value', 'Жар, который пропитывает до костей'),
(6318, 8, '_crb_bath_list|crb_bath_list_desc|2|0|value', 'Парилка на воде прогревается равномернее, чем на земле, потому что нет холодного грунта.\r\nЖар выходит мягкий, глубокий, но без \"обжигающего\" эффекта.'),
(6319, 8, '_crb_bath_list|crb_bath_img|3|0|value', '81'),
(6320, 8, '_crb_bath_list|crb_bath_list_head|3|0|value', 'Вид, который нигде не повторится'),
(6321, 8, '_crb_bath_list|crb_bath_list_desc|3|0|value', 'Вы не просто сидите в парной — вы смотрите на реку, закат, отражение звёзд в воде.\r\nЭто совсем другой уровень релакса и атмосферности.'),
(6322, 8, '_crb_bath_list|crb_bath_img|4|0|value', '82'),
(6323, 8, '_crb_bath_list|crb_bath_list_head|4|0|value', 'Это часть сибирского стиля жизни'),
(6324, 8, '_crb_bath_list|crb_bath_list_desc|4|0|value', 'Баня на воде — традиция у северных рыбаков. Так смывают усталость, настраиваются на новый день и по-настоящему отдыхают.'),
(6325, 8, '_crb_bath_summary', 'Баня на барже — это не просто парилка. Это ощущения, которые нельзя испытать в городской сауне.\r\nНастоящий ритуал после рыбалки, который сделает ваш отдых незабываемым.'),
(6326, 8, '_crb_bath_gallery|||0|value', '_'),
(6327, 8, '_crb_bath_gallery|||1|value', '_'),
(6328, 8, '_crb_bath_gallery|||2|value', '_'),
(6329, 8, '_crb_bath_gallery|||3|value', '_'),
(6330, 8, '_crb_bath_gallery|||4|value', '_'),
(6331, 8, '_crb_bath_gallery|crb_bath_gal_img|0|0|value', '71'),
(6332, 8, '_crb_bath_gallery|crb_bath_gal_img|1|0|value', '64'),
(6333, 8, '_crb_bath_gallery|crb_bath_gal_img|2|0|value', '83'),
(6334, 8, '_crb_bath_gallery|crb_bath_gal_img|3|0|value', '70'),
(6335, 8, '_crb_bath_gallery|crb_bath_gal_img|4|0|value', '71'),
(6336, 8, '_crb_faq_head', 'Часто задаваемые вопросы'),
(6337, 8, '_crb_faq_desc', 'FAQ'),
(6338, 8, '_crb_faq_items|||0|value', '_'),
(6339, 8, '_crb_faq_items|||1|value', '_'),
(6340, 8, '_crb_faq_items|crb_faq_question|0|0|value', 'Сколько человек должно быть в группе?'),
(6341, 8, '_crb_faq_items|crb_faq_answer|0|0|value', 'Минимальное количество участников - 2, максимальное - не ограничено.'),
(6342, 8, '_crb_faq_items|crb_faq_question|1|0|value', 'Я хочу поехать, но у меня нет группы'),
(6343, 8, '_crb_faq_items|crb_faq_answer|1|0|value', 'Свяжитесь с нами и мы найдем для вас место в одной из групп.'),
(6344, 8, '_crb_hero_video|||0|value', '26'),
(6345, 8, '_crb_video_text', 'Наша база расположена в труднодоступном, но удивительно живописном месте — добраться сюда можно на вертолёте или по реке, преодолев 200 километров на судне на воздушной подушке или быстроходном катере.'),
(6346, 8, '_crb_image_background', '33'),
(6347, 8, '_crb_image_text', 'Тунгуска — это не просто место. Это формат рыбалки, который открывает Сибирь по-настоящему.'),
(6348, 8, '_crb_add_head', 'Подробнее о туре'),
(6349, 8, '_crb_add_desc', 'информация'),
(6350, 8, '_crb_add_text', 'Тур рассчитан на 1 неделю, но желанию можно продлить на 2 недели — удвойте удовольствие и откройте больше рыболовных мест!\r\n\r\n<strong>Свяжитесь с нами, чтобы узнать подробности:</strong>'),
(6351, 8, '_crb_add_link', '/'),
(6352, 8, '_crb_add_link_text', 'Написать'),
(6353, 8, '_crb_add_slides|||0|value', '_'),
(6354, 8, '_crb_add_slides|||1|value', '_'),
(6355, 8, '_crb_add_slides|||2|value', '_'),
(6356, 8, '_crb_add_slides|crb_add_slide_image|0|0|value', '13'),
(6357, 8, '_crb_add_slides|crb_add_slide_head|0|0|value', 'Проживание'),
(6358, 8, '_crb_add_slides|crb_add_slide_text|0|0|value', '<strong>Живём в палатках</strong>\r\n<ul>\r\n 	<li>Просторные палатки на 2 человека</li>\r\n 	<li>Кровати, постельное бельё</li>\r\n 	<li>На полу — линолеум</li>\r\n 	<li>Печки в каждой палатке — можно топить в любое время</li>\r\n 	<li>Ежедневная влажная уборка</li>\r\n</ul>'),
(6359, 8, '_crb_add_slides|crb_add_slide_image|1|0|value', '13'),
(6360, 8, '_crb_add_slides|crb_add_slide_head|1|0|value', 'Питание'),
(6361, 8, '_crb_add_slides|crb_add_slide_text|1|0|value', '<strong>Сытная и разнообразная кухня</strong>\r\n<ul>\r\n 	<li>Много блюд из рыбы:</li>\r\n 	<li>Жареная рыба</li>\r\n 	<li>Сугудай</li>\r\n 	<li>Котлеты</li>\r\n 	<li>Пельмени</li>\r\n 	<li>Манты</li>\r\n 	<li>Чебуреки</li>\r\n 	<li>Беляши</li>\r\n</ul>\r\n<strong>Обязательная уха на природе во время рыбалки</strong>'),
(6362, 8, '_crb_add_slides|crb_add_slide_image|2|0|value', '13'),
(6363, 8, '_crb_add_slides|crb_add_slide_head|2|0|value', 'Рыболовный день'),
(6364, 8, '_crb_add_slides|crb_add_slide_text|2|0|value', '<strong>Утро</strong>\r\n<ul>\r\n 	<li>Завтрак</li>\r\n 	<li>Выезд на рыбалку 08:30 (Транспорт: Хивус-10, вместимость 6 чел., при необходимости предоставляется 2 судна)</li>\r\n</ul>\r\n<strong>День</strong>\r\n<ul>\r\n 	<li>Рыбалка в разных местах каждый день</li>\r\n 	<li>Обед на природе, без возвращения на базу</li>\r\n</ul>\r\n<strong>Вечер</strong>\r\n<ul>\r\n 	<li>Возвращение на базу в 21:00</li>\r\n 	<li>Баня на барже: парилка и река</li>\r\n 	<li>Полноценный ужин</li>\r\n</ul>'),
(6365, 8, '_crb_map_head', 'Наша база на карте'),
(6366, 8, '_crb_map_desc', 'мы находимся здесь'),
(6367, 8, '_crb_cf_form_heading', ''),
(6368, 8, '_crb_cf_form_description', ''),
(6369, 8, '_crb_cf_form_text', ''),
(6370, 8, '_crb_cf_form_image', ''),
(6371, 8, '_crb_cf_form_shortcode', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2025-04-10 08:34:45', '2025-04-10 05:34:45', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2025-04-10 08:34:45', '2025-04-10 05:34:45', '', 0, 'https://fishing.local/?p=1', 0, 'post', '', 1),
(2, 1, '2025-04-10 08:34:45', '2025-04-10 05:34:45', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"https://fishing.local/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2025-04-10 08:34:45', '2025-04-10 05:34:45', '', 0, 'https://fishing.local/?page_id=2', 0, 'page', '', 0),
(3, 1, '2025-04-10 08:34:45', '2025-04-10 05:34:45', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Кто мы</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: https://fishing.local.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Комментарии</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Медиафайлы</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Куки</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Встраиваемое содержимое других вебсайтов</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">С кем мы делимся вашими данными</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Как долго мы храним ваши данные</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Какие у вас права на ваши данные</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Куда отправляются ваши данные</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p>\n<!-- /wp:paragraph -->\n', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2025-04-10 08:34:45', '2025-04-10 05:34:45', '', 0, 'https://fishing.local/?page_id=3', 0, 'page', '', 0),
(5, 1, '2025-04-10 08:57:42', '2025-04-10 05:57:42', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2025-04-10 08:57:42', '2025-04-10 05:57:42', '', 0, 'https://fishing.local/wp-content/uploads/2025/04/logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(7, 1, '2025-04-10 08:58:22', '2025-04-10 05:58:22', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'main', '', '', '2025-04-21 08:18:44', '2025-04-21 05:18:44', '', 0, 'https://fishing.local/?page_id=7', 0, 'page', '', 0),
(8, 1, '2025-04-10 08:58:22', '2025-04-10 05:58:22', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2025-04-10 08:58:22', '2025-04-10 05:58:22', '', 7, 'https://fishing.local/?p=8', 0, 'revision', '', 0),
(10, 1, '2025-04-10 09:04:39', '2025-04-10 06:04:39', '', 'Изображение WhatsApp 2025-03-27 в 21.04.21_248d68dd', '', 'inherit', 'open', 'closed', '', '%d0%b8%d0%b7%d0%be%d0%b1%d1%80%d0%b0%d0%b6%d0%b5%d0%bd%d0%b8%d0%b5-whatsapp-2025-03-27-%d0%b2-21-04-21_248d68dd', '', '', '2025-04-10 09:04:39', '2025-04-10 06:04:39', '', 7, 'https://fishing.local/wp-content/uploads/2025/04/Изображение-WhatsApp-2025-03-27-в-21.04.21_248d68dd.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2025-04-10 09:39:14', '2025-04-10 06:39:14', '', 'logo1', '', 'inherit', 'open', 'closed', '', 'logo1', '', '', '2025-04-10 09:39:14', '2025-04-10 06:39:14', '', 0, 'https://fishing.local/wp-content/uploads/2025/04/logo1.svg', 0, 'attachment', 'image/svg+xml', 0),
(13, 1, '2025-04-10 11:13:31', '2025-04-10 08:13:31', '', '23552fd7-0cc5-4f4e-82e1-d13df4a99249', '', 'inherit', 'open', 'closed', '', '23552fd7-0cc5-4f4e-82e1-d13df4a99249', '', '', '2025-04-10 11:13:31', '2025-04-10 08:13:31', '', 7, 'https://fishing.local/wp-content/uploads/2025/04/23552fd7-0cc5-4f4e-82e1-d13df4a99249.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2025-04-10 14:44:20', '2025-04-10 11:44:20', '', 'Изображение WhatsApp 2025-03-27 в 20.58.21_66043534', '', 'inherit', 'open', 'closed', '', '%d0%b8%d0%b7%d0%be%d0%b1%d1%80%d0%b0%d0%b6%d0%b5%d0%bd%d0%b8%d0%b5-whatsapp-2025-03-27-%d0%b2-20-58-21_66043534', '', '', '2025-04-10 14:44:20', '2025-04-10 11:44:20', '', 7, 'https://fishing.local/wp-content/uploads/2025/04/Изображение-WhatsApp-2025-03-27-в-20.58.21_66043534.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2025-04-10 14:44:32', '2025-04-10 11:44:32', '', 'Изображение WhatsApp 2025-03-27 в 20.58.54_4283d0f6', '', 'inherit', 'open', 'closed', '', '%d0%b8%d0%b7%d0%be%d0%b1%d1%80%d0%b0%d0%b6%d0%b5%d0%bd%d0%b8%d0%b5-whatsapp-2025-03-27-%d0%b2-20-58-54_4283d0f6', '', '', '2025-04-10 14:44:32', '2025-04-10 11:44:32', '', 7, 'https://fishing.local/wp-content/uploads/2025/04/Изображение-WhatsApp-2025-03-27-в-20.58.54_4283d0f6.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2025-04-10 19:49:59', '2025-04-10 16:49:59', '', 'boat', '', 'inherit', 'open', 'closed', '', 'boat', '', '', '2025-04-10 19:49:59', '2025-04-10 16:49:59', '', 7, 'https://fishing.local/wp-content/uploads/2025/04/boat.svg', 0, 'attachment', 'image/svg+xml', 0),
(17, 1, '2025-04-10 19:50:55', '2025-04-10 16:50:55', '', 'food', '', 'inherit', 'open', 'closed', '', 'food', '', '', '2025-04-10 19:50:55', '2025-04-10 16:50:55', '', 7, 'https://fishing.local/wp-content/uploads/2025/04/food.svg', 0, 'attachment', 'image/svg+xml', 0),
(18, 1, '2025-04-10 19:51:28', '2025-04-10 16:51:28', '', 'tree', '', 'inherit', 'open', 'closed', '', 'tree', '', '', '2025-04-10 19:51:28', '2025-04-10 16:51:28', '', 7, 'https://fishing.local/wp-content/uploads/2025/04/tree.svg', 0, 'attachment', 'image/svg+xml', 0),
(19, 1, '2025-04-10 19:59:42', '2025-04-10 16:59:42', '', 'tg', '', 'inherit', 'open', 'closed', '', 'tg', '', '', '2025-04-10 19:59:42', '2025-04-10 16:59:42', '', 0, 'https://fishing.local/wp-content/uploads/2025/04/tg.svg', 0, 'attachment', 'image/svg+xml', 0),
(20, 1, '2025-04-10 19:59:43', '2025-04-10 16:59:43', '', 'vk', '', 'inherit', 'open', 'closed', '', 'vk', '', '', '2025-04-10 19:59:43', '2025-04-10 16:59:43', '', 0, 'https://fishing.local/wp-content/uploads/2025/04/vk.svg', 0, 'attachment', 'image/svg+xml', 0),
(21, 1, '2025-04-10 19:59:44', '2025-04-10 16:59:44', '', 'wa', '', 'inherit', 'open', 'closed', '', 'wa', '', '', '2025-04-10 19:59:44', '2025-04-10 16:59:44', '', 0, 'https://fishing.local/wp-content/uploads/2025/04/wa.svg', 0, 'attachment', 'image/svg+xml', 0),
(22, 1, '2025-04-10 20:03:22', '2025-04-10 17:03:22', '', 'phone', '', 'inherit', 'open', 'closed', '', 'phone', '', '', '2025-04-10 20:03:22', '2025-04-10 17:03:22', '', 0, 'https://fishing.local/wp-content/uploads/2025/04/phone.svg', 0, 'attachment', 'image/svg+xml', 0),
(23, 1, '2025-04-10 20:10:13', '2025-04-10 17:10:13', '', 'boat-w', '', 'inherit', 'open', 'closed', '', 'boat-w', '', '', '2025-04-10 20:10:13', '2025-04-10 17:10:13', '', 7, 'https://fishing.local/wp-content/uploads/2025/04/boat-w.svg', 0, 'attachment', 'image/svg+xml', 0),
(24, 1, '2025-04-10 20:10:23', '2025-04-10 17:10:23', '', 'food-w', '', 'inherit', 'open', 'closed', '', 'food-w', '', '', '2025-04-10 20:10:23', '2025-04-10 17:10:23', '', 7, 'https://fishing.local/wp-content/uploads/2025/04/food-w.svg', 0, 'attachment', 'image/svg+xml', 0),
(25, 1, '2025-04-10 20:10:33', '2025-04-10 17:10:33', '', 'tree-w', '', 'inherit', 'open', 'closed', '', 'tree-w', '', '', '2025-04-10 20:10:33', '2025-04-10 17:10:33', '', 7, 'https://fishing.local/wp-content/uploads/2025/04/tree-w.svg', 0, 'attachment', 'image/svg+xml', 0),
(26, 1, '2025-04-10 21:07:04', '2025-04-10 18:07:04', '', 'video', '', 'inherit', 'open', 'closed', '', 'video', '', '', '2025-04-10 21:07:04', '2025-04-10 18:07:04', '', 7, 'https://fishing.local/wp-content/uploads/2025/04/video.mp4', 0, 'attachment', 'video/mp4', 0),
(27, 1, '2025-04-10 22:54:26', '2025-04-10 19:54:26', '', 'tel', '', 'inherit', 'open', 'closed', '', 'tel', '', '', '2025-04-10 22:54:26', '2025-04-10 19:54:26', '', 0, 'https://fishing.local/wp-content/uploads/2025/04/tel.svg', 0, 'attachment', 'image/svg+xml', 0),
(28, 1, '2025-04-10 22:54:48', '2025-04-10 19:54:48', '', 'wa1', '', 'inherit', 'open', 'closed', '', 'wa1', '', '', '2025-04-10 22:54:48', '2025-04-10 19:54:48', '', 0, 'https://fishing.local/wp-content/uploads/2025/04/wa1.svg', 0, 'attachment', 'image/svg+xml', 0),
(29, 1, '2025-04-10 22:55:03', '2025-04-10 19:55:03', '', 'vk1', '', 'inherit', 'open', 'closed', '', 'vk1', '', '', '2025-04-10 22:55:03', '2025-04-10 19:55:03', '', 0, 'https://fishing.local/wp-content/uploads/2025/04/vk1.svg', 0, 'attachment', 'image/svg+xml', 0),
(30, 1, '2025-04-10 22:55:20', '2025-04-10 19:55:20', '', 'tg', '', 'inherit', 'open', 'closed', '', 'tg-2', '', '', '2025-04-10 22:55:20', '2025-04-10 19:55:20', '', 0, 'https://fishing.local/wp-content/uploads/2025/04/tg-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(31, 1, '2025-04-10 22:55:28', '2025-04-10 19:55:28', '', 'tg1', '', 'inherit', 'open', 'closed', '', 'tg1', '', '', '2025-04-10 22:55:28', '2025-04-10 19:55:28', '', 0, 'https://fishing.local/wp-content/uploads/2025/04/tg1.svg', 0, 'attachment', 'image/svg+xml', 0),
(32, 1, '2025-04-11 12:48:45', '2025-04-11 09:48:45', '', 'Эпизод 01', '', 'inherit', 'open', 'closed', '', '%d1%8d%d0%bf%d0%b8%d0%b7%d0%be%d0%b4-01', '', '', '2025-04-11 12:48:45', '2025-04-11 09:48:45', '', 7, 'https://fishing.local/wp-content/uploads/2025/04/Эпизод-01.mp4', 0, 'attachment', 'video/mp4', 0),
(33, 1, '2025-04-11 14:12:06', '2025-04-11 11:12:06', '', '0a440d28-1a35-45f2-ab40-bb3b347685ba', '', 'inherit', 'open', 'closed', '', '0a440d28-1a35-45f2-ab40-bb3b347685ba', '', '', '2025-04-11 14:12:06', '2025-04-11 11:12:06', '', 7, 'https://fishing.local/wp-content/uploads/2025/04/0a440d28-1a35-45f2-ab40-bb3b347685ba.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2025-04-18 08:42:29', '2025-04-18 05:42:29', '', 'Баня на барже', '', 'publish', 'closed', 'closed', '', '%d0%b1%d0%b0%d0%bd%d1%8f-%d0%bd%d0%b0-%d0%b1%d0%b0%d1%80%d0%b6%d0%b5', '', '', '2025-04-18 10:50:46', '2025-04-18 07:50:46', '', 0, 'https://fishing.local/?post_type=photos&#038;p=60', 0, 'photos', '', 0),
(61, 1, '2025-04-18 08:42:43', '2025-04-18 05:42:43', '', 'Кухня', '', 'publish', 'closed', 'closed', '', '%d0%ba%d1%83%d1%85%d0%bd%d1%8f', '', '', '2025-04-18 08:46:43', '2025-04-18 05:46:43', '', 0, 'https://fishing.local/?post_type=photos&#038;p=61', 0, 'photos', '', 0),
(62, 1, '2025-04-18 08:42:55', '2025-04-18 05:42:55', '', 'Наш улов', '', 'publish', 'closed', 'closed', '', '%d0%bd%d0%b0%d1%88-%d1%83%d0%bb%d0%be%d0%b2', '', '', '2025-04-18 08:47:36', '2025-04-18 05:47:36', '', 0, 'https://fishing.local/?post_type=photos&#038;p=62', 0, 'photos', '', 0),
(63, 1, '2025-04-18 08:43:08', '2025-04-18 05:43:08', '', 'Природа', '', 'publish', 'closed', 'closed', '', '%d0%bf%d1%80%d0%b8%d1%80%d0%be%d0%b4%d0%b0', '', '', '2025-04-18 08:49:17', '2025-04-18 05:49:17', '', 0, 'https://fishing.local/?post_type=photos&#038;p=63', 0, 'photos', '', 0),
(64, 1, '2025-04-18 08:45:00', '2025-04-18 05:45:00', '', 'Изображение WhatsApp 2025-03-27 в 20.58.18_25a8d050', '', 'inherit', 'open', 'closed', '', '%d0%b8%d0%b7%d0%be%d0%b1%d1%80%d0%b0%d0%b6%d0%b5%d0%bd%d0%b8%d0%b5-whatsapp-2025-03-27-%d0%b2-20-58-18_25a8d050', '', '', '2025-04-18 08:45:00', '2025-04-18 05:45:00', '', 60, 'https://fishing.local/wp-content/uploads/2025/04/Изображение-WhatsApp-2025-03-27-в-20.58.18_25a8d050.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2025-04-18 08:46:14', '2025-04-18 05:46:14', '', 'Изображение WhatsApp 2025-03-27 в 20.58.53_982fe68e', '', 'inherit', 'open', 'closed', '', '%d0%b8%d0%b7%d0%be%d0%b1%d1%80%d0%b0%d0%b6%d0%b5%d0%bd%d0%b8%d0%b5-whatsapp-2025-03-27-%d0%b2-20-58-53_982fe68e', '', '', '2025-04-18 08:46:14', '2025-04-18 05:46:14', '', 61, 'https://fishing.local/wp-content/uploads/2025/04/Изображение-WhatsApp-2025-03-27-в-20.58.53_982fe68e.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2025-04-18 08:46:53', '2025-04-18 05:46:53', '', 'Наш улов', '', 'inherit', 'closed', 'closed', '', '62-autosave-v1', '', '', '2025-04-18 08:46:53', '2025-04-18 05:46:53', '', 62, 'https://fishing.local/?p=66', 0, 'revision', '', 0),
(67, 1, '2025-04-18 08:47:29', '2025-04-18 05:47:29', '', 'Изображение WhatsApp 2025-03-27 в 20.59.08_f7c92c17', '', 'inherit', 'open', 'closed', '', '%d0%b8%d0%b7%d0%be%d0%b1%d1%80%d0%b0%d0%b6%d0%b5%d0%bd%d0%b8%d0%b5-whatsapp-2025-03-27-%d0%b2-20-59-08_f7c92c17', '', '', '2025-04-18 08:47:29', '2025-04-18 05:47:29', '', 62, 'https://fishing.local/wp-content/uploads/2025/04/Изображение-WhatsApp-2025-03-27-в-20.59.08_f7c92c17.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2025-04-18 08:48:01', '2025-04-18 05:48:01', '', '3daaafb3-8f49-4790-8c97-7362c1f47fdc', '', 'inherit', 'open', 'closed', '', '3daaafb3-8f49-4790-8c97-7362c1f47fdc', '', '', '2025-04-18 08:48:01', '2025-04-18 05:48:01', '', 63, 'https://fishing.local/wp-content/uploads/2025/04/3daaafb3-8f49-4790-8c97-7362c1f47fdc.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2025-04-18 08:49:10', '2025-04-18 05:49:10', '', '3daaafb3-8f49-4790-8c97-7362c1f47fdc', '', 'inherit', 'open', 'closed', '', '3daaafb3-8f49-4790-8c97-7362c1f47fdc-2', '', '', '2025-04-18 08:49:10', '2025-04-18 05:49:10', '', 63, 'https://fishing.local/wp-content/uploads/2025/04/3daaafb3-8f49-4790-8c97-7362c1f47fdc-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2025-04-18 09:29:25', '2025-04-18 06:29:25', '', 'Изображение WhatsApp 2025-03-27 в 20.58.18_5a222879', '', 'inherit', 'open', 'closed', '', '%d0%b8%d0%b7%d0%be%d0%b1%d1%80%d0%b0%d0%b6%d0%b5%d0%bd%d0%b8%d0%b5-whatsapp-2025-03-27-%d0%b2-20-58-18_5a222879', '', '', '2025-04-18 09:29:25', '2025-04-18 06:29:25', '', 60, 'https://fishing.local/wp-content/uploads/2025/04/Изображение-WhatsApp-2025-03-27-в-20.58.18_5a222879.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2025-04-18 09:31:17', '2025-04-18 06:31:17', '', 'Изображение WhatsApp 2025-03-27 в 20.58.18_25a8d050', '', 'inherit', 'open', 'closed', '', '%d0%b8%d0%b7%d0%be%d0%b1%d1%80%d0%b0%d0%b6%d0%b5%d0%bd%d0%b8%d0%b5-whatsapp-2025-03-27-%d0%b2-20-58-18_25a8d050-2', '', '', '2025-04-18 09:31:17', '2025-04-18 06:31:17', '', 60, 'https://fishing.local/wp-content/uploads/2025/04/Изображение-WhatsApp-2025-03-27-в-20.58.18_25a8d050-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2025-04-18 14:46:59', '2025-04-18 11:46:59', '', '001', '', 'inherit', 'open', 'closed', '', '001', '', '', '2025-04-18 14:46:59', '2025-04-18 11:46:59', '', 7, 'https://fishing.local/wp-content/uploads/2025/04/001.svg', 0, 'attachment', 'image/svg+xml', 0),
(73, 1, '2025-04-18 14:47:03', '2025-04-18 11:47:03', '', '002', '', 'inherit', 'open', 'closed', '', '002', '', '', '2025-04-18 14:47:03', '2025-04-18 11:47:03', '', 7, 'https://fishing.local/wp-content/uploads/2025/04/002.svg', 0, 'attachment', 'image/svg+xml', 0),
(74, 1, '2025-04-18 14:47:06', '2025-04-18 11:47:06', '', '003', '', 'inherit', 'open', 'closed', '', '003', '', '', '2025-04-18 14:47:06', '2025-04-18 11:47:06', '', 7, 'https://fishing.local/wp-content/uploads/2025/04/003.svg', 0, 'attachment', 'image/svg+xml', 0),
(75, 1, '2025-04-18 14:47:08', '2025-04-18 11:47:08', '', '004', '', 'inherit', 'open', 'closed', '', '004', '', '', '2025-04-18 14:47:08', '2025-04-18 11:47:08', '', 7, 'https://fishing.local/wp-content/uploads/2025/04/004.svg', 0, 'attachment', 'image/svg+xml', 0),
(76, 1, '2025-04-18 14:47:09', '2025-04-18 11:47:09', '', '005', '', 'inherit', 'open', 'closed', '', '005', '', '', '2025-04-18 14:47:09', '2025-04-18 11:47:09', '', 7, 'https://fishing.local/wp-content/uploads/2025/04/005.svg', 0, 'attachment', 'image/svg+xml', 0),
(78, 1, '2025-04-18 17:35:29', '2025-04-18 14:35:29', '', '01', '', 'inherit', 'open', 'closed', '', '01', '', '', '2025-04-18 17:35:29', '2025-04-18 14:35:29', '', 7, 'https://fishing.local/wp-content/uploads/2025/04/01.svg', 0, 'attachment', 'image/svg+xml', 0),
(79, 1, '2025-04-18 17:35:29', '2025-04-18 14:35:29', '', '02', '', 'inherit', 'open', 'closed', '', '02', '', '', '2025-04-18 17:35:29', '2025-04-18 14:35:29', '', 7, 'https://fishing.local/wp-content/uploads/2025/04/02.svg', 0, 'attachment', 'image/svg+xml', 0),
(80, 1, '2025-04-18 17:35:30', '2025-04-18 14:35:30', '', '03', '', 'inherit', 'open', 'closed', '', '03', '', '', '2025-04-18 17:35:30', '2025-04-18 14:35:30', '', 7, 'https://fishing.local/wp-content/uploads/2025/04/03.svg', 0, 'attachment', 'image/svg+xml', 0),
(81, 1, '2025-04-18 17:35:31', '2025-04-18 14:35:31', '', '04', '', 'inherit', 'open', 'closed', '', '04', '', '', '2025-04-18 17:35:31', '2025-04-18 14:35:31', '', 7, 'https://fishing.local/wp-content/uploads/2025/04/04.svg', 0, 'attachment', 'image/svg+xml', 0),
(82, 1, '2025-04-18 17:35:32', '2025-04-18 14:35:32', '', '05', '', 'inherit', 'open', 'closed', '', '05', '', '', '2025-04-18 17:35:32', '2025-04-18 14:35:32', '', 7, 'https://fishing.local/wp-content/uploads/2025/04/05.svg', 0, 'attachment', 'image/svg+xml', 0),
(83, 1, '2025-04-18 19:28:49', '2025-04-18 16:28:49', '', '94629182-0e1c-4c87-9d13-a2c0385b538a', '', 'inherit', 'open', 'closed', '', '94629182-0e1c-4c87-9d13-a2c0385b538a', '', '', '2025-04-18 19:28:49', '2025-04-18 16:28:49', '', 7, 'https://fishing.local/wp-content/uploads/2025/04/94629182-0e1c-4c87-9d13-a2c0385b538a.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"6ee1fda55f9bfe3c1077c14a259326862d47bd49173cc4e628f8676128e8ee34\";a:4:{s:10:\"expiration\";i:1748684922;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:139.0) Gecko/20100101 Firefox/139.0\";s:5:\"login\";i:1748512122;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '84'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(20, 1, 'wp_user-settings-time', '1744957876'),
(21, 1, 'wp_persisted_preferences', 'a:3:{s:4:\"core\";a:1:{s:26:\"isComplementaryAreaVisible\";b:1;}s:14:\"core/edit-post\";a:2:{s:12:\"welcomeGuide\";b:0;s:23:\"metaBoxesMainOpenHeight\";i:425;}s:9:\"_modified\";s:24:\"2025-04-18T13:33:07.315Z\";}'),
(22, 1, 'closedpostboxes_photos', 'a:0:{}'),
(23, 1, 'metaboxhidden_photos', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(24, 1, 'closedpostboxes_page', 'a:0:{}'),
(25, 1, 'metaboxhidden_page', 'a:0:{}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bfc3aDPTObe4C76jY1JmwTwLNI7/Il.', 'admin', 'hello@purple-web.ru', 'https://fishing.local', '2025-04-10 05:34:45', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=913;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6372;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
