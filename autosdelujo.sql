-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 03-07-2017 a las 20:29:18
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `autosdelujo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bd_commentmeta`
--

CREATE TABLE IF NOT EXISTS `bd_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bd_comments`
--

CREATE TABLE IF NOT EXISTS `bd_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `bd_comments`
--

INSERT INTO `bd_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-06-25 07:09:41', '2017-06-25 07:09:41', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bd_links`
--

CREATE TABLE IF NOT EXISTS `bd_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bd_options`
--

CREATE TABLE IF NOT EXISTS `bd_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=327 ;

--
-- Volcado de datos para la tabla `bd_options`
--

INSERT INTO `bd_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'TECNOAMAZON', 'yes'),
(4, 'blogdescription', 'Los últimos gadgets al mejor precio. ', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'juandavidtabaresarce@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:44:"slideshow-jquery-image-gallery/slideshow.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:2:{s:5:"title";s:13:"Encuéntranos";s:4:"text";s:187:"<p><strong>Dirección</strong><br />123 Main Street<br />New York, NY 10001</p><p><strong>Horas</strong><br />Lunes a viernes: 9:00AM a 5:00PM<br />Sábado y domingo: 11:00AM a 3:00PM</p>";}i:3;a:2:{s:5:"title";s:20:"Acerca de este sitio";s:4:"text";s:95:"Este puede ser un buen lugar para presentarte y presentar tu sitio o incluir algunos créditos.";}i:4;a:2:{s:5:"title";s:13:"Encuéntranos";s:4:"text";s:187:"<p><strong>Dirección</strong><br />123 Main Street<br />New York, NY 10001</p><p><strong>Horas</strong><br />Lunes a viernes: 9:00AM a 5:00PM<br />Sábado y domingo: 11:00AM a 3:00PM</p>";}i:5;a:2:{s:5:"title";s:20:"Acerca de este sitio";s:4:"text";s:95:"Este puede ser un buen lugar para presentarte y presentar tu sitio o incluir algunos créditos.";}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '12', 'yes'),
(84, 'page_on_front', '9', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '16', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'bd_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:64:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:45:"slideshow-jquery-image-gallery-add-slideshows";b:1;s:46:"slideshow-jquery-image-gallery-edit-slideshows";b:1;s:48:"slideshow-jquery-image-gallery-delete-slideshows";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:37:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:45:"slideshow-jquery-image-gallery-add-slideshows";b:1;s:46:"slideshow-jquery-image-gallery-edit-slideshows";b:1;s:48:"slideshow-jquery-image-gallery-delete-slideshows";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:13:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;s:45:"slideshow-jquery-image-gallery-add-slideshows";b:1;s:46:"slideshow-jquery-image-gallery-edit-slideshows";b:1;s:48:"slideshow-jquery-image-gallery-delete-slideshows";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'es_ES', 'yes'),
(95, 'widget_search', 'a:4:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;i:3;a:1:{s:5:"title";s:9:"Búsqueda";}i:4;a:1:{s:5:"title";s:9:"Búsqueda";}}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:6:{i:0;s:10:"archives-2";i:1;s:6:"meta-2";i:2;s:8:"search-2";i:3;s:12:"categories-2";i:4;s:14:"recent-posts-2";i:5;s:17:"recent-comments-2";}s:9:"sidebar-1";a:3:{i:0;s:6:"text-2";i:1;s:8:"search-3";i:2;s:6:"text-3";}s:9:"sidebar-2";a:1:{i:0;s:6:"text-4";}s:9:"sidebar-3";a:2:{i:0;s:6:"text-5";i:1;s:8:"search-4";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'cron', 'a:5:{i:1499152143;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1499152187;a:2:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1499152188;a:1:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1499152448;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(109, 'theme_mods_twentyseventeen', 'a:8:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:2:{s:3:"top";i:2;s:6:"social";i:3;}s:7:"panel_1";i:13;s:7:"panel_2";i:10;s:7:"panel_3";i:12;s:7:"panel_4";i:11;s:21:"external_header_video";s:43:"https://www.youtube.com/watch?v=YQlc3HRIDwM";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1498715733;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:6:"text-2";i:1;s:8:"search-3";i:2;s:6:"text-3";}s:9:"sidebar-2";a:1:{i:0;s:6:"text-4";}s:9:"sidebar-3";a:2:{i:0;s:6:"text-5";i:1;s:8:"search-4";}}}}', 'yes'),
(122, '_site_transient_timeout_browser_7b4fb083b04390f6ff485892d3977a9a', '1498979651', 'no'),
(123, '_site_transient_browser_7b4fb083b04390f6ff485892d3977a9a', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"58.0.3029.110";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(127, 'can_compress_scripts', '1', 'no'),
(141, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes'),
(152, '_site_transient_timeout_browser_27fc738fc4e33cba76860b18c9054cb3', '1499241745', 'no'),
(153, '_site_transient_browser_27fc738fc4e33cba76860b18c9054cb3', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"59.0.3071.115";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(169, 'theme_mods_twentyseventeen-child', 'a:10:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:2:{s:3:"top";i:2;s:6:"social";i:3;}s:11:"custom_logo";i:35;s:12:"header_image";s:79:"http://localhost/wordpress/wp-content/uploads/2017/06/cropped-electronics-1.png";s:17:"header_image_data";O:8:"stdClass":5:{s:13:"attachment_id";i:39;s:3:"url";s:79:"http://localhost/wordpress/wp-content/uploads/2017/06/cropped-electronics-1.png";s:13:"thumbnail_url";s:79:"http://localhost/wordpress/wp-content/uploads/2017/06/cropped-electronics-1.png";s:6:"height";i:1200;s:5:"width";i:2000;}s:11:"colorscheme";s:6:"custom";s:16:"header_textcolor";s:6:"00021e";s:15:"colorscheme_hue";i:169;s:11:"page_layout";s:10:"one-column";s:7:"panel_1";i:49;}', 'yes'),
(170, 'current_theme', 'Twenty Seventeen tema hijo', 'yes'),
(171, 'theme_switched', '', 'yes'),
(191, '_site_transient_timeout_browser_86c0085f337f3e118f7f3068c84086cf', '1499391246', 'no'),
(192, '_site_transient_browser_86c0085f337f3e118f7f3068c84086cf', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"54.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(231, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1498822774', 'no'),
(232, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4344;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2482;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2352;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2165;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1821;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1584;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1562;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1428;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1343;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1330;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1323;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1269;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1261;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1110;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1050;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1040;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:988;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:931;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:816;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:794;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:792;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:765;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:760;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:667;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:658;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:657;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:649;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:644;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:635;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:633;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:612;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:594;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:592;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:582;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:582;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:569;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:569;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:557;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:551;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:537;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:531;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:531;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:518;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:507;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:499;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:492;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:490;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:476;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:468;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:467;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:465;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:463;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:441;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:437;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:435;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:434;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:433;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:421;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:418;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:410;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:405;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:402;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:399;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:397;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:396;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:394;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:378;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:377;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:370;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:367;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:350;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:340;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:332;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:331;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:330;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:325;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:324;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:322;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:320;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:320;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:318;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:314;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:306;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:298;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:297;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:290;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:289;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:288;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:288;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:283;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:282;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:277;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:276;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:275;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:273;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:271;}s:14:"administration";a:3:{s:4:"name";s:14:"administration";s:4:"slug";s:14:"administration";s:5:"count";i:265;}s:7:"captcha";a:3:{s:4:"name";s:7:"captcha";s:4:"slug";s:7:"captcha";s:5:"count";i:264;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:263;}s:5:"cache";a:3:{s:4:"name";s:5:"cache";s:4:"slug";s:5:"cache";s:5:"count";i:263;}}', 'no'),
(237, 'slideshow-plugin-updated-from-v1-x-x-to-v2-0-1', 'updated', 'no'),
(238, 'slideshow-plugin-updated-from-v2-to-v2-1-20', 'updated', 'no'),
(239, 'slideshow-jquery-image-gallery-updated-from-v2-1-20-to-v2-1-22', 'updated', 'no'),
(240, 'slideshow-jquery-image-gallery-updated-from-v2-1-20-to-v2-1-23', 'updated', 'no'),
(241, 'slideshow-jquery-image-gallery-updated-from-v2-1-23-to-v2-2-0', 'updated', 'no'),
(242, 'slideshow-jquery-image-gallery-updated-from-v2-2-0-to-v2-2-8', 'updated', 'no'),
(243, 'slideshow-jquery-image-gallery-updated-from-v2-2-8-to-v2-2-12', 'updated', 'no'),
(244, 'slideshow-jquery-image-gallery-updated-from-v2-2-12-to-v2-2-16', 'updated', 'no'),
(245, 'slideshow-jquery-image-gallery-updated-from-v2-2-16-to-v2-2-17', 'updated', 'no'),
(246, 'slideshow-jquery-image-gallery-updated-from-v2-2-17-to-v2-2-20', 'updated', 'no'),
(247, 'slideshow-jquery-image-gallery-plugin-version', '2.3.1', 'yes'),
(248, 'recently_activated', 'a:0:{}', 'yes'),
(249, 'widget_slideshowwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(250, '_transient_timeout_plugin_slugs', '1498898499', 'no'),
(251, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:44:"slideshow-jquery-image-gallery/slideshow.php";}', 'no'),
(256, 'slideshow-jquery-image-gallery-stylesheet-location', 'footer', 'yes'),
(257, 'slideshow-jquery-image-gallery-enable-lazy-loading', 'false', 'yes'),
(258, 'slideshow-jquery-image-gallery-add-slideshows', 'a:2:{s:6:"editor";s:2:"on";s:6:"author";s:2:"on";}', 'yes'),
(259, 'slideshow-jquery-image-gallery-edit-slideshows', 'a:2:{s:6:"editor";s:2:"on";s:6:"author";s:2:"on";}', 'yes'),
(260, 'slideshow-jquery-image-gallery-delete-slideshows', 'a:2:{s:6:"editor";s:2:"on";s:6:"author";s:2:"on";}', 'yes'),
(261, 'slideshow-jquery-image-gallery-default-settings', 'a:26:{s:9:"animation";s:5:"slide";s:10:"slideSpeed";s:1:"1";s:16:"descriptionSpeed";s:3:"0.4";s:13:"intervalSpeed";s:1:"5";s:13:"slidesPerView";s:1:"1";s:8:"maxWidth";s:1:"0";s:11:"aspectRatio";s:3:"3:1";s:6:"height";s:3:"400";s:14:"imageBehaviour";s:7:"stretch";s:27:"preserveSlideshowDimensions";s:5:"false";s:20:"enableResponsiveness";s:4:"true";s:15:"showDescription";s:4:"true";s:15:"hideDescription";s:4:"true";s:4:"play";s:4:"true";s:4:"loop";s:4:"true";s:12:"pauseOnHover";s:4:"true";s:12:"controllable";s:4:"true";s:21:"hideNavigationButtons";s:4:"true";s:14:"showPagination";s:4:"true";s:14:"hidePagination";s:4:"true";s:12:"controlPanel";s:5:"false";s:16:"hideControlPanel";s:4:"true";s:15:"waitUntilLoaded";s:4:"true";s:15:"showLoadingIcon";s:4:"true";s:6:"random";s:5:"false";s:11:"avoidFilter";s:4:"true";}', 'yes'),
(262, 'slideshow-jquery-image-gallery-default-style-settings', 'a:1:{s:5:"style";s:15:"style-light.css";}', 'yes'),
(263, 'slideshow-jquery-image-gallery-custom-styles', 'a:0:{}', 'yes'),
(319, '_site_transient_timeout_theme_roots', '1499114690', 'no'),
(320, '_site_transient_theme_roots', 'a:4:{s:13:"twentyfifteen";s:7:"/themes";s:21:"twentyseventeen-child";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(321, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:62:"http://downloads.wordpress.org/release/es_ES/wordpress-4.8.zip";s:6:"locale";s:5:"es_ES";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:62:"http://downloads.wordpress.org/release/es_ES/wordpress-4.8.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.8";s:7:"version";s:3:"4.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1499113116;s:15:"version_checked";s:3:"4.8";s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:4:"core";s:4:"slug";s:7:"default";s:8:"language";s:5:"es_ES";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-02 08:44:01";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.8/es_ES.zip";s:10:"autoupdate";b:1;}}}', 'no'),
(322, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1499113107;s:7:"checked";a:4:{s:13:"twentyfifteen";s:3:"1.8";s:21:"twentyseventeen-child";s:3:"1.0";s:15:"twentyseventeen";s:3:"1.3";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:15:"twentyseventeen";s:8:"language";s:5:"es_ES";s:7:"version";s:3:"1.3";s:7:"updated";s:19:"2017-06-27 09:03:38";s:7:"package";s:78:"http://downloads.wordpress.org/translation/theme/twentyseventeen/1.3/es_ES.zip";s:10:"autoupdate";b:1;}}}', 'no'),
(323, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1499113106;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.3.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:55:"http://downloads.wordpress.org/plugin/akismet.3.3.2.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:57:"http://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:44:"slideshow-jquery-image-gallery/slideshow.php";O:8:"stdClass":6:{s:2:"id";s:44:"w.org/plugins/slideshow-jquery-image-gallery";s:4:"slug";s:30:"slideshow-jquery-image-gallery";s:6:"plugin";s:44:"slideshow-jquery-image-gallery/slideshow.php";s:11:"new_version";s:5:"2.3.1";s:3:"url";s:61:"https://wordpress.org/plugins/slideshow-jquery-image-gallery/";s:7:"package";s:72:"http://downloads.wordpress.org/plugin/slideshow-jquery-image-gallery.zip";}}}', 'no'),
(324, '_transient_timeout_dash_v2_c05853b002c443ec8e57ff884f56cdde', '1499156177', 'no'),
(325, '_transient_dash_v2_c05853b002c443ec8e57ff884f56cdde', '<div class="rss-widget"><p><strong>Error RSS:</strong> WP HTTP Error: No working transports found</p></div><div class="rss-widget"><p><strong>Error RSS:</strong> WP HTTP Error: No working transports found</p></div>', 'no'),
(326, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bd_postmeta`
--

CREATE TABLE IF NOT EXISTS `bd_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=186 ;

--
-- Volcado de datos para la tabla `bd_postmeta`
--

INSERT INTO `bd_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(7, 6, '_wp_attached_file', '2017/06/espresso-1.jpg'),
(8, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:22:"2017/06/espresso-1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"espresso-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"espresso-1-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"espresso-1-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"espresso-1-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:22:"espresso-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(9, 6, '_starter_content_theme', 'twentyseventeen'),
(11, 7, '_wp_attached_file', '2017/06/sandwich-1.jpg'),
(12, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:22:"2017/06/sandwich-1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"sandwich-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"sandwich-1-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"sandwich-1-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"sandwich-1-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:22:"sandwich-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(13, 7, '_starter_content_theme', 'twentyseventeen'),
(15, 8, '_wp_attached_file', '2017/06/coffee.jpg'),
(16, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:18:"2017/06/coffee.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"coffee-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"coffee-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"coffee-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"coffee-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:18:"coffee-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(17, 8, '_starter_content_theme', 'twentyseventeen'),
(20, 10, '_thumbnail_id', '7'),
(22, 11, '_thumbnail_id', '6'),
(24, 12, '_thumbnail_id', '8'),
(26, 13, '_thumbnail_id', '6'),
(28, 15, '_wp_attached_file', '2017/06/logo_horizontal-1.png'),
(29, 15, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:110;s:4:"file";s:29:"2017/06/logo_horizontal-1.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"logo_horizontal-1-150x110.png";s:5:"width";i:150;s:6:"height";i:110;s:9:"mime-type";s:9:"image/png";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:29:"logo_horizontal-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(30, 16, '_wp_attached_file', '2017/06/cropped-logo_horizontal-1.png'),
(31, 16, '_wp_attachment_context', 'site-icon'),
(32, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:37:"2017/06/cropped-logo_horizontal-1.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"cropped-logo_horizontal-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:37:"cropped-logo_horizontal-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:37:"cropped-logo_horizontal-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-270";a:4:{s:4:"file";s:37:"cropped-logo_horizontal-1-270x270.png";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-192";a:4:{s:4:"file";s:37:"cropped-logo_horizontal-1-192x192.png";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-180";a:4:{s:4:"file";s:37:"cropped-logo_horizontal-1-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"site_icon-32";a:4:{s:4:"file";s:35:"cropped-logo_horizontal-1-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(33, 22, '_menu_item_type', 'custom'),
(34, 22, '_menu_item_menu_item_parent', '0'),
(35, 22, '_menu_item_object_id', '22'),
(36, 22, '_menu_item_object', 'custom'),
(37, 22, '_menu_item_target', ''),
(38, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(39, 22, '_menu_item_xfn', ''),
(40, 22, '_menu_item_url', 'http://localhost/wordpress/'),
(41, 23, '_menu_item_type', 'post_type'),
(42, 23, '_menu_item_menu_item_parent', '0'),
(43, 23, '_menu_item_object_id', '10'),
(44, 23, '_menu_item_object', 'page'),
(45, 23, '_menu_item_target', ''),
(46, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(47, 23, '_menu_item_xfn', ''),
(48, 23, '_menu_item_url', ''),
(49, 24, '_menu_item_type', 'post_type'),
(50, 24, '_menu_item_menu_item_parent', '0'),
(51, 24, '_menu_item_object_id', '12'),
(52, 24, '_menu_item_object', 'page'),
(53, 24, '_menu_item_target', ''),
(54, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(55, 24, '_menu_item_xfn', ''),
(56, 24, '_menu_item_url', ''),
(57, 25, '_menu_item_type', 'post_type'),
(58, 25, '_menu_item_menu_item_parent', '0'),
(59, 25, '_menu_item_object_id', '11'),
(60, 25, '_menu_item_object', 'page'),
(61, 25, '_menu_item_target', ''),
(62, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(63, 25, '_menu_item_xfn', ''),
(64, 25, '_menu_item_url', ''),
(65, 26, '_menu_item_type', 'custom'),
(66, 26, '_menu_item_menu_item_parent', '0'),
(67, 26, '_menu_item_object_id', '26'),
(68, 26, '_menu_item_object', 'custom'),
(69, 26, '_menu_item_target', ''),
(70, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(71, 26, '_menu_item_xfn', ''),
(72, 26, '_menu_item_url', 'https://www.yelp.com'),
(73, 27, '_menu_item_type', 'custom'),
(74, 27, '_menu_item_menu_item_parent', '0'),
(75, 27, '_menu_item_object_id', '27'),
(76, 27, '_menu_item_object', 'custom'),
(77, 27, '_menu_item_target', ''),
(78, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(79, 27, '_menu_item_xfn', ''),
(80, 27, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(81, 28, '_menu_item_type', 'custom'),
(82, 28, '_menu_item_menu_item_parent', '0'),
(83, 28, '_menu_item_object_id', '28'),
(84, 28, '_menu_item_object', 'custom'),
(85, 28, '_menu_item_target', ''),
(86, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(87, 28, '_menu_item_xfn', ''),
(88, 28, '_menu_item_url', 'https://twitter.com/wordpress'),
(89, 29, '_menu_item_type', 'custom'),
(90, 29, '_menu_item_menu_item_parent', '0'),
(91, 29, '_menu_item_object_id', '29'),
(92, 29, '_menu_item_object', 'custom'),
(93, 29, '_menu_item_target', ''),
(94, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(95, 29, '_menu_item_xfn', ''),
(96, 29, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(97, 30, '_menu_item_type', 'custom'),
(98, 30, '_menu_item_menu_item_parent', '0'),
(99, 30, '_menu_item_object_id', '30'),
(100, 30, '_menu_item_object', 'custom'),
(101, 30, '_menu_item_target', ''),
(102, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(103, 30, '_menu_item_xfn', ''),
(104, 30, '_menu_item_url', 'mailto:wordpress@example.com'),
(105, 14, '_wp_trash_meta_status', 'publish'),
(106, 14, '_wp_trash_meta_time', '1498410482'),
(107, 31, '_wp_trash_meta_status', 'publish'),
(108, 31, '_wp_trash_meta_time', '1498410914'),
(109, 32, '_wp_trash_meta_status', 'publish'),
(110, 32, '_wp_trash_meta_time', '1498411165'),
(111, 35, '_wp_attached_file', '2017/06/cropped-logo_horizontal-1-1.png'),
(112, 35, '_wp_attachment_context', 'custom-logo'),
(113, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:39:"2017/06/cropped-logo_horizontal-1-1.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"cropped-logo_horizontal-1-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:39:"cropped-logo_horizontal-1-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(114, 34, '_wp_trash_meta_status', 'publish'),
(115, 34, '_wp_trash_meta_time', '1498786892'),
(116, 36, '_wp_attached_file', '2017/06/electronics.png'),
(117, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:23:"2017/06/electronics.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"electronics-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"electronics-300x180.png";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:23:"electronics-768x461.png";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:24:"electronics-1024x614.png";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:9:"image/png";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:23:"electronics-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(118, 36, '_wp_attachment_custom_header_last_used_twentyseventeen-child', '1498789424'),
(119, 36, '_wp_attachment_is_custom_header', 'twentyseventeen-child'),
(120, 38, '_wp_attached_file', '2017/06/cropped-electronics.png'),
(121, 38, '_wp_attachment_context', 'custom-header'),
(122, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:781;s:4:"file";s:31:"2017/06/cropped-electronics.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"cropped-electronics-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:31:"cropped-electronics-300x117.png";s:5:"width";i:300;s:6:"height";i:117;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:31:"cropped-electronics-768x300.png";s:5:"width";i:768;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:32:"cropped-electronics-1024x400.png";s:5:"width";i:1024;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:30:"twentyseventeen-featured-image";a:4:{s:4:"file";s:32:"cropped-electronics-2000x781.png";s:5:"width";i:2000;s:6:"height";i:781;s:9:"mime-type";s:9:"image/png";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:31:"cropped-electronics-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(123, 38, '_wp_attachment_custom_header_last_used_twentyseventeen-child', '1498789347'),
(124, 38, '_wp_attachment_is_custom_header', 'twentyseventeen-child'),
(125, 39, '_wp_attached_file', '2017/06/cropped-electronics-1.png'),
(126, 39, '_wp_attachment_context', 'custom-header'),
(127, 37, '_wp_trash_meta_status', 'publish'),
(128, 37, '_wp_trash_meta_time', '1498789424'),
(129, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:33:"2017/06/cropped-electronics-1.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"cropped-electronics-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:33:"cropped-electronics-1-300x180.png";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:33:"cropped-electronics-1-768x461.png";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:34:"cropped-electronics-1-1024x614.png";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:9:"image/png";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:33:"cropped-electronics-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(130, 39, '_wp_attachment_custom_header_last_used_twentyseventeen-child', '1498790878'),
(131, 39, '_wp_attachment_is_custom_header', 'twentyseventeen-child'),
(132, 40, '_wp_trash_meta_status', 'publish'),
(133, 40, '_wp_trash_meta_time', '1498790878'),
(134, 41, '_wp_trash_meta_status', 'publish'),
(135, 41, '_wp_trash_meta_time', '1498790942'),
(136, 43, '_wp_trash_meta_status', 'publish'),
(137, 43, '_wp_trash_meta_time', '1498796542'),
(138, 44, '_wp_trash_meta_status', 'publish'),
(139, 44, '_wp_trash_meta_time', '1498796775'),
(140, 45, '_wp_trash_meta_status', 'publish'),
(141, 45, '_wp_trash_meta_time', '1498796983'),
(142, 9, '_edit_lock', '1499021755:1'),
(143, 9, '_edit_last', '1'),
(144, 10, '_edit_lock', '1498806406:1'),
(145, 49, '_edit_last', '1'),
(146, 49, '_edit_lock', '1498938361:1'),
(147, 51, '_wp_attached_file', '2017/06/alcatelWhite.jpg'),
(148, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1294;s:6:"height";i:1500;s:4:"file";s:24:"2017/06/alcatelWhite.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"alcatelWhite-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"alcatelWhite-259x300.jpg";s:5:"width";i:259;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"alcatelWhite-768x890.jpg";s:5:"width";i:768;s:6:"height";i:890;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"alcatelWhite-883x1024.jpg";s:5:"width";i:883;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:30:"twentyseventeen-featured-image";a:4:{s:4:"file";s:26:"alcatelWhite-1294x1200.jpg";s:5:"width";i:1294;s:6:"height";i:1200;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:24:"alcatelWhite-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(149, 52, '_wp_attached_file', '2017/06/appleWhite.jpeg'),
(150, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:2000;s:4:"file";s:23:"2017/06/appleWhite.jpeg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"appleWhite-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"appleWhite-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"appleWhite-768x768.jpeg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"appleWhite-1024x1024.jpeg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:30:"twentyseventeen-featured-image";a:4:{s:4:"file";s:25:"appleWhite-2000x1200.jpeg";s:5:"width";i:2000;s:6:"height";i:1200;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:23:"appleWhite-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(151, 53, '_wp_attached_file', '2017/06/htcWhite.jpg'),
(152, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1500;s:6:"height";i:1266;s:4:"file";s:20:"2017/06/htcWhite.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"htcWhite-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"htcWhite-300x253.jpg";s:5:"width";i:300;s:6:"height";i:253;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"htcWhite-768x648.jpg";s:5:"width";i:768;s:6:"height";i:648;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"htcWhite-1024x864.jpg";s:5:"width";i:1024;s:6:"height";i:864;s:9:"mime-type";s:10:"image/jpeg";}s:30:"twentyseventeen-featured-image";a:4:{s:4:"file";s:22:"htcWhite-1500x1200.jpg";s:5:"width";i:1500;s:6:"height";i:1200;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:20:"htcWhite-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(153, 54, '_wp_attached_file', '2017/06/huaweiWhite.jpg'),
(154, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:2000;s:4:"file";s:23:"2017/06/huaweiWhite.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"huaweiWhite-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"huaweiWhite-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"huaweiWhite-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"huaweiWhite-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:30:"twentyseventeen-featured-image";a:4:{s:4:"file";s:25:"huaweiWhite-2000x1200.jpg";s:5:"width";i:2000;s:6:"height";i:1200;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:23:"huaweiWhite-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(155, 55, '_wp_attached_file', '2017/06/lenovoWhite.jpg'),
(156, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:23:"2017/06/lenovoWhite.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"lenovoWhite-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"lenovoWhite-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"lenovoWhite-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:23:"lenovoWhite-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(157, 56, '_wp_attached_file', '2017/06/samsung-galaxynexus-veriz-angle-lg.jpg'),
(158, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:1086;s:4:"file";s:46:"2017/06/samsung-galaxynexus-veriz-angle-lg.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:46:"samsung-galaxynexus-veriz-angle-lg-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:46:"samsung-galaxynexus-veriz-angle-lg-300x272.jpg";s:5:"width";i:300;s:6:"height";i:272;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:46:"samsung-galaxynexus-veriz-angle-lg-768x695.jpg";s:5:"width";i:768;s:6:"height";i:695;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:47:"samsung-galaxynexus-veriz-angle-lg-1024x927.jpg";s:5:"width";i:1024;s:6:"height";i:927;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:46:"samsung-galaxynexus-veriz-angle-lg-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(159, 57, '_wp_attached_file', '2017/06/sonyWhite.jpg'),
(160, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:792;s:4:"file";s:21:"2017/06/sonyWhite.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"sonyWhite-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"sonyWhite-300x198.jpg";s:5:"width";i:300;s:6:"height";i:198;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"sonyWhite-768x507.jpg";s:5:"width";i:768;s:6:"height";i:507;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"sonyWhite-1024x676.jpg";s:5:"width";i:1024;s:6:"height";i:676;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:21:"sonyWhite-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(161, 60, '_wp_trash_meta_status', 'publish'),
(162, 60, '_wp_trash_meta_time', '1498807705'),
(163, 63, '_edit_last', '1'),
(164, 63, '_edit_lock', '1498811836:1'),
(165, 68, '_wp_attached_file', '2017/06/chipAmarillo.jpg'),
(166, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3200;s:6:"height";i:2000;s:4:"file";s:24:"2017/06/chipAmarillo.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"chipAmarillo-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"chipAmarillo-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"chipAmarillo-768x480.jpg";s:5:"width";i:768;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"chipAmarillo-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:30:"twentyseventeen-featured-image";a:4:{s:4:"file";s:26:"chipAmarillo-2000x1200.jpg";s:5:"width";i:2000;s:6:"height";i:1200;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:24:"chipAmarillo-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(167, 69, '_wp_attached_file', '2017/06/circuitoAzul.jpg'),
(168, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:5472;s:6:"height";i:3648;s:4:"file";s:24:"2017/06/circuitoAzul.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"circuitoAzul-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"circuitoAzul-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"circuitoAzul-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"circuitoAzul-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:30:"twentyseventeen-featured-image";a:4:{s:4:"file";s:26:"circuitoAzul-2000x1200.jpg";s:5:"width";i:2000;s:6:"height";i:1200;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:24:"circuitoAzul-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:24:"Getty Images/iStockphoto";s:6:"camera";s:0:"";s:7:"caption";s:21:"circuit board closeup";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:9:"178098899";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(169, 70, '_wp_attached_file', '2017/06/condensadores.jpg'),
(170, 70, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2275;s:6:"height";i:875;s:4:"file";s:25:"2017/06/condensadores.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"condensadores-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"condensadores-300x115.jpg";s:5:"width";i:300;s:6:"height";i:115;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"condensadores-768x295.jpg";s:5:"width";i:768;s:6:"height";i:295;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"condensadores-1024x394.jpg";s:5:"width";i:1024;s:6:"height";i:394;s:9:"mime-type";s:10:"image/jpeg";}s:30:"twentyseventeen-featured-image";a:4:{s:4:"file";s:26:"condensadores-2000x875.jpg";s:5:"width";i:2000;s:6:"height";i:875;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:25:"condensadores-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(173, 75, '_edit_last', '1'),
(174, 75, '_edit_lock', '1498813389:1'),
(175, 75, 'settings', 'a:26:{s:9:"animation";s:5:"slide";s:10:"slideSpeed";s:1:"1";s:16:"descriptionSpeed";s:3:"0.4";s:13:"intervalSpeed";s:1:"5";s:13:"slidesPerView";s:1:"1";s:8:"maxWidth";s:1:"0";s:11:"aspectRatio";s:3:"3:1";s:6:"height";s:3:"200";s:14:"imageBehaviour";s:7:"natural";s:15:"showDescription";s:4:"true";s:15:"hideDescription";s:4:"true";s:27:"preserveSlideshowDimensions";s:5:"false";s:20:"enableResponsiveness";s:4:"true";s:4:"play";s:4:"true";s:4:"loop";s:4:"true";s:12:"pauseOnHover";s:4:"true";s:12:"controllable";s:4:"true";s:21:"hideNavigationButtons";s:4:"true";s:14:"showPagination";s:4:"true";s:14:"hidePagination";s:4:"true";s:12:"controlPanel";s:5:"false";s:16:"hideControlPanel";s:4:"true";s:15:"waitUntilLoaded";s:4:"true";s:15:"showLoadingIcon";s:4:"true";s:6:"random";s:5:"false";s:11:"avoidFilter";s:4:"true";}'),
(176, 75, 'styleSettings', 'a:1:{s:5:"style";s:15:"style-light.css";}'),
(177, 75, 'slides', 'a:4:{i:1;a:9:{s:17:"titleElementTagID";s:1:"0";s:5:"title";s:22:"Procesadores cuanticos";s:23:"descriptionElementTagID";s:1:"0";s:11:"description";s:84:"Somos pioneros en la importación de los primeros procesadores cuanticos del mundo. ";s:3:"url";s:0:"";s:9:"urlTarget";s:5:"_self";s:15:"alternativeText";s:0:"";s:4:"type";s:10:"attachment";s:6:"postId";s:2:"69";}i:2;a:9:{s:17:"titleElementTagID";s:1:"0";s:5:"title";s:29:"Condensadores de alta calidad";s:23:"descriptionElementTagID";s:1:"0";s:11:"description";s:75:"Si desea condensadores para su empresa o proyecto no dude en contactarnos. ";s:3:"url";s:0:"";s:9:"urlTarget";s:5:"_self";s:15:"alternativeText";s:0:"";s:4:"type";s:10:"attachment";s:6:"postId";s:2:"70";}i:3;a:9:{s:17:"titleElementTagID";s:1:"0";s:5:"title";s:11:"TECNOAMAZON";s:23:"descriptionElementTagID";s:1:"0";s:11:"description";s:56:"Contácteme para tener el gusto de valorar su proyecto. ";s:9:"textColor";s:7:"#606060";s:5:"color";s:6:"FFFFFF";s:3:"url";s:0:"";s:9:"urlTarget";s:5:"_self";s:4:"type";s:4:"text";}i:4;a:9:{s:17:"titleElementTagID";s:1:"0";s:5:"title";s:38:"Páginas completamente personalizadas.";s:23:"descriptionElementTagID";s:1:"0";s:11:"description";s:52:"Personalice su página y adminístrela fácilmente. ";s:3:"url";s:0:"";s:9:"urlTarget";s:5:"_self";s:15:"alternativeText";s:0:"";s:4:"type";s:10:"attachment";s:6:"postId";s:2:"68";}}'),
(178, 76, '_edit_last', '1'),
(179, 76, '_edit_lock', '1498814898:1'),
(180, 78, '_edit_last', '1'),
(181, 78, '_edit_lock', '1499027246:1'),
(182, 86, '_edit_last', '1'),
(183, 86, '_edit_lock', '1499047944:1'),
(184, 94, '_edit_last', '1'),
(185, 94, '_edit_lock', '1499048996:1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bd_posts`
--

CREATE TABLE IF NOT EXISTS `bd_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=98 ;

--
-- Volcado de datos para la tabla `bd_posts`
--

INSERT INTO `bd_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-06-25 07:09:41', '2017-06-25 07:09:41', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a escribir!', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2017-06-25 07:09:41', '2017-06-25 07:09:41', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2017-06-25 07:09:41', '2017-06-25 07:09:41', 'Esta es una página de ejemplo, Es diferente a una entrada de un blog porque se mantiene estática y se mostrará en la barra de navegación (en la mayoría de temas). Casi todo el mundo comienza con una página Sobre mí para presentarse a los potenciales visitantes. Podría ser algo así:\n\n<blockquote>¡Hola!: Soy mensajero por el día, aspirante a actor por la noche y esta es mi web. Vivo en Madrid, tengo perrazo llamado Juan y me encantan las piñas coladas (y que me pille un chaparrón)</blockquote>\n\n… o algo así:\n\n<blockquote>La empresa Calcetines XYZ se fundó en 1971, y ha estado produciendo calcetines de calidad para sus clientes desde entonces. Ubicada en Gothan, la empresa XYZ tiene más de 2.000 empleados e intenta ayudar en lo que puede para mejorar la vida en Gothan</blockquote>\n\nSi eres nuevo en WordPress deberías ir a <a href="http://localhost/wordpress/wp-admin/">tu escritorio</a> para borrar esta página y crear algunas nuevas con tu contenido. ¡Pásalo bien!', 'Página de ejemplo', '', 'publish', 'closed', 'open', '', 'pagina-ejemplo', '', '', '2017-06-25 07:09:41', '2017-06-25 07:09:41', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(6, 1, '2017-06-25 17:07:48', '2017-06-25 17:07:48', '', 'Expreso', '', 'inherit', 'open', 'closed', '', 'expreso', '', '', '2017-06-25 17:07:48', '2017-06-25 17:07:48', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/06/espresso-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2017-06-25 17:07:48', '2017-06-25 17:07:48', '', 'Sandwich', '', 'inherit', 'open', 'closed', '', 'sandwich', '', '', '2017-06-25 17:07:48', '2017-06-25 17:07:48', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/06/sandwich-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2017-06-25 17:07:49', '2017-06-25 17:07:49', '', 'Café', '', 'inherit', 'open', 'closed', '', 'cafe', '', '', '2017-06-25 17:07:49', '2017-06-25 17:07:49', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/06/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2017-06-25 17:07:49', '2017-06-25 17:07:49', 'Bienvenido a Tecnoamazon, los últimos gagdets al mejor precio. Esta es una muestra diseñada por <a href="https://juandavidarce.neocities.org/" target="_blank" rel="noopener">Juan David Tabares Arce  </a>  Esta página es adaptable (<em>responsive</em>) a cualquier dispositivo y administrable por medio de wordpress.', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2017-06-30 07:41:18', '2017-06-30 07:41:18', '', 0, 'http://localhost/wordpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2017-06-25 17:07:49', '2017-06-25 17:07:49', 'Puedes ser un artista que quiere presentarse a sí mismo y a su trabajo o eres un negocio con una misión que describir.', 'Acerca de', '', 'publish', 'closed', 'closed', '', 'acerca-de', '', '', '2017-06-25 17:07:49', '2017-06-25 17:07:49', '', 0, 'http://localhost/wordpress/?page_id=10', 0, 'page', '', 0),
(11, 1, '2017-06-25 17:07:49', '2017-06-25 17:07:49', 'Esta es una página con información de contacto básica, como dirección y número de teléfono. Incluso puedes probar un plugin para añadir un formulario de contacto.', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2017-06-25 17:07:49', '2017-06-25 17:07:49', '', 0, 'http://localhost/wordpress/?page_id=11', 0, 'page', '', 0),
(12, 1, '2017-06-25 17:07:50', '2017-06-25 17:07:50', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2017-06-25 17:07:50', '2017-06-25 17:07:50', '', 0, 'http://localhost/wordpress/?page_id=12', 0, 'page', '', 0),
(13, 1, '2017-06-25 17:07:50', '2017-06-25 17:07:50', 'Este es un ejemplo de una sección de la página de inicio. Las secciones de la página de inicio pueden estar en cualquier página aparte de la propia de inicio, incluida la página que muestra tus últimas entradas.', 'Una sección de la página de inicio', '', 'publish', 'closed', 'closed', '', 'una-seccion-de-la-pagina-de-inicio', '', '', '2017-06-25 17:07:50', '2017-06-25 17:07:50', '', 0, 'http://localhost/wordpress/?page_id=13', 0, 'page', '', 0),
(14, 1, '2017-06-25 17:07:48', '2017-06-25 17:07:48', '{\n    "widget_text[2]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToyOntzOjU6InRpdGxlIjtzOjEzOiJFbmN1w6ludHJhbm9zIjtzOjQ6InRleHQiO3M6MTg3OiI8cD48c3Ryb25nPkRpcmVjY2nDs248L3N0cm9uZz48YnIgLz4xMjMgTWFpbiBTdHJlZXQ8YnIgLz5OZXcgWW9yaywgTlkgMTAwMDE8L3A+PHA+PHN0cm9uZz5Ib3Jhczwvc3Ryb25nPjxiciAvPkx1bmVzIGEgdmllcm5lczogOTowMEFNIGEgNTowMFBNPGJyIC8+U8OhYmFkbyB5IGRvbWluZ286IDExOjAwQU0gYSAzOjAwUE08L3A+Ijt9",\n            "title": "Encu\\u00e9ntranos",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "95778e2561fa70c0546e107bba142812"\n        },\n        "type": "option",\n        "user_id": 1\n    },\n    "widget_search[3]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToxOntzOjU6InRpdGxlIjtzOjk6IkLDunNxdWVkYSI7fQ==",\n            "title": "B\\u00fasqueda",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "25b36103d435948eb7455e91204ebdca"\n        },\n        "type": "option",\n        "user_id": 1\n    },\n    "widget_text[3]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToyOntzOjU6InRpdGxlIjtzOjIwOiJBY2VyY2EgZGUgZXN0ZSBzaXRpbyI7czo0OiJ0ZXh0IjtzOjk1OiJFc3RlIHB1ZWRlIHNlciB1biBidWVuIGx1Z2FyIHBhcmEgcHJlc2VudGFydGUgeSBwcmVzZW50YXIgdHUgc2l0aW8gbyBpbmNsdWlyIGFsZ3Vub3MgY3LDqWRpdG9zLiI7fQ==",\n            "title": "Acerca de este sitio",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "18e5264b7d2699b91d43823d63464518"\n        },\n        "type": "option",\n        "user_id": 1\n    },\n    "sidebars_widgets[sidebar-1]": {\n        "starter_content": true,\n        "value": [\n            "text-2",\n            "search-3",\n            "text-3"\n        ],\n        "type": "option",\n        "user_id": 1\n    },\n    "widget_text[4]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToyOntzOjU6InRpdGxlIjtzOjEzOiJFbmN1w6ludHJhbm9zIjtzOjQ6InRleHQiO3M6MTg3OiI8cD48c3Ryb25nPkRpcmVjY2nDs248L3N0cm9uZz48YnIgLz4xMjMgTWFpbiBTdHJlZXQ8YnIgLz5OZXcgWW9yaywgTlkgMTAwMDE8L3A+PHA+PHN0cm9uZz5Ib3Jhczwvc3Ryb25nPjxiciAvPkx1bmVzIGEgdmllcm5lczogOTowMEFNIGEgNTowMFBNPGJyIC8+U8OhYmFkbyB5IGRvbWluZ286IDExOjAwQU0gYSAzOjAwUE08L3A+Ijt9",\n            "title": "Encu\\u00e9ntranos",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "95778e2561fa70c0546e107bba142812"\n        },\n        "type": "option",\n        "user_id": 1\n    },\n    "sidebars_widgets[sidebar-2]": {\n        "starter_content": true,\n        "value": [\n            "text-4"\n        ],\n        "type": "option",\n        "user_id": 1\n    },\n    "widget_text[5]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToyOntzOjU6InRpdGxlIjtzOjIwOiJBY2VyY2EgZGUgZXN0ZSBzaXRpbyI7czo0OiJ0ZXh0IjtzOjk1OiJFc3RlIHB1ZWRlIHNlciB1biBidWVuIGx1Z2FyIHBhcmEgcHJlc2VudGFydGUgeSBwcmVzZW50YXIgdHUgc2l0aW8gbyBpbmNsdWlyIGFsZ3Vub3MgY3LDqWRpdG9zLiI7fQ==",\n            "title": "Acerca de este sitio",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "18e5264b7d2699b91d43823d63464518"\n        },\n        "type": "option",\n        "user_id": 1\n    },\n    "widget_search[4]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToxOntzOjU6InRpdGxlIjtzOjk6IkLDunNxdWVkYSI7fQ==",\n            "title": "B\\u00fasqueda",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "25b36103d435948eb7455e91204ebdca"\n        },\n        "type": "option",\n        "user_id": 1\n    },\n    "sidebars_widgets[sidebar-3]": {\n        "starter_content": true,\n        "value": [\n            "text-5",\n            "search-4"\n        ],\n        "type": "option",\n        "user_id": 1\n    },\n    "nav_menus_created_posts": {\n        "starter_content": true,\n        "value": [\n            6,\n            7,\n            8,\n            9,\n            10,\n            11,\n            12,\n            13\n        ],\n        "type": "option",\n        "user_id": 1\n    },\n    "nav_menu[-1]": {\n        "value": {\n            "name": "Men\\u00fa superior",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1\n    },\n    "nav_menu_item[-1]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 0,\n            "type": "custom",\n            "title": "Inicio",\n            "url": "http://localhost/wordpress/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -1,\n            "_invalid": false,\n            "type_label": "Enlace personalizado"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1\n    },\n    "nav_menu_item[-2]": {\n        "value": {\n            "object_id": 10,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "post_type",\n            "title": "Acerca de",\n            "url": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Acerca de",\n            "nav_menu_term_id": -1,\n            "_invalid": false,\n            "type_label": "P\\u00e1gina"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1\n    },\n    "nav_menu_item[-3]": {\n        "value": {\n            "object_id": 12,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 2,\n            "type": "post_type",\n            "title": "Blog",\n            "url": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Blog",\n            "nav_menu_term_id": -1,\n            "_invalid": false,\n            "type_label": "P\\u00e1gina"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1\n    },\n    "nav_menu_item[-4]": {\n        "value": {\n            "object_id": 11,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 3,\n            "type": "post_type",\n            "title": "Contacto",\n            "url": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Contacto",\n            "nav_menu_term_id": -1,\n            "_invalid": false,\n            "type_label": "P\\u00e1gina"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1\n    },\n    "twentyseventeen::nav_menu_locations[top]": {\n        "starter_content": true,\n        "value": -1,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "nav_menu[-5]": {\n        "value": {\n            "name": "Men\\u00fa de enlaces sociales",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1\n    },\n    "nav_menu_item[-5]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 0,\n            "type": "custom",\n            "title": "Yelp",\n            "url": "https://www.yelp.com",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -5,\n            "_invalid": false,\n            "type_label": "Enlace personalizado"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1\n    },\n    "nav_menu_item[-6]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "custom",\n            "title": "Facebook",\n            "url": "https://www.facebook.com/wordpress",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -5,\n            "_invalid": false,\n            "type_label": "Enlace personalizado"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1\n    },\n    "nav_menu_item[-7]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 2,\n            "type": "custom",\n            "title": "Twitter",\n            "url": "https://twitter.com/wordpress",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -5,\n            "_invalid": false,\n            "type_label": "Enlace personalizado"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1\n    },\n    "nav_menu_item[-8]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 3,\n            "type": "custom",\n            "title": "Instagram",\n            "url": "https://www.instagram.com/explore/tags/wordcamp/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -5,\n            "_invalid": false,\n            "type_label": "Enlace personalizado"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1\n    },\n    "nav_menu_item[-9]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 4,\n            "type": "custom",\n            "title": "Correo electr\\u00f3nico",\n            "url": "mailto:wordpress@example.com",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -5,\n            "_invalid": false,\n            "type_label": "Enlace personalizado"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1\n    },\n    "twentyseventeen::nav_menu_locations[social]": {\n        "starter_content": true,\n        "value": -5,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "show_on_front": {\n        "starter_content": true,\n        "value": "page",\n        "type": "option",\n        "user_id": 1\n    },\n    "page_on_front": {\n        "starter_content": true,\n        "value": 9,\n        "type": "option",\n        "user_id": 1\n    },\n    "page_for_posts": {\n        "starter_content": true,\n        "value": 12,\n        "type": "option",\n        "user_id": 1\n    },\n    "twentyseventeen::panel_1": {\n        "starter_content": true,\n        "value": 13,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "twentyseventeen::panel_2": {\n        "starter_content": true,\n        "value": 10,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "twentyseventeen::panel_3": {\n        "starter_content": true,\n        "value": 12,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "twentyseventeen::panel_4": {\n        "starter_content": true,\n        "value": 11,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "blogdescription": {\n        "value": "Venda su auto en internet. ",\n        "type": "option",\n        "user_id": 1\n    },\n    "site_icon": {\n        "value": 16,\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '511e285d-7712-4fed-86af-7d879e4fbe13', '', '', '2017-06-25 17:07:48', '2017-06-25 17:07:48', '', 0, 'http://localhost/wordpress/?p=14', 0, 'customize_changeset', '', 0),
(15, 1, '2017-06-25 17:06:23', '2017-06-25 17:06:23', '', 'Logo', '', 'inherit', 'open', 'closed', '', 'logo_horizontal', '', '', '2017-06-25 17:06:34', '2017-06-25 17:06:34', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/06/logo_horizontal-1.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2017-06-25 17:07:29', '2017-06-25 17:07:29', 'http://localhost/wordpress/wp-content/uploads/2017/06/cropped-logo_horizontal-1.png', 'cropped-logo_horizontal-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo_horizontal-1-png', '', '', '2017-06-25 17:07:29', '2017-06-25 17:07:29', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/06/cropped-logo_horizontal-1.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2017-06-25 17:07:49', '2017-06-25 17:07:49', '¡Bienvenido a tu sitio! Esta es tu página de inicio, que es la que la mayoría de visitantes verán cuando vengan a tu sitio por primera vez.', 'Inicio', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-06-25 17:07:49', '2017-06-25 17:07:49', '', 9, 'http://localhost/wordpress/?p=17', 0, 'revision', '', 0),
(18, 1, '2017-06-25 17:07:49', '2017-06-25 17:07:49', 'Puedes ser un artista que quiere presentarse a sí mismo y a su trabajo o eres un negocio con una misión que describir.', 'Acerca de', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-06-25 17:07:49', '2017-06-25 17:07:49', '', 10, 'http://localhost/wordpress/?p=18', 0, 'revision', '', 0),
(19, 1, '2017-06-25 17:07:49', '2017-06-25 17:07:49', 'Esta es una página con información de contacto básica, como dirección y número de teléfono. Incluso puedes probar un plugin para añadir un formulario de contacto.', 'Contacto', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-25 17:07:49', '2017-06-25 17:07:49', '', 11, 'http://localhost/wordpress/?p=19', 0, 'revision', '', 0),
(20, 1, '2017-06-25 17:07:50', '2017-06-25 17:07:50', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-06-25 17:07:50', '2017-06-25 17:07:50', '', 12, 'http://localhost/wordpress/?p=20', 0, 'revision', '', 0),
(21, 1, '2017-06-25 17:07:50', '2017-06-25 17:07:50', 'Este es un ejemplo de una sección de la página de inicio. Las secciones de la página de inicio pueden estar en cualquier página aparte de la propia de inicio, incluida la página que muestra tus últimas entradas.', 'Una sección de la página de inicio', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-06-25 17:07:50', '2017-06-25 17:07:50', '', 13, 'http://localhost/wordpress/?p=21', 0, 'revision', '', 0),
(22, 1, '2017-06-25 17:07:51', '2017-06-25 17:07:51', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2017-06-25 17:07:51', '2017-06-25 17:07:51', '', 0, 'http://localhost/wordpress/?p=22', 0, 'nav_menu_item', '', 0),
(23, 1, '2017-06-25 17:07:52', '2017-06-25 17:07:52', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2017-06-25 17:07:52', '2017-06-25 17:07:52', '', 0, 'http://localhost/wordpress/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2017-06-25 17:07:53', '2017-06-25 17:07:53', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2017-06-25 17:07:53', '2017-06-25 17:07:53', '', 0, 'http://localhost/wordpress/?p=24', 2, 'nav_menu_item', '', 0),
(25, 1, '2017-06-25 17:07:54', '2017-06-25 17:07:54', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2017-06-25 17:07:54', '2017-06-25 17:07:54', '', 0, 'http://localhost/wordpress/?p=25', 3, 'nav_menu_item', '', 0),
(26, 1, '2017-06-25 17:07:56', '2017-06-25 17:07:56', '', 'Yelp', '', 'publish', 'closed', 'closed', '', 'yelp', '', '', '2017-06-25 17:07:56', '2017-06-25 17:07:56', '', 0, 'http://localhost/wordpress/?p=26', 0, 'nav_menu_item', '', 0),
(27, 1, '2017-06-25 17:07:57', '2017-06-25 17:07:57', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2017-06-25 17:07:57', '2017-06-25 17:07:57', '', 0, 'http://localhost/wordpress/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2017-06-25 17:07:58', '2017-06-25 17:07:58', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2017-06-25 17:07:58', '2017-06-25 17:07:58', '', 0, 'http://localhost/wordpress/?p=28', 2, 'nav_menu_item', '', 0),
(29, 1, '2017-06-25 17:07:59', '2017-06-25 17:07:59', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2017-06-25 17:07:59', '2017-06-25 17:07:59', '', 0, 'http://localhost/wordpress/?p=29', 3, 'nav_menu_item', '', 0),
(30, 1, '2017-06-25 17:08:00', '2017-06-25 17:08:00', '', 'Correo electrónico', '', 'publish', 'closed', 'closed', '', 'correo-electronico', '', '', '2017-06-25 17:08:00', '2017-06-25 17:08:00', '', 0, 'http://localhost/wordpress/?p=30', 4, 'nav_menu_item', '', 0),
(31, 1, '2017-06-25 17:15:14', '2017-06-25 17:15:14', '{\n    "twentyseventeen::external_header_video": {\n        "value": "https://www.youtube.com/watch?v=smowkVoZK-0",\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ae495fae-6ee1-4ba3-a3a3-9c535bc32098', '', '', '2017-06-25 17:15:14', '2017-06-25 17:15:14', '', 0, 'http://localhost/wordpress/?p=31', 0, 'customize_changeset', '', 0),
(32, 1, '2017-06-25 17:19:24', '2017-06-25 17:19:24', '{\n    "twentyseventeen::external_header_video": {\n        "value": "https://www.youtube.com/watch?v=YQlc3HRIDwM",\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '398eda72-b5ae-409b-b1d6-797374d80fe4', '', '', '2017-06-25 17:19:24', '2017-06-25 17:19:24', '', 0, 'http://localhost/wordpress/?p=32', 0, 'customize_changeset', '', 0),
(33, 1, '2017-06-29 05:53:58', '0000-00-00 00:00:00', '{\n    "old_sidebars_widgets_data": {\n        "value": {\n            "wp_inactive_widgets": [\n\n            ],\n            "sidebar-1": [\n                "text-2",\n                "search-3",\n                "text-3"\n            ],\n            "sidebar-2": [\n                "text-4"\n            ],\n            "sidebar-3": [\n                "text-5",\n                "search-4"\n            ]\n        },\n        "type": "global_variable",\n        "user_id": 1\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '119d977b-e6d1-4d41-a383-c667efba2425', '', '', '2017-06-29 05:53:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=33', 0, 'customize_changeset', '', 0),
(34, 1, '2017-06-30 01:41:30', '2017-06-30 01:41:30', '{\n    "blogname": {\n        "value": "TECNOAMAZON",\n        "type": "option",\n        "user_id": 1\n    },\n    "blogdescription": {\n        "value": "Los \\u00faltimos gadgets al mejor precio. ",\n        "type": "option",\n        "user_id": 1\n    },\n    "twentyseventeen-child::custom_logo": {\n        "value": 35,\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ab8d0495-50cb-45fa-b301-ee745c15f9b4', '', '', '2017-06-30 01:41:30', '2017-06-30 01:41:30', '', 0, 'http://localhost/wordpress/?p=34', 0, 'customize_changeset', '', 0),
(35, 1, '2017-06-30 01:41:15', '2017-06-30 01:41:15', 'http://localhost/wordpress/wp-content/uploads/2017/06/cropped-logo_horizontal-1-1.png', 'cropped-logo_horizontal-1-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo_horizontal-1-1-png', '', '', '2017-06-30 01:41:15', '2017-06-30 01:41:15', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/06/cropped-logo_horizontal-1-1.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2017-06-30 02:20:18', '2017-06-30 02:20:18', '', 'Su tienda de confianza', '', 'inherit', 'open', 'closed', '', 'electronics', '', '', '2017-06-30 02:20:45', '2017-06-30 02:20:45', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/06/electronics.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2017-06-30 02:23:43', '2017-06-30 02:23:43', '{\n    "twentyseventeen-child::header_image": {\n        "value": "http://localhost/wordpress/wp-content/uploads/2017/06/electronics.png",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "twentyseventeen-child::header_image_data": {\n        "value": {\n            "url": "http://localhost/wordpress/wp-content/uploads/2017/06/electronics.png",\n            "thumbnail_url": "http://localhost/wordpress/wp-content/uploads/2017/06/electronics.png",\n            "timestamp": 1498789405965,\n            "attachment_id": 36,\n            "width": 2000,\n            "height": 1200\n        },\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1cc69de7-f5d7-49c3-9925-643202590d77', '', '', '2017-06-30 02:23:43', '2017-06-30 02:23:43', '', 0, 'http://localhost/wordpress/?p=37', 0, 'customize_changeset', '', 0),
(38, 1, '2017-06-30 02:22:02', '2017-06-30 02:22:02', '', 'cropped-electronics.png', '', 'inherit', 'open', 'closed', '', 'cropped-electronics-png', '', '', '2017-06-30 02:22:02', '2017-06-30 02:22:02', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/06/cropped-electronics.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2017-06-30 02:23:39', '2017-06-30 02:23:39', '', 'cropped-electronics-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-electronics-1-png', '', '', '2017-06-30 02:23:39', '2017-06-30 02:23:39', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/06/cropped-electronics-1.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2017-06-30 02:47:57', '2017-06-30 02:47:57', '{\n    "twentyseventeen-child::header_image": {\n        "value": "http://localhost/wordpress/wp-content/uploads/2017/06/cropped-electronics-1.png",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "twentyseventeen-child::header_image_data": {\n        "value": {\n            "url": "http://localhost/wordpress/wp-content/uploads/2017/06/cropped-electronics-1.png",\n            "thumbnail_url": "http://localhost/wordpress/wp-content/uploads/2017/06/cropped-electronics-1.png",\n            "timestamp": 1498789433806,\n            "attachment_id": 39,\n            "width": 2000,\n            "height": 1200\n        },\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '64c057a2-01d1-4481-96bd-091347767804', '', '', '2017-06-30 02:47:57', '2017-06-30 02:47:57', '', 0, 'http://localhost/wordpress/?p=40', 0, 'customize_changeset', '', 0),
(41, 1, '2017-06-30 02:49:02', '2017-06-30 02:49:02', '{\n    "twentyseventeen-child::colorscheme": {\n        "value": "dark",\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '510a90c4-2054-4a0b-b345-21531a2cfb1d', '', '', '2017-06-30 02:49:02', '2017-06-30 02:49:02', '', 0, 'http://localhost/wordpress/?p=41', 0, 'customize_changeset', '', 0),
(42, 1, '2017-06-30 02:49:03', '0000-00-00 00:00:00', '{\n    "twentyseventeen-child::colorscheme": {\n        "value": "dark",\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '510a90c4-2054-4a0b-b345-21531a2cfb1d', '', '', '2017-06-30 02:49:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=42', 0, 'customize_changeset', '', 0),
(43, 1, '2017-06-30 04:22:21', '2017-06-30 04:22:21', '[\n\n]', '', '', 'trash', 'closed', 'closed', '', '0290c336-a1a0-4d62-9108-f6e49bc77049', '', '', '2017-06-30 04:22:21', '2017-06-30 04:22:21', '', 0, 'http://localhost/wordpress/?p=43', 0, 'customize_changeset', '', 0),
(44, 1, '2017-06-30 04:26:15', '2017-06-30 04:26:15', '{\n    "twentyseventeen-child::header_textcolor": {\n        "value": "#00021e",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "twentyseventeen-child::colorscheme": {\n        "value": "custom",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "twentyseventeen-child::colorscheme_hue": {\n        "value": 169,\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e1f5c04f-f017-4cf5-9193-fb665feb0a86', '', '', '2017-06-30 04:26:15', '2017-06-30 04:26:15', '', 0, 'http://localhost/wordpress/?p=44', 0, 'customize_changeset', '', 0),
(45, 1, '2017-06-30 04:29:42', '2017-06-30 04:29:42', '{\n    "twentyseventeen-child::page_layout": {\n        "value": "one-column",\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '40265f01-d678-4977-8180-239280074ac7', '', '', '2017-06-30 04:29:42', '2017-06-30 04:29:42', '', 0, 'http://localhost/wordpress/?p=45', 0, 'customize_changeset', '', 0),
(46, 1, '2017-06-30 06:50:07', '2017-06-30 06:50:07', 'Bienvenido a Tecnoamazon, los últimos gagdets al mejor precio. Esta es una muestra diseñada por Juan David Tabares Arce', 'Inicio', '', 'inherit', 'closed', 'closed', '', '9-autosave-v1', '', '', '2017-06-30 06:50:07', '2017-06-30 06:50:07', '', 9, 'http://localhost/wordpress/?p=46', 0, 'revision', '', 0),
(47, 1, '2017-06-30 06:51:27', '2017-06-30 06:51:27', 'Bienvenido a Tecnoamazon, los últimos gagdets al mejor precio. Esta es una muestra diseñada por <a href="https://juandavidarce.neocities.org/" target="_blank" rel="noopener">Juan David Tabares Arce  </a>  Esta página es adaptable (responsive) a cualquier dispositivo y administrable por medio de wordpress.\r\n\r\n&nbsp;', 'Inicio', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-06-30 06:51:27', '2017-06-30 06:51:27', '', 9, 'http://localhost/wordpress/?p=47', 0, 'revision', '', 0),
(48, 1, '2017-06-30 07:07:08', '0000-00-00 00:00:00', '{\n    "twentyseventeen-child::panel_1": {\n        "value": "10",\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'cf1b7f26-bdb4-43c8-a895-c0290f5ea940', '', '', '2017-06-30 07:07:08', '2017-06-30 07:07:08', '', 0, 'http://localhost/wordpress/?p=48', 0, 'customize_changeset', '', 0),
(49, 1, '2017-06-30 07:26:24', '2017-06-30 07:26:24', 'Las mejores marcas a precios competitivos.  Los precios incluyen domicilio a todo el país.\r\n\r\n[gallery ids="51,52,53,54,55,56"]', 'Celulares', '', 'publish', 'closed', 'closed', '', 'celulares', '', '', '2017-06-30 07:43:26', '2017-06-30 07:43:26', '', 0, 'http://localhost/wordpress/?page_id=49', 0, 'page', '', 0),
(50, 1, '2017-06-30 07:11:19', '2017-06-30 07:11:19', 'CONTENIDO DE TEXTO DE CARRUSEL PRODUCTOS.\r\n\r\n[gallery ids="8,36,35,6,7"]', 'Carrusel Productos', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2017-06-30 07:11:19', '2017-06-30 07:11:19', '', 49, 'http://localhost/wordpress/?p=50', 0, 'revision', '', 0),
(51, 1, '2017-06-30 07:22:20', '2017-06-30 07:22:20', '', 'alcatelWhite', 'ALCATEL', 'inherit', 'open', 'closed', '', 'alcatelwhite', '', '', '2017-06-30 07:24:33', '2017-06-30 07:24:33', '', 49, 'http://localhost/wordpress/wp-content/uploads/2017/06/alcatelWhite.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2017-06-30 07:22:30', '2017-06-30 07:22:30', '', 'appleWhite', 'APPLE', 'inherit', 'open', 'closed', '', 'applewhite', '', '', '2017-06-30 07:24:26', '2017-06-30 07:24:26', '', 49, 'http://localhost/wordpress/wp-content/uploads/2017/06/appleWhite.jpeg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2017-06-30 07:22:47', '2017-06-30 07:22:47', '', 'htcWhite', 'HTC', 'inherit', 'open', 'closed', '', 'htcwhite', '', '', '2017-06-30 07:24:29', '2017-06-30 07:24:29', '', 49, 'http://localhost/wordpress/wp-content/uploads/2017/06/htcWhite.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2017-06-30 07:23:01', '2017-06-30 07:23:01', '', 'huaweiWhite', 'HUAWEI', 'inherit', 'open', 'closed', '', 'huaweiwhite', '', '', '2017-06-30 07:24:40', '2017-06-30 07:24:40', '', 49, 'http://localhost/wordpress/wp-content/uploads/2017/06/huaweiWhite.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2017-06-30 07:23:21', '2017-06-30 07:23:21', '', 'lenovoWhite', 'LENOVO', 'inherit', 'open', 'closed', '', 'lenovowhite', '', '', '2017-06-30 07:24:43', '2017-06-30 07:24:43', '', 49, 'http://localhost/wordpress/wp-content/uploads/2017/06/lenovoWhite.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2017-06-30 07:23:30', '2017-06-30 07:23:30', '', 'samsung-galaxynexus-veriz-angle-lg', 'SAMSUNG', 'inherit', 'open', 'closed', '', 'samsung-galaxynexus-veriz-angle-lg', '', '', '2017-06-30 07:25:22', '2017-06-30 07:25:22', '', 49, 'http://localhost/wordpress/wp-content/uploads/2017/06/samsung-galaxynexus-veriz-angle-lg.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2017-06-30 07:23:42', '2017-06-30 07:23:42', '', 'sonyWhite', 'SONY', 'inherit', 'open', 'closed', '', 'sonywhite', '', '', '2017-06-30 07:24:49', '2017-06-30 07:24:49', '', 49, 'http://localhost/wordpress/wp-content/uploads/2017/06/sonyWhite.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2017-06-30 07:26:24', '2017-06-30 07:26:24', 'Las mejores marcas a precios competitivos.  Los precios incluyen domicilio a todo el país.\r\n\r\n[gallery ids="51,52,53,54,55,56,57"]', 'Celulares', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2017-06-30 07:26:24', '2017-06-30 07:26:24', '', 49, 'http://localhost/wordpress/?p=58', 0, 'revision', '', 0),
(60, 1, '2017-06-30 07:28:24', '2017-06-30 07:28:24', '{\n    "twentyseventeen-child::panel_1": {\n        "value": "49",\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'aa49a649-f470-446e-8a57-78f93e2c0ab5', '', '', '2017-06-30 07:28:24', '2017-06-30 07:28:24', '', 0, 'http://localhost/wordpress/?p=60', 0, 'customize_changeset', '', 0),
(61, 1, '2017-06-30 07:41:18', '2017-06-30 07:41:18', 'Bienvenido a Tecnoamazon, los últimos gagdets al mejor precio. Esta es una muestra diseñada por <a href="https://juandavidarce.neocities.org/" target="_blank" rel="noopener">Juan David Tabares Arce  </a>  Esta página es adaptable (<em>responsive</em>) a cualquier dispositivo y administrable por medio de wordpress.', 'Inicio', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-06-30 07:41:18', '2017-06-30 07:41:18', '', 9, 'http://localhost/wordpress/?p=61', 0, 'revision', '', 0),
(62, 1, '2017-06-30 07:43:26', '2017-06-30 07:43:26', 'Las mejores marcas a precios competitivos.  Los precios incluyen domicilio a todo el país.\r\n\r\n[gallery ids="51,52,53,54,55,56"]', 'Celulares', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2017-06-30 07:43:26', '2017-06-30 07:43:26', '', 49, 'http://localhost/wordpress/?p=62', 0, 'revision', '', 0),
(63, 1, '2017-06-30 07:45:08', '2017-06-30 07:45:08', '&nbsp;\r\n\r\n\r\n\r\n&nbsp;\r\n<div class="slideshow-container">\r\n<div class="mySlides fade">\r\n<div class="numbertext">1 / 3</div>\r\n<img style="width: 100%;" src="http://localhost/wordpress/wp-content/uploads/2017/06/chipAmarillo.jpg" />\r\n<div class="text">Caption Text</div>\r\n</div>\r\n<div class="mySlides fade">\r\n<div class="numbertext">2 / 3</div>\r\n<img style="width: 100%;" src="http://localhost/wordpress/wp-content/uploads/2017/06/circuitoAzul.jpg" />\r\n<div class="text">Caption Two</div>\r\n</div>\r\n<div class="mySlides fade">\r\n<div class="numbertext">3 / 3</div>\r\n<img style="width: 100%;" src="http://localhost/wordpress/wp-content/uploads/2017/06/condensadores.jpg" />\r\n<div class="text">Caption Three</div>\r\n</div>\r\n<a class="prev">❮</a>\r\n<a class="next">❯</a>\r\n\r\n</div>\r\n&nbsp;\r\n<div style="text-align: center;">\r\n</div>\r\n', 'CARRUSEL AUTOMÁTICO', '', 'publish', 'closed', 'closed', '', 'carrusel-automatico', '', '', '2017-06-30 08:19:48', '2017-06-30 08:19:48', '', 0, 'http://localhost/wordpress/?page_id=63', 0, 'page', '', 0),
(64, 1, '2017-06-30 07:45:08', '2017-06-30 07:45:08', 'CONTENIDO EN BLANCO DONDE DEBE IR EL CARRUSEL AUTOMÁTICO', 'CARRUSEL AUTOMÁTICO', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-06-30 07:45:08', '2017-06-30 07:45:08', '', 63, 'http://localhost/wordpress/?p=64', 0, 'revision', '', 0),
(65, 1, '2017-06-30 08:06:37', '2017-06-30 08:06:37', '<head>\r\n<style>\r\n/* Slideshow container */\r\n.slideshow-container {\r\n  max-width: 1000px;\r\n  position: relative;\r\n  margin: auto;\r\n}\r\n\r\n.mySlides {\r\n    display: none;\r\n}\r\n\r\n/* Next & previous buttons */\r\n.prev, .next {\r\n  cursor: pointer;\r\n  position: absolute;\r\n  top: 50%;\r\n  width: auto;\r\n  margin-top: -22px;\r\n  padding: 16px;\r\n  color: white;\r\n  font-weight: bold;\r\n  font-size: 18px;\r\n  transition: 0.6s ease;\r\n  border-radius: 0 3px 3px 0;\r\n}\r\n\r\n/* Position the "next button" to the right */\r\n.next {\r\n  right: 0;\r\n  border-radius: 3px 0 0 3px;\r\n}\r\n\r\n/* On hover, add a black background color with a little bit see-through */\r\n.prev:hover, .next:hover {\r\n  background-color: rgba(0,0,0,0.8);\r\n}\r\n\r\n/* Caption text */\r\n.text {\r\n  color: #f2f2f2;\r\n  font-size: 15px;\r\n  padding: 8px 12px;\r\n  position: absolute;\r\n  bottom: 8px;\r\n  width: 100%;\r\n  text-align: center;\r\n}\r\n\r\n/* Number text (1/3 etc) */\r\n.numbertext {\r\n  color: #f2f2f2;\r\n  font-size: 12px;\r\n  padding: 8px 12px;\r\n  position: absolute;\r\n  top: 0;\r\n}\r\n\r\n/* The dots/bullets/indicators */\r\n.dot {\r\n  cursor:pointer;\r\n  height: 13px;\r\n  width: 13px;\r\n  margin: 0 2px;\r\n  background-color: #bbb;\r\n  border-radius: 50%;\r\n  display: inline-block;\r\n  transition: background-color 0.6s ease;\r\n}\r\n\r\n.active, .dot:hover {\r\n  background-color: #717171;\r\n}\r\n\r\n/* Fading animation */\r\n.fade {\r\n  -webkit-animation-name: fade;\r\n  -webkit-animation-duration: 1.5s;\r\n  animation-name: fade;\r\n  animation-duration: 1.5s;\r\n}\r\n\r\n@-webkit-keyframes fade {\r\n  from {opacity: .4} \r\n  to {opacity: 1}\r\n}\r\n\r\n@keyframes fade {\r\n  from {opacity: .4} \r\n  to {opacity: 1}\r\n}\r\n</style>\r\n</head>\r\n\r\n<div class="slideshow-container">\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">1 / 3</div>\r\n    <img src="http://localhost/wordpress/wp-content/uploads/2017/06/chipAmarillo.jpg" style="width:100%">\r\n    <div class="text">Caption Text</div>\r\n  </div>\r\n\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">2 / 3</div>\r\n    <img src="http://localhost/wordpress/wp-content/uploads/2017/06/circuitoAzul.jpg" style="width:100%">\r\n    <div class="text">Caption Two</div>\r\n  </div>\r\n\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">3 / 3</div>\r\n    <img src="http://localhost/wordpress/wp-content/uploads/2017/06/condensadores.jpg" style="width:100%">\r\n    <div class="text">Caption Three</div>\r\n  </div>\r\n\r\n  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>\r\n  <a class="next" onclick="plusSlides(1)">&#10095;</a>\r\n</div>\r\n<br>\r\n\r\n<div style="text-align:center">\r\n  <span class="dot" onclick="currentSlide(1)"></span> \r\n  <span class="dot" onclick="currentSlide(2)"></span> \r\n  <span class="dot" onclick="currentSlide(3)"></span> \r\n</div>\r\n<script>\r\nvar slideIndex = 1;\r\nshowSlides(slideIndex);\r\n\r\nfunction plusSlides(n) {\r\n  showSlides(slideIndex += n);\r\n}\r\n\r\nfunction currentSlide(n) {\r\n  showSlides(slideIndex = n);\r\n}\r\n\r\nfunction showSlides(n) {\r\n  var i;\r\n  var slides = document.getElementsByClassName("mySlides");\r\n  var dots = document.getElementsByClassName("dot");\r\n  if (n > slides.length) {slideIndex = 1} \r\n  if (n < 1) {slideIndex = slides.length}\r\n  for (i = 0; i < slides.length; i++) {\r\n      slides[i].style.display = "none"; \r\n  }\r\n  for (i = 0; i < dots.length; i++) {\r\n      dots[i].className = dots[i].className.replace(" active", "");\r\n  }\r\n  slides[slideIndex-1].style.display = "block"; \r\n  dots[slideIndex-1].className += " active";\r\n}\r\n</script>', 'CARRUSEL AUTOMÁTICO', '', 'inherit', 'closed', 'closed', '', '63-autosave-v1', '', '', '2017-06-30 08:06:37', '2017-06-30 08:06:37', '', 63, 'http://localhost/wordpress/?p=65', 0, 'revision', '', 0),
(66, 1, '2017-06-30 07:59:06', '2017-06-30 07:59:06', '<head>\r\n<style>\r\n/* Slideshow container */\r\n.slideshow-container {\r\n  max-width: 1000px;\r\n  position: relative;\r\n  margin: auto;\r\n}\r\n\r\n.mySlides {\r\n    display: none;\r\n}\r\n\r\n/* Next & previous buttons */\r\n.prev, .next {\r\n  cursor: pointer;\r\n  position: absolute;\r\n  top: 50%;\r\n  width: auto;\r\n  margin-top: -22px;\r\n  padding: 16px;\r\n  color: white;\r\n  font-weight: bold;\r\n  font-size: 18px;\r\n  transition: 0.6s ease;\r\n  border-radius: 0 3px 3px 0;\r\n}\r\n\r\n/* Position the "next button" to the right */\r\n.next {\r\n  right: 0;\r\n  border-radius: 3px 0 0 3px;\r\n}\r\n\r\n/* On hover, add a black background color with a little bit see-through */\r\n.prev:hover, .next:hover {\r\n  background-color: rgba(0,0,0,0.8);\r\n}\r\n\r\n/* Caption text */\r\n.text {\r\n  color: #f2f2f2;\r\n  font-size: 15px;\r\n  padding: 8px 12px;\r\n  position: absolute;\r\n  bottom: 8px;\r\n  width: 100%;\r\n  text-align: center;\r\n}\r\n\r\n/* Number text (1/3 etc) */\r\n.numbertext {\r\n  color: #f2f2f2;\r\n  font-size: 12px;\r\n  padding: 8px 12px;\r\n  position: absolute;\r\n  top: 0;\r\n}\r\n\r\n/* The dots/bullets/indicators */\r\n.dot {\r\n  cursor:pointer;\r\n  height: 13px;\r\n  width: 13px;\r\n  margin: 0 2px;\r\n  background-color: #bbb;\r\n  border-radius: 50%;\r\n  display: inline-block;\r\n  transition: background-color 0.6s ease;\r\n}\r\n\r\n.active, .dot:hover {\r\n  background-color: #717171;\r\n}\r\n\r\n/* Fading animation */\r\n.fade {\r\n  -webkit-animation-name: fade;\r\n  -webkit-animation-duration: 1.5s;\r\n  animation-name: fade;\r\n  animation-duration: 1.5s;\r\n}\r\n\r\n@-webkit-keyframes fade {\r\n  from {opacity: .4} \r\n  to {opacity: 1}\r\n}\r\n\r\n@keyframes fade {\r\n  from {opacity: .4} \r\n  to {opacity: 1}\r\n}\r\n</style>\r\n</head>\r\n\r\n<div class="slideshow-container">\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">1 / 3</div>\r\n    <img src="img1.jpg" style="width:100%">\r\n    <div class="text">Caption Text</div>\r\n  </div>\r\n\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">2 / 3</div>\r\n    <img src="img2.jpg" style="width:100%">\r\n    <div class="text">Caption Two</div>\r\n  </div>\r\n\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">3 / 3</div>\r\n    <img src="img3.jpg" style="width:100%">\r\n    <div class="text">Caption Three</div>\r\n  </div>\r\n\r\n  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>\r\n  <a class="next" onclick="plusSlides(1)">&#10095;</a>\r\n</div>\r\n<br>\r\n\r\n<div style="text-align:center">\r\n  <span class="dot" onclick="currentSlide(1)"></span> \r\n  <span class="dot" onclick="currentSlide(2)"></span> \r\n  <span class="dot" onclick="currentSlide(3)"></span> \r\n</div>', 'CARRUSEL AUTOMÁTICO', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-06-30 07:59:06', '2017-06-30 07:59:06', '', 63, 'http://localhost/wordpress/?p=66', 0, 'revision', '', 0),
(67, 1, '2017-06-30 08:00:58', '2017-06-30 08:00:58', '<head>\r\n<style>\r\n/* Slideshow container */\r\n.slideshow-container {\r\n  max-width: 1000px;\r\n  position: relative;\r\n  margin: auto;\r\n}\r\n\r\n.mySlides {\r\n    display: none;\r\n}\r\n\r\n/* Next & previous buttons */\r\n.prev, .next {\r\n  cursor: pointer;\r\n  position: absolute;\r\n  top: 50%;\r\n  width: auto;\r\n  margin-top: -22px;\r\n  padding: 16px;\r\n  color: white;\r\n  font-weight: bold;\r\n  font-size: 18px;\r\n  transition: 0.6s ease;\r\n  border-radius: 0 3px 3px 0;\r\n}\r\n\r\n/* Position the "next button" to the right */\r\n.next {\r\n  right: 0;\r\n  border-radius: 3px 0 0 3px;\r\n}\r\n\r\n/* On hover, add a black background color with a little bit see-through */\r\n.prev:hover, .next:hover {\r\n  background-color: rgba(0,0,0,0.8);\r\n}\r\n\r\n/* Caption text */\r\n.text {\r\n  color: #f2f2f2;\r\n  font-size: 15px;\r\n  padding: 8px 12px;\r\n  position: absolute;\r\n  bottom: 8px;\r\n  width: 100%;\r\n  text-align: center;\r\n}\r\n\r\n/* Number text (1/3 etc) */\r\n.numbertext {\r\n  color: #f2f2f2;\r\n  font-size: 12px;\r\n  padding: 8px 12px;\r\n  position: absolute;\r\n  top: 0;\r\n}\r\n\r\n/* The dots/bullets/indicators */\r\n.dot {\r\n  cursor:pointer;\r\n  height: 13px;\r\n  width: 13px;\r\n  margin: 0 2px;\r\n  background-color: #bbb;\r\n  border-radius: 50%;\r\n  display: inline-block;\r\n  transition: background-color 0.6s ease;\r\n}\r\n\r\n.active, .dot:hover {\r\n  background-color: #717171;\r\n}\r\n\r\n/* Fading animation */\r\n.fade {\r\n  -webkit-animation-name: fade;\r\n  -webkit-animation-duration: 1.5s;\r\n  animation-name: fade;\r\n  animation-duration: 1.5s;\r\n}\r\n\r\n@-webkit-keyframes fade {\r\n  from {opacity: .4} \r\n  to {opacity: 1}\r\n}\r\n\r\n@keyframes fade {\r\n  from {opacity: .4} \r\n  to {opacity: 1}\r\n}\r\n</style>\r\n</head>\r\n\r\n<div class="slideshow-container">\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">1 / 3</div>\r\n    <img src="img1.jpg" style="width:100%">\r\n    <div class="text">Caption Text</div>\r\n  </div>\r\n\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">2 / 3</div>\r\n    <img src="img2.jpg" style="width:100%">\r\n    <div class="text">Caption Two</div>\r\n  </div>\r\n\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">3 / 3</div>\r\n    <img src="img3.jpg" style="width:100%">\r\n    <div class="text">Caption Three</div>\r\n  </div>\r\n\r\n  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>\r\n  <a class="next" onclick="plusSlides(1)">&#10095;</a>\r\n</div>\r\n<br>\r\n\r\n<div style="text-align:center">\r\n  <span class="dot" onclick="currentSlide(1)"></span> \r\n  <span class="dot" onclick="currentSlide(2)"></span> \r\n  <span class="dot" onclick="currentSlide(3)"></span> \r\n</div>\r\n<script>\r\nvar slideIndex = 1;\r\nshowSlides(slideIndex);\r\n\r\nfunction plusSlides(n) {\r\n  showSlides(slideIndex += n);\r\n}\r\n\r\nfunction currentSlide(n) {\r\n  showSlides(slideIndex = n);\r\n}\r\n\r\nfunction showSlides(n) {\r\n  var i;\r\n  var slides = document.getElementsByClassName("mySlides");\r\n  var dots = document.getElementsByClassName("dot");\r\n  if (n > slides.length) {slideIndex = 1} \r\n  if (n < 1) {slideIndex = slides.length}\r\n  for (i = 0; i < slides.length; i++) {\r\n      slides[i].style.display = "none"; \r\n  }\r\n  for (i = 0; i < dots.length; i++) {\r\n      dots[i].className = dots[i].className.replace(" active", "");\r\n  }\r\n  slides[slideIndex-1].style.display = "block"; \r\n  dots[slideIndex-1].className += " active";\r\n}\r\n</script>', 'CARRUSEL AUTOMÁTICO', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-06-30 08:00:58', '2017-06-30 08:00:58', '', 63, 'http://localhost/wordpress/?p=67', 0, 'revision', '', 0),
(68, 1, '2017-06-30 08:03:36', '2017-06-30 08:03:36', '', 'chipAmarillo', '', 'inherit', 'open', 'closed', '', 'chipamarillo', '', '', '2017-06-30 08:03:36', '2017-06-30 08:03:36', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/06/chipAmarillo.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2017-06-30 08:03:52', '2017-06-30 08:03:52', '', 'circuitoAzul', 'circuit board closeup', 'inherit', 'open', 'closed', '', 'circuitoazul', '', '', '2017-06-30 08:03:52', '2017-06-30 08:03:52', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/06/circuitoAzul.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2017-06-30 08:04:38', '2017-06-30 08:04:38', '', 'condensadores', '', 'inherit', 'open', 'closed', '', 'condensadores', '', '', '2017-06-30 08:04:38', '2017-06-30 08:04:38', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/06/condensadores.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `bd_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(71, 1, '2017-06-30 08:06:14', '2017-06-30 08:06:14', '<head>\r\n<style>\r\n/* Slideshow container */\r\n.slideshow-container {\r\n  max-width: 1000px;\r\n  position: relative;\r\n  margin: auto;\r\n}\r\n\r\n.mySlides {\r\n    display: none;\r\n}\r\n\r\n/* Next & previous buttons */\r\n.prev, .next {\r\n  cursor: pointer;\r\n  position: absolute;\r\n  top: 50%;\r\n  width: auto;\r\n  margin-top: -22px;\r\n  padding: 16px;\r\n  color: white;\r\n  font-weight: bold;\r\n  font-size: 18px;\r\n  transition: 0.6s ease;\r\n  border-radius: 0 3px 3px 0;\r\n}\r\n\r\n/* Position the "next button" to the right */\r\n.next {\r\n  right: 0;\r\n  border-radius: 3px 0 0 3px;\r\n}\r\n\r\n/* On hover, add a black background color with a little bit see-through */\r\n.prev:hover, .next:hover {\r\n  background-color: rgba(0,0,0,0.8);\r\n}\r\n\r\n/* Caption text */\r\n.text {\r\n  color: #f2f2f2;\r\n  font-size: 15px;\r\n  padding: 8px 12px;\r\n  position: absolute;\r\n  bottom: 8px;\r\n  width: 100%;\r\n  text-align: center;\r\n}\r\n\r\n/* Number text (1/3 etc) */\r\n.numbertext {\r\n  color: #f2f2f2;\r\n  font-size: 12px;\r\n  padding: 8px 12px;\r\n  position: absolute;\r\n  top: 0;\r\n}\r\n\r\n/* The dots/bullets/indicators */\r\n.dot {\r\n  cursor:pointer;\r\n  height: 13px;\r\n  width: 13px;\r\n  margin: 0 2px;\r\n  background-color: #bbb;\r\n  border-radius: 50%;\r\n  display: inline-block;\r\n  transition: background-color 0.6s ease;\r\n}\r\n\r\n.active, .dot:hover {\r\n  background-color: #717171;\r\n}\r\n\r\n/* Fading animation */\r\n.fade {\r\n  -webkit-animation-name: fade;\r\n  -webkit-animation-duration: 1.5s;\r\n  animation-name: fade;\r\n  animation-duration: 1.5s;\r\n}\r\n\r\n@-webkit-keyframes fade {\r\n  from {opacity: .4} \r\n  to {opacity: 1}\r\n}\r\n\r\n@keyframes fade {\r\n  from {opacity: .4} \r\n  to {opacity: 1}\r\n}\r\n</style>\r\n</head>\r\n\r\n<div class="slideshow-container">\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">1 / 3</div>\r\n    <img src="http://localhost/wordpress/wp-content/uploads/2017/06/chipAmarillo.jpg" style="width:100%">\r\n    <div class="text">Caption Text</div>\r\n  </div>\r\n\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">2 / 3</div>\r\n    <img src="http://localhost/wordpress/wp-content/uploads/2017/06/circuitoAzul.jpg" style="width:100%">\r\n    <div class="text">Caption Two</div>\r\n  </div>\r\n\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">3 / 3</div>\r\n    <img src="http://localhost/wordpress/wp-content/uploads/2017/06/condensadores.jpg" style="width:100%">\r\n    <div class="text">Caption Three</div>\r\n  </div>\r\n\r\n  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>\r\n  <a class="next" onclick="plusSlides(1)">&#10095;</a>\r\n</div>\r\n<br>\r\n\r\n<div style="text-align:center">\r\n  <span class="dot" onclick="currentSlide(1)"></span> \r\n  <span class="dot" onclick="currentSlide(2)"></span> \r\n  <span class="dot" onclick="currentSlide(3)"></span> \r\n</div>\r\n<script>\r\nvar slideIndex = 1;\r\nshowSlides(slideIndex);\r\n\r\nfunction plusSlides(n) {\r\n  showSlides(slideIndex += n);\r\n}\r\n\r\nfunction currentSlide(n) {\r\n  showSlides(slideIndex = n);\r\n}\r\n\r\nfunction showSlides(n) {\r\n  var i;\r\n  var slides = document.getElementsByClassName("mySlides");\r\n  var dots = document.getElementsByClassName("dot");\r\n  if (n > slides.length) {slideIndex = 1} \r\n  if (n < 1) {slideIndex = slides.length}\r\n  for (i = 0; i < slides.length; i++) {\r\n      slides[i].style.display = "none"; \r\n  }\r\n  for (i = 0; i < dots.length; i++) {\r\n      dots[i].className = dots[i].className.replace(" active", "");\r\n  }\r\n  slides[slideIndex-1].style.display = "block"; \r\n  dots[slideIndex-1].className += " active";\r\n}\r\n</script>', 'CARRUSEL AUTOMÁTICO', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-06-30 08:06:14', '2017-06-30 08:06:14', '', 63, 'http://localhost/wordpress/?p=71', 0, 'revision', '', 0),
(72, 1, '2017-06-30 08:08:55', '2017-06-30 08:08:55', '&nbsp;\r\n\r\n\r\n\r\n&nbsp;\r\n<div class="slideshow-container">\r\n<div class="mySlides fade">\r\n<div class="numbertext">1 / 3</div>\r\n<img style="width: 100%;" src="http://localhost/wordpress/wp-content/uploads/2017/06/chipAmarillo.jpg" />\r\n<div class="text">Caption Text</div>\r\n</div>\r\n<div class="mySlides fade">\r\n<div class="numbertext">2 / 3</div>\r\n<img style="width: 100%;" src="http://localhost/wordpress/wp-content/uploads/2017/06/circuitoAzul.jpg" />\r\n<div class="text">Caption Two</div>\r\n</div>\r\n<div class="mySlides fade">\r\n<div class="numbertext">3 / 3</div>\r\n<img style="width: 100%;" src="http://localhost/wordpress/wp-content/uploads/2017/06/condensadores.jpg" />\r\n<div class="text">Caption Three</div>\r\n</div>\r\n<a class="prev">❮</a>\r\n<a class="next">❯</a>\r\n\r\n</div>\r\n&nbsp;\r\n<div style="text-align: center;">\r\n</div>\r\n<script>\r\nvar slideIndex = 1;\r\nshowSlides(slideIndex);\r\n\r\nfunction plusSlides(n) {\r\n  showSlides(slideIndex += n);\r\n}\r\n\r\nfunction currentSlide(n) {\r\n  showSlides(slideIndex = n);\r\n}\r\n\r\nfunction showSlides(n) {\r\n  var i;\r\n  var slides = document.getElementsByClassName("mySlides");\r\n  var dots = document.getElementsByClassName("dot");\r\n  if (n > slides.length) {slideIndex = 1} \r\n  if (n < 1) {slideIndex = slides.length}\r\n  for (i = 0; i < slides.length; i++) {\r\n      slides[i].style.display = "none"; \r\n  }\r\n  for (i = 0; i < dots.length; i++) {\r\n      dots[i].className = dots[i].className.replace(" active", "");\r\n  }\r\n  slides[slideIndex-1].style.display = "block"; \r\n  dots[slideIndex-1].className += " active";\r\n}\r\n</script>', 'CARRUSEL AUTOMÁTICO', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-06-30 08:08:55', '2017-06-30 08:08:55', '', 63, 'http://localhost/wordpress/?p=72', 0, 'revision', '', 0),
(73, 1, '2017-06-30 08:19:48', '2017-06-30 08:19:48', '&nbsp;\r\n\r\n\r\n\r\n&nbsp;\r\n<div class="slideshow-container">\r\n<div class="mySlides fade">\r\n<div class="numbertext">1 / 3</div>\r\n<img style="width: 100%;" src="http://localhost/wordpress/wp-content/uploads/2017/06/chipAmarillo.jpg" />\r\n<div class="text">Caption Text</div>\r\n</div>\r\n<div class="mySlides fade">\r\n<div class="numbertext">2 / 3</div>\r\n<img style="width: 100%;" src="http://localhost/wordpress/wp-content/uploads/2017/06/circuitoAzul.jpg" />\r\n<div class="text">Caption Two</div>\r\n</div>\r\n<div class="mySlides fade">\r\n<div class="numbertext">3 / 3</div>\r\n<img style="width: 100%;" src="http://localhost/wordpress/wp-content/uploads/2017/06/condensadores.jpg" />\r\n<div class="text">Caption Three</div>\r\n</div>\r\n<a class="prev">❮</a>\r\n<a class="next">❯</a>\r\n\r\n</div>\r\n&nbsp;\r\n<div style="text-align: center;">\r\n</div>\r\n', 'CARRUSEL AUTOMÁTICO', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-06-30 08:19:48', '2017-06-30 08:19:48', '', 63, 'http://localhost/wordpress/?p=73', 0, 'revision', '', 0),
(75, 1, '2017-06-30 08:49:30', '2017-06-30 08:49:30', '', 'Diapositiva con Plugin', '', 'publish', 'closed', 'closed', '', 'diapositiva-con-plugin', '', '', '2017-06-30 09:03:02', '2017-06-30 09:03:02', '', 0, 'http://localhost/wordpress/?post_type=slideshow&#038;p=75', 0, 'slideshow', '', 0),
(76, 1, '2017-06-30 08:52:13', '2017-06-30 08:52:13', '[slideshow_deploy id=''75'']', 'TITULO DIAPOSITIVAS PLUGIN', '', 'publish', 'closed', 'closed', '', 'titulo-diapositivas-plugin', '', '', '2017-06-30 08:52:13', '2017-06-30 08:52:13', '', 0, 'http://localhost/wordpress/?page_id=76', 0, 'page', '', 0),
(77, 1, '2017-06-30 08:51:24', '2017-06-30 08:51:24', '[slideshow_deploy id=''75'']', 'TITULO DIAPOSITIVAS PLUGIN', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-06-30 08:51:24', '2017-06-30 08:51:24', '', 76, 'http://localhost/wordpress/?p=77', 0, 'revision', '', 0),
(78, 1, '2017-07-01 20:04:17', '2017-07-01 20:04:17', '[gallery ids="54,55"]\r\n\r\n', '2 Items Slideshow', '', 'publish', 'closed', 'closed', '', '2-items-slideshow', '', '', '2017-07-02 20:29:29', '2017-07-02 20:29:29', '', 0, 'http://localhost/wordpress/?page_id=78', 0, 'page', '', 0),
(79, 1, '2017-07-01 20:03:51', '2017-07-01 20:03:51', '[gallery ids="54,55"]', '2 Items Slideshow', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2017-07-01 20:03:51', '2017-07-01 20:03:51', '', 78, 'http://localhost/wordpress/?p=79', 0, 'revision', '', 0),
(80, 1, '2017-07-02 06:23:30', '2017-07-02 06:23:30', '[gallery ids="54,55"]\r\n<a class="prev" onclick="plusSlides(-1)">&#10094;</a>\r\n  <a class="next" onclick="plusSlides(1)">&#10095;</a>', '2 Items Slideshow', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2017-07-02 06:23:30', '2017-07-02 06:23:30', '', 78, 'http://localhost/wordpress/?p=80', 0, 'revision', '', 0),
(82, 1, '2017-07-02 06:45:32', '2017-07-02 06:45:32', '[gallery ids="54,55"]\r\n<div class="slideshow-container">\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">1 / 3</div>\r\n    <img src="img1.jpg" style="width:100%">\r\n    <div class="text">Caption Text</div>\r\n  </div>\r\n\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">2 / 3</div>\r\n    <img src="img2.jpg" style="width:100%">\r\n    <div class="text">Caption Two</div>\r\n  </div>\r\n\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">3 / 3</div>\r\n    <img src="img3.jpg" style="width:100%">\r\n    <div class="text">Caption Three</div>\r\n  </div>\r\n\r\n  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>\r\n  <a class="next" onclick="plusSlides(1)">&#10095;</a>\r\n</div>\r\n<br>\r\n\r\n<div style="text-align:center">\r\n  <span class="dot" onclick="currentSlide(1)"></span> \r\n  <span class="dot" onclick="currentSlide(2)"></span> \r\n  <span class="dot" onclick="currentSlide(3)"></span> \r\n</div>\r\n', '2 Items Slideshow', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2017-07-02 06:45:32', '2017-07-02 06:45:32', '', 78, 'http://localhost/wordpress/?p=82', 0, 'revision', '', 0),
(83, 1, '2017-07-02 20:21:54', '2017-07-02 20:21:54', '[gallery ids="54,55"]\r\n<div class="slideshow-container">\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">1 / 3</div>\r\n    <img src="img1.jpg" style="width:100%">\r\n    <div class="text">Caption Text</div>\r\n  </div>\r\n\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">2 / 3</div>\r\n    <img src="img2.jpg" style="width:100%">\r\n    <div class="text">Caption Two</div>\r\n  </div>\r\n\r\n \r\n  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>\r\n  <a class="next" onclick="plusSlides(1)">&#10095;</a>\r\n</div>\r\n<br>\r\n\r\n<div style="text-align:center">\r\n  <span class="dot" onclick="currentSlide(1)"></span> \r\n  <span class="dot" onclick="currentSlide(2)"></span> \r\n  <span class="dot" onclick="currentSlide(3)"></span> \r\n</div>\r\n', '2 Items Slideshow', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2017-07-02 20:21:54', '2017-07-02 20:21:54', '', 78, 'http://localhost/wordpress/?p=83', 0, 'revision', '', 0),
(84, 1, '2017-07-02 20:23:06', '2017-07-02 20:23:06', '[gallery ids="54,55"]\r\n<div class="slideshow-container">\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">1 / 3</div>\r\n    <img src="http://localhost/wordpress/wp-content/uploads/2017/06/appleWhite.jpeg" style="width:100%">\r\n    <div class="text">Caption Text</div>\r\n  </div>\r\n\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">2 / 3</div>\r\n    <img src="http://localhost/wordpress/wp-content/uploads/2017/06/alcatelWhite.jpg" style="width:100%">\r\n    <div class="text">Caption Two</div>\r\n  </div>\r\n\r\n \r\n  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>\r\n  <a class="next" onclick="plusSlides(1)">&#10095;</a>\r\n</div>\r\n<br>\r\n\r\n<div style="text-align:center">\r\n  <span class="dot" onclick="currentSlide(1)"></span> \r\n  <span class="dot" onclick="currentSlide(2)"></span>   <span class="dot" onclick="currentSlide(3)"></span> \r\n</div>\r\n', '2 Items Slideshow', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2017-07-02 20:23:06', '2017-07-02 20:23:06', '', 78, 'http://localhost/wordpress/?p=84', 0, 'revision', '', 0),
(85, 1, '2017-07-02 20:29:29', '2017-07-02 20:29:29', '[gallery ids="54,55"]\r\n\r\n', '2 Items Slideshow', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2017-07-02 20:29:29', '2017-07-02 20:29:29', '', 78, 'http://localhost/wordpress/?p=85', 0, 'revision', '', 0),
(86, 1, '2017-07-02 20:30:19', '2017-07-02 20:30:19', '<div class="slideshow-container">\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">1 / 3</div>\r\n    <img src="http://localhost/wordpress/wp-content/uploads/2017/06/appleWhite.jpeg" style="width:100%">\r\n    <div class="text">Caption Text</div>\r\n  </div>\r\n\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">2 / 3</div>\r\n    <img src="http://localhost/wordpress/wp-content/uploads/2017/06/lenovoWhite.jpg" style="width:100%">\r\n    <div class="text">Caption Two</div>\r\n  </div>\r\n\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">3 / 3</div>\r\n    <img src="http://localhost/wordpress/wp-content/uploads/2017/06/samsung-galaxynexus-veriz-angle-lg.jpg" style="width:100%">\r\n    <div class="text">Caption Three</div>\r\n  </div>\r\n\r\n  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>\r\n  <a class="next" onclick="plusSlides(1)">&#10095;</a>\r\n</div>\r\n<br>\r\n\r\n<div style="text-align:center">\r\n  <span class="dot" onclick="currentSlide(1)"></span> \r\n  <span class="dot" onclick="currentSlide(2)"></span> \r\n  <span class="dot" onclick="currentSlide(3)"></span> \r\n</div>', 'Diapositivas manuales', '', 'publish', 'closed', 'closed', '', 'diapositivas-manuales', '', '', '2017-07-02 21:54:17', '2017-07-02 21:54:17', '', 0, 'http://localhost/wordpress/?page_id=86', 0, 'page', '', 0),
(87, 1, '2017-07-02 20:30:19', '2017-07-02 20:30:19', '<div class="slideshow-container">\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">1 / 3</div>\r\n    <img src="http://localhost/wordpress/wp-content/uploads/2017/06/appleWhite.jpeg" style="width:100%">\r\n    <div class="text">Caption Text</div>\r\n  </div>\r\n\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">2 / 3</div>\r\n    <img src="http://localhost/wordpress/wp-content/uploads/2017/06/alcatelWhite.jpg" style="width:100%">\r\n    <div class="text">Caption Two</div>\r\n  </div>\r\n\r\n \r\n  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>\r\n  <a class="next" onclick="plusSlides(1)">&#10095;</a>\r\n</div>\r\n<br>\r\n\r\n<div style="text-align:center">\r\n  <span class="dot" onclick="currentSlide(1)"></span> \r\n  <span class="dot" onclick="currentSlide(2)"></span>   <span class="dot" onclick="currentSlide(3)"></span> \r\n</div>', 'Diapositivas manuales', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2017-07-02 20:30:19', '2017-07-02 20:30:19', '', 86, 'http://localhost/wordpress/?p=87', 0, 'revision', '', 0),
(89, 1, '2017-07-02 20:43:30', '2017-07-02 20:43:30', '<div class="slideshow-container">\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">1 / 3</div>\r\n    <img src="img1.jpg" style="width:100%">\r\n    <div class="text">Caption Text</div>\r\n  </div>\r\n\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">2 / 3</div>\r\n    <img src="img2.jpg" style="width:100%">\r\n    <div class="text">Caption Two</div>\r\n  </div>\r\n\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">3 / 3</div>\r\n    <img src="img3.jpg" style="width:100%">\r\n    <div class="text">Caption Three</div>\r\n  </div>\r\n\r\n  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>\r\n  <a class="next" onclick="plusSlides(1)">&#10095;</a>\r\n</div>\r\n<br>\r\n\r\n<div style="text-align:center">\r\n  <span class="dot" onclick="currentSlide(1)"></span> \r\n  <span class="dot" onclick="currentSlide(2)"></span> \r\n  <span class="dot" onclick="currentSlide(3)"></span> \r\n</div>', 'Diapositivas manuales', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2017-07-02 20:43:30', '2017-07-02 20:43:30', '', 86, 'http://localhost/wordpress/?p=89', 0, 'revision', '', 0),
(90, 1, '2017-07-02 20:45:31', '2017-07-02 20:45:31', '<div class="slideshow-container">\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">1 / 3</div>\r\n    <img src="http://localhost/wordpress/wp-content/uploads/2017/06/appleWhite.jpeg" style="width:100%">\r\n    <div class="text">Caption Text</div>\r\n  </div>\r\n\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">2 / 3</div>\r\n    <img src="http://localhost/wordpress/wp-content/uploads/2017/06/appleWhite.jpeg" style="width:100%">\r\n    <div class="text">Caption Two</div>\r\n  </div>\r\n\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">3 / 3</div>\r\n    <img src="http://localhost/wordpress/wp-content/uploads/2017/06/samsung-galaxynexus-veriz-angle-lg.jpg" style="width:100%">\r\n    <div class="text">Caption Three</div>\r\n  </div>\r\n\r\n  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>\r\n  <a class="next" onclick="plusSlides(1)">&#10095;</a>\r\n</div>\r\n<br>\r\n\r\n<div style="text-align:center">\r\n  <span class="dot" onclick="currentSlide(1)"></span> \r\n  <span class="dot" onclick="currentSlide(2)"></span> \r\n  <span class="dot" onclick="currentSlide(3)"></span> \r\n</div>', 'Diapositivas manuales', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2017-07-02 20:45:31', '2017-07-02 20:45:31', '', 86, 'http://localhost/wordpress/?p=90', 0, 'revision', '', 0),
(92, 1, '2017-07-02 21:54:07', '2017-07-02 21:54:07', '<div class="slideshow-container">\n  <div class="mySlides fade">\n    <div class="numbertext">1 / 3</div>\n    <img src="http://localhost/wordpress/wp-content/uploads/2017/06/appleWhite.jpeg" style="width:100%">\n    <div class="text">Caption Text</div>\n  </div>\n\n  <div class="mySlides fade">\n    <div class="numbertext">2 / 3</div>\n    <img src="http://localhost/wordpress/wp-content/uploads/2017/06/lenovoWhite.jpg" style="width:100%">\n    <div class="text">Caption Two</div>\n  </div>\n\n  <div class="mySlides fade">\n    <div class="numbertext">3 / 3</div>\n    <img src="http://localhost/wordpress/wp-content/uploads/2017/06/samsung-galaxynexus-veriz-angle-lg.jpg" style="width:100%">\n    <div class="text">Caption Three</div>\n  </div>\n\n  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>\n  <a class="next" onclick="plusSlides(1)">&#10095;</a>\n</div>\n<br>\n\n<div style="text-align:center">\n  <span class="dot" onclick="currentSlide(1)"></span> \n  <span class="dot" onclick="currentSlide(2)"></span> \n  <span class="dot" onclick="currentSlide(3)"></span> \n</div>', 'Diapositivas manuales', '', 'inherit', 'closed', 'closed', '', '86-autosave-v1', '', '', '2017-07-02 21:54:07', '2017-07-02 21:54:07', '', 86, 'http://localhost/wordpress/?p=92', 0, 'revision', '', 0),
(93, 1, '2017-07-02 21:54:17', '2017-07-02 21:54:17', '<div class="slideshow-container">\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">1 / 3</div>\r\n    <img src="http://localhost/wordpress/wp-content/uploads/2017/06/appleWhite.jpeg" style="width:100%">\r\n    <div class="text">Caption Text</div>\r\n  </div>\r\n\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">2 / 3</div>\r\n    <img src="http://localhost/wordpress/wp-content/uploads/2017/06/lenovoWhite.jpg" style="width:100%">\r\n    <div class="text">Caption Two</div>\r\n  </div>\r\n\r\n  <div class="mySlides fade">\r\n    <div class="numbertext">3 / 3</div>\r\n    <img src="http://localhost/wordpress/wp-content/uploads/2017/06/samsung-galaxynexus-veriz-angle-lg.jpg" style="width:100%">\r\n    <div class="text">Caption Three</div>\r\n  </div>\r\n\r\n  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>\r\n  <a class="next" onclick="plusSlides(1)">&#10095;</a>\r\n</div>\r\n<br>\r\n\r\n<div style="text-align:center">\r\n  <span class="dot" onclick="currentSlide(1)"></span> \r\n  <span class="dot" onclick="currentSlide(2)"></span> \r\n  <span class="dot" onclick="currentSlide(3)"></span> \r\n</div>', 'Diapositivas manuales', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2017-07-02 21:54:17', '2017-07-02 21:54:17', '', 86, 'http://localhost/wordpress/?p=93', 0, 'revision', '', 0),
(94, 1, '2017-07-03 02:15:28', '2017-07-03 02:15:28', '<div id="slideshow">\r\n   <div>\r\n     <img src="//farm6.static.flickr.com/5224/5658667829_2bb7d42a9c_m.jpg">\r\n   </div>\r\n   <div>\r\n     <img src="//farm6.static.flickr.com/5230/5638093881_a791e4f819_m.jpg">\r\n   </div>\r\n   <div>\r\n     Pretty cool eh? This slide is proof the content can be anything.\r\n   </div>\r\n</div>', 'CSS TRICKS DIAPOSITIVAS AUTOMÁTICAS', '', 'publish', 'closed', 'closed', '', 'css-tricks-diapositivas-automaticas', '', '', '2017-07-03 02:24:03', '2017-07-03 02:24:03', '', 0, 'http://localhost/wordpress/?page_id=94', 0, 'page', '', 0),
(95, 1, '2017-07-03 02:15:28', '2017-07-03 02:15:28', '<div id="slideshow">\r\n   <div>\r\n     <img src="//farm6.static.flickr.com/5224/5658667829_2bb7d42a9c_m.jpg">\r\n   </div>\r\n   <div>\r\n     <img src="//farm6.static.flickr.com/5230/5638093881_a791e4f819_m.jpg">\r\n   </div>\r\n   <div>\r\n     Pretty cool eh? This slide is proof the content can be anything.\r\n   </div>\r\n</div>', 'CSS TRICKS DIAPOSITIVAS AUTOMÁTICAS', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2017-07-03 02:15:28', '2017-07-03 02:15:28', '', 94, 'http://localhost/wordpress/?p=95', 0, 'revision', '', 0),
(96, 1, '2017-07-03 02:19:25', '2017-07-03 02:19:25', '<div id="slideshow">\r\n   <div>\r\n     <img src="//farm6.static.flickr.com/5224/5658667829_2bb7d42a9c_m.jpg">\r\n   </div>\r\n   <div>\r\n     <img src="//farm6.static.flickr.com/5230/5638093881_a791e4f819_m.jpg">\r\n   </div>\r\n   <div>\r\n     Pretty cool eh? This slide is proof the content can be anything.\r\n   </div>\r\n</div>', 'CSS TRICKS DIAPOSITIVAS AUTOMÁTICAS', '', 'inherit', 'closed', 'closed', '', '94-autosave-v1', '', '', '2017-07-03 02:19:25', '2017-07-03 02:19:25', '', 94, 'http://localhost/wordpress/?p=96', 0, 'revision', '', 0),
(97, 1, '2017-07-03 20:16:03', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-07-03 20:16:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=97', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bd_termmeta`
--

CREATE TABLE IF NOT EXISTS `bd_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bd_terms`
--

CREATE TABLE IF NOT EXISTS `bd_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `bd_terms`
--

INSERT INTO `bd_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Menú superior', 'menu-superior', 0),
(3, 'Menú de enlaces sociales', 'menu-de-enlaces-sociales', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bd_term_relationships`
--

CREATE TABLE IF NOT EXISTS `bd_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bd_term_relationships`
--

INSERT INTO `bd_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(26, 3, 0),
(27, 3, 0),
(28, 3, 0),
(29, 3, 0),
(30, 3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bd_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `bd_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `bd_term_taxonomy`
--

INSERT INTO `bd_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bd_usermeta`
--

CREATE TABLE IF NOT EXISTS `bd_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `bd_usermeta`
--

INSERT INTO `bd_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'juandata'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'bd_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'bd_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '0'),
(15, 1, 'session_tokens', 'a:3:{s:64:"80ccca1428f67eb0c30c925ace05963513f0939c323bc8cb67110af7ece73f8f";a:4:{s:10:"expiration";i:1499995848;s:2:"ip";s:3:"::1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:54.0) Gecko/20100101 Firefox/54.0";s:5:"login";i:1498786248;}s:64:"e579e73bb815c67b17b810f35e800cff107a9a149422acd5225ad5ab6251ef1c";a:4:{s:10:"expiration";i:1499220839;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";s:5:"login";i:1499048039;}s:64:"5e014036d9211781f9bac7a73908c8feb183809d84aa2525b3cc75749fc8cfc4";a:4:{s:10:"expiration";i:1499285755;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";s:5:"login";i:1499112955;}}'),
(16, 1, 'bd_dashboard_quick_press_last_post_id', '97'),
(17, 1, 'bd_user-settings', 'libraryContent=browse&editor=html'),
(18, 1, 'bd_user-settings-time', '1498976652'),
(19, 1, 'closedpostboxes_slideshow', 'a:0:{}'),
(20, 1, 'metaboxhidden_slideshow', 'a:1:{i:3;s:7:"slugdiv";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bd_users`
--

CREATE TABLE IF NOT EXISTS `bd_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `bd_users`
--

INSERT INTO `bd_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'juandata', '$P$BYCsFJedLvtAlC1wkUcdhcbT8IYIFZ.', 'juandata', 'juandavidtabaresarce@gmail.com', '', '2017-06-25 07:09:39', '', 0, 'juandata');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
