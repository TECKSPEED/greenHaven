-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2018 at 11:08 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `greenhaven`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-11-13 23:48:29', '2017-11-13 23:48:29', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/greenhaven', 'yes'),
(2, 'home', 'http://localhost/greenhaven', 'yes'),
(3, 'blogname', 'Green Haven', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'eckkyle2@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:133:{s:10:"strains/?$";s:27:"index.php?post_type=strains";s:40:"strains/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=strains&feed=$matches[1]";s:35:"strains/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=strains&feed=$matches[1]";s:27:"strains/page/([0-9]{1,})/?$";s:45:"index.php?post_type=strains&paged=$matches[1]";s:12:"retailers/?$";s:29:"index.php?post_type=retailers";s:42:"retailers/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?post_type=retailers&feed=$matches[1]";s:37:"retailers/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?post_type=retailers&feed=$matches[1]";s:29:"retailers/page/([0-9]{1,})/?$";s:47:"index.php?post_type=retailers&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:35:"strains/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"strains/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"strains/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"strains/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"strains/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"strains/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"strains/([^/]+)/embed/?$";s:40:"index.php?strains=$matches[1]&embed=true";s:28:"strains/([^/]+)/trackback/?$";s:34:"index.php?strains=$matches[1]&tb=1";s:48:"strains/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?strains=$matches[1]&feed=$matches[2]";s:43:"strains/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?strains=$matches[1]&feed=$matches[2]";s:36:"strains/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?strains=$matches[1]&paged=$matches[2]";s:43:"strains/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?strains=$matches[1]&cpage=$matches[2]";s:32:"strains/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?strains=$matches[1]&page=$matches[2]";s:24:"strains/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"strains/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"strains/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"strains/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"strains/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"strains/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:37:"retailers/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"retailers/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"retailers/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"retailers/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"retailers/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"retailers/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"retailers/([^/]+)/embed/?$";s:42:"index.php?retailers=$matches[1]&embed=true";s:30:"retailers/([^/]+)/trackback/?$";s:36:"index.php?retailers=$matches[1]&tb=1";s:50:"retailers/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?retailers=$matches[1]&feed=$matches[2]";s:45:"retailers/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?retailers=$matches[1]&feed=$matches[2]";s:38:"retailers/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?retailers=$matches[1]&paged=$matches[2]";s:45:"retailers/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?retailers=$matches[1]&cpage=$matches[2]";s:34:"retailers/([^/]+)(?:/([0-9]+))?/?$";s:48:"index.php?retailers=$matches[1]&page=$matches[2]";s:26:"retailers/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"retailers/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"retailers/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"retailers/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"retailers/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"retailers/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=4&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:41:"featured-galleries/featured-galleries.php";i:2;s:33:"instagram-feed/instagram-feed.php";i:3;s:19:"jetpack/jetpack.php";i:4;s:38:"post-duplicator/m4c-postduplicator.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'greenhaven', 'yes'),
(41, 'stylesheet', 'greenhaven', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:45:"woocommerce-services/woocommerce-services.php";a:2:{i:0;s:17:"WC_Connect_Loader";i:1;s:16:"plugin_uninstall";}s:33:"instagram-feed/instagram-feed.php";s:22:"sb_instagram_uninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '4', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:131:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:109:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'cron', 'a:6:{i:1515360786;a:1:{s:20:"jetpack_clean_nonces";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1515368909;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1515368941;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1515369748;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1515377379;a:1:{s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(109, 'nonce_key', 'Ve4EU(LDdNyp`;3W@FDfw^mtGnU_.~/Kk1D$<9/H1Mm@~|zdkV1>i;U~j#$`;7D>', 'no'),
(110, 'nonce_salt', 'R#IDqTro?m$qaCwi*W|t%RwvFr0-BkFwi<beC!z2.3`9e.&onC/!ZelQ9qCrz%%%', 'no'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1510617225;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(122, 'auth_key', 'sx:5Xd&#CX e[Lb#E>P`O7bD[S`|x#ev>K,OG4UFU~3nY2%]+)+A!?7BedrJj9GX', 'no'),
(158, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:18:"eckkyle2@gmail.com";s:7:"version";s:5:"4.8.4";s:9:"timestamp";i:1512700482;}', 'no'),
(123, 'auth_salt', 'vMO9BNHiZ!qbt)nKW#JctEd$q423!t,R`0#xOj<%4PgDW:qPF<e-}4PBF;:+.{r9', 'no'),
(190, 'acf_version', '4.4.12', 'yes'),
(145, 'current_theme', 'KLR', 'yes'),
(146, 'theme_mods_greenhaven', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:5:{s:7:"primary";i:2;s:7:"utility";i:3;s:15:"footer-column-1";i:27;s:15:"footer-column-2";i:28;s:15:"footer-column-3";i:29;}}', 'yes'),
(147, 'theme_switched', '', 'yes'),
(124, 'logged_in_key', 'Yo&Tr){&I__*Knrm>q,r)7$}MJ{Wh9^-t4HebA|{r~e<hsrb$eER`$s}pU-uncL:', 'no'),
(125, 'logged_in_salt', 'X<yIXWs+QBx=Y9bTL;a%RbxZyGbX4T qeTd,CYHEiCCGlQ(`%hAZJa+3eL41|]jy', 'no'),
(131, 'can_compress_scripts', '1', 'no'),
(218, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(807, 'category_children', 'a:0:{}', 'yes'),
(144, 'recently_activated', 'a:1:{s:39:"wp-product-review/wp-product-review.php";i:1515008155;}', 'yes'),
(348, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(194, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.1";s:7:"version";s:5:"4.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1515355514;s:15:"version_checked";s:5:"4.9.1";s:12:"translations";a:0:{}}', 'no'),
(342, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(343, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(344, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(345, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(346, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(347, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(896, 'widget_cwp_latest_products_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(897, 'widget_cwp_top_products_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(898, 'wp_product_review_install', '1515008055', 'yes'),
(899, '_transient_timeout_wp_product_review_331versions', '1517600055', 'no'),
(900, '_transient_wp_product_review_331versions', 'a:35:{i:0;a:2:{s:7:"version";s:3:"1.1";s:3:"url";s:64:"https://downloads.wordpress.org/plugin/wp-product-review.1.1.zip";}i:1;a:2:{s:7:"version";s:5:"2.2.4";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.2.2.4.zip";}i:2;a:2:{s:7:"version";s:5:"2.2.7";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.2.2.7.zip";}i:3;a:2:{s:7:"version";s:5:"2.4.7";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.2.4.7.zip";}i:4;a:2:{s:7:"version";s:5:"2.6.9";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.2.6.9.zip";}i:5;a:2:{s:7:"version";s:5:"2.7.2";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.2.7.2.zip";}i:6;a:2:{s:7:"version";s:5:"2.8.0";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.2.8.0.zip";}i:7;a:2:{s:7:"version";s:5:"2.8.1";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.2.8.1.zip";}i:8;a:2:{s:7:"version";s:5:"2.8.7";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.2.8.7.zip";}i:9;a:2:{s:7:"version";s:5:"2.9.0";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.2.9.0.zip";}i:10;a:2:{s:7:"version";s:5:"2.9.1";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.2.9.1.zip";}i:11;a:2:{s:7:"version";s:5:"2.9.2";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.2.9.2.zip";}i:12;a:2:{s:7:"version";s:5:"2.9.3";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.2.9.3.zip";}i:13;a:2:{s:7:"version";s:5:"2.9.5";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.2.9.5.zip";}i:14;a:2:{s:7:"version";s:5:"2.9.6";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.2.9.6.zip";}i:15;a:2:{s:7:"version";s:5:"2.9.7";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.2.9.7.zip";}i:16;a:2:{s:7:"version";s:5:"2.9.8";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.2.9.8.zip";}i:17;a:2:{s:7:"version";s:5:"3.0.0";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.3.0.0.zip";}i:18;a:2:{s:7:"version";s:5:"3.0.1";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.3.0.1.zip";}i:19;a:2:{s:7:"version";s:6:"3.0.10";s:3:"url";s:67:"https://downloads.wordpress.org/plugin/wp-product-review.3.0.10.zip";}i:20;a:2:{s:7:"version";s:6:"3.0.11";s:3:"url";s:67:"https://downloads.wordpress.org/plugin/wp-product-review.3.0.11.zip";}i:21;a:2:{s:7:"version";s:6:"3.0.12";s:3:"url";s:67:"https://downloads.wordpress.org/plugin/wp-product-review.3.0.12.zip";}i:22;a:2:{s:7:"version";s:5:"3.0.2";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.3.0.2.zip";}i:23;a:2:{s:7:"version";s:5:"3.0.3";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.3.0.3.zip";}i:24;a:2:{s:7:"version";s:5:"3.0.4";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.3.0.4.zip";}i:25;a:2:{s:7:"version";s:5:"3.0.5";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.3.0.5.zip";}i:26;a:2:{s:7:"version";s:5:"3.0.6";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.3.0.6.zip";}i:27;a:2:{s:7:"version";s:5:"3.0.7";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.3.0.7.zip";}i:28;a:2:{s:7:"version";s:5:"3.0.8";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.3.0.8.zip";}i:29;a:2:{s:7:"version";s:5:"3.0.9";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.3.0.9.zip";}i:30;a:2:{s:7:"version";s:5:"3.1.0";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.3.1.0.zip";}i:31;a:2:{s:7:"version";s:5:"3.2.0";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.3.2.0.zip";}i:32;a:2:{s:7:"version";s:5:"3.2.1";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.3.2.1.zip";}i:33;a:2:{s:7:"version";s:5:"3.3.0";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.3.3.0.zip";}i:34;a:2:{s:7:"version";s:5:"3.3.1";s:3:"url";s:66:"https://downloads.wordpress.org/plugin/wp-product-review.3.3.1.zip";}}', 'no'),
(740, 'sbi_rating_notice', 'pending', 'yes'),
(741, 'sb_instagram_settings', 'a:31:{s:15:"sb_instagram_at";s:50:"193669746.3a81a9f.82c67e526c924398ab43f1ade4b7c5e9";s:20:"sb_instagram_user_id";s:9:"193669746";s:30:"sb_instagram_preserve_settings";s:0:"";s:23:"sb_instagram_ajax_theme";s:0:"";s:18:"sb_instagram_width";i:100;s:23:"sb_instagram_width_unit";s:1:"%";s:28:"sb_instagram_feed_width_resp";s:0:"";s:19:"sb_instagram_height";i:200;s:16:"sb_instagram_num";i:20;s:24:"sb_instagram_height_unit";s:2:"px";s:17:"sb_instagram_cols";s:1:"4";s:27:"sb_instagram_disable_mobile";s:0:"";s:26:"sb_instagram_image_padding";i:5;s:31:"sb_instagram_image_padding_unit";s:2:"px";s:17:"sb_instagram_sort";s:4:"none";s:23:"sb_instagram_background";s:7:"#ffffff";s:21:"sb_instagram_show_btn";s:2:"on";s:27:"sb_instagram_btn_background";s:0:"";s:27:"sb_instagram_btn_text_color";s:0:"";s:21:"sb_instagram_btn_text";s:12:"Load More...";s:22:"sb_instagram_image_res";s:4:"auto";s:24:"sb_instagram_show_header";s:2:"on";s:25:"sb_instagram_header_color";s:0:"";s:28:"sb_instagram_show_follow_btn";s:2:"on";s:33:"sb_instagram_folow_btn_background";s:0:"";s:34:"sb_instagram_follow_btn_text_color";s:0:"";s:28:"sb_instagram_follow_btn_text";s:19:"Follow on Instagram";s:23:"sb_instagram_custom_css";s:0:"";s:22:"sb_instagram_custom_js";s:0:"";s:28:"sb_instagram_disable_awesome";s:0:"";s:21:"sb_instagram_show_bio";s:2:"on";}', 'yes'),
(349, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(350, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(351, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(352, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(353, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(354, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(355, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(357, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:8:"approved";s:1:"1";s:14:"total_comments";i:1;s:3:"all";i:1;s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(421, '_transient_product-transient-version', '1513388276', 'yes'),
(426, 'product_cat_children', 'a:2:{i:17;a:2:{i:0;i:18;i:1;i:19;}i:21;a:2:{i:0;i:22;i:1;i:23;}}', 'yes'),
(454, '_transient_timeout_wc_product_children_42', '1515980282', 'no'),
(241, 'woocommerce_store_address', '1311 STATE ROUTE 530 NE', 'yes'),
(242, 'woocommerce_store_address_2', '', 'yes'),
(243, 'woocommerce_store_city', 'Darrington', 'yes'),
(244, 'woocommerce_default_country', 'US:WA', 'yes'),
(245, 'woocommerce_store_postcode', '98241-9782', 'yes'),
(246, 'woocommerce_allowed_countries', 'all', 'yes'),
(247, 'woocommerce_all_except_countries', '', 'yes'),
(248, 'woocommerce_specific_allowed_countries', '', 'yes'),
(249, 'woocommerce_ship_to_countries', '', 'yes'),
(250, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(251, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(252, 'woocommerce_calc_taxes', 'yes', 'yes'),
(253, 'woocommerce_demo_store', 'no', 'yes'),
(254, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(255, 'woocommerce_currency', 'USD', 'yes'),
(256, 'woocommerce_currency_pos', 'left', 'yes'),
(192, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(397, 'jetpack_activated', '1', 'yes'),
(400, 'jetpack_activation_source', 'a:2:{i:0;s:7:"unknown";i:1;N;}', 'yes'),
(401, 'jetpack_sync_settings_disable', '0', 'yes'),
(402, '_transient_timeout_jetpack_file_data_5.6.1', '1515893586', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(403, '_transient_jetpack_file_data_5.6.1', 'a:57:{s:32:"31e5b9ae08b62c2b0cd8a7792242298b";a:14:{s:4:"name";s:20:"Spelling and Grammar";s:11:"description";s:39:"Check your spelling, style, and grammar";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"6";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:115:"after the deadline, afterthedeadline, spell, spellchecker, spelling, grammar, proofreading, style, language, cliche";}s:32:"3f41b2d629265b5de8108b463abbe8e2";a:14:{s:4:"name";s:8:"Carousel";s:11:"description";s:75:"Display images and galleries in a gorgeous, full-screen browsing experience";s:14:"jumpstart_desc";s:79:"Brings your photos and images to life as full-size, easily navigable galleries.";s:4:"sort";s:2:"22";s:20:"recommendation_order";s:2:"12";s:10:"introduced";s:3:"1.5";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:17:"Photos and Videos";s:7:"feature";s:21:"Appearance, Jumpstart";s:25:"additional_search_queries";s:80:"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image";}s:32:"e1c539d5b392f5a1709dada3da5793cc";a:14:{s:4:"name";s:13:"Comment Likes";s:11:"description";s:64:"Increase visitor engagement by adding a Like button to comments.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"39";s:20:"recommendation_order";s:2:"17";s:10:"introduced";s:3:"5.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:6:"Social";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:37:"like widget, like button, like, likes";}s:32:"c6ebb418dde302de09600a6025370583";a:14:{s:4:"name";s:8:"Comments";s:11:"description";s:80:"Let readers use WordPress.com, Twitter, Facebook, or Google+ accounts to comment";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"20";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:6:"Social";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:53:"comments, comment, facebook, twitter, google+, social";}s:32:"836f9485669e1bbb02920cb474730df0";a:14:{s:4:"name";s:12:"Contact Form";s:11:"description";s:57:"Insert a customizable contact form anywhere on your site.";s:14:"jumpstart_desc";s:111:"Adds a button to your post and page editors, allowing you to build simple forms to help visitors stay in touch.";s:4:"sort";s:2:"15";s:20:"recommendation_order";s:2:"14";s:10:"introduced";s:3:"1.3";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:5:"Other";s:7:"feature";s:18:"Writing, Jumpstart";s:25:"additional_search_queries";s:44:"contact, form, grunion, feedback, submission";}s:32:"ea3970eebf8aac55fc3eca5dca0e0157";a:14:{s:4:"name";s:20:"Custom content types";s:11:"description";s:74:"Display different types of content on your site with custom content types.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"34";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"3.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:72:"cpt, custom post types, portfolio, portfolios, testimonial, testimonials";}s:32:"d2bb05ccad3d8789df40ca3abb97336c";a:14:{s:4:"name";s:10:"Custom CSS";s:11:"description";s:53:"Tweak your site’s CSS without modifying your theme.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"2";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.7";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:10:"Appearance";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:108:"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet";}s:32:"a2064eec5b9c7e0d816af71dee7a715f";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"53a4ec755022ef3953699734c343da02";a:14:{s:4:"name";s:21:"Enhanced Distribution";s:11:"description";s:27:"Increase reach and traffic.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"5";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:6:"Public";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:54:"google, seo, firehose, search, broadcast, broadcasting";}s:32:"e1f1f6e3689fc31c477e64b06e2f8fbf";a:14:{s:4:"name";s:16:"Google Analytics";s:11:"description";s:56:"Set up Google Analytics without touching a line of code.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"37";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"4.5";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:0:"";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:37:"webmaster, google, analytics, console";}s:32:"72fecb67ee6704ba0a33e0225316ad06";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"d56e2886185a9eace719cc57d46770df";a:14:{s:4:"name";s:19:"Gravatar Hovercards";s:11:"description";s:58:"Enable pop-up business cards over commenters’ Gravatars.";s:14:"jumpstart_desc";s:131:"Let commenters link their profiles to their Gravatar accounts, making it easy for your visitors to learn more about your community.";s:4:"sort";s:2:"11";s:20:"recommendation_order";s:2:"13";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:18:"Social, Appearance";s:7:"feature";s:21:"Appearance, Jumpstart";s:25:"additional_search_queries";s:20:"gravatar, hovercards";}s:32:"e391e760617bd0e0736550e34a73d7fe";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:8:"2.0.3 ??";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"2e345370766346c616b3c5046e817720";a:14:{s:4:"name";s:15:"Infinite Scroll";s:11:"description";s:53:"Automatically load new content when a visitor scrolls";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"26";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:10:"Appearance";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:33:"scroll, infinite, infinite scroll";}s:32:"bd69edbf134de5fae8fdcf2e70a45b56";a:14:{s:4:"name";s:8:"JSON API";s:11:"description";s:51:"Allow applications to securely access your content.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"19";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:6:"Public";s:11:"module_tags";s:19:"Writing, Developers";s:7:"feature";s:7:"General";s:25:"additional_search_queries";s:50:"api, rest, develop, developers, json, klout, oauth";}s:32:"8110b7a4423aaa619dfa46b8843e10d1";a:14:{s:4:"name";s:14:"Beautiful Math";s:11:"description";s:57:"Use LaTeX markup for complex equations and other geekery.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"12";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:47:"latex, math, equation, equations, formula, code";}s:32:"f868c97c313f21b23fa6d6c64505fab6";a:14:{s:4:"name";s:11:"Lazy Images";s:11:"description";s:71:"Improve performance by loading images just before they scroll into view";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"24";s:20:"recommendation_order";s:2:"14";s:10:"introduced";s:5:"5.6.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:23:"Appearance, Recommended";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:26:"mobile, theme, performance";}s:32:"fd7e85d3b4887fa6b6f997d6592c1f33";a:14:{s:4:"name";s:5:"Likes";s:11:"description";s:63:"Give visitors an easy way to show they appreciate your content.";s:14:"jumpstart_desc";s:63:"Give visitors an easy way to show they appreciate your content.";s:4:"sort";s:2:"23";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:6:"Social";s:7:"feature";s:21:"Engagement, Jumpstart";s:25:"additional_search_queries";s:26:"like, likes, wordpress.com";}s:32:"c5dfef41fad5bcdcaae8e315e5cfc420";a:14:{s:4:"name";s:6:"Manage";s:11:"description";s:54:"Manage all of your sites from a centralized dashboard.";s:14:"jumpstart_desc";s:151:"Helps you remotely manage plugins, turn on automated updates, and more from <a href="https://wordpress.com/plugins/" target="_blank">wordpress.com</a>.";s:4:"sort";s:1:"1";s:20:"recommendation_order";s:1:"3";s:10:"introduced";s:3:"3.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:35:"Centralized Management, Recommended";s:7:"feature";s:7:"General";s:25:"additional_search_queries";s:26:"manage, management, remote";}s:32:"fd6dc399b92bce76013427e3107c314f";a:14:{s:4:"name";s:8:"Markdown";s:11:"description";s:50:"Write posts or pages in plain-text Markdown syntax";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"31";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.8";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:12:"md, markdown";}s:32:"614679778a7db6d8129c9f69ac8e10a5";a:14:{s:4:"name";s:21:"WordPress.com Toolbar";s:11:"description";s:91:"Replaces the admin bar with a useful toolbar to quickly manage your site via WordPress.com.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"38";s:20:"recommendation_order";s:2:"16";s:10:"introduced";s:3:"4.8";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:7:"General";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:19:"adminbar, masterbar";}s:32:"c49a35b6482b0426cb07ad28ecf5d7df";a:14:{s:4:"name";s:12:"Mobile Theme";s:11:"description";s:31:"Enable the Jetpack Mobile theme";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"21";s:20:"recommendation_order";s:2:"11";s:10:"introduced";s:3:"1.8";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:31:"Appearance, Mobile, Recommended";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:24:"mobile, theme, minileven";}s:32:"b42e38f6fafd2e4104ebe5bf39b4be47";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"771cfeeba0d3d23ec344d5e781fb0ae2";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"54f0661d27c814fc8bde39580181d939";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"46c4c413b5c72bbd3c3dbd14ff8f8adc";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"9ea52fa25783e5ceeb6bfaed3268e64e";a:14:{s:4:"name";s:7:"Monitor";s:11:"description";s:61:"Receive immediate notifications if your site goes down, 24/7.";s:14:"jumpstart_desc";s:61:"Receive immediate notifications if your site goes down, 24/7.";s:4:"sort";s:2:"28";s:20:"recommendation_order";s:2:"10";s:10:"introduced";s:3:"2.6";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:11:"Recommended";s:7:"feature";s:19:"Security, Jumpstart";s:25:"additional_search_queries";s:37:"monitor, uptime, downtime, monitoring";}s:32:"cfcaafd0fcad087899d715e0b877474d";a:14:{s:4:"name";s:13:"Notifications";s:11:"description";s:57:"Receive instant notifications of site comments and likes.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"13";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:5:"Other";s:7:"feature";s:7:"General";s:25:"additional_search_queries";s:62:"notification, notifications, toolbar, adminbar, push, comments";}s:32:"0d18bfa69bec61550c1d813ce64149b0";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"3f0a11e23118f0788d424b646a6d465f";a:14:{s:4:"name";s:6:"Photon";s:11:"description";s:26:"Speed up images and photos";s:14:"jumpstart_desc";s:141:"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.";s:4:"sort";s:2:"25";s:20:"recommendation_order";s:1:"1";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:42:"Photos and Videos, Appearance, Recommended";s:7:"feature";s:34:"Recommended, Jumpstart, Appearance";s:25:"additional_search_queries";s:38:"photon, image, cdn, performance, speed";}s:32:"e37cfbcb72323fb1fe8255a2edb4d738";a:14:{s:4:"name";s:13:"Post by email";s:11:"description";s:33:"Publish posts by sending an email";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"14";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:20:"post by email, email";}s:32:"728290d131a480bfe7b9e405d7cd925f";a:14:{s:4:"name";s:7:"Protect";s:11:"description";s:41:"Block suspicious-looking sign in activity";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"1";s:20:"recommendation_order";s:1:"4";s:10:"introduced";s:3:"3.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:11:"Recommended";s:7:"feature";s:8:"Security";s:25:"additional_search_queries";s:65:"security, secure, protection, botnet, brute force, protect, login";}s:32:"f9ce784babbbf4dcca99b8cd2ceb420c";a:14:{s:4:"name";s:9:"Publicize";s:11:"description";s:27:"Automated social marketing.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"10";s:20:"recommendation_order";s:1:"7";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:19:"Social, Recommended";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:107:"facebook, twitter, google+, googleplus, google, path, tumblr, linkedin, social, tweet, connections, sharing";}s:32:"83622cd43b5e31bb82e59a9d52e9bb10";a:14:{s:4:"name";s:20:"Progressive Web Apps";s:11:"description";s:85:"Speed up and improve the reliability of your site using the latest in web technology.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"38";s:20:"recommendation_order";s:2:"18";s:10:"introduced";s:5:"5.6.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:10:"Developers";s:7:"feature";s:7:"Traffic";s:25:"additional_search_queries";s:26:"manifest, pwa, progressive";}s:32:"052c03877dd3d296a71531cb07ad939a";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"52edecb2a75222e75b2dce4356a4efce";a:14:{s:4:"name";s:13:"Related posts";s:11:"description";s:64:"Increase page views by showing related content to your visitors.";s:14:"jumpstart_desc";s:113:"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.";s:4:"sort";s:2:"29";s:20:"recommendation_order";s:1:"9";s:10:"introduced";s:3:"2.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:11:"Recommended";s:7:"feature";s:21:"Engagement, Jumpstart";s:25:"additional_search_queries";s:22:"related, related posts";}s:32:"fe7a38addc9275dcbe6c4ff6c44a9350";a:14:{s:4:"name";s:6:"Search";s:11:"description";s:41:"Enhanced search, powered by Elasticsearch";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"5.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:5:"false";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:0:"";s:7:"feature";s:6:"Search";s:25:"additional_search_queries";s:6:"search";}s:32:"68b0d01689803c0ea7e4e60a86de2519";a:14:{s:4:"name";s:9:"SEO Tools";s:11:"description";s:50:"Better results on search engines and social media.";s:14:"jumpstart_desc";s:50:"Better results on search engines and social media.";s:4:"sort";s:2:"35";s:20:"recommendation_order";s:2:"15";s:10:"introduced";s:3:"4.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:18:"Social, Appearance";s:7:"feature";s:18:"Traffic, Jumpstart";s:25:"additional_search_queries";s:81:"search engine optimization, social preview, meta description, custom title format";}s:32:"8b059cb50a66b717f1ec842e736b858c";a:14:{s:4:"name";s:7:"Sharing";s:11:"description";s:37:"Allow visitors to share your content.";s:14:"jumpstart_desc";s:116:"Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.";s:4:"sort";s:1:"7";s:20:"recommendation_order";s:1:"6";s:10:"introduced";s:3:"1.1";s:7:"changed";s:3:"1.2";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:19:"Social, Recommended";s:7:"feature";s:21:"Engagement, Jumpstart";s:25:"additional_search_queries";s:141:"share, sharing, sharedaddy, buttons, icons, email, facebook, twitter, google+, linkedin, pinterest, pocket, press this, print, reddit, tumblr";}s:32:"a6d2394329871857401255533a9873f7";a:14:{s:4:"name";s:16:"Shortcode Embeds";s:11:"description";s:50:"Embed media from popular sites without any coding.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"3";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:3:"1.2";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:46:"Photos and Videos, Social, Writing, Appearance";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:236:"shortcodes, shortcode, embeds, media, bandcamp, dailymotion, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube";}s:32:"21496e2897ea5f81605e2f2ac3beb921";a:14:{s:4:"name";s:16:"WP.me Shortlinks";s:11:"description";s:54:"Create short and simple links for all posts and pages.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"8";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:6:"Social";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:17:"shortlinks, wp.me";}s:32:"e2a54a5d7879a4162709e6ffb540dd08";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"f5c537bc304f55b29c1a87e30be0cd24";a:14:{s:4:"name";s:8:"Sitemaps";s:11:"description";s:50:"Make it easy for search engines to find your site.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"13";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"3.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:6:"Public";s:11:"module_tags";s:20:"Recommended, Traffic";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:39:"sitemap, traffic, search, site map, seo";}s:32:"59a23643437358a9b557f1d1e20ab040";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"6a90f97c3194cfca5671728eaaeaf15e";a:14:{s:4:"name";s:14:"Single Sign On";s:11:"description";s:62:"Allow users to log into this site using WordPress.com accounts";s:14:"jumpstart_desc";s:98:"Lets you log in to all your Jetpack-enabled sites with one click using your WordPress.com account.";s:4:"sort";s:2:"30";s:20:"recommendation_order";s:1:"5";s:10:"introduced";s:3:"2.6";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:10:"Developers";s:7:"feature";s:19:"Security, Jumpstart";s:25:"additional_search_queries";s:34:"sso, single sign on, login, log in";}s:32:"b65604e920392e2f7134b646760b75e8";a:14:{s:4:"name";s:10:"Site Stats";s:11:"description";s:44:"Collect valuable traffic stats and insights.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"1";s:20:"recommendation_order";s:1:"2";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:23:"Site Stats, Recommended";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:54:"statistics, tracking, analytics, views, traffic, stats";}s:32:"23a586dd7ead00e69ec53eb32ef740e4";a:14:{s:4:"name";s:13:"Subscriptions";s:11:"description";s:87:"Allow users to subscribe to your posts and comments and receive notifications via email";s:14:"jumpstart_desc";s:126:"Give visitors two easy subscription options — while commenting, or via a separate email subscription widget you can display.";s:4:"sort";s:1:"9";s:20:"recommendation_order";s:1:"8";s:10:"introduced";s:3:"1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:6:"Social";s:7:"feature";s:21:"Engagement, Jumpstart";s:25:"additional_search_queries";s:74:"subscriptions, subscription, email, follow, followers, subscribers, signup";}s:32:"1d978b8d84d2f378fe1a702a67633b6d";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"b3b983461d7f3d27322a3551ed8a9405";a:14:{s:4:"name";s:15:"Tiled Galleries";s:11:"description";s:61:"Display image galleries in a variety of elegant arrangements.";s:14:"jumpstart_desc";s:61:"Display image galleries in a variety of elegant arrangements.";s:4:"sort";s:2:"24";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:17:"Photos and Videos";s:7:"feature";s:21:"Appearance, Jumpstart";s:25:"additional_search_queries";s:43:"gallery, tiles, tiled, grid, mosaic, images";}s:32:"d924e5b05722b0e104448543598f54c0";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"36741583b10c521997e563ad8e1e8b77";a:14:{s:4:"name";s:12:"Data Backups";s:11:"description";s:54:"Off-site backups, security scans, and automatic fixes.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"32";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:5:"0:1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:5:"false";s:4:"free";s:5:"false";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:0:"";s:7:"feature";s:16:"Security, Health";s:25:"additional_search_queries";s:28:"vaultpress, backup, security";}s:32:"2b9b44f09b5459617d68dd82ee17002a";a:14:{s:4:"name";s:17:"Site verification";s:11:"description";s:58:"Establish your site\'s authenticity with external services.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"33";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"3.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:0:"";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:56:"webmaster, seo, google, bing, pinterest, search, console";}s:32:"5ab4c0db7c42e10e646342da0274c491";a:14:{s:4:"name";s:10:"VideoPress";s:11:"description";s:27:"Fast, ad-free video hosting";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"27";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.5";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:5:"false";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:17:"Photos and Videos";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:25:"video, videos, videopress";}s:32:"60a1d3aa38bc0fe1039e59dd60888543";a:14:{s:4:"name";s:17:"Widget Visibility";s:11:"description";s:42:"Control where widgets appear on your site.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"17";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:10:"Appearance";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:54:"widget visibility, logic, conditional, widgets, widget";}s:32:"174ed3416476c2cb9ff5b0f671280b15";a:14:{s:4:"name";s:21:"Extra Sidebar Widgets";s:11:"description";s:54:"Add images, Twitter streams, and more to your sidebar.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"4";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:18:"Social, Appearance";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:65:"widget, widgets, facebook, gallery, twitter, gravatar, image, rss";}s:32:"a668bc9418d6de87409f867892fcdd7f";a:14:{s:4:"name";s:3:"Ads";s:11:"description";s:60:"Earn income by allowing Jetpack to display high quality ads.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"1";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:5:"4.5.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:19:"Traffic, Appearance";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:26:"advertising, ad codes, ads";}s:32:"28b931a1db19bd24869bd54b14e733d5";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}}', 'no'),
(257, 'woocommerce_price_thousand_sep', ',', 'yes'),
(258, 'woocommerce_price_decimal_sep', '.', 'yes'),
(259, 'woocommerce_price_num_decimals', '2', 'yes'),
(260, 'woocommerce_weight_unit', 'oz', 'yes'),
(261, 'woocommerce_dimension_unit', 'in', 'yes'),
(262, 'woocommerce_enable_reviews', 'yes', 'yes'),
(263, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(264, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(265, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(266, 'woocommerce_review_rating_required', 'yes', 'no'),
(267, 'woocommerce_shop_page_id', '27', 'yes'),
(268, 'woocommerce_shop_page_display', '', 'yes'),
(269, 'woocommerce_category_archive_display', '', 'yes'),
(270, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(271, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(272, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(273, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(274, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(275, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(276, 'woocommerce_manage_stock', 'yes', 'yes'),
(277, 'woocommerce_hold_stock_minutes', '60', 'no'),
(278, 'woocommerce_notify_low_stock', 'yes', 'no'),
(279, 'woocommerce_notify_no_stock', 'yes', 'no'),
(280, 'woocommerce_stock_email_recipient', 'eckkyle2@gmail.com', 'no'),
(281, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(282, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(283, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(284, 'woocommerce_stock_format', '', 'yes'),
(285, 'woocommerce_file_download_method', 'force', 'no'),
(286, 'woocommerce_downloads_require_login', 'no', 'no'),
(287, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(288, 'woocommerce_prices_include_tax', 'no', 'yes'),
(289, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(290, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(291, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(292, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(293, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(294, 'woocommerce_tax_display_cart', 'excl', 'no'),
(295, 'woocommerce_price_display_suffix', '', 'yes'),
(296, 'woocommerce_tax_total_display', 'itemized', 'no'),
(297, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(298, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(299, 'woocommerce_ship_to_destination', 'billing', 'no'),
(300, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(301, 'woocommerce_enable_coupons', 'yes', 'yes'),
(302, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(303, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(304, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(305, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(306, 'woocommerce_cart_page_id', '28', 'yes'),
(307, 'woocommerce_checkout_page_id', '29', 'yes'),
(308, 'woocommerce_terms_page_id', '', 'no'),
(309, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(310, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(311, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(312, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(313, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(314, 'woocommerce_myaccount_page_id', '30', 'yes'),
(315, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(316, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(317, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(318, 'woocommerce_registration_generate_username', 'yes', 'no'),
(319, 'woocommerce_registration_generate_password', 'no', 'no'),
(320, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(321, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(322, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(323, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(324, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(325, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(326, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(327, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(328, 'woocommerce_email_from_name', 'Green Haven', 'no'),
(329, 'woocommerce_email_from_address', 'eckkyle2@gmail.com', 'no'),
(330, 'woocommerce_email_header_image', '', 'no'),
(331, 'woocommerce_email_footer_text', 'Green Haven', 'no'),
(332, 'woocommerce_email_base_color', '#96588a', 'no'),
(333, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(334, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(335, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(336, 'woocommerce_api_enabled', 'yes', 'yes'),
(429, '_transient_wc_attribute_taxonomies', 'a:1:{i:0;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"1";s:14:"attribute_name";s:5:"color";s:15:"attribute_label";s:5:"Color";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}}', 'yes'),
(358, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(340, 'woocommerce_version', '3.2.6', 'yes'),
(341, 'woocommerce_db_version', '3.2.6', 'yes'),
(383, 'woocommerce_product_type', 'both', 'yes'),
(384, 'woocommerce_allow_tracking', 'yes', 'yes'),
(385, 'woocommerce_tracker_last_send', '1513387918', 'yes'),
(386, 'woocommerce_stripe_settings', 'a:3:{s:7:"enabled";s:2:"no";s:14:"create_account";b:0;s:5:"email";b:0;}', 'yes'),
(387, 'woocommerce_braintree_paypal_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(388, 'woocommerce_paypal_settings', 'a:2:{s:7:"enabled";s:2:"no";s:5:"email";b:0;}', 'yes'),
(389, 'woocommerce_setup_automated_taxes', '1', 'yes'),
(392, '_transient_shipping-transient-version', '1513387967', 'yes'),
(393, '_transient_timeout_wc_shipping_method_count_0_1513387967', '1515979967', 'no'),
(394, '_transient_wc_shipping_method_count_0_1513387967', '0', 'no'),
(404, 'jetpack_available_modules', 'a:1:{s:5:"5.6.1";a:43:{s:18:"after-the-deadline";s:3:"1.1";s:8:"carousel";s:3:"1.5";s:13:"comment-likes";s:3:"5.1";s:8:"comments";s:3:"1.4";s:12:"contact-form";s:3:"1.3";s:20:"custom-content-types";s:3:"3.1";s:10:"custom-css";s:3:"1.7";s:21:"enhanced-distribution";s:3:"1.2";s:16:"google-analytics";s:3:"4.5";s:19:"gravatar-hovercards";s:3:"1.1";s:15:"infinite-scroll";s:3:"2.0";s:8:"json-api";s:3:"1.9";s:5:"latex";s:3:"1.1";s:11:"lazy-images";s:5:"5.6.0";s:5:"likes";s:3:"2.2";s:6:"manage";s:3:"3.4";s:8:"markdown";s:3:"2.8";s:9:"masterbar";s:3:"4.8";s:9:"minileven";s:3:"1.8";s:7:"monitor";s:3:"2.6";s:5:"notes";s:3:"1.9";s:6:"photon";s:3:"2.0";s:13:"post-by-email";s:3:"2.0";s:7:"protect";s:3:"3.4";s:9:"publicize";s:3:"2.0";s:3:"pwa";s:5:"5.6.0";s:13:"related-posts";s:3:"2.9";s:6:"search";s:3:"5.0";s:9:"seo-tools";s:3:"4.4";s:10:"sharedaddy";s:3:"1.1";s:10:"shortcodes";s:3:"1.1";s:10:"shortlinks";s:3:"1.1";s:8:"sitemaps";s:3:"3.9";s:3:"sso";s:3:"2.6";s:5:"stats";s:3:"1.1";s:13:"subscriptions";s:3:"1.2";s:13:"tiled-gallery";s:3:"2.1";s:10:"vaultpress";s:5:"0:1.2";s:18:"verification-tools";s:3:"3.0";s:10:"videopress";s:3:"2.5";s:17:"widget-visibility";s:3:"2.4";s:7:"widgets";s:3:"1.2";s:7:"wordads";s:5:"4.5.0";}}', 'yes'),
(405, 'jetpack_options', 'a:4:{s:7:"version";s:16:"5.6.1:1513387986";s:11:"old_version";s:16:"5.6.1:1513387986";s:28:"fallback_no_verify_ssl_certs";i:0;s:9:"time_diff";i:-1;}', 'yes'),
(407, 'jetpack_testimonial', '0', 'yes'),
(550, 'mtphr_post_duplicator_settings', '', 'yes'),
(413, 'do_activate', '0', 'yes'),
(456, '_transient_timeout_wc_var_prices_42', '1515980282', 'no'),
(420, '_transient_product_query-transient-version', '1513388276', 'yes'),
(460, '_transient_timeout_wc_var_prices_43', '1515980283', 'no'),
(455, '_transient_wc_product_children_42', 'a:2:{s:3:"all";a:2:{i:0;i:105;i:1;i:106;}s:7:"visible";a:2:{i:0;i:105;i:1;i:106;}}', 'no'),
(440, 'pa_color_children', 'a:0:{}', 'yes'),
(458, '_transient_timeout_wc_product_children_43', '1515980282', 'no'),
(459, '_transient_wc_product_children_43', 'a:2:{s:3:"all";a:2:{i:0;i:92;i:1;i:93;}s:7:"visible";a:2:{i:0;i:92;i:1;i:93;}}', 'no'),
(457, '_transient_wc_var_prices_42', '{"version":"1513388276","10f063612934b19b7e4d09a93e7e85e2":{"price":{"105":"20.00","106":"20.00"},"regular_price":{"105":"20.00","106":"20.00"},"sale_price":{"105":"20.00","106":"20.00"}},"9c8f89bb5b049b381356681bf57c29ed":{"price":{"105":"20.00","106":"20.00"},"regular_price":{"105":"20.00","106":"20.00"},"sale_price":{"105":"20.00","106":"20.00"}}}', 'no'),
(461, '_transient_wc_var_prices_43', '{"version":"1513388276","10f063612934b19b7e4d09a93e7e85e2":{"price":{"92":"30.00","93":"35.00"},"regular_price":{"92":"35.00","93":"35.00"},"sale_price":{"92":"30.00","93":"35.00"}}}', 'no'),
(923, '_site_transient_timeout_theme_roots', '1515357315', 'no'),
(924, '_site_transient_theme_roots', 'a:4:{s:10:"greenhaven";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(925, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1515355518;s:7:"checked";a:4:{s:10:"greenhaven";s:5:"1.0.0";s:13:"twentyfifteen";s:3:"1.8";s:15:"twentyseventeen";s:3:"1.3";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:3:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.9";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.9.zip";}s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"1.4";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.1.4.zip";}s:13:"twentysixteen";a:4:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"1.4";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentysixteen.1.4.zip";}}s:12:"translations";a:0:{}}', 'no'),
(895, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1515355517;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:5:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip";s:5:"icons";a:3:{s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:7:"default";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";}s:7:"banners";a:3:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";s:7:"default";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";}s:11:"banners_rtl";a:0:{}}s:41:"featured-galleries/featured-galleries.php";O:8:"stdClass":9:{s:2:"id";s:32:"w.org/plugins/featured-galleries";s:4:"slug";s:18:"featured-galleries";s:6:"plugin";s:41:"featured-galleries/featured-galleries.php";s:11:"new_version";s:5:"1.7.1";s:3:"url";s:49:"https://wordpress.org/plugins/featured-galleries/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/featured-galleries.1.7.1.zip";s:5:"icons";a:3:{s:2:"1x";s:71:"https://ps.w.org/featured-galleries/assets/icon-128x128.png?rev=1073825";s:2:"2x";s:71:"https://ps.w.org/featured-galleries/assets/icon-256x256.png?rev=1073825";s:7:"default";s:71:"https://ps.w.org/featured-galleries/assets/icon-256x256.png?rev=1073825";}s:7:"banners";a:3:{s:2:"2x";s:73:"https://ps.w.org/featured-galleries/assets/banner-1544x500.png?rev=865937";s:2:"1x";s:72:"https://ps.w.org/featured-galleries/assets/banner-772x250.png?rev=865937";s:7:"default";s:73:"https://ps.w.org/featured-galleries/assets/banner-1544x500.png?rev=865937";}s:11:"banners_rtl";a:0:{}}s:33:"instagram-feed/instagram-feed.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/instagram-feed";s:4:"slug";s:14:"instagram-feed";s:6:"plugin";s:33:"instagram-feed/instagram-feed.php";s:11:"new_version";s:5:"1.5.1";s:3:"url";s:45:"https://wordpress.org/plugins/instagram-feed/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/instagram-feed.1.5.1.zip";s:5:"icons";a:2:{s:2:"1x";s:66:"https://ps.w.org/instagram-feed/assets/icon-128x128.png?rev=991410";s:7:"default";s:66:"https://ps.w.org/instagram-feed/assets/icon-128x128.png?rev=991410";}s:7:"banners";a:2:{s:2:"1x";s:69:"https://ps.w.org/instagram-feed/assets/banner-772x250.png?rev=1624161";s:7:"default";s:69:"https://ps.w.org/instagram-feed/assets/banner-772x250.png?rev=1624161";}s:11:"banners_rtl";a:0:{}}s:19:"jetpack/jetpack.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/jetpack";s:4:"slug";s:7:"jetpack";s:6:"plugin";s:19:"jetpack/jetpack.php";s:11:"new_version";s:3:"5.7";s:3:"url";s:38:"https://wordpress.org/plugins/jetpack/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/jetpack.5.7.zip";s:5:"icons";a:4:{s:2:"1x";s:60:"https://ps.w.org/jetpack/assets/icon-128x128.png?rev=1791404";s:2:"2x";s:60:"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404";s:3:"svg";s:52:"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404";s:7:"default";s:52:"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404";}s:7:"banners";a:3:{s:2:"2x";s:63:"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404";s:2:"1x";s:62:"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404";s:7:"default";s:63:"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404";}s:11:"banners_rtl";a:0:{}}s:38:"post-duplicator/m4c-postduplicator.php";O:8:"stdClass":9:{s:2:"id";s:29:"w.org/plugins/post-duplicator";s:4:"slug";s:15:"post-duplicator";s:6:"plugin";s:38:"post-duplicator/m4c-postduplicator.php";s:11:"new_version";s:4:"2.20";s:3:"url";s:46:"https://wordpress.org/plugins/post-duplicator/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/post-duplicator.zip";s:5:"icons";a:2:{s:2:"1x";s:68:"https://ps.w.org/post-duplicator/assets/icon-128x128.png?rev=1587588";s:7:"default";s:68:"https://ps.w.org/post-duplicator/assets/icon-128x128.png?rev=1587588";}s:7:"banners";a:3:{s:2:"2x";s:71:"https://ps.w.org/post-duplicator/assets/banner-1544x500.png?rev=1587588";s:2:"1x";s:70:"https://ps.w.org/post-duplicator/assets/banner-772x250.png?rev=1587588";s:7:"default";s:71:"https://ps.w.org/post-duplicator/assets/banner-1544x500.png?rev=1587588";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1513716613:1'),
(4, 4, '_wp_page_template', 'page-home.php'),
(5, 7, '_wp_attached_file', '2017/11/la-ed-medical-marijuana-20170909.jpg'),
(6, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2048;s:6:"height";i:1152;s:4:"file";s:44:"2017/11/la-ed-medical-marijuana-20170909.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"la-ed-medical-marijuana-20170909-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"la-ed-medical-marijuana-20170909-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:44:"la-ed-medical-marijuana-20170909-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:45:"la-ed-medical-marijuana-20170909-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:44:"la-ed-medical-marijuana-20170909-250x141.jpg";s:5:"width";i:250;s:6:"height";i:141;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(7, 4, '_thumbnail_id', '7'),
(8, 4, 'mytheme_input_field', ''),
(9, 4, 'mytheme_checkbox_value', '0'),
(10, 4, 'mytheme_page_select', '2'),
(11, 4, 'mytheme_category_select', '1'),
(12, 13, '_edit_last', '1'),
(13, 13, '_edit_lock', '1514925165:1'),
(14, 13, '_wp_page_template', 'page-aboutus.php'),
(15, 15, '_menu_item_type', 'post_type'),
(16, 15, '_menu_item_menu_item_parent', '0'),
(17, 15, '_menu_item_object_id', '13'),
(18, 15, '_menu_item_object', 'page'),
(19, 15, '_menu_item_target', ''),
(20, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(21, 15, '_menu_item_xfn', ''),
(22, 15, '_menu_item_url', ''),
(1254, 119, 'field_5a37158133a12', 'a:14:{s:3:"key";s:19:"field_5a37158133a12";s:5:"label";s:19:"Callout Button Text";s:4:"name";s:19:"callout_button_text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(42, 13, '_thumbnail_id', '7'),
(43, 20, '_edit_last', '1'),
(44, 20, 'field_5a346f21f058e', 'a:14:{s:3:"key";s:19:"field_5a346f21f058e";s:5:"label";s:10:"Hero Title";s:4:"name";s:10:"hero_title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(45, 20, 'field_5a346f38f058f', 'a:13:{s:3:"key";s:19:"field_5a346f38f058f";s:5:"label";s:20:"Hero Supporting Text";s:4:"name";s:20:"hero_supporting_text";s:4:"type";s:8:"textarea";s:12:"instructions";s:43:"Place a small sentence about the page here ";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(1236, 20, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"page";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(47, 20, 'position', 'normal'),
(48, 20, 'layout', 'no_box'),
(49, 20, 'hide_on_screen', ''),
(50, 20, '_edit_lock', '1513389224:1'),
(52, 21, 'hero_title', 'About Us'),
(53, 21, '_hero_title', 'field_5a346f21f058e'),
(54, 21, 'hero_supporting_text', 'This is a small sentence about the current page'),
(55, 21, '_hero_supporting_text', 'field_5a346f38f058f'),
(56, 13, 'hero_title', 'About Us'),
(57, 13, '_hero_title', 'field_5a346f21f058e'),
(58, 13, 'hero_supporting_text', 'This is a small sentence about the current page'),
(59, 13, '_hero_supporting_text', 'field_5a346f38f058f'),
(61, 22, 'hero_title', 'Get to know Green Haven'),
(62, 22, '_hero_title', 'field_5a346f21f058e'),
(63, 22, 'hero_supporting_text', ''),
(64, 22, '_hero_supporting_text', 'field_5a346f38f058f'),
(65, 4, 'hero_title', 'Get to know Green Haven'),
(66, 4, '_hero_title', 'field_5a346f21f058e'),
(67, 4, 'hero_supporting_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. '),
(68, 4, '_hero_supporting_text', 'field_5a346f38f058f'),
(69, 23, 'hero_title', 'Get to know Green Haven'),
(70, 23, '_hero_title', 'field_5a346f21f058e'),
(71, 23, 'hero_supporting_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
(72, 23, '_hero_supporting_text', 'field_5a346f38f058f'),
(73, 24, 'hero_title', 'Get to know Green Haven'),
(74, 24, '_hero_title', 'field_5a346f21f058e'),
(75, 24, 'hero_supporting_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(76, 24, '_hero_supporting_text', 'field_5a346f38f058f'),
(1253, 119, 'field_5a37156433a11', 'a:11:{s:3:"key";s:19:"field_5a37156433a11";s:5:"label";s:11:"Button Link";s:4:"name";s:11:"button_link";s:4:"type";s:9:"page_link";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:9:"post_type";a:1:{i:0;s:4:"page";}s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(1252, 119, '_edit_last', '1'),
(83, 32, '_sku', 'WOO-SINGLE-1'),
(84, 32, '_regular_price', '3'),
(85, 32, '_sale_price', ''),
(86, 32, '_sale_price_dates_from', ''),
(87, 32, '_sale_price_dates_to', ''),
(88, 32, 'total_sales', '0'),
(77, 25, 'hero_title', 'Get to know Green Haven'),
(78, 25, '_hero_title', 'field_5a346f21f058e'),
(79, 25, 'hero_supporting_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. '),
(80, 25, '_hero_supporting_text', 'field_5a346f38f058f'),
(89, 32, '_tax_status', 'taxable'),
(90, 32, '_tax_class', ''),
(91, 32, '_manage_stock', 'no'),
(92, 32, '_backorders', 'no'),
(93, 32, '_sold_individually', 'no'),
(94, 32, '_weight', ''),
(95, 32, '_length', ''),
(96, 32, '_width', ''),
(97, 32, '_height', ''),
(98, 32, '_upsell_ids', 'a:0:{}'),
(99, 32, '_crosssell_ids', 'a:0:{}'),
(100, 32, '_purchase_note', ''),
(101, 32, '_default_attributes', 'a:0:{}'),
(102, 32, '_virtual', 'yes'),
(103, 32, '_downloadable', 'yes'),
(104, 32, '_product_image_gallery', '51'),
(105, 32, '_download_limit', '1'),
(106, 32, '_download_expiry', '1'),
(107, 32, '_stock', NULL),
(108, 32, '_stock_status', 'instock'),
(109, 32, '_wc_average_rating', '0'),
(110, 32, '_wc_rating_count', 'a:0:{}'),
(111, 32, '_wc_review_count', '0'),
(112, 32, '_downloadable_files', 'a:1:{s:32:"1f9c11f99ceba63d4403c03bd5391b11";a:4:{s:2:"id";s:32:"1f9c11f99ceba63d4403c03bd5391b11";s:4:"name";s:7:"Song #1";s:4:"file";s:64:"https://woocommerce.files.wordpress.com/2017/06/woo-single-1.ogg";s:13:"previous_hash";s:0:"";}}'),
(113, 32, '_product_attributes', 'a:0:{}'),
(114, 32, '_product_version', '3.2.6'),
(115, 32, '_price', '3'),
(116, 33, '_sku', 'WOO-SINGLE-2'),
(117, 33, '_regular_price', '3'),
(118, 33, '_sale_price', '2'),
(119, 33, '_sale_price_dates_from', ''),
(120, 33, '_sale_price_dates_to', ''),
(121, 33, 'total_sales', '0'),
(122, 33, '_tax_status', 'taxable'),
(123, 33, '_tax_class', ''),
(124, 33, '_manage_stock', 'no'),
(125, 33, '_backorders', 'no'),
(126, 33, '_sold_individually', 'no'),
(127, 33, '_weight', ''),
(128, 33, '_length', ''),
(129, 33, '_width', ''),
(130, 33, '_height', ''),
(131, 33, '_upsell_ids', 'a:0:{}'),
(132, 33, '_crosssell_ids', 'a:0:{}'),
(133, 33, '_purchase_note', ''),
(134, 33, '_default_attributes', 'a:0:{}'),
(135, 33, '_virtual', 'yes'),
(136, 33, '_downloadable', 'yes'),
(137, 33, '_product_image_gallery', '49'),
(138, 33, '_download_limit', '10'),
(139, 33, '_download_expiry', '90'),
(140, 33, '_stock', NULL),
(141, 33, '_stock_status', 'instock'),
(142, 33, '_wc_average_rating', '0'),
(143, 33, '_wc_rating_count', 'a:0:{}'),
(144, 33, '_wc_review_count', '0'),
(145, 33, '_downloadable_files', 'a:1:{s:32:"061c9a8dbfd1e6713f71ed1771a0568c";a:4:{s:2:"id";s:32:"061c9a8dbfd1e6713f71ed1771a0568c";s:4:"name";s:7:"Song #2";s:4:"file";s:64:"https://woocommerce.files.wordpress.com/2017/06/woo-single-2.ogg";s:13:"previous_hash";s:0:"";}}'),
(146, 33, '_product_attributes', 'a:0:{}'),
(147, 33, '_product_version', '3.2.6'),
(148, 33, '_price', '2'),
(149, 34, '_sku', 'WOO-ALBUM-1'),
(150, 34, '_regular_price', '9'),
(151, 34, '_sale_price', ''),
(152, 34, '_sale_price_dates_from', ''),
(153, 34, '_sale_price_dates_to', ''),
(154, 34, 'total_sales', '0'),
(155, 34, '_tax_status', 'taxable'),
(156, 34, '_tax_class', ''),
(157, 34, '_manage_stock', 'no'),
(158, 34, '_backorders', 'no'),
(159, 34, '_sold_individually', 'no'),
(160, 34, '_weight', ''),
(161, 34, '_length', ''),
(162, 34, '_width', ''),
(163, 34, '_height', ''),
(164, 34, '_upsell_ids', 'a:0:{}'),
(165, 34, '_crosssell_ids', 'a:0:{}'),
(166, 34, '_purchase_note', ''),
(167, 34, '_default_attributes', 'a:0:{}'),
(168, 34, '_virtual', 'yes'),
(169, 34, '_downloadable', 'no'),
(170, 34, '_product_image_gallery', '61'),
(171, 34, '_download_limit', '0'),
(172, 34, '_download_expiry', '0'),
(173, 34, '_stock', NULL),
(174, 34, '_stock_status', 'instock'),
(175, 34, '_wc_average_rating', '0'),
(176, 34, '_wc_rating_count', 'a:0:{}'),
(177, 34, '_wc_review_count', '0'),
(178, 34, '_downloadable_files', 'a:0:{}'),
(179, 34, '_product_attributes', 'a:0:{}'),
(180, 34, '_product_version', '3.2.6'),
(181, 34, '_price', '9'),
(182, 35, '_sku', 'WOO-ALBUM-2'),
(183, 35, '_regular_price', '9'),
(184, 35, '_sale_price', ''),
(185, 35, '_sale_price_dates_from', ''),
(186, 35, '_sale_price_dates_to', ''),
(187, 35, 'total_sales', '0'),
(188, 35, '_tax_status', 'taxable'),
(189, 35, '_tax_class', ''),
(190, 35, '_manage_stock', 'no'),
(191, 35, '_backorders', 'no'),
(192, 35, '_sold_individually', 'no'),
(193, 35, '_weight', ''),
(194, 35, '_length', ''),
(195, 35, '_width', ''),
(196, 35, '_height', ''),
(197, 35, '_upsell_ids', 'a:0:{}'),
(198, 35, '_crosssell_ids', 'a:0:{}'),
(199, 35, '_purchase_note', ''),
(200, 35, '_default_attributes', 'a:0:{}'),
(201, 35, '_virtual', 'yes'),
(202, 35, '_downloadable', 'no'),
(203, 35, '_product_image_gallery', '59'),
(204, 35, '_download_limit', '0'),
(205, 35, '_download_expiry', '0'),
(206, 35, '_stock', NULL),
(207, 35, '_stock_status', 'instock'),
(208, 35, '_wc_average_rating', '0'),
(209, 35, '_wc_rating_count', 'a:0:{}'),
(210, 35, '_wc_review_count', '0'),
(211, 35, '_downloadable_files', 'a:0:{}'),
(212, 35, '_product_attributes', 'a:0:{}'),
(213, 35, '_product_version', '3.2.6'),
(214, 35, '_price', '9'),
(215, 36, '_sku', 'WOO-ALBUM-3'),
(216, 36, '_regular_price', '9'),
(217, 36, '_sale_price', ''),
(218, 36, '_sale_price_dates_from', ''),
(219, 36, '_sale_price_dates_to', ''),
(220, 36, 'total_sales', '0'),
(221, 36, '_tax_status', 'taxable'),
(222, 36, '_tax_class', ''),
(223, 36, '_manage_stock', 'no'),
(224, 36, '_backorders', 'no'),
(225, 36, '_sold_individually', 'no'),
(226, 36, '_weight', ''),
(227, 36, '_length', ''),
(228, 36, '_width', ''),
(229, 36, '_height', ''),
(230, 36, '_upsell_ids', 'a:0:{}'),
(231, 36, '_crosssell_ids', 'a:0:{}'),
(232, 36, '_purchase_note', ''),
(233, 36, '_default_attributes', 'a:0:{}'),
(234, 36, '_virtual', 'yes'),
(235, 36, '_downloadable', 'no'),
(236, 36, '_product_image_gallery', '57'),
(237, 36, '_download_limit', '0'),
(238, 36, '_download_expiry', '0'),
(239, 36, '_stock', NULL),
(240, 36, '_stock_status', 'instock'),
(241, 36, '_wc_average_rating', '0'),
(242, 36, '_wc_rating_count', 'a:0:{}'),
(243, 36, '_wc_review_count', '0'),
(244, 36, '_downloadable_files', 'a:0:{}'),
(245, 36, '_product_attributes', 'a:0:{}'),
(246, 36, '_product_version', '3.2.6'),
(247, 36, '_price', '9'),
(248, 37, '_sku', 'T-SHIRT-WOO-LOGO'),
(249, 37, '_regular_price', '20'),
(250, 37, '_sale_price', '18'),
(251, 37, '_sale_price_dates_from', ''),
(252, 37, '_sale_price_dates_to', ''),
(253, 37, 'total_sales', '0'),
(254, 37, '_tax_status', 'taxable'),
(255, 37, '_tax_class', ''),
(256, 37, '_manage_stock', 'yes'),
(257, 37, '_backorders', ''),
(258, 37, '_sold_individually', 'no'),
(259, 37, '_weight', ''),
(260, 37, '_length', ''),
(261, 37, '_width', ''),
(262, 37, '_height', ''),
(263, 37, '_upsell_ids', 'a:1:{i:0;i:38;}'),
(264, 37, '_crosssell_ids', 'a:0:{}'),
(265, 37, '_purchase_note', ''),
(266, 37, '_default_attributes', 'a:0:{}'),
(267, 37, '_virtual', 'no'),
(268, 37, '_downloadable', 'no'),
(269, 37, '_product_image_gallery', '110'),
(270, 37, '_download_limit', '0'),
(271, 37, '_download_expiry', '0'),
(272, 37, '_stock', '5'),
(273, 37, '_stock_status', 'instock'),
(274, 37, '_wc_average_rating', '0'),
(275, 37, '_wc_rating_count', 'a:0:{}'),
(276, 37, '_wc_review_count', '0'),
(277, 37, '_downloadable_files', 'a:0:{}'),
(278, 37, '_product_attributes', 'a:0:{}'),
(279, 37, '_product_version', '3.2.6'),
(280, 37, '_price', '18'),
(281, 38, '_sku', 'HOODIE-WOO-LOGO'),
(282, 38, '_regular_price', '35'),
(283, 38, '_sale_price', ''),
(284, 38, '_sale_price_dates_from', ''),
(285, 38, '_sale_price_dates_to', ''),
(286, 38, 'total_sales', '0'),
(287, 38, '_tax_status', 'taxable'),
(288, 38, '_tax_class', ''),
(289, 38, '_manage_stock', 'no'),
(290, 38, '_backorders', 'no'),
(291, 38, '_sold_individually', 'no'),
(292, 38, '_weight', ''),
(293, 38, '_length', ''),
(294, 38, '_width', ''),
(295, 38, '_height', ''),
(296, 38, '_upsell_ids', 'a:0:{}'),
(297, 38, '_crosssell_ids', 'a:1:{i:0;i:37;}'),
(298, 38, '_purchase_note', ''),
(299, 38, '_default_attributes', 'a:0:{}'),
(300, 38, '_virtual', 'no'),
(301, 38, '_downloadable', 'no'),
(302, 38, '_product_image_gallery', '78'),
(303, 38, '_download_limit', '0'),
(304, 38, '_download_expiry', '0'),
(305, 38, '_stock', NULL),
(306, 38, '_stock_status', 'instock'),
(307, 38, '_wc_average_rating', '0'),
(308, 38, '_wc_rating_count', 'a:0:{}'),
(309, 38, '_wc_review_count', '0'),
(310, 38, '_downloadable_files', 'a:0:{}'),
(311, 38, '_product_attributes', 'a:0:{}'),
(312, 38, '_product_version', '3.2.6'),
(313, 38, '_price', '35'),
(314, 39, '_sku', 'T-SHIRT-WOO-NINJA'),
(315, 39, '_regular_price', '20'),
(316, 39, '_sale_price', ''),
(317, 39, '_sale_price_dates_from', ''),
(318, 39, '_sale_price_dates_to', ''),
(319, 39, 'total_sales', '0'),
(320, 39, '_tax_status', 'taxable'),
(321, 39, '_tax_class', ''),
(322, 39, '_manage_stock', 'no'),
(323, 39, '_backorders', 'no'),
(324, 39, '_sold_individually', 'no'),
(325, 39, '_weight', ''),
(326, 39, '_length', ''),
(327, 39, '_width', ''),
(328, 39, '_height', ''),
(329, 39, '_upsell_ids', 'a:1:{i:0;i:40;}'),
(330, 39, '_crosssell_ids', 'a:2:{i:0;i:45;i:1;i:44;}'),
(331, 39, '_purchase_note', ''),
(332, 39, '_default_attributes', 'a:0:{}'),
(333, 39, '_virtual', 'no'),
(334, 39, '_downloadable', 'no'),
(335, 39, '_product_image_gallery', '97'),
(336, 39, '_download_limit', '0'),
(337, 39, '_download_expiry', '0'),
(338, 39, '_stock', NULL),
(339, 39, '_stock_status', 'instock'),
(340, 39, '_wc_average_rating', '0'),
(341, 39, '_wc_rating_count', 'a:0:{}'),
(342, 39, '_wc_review_count', '0'),
(343, 39, '_downloadable_files', 'a:0:{}'),
(344, 39, '_product_attributes', 'a:0:{}'),
(345, 39, '_product_version', '3.2.6'),
(346, 39, '_price', '20'),
(347, 40, '_sku', 'HOODIE-WOO-NINJA'),
(348, 40, '_regular_price', '35'),
(349, 40, '_sale_price', ''),
(350, 40, '_sale_price_dates_from', ''),
(351, 40, '_sale_price_dates_to', ''),
(352, 40, 'total_sales', '0'),
(353, 40, '_tax_status', 'taxable'),
(354, 40, '_tax_class', ''),
(355, 40, '_manage_stock', 'no'),
(356, 40, '_backorders', 'no'),
(357, 40, '_sold_individually', 'no'),
(358, 40, '_weight', ''),
(359, 40, '_length', ''),
(360, 40, '_width', ''),
(361, 40, '_height', ''),
(362, 40, '_upsell_ids', 'a:0:{}'),
(363, 40, '_crosssell_ids', 'a:1:{i:0;i:39;}'),
(364, 40, '_purchase_note', ''),
(365, 40, '_default_attributes', 'a:0:{}'),
(366, 40, '_virtual', 'no'),
(367, 40, '_downloadable', 'no'),
(368, 40, '_product_image_gallery', '87'),
(369, 40, '_download_limit', '0'),
(370, 40, '_download_expiry', '0'),
(371, 40, '_stock', NULL),
(372, 40, '_stock_status', 'instock'),
(373, 40, '_wc_average_rating', '0'),
(374, 40, '_wc_rating_count', 'a:0:{}'),
(375, 40, '_wc_review_count', '0'),
(376, 40, '_downloadable_files', 'a:0:{}'),
(377, 40, '_product_attributes', 'a:0:{}'),
(378, 40, '_product_version', '3.2.6'),
(379, 40, '_price', '35'),
(380, 41, '_sku', 'T-SHIRT-PREMIUM-QUALITY'),
(381, 41, '_regular_price', '20'),
(382, 41, '_sale_price', ''),
(383, 41, '_sale_price_dates_from', ''),
(384, 41, '_sale_price_dates_to', ''),
(385, 41, 'total_sales', '0'),
(386, 41, '_tax_status', 'taxable'),
(387, 41, '_tax_class', ''),
(388, 41, '_manage_stock', 'no'),
(389, 41, '_backorders', 'no'),
(390, 41, '_sold_individually', 'no'),
(391, 41, '_weight', ''),
(392, 41, '_length', ''),
(393, 41, '_width', ''),
(394, 41, '_height', ''),
(395, 41, '_upsell_ids', 'a:0:{}'),
(396, 41, '_crosssell_ids', 'a:0:{}'),
(397, 41, '_purchase_note', ''),
(398, 41, '_default_attributes', 'a:0:{}'),
(399, 41, '_virtual', 'no'),
(400, 41, '_downloadable', 'no'),
(401, 41, '_product_image_gallery', '108'),
(402, 41, '_download_limit', '0'),
(403, 41, '_download_expiry', '0'),
(404, 41, '_stock', NULL),
(405, 41, '_stock_status', 'instock'),
(406, 41, '_wc_average_rating', '0'),
(407, 41, '_wc_rating_count', 'a:0:{}'),
(408, 41, '_wc_review_count', '0'),
(409, 41, '_downloadable_files', 'a:0:{}'),
(410, 41, '_product_attributes', 'a:0:{}'),
(411, 41, '_product_version', '3.2.6'),
(412, 41, '_price', '20'),
(413, 42, '_sku', 'T-SHIRT-SHIP-YOUR-IDEA'),
(414, 42, '_regular_price', '20'),
(415, 42, '_sale_price', ''),
(416, 42, '_sale_price_dates_from', ''),
(417, 42, '_sale_price_dates_to', ''),
(418, 42, 'total_sales', '0'),
(419, 42, '_tax_status', 'taxable'),
(420, 42, '_tax_class', ''),
(421, 42, '_manage_stock', 'no'),
(422, 42, '_backorders', 'no'),
(423, 42, '_sold_individually', 'no'),
(424, 42, '_weight', ''),
(425, 42, '_length', ''),
(426, 42, '_width', ''),
(427, 42, '_height', ''),
(428, 42, '_upsell_ids', 'a:1:{i:0;i:43;}'),
(429, 42, '_crosssell_ids', 'a:0:{}'),
(430, 42, '_purchase_note', ''),
(431, 42, '_default_attributes', 'a:0:{}'),
(432, 42, '_virtual', 'no'),
(433, 42, '_downloadable', 'no'),
(434, 42, '_product_image_gallery', '101,102,103,104'),
(435, 42, '_download_limit', '0'),
(436, 42, '_download_expiry', '0'),
(437, 42, '_stock', NULL),
(438, 42, '_stock_status', 'instock'),
(439, 42, '_wc_average_rating', '0'),
(440, 42, '_wc_rating_count', 'a:0:{}'),
(441, 42, '_wc_review_count', '0'),
(442, 42, '_downloadable_files', 'a:0:{}'),
(443, 42, '_product_attributes', 'a:1:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";i:0;s:10:"is_visible";i:0;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:1;}}'),
(444, 42, '_product_version', '3.2.6'),
(446, 43, '_sku', 'HOODIE-SHIP-YOUR-IDEA'),
(447, 43, '_regular_price', '30'),
(448, 43, '_sale_price', ''),
(449, 43, '_sale_price_dates_from', ''),
(450, 43, '_sale_price_dates_to', ''),
(451, 43, 'total_sales', '0'),
(452, 43, '_tax_status', 'taxable'),
(453, 43, '_tax_class', ''),
(454, 43, '_manage_stock', 'no'),
(455, 43, '_backorders', 'no'),
(456, 43, '_sold_individually', 'no'),
(457, 43, '_weight', ''),
(458, 43, '_length', ''),
(459, 43, '_width', ''),
(460, 43, '_height', ''),
(461, 43, '_upsell_ids', 'a:0:{}'),
(462, 43, '_crosssell_ids', 'a:1:{i:0;i:42;}'),
(463, 43, '_purchase_note', ''),
(464, 43, '_default_attributes', 'a:2:{s:8:"pa_color";s:5:"black";s:4:"size";s:1:"L";}'),
(465, 43, '_virtual', 'no'),
(466, 43, '_downloadable', 'no'),
(467, 43, '_product_image_gallery', '89,90,91'),
(468, 43, '_download_limit', '0'),
(469, 43, '_download_expiry', '0'),
(470, 43, '_stock', NULL),
(471, 43, '_stock_status', 'instock'),
(472, 43, '_wc_average_rating', '0'),
(473, 43, '_wc_rating_count', 'a:0:{}'),
(474, 43, '_wc_review_count', '0'),
(475, 43, '_downloadable_files', 'a:0:{}'),
(476, 43, '_product_attributes', 'a:2:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";i:0;s:10:"is_visible";i:0;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:1;}s:4:"size";a:6:{s:4:"name";s:4:"Size";s:5:"value";s:6:"L | XL";s:8:"position";i:1;s:10:"is_visible";i:1;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:0;}}'),
(477, 43, '_product_version', '3.2.6'),
(479, 44, '_sku', 'T-SHIRT-NINJA-SILHOUETTE'),
(480, 44, '_regular_price', '20'),
(481, 44, '_sale_price', ''),
(482, 44, '_sale_price_dates_from', ''),
(483, 44, '_sale_price_dates_to', ''),
(484, 44, 'total_sales', '0'),
(485, 44, '_tax_status', 'taxable'),
(486, 44, '_tax_class', ''),
(487, 44, '_manage_stock', 'no'),
(488, 44, '_backorders', 'no'),
(489, 44, '_sold_individually', 'no'),
(490, 44, '_weight', ''),
(491, 44, '_length', ''),
(492, 44, '_width', ''),
(493, 44, '_height', ''),
(494, 44, '_upsell_ids', 'a:1:{i:0;i:47;}'),
(495, 44, '_crosssell_ids', 'a:2:{i:0;i:39;i:1;i:45;}'),
(496, 44, '_purchase_note', ''),
(497, 44, '_default_attributes', 'a:0:{}'),
(498, 44, '_virtual', 'no'),
(499, 44, '_downloadable', 'no'),
(500, 44, '_product_image_gallery', '99'),
(501, 44, '_download_limit', '0'),
(502, 44, '_download_expiry', '0'),
(503, 44, '_stock', NULL),
(504, 44, '_stock_status', 'instock'),
(505, 44, '_wc_average_rating', '0'),
(506, 44, '_wc_rating_count', 'a:0:{}'),
(507, 44, '_wc_review_count', '0'),
(508, 44, '_downloadable_files', 'a:0:{}'),
(509, 44, '_product_attributes', 'a:0:{}'),
(510, 44, '_product_version', '3.2.6'),
(511, 44, '_price', '20'),
(512, 45, '_sku', 'T-SHIRT-HAPPY-NINJA'),
(513, 45, '_regular_price', '18'),
(514, 45, '_sale_price', ''),
(515, 45, '_sale_price_dates_from', ''),
(516, 45, '_sale_price_dates_to', ''),
(517, 45, 'total_sales', '0'),
(518, 45, '_tax_status', 'taxable'),
(519, 45, '_tax_class', ''),
(520, 45, '_manage_stock', 'no'),
(521, 45, '_backorders', 'no'),
(522, 45, '_sold_individually', 'no'),
(523, 45, '_weight', ''),
(524, 45, '_length', ''),
(525, 45, '_width', ''),
(526, 45, '_height', ''),
(527, 45, '_upsell_ids', 'a:1:{i:0;i:46;}'),
(528, 45, '_crosssell_ids', 'a:2:{i:0;i:39;i:1;i:44;}'),
(529, 45, '_purchase_note', ''),
(530, 45, '_default_attributes', 'a:0:{}'),
(531, 45, '_virtual', 'no'),
(532, 45, '_downloadable', 'no'),
(533, 45, '_product_image_gallery', '95'),
(534, 45, '_download_limit', '0'),
(535, 45, '_download_expiry', '0'),
(536, 45, '_stock', NULL),
(537, 45, '_stock_status', 'instock'),
(538, 45, '_wc_average_rating', '0'),
(539, 45, '_wc_rating_count', 'a:0:{}'),
(540, 45, '_wc_review_count', '0'),
(541, 45, '_downloadable_files', 'a:0:{}'),
(542, 45, '_product_attributes', 'a:0:{}'),
(543, 45, '_product_version', '3.2.6'),
(544, 45, '_price', '18'),
(545, 46, '_sku', 'HOODIE-HAPPY-NINJA'),
(546, 46, '_regular_price', '35'),
(547, 46, '_sale_price', ''),
(548, 46, '_sale_price_dates_from', ''),
(549, 46, '_sale_price_dates_to', ''),
(550, 46, 'total_sales', '0'),
(551, 46, '_tax_status', 'taxable'),
(552, 46, '_tax_class', ''),
(553, 46, '_manage_stock', 'no'),
(554, 46, '_backorders', 'no'),
(555, 46, '_sold_individually', 'no'),
(556, 46, '_weight', ''),
(557, 46, '_length', ''),
(558, 46, '_width', ''),
(559, 46, '_height', ''),
(560, 46, '_upsell_ids', 'a:0:{}'),
(561, 46, '_crosssell_ids', 'a:1:{i:0;i:45;}'),
(562, 46, '_purchase_note', ''),
(563, 46, '_default_attributes', 'a:0:{}'),
(564, 46, '_virtual', 'no'),
(565, 46, '_downloadable', 'no'),
(566, 46, '_product_image_gallery', '82'),
(567, 46, '_download_limit', '0'),
(568, 46, '_download_expiry', '0'),
(569, 46, '_stock', NULL),
(570, 46, '_stock_status', 'instock'),
(571, 46, '_wc_average_rating', '0'),
(572, 46, '_wc_rating_count', 'a:0:{}'),
(573, 46, '_wc_review_count', '0'),
(574, 46, '_downloadable_files', 'a:0:{}'),
(575, 46, '_product_attributes', 'a:0:{}'),
(576, 46, '_product_version', '3.2.6'),
(577, 46, '_price', '35'),
(578, 47, '_sku', 'HOODIE-NINJA-SILHOUETTE'),
(579, 47, '_regular_price', '30'),
(580, 47, '_sale_price', ''),
(581, 47, '_sale_price_dates_from', ''),
(582, 47, '_sale_price_dates_to', ''),
(583, 47, 'total_sales', '0'),
(584, 47, '_tax_status', 'taxable'),
(585, 47, '_tax_class', ''),
(586, 47, '_manage_stock', 'no'),
(587, 47, '_backorders', 'no'),
(588, 47, '_sold_individually', 'no'),
(589, 47, '_weight', ''),
(590, 47, '_length', ''),
(591, 47, '_width', ''),
(592, 47, '_height', ''),
(593, 47, '_upsell_ids', 'a:0:{}'),
(594, 47, '_crosssell_ids', 'a:1:{i:0;i:44;}'),
(595, 47, '_purchase_note', ''),
(596, 47, '_default_attributes', 'a:0:{}'),
(597, 47, '_virtual', 'no'),
(598, 47, '_downloadable', 'no'),
(599, 47, '_product_image_gallery', '80'),
(600, 47, '_download_limit', '0'),
(601, 47, '_download_expiry', '0'),
(602, 47, '_stock', NULL),
(603, 47, '_stock_status', 'instock'),
(604, 47, '_wc_average_rating', '0'),
(605, 47, '_wc_rating_count', 'a:0:{}'),
(606, 47, '_wc_review_count', '0'),
(607, 47, '_downloadable_files', 'a:0:{}'),
(608, 47, '_product_attributes', 'a:0:{}'),
(609, 47, '_product_version', '3.2.6'),
(610, 47, '_price', '30'),
(1613, 155, '_strain_color', 'field_5a3973f81c736'),
(1579, 111, 'strain_color', '789bd1'),
(1580, 111, '_strain_color', 'field_5a3973f81c736'),
(1581, 153, '_edit_last', '1'),
(1582, 153, '_edit_lock', '1513732814:1'),
(1583, 153, '_thumbnail_id', '152'),
(1584, 153, 'aroma', 'Grape and Berry'),
(1600, 154, '_strain_effects', 'field_5a3971e815df7'),
(1601, 154, 'strain_color', 'bd77e9'),
(1602, 154, '_strain_color', 'field_5a3973f81c736'),
(1603, 155, '_edit_last', '1'),
(1604, 155, '_edit_lock', '1513732976:1'),
(1605, 155, '_thumbnail_id', '152'),
(1606, 155, 'aroma', 'Grape and Berry'),
(1607, 155, '_aroma', 'field_5a39716f15df5'),
(1608, 155, 'lineage', 'Purple Urkle and Big Bud'),
(1609, 155, '_lineage', 'field_5a3971c215df6'),
(1610, 155, 'strain_effects', 'a:4:{i:0;s:7:"relaxed";i:1;s:6:"sleepy";i:2;s:5:"happy";i:3;s:6:"hungry";}'),
(1611, 155, '_strain_effects', 'field_5a3971e815df7'),
(1612, 155, 'strain_color', 'e97777'),
(1576, 151, 'field_5a3973f81c736', 'a:12:{s:3:"key";s:19:"field_5a3973f81c736";s:5:"label";s:12:"Strain Color";s:4:"name";s:12:"strain_color";s:4:"type";s:6:"select";s:12:"instructions";s:70:"Select the color according to the strain category this will fall into.";s:8:"required";s:1:"0";s:7:"choices";a:3:{s:6:"e97777";s:6:"Sativa";s:6:"bd77e9";s:6:"Hybrid";s:6:"789bd1";s:6:"Indica";}s:13:"default_value";s:0:"";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_5a3971e815df7";s:8:"operator";s:2:"==";s:5:"value";s:7:"relaxed";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(1585, 153, '_aroma', 'field_5a39716f15df5'),
(1586, 153, 'lineage', 'Purple Urkle and Big Bud'),
(1587, 153, '_lineage', 'field_5a3971c215df6'),
(1588, 153, 'strain_effects', 'a:4:{i:0;s:7:"relaxed";i:1;s:6:"sleepy";i:2;s:5:"happy";i:3;s:6:"hungry";}'),
(1589, 153, '_strain_effects', 'field_5a3971e815df7'),
(1590, 153, 'strain_color', '789bd1'),
(1591, 153, '_strain_color', 'field_5a3973f81c736'),
(1592, 154, '_edit_last', '1'),
(1593, 154, '_edit_lock', '1513899221:1'),
(1594, 154, '_thumbnail_id', '152'),
(1595, 154, 'aroma', 'Grape and Berry'),
(1596, 154, '_aroma', 'field_5a39716f15df5'),
(1597, 154, 'lineage', 'Purple Urkle and Big Bud'),
(1598, 154, '_lineage', 'field_5a3971c215df6'),
(1599, 154, 'strain_effects', 'a:4:{i:0;s:7:"relaxed";i:1;s:6:"sleepy";i:2;s:5:"happy";i:3;s:6:"hungry";}'),
(617, 33, '_wp_old_slug', 'import-placeholder-for-woo-single-2'),
(1640, 159, 'field_5a3c4bf0b5a5e', 'a:10:{s:3:"key";s:19:"field_5a3c4bf0b5a5e";s:5:"label";s:18:"Featured Retailer?";s:4:"name";s:17:"featured_retailer";s:4:"type";s:10:"true_false";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:7:"message";s:0:"";s:13:"default_value";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(1647, 158, 'featured_retailer', '1'),
(1664, 159, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:9:"retailers";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1642, 159, 'position', 'normal'),
(1643, 159, 'layout', 'no_box'),
(1644, 159, 'hide_on_screen', ''),
(1645, 159, '_edit_lock', '1513952601:1'),
(1648, 158, '_featured_retailer', 'field_5a3c4bf0b5a5e'),
(1649, 160, '_wp_attached_file', '2017/12/n-cannabis-c-20160627.jpg'),
(1650, 160, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4000;s:6:"height";i:2670;s:4:"file";s:33:"2017/12/n-cannabis-c-20160627.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"n-cannabis-c-20160627-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"n-cannabis-c-20160627-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:33:"n-cannabis-c-20160627-768x513.jpg";s:5:"width";i:768;s:6:"height";i:513;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:34:"n-cannabis-c-20160627-1024x684.jpg";s:5:"width";i:1024;s:6:"height";i:684;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:33:"n-cannabis-c-20160627-250x167.jpg";s:5:"width";i:250;s:6:"height";i:167;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"2";s:6:"credit";s:9:"Bloomberg";s:6:"camera";s:10:"NIKON D800";s:7:"caption";s:406:"Medical marijuana plants grow in a climate controlled growing room at the Tweed Inc. facility in Smith Falls, Ontario, Canada, on Nov. 11, 2015. Construction and marijuana companies are poised to benefit from the Liberal Party\'s decisive win in Canada\'s election, with leader Justin Trudeau vowing to fund infrastructure spending with deficits and legalize cannabis. Photographer: James MacDonald/Bloomberg";s:17:"created_timestamp";s:10:"1447287107";s:9:"copyright";s:28:"© 2015 Bloomberg Finance LP";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:10:"0.00015625";s:5:"title";s:102:"Operations Inside The Tweed Inc. Production Facility As Trudeau Win Signals Gains For Marijuana Stocks";s:11:"orientation";s:1:"1";s:8:"keywords";a:17:{i:0;s:6:"CANADA";i:1;s:8:"CANADIAN";i:2;s:13:"NORTH AMERICA";i:3;s:7:"MEDICAL";i:4;s:9:"DRUGMAKER";i:5;s:8:"AMERICAS";i:6;s:15:"PHARMACEUTICALS";i:7;s:5:"DRUGS";i:8;s:10:"GOVERNMENT";i:9;s:3:"ECO";i:10;s:6:"HEALTH";i:11;s:5:"LEGAL";i:12;s:7:"ECONOMY";i:13;s:4:"DRUG";i:14;s:8:"LEGALIZE";i:15;s:8:"ECONOMIC";i:16;s:8:"POLITICS";}}}'),
(1615, 156, '_edit_lock', '1513732794:1'),
(1616, 156, '_thumbnail_id', '152'),
(1617, 156, 'aroma', 'Grape and Berry'),
(1618, 156, '_aroma', 'field_5a39716f15df5'),
(1619, 156, 'lineage', 'Purple Urkle and Big Bud'),
(1620, 156, '_lineage', 'field_5a3971c215df6'),
(1621, 156, 'strain_effects', 'a:4:{i:0;s:7:"relaxed";i:1;s:6:"sleepy";i:2;s:5:"happy";i:3;s:6:"hungry";}'),
(1622, 156, '_strain_effects', 'field_5a3971e815df7'),
(1623, 156, 'strain_color', '789bd1'),
(1624, 156, '_strain_color', 'field_5a3973f81c736'),
(1625, 157, '_edit_last', '1'),
(1626, 157, '_edit_lock', '1514925006:1'),
(1627, 157, '_thumbnail_id', '152'),
(1628, 157, 'aroma', 'Grape and Berry'),
(1629, 157, '_aroma', 'field_5a39716f15df5'),
(1630, 157, 'lineage', 'Purple Urkle and Big Bud'),
(1631, 157, '_lineage', 'field_5a3971c215df6'),
(1632, 157, 'strain_effects', 'a:4:{i:0;s:7:"relaxed";i:1;s:6:"sleepy";i:2;s:5:"happy";i:3;s:6:"hungry";}'),
(1633, 157, '_strain_effects', 'field_5a3971e815df7'),
(1634, 157, 'strain_color', '789bd1'),
(1635, 157, '_strain_color', 'field_5a3973f81c736'),
(1636, 158, '_edit_last', '1'),
(1637, 158, '_edit_lock', '1513952765:1'),
(1638, 158, '_thumbnail_id', '160'),
(1639, 159, '_edit_last', '1'),
(625, 32, '_wp_old_slug', 'import-placeholder-for-woo-single-1'),
(627, 52, '_children', 'a:2:{i:0;i:32;i:1;i:33;}'),
(628, 52, '_sku', 'WOO-SINGLES'),
(629, 52, '_regular_price', ''),
(630, 52, '_sale_price', ''),
(631, 52, '_sale_price_dates_from', ''),
(632, 52, '_sale_price_dates_to', ''),
(633, 52, 'total_sales', '0'),
(634, 52, '_tax_status', 'taxable'),
(635, 52, '_tax_class', ''),
(636, 52, '_manage_stock', 'no'),
(637, 52, '_backorders', 'no'),
(638, 52, '_sold_individually', 'no'),
(639, 52, '_weight', ''),
(640, 52, '_length', ''),
(641, 52, '_width', ''),
(642, 52, '_height', ''),
(643, 52, '_upsell_ids', 'a:2:{i:0;i:34;i:1;i:35;}'),
(644, 52, '_crosssell_ids', 'a:1:{i:0;i:36;}'),
(645, 52, '_purchase_note', ''),
(646, 52, '_default_attributes', 'a:0:{}'),
(647, 52, '_virtual', 'no'),
(648, 52, '_downloadable', 'no'),
(649, 52, '_product_image_gallery', ''),
(650, 52, '_download_limit', '0'),
(651, 52, '_download_expiry', '0'),
(1614, 156, '_edit_last', '1'),
(653, 52, '_stock', NULL),
(654, 52, '_stock_status', 'instock'),
(655, 52, '_wc_average_rating', '0'),
(656, 52, '_wc_rating_count', 'a:0:{}'),
(657, 52, '_wc_review_count', '0'),
(658, 52, '_downloadable_files', 'a:0:{}'),
(659, 52, '_product_attributes', 'a:0:{}'),
(660, 52, '_product_version', '3.2.6'),
(661, 52, '_price', ''),
(662, 52, '_price', ''),
(1653, 158, 'retailer_location', 'a:3:{s:7:"address";s:55:"Tröegs Independent Brewing, Hershey, PA, United States";s:3:"lat";s:17:"40.29710860000001";s:3:"lng";s:18:"-76.64311420000001";}'),
(1654, 158, '_retailer_location', 'field_5a3c565972b95'),
(1655, 159, 'field_5a3c5c03ccc3c', 'a:13:{s:3:"key";s:19:"field_5a3c5c03ccc3c";s:5:"label";s:16:"Retailer Address";s:4:"name";s:16:"retailer_address";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_5a3c4bf0b5a5e";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(1651, 159, 'field_5a3c565972b95', 'a:12:{s:3:"key";s:19:"field_5a3c565972b95";s:5:"label";s:17:"Retailer Location";s:4:"name";s:17:"retailer_location";s:4:"type";s:10:"google_map";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:10:"center_lat";s:10:"48.2510294";s:10:"center_lng";s:12:"-121.6112618";s:4:"zoom";s:2:"15";s:6:"height";s:3:"400";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_5a3c4bf0b5a5e";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(669, 55, '_sku', 'WOO-ALBUM-4'),
(670, 55, '_regular_price', '9'),
(671, 55, '_sale_price', ''),
(672, 55, '_sale_price_dates_from', ''),
(673, 55, '_sale_price_dates_to', ''),
(674, 55, 'total_sales', '0'),
(675, 55, '_tax_status', 'taxable'),
(676, 55, '_tax_class', ''),
(677, 55, '_manage_stock', 'no'),
(678, 55, '_backorders', 'no'),
(679, 55, '_sold_individually', 'no'),
(680, 55, '_weight', ''),
(681, 55, '_length', ''),
(682, 55, '_width', ''),
(683, 55, '_height', ''),
(684, 55, '_upsell_ids', 'a:0:{}'),
(685, 55, '_crosssell_ids', 'a:0:{}'),
(686, 55, '_purchase_note', ''),
(687, 55, '_default_attributes', 'a:0:{}'),
(688, 55, '_virtual', 'yes'),
(689, 55, '_downloadable', 'no'),
(690, 55, '_product_image_gallery', '54'),
(691, 55, '_download_limit', '0'),
(692, 55, '_download_expiry', '0'),
(694, 55, '_stock', NULL),
(695, 55, '_stock_status', 'instock'),
(696, 55, '_wc_average_rating', '0'),
(697, 55, '_wc_rating_count', 'a:0:{}'),
(698, 55, '_wc_review_count', '0'),
(699, 55, '_downloadable_files', 'a:0:{}'),
(700, 55, '_product_attributes', 'a:0:{}'),
(701, 55, '_product_version', '3.2.6'),
(702, 55, '_price', '9'),
(1659, 158, 'retailer_address', ' 200 East Hershey Park Drive, \r\nHershey, PA 17033'),
(1660, 158, '_retailer_address', 'field_5a3c5c03ccc3c'),
(1661, 158, 'retailer_phone_number', '123-456-8887'),
(1662, 158, '_retailer_phone_number', 'field_5a3c5c24a5a8b'),
(1657, 159, 'field_5a3c5c24a5a8b', 'a:14:{s:3:"key";s:19:"field_5a3c5c24a5a8b";s:5:"label";s:21:"Retailer Phone Number";s:4:"name";s:21:"retailer_phone_number";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_5a3c4bf0b5a5e";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(709, 36, '_wp_old_slug', 'import-placeholder-for-woo-album-3'),
(717, 35, '_wp_old_slug', 'import-placeholder-for-woo-album-2'),
(725, 34, '_wp_old_slug', 'import-placeholder-for-woo-album-1'),
(733, 64, '_sku', 'POSTER-WOO-LOGO'),
(734, 64, '_regular_price', '15'),
(735, 64, '_sale_price', ''),
(736, 64, '_sale_price_dates_from', ''),
(737, 64, '_sale_price_dates_to', ''),
(738, 64, 'total_sales', '0'),
(739, 64, '_tax_status', 'taxable'),
(740, 64, '_tax_class', ''),
(741, 64, '_manage_stock', 'no'),
(742, 64, '_backorders', 'no'),
(743, 64, '_sold_individually', 'no'),
(744, 64, '_weight', ''),
(745, 64, '_length', ''),
(746, 64, '_width', ''),
(747, 64, '_height', ''),
(748, 64, '_upsell_ids', 'a:0:{}'),
(749, 64, '_crosssell_ids', 'a:2:{i:0;i:37;i:1;i:38;}'),
(750, 64, '_purchase_note', ''),
(751, 64, '_default_attributes', 'a:0:{}'),
(752, 64, '_virtual', 'no'),
(753, 64, '_downloadable', 'no'),
(754, 64, '_product_image_gallery', '63'),
(755, 64, '_download_limit', '0'),
(756, 64, '_download_expiry', '0'),
(758, 64, '_stock', NULL),
(759, 64, '_stock_status', 'instock'),
(760, 64, '_wc_average_rating', '0'),
(761, 64, '_wc_rating_count', 'a:0:{}'),
(762, 64, '_wc_review_count', '0'),
(763, 64, '_downloadable_files', 'a:0:{}'),
(764, 64, '_product_attributes', 'a:0:{}'),
(765, 64, '_product_version', '3.2.6'),
(766, 64, '_price', '15'),
(773, 67, '_sku', 'POSTER-WOO-NINJA'),
(774, 67, '_regular_price', '15'),
(775, 67, '_sale_price', ''),
(776, 67, '_sale_price_dates_from', ''),
(777, 67, '_sale_price_dates_to', ''),
(778, 67, 'total_sales', '0'),
(779, 67, '_tax_status', 'taxable'),
(780, 67, '_tax_class', ''),
(781, 67, '_manage_stock', 'no'),
(782, 67, '_backorders', 'no'),
(783, 67, '_sold_individually', 'no'),
(784, 67, '_weight', ''),
(785, 67, '_length', ''),
(786, 67, '_width', ''),
(787, 67, '_height', ''),
(788, 67, '_upsell_ids', 'a:0:{}'),
(789, 67, '_crosssell_ids', 'a:2:{i:0;i:39;i:1;i:40;}'),
(790, 67, '_purchase_note', ''),
(791, 67, '_default_attributes', 'a:0:{}'),
(792, 67, '_virtual', 'no'),
(793, 67, '_downloadable', 'no'),
(794, 67, '_product_image_gallery', '66'),
(795, 67, '_download_limit', '0'),
(796, 67, '_download_expiry', '0'),
(798, 67, '_stock', NULL),
(799, 67, '_stock_status', 'instock'),
(800, 67, '_wc_average_rating', '0'),
(801, 67, '_wc_rating_count', 'a:0:{}'),
(802, 67, '_wc_review_count', '0'),
(803, 67, '_downloadable_files', 'a:0:{}'),
(804, 67, '_product_attributes', 'a:0:{}'),
(805, 67, '_product_version', '3.2.6'),
(806, 67, '_price', '15'),
(813, 70, '_sku', 'POSTER-PREMIUM-QUALITY'),
(814, 70, '_regular_price', '15'),
(815, 70, '_sale_price', '12'),
(816, 70, '_sale_price_dates_from', ''),
(817, 70, '_sale_price_dates_to', ''),
(818, 70, 'total_sales', '0'),
(819, 70, '_tax_status', 'taxable'),
(820, 70, '_tax_class', ''),
(821, 70, '_manage_stock', 'no'),
(822, 70, '_backorders', 'no'),
(823, 70, '_sold_individually', 'no'),
(824, 70, '_weight', ''),
(825, 70, '_length', ''),
(826, 70, '_width', ''),
(827, 70, '_height', ''),
(828, 70, '_upsell_ids', 'a:1:{i:0;i:41;}'),
(829, 70, '_crosssell_ids', 'a:0:{}'),
(830, 70, '_purchase_note', ''),
(831, 70, '_default_attributes', 'a:0:{}'),
(832, 70, '_virtual', 'no'),
(833, 70, '_downloadable', 'no'),
(834, 70, '_product_image_gallery', '69'),
(835, 70, '_download_limit', '0'),
(836, 70, '_download_expiry', '0'),
(838, 70, '_stock', NULL),
(839, 70, '_stock_status', 'instock'),
(840, 70, '_wc_average_rating', '0'),
(841, 70, '_wc_rating_count', 'a:0:{}'),
(842, 70, '_wc_review_count', '0'),
(843, 70, '_downloadable_files', 'a:0:{}'),
(844, 70, '_product_attributes', 'a:0:{}'),
(845, 70, '_product_version', '3.2.6'),
(846, 70, '_price', '12'),
(853, 73, '_sku', 'POSTER-FLYING-NINJA'),
(854, 73, '_regular_price', '15'),
(855, 73, '_sale_price', '12'),
(856, 73, '_sale_price_dates_from', ''),
(857, 73, '_sale_price_dates_to', ''),
(858, 73, 'total_sales', '0'),
(859, 73, '_tax_status', 'taxable'),
(860, 73, '_tax_class', ''),
(861, 73, '_manage_stock', 'no'),
(862, 73, '_backorders', 'no'),
(863, 73, '_sold_individually', 'no'),
(864, 73, '_weight', ''),
(865, 73, '_length', ''),
(866, 73, '_width', ''),
(867, 73, '_height', ''),
(868, 73, '_upsell_ids', 'a:0:{}'),
(869, 73, '_crosssell_ids', 'a:0:{}'),
(870, 73, '_purchase_note', ''),
(871, 73, '_default_attributes', 'a:0:{}'),
(872, 73, '_virtual', 'no'),
(873, 73, '_downloadable', 'no'),
(874, 73, '_product_image_gallery', '72'),
(875, 73, '_download_limit', '0'),
(876, 73, '_download_expiry', '0'),
(878, 73, '_stock', NULL),
(879, 73, '_stock_status', 'instock'),
(880, 73, '_wc_average_rating', '0'),
(881, 73, '_wc_rating_count', 'a:0:{}'),
(882, 73, '_wc_review_count', '0'),
(883, 73, '_downloadable_files', 'a:0:{}'),
(884, 73, '_product_attributes', 'a:0:{}'),
(885, 73, '_product_version', '3.2.6'),
(886, 73, '_price', '12'),
(893, 76, '_sku', 'POSTER-SHIP-YOUR-IDEA'),
(894, 76, '_regular_price', '15'),
(895, 76, '_sale_price', ''),
(896, 76, '_sale_price_dates_from', ''),
(897, 76, '_sale_price_dates_to', ''),
(898, 76, 'total_sales', '0'),
(899, 76, '_tax_status', 'taxable'),
(900, 76, '_tax_class', ''),
(901, 76, '_manage_stock', 'no'),
(902, 76, '_backorders', 'no'),
(903, 76, '_sold_individually', 'no'),
(904, 76, '_weight', ''),
(905, 76, '_length', ''),
(906, 76, '_width', ''),
(907, 76, '_height', ''),
(908, 76, '_upsell_ids', 'a:2:{i:0;i:42;i:1;i:43;}'),
(909, 76, '_crosssell_ids', 'a:2:{i:0;i:42;i:1;i:43;}'),
(910, 76, '_purchase_note', ''),
(911, 76, '_default_attributes', 'a:0:{}'),
(912, 76, '_virtual', 'no'),
(913, 76, '_downloadable', 'no'),
(914, 76, '_product_image_gallery', '75'),
(915, 76, '_download_limit', '0'),
(916, 76, '_download_expiry', '0'),
(918, 76, '_stock', NULL),
(919, 76, '_stock_status', 'instock'),
(920, 76, '_wc_average_rating', '0'),
(921, 76, '_wc_rating_count', 'a:0:{}'),
(922, 76, '_wc_review_count', '0'),
(923, 76, '_downloadable_files', 'a:0:{}'),
(924, 76, '_product_attributes', 'a:0:{}'),
(925, 76, '_product_version', '3.2.6'),
(926, 76, '_price', '15'),
(933, 38, '_wp_old_slug', 'import-placeholder-for-hoodie-woo-logo'),
(941, 47, '_wp_old_slug', 'import-placeholder-for-hoodie-ninja-silhouette'),
(943, 47, '_product_url', 'https://mercantile.wordpress.org/product/wordpress-logo-black-zip-hoodie/'),
(944, 47, '_button_text', 'Buy on WordPress Swag Store'),
(951, 46, '_wp_old_slug', 'import-placeholder-for-hoodie-happy-ninja'),
(959, 85, '_sku', 'HOODIE-PATIENT-NINJA'),
(960, 85, '_regular_price', '35'),
(961, 85, '_sale_price', ''),
(962, 85, '_sale_price_dates_from', ''),
(963, 85, '_sale_price_dates_to', ''),
(964, 85, 'total_sales', '0'),
(965, 85, '_tax_status', 'taxable'),
(966, 85, '_tax_class', ''),
(967, 85, '_manage_stock', 'no'),
(968, 85, '_backorders', 'no'),
(969, 85, '_sold_individually', 'no'),
(970, 85, '_weight', ''),
(971, 85, '_length', ''),
(972, 85, '_width', ''),
(973, 85, '_height', ''),
(974, 85, '_upsell_ids', 'a:0:{}'),
(975, 85, '_crosssell_ids', 'a:1:{i:0;i:46;}'),
(976, 85, '_purchase_note', ''),
(977, 85, '_default_attributes', 'a:0:{}'),
(978, 85, '_virtual', 'no'),
(979, 85, '_downloadable', 'no'),
(980, 85, '_product_image_gallery', '84'),
(981, 85, '_download_limit', '0'),
(982, 85, '_download_expiry', '0'),
(984, 85, '_stock', NULL),
(985, 85, '_stock_status', 'instock'),
(986, 85, '_wc_average_rating', '0'),
(987, 85, '_wc_rating_count', 'a:0:{}'),
(988, 85, '_wc_review_count', '0'),
(989, 85, '_downloadable_files', 'a:0:{}'),
(990, 85, '_product_attributes', 'a:0:{}'),
(991, 85, '_product_version', '3.2.6'),
(992, 85, '_price', '35'),
(999, 40, '_wp_old_slug', 'import-placeholder-for-hoodie-woo-ninja'),
(1013, 43, '_wp_old_slug', 'import-placeholder-for-hoodie-ship-your-idea'),
(1214, 43, '_price', '30'),
(1015, 92, '_variation_description', ''),
(1016, 92, '_sku', 'HOODIE-SHIP-YOUR-IDEA-BLUE-XL'),
(1017, 92, '_regular_price', '35'),
(1018, 92, '_sale_price', '30'),
(1019, 92, '_sale_price_dates_from', ''),
(1020, 92, '_sale_price_dates_to', ''),
(1021, 92, 'total_sales', '0'),
(1022, 92, '_tax_status', 'taxable'),
(1023, 92, '_tax_class', ''),
(1024, 92, '_manage_stock', 'no'),
(1025, 92, '_backorders', 'no'),
(1026, 92, '_sold_individually', 'no'),
(1027, 92, '_weight', ''),
(1028, 92, '_length', ''),
(1029, 92, '_width', ''),
(1030, 92, '_height', ''),
(1031, 92, '_upsell_ids', 'a:0:{}'),
(1032, 92, '_crosssell_ids', 'a:1:{i:0;i:42;}'),
(1033, 92, '_purchase_note', ''),
(1034, 92, '_default_attributes', 'a:0:{}'),
(1035, 92, '_virtual', 'no'),
(1036, 92, '_downloadable', 'no'),
(1037, 92, '_product_image_gallery', ''),
(1038, 92, '_download_limit', '0'),
(1039, 92, '_download_expiry', '0'),
(1041, 92, '_stock', NULL),
(1042, 92, '_stock_status', 'instock'),
(1043, 92, '_wc_average_rating', '0'),
(1044, 92, '_wc_rating_count', 'a:0:{}'),
(1045, 92, '_wc_review_count', '0'),
(1046, 92, '_downloadable_files', 'a:0:{}'),
(1047, 92, 'attribute_pa_color', 'blue'),
(1048, 92, 'attribute_size', 'XL'),
(1049, 92, '_price', '30'),
(1050, 92, '_product_version', '3.2.6'),
(1051, 93, '_variation_description', ''),
(1052, 93, '_sku', 'HOODIE-SHIP-YOUR-IDEA-BLACK-L'),
(1053, 93, '_regular_price', '35'),
(1054, 93, '_sale_price', ''),
(1055, 93, '_sale_price_dates_from', ''),
(1056, 93, '_sale_price_dates_to', ''),
(1057, 93, 'total_sales', '0'),
(1058, 93, '_tax_status', 'taxable'),
(1059, 93, '_tax_class', ''),
(1060, 93, '_manage_stock', 'no'),
(1061, 93, '_backorders', 'no'),
(1062, 93, '_sold_individually', 'no'),
(1063, 93, '_weight', ''),
(1064, 93, '_length', ''),
(1065, 93, '_width', ''),
(1066, 93, '_height', ''),
(1067, 93, '_upsell_ids', 'a:0:{}'),
(1068, 93, '_crosssell_ids', 'a:1:{i:0;i:42;}'),
(1069, 93, '_purchase_note', ''),
(1070, 93, '_default_attributes', 'a:0:{}'),
(1071, 93, '_virtual', 'no'),
(1072, 93, '_downloadable', 'no'),
(1073, 93, '_product_image_gallery', ''),
(1074, 93, '_download_limit', '0'),
(1075, 93, '_download_expiry', '0'),
(1077, 93, '_stock', NULL),
(1078, 93, '_stock_status', 'instock'),
(1079, 93, '_wc_average_rating', '0'),
(1080, 93, '_wc_rating_count', 'a:0:{}'),
(1081, 93, '_wc_review_count', '0'),
(1082, 93, '_downloadable_files', 'a:0:{}'),
(1083, 93, 'attribute_pa_color', 'black'),
(1084, 93, 'attribute_size', 'L'),
(1085, 93, '_price', '35'),
(1086, 93, '_product_version', '3.2.6'),
(1093, 45, '_wp_old_slug', 'import-placeholder-for-t-shirt-happy-ninja'),
(1101, 39, '_wp_old_slug', 'import-placeholder-for-t-shirt-woo-ninja'),
(1109, 44, '_wp_old_slug', 'import-placeholder-for-t-shirt-ninja-silhouette'),
(1126, 42, '_wp_old_slug', 'import-placeholder-for-t-shirt-ship-your-idea'),
(1217, 111, '_edit_last', '1'),
(1216, 42, '_price', '20'),
(1128, 105, '_variation_description', ''),
(1129, 105, '_sku', 'T-SHIRT-SHIP-YOUR-IDEA-GREEN'),
(1130, 105, '_regular_price', '20'),
(1131, 105, '_sale_price', ''),
(1132, 105, '_sale_price_dates_from', ''),
(1133, 105, '_sale_price_dates_to', ''),
(1134, 105, 'total_sales', '0'),
(1135, 105, '_tax_status', 'taxable'),
(1136, 105, '_tax_class', ''),
(1137, 105, '_manage_stock', 'no'),
(1138, 105, '_backorders', 'no'),
(1139, 105, '_sold_individually', 'no'),
(1140, 105, '_weight', ''),
(1141, 105, '_length', ''),
(1142, 105, '_width', ''),
(1143, 105, '_height', ''),
(1144, 105, '_upsell_ids', 'a:0:{}'),
(1145, 105, '_crosssell_ids', 'a:0:{}'),
(1146, 105, '_purchase_note', ''),
(1147, 105, '_default_attributes', 'a:0:{}'),
(1148, 105, '_virtual', 'no'),
(1149, 105, '_downloadable', 'no'),
(1150, 105, '_product_image_gallery', ''),
(1151, 105, '_download_limit', '0'),
(1152, 105, '_download_expiry', '0'),
(1154, 105, '_stock', NULL),
(1155, 105, '_stock_status', 'instock'),
(1156, 105, '_wc_average_rating', '0'),
(1157, 105, '_wc_rating_count', 'a:0:{}'),
(1158, 105, '_wc_review_count', '0'),
(1159, 105, '_downloadable_files', 'a:0:{}'),
(1160, 105, 'attribute_pa_color', 'green'),
(1161, 105, '_price', '20'),
(1162, 105, '_product_version', '3.2.6'),
(1163, 106, '_variation_description', ''),
(1164, 106, '_sku', 'T-SHIRT-SHIP-YOUR-IDEA-BLACK'),
(1165, 106, '_regular_price', '20'),
(1166, 106, '_sale_price', ''),
(1167, 106, '_sale_price_dates_from', ''),
(1168, 106, '_sale_price_dates_to', ''),
(1169, 106, 'total_sales', '0'),
(1170, 106, '_tax_status', 'taxable'),
(1171, 106, '_tax_class', ''),
(1172, 106, '_manage_stock', 'no'),
(1173, 106, '_backorders', 'no'),
(1174, 106, '_sold_individually', 'no'),
(1175, 106, '_weight', ''),
(1176, 106, '_length', ''),
(1177, 106, '_width', ''),
(1178, 106, '_height', ''),
(1179, 106, '_upsell_ids', 'a:0:{}'),
(1180, 106, '_crosssell_ids', 'a:0:{}'),
(1181, 106, '_purchase_note', ''),
(1182, 106, '_default_attributes', 'a:0:{}'),
(1183, 106, '_virtual', 'no'),
(1184, 106, '_downloadable', 'no'),
(1185, 106, '_product_image_gallery', ''),
(1186, 106, '_download_limit', '0'),
(1187, 106, '_download_expiry', '0'),
(1189, 106, '_stock', NULL),
(1190, 106, '_stock_status', 'instock'),
(1191, 106, '_wc_average_rating', '0'),
(1192, 106, '_wc_rating_count', 'a:0:{}'),
(1193, 106, '_wc_review_count', '0'),
(1194, 106, '_downloadable_files', 'a:0:{}'),
(1195, 106, 'attribute_pa_color', 'black'),
(1196, 106, '_price', '20'),
(1197, 106, '_product_version', '3.2.6');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1204, 41, '_wp_old_slug', 'import-placeholder-for-t-shirt-premium-quality'),
(1212, 37, '_wp_old_slug', 'import-placeholder-for-t-shirt-woo-logo'),
(1215, 43, '_price', '35'),
(1218, 111, '_edit_lock', '1515008687:1'),
(1219, 111, '_thumbnail_id', '152'),
(1220, 20, 'field_5a347c52cf4a8', 'a:14:{s:3:"key";s:19:"field_5a347c52cf4a8";s:5:"label";s:11:"Button Text";s:4:"name";s:11:"button_text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(1222, 20, 'field_5a347c6342246', 'a:11:{s:3:"key";s:19:"field_5a347c6342246";s:5:"label";s:11:"Button Link";s:4:"name";s:11:"button_link";s:4:"type";s:9:"page_link";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:9:"post_type";a:1:{i:0;s:4:"page";}s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(1224, 112, 'hero_title', 'Get to know Green Haven'),
(1225, 112, '_hero_title', 'field_5a346f21f058e'),
(1226, 112, 'hero_supporting_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. '),
(1227, 112, '_hero_supporting_text', 'field_5a346f38f058f'),
(1228, 112, 'button_text', 'Get Started'),
(1229, 112, '_button_text', 'field_5a347c52cf4a8'),
(1230, 112, 'button_link', '13'),
(1231, 112, '_button_link', 'field_5a347c6342246'),
(1232, 4, 'button_text', 'Get Started'),
(1233, 4, '_button_text', 'field_5a347c52cf4a8'),
(1234, 4, 'button_link', '13'),
(1235, 4, '_button_link', 'field_5a347c6342246'),
(1255, 119, 'field_5a3715a333a13', 'a:14:{s:3:"key";s:19:"field_5a3715a333a13";s:5:"label";s:14:"Callout Saying";s:4:"name";s:14:"callout_saying";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(1265, 119, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:13:"page-home.php";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1257, 119, 'position', 'normal'),
(1258, 119, 'layout', 'no_box'),
(1259, 119, 'hide_on_screen', ''),
(1260, 119, '_edit_lock', '1513559569:1'),
(1266, 120, 'button_link', '13'),
(1267, 120, '_button_link', 'field_5a347c6342246'),
(1268, 120, 'callout_button_text', 'Contact Us'),
(1269, 120, '_callout_button_text', 'field_5a37158133a12'),
(1270, 120, 'callout_saying', 'Come say hello!'),
(1271, 120, '_callout_saying', 'field_5a3715a333a13'),
(1272, 120, 'hero_title', 'Get to know Green Haven'),
(1273, 120, '_hero_title', 'field_5a346f21f058e'),
(1274, 120, 'hero_supporting_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. '),
(1275, 120, '_hero_supporting_text', 'field_5a346f38f058f'),
(1276, 120, 'button_text', 'Get Started'),
(1277, 120, '_button_text', 'field_5a347c52cf4a8'),
(1278, 4, 'callout_button_text', 'Contact Us'),
(1279, 4, '_callout_button_text', 'field_5a37158133a12'),
(1280, 4, 'callout_saying', 'Come say hello!'),
(1281, 4, '_callout_saying', 'field_5a3715a333a13'),
(1282, 121, '_edit_last', '1'),
(1283, 121, '_wp_page_template', 'default'),
(1284, 122, 'hero_title', ''),
(1285, 122, '_hero_title', 'field_5a346f21f058e'),
(1286, 122, 'hero_supporting_text', ''),
(1287, 122, '_hero_supporting_text', 'field_5a346f38f058f'),
(1288, 122, 'button_text', ''),
(1289, 122, '_button_text', 'field_5a347c52cf4a8'),
(1290, 122, 'button_link', '13'),
(1291, 122, '_button_link', 'field_5a347c6342246'),
(1292, 121, 'hero_title', ''),
(1293, 121, '_hero_title', 'field_5a346f21f058e'),
(1294, 121, 'hero_supporting_text', ''),
(1295, 121, '_hero_supporting_text', 'field_5a346f38f058f'),
(1296, 121, 'button_text', ''),
(1297, 121, '_button_text', 'field_5a347c52cf4a8'),
(1298, 121, 'button_link', '13'),
(1299, 121, '_button_link', 'field_5a347c6342246'),
(1300, 121, '_edit_lock', '1513653842:1'),
(1301, 123, '_edit_last', '1'),
(1302, 123, '_wp_page_template', 'default'),
(1303, 124, 'hero_title', ''),
(1304, 124, '_hero_title', 'field_5a346f21f058e'),
(1305, 124, 'hero_supporting_text', ''),
(1306, 124, '_hero_supporting_text', 'field_5a346f38f058f'),
(1307, 124, 'button_text', ''),
(1308, 124, '_button_text', 'field_5a347c52cf4a8'),
(1309, 124, 'button_link', '13'),
(1310, 124, '_button_link', 'field_5a347c6342246'),
(1311, 123, 'hero_title', ''),
(1312, 123, '_hero_title', 'field_5a346f21f058e'),
(1313, 123, 'hero_supporting_text', ''),
(1314, 123, '_hero_supporting_text', 'field_5a346f38f058f'),
(1315, 123, 'button_text', ''),
(1316, 123, '_button_text', 'field_5a347c52cf4a8'),
(1317, 123, 'button_link', '13'),
(1318, 123, '_button_link', 'field_5a347c6342246'),
(1319, 123, '_edit_lock', '1513653852:1'),
(1320, 125, '_edit_last', '1'),
(1321, 125, '_wp_page_template', 'default'),
(1322, 126, 'hero_title', ''),
(1323, 126, '_hero_title', 'field_5a346f21f058e'),
(1324, 126, 'hero_supporting_text', ''),
(1325, 126, '_hero_supporting_text', 'field_5a346f38f058f'),
(1326, 126, 'button_text', ''),
(1327, 126, '_button_text', 'field_5a347c52cf4a8'),
(1328, 126, 'button_link', '13'),
(1329, 126, '_button_link', 'field_5a347c6342246'),
(1330, 125, 'hero_title', ''),
(1331, 125, '_hero_title', 'field_5a346f21f058e'),
(1332, 125, 'hero_supporting_text', ''),
(1333, 125, '_hero_supporting_text', 'field_5a346f38f058f'),
(1334, 125, 'button_text', ''),
(1335, 125, '_button_text', 'field_5a347c52cf4a8'),
(1336, 125, 'button_link', '13'),
(1337, 125, '_button_link', 'field_5a347c6342246'),
(1338, 125, '_edit_lock', '1513653875:1'),
(1339, 127, 'hero_title', ''),
(1340, 127, '_hero_title', 'field_5a346f21f058e'),
(1341, 127, 'hero_supporting_text', ''),
(1342, 127, '_hero_supporting_text', 'field_5a346f38f058f'),
(1343, 127, 'button_text', ''),
(1344, 127, '_button_text', 'field_5a347c52cf4a8'),
(1345, 127, 'button_link', '13'),
(1346, 127, '_button_link', 'field_5a347c6342246'),
(1347, 128, 'hero_title', ''),
(1348, 128, '_hero_title', 'field_5a346f21f058e'),
(1349, 128, 'hero_supporting_text', ''),
(1350, 128, '_hero_supporting_text', 'field_5a346f38f058f'),
(1351, 128, 'button_text', ''),
(1352, 128, '_button_text', 'field_5a347c52cf4a8'),
(1353, 128, 'button_link', '13'),
(1354, 128, '_button_link', 'field_5a347c6342246'),
(1355, 129, '_edit_last', '1'),
(1356, 129, '_wp_page_template', 'default'),
(1357, 130, 'hero_title', ''),
(1358, 130, '_hero_title', 'field_5a346f21f058e'),
(1359, 130, 'hero_supporting_text', ''),
(1360, 130, '_hero_supporting_text', 'field_5a346f38f058f'),
(1361, 130, 'button_text', ''),
(1362, 130, '_button_text', 'field_5a347c52cf4a8'),
(1363, 130, 'button_link', '13'),
(1364, 130, '_button_link', 'field_5a347c6342246'),
(1365, 129, 'hero_title', ''),
(1366, 129, '_hero_title', 'field_5a346f21f058e'),
(1367, 129, 'hero_supporting_text', ''),
(1368, 129, '_hero_supporting_text', 'field_5a346f38f058f'),
(1369, 129, 'button_text', ''),
(1370, 129, '_button_text', 'field_5a347c52cf4a8'),
(1371, 129, 'button_link', '13'),
(1372, 129, '_button_link', 'field_5a347c6342246'),
(1373, 129, '_edit_lock', '1513653906:1'),
(1374, 131, 'hero_title', ''),
(1375, 131, '_hero_title', 'field_5a346f21f058e'),
(1376, 131, 'hero_supporting_text', ''),
(1377, 131, '_hero_supporting_text', 'field_5a346f38f058f'),
(1378, 131, 'button_text', ''),
(1379, 131, '_button_text', 'field_5a347c52cf4a8'),
(1380, 131, 'button_link', '13'),
(1381, 131, '_button_link', 'field_5a347c6342246'),
(1382, 132, 'hero_title', ''),
(1383, 132, '_hero_title', 'field_5a346f21f058e'),
(1384, 132, 'hero_supporting_text', ''),
(1385, 132, '_hero_supporting_text', 'field_5a346f38f058f'),
(1386, 132, 'button_text', ''),
(1387, 132, '_button_text', 'field_5a347c52cf4a8'),
(1388, 132, 'button_link', '13'),
(1389, 132, '_button_link', 'field_5a347c6342246'),
(1390, 133, 'hero_title', ''),
(1391, 133, '_hero_title', 'field_5a346f21f058e'),
(1392, 133, 'hero_supporting_text', ''),
(1393, 133, '_hero_supporting_text', 'field_5a346f38f058f'),
(1394, 133, 'button_text', ''),
(1395, 133, '_button_text', 'field_5a347c52cf4a8'),
(1396, 133, 'button_link', '13'),
(1397, 133, '_button_link', 'field_5a347c6342246'),
(1398, 134, '_edit_last', '1'),
(1399, 134, '_wp_page_template', 'default'),
(1400, 135, 'hero_title', ''),
(1401, 135, '_hero_title', 'field_5a346f21f058e'),
(1402, 135, 'hero_supporting_text', ''),
(1403, 135, '_hero_supporting_text', 'field_5a346f38f058f'),
(1404, 135, 'button_text', ''),
(1405, 135, '_button_text', 'field_5a347c52cf4a8'),
(1406, 135, 'button_link', '13'),
(1407, 135, '_button_link', 'field_5a347c6342246'),
(1408, 134, 'hero_title', ''),
(1409, 134, '_hero_title', 'field_5a346f21f058e'),
(1410, 134, 'hero_supporting_text', ''),
(1411, 134, '_hero_supporting_text', 'field_5a346f38f058f'),
(1412, 134, 'button_text', ''),
(1413, 134, '_button_text', 'field_5a347c52cf4a8'),
(1414, 134, 'button_link', '13'),
(1415, 134, '_button_link', 'field_5a347c6342246'),
(1416, 134, '_edit_lock', '1513653917:1'),
(1417, 136, '_edit_last', '1'),
(1418, 136, '_wp_page_template', 'default'),
(1419, 137, 'hero_title', ''),
(1420, 137, '_hero_title', 'field_5a346f21f058e'),
(1421, 137, 'hero_supporting_text', ''),
(1422, 137, '_hero_supporting_text', 'field_5a346f38f058f'),
(1423, 137, 'button_text', ''),
(1424, 137, '_button_text', 'field_5a347c52cf4a8'),
(1425, 137, 'button_link', '13'),
(1426, 137, '_button_link', 'field_5a347c6342246'),
(1427, 136, 'hero_title', ''),
(1428, 136, '_hero_title', 'field_5a346f21f058e'),
(1429, 136, 'hero_supporting_text', ''),
(1430, 136, '_hero_supporting_text', 'field_5a346f38f058f'),
(1431, 136, 'button_text', ''),
(1432, 136, '_button_text', 'field_5a347c52cf4a8'),
(1433, 136, 'button_link', '13'),
(1434, 136, '_button_link', 'field_5a347c6342246'),
(1435, 136, '_edit_lock', '1513653931:1'),
(1436, 138, '_menu_item_type', 'post_type'),
(1437, 138, '_menu_item_menu_item_parent', '0'),
(1438, 138, '_menu_item_object_id', '123'),
(1439, 138, '_menu_item_object', 'page'),
(1440, 138, '_menu_item_target', ''),
(1441, 138, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1442, 138, '_menu_item_xfn', ''),
(1443, 138, '_menu_item_url', ''),
(1455, 140, '_menu_item_menu_item_parent', '0'),
(1445, 139, '_menu_item_type', 'post_type'),
(1446, 139, '_menu_item_menu_item_parent', '0'),
(1447, 139, '_menu_item_object_id', '121'),
(1448, 139, '_menu_item_object', 'page'),
(1449, 139, '_menu_item_target', ''),
(1450, 139, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1451, 139, '_menu_item_xfn', ''),
(1452, 139, '_menu_item_url', ''),
(1454, 140, '_menu_item_type', 'post_type'),
(1456, 140, '_menu_item_object_id', '134'),
(1457, 140, '_menu_item_object', 'page'),
(1458, 140, '_menu_item_target', ''),
(1459, 140, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1460, 140, '_menu_item_xfn', ''),
(1461, 140, '_menu_item_url', ''),
(1483, 143, '_menu_item_object_id', '125'),
(1463, 141, '_menu_item_type', 'post_type'),
(1464, 141, '_menu_item_menu_item_parent', '0'),
(1465, 141, '_menu_item_object_id', '129'),
(1466, 141, '_menu_item_object', 'page'),
(1467, 141, '_menu_item_target', ''),
(1468, 141, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1469, 141, '_menu_item_xfn', ''),
(1470, 141, '_menu_item_url', ''),
(1482, 143, '_menu_item_menu_item_parent', '0'),
(1472, 142, '_menu_item_type', 'post_type'),
(1473, 142, '_menu_item_menu_item_parent', '0'),
(1474, 142, '_menu_item_object_id', '136'),
(1475, 142, '_menu_item_object', 'page'),
(1476, 142, '_menu_item_target', ''),
(1477, 142, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1478, 142, '_menu_item_xfn', ''),
(1479, 142, '_menu_item_url', ''),
(1481, 143, '_menu_item_type', 'post_type'),
(1484, 143, '_menu_item_object', 'page'),
(1485, 143, '_menu_item_target', ''),
(1486, 143, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1487, 143, '_menu_item_xfn', ''),
(1488, 143, '_menu_item_url', ''),
(1709, 166, 'strain_effects', 'a:4:{i:0;s:7:"relaxed";i:1;s:6:"sleepy";i:2;s:5:"happy";i:3;s:6:"hungry";}'),
(1708, 166, '_lineage', 'field_5a3971c215df6'),
(1707, 166, 'lineage', 'Purple Urkle and Big Bud'),
(1706, 166, '_aroma', 'field_5a39716f15df5'),
(1705, 166, 'aroma', 'Grape and Berry'),
(1499, 145, '_edit_last', '1'),
(1500, 145, '_edit_lock', '1513706520:1'),
(1501, 145, '_thumbnail_id', '7'),
(1502, 145, '_wp_page_template', 'default'),
(1503, 146, 'hero_title', 'Retail Partners'),
(1504, 146, '_hero_title', 'field_5a346f21f058e'),
(1505, 146, 'hero_supporting_text', 'See where you can get your Green Haven Products'),
(1506, 146, '_hero_supporting_text', 'field_5a346f38f058f'),
(1507, 146, 'button_text', ''),
(1508, 146, '_button_text', 'field_5a347c52cf4a8'),
(1509, 146, 'button_link', '13'),
(1510, 146, '_button_link', 'field_5a347c6342246'),
(1511, 145, 'hero_title', 'Retail Partners'),
(1512, 145, '_hero_title', 'field_5a346f21f058e'),
(1513, 145, 'hero_supporting_text', 'See where you can get your Green Haven Products'),
(1514, 145, '_hero_supporting_text', 'field_5a346f38f058f'),
(1515, 145, 'button_text', ''),
(1516, 145, '_button_text', 'field_5a347c52cf4a8'),
(1517, 145, 'button_link', '13'),
(1518, 145, '_button_link', 'field_5a347c6342246'),
(1519, 147, '_menu_item_type', 'post_type'),
(1520, 147, '_menu_item_menu_item_parent', '0'),
(1521, 147, '_menu_item_object_id', '145'),
(1522, 147, '_menu_item_object', 'page'),
(1523, 147, '_menu_item_target', ''),
(1524, 147, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1525, 147, '_menu_item_xfn', ''),
(1526, 147, '_menu_item_url', ''),
(1528, 148, '_edit_last', '1'),
(1529, 148, '_wp_page_template', 'default'),
(1530, 149, 'hero_title', ''),
(1531, 149, '_hero_title', 'field_5a346f21f058e'),
(1532, 149, 'hero_supporting_text', ''),
(1533, 149, '_hero_supporting_text', 'field_5a346f38f058f'),
(1534, 149, 'button_text', ''),
(1535, 149, '_button_text', 'field_5a347c52cf4a8'),
(1536, 149, 'button_link', '13'),
(1537, 149, '_button_link', 'field_5a347c6342246'),
(1538, 148, 'hero_title', ''),
(1539, 148, '_hero_title', 'field_5a346f21f058e'),
(1540, 148, 'hero_supporting_text', ''),
(1541, 148, '_hero_supporting_text', 'field_5a346f38f058f'),
(1542, 148, 'button_text', ''),
(1543, 148, '_button_text', 'field_5a347c52cf4a8'),
(1544, 148, 'button_link', '13'),
(1545, 148, '_button_link', 'field_5a347c6342246'),
(1546, 148, '_edit_lock', '1513952460:1'),
(1547, 150, '_menu_item_type', 'post_type'),
(1548, 150, '_menu_item_menu_item_parent', '0'),
(1549, 150, '_menu_item_object_id', '148'),
(1550, 150, '_menu_item_object', 'page'),
(1551, 150, '_menu_item_target', ''),
(1552, 150, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1553, 150, '_menu_item_xfn', ''),
(1554, 150, '_menu_item_url', ''),
(1556, 151, '_edit_last', '1'),
(1557, 151, 'field_5a39716f15df5', 'a:14:{s:3:"key";s:19:"field_5a39716f15df5";s:5:"label";s:5:"Aroma";s:4:"name";s:5:"aroma";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(1558, 151, 'field_5a3971c215df6', 'a:14:{s:3:"key";s:19:"field_5a3971c215df6";s:5:"label";s:7:"Lineage";s:4:"name";s:7:"lineage";s:4:"type";s:4:"text";s:12:"instructions";s:65:"Place the two parent crosses to produce this strain in this field";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(1559, 151, 'field_5a3971e815df7', 'a:12:{s:3:"key";s:19:"field_5a3971e815df7";s:5:"label";s:14:"Strain Effects";s:4:"name";s:14:"strain_effects";s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:7:"choices";a:4:{s:7:"relaxed";s:7:"Relaxed";s:6:"sleepy";s:6:"Sleepy";s:5:"happy";s:5:"Happy";s:6:"hungry";s:6:"Hungry";}s:13:"default_value";s:0:"";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(1578, 151, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"strains";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1561, 151, 'position', 'acf_after_title'),
(1562, 151, 'layout', 'no_box'),
(1563, 151, 'hide_on_screen', ''),
(1564, 151, '_edit_lock', '1513714920:1'),
(1566, 111, 'aroma', 'Grape and Berry'),
(1567, 111, '_aroma', 'field_5a39716f15df5'),
(1568, 111, 'lineage', 'Purple Urkle and Big Bud'),
(1569, 111, '_lineage', 'field_5a3971c215df6'),
(1572, 111, 'strain_effects', 'a:4:{i:0;s:7:"relaxed";i:1;s:6:"sleepy";i:2;s:5:"happy";i:3;s:6:"hungry";}'),
(1573, 111, '_strain_effects', 'field_5a3971e815df7'),
(1574, 152, '_wp_attached_file', '2017/12/grandaddypurp.jpg'),
(1575, 152, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1152;s:4:"file";s:25:"2017/12/grandaddypurp.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"grandaddypurp-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"grandaddypurp-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"grandaddypurp-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"grandaddypurp-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"grandaddypurp-250x150.jpg";s:5:"width";i:250;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1665, 161, 'hero_title', 'About Us'),
(1666, 161, '_hero_title', 'field_5a346f21f058e'),
(1667, 161, 'hero_supporting_text', 'This is a small sentence about the current page'),
(1668, 161, '_hero_supporting_text', 'field_5a346f38f058f'),
(1669, 161, 'button_text', 'Text'),
(1670, 161, '_button_text', 'field_5a347c52cf4a8'),
(1671, 161, 'button_link', '13'),
(1672, 161, '_button_link', 'field_5a347c6342246'),
(1673, 13, 'button_text', 'Text'),
(1674, 13, '_button_text', 'field_5a347c52cf4a8'),
(1675, 13, 'button_link', '13'),
(1676, 13, '_button_link', 'field_5a347c6342246'),
(1677, 163, '_edit_last', '1'),
(1678, 163, '_edit_lock', '1514917551:1'),
(1679, 163, '_wp_page_template', 'archive-strains.php'),
(1680, 164, 'hero_title', ''),
(1681, 164, '_hero_title', 'field_5a346f21f058e'),
(1682, 164, 'hero_supporting_text', ''),
(1683, 164, '_hero_supporting_text', 'field_5a346f38f058f'),
(1684, 164, 'button_text', ''),
(1685, 164, '_button_text', 'field_5a347c52cf4a8'),
(1686, 164, 'button_link', '13'),
(1687, 164, '_button_link', 'field_5a347c6342246'),
(1688, 163, 'hero_title', 'Our Products'),
(1689, 163, '_hero_title', 'field_5a346f21f058e'),
(1690, 163, 'hero_supporting_text', 'See all of our latest Strains'),
(1691, 163, '_hero_supporting_text', 'field_5a346f38f058f'),
(1692, 163, 'button_text', ''),
(1693, 163, '_button_text', 'field_5a347c52cf4a8'),
(1694, 163, 'button_link', '163'),
(1695, 163, '_button_link', 'field_5a347c6342246'),
(1696, 165, '_menu_item_type', 'post_type'),
(1697, 165, '_menu_item_menu_item_parent', '0'),
(1698, 165, '_menu_item_object_id', '163'),
(1699, 165, '_menu_item_object', 'page'),
(1700, 165, '_menu_item_target', ''),
(1701, 165, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1702, 165, '_menu_item_xfn', ''),
(1703, 165, '_menu_item_url', ''),
(1710, 166, '_strain_effects', 'field_5a3971e815df7'),
(1711, 166, 'strain_color', '789bd1'),
(1712, 166, '_strain_color', 'field_5a3973f81c736'),
(1713, 163, '_thumbnail_id', '7'),
(1714, 167, 'hero_title', 'Our Products'),
(1715, 167, '_hero_title', 'field_5a346f21f058e'),
(1716, 167, 'hero_supporting_text', 'See all of our latest Strains'),
(1717, 167, '_hero_supporting_text', 'field_5a346f38f058f'),
(1718, 167, 'button_text', ''),
(1719, 167, '_button_text', 'field_5a347c52cf4a8'),
(1720, 167, 'button_link', '13'),
(1721, 167, '_button_link', 'field_5a347c6342246'),
(1722, 168, 'hero_title', 'Our Products'),
(1723, 168, '_hero_title', 'field_5a346f21f058e'),
(1724, 168, 'hero_supporting_text', 'See all of our latest Strains'),
(1725, 168, '_hero_supporting_text', 'field_5a346f38f058f'),
(1726, 168, 'button_text', 'Latest Strain'),
(1727, 168, '_button_text', 'field_5a347c52cf4a8'),
(1728, 168, 'button_link', '163'),
(1729, 168, '_button_link', 'field_5a347c6342246'),
(1738, 170, 'aroma', 'Grape and Berry'),
(1730, 169, 'hero_title', 'Our Products'),
(1731, 169, '_hero_title', 'field_5a346f21f058e'),
(1732, 169, 'hero_supporting_text', 'See all of our latest Strains'),
(1733, 169, '_hero_supporting_text', 'field_5a346f38f058f'),
(1734, 169, 'button_text', ''),
(1735, 169, '_button_text', 'field_5a347c52cf4a8'),
(1736, 169, 'button_link', '163'),
(1737, 169, '_button_link', 'field_5a347c6342246'),
(1739, 170, '_aroma', 'field_5a39716f15df5'),
(1740, 170, 'lineage', 'Purple Urkle and Big Bud'),
(1741, 170, '_lineage', 'field_5a3971c215df6'),
(1742, 170, 'strain_effects', 'a:4:{i:0;s:7:"relaxed";i:1;s:6:"sleepy";i:2;s:5:"happy";i:3;s:6:"hungry";}'),
(1743, 170, '_strain_effects', 'field_5a3971e815df7'),
(1744, 170, 'strain_color', '789bd1'),
(1745, 170, '_strain_color', 'field_5a3973f81c736'),
(1746, 13, 'fg_temp_metadata', ''),
(1747, 111, 'fg_temp_metadata', '160,7,171'),
(1748, 111, 'fg_perm_metadata', '160,7,171'),
(1749, 171, '_wp_attached_file', '2017/12/medicalmarijuana-atomazul-shutterstock_170303738.jpg'),
(1750, 171, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:800;s:4:"file";s:60:"2017/12/medicalmarijuana-atomazul-shutterstock_170303738.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:60:"medicalmarijuana-atomazul-shutterstock_170303738-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:60:"medicalmarijuana-atomazul-shutterstock_170303738-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:60:"medicalmarijuana-atomazul-shutterstock_170303738-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:61:"medicalmarijuana-atomazul-shutterstock_170303738-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:60:"medicalmarijuana-atomazul-shutterstock_170303738-250x167.jpg";s:5:"width";i:250;s:6:"height";i:167;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-11-13 23:48:29', '2017-11-13 23:48:29', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-11-13 23:48:29', '2017-11-13 23:48:29', '', 0, 'http://localhost/greenhaven/?p=1', 0, 'post', '', 1),
(131, 1, '2017-12-19 03:27:10', '2017-12-19 03:27:10', '', 'Retailers', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2017-12-19 03:27:10', '2017-12-19 03:27:10', '', 129, 'http://localhost/greenhaven/2017/12/19/129-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2017-12-19 03:27:18', '2017-12-19 03:27:18', '', 'Become a Retailer', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2017-12-19 03:27:18', '2017-12-19 03:27:18', '', 129, 'http://localhost/greenhaven/2017/12/19/129-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2017-12-19 03:27:28', '2017-12-19 03:27:28', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2017-12-19 03:27:28', '2017-12-19 03:27:28', '', 129, 'http://localhost/greenhaven/2017/12/19/129-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2017-12-19 03:27:39', '2017-12-19 03:27:39', '', 'Become a Retailer', '', 'publish', 'closed', 'closed', '', 'become-a-retailer', '', '', '2017-12-19 03:27:39', '2017-12-19 03:27:39', '', 0, 'http://localhost/greenhaven/?page_id=134', 0, 'page', '', 0),
(135, 1, '2017-12-19 03:27:39', '2017-12-19 03:27:39', '', 'Become a Retailer', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2017-12-19 03:27:39', '2017-12-19 03:27:39', '', 134, 'http://localhost/greenhaven/2017/12/19/134-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2017-12-19 03:27:51', '2017-12-19 03:27:51', '', 'Retailers', '', 'publish', 'closed', 'closed', '', 'retailers', '', '', '2017-12-19 03:27:51', '2017-12-19 03:27:51', '', 0, 'http://localhost/greenhaven/?page_id=136', 0, 'page', '', 0),
(20, 1, '2017-12-16 00:58:18', '2017-12-16 00:58:18', '', 'Hero', '', 'publish', 'closed', 'closed', '', 'acf_hero', '', '', '2017-12-16 01:56:06', '2017-12-16 01:56:06', '', 0, 'http://localhost/greenhaven/?post_type=acf&#038;p=20', 0, 'acf', '', 0),
(4, 1, '2017-11-14 00:02:34', '2017-11-14 00:02:34', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Home', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-12-19 20:49:26', '2017-12-19 20:49:26', '', 0, 'http://localhost/greenhaven/?page_id=4', 0, 'page', '', 0),
(5, 1, '2017-11-14 00:02:34', '2017-11-14 00:02:34', '', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-11-14 00:02:34', '2017-11-14 00:02:34', '', 4, 'http://localhost/greenhaven/2017/11/14/4-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2017-12-08 02:54:47', '2017-12-08 02:54:47', '', 'la-ed-medical-marijuana-20170909', '', 'inherit', 'open', 'closed', '', 'la-ed-medical-marijuana-20170909', '', '', '2017-12-08 02:54:47', '2017-12-08 02:54:47', '', 4, 'http://localhost/greenhaven/wp-content/uploads/2017/11/la-ed-medical-marijuana-20170909.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2017-12-08 02:56:25', '2017-12-08 02:56:25', '', 'Get to know Green Haven', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-12-08 02:56:25', '2017-12-08 02:56:25', '', 4, 'http://localhost/greenhaven/2017/12/08/4-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2017-12-08 03:01:22', '2017-12-08 03:01:22', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Get to know Green Haven', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-12-08 03:01:22', '2017-12-08 03:01:22', '', 4, 'http://localhost/greenhaven/2017/12/08/4-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2017-12-08 03:08:54', '2017-12-08 03:08:54', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Get to know Green Haven', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-12-08 03:08:54', '2017-12-08 03:08:54', '', 4, 'http://localhost/greenhaven/2017/12/08/4-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2017-12-09 01:37:16', '2017-12-09 01:37:16', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Home', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-12-09 01:37:16', '2017-12-09 01:37:16', '', 4, 'http://localhost/greenhaven/2017/12/09/4-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2017-12-15 00:40:59', '2017-12-15 00:40:59', '<div>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2017-12-22 14:28:57', '2017-12-22 14:28:57', '', 0, 'http://localhost/greenhaven/?page_id=13', 0, 'page', '', 0),
(14, 1, '2017-12-15 00:40:59', '2017-12-15 00:40:59', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-12-15 00:40:59', '2017-12-15 00:40:59', '', 13, 'http://localhost/greenhaven/2017/12/15/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2017-12-15 00:41:30', '2017-12-15 00:41:30', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2017-12-29 19:08:49', '2017-12-29 19:08:49', '', 0, 'http://localhost/greenhaven/?p=15', 1, 'nav_menu_item', '', 0),
(138, 1, '2017-12-19 03:28:44', '2017-12-19 03:28:44', ' ', '', '', 'publish', 'closed', 'closed', '', '138', '', '', '2017-12-19 03:32:28', '2017-12-19 03:32:28', '', 0, 'http://localhost/greenhaven/?p=138', 1, 'nav_menu_item', '', 0),
(137, 1, '2017-12-19 03:27:51', '2017-12-19 03:27:51', '', 'Retailers', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2017-12-19 03:27:51', '2017-12-19 03:27:51', '', 136, 'http://localhost/greenhaven/2017/12/19/136-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2017-12-15 00:54:03', '2017-12-15 00:54:03', '<div>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-12-15 00:54:03', '2017-12-15 00:54:03', '', 13, 'http://localhost/greenhaven/2017/12/15/13-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2017-12-15 00:49:17', '2017-12-15 00:49:17', '<div>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div>\r\n<h2>Why do we use it?</h2>\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-12-15 00:49:17', '2017-12-15 00:49:17', '', 13, 'http://localhost/greenhaven/2017/12/15/13-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2017-12-16 00:59:21', '2017-12-16 00:59:21', '<div>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-12-16 00:59:21', '2017-12-16 00:59:21', '', 13, 'http://localhost/greenhaven/2017/12/16/13-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2017-12-16 01:07:27', '2017-12-16 01:07:27', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Home', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-12-16 01:07:27', '2017-12-16 01:07:27', '', 4, 'http://localhost/greenhaven/2017/12/16/4-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2017-12-16 01:23:45', '2017-12-16 01:23:45', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Home', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-12-16 01:23:45', '2017-12-16 01:23:45', '', 4, 'http://localhost/greenhaven/2017/12/16/4-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2017-12-16 01:24:25', '2017-12-16 01:24:25', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Home', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-12-16 01:24:25', '2017-12-16 01:24:25', '', 4, 'http://localhost/greenhaven/2017/12/16/4-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2017-12-16 01:24:48', '2017-12-16 01:24:48', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Home', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-12-16 01:24:48', '2017-12-16 01:24:48', '', 4, 'http://localhost/greenhaven/2017/12/16/4-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2017-12-19 03:26:57', '2017-12-19 03:26:57', '', 'Packaging Options', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2017-12-19 03:26:57', '2017-12-19 03:26:57', '', 125, 'http://localhost/greenhaven/2017/12/19/125-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2017-12-19 03:27:04', '2017-12-19 03:27:04', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2017-12-19 03:27:28', '2017-12-19 03:27:28', '', 0, 'http://localhost/greenhaven/?page_id=129', 0, 'page', '', 0),
(130, 1, '2017-12-19 03:27:04', '2017-12-19 03:27:04', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2017-12-19 03:27:04', '2017-12-19 03:27:04', '', 129, 'http://localhost/greenhaven/2017/12/19/129-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2017-12-18 01:11:19', '2017-12-18 01:11:19', '', 'Contact Us Callout', '', 'publish', 'closed', 'closed', '', 'acf_contact-us-callout', '', '', '2017-12-18 01:15:07', '2017-12-18 01:15:07', '', 0, 'http://localhost/greenhaven/?post_type=acf&#038;p=119', 0, 'acf', '', 0),
(120, 1, '2017-12-18 01:15:44', '2017-12-18 01:15:44', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Home', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-12-18 01:15:44', '2017-12-18 01:15:44', '', 4, 'http://localhost/greenhaven/2017/12/18/4-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2017-12-16 01:37:16', '2017-12-16 01:37:16', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Single #1', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-single-1', '', '', '2017-12-16 01:37:21', '2017-12-16 01:37:21', '', 0, 'http://localhost/greenhaven/product/import-placeholder-for-woo-single-1/', 0, 'product', '', 0),
(33, 1, '2017-12-16 01:37:16', '2017-12-16 01:37:16', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Single #2', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-single-2', '', '', '2017-12-16 01:37:19', '2017-12-16 01:37:19', '', 0, 'http://localhost/greenhaven/product/import-placeholder-for-woo-single-2/', 0, 'product', '', 0),
(34, 1, '2017-12-16 01:37:16', '2017-12-16 01:37:16', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #1', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-1', '', '', '2017-12-16 01:37:27', '2017-12-16 01:37:27', '', 0, 'http://localhost/greenhaven/product/import-placeholder-for-woo-album-1/', 0, 'product', '', 0),
(35, 1, '2017-12-16 01:37:16', '2017-12-16 01:37:16', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #2', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-2', '', '', '2017-12-16 01:37:25', '2017-12-16 01:37:25', '', 0, 'http://localhost/greenhaven/product/import-placeholder-for-woo-album-2/', 0, 'product', '', 0),
(36, 1, '2017-12-16 01:37:17', '2017-12-16 01:37:17', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #3', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-3', '', '', '2017-12-16 01:37:24', '2017-12-16 01:37:24', '', 0, 'http://localhost/greenhaven/product/import-placeholder-for-woo-album-3/', 0, 'product', '', 0),
(37, 1, '2017-12-16 01:37:17', '2017-12-16 01:37:17', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Logo', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-logo-3', '', '', '2017-12-16 01:37:55', '2017-12-16 01:37:55', '', 0, 'http://localhost/greenhaven/product/import-placeholder-for-t-shirt-woo-logo/', 0, 'product', '', 0),
(38, 1, '2017-12-16 01:37:17', '2017-12-16 01:37:17', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Logo', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-logo-2', '', '', '2017-12-16 01:37:35', '2017-12-16 01:37:35', '', 0, 'http://localhost/greenhaven/product/import-placeholder-for-hoodie-woo-logo/', 0, 'product', '', 0),
(39, 1, '2017-12-16 01:37:17', '2017-12-16 01:37:17', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-ninja-3', '', '', '2017-12-16 01:37:48', '2017-12-16 01:37:48', '', 0, 'http://localhost/greenhaven/product/import-placeholder-for-t-shirt-woo-ninja/', 0, 'product', '', 0),
(40, 1, '2017-12-16 01:37:17', '2017-12-16 01:37:17', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-ninja-2', '', '', '2017-12-16 01:37:41', '2017-12-16 01:37:41', '', 0, 'http://localhost/greenhaven/product/import-placeholder-for-hoodie-woo-ninja/', 0, 'product', '', 0),
(41, 1, '2017-12-16 01:37:17', '2017-12-16 01:37:17', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Premium Quality', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'premium-quality-2', '', '', '2017-12-16 01:37:54', '2017-12-16 01:37:54', '', 0, 'http://localhost/greenhaven/product/import-placeholder-for-t-shirt-premium-quality/', 0, 'product', '', 0),
(42, 1, '2017-12-16 01:37:17', '2017-12-16 01:37:17', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ship Your Idea', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ship-your-idea-3', '', '', '2017-12-16 01:37:52', '2017-12-16 01:37:52', '', 0, 'http://localhost/greenhaven/product/import-placeholder-for-t-shirt-ship-your-idea/', 0, 'product', '', 0),
(43, 1, '2017-12-16 01:37:17', '2017-12-16 01:37:17', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ship Your Idea', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ship-your-idea-2', '', '', '2017-12-16 01:37:44', '2017-12-16 01:37:44', '', 0, 'http://localhost/greenhaven/product/import-placeholder-for-hoodie-ship-your-idea/', 0, 'product', '', 0),
(44, 1, '2017-12-16 01:37:17', '2017-12-16 01:37:17', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ninja Silhouette', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ninja-silhouette-2', '', '', '2017-12-16 01:37:49', '2017-12-16 01:37:49', '', 0, 'http://localhost/greenhaven/product/import-placeholder-for-t-shirt-ninja-silhouette/', 0, 'product', '', 0),
(45, 1, '2017-12-16 01:37:18', '2017-12-16 01:37:18', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Happy Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'happy-ninja-2', '', '', '2017-12-16 01:37:46', '2017-12-16 01:37:46', '', 0, 'http://localhost/greenhaven/product/import-placeholder-for-t-shirt-happy-ninja/', 0, 'product', '', 0),
(46, 1, '2017-12-16 01:37:18', '2017-12-16 01:37:18', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Happy Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'happy-ninja', '', '', '2017-12-16 01:37:38', '2017-12-16 01:37:38', '', 0, 'http://localhost/greenhaven/product/import-placeholder-for-hoodie-happy-ninja/', 0, 'product', '', 0),
(47, 1, '2017-12-16 01:37:18', '2017-12-16 01:37:18', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ninja Silhouette', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'closed', 'closed', '', 'ninja-silhouette', '', '', '2017-12-16 01:37:36', '2017-12-16 01:37:36', '', 0, 'http://localhost/greenhaven/product/import-placeholder-for-hoodie-ninja-silhouette/', 0, 'product', '', 0),
(153, 1, '2017-12-19 20:54:12', '2017-12-19 20:54:12', '<header class="heading--article">\r\n<p class="heading--md heading-md--lg"> Introduced in 2003 by Ken Estes, Granddaddy Purple (or GDP) is a famous <a href="http://www.leafly.com/indica">indica</a> cross between <a href="http://www.leafly.com/indica/purple-urkle">Purple Urkle</a> and <a href="http://www.leafly.com/hybrid/big-bud">Big Bud</a>. This California staple inherits a complex <a href="http://www.leafly.com/explore/flavors-grape">grape</a> and <a href="http://www.leafly.com/explore/flavors-berry">berry</a> aroma from its Purple Urkle parent, while Big Bud passes on its oversized, compact bud structure. GDP flowers bloom in shades of deep purple, a contrastive backdrop for its snow-like dusting of white crystal resin.</p>\r\n\r\n</header>\r\n<div class="description-wrapper">\r\n<div class="description">\r\n\r\nIts potent psychoactive effects are clearly detectable in both mind and body, delivering a fusion of cerebral <a href="http://www.leafly.com/explore/tags-euphoric">euphoria</a> and physical <a href="http://www.leafly.com/explore/tags-relaxed">relaxation</a>. While your thoughts may float in a dreamy buzz, your body is more likely to find itself fixed in one spot for the duration of GDP’s effects. Like most heavy indica varieties, Granddaddy Purple is typically pulled off the shelf to treat <a href="http://www.leafly.com/explore/symptoms-pain">pain</a>, <a href="http://www.leafly.com/explore/symptoms-stress">stress</a>, <a href="http://www.leafly.com/explore/symptoms-insomnia">insomnia</a>, <a href="http://www.leafly.com/explore/symptoms-lack-of-appetite">appetite loss</a>, and <a href="http://www.leafly.com/explore/symptoms-muscle-spasms">muscle spasms</a>. GDP blesses growers with massive commercial yields which are ready for harvest following a 60 day flowering time indoors.\r\n\r\n</div>\r\n</div>', 'Grandaddy Purple', '', 'publish', 'closed', 'closed', '', 'grandaddy-purple-copy', '', '', '2017-12-20 01:20:14', '2017-12-20 01:20:14', '', 0, 'http://localhost/greenhaven/strains/grandaddy-purple-copy/', 0, 'strains', '', 0),
(52, 1, '2017-12-16 01:37:21', '2017-12-16 01:37:21', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Singles', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-singles', '', '', '2017-12-16 01:37:21', '2017-12-16 01:37:21', '', 0, 'http://localhost/greenhaven/product/woo-singles/', 0, 'product', '', 0),
(55, 1, '2017-12-16 01:37:22', '2017-12-16 01:37:22', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #4', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-4', '', '', '2017-12-16 01:37:22', '2017-12-16 01:37:22', '', 0, 'http://localhost/greenhaven/product/woo-album-4/', 0, 'product', '', 0),
(154, 1, '2017-12-19 20:54:15', '2017-12-19 20:54:15', '<header class="heading--article">\r\n<p class="heading--md heading-md--lg"> Introduced in 2003 by Ken Estes, Granddaddy Purple (or GDP) is a famous <a href="http://www.leafly.com/indica">indica</a> cross between <a href="http://www.leafly.com/indica/purple-urkle">Purple Urkle</a> and <a href="http://www.leafly.com/hybrid/big-bud">Big Bud</a>. This California staple inherits a complex <a href="http://www.leafly.com/explore/flavors-grape">grape</a> and <a href="http://www.leafly.com/explore/flavors-berry">berry</a> aroma from its Purple Urkle parent, while Big Bud passes on its oversized, compact bud structure. GDP flowers bloom in shades of deep purple, a contrastive backdrop for its snow-like dusting of white crystal resin.</p>\r\n\r\n</header>\r\n<div class="description-wrapper">\r\n<div class="description">\r\n\r\nIts potent psychoactive effects are clearly detectable in both mind and body, delivering a fusion of cerebral <a href="http://www.leafly.com/explore/tags-euphoric">euphoria</a> and physical <a href="http://www.leafly.com/explore/tags-relaxed">relaxation</a>. While your thoughts may float in a dreamy buzz, your body is more likely to find itself fixed in one spot for the duration of GDP’s effects. Like most heavy indica varieties, Granddaddy Purple is typically pulled off the shelf to treat <a href="http://www.leafly.com/explore/symptoms-pain">pain</a>, <a href="http://www.leafly.com/explore/symptoms-stress">stress</a>, <a href="http://www.leafly.com/explore/symptoms-insomnia">insomnia</a>, <a href="http://www.leafly.com/explore/symptoms-lack-of-appetite">appetite loss</a>, and <a href="http://www.leafly.com/explore/symptoms-muscle-spasms">muscle spasms</a>. GDP blesses growers with massive commercial yields which are ready for harvest following a 60 day flowering time indoors.\r\n\r\n</div>\r\n</div>', 'Green Crack', '', 'publish', 'closed', 'closed', '', 'grandaddy-purple-copy-2', '', '', '2017-12-20 01:25:53', '2017-12-20 01:25:53', '', 0, 'http://localhost/greenhaven/strains/grandaddy-purple-copy-2/', 0, 'strains', '', 0),
(64, 1, '2017-12-16 01:37:28', '2017-12-16 01:37:28', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Logo', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-logo', '', '', '2017-12-16 01:37:28', '2017-12-16 01:37:28', '', 0, 'http://localhost/greenhaven/product/woo-logo/', 0, 'product', '', 0),
(67, 1, '2017-12-16 01:37:29', '2017-12-16 01:37:29', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-ninja', '', '', '2017-12-16 01:37:29', '2017-12-16 01:37:29', '', 0, 'http://localhost/greenhaven/product/woo-ninja/', 0, 'product', '', 0),
(70, 1, '2017-12-16 01:37:31', '2017-12-16 01:37:31', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Premium Quality', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'premium-quality', '', '', '2017-12-16 01:37:31', '2017-12-16 01:37:31', '', 0, 'http://localhost/greenhaven/product/premium-quality/', 0, 'product', '', 0),
(73, 1, '2017-12-16 01:37:32', '2017-12-16 01:37:32', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Flying Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'flying-ninja', '', '', '2017-12-16 01:37:32', '2017-12-16 01:37:32', '', 0, 'http://localhost/greenhaven/product/flying-ninja/', 0, 'product', '', 0),
(155, 1, '2017-12-19 20:54:17', '2017-12-19 20:54:17', '<header class="heading--article">\r\n<p class="heading--md heading-md--lg"> Introduced in 2003 by Ken Estes, Granddaddy Purple (or GDP) is a famous <a href="http://www.leafly.com/indica">indica</a> cross between <a href="http://www.leafly.com/indica/purple-urkle">Purple Urkle</a> and <a href="http://www.leafly.com/hybrid/big-bud">Big Bud</a>. This California staple inherits a complex <a href="http://www.leafly.com/explore/flavors-grape">grape</a> and <a href="http://www.leafly.com/explore/flavors-berry">berry</a> aroma from its Purple Urkle parent, while Big Bud passes on its oversized, compact bud structure. GDP flowers bloom in shades of deep purple, a contrastive backdrop for its snow-like dusting of white crystal resin.</p>\r\n\r\n</header>\r\n<div class="description-wrapper">\r\n<div class="description">\r\n\r\nIts potent psychoactive effects are clearly detectable in both mind and body, delivering a fusion of cerebral <a href="http://www.leafly.com/explore/tags-euphoric">euphoria</a> and physical <a href="http://www.leafly.com/explore/tags-relaxed">relaxation</a>. While your thoughts may float in a dreamy buzz, your body is more likely to find itself fixed in one spot for the duration of GDP’s effects. Like most heavy indica varieties, Granddaddy Purple is typically pulled off the shelf to treat <a href="http://www.leafly.com/explore/symptoms-pain">pain</a>, <a href="http://www.leafly.com/explore/symptoms-stress">stress</a>, <a href="http://www.leafly.com/explore/symptoms-insomnia">insomnia</a>, <a href="http://www.leafly.com/explore/symptoms-lack-of-appetite">appetite loss</a>, and <a href="http://www.leafly.com/explore/symptoms-muscle-spasms">muscle spasms</a>. GDP blesses growers with massive commercial yields which are ready for harvest following a 60 day flowering time indoors.\r\n\r\n</div>\r\n</div>', 'Blue Dream', '', 'publish', 'closed', 'closed', '', 'grandaddy-purple-copy-3', '', '', '2017-12-20 01:25:11', '2017-12-20 01:25:11', '', 0, 'http://localhost/greenhaven/strains/grandaddy-purple-copy-3/', 0, 'strains', '', 0),
(76, 1, '2017-12-16 01:37:33', '2017-12-16 01:37:33', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ship Your Idea', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ship-your-idea', '', '', '2017-12-16 01:37:33', '2017-12-16 01:37:33', '', 0, 'http://localhost/greenhaven/product/ship-your-idea/', 0, 'product', '', 0),
(85, 1, '2017-12-16 01:37:40', '2017-12-16 01:37:40', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Patient Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'patient-ninja', '', '', '2017-12-16 01:37:40', '2017-12-16 01:37:40', '', 0, 'http://localhost/greenhaven/product/patient-ninja/', 0, 'product', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(156, 1, '2017-12-19 20:54:18', '2017-12-19 20:54:18', '<header class="heading--article">\r\n<p class="heading--md heading-md--lg"> Introduced in 2003 by Ken Estes, Granddaddy Purple (or GDP) is a famous <a href="http://www.leafly.com/indica">indica</a> cross between <a href="http://www.leafly.com/indica/purple-urkle">Purple Urkle</a> and <a href="http://www.leafly.com/hybrid/big-bud">Big Bud</a>. This California staple inherits a complex <a href="http://www.leafly.com/explore/flavors-grape">grape</a> and <a href="http://www.leafly.com/explore/flavors-berry">berry</a> aroma from its Purple Urkle parent, while Big Bud passes on its oversized, compact bud structure. GDP flowers bloom in shades of deep purple, a contrastive backdrop for its snow-like dusting of white crystal resin.</p>\r\n\r\n</header>\r\n<div class="description-wrapper">\r\n<div class="description">\r\n\r\nIts potent psychoactive effects are clearly detectable in both mind and body, delivering a fusion of cerebral <a href="http://www.leafly.com/explore/tags-euphoric">euphoria</a> and physical <a href="http://www.leafly.com/explore/tags-relaxed">relaxation</a>. While your thoughts may float in a dreamy buzz, your body is more likely to find itself fixed in one spot for the duration of GDP’s effects. Like most heavy indica varieties, Granddaddy Purple is typically pulled off the shelf to treat <a href="http://www.leafly.com/explore/symptoms-pain">pain</a>, <a href="http://www.leafly.com/explore/symptoms-stress">stress</a>, <a href="http://www.leafly.com/explore/symptoms-insomnia">insomnia</a>, <a href="http://www.leafly.com/explore/symptoms-lack-of-appetite">appetite loss</a>, and <a href="http://www.leafly.com/explore/symptoms-muscle-spasms">muscle spasms</a>. GDP blesses growers with massive commercial yields which are ready for harvest following a 60 day flowering time indoors.\r\n\r\n</div>\r\n</div>', 'Grandaddy Purple', '', 'publish', 'closed', 'closed', '', 'grandaddy-purple-copy-4', '', '', '2017-12-20 01:19:54', '2017-12-20 01:19:54', '', 0, 'http://localhost/greenhaven/strains/grandaddy-purple-copy-4/', 0, 'strains', '', 0),
(92, 1, '2017-12-16 01:37:44', '2017-12-16 01:37:44', '', 'Ship Your Idea - Blue, XL', '', 'publish', 'closed', 'closed', '', 'ship-your-idea-blue-xl', '', '', '2017-12-16 01:37:44', '2017-12-16 01:37:44', '', 43, 'http://localhost/greenhaven/product/ship-your-idea-2/', 0, 'product_variation', '', 0),
(93, 1, '2017-12-16 01:37:45', '2017-12-16 01:37:45', '', 'Ship Your Idea - Black, L', '', 'publish', 'closed', 'closed', '', 'ship-your-idea-black-l', '', '', '2017-12-16 01:37:45', '2017-12-16 01:37:45', '', 43, 'http://localhost/greenhaven/product/ship-your-idea-2/', 0, 'product_variation', '', 0),
(157, 1, '2017-12-19 20:54:20', '2017-12-19 20:54:20', '<header class="heading--article">\r\n<p class="heading--md heading-md--lg"> Introduced in 2003 by Ken Estes, Granddaddy Purple (or GDP) is a famous <a href="http://www.leafly.com/indica">indica</a> cross between <a href="http://www.leafly.com/indica/purple-urkle">Purple Urkle</a> and <a href="http://www.leafly.com/hybrid/big-bud">Big Bud</a>. This California staple inherits a complex <a href="http://www.leafly.com/explore/flavors-grape">grape</a> and <a href="http://www.leafly.com/explore/flavors-berry">berry</a> aroma from its Purple Urkle parent, while Big Bud passes on its oversized, compact bud structure. GDP flowers bloom in shades of deep purple, a contrastive backdrop for its snow-like dusting of white crystal resin.</p>\r\n\r\n</header>\r\n<div class="description-wrapper">\r\n<div class="description">\r\n\r\nIts potent psychoactive effects are clearly detectable in both mind and body, delivering a fusion of cerebral <a href="http://www.leafly.com/explore/tags-euphoric">euphoria</a> and physical <a href="http://www.leafly.com/explore/tags-relaxed">relaxation</a>. While your thoughts may float in a dreamy buzz, your body is more likely to find itself fixed in one spot for the duration of GDP’s effects. Like most heavy indica varieties, Granddaddy Purple is typically pulled off the shelf to treat <a href="http://www.leafly.com/explore/symptoms-pain">pain</a>, <a href="http://www.leafly.com/explore/symptoms-stress">stress</a>, <a href="http://www.leafly.com/explore/symptoms-insomnia">insomnia</a>, <a href="http://www.leafly.com/explore/symptoms-lack-of-appetite">appetite loss</a>, and <a href="http://www.leafly.com/explore/symptoms-muscle-spasms">muscle spasms</a>. GDP blesses growers with massive commercial yields which are ready for harvest following a 60 day flowering time indoors.\r\n\r\n</div>\r\n</div>', 'Sour Diesel', '', 'publish', 'closed', 'closed', '', 'grandaddy-purple-copy-5', '', '', '2018-01-02 16:41:58', '2018-01-02 16:41:58', '', 0, 'http://localhost/greenhaven/strains/grandaddy-purple-copy-5/', 0, 'strains', '', 0),
(105, 1, '2017-12-16 01:37:52', '2017-12-16 01:37:52', '', 'Ship Your Idea - Green', '', 'publish', 'closed', 'closed', '', 'ship-your-idea-green', '', '', '2017-12-16 01:37:52', '2017-12-16 01:37:52', '', 42, 'http://localhost/greenhaven/product/ship-your-idea-3/', 0, 'product_variation', '', 0),
(106, 1, '2017-12-16 01:37:53', '2017-12-16 01:37:53', '', 'Ship Your Idea - Black', '', 'publish', 'closed', 'closed', '', 'ship-your-idea-black', '', '', '2017-12-16 01:37:53', '2017-12-16 01:37:53', '', 42, 'http://localhost/greenhaven/product/ship-your-idea-3/', 0, 'product_variation', '', 0),
(111, 1, '2017-12-16 01:47:07', '2017-12-16 01:47:07', '<header class="heading--article">\r\n<p class="heading--md heading-md--lg"> Introduced in 2003 by Ken Estes, Granddaddy Purple (or GDP) is a famous <a href="http://www.leafly.com/indica">indica</a> cross between <a href="http://www.leafly.com/indica/purple-urkle">Purple Urkle</a> and <a href="http://www.leafly.com/hybrid/big-bud">Big Bud</a>. This California staple inherits a complex <a href="http://www.leafly.com/explore/flavors-grape">grape</a> and <a href="http://www.leafly.com/explore/flavors-berry">berry</a> aroma from its Purple Urkle parent, while Big Bud passes on its oversized, compact bud structure. GDP flowers bloom in shades of deep purple, a contrastive backdrop for its snow-like dusting of white crystal resin.</p>\r\n\r\n</header>\r\n<div class="description-wrapper">\r\n<div class="description">\r\n\r\nIts potent psychoactive effects are clearly detectable in both mind and body, delivering a fusion of cerebral <a href="http://www.leafly.com/explore/tags-euphoric">euphoria</a> and physical <a href="http://www.leafly.com/explore/tags-relaxed">relaxation</a>. While your thoughts may float in a dreamy buzz, your body is more likely to find itself fixed in one spot for the duration of GDP’s effects. Like most heavy indica varieties, Granddaddy Purple is typically pulled off the shelf to treat <a href="http://www.leafly.com/explore/symptoms-pain">pain</a>, <a href="http://www.leafly.com/explore/symptoms-stress">stress</a>, <a href="http://www.leafly.com/explore/symptoms-insomnia">insomnia</a>, <a href="http://www.leafly.com/explore/symptoms-lack-of-appetite">appetite loss</a>, and <a href="http://www.leafly.com/explore/symptoms-muscle-spasms">muscle spasms</a>. GDP blesses growers with massive commercial yields which are ready for harvest following a 60 day flowering time indoors.\r\n\r\n</div>\r\n</div>', 'Grandaddy Purple', '', 'publish', 'closed', 'closed', '', 'grandaddy-purple', '', '', '2018-01-03 19:44:47', '2018-01-03 19:44:47', '', 0, 'http://localhost/greenhaven/?post_type=strains&#038;p=111', 0, 'strains', '', 0),
(112, 1, '2017-12-16 01:54:28', '2017-12-16 01:54:28', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Home', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-12-16 01:54:28', '2017-12-16 01:54:28', '', 4, 'http://localhost/greenhaven/2017/12/16/4-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2017-12-19 03:29:57', '2017-12-19 03:29:57', ' ', '', '', 'publish', 'closed', 'closed', '', '142', '', '', '2017-12-19 03:32:11', '2017-12-19 03:32:11', '', 0, 'http://localhost/greenhaven/?p=142', 3, 'nav_menu_item', '', 0),
(140, 1, '2017-12-19 03:29:57', '2017-12-19 03:29:57', ' ', '', '', 'publish', 'closed', 'closed', '', '140', '', '', '2017-12-19 03:32:11', '2017-12-19 03:32:11', '', 0, 'http://localhost/greenhaven/?p=140', 1, 'nav_menu_item', '', 0),
(141, 1, '2017-12-19 03:29:57', '2017-12-19 03:29:57', ' ', '', '', 'publish', 'closed', 'closed', '', '141', '', '', '2017-12-19 03:32:11', '2017-12-19 03:32:11', '', 0, 'http://localhost/greenhaven/?p=141', 2, 'nav_menu_item', '', 0),
(139, 1, '2017-12-19 03:28:44', '2017-12-19 03:28:44', ' ', '', '', 'publish', 'closed', 'closed', '', '139', '', '', '2017-12-19 03:32:28', '2017-12-19 03:32:28', '', 0, 'http://localhost/greenhaven/?p=139', 2, 'nav_menu_item', '', 0),
(121, 1, '2017-12-19 03:26:25', '2017-12-19 03:26:25', '', 'Terms and Conditions', '', 'publish', 'closed', 'closed', '', 'terms-and-conditions', '', '', '2017-12-19 03:26:25', '2017-12-19 03:26:25', '', 0, 'http://localhost/greenhaven/?page_id=121', 0, 'page', '', 0),
(122, 1, '2017-12-19 03:26:25', '2017-12-19 03:26:25', '', 'Terms and Conditions', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2017-12-19 03:26:25', '2017-12-19 03:26:25', '', 121, 'http://localhost/greenhaven/2017/12/19/121-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2017-12-19 03:26:34', '2017-12-19 03:26:34', '', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2017-12-19 03:26:34', '2017-12-19 03:26:34', '', 0, 'http://localhost/greenhaven/?page_id=123', 0, 'page', '', 0),
(124, 1, '2017-12-19 03:26:34', '2017-12-19 03:26:34', '', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2017-12-19 03:26:34', '2017-12-19 03:26:34', '', 123, 'http://localhost/greenhaven/2017/12/19/123-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2017-12-19 03:26:42', '2017-12-19 03:26:42', '', 'Packaging Options', '', 'publish', 'closed', 'closed', '', 'legal-statement', '', '', '2017-12-19 03:26:57', '2017-12-19 03:26:57', '', 0, 'http://localhost/greenhaven/?page_id=125', 0, 'page', '', 0),
(126, 1, '2017-12-19 03:26:42', '2017-12-19 03:26:42', '', 'Legal Statement', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2017-12-19 03:26:42', '2017-12-19 03:26:42', '', 125, 'http://localhost/greenhaven/2017/12/19/125-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2017-12-19 03:26:49', '2017-12-19 03:26:49', '', 'Strain List', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2017-12-19 03:26:49', '2017-12-19 03:26:49', '', 125, 'http://localhost/greenhaven/2017/12/19/125-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2017-12-29 19:08:32', '2017-12-29 19:08:32', '', 'Our Products', '', 'publish', 'closed', 'closed', '', 'our-products', '', '', '2018-01-02 18:05:51', '2018-01-02 18:05:51', '', 0, 'http://localhost/greenhaven/?page_id=163', 0, 'page', '', 0),
(143, 1, '2017-12-19 03:35:22', '2017-12-19 03:35:22', ' ', '', '', 'publish', 'closed', 'closed', '', '143', '', '', '2017-12-19 03:35:22', '2017-12-19 03:35:22', '', 0, 'http://localhost/greenhaven/?p=143', 1, 'nav_menu_item', '', 0),
(166, 1, '2018-01-02 16:41:58', '2018-01-02 16:41:58', '<header class="heading--article">\r\n<p class="heading--md heading-md--lg"> Introduced in 2003 by Ken Estes, Granddaddy Purple (or GDP) is a famous <a href="http://www.leafly.com/indica">indica</a> cross between <a href="http://www.leafly.com/indica/purple-urkle">Purple Urkle</a> and <a href="http://www.leafly.com/hybrid/big-bud">Big Bud</a>. This California staple inherits a complex <a href="http://www.leafly.com/explore/flavors-grape">grape</a> and <a href="http://www.leafly.com/explore/flavors-berry">berry</a> aroma from its Purple Urkle parent, while Big Bud passes on its oversized, compact bud structure. GDP flowers bloom in shades of deep purple, a contrastive backdrop for its snow-like dusting of white crystal resin.</p>\r\n\r\n</header>\r\n<div class="description-wrapper">\r\n<div class="description">\r\n\r\nIts potent psychoactive effects are clearly detectable in both mind and body, delivering a fusion of cerebral <a href="http://www.leafly.com/explore/tags-euphoric">euphoria</a> and physical <a href="http://www.leafly.com/explore/tags-relaxed">relaxation</a>. While your thoughts may float in a dreamy buzz, your body is more likely to find itself fixed in one spot for the duration of GDP’s effects. Like most heavy indica varieties, Granddaddy Purple is typically pulled off the shelf to treat <a href="http://www.leafly.com/explore/symptoms-pain">pain</a>, <a href="http://www.leafly.com/explore/symptoms-stress">stress</a>, <a href="http://www.leafly.com/explore/symptoms-insomnia">insomnia</a>, <a href="http://www.leafly.com/explore/symptoms-lack-of-appetite">appetite loss</a>, and <a href="http://www.leafly.com/explore/symptoms-muscle-spasms">muscle spasms</a>. GDP blesses growers with massive commercial yields which are ready for harvest following a 60 day flowering time indoors.\r\n\r\n</div>\r\n</div>', 'Sour Diesel', '', 'inherit', 'closed', 'closed', '', '157-revision-v1', '', '', '2018-01-02 16:41:58', '2018-01-02 16:41:58', '', 157, 'http://localhost/greenhaven/2018/01/02/157-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2017-12-19 18:04:21', '2017-12-19 18:04:21', '', 'Retail Partners', '', 'publish', 'closed', 'closed', '', 'retail-partners', '', '', '2017-12-19 18:04:21', '2017-12-19 18:04:21', '', 0, 'http://localhost/greenhaven/?page_id=145', 0, 'page', '', 0),
(146, 1, '2017-12-19 18:04:21', '2017-12-19 18:04:21', '', 'Retail Partners', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2017-12-19 18:04:21', '2017-12-19 18:04:21', '', 145, 'http://localhost/greenhaven/2017/12/19/145-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2017-12-19 18:04:33', '2017-12-19 18:04:33', ' ', '', '', 'publish', 'closed', 'closed', '', '147', '', '', '2017-12-29 19:08:49', '2017-12-29 19:08:49', '', 0, 'http://localhost/greenhaven/?p=147', 3, 'nav_menu_item', '', 0),
(148, 1, '2017-12-19 18:04:49', '2017-12-19 18:04:49', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2017-12-19 18:04:49', '2017-12-19 18:04:49', '', 0, 'http://localhost/greenhaven/?page_id=148', 0, 'page', '', 0),
(149, 1, '2017-12-19 18:04:49', '2017-12-19 18:04:49', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '148-revision-v1', '', '', '2017-12-19 18:04:49', '2017-12-19 18:04:49', '', 148, 'http://localhost/greenhaven/2017/12/19/148-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2017-12-19 18:04:59', '2017-12-19 18:04:59', ' ', '', '', 'publish', 'closed', 'closed', '', '150', '', '', '2017-12-29 19:08:49', '2017-12-29 19:08:49', '', 0, 'http://localhost/greenhaven/?p=150', 4, 'nav_menu_item', '', 0),
(151, 1, '2017-12-19 20:10:57', '2017-12-19 20:10:57', '', 'Strains', '', 'publish', 'closed', 'closed', '', 'acf_strains', '', '', '2017-12-19 20:22:12', '2017-12-19 20:22:12', '', 0, 'http://localhost/greenhaven/?post_type=acf&#038;p=151', 0, 'acf', '', 0),
(152, 1, '2017-12-19 20:14:37', '2017-12-19 20:14:37', '', 'grandaddypurp', '', 'inherit', 'open', 'closed', '', 'grandaddypurp', '', '', '2017-12-19 20:14:37', '2017-12-19 20:14:37', '', 111, 'http://localhost/greenhaven/wp-content/uploads/2017/12/grandaddypurp.jpg', 0, 'attachment', 'image/jpeg', 0),
(158, 1, '2017-12-22 00:02:14', '2017-12-22 00:02:14', '', 'Grade A Medical', '', 'publish', 'closed', 'closed', '', 'grade-a-medical', '', '', '2017-12-22 14:26:26', '2017-12-22 14:26:26', '', 0, 'http://localhost/greenhaven/?post_type=retailers&#038;p=158', 0, 'retailers', '', 0),
(159, 1, '2017-12-22 00:05:03', '2017-12-22 00:05:03', '', 'Retailers', '', 'publish', 'closed', 'closed', '', 'acf_retailers', '', '', '2017-12-22 14:24:16', '2017-12-22 14:24:16', '', 0, 'http://localhost/greenhaven/?post_type=acf&#038;p=159', 0, 'acf', '', 0),
(160, 1, '2017-12-22 00:38:14', '2017-12-22 00:38:14', '', 'Operations Inside The Tweed Inc. Production Facility As Trudeau Win Signals Gains For Marijuana Stocks', 'Medical marijuana plants grow in a climate controlled growing room at the Tweed Inc. facility in Smith Falls, Ontario, Canada, on Nov. 11, 2015. Construction and marijuana companies are poised to benefit from the Liberal Party\'s decisive win in Canada\'s election, with leader Justin Trudeau vowing to fund infrastructure spending with deficits and legalize cannabis. Photographer: James MacDonald/Bloomberg', 'inherit', 'open', 'closed', '', 'operations-inside-the-tweed-inc-production-facility-as-trudeau-win-signals-gains-for-marijuana-stocks', '', '', '2017-12-22 00:38:14', '2017-12-22 00:38:14', '', 158, 'http://localhost/greenhaven/wp-content/uploads/2017/12/n-cannabis-c-20160627.jpg', 0, 'attachment', 'image/jpeg', 0),
(161, 1, '2017-12-22 14:28:57', '2017-12-22 14:28:57', '<div>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-12-22 14:28:57', '2017-12-22 14:28:57', '', 13, 'http://localhost/greenhaven/2017/12/22/13-revision-v1/', 0, 'revision', '', 0),
(164, 1, '2017-12-29 19:08:32', '2017-12-29 19:08:32', '', 'Our Products', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2017-12-29 19:08:32', '2017-12-29 19:08:32', '', 163, 'http://localhost/greenhaven/2017/12/29/163-revision-v1/', 0, 'revision', '', 0),
(165, 1, '2017-12-29 19:08:49', '2017-12-29 19:08:49', ' ', '', '', 'publish', 'closed', 'closed', '', '165', '', '', '2017-12-29 19:08:49', '2017-12-29 19:08:49', '', 0, 'http://localhost/greenhaven/?p=165', 2, 'nav_menu_item', '', 0),
(167, 1, '2018-01-02 16:44:36', '2018-01-02 16:44:36', '', 'Our Products', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2018-01-02 16:44:36', '2018-01-02 16:44:36', '', 163, 'http://localhost/greenhaven/2018/01/02/163-revision-v1/', 0, 'revision', '', 0),
(168, 1, '2018-01-02 18:05:38', '2018-01-02 18:05:38', '', 'Our Products', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2018-01-02 18:05:38', '2018-01-02 18:05:38', '', 163, 'http://localhost/greenhaven/163-revision-v1/', 0, 'revision', '', 0),
(169, 1, '2018-01-02 18:05:51', '2018-01-02 18:05:51', '', 'Our Products', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2018-01-02 18:05:51', '2018-01-02 18:05:51', '', 163, 'http://localhost/greenhaven/163-revision-v1/', 0, 'revision', '', 0),
(170, 1, '2018-01-02 18:28:30', '2018-01-02 18:28:30', '<header class="heading--article">\r\n<p class="heading--md heading-md--lg"> Introduced in 2003 by Ken Estes, Granddaddy Purple (or GDP) is a famous <a href="http://www.leafly.com/indica">indica</a> cross between <a href="http://www.leafly.com/indica/purple-urkle">Purple Urkle</a> and <a href="http://www.leafly.com/hybrid/big-bud">Big Bud</a>. This California staple inherits a complex <a href="http://www.leafly.com/explore/flavors-grape">grape</a> and <a href="http://www.leafly.com/explore/flavors-berry">berry</a> aroma from its Purple Urkle parent, while Big Bud passes on its oversized, compact bud structure. GDP flowers bloom in shades of deep purple, a contrastive backdrop for its snow-like dusting of white crystal resin.</p>\r\n\r\n</header>\r\n<div class="description-wrapper">\r\n<div class="description">\r\n\r\nIts potent psychoactive effects are clearly detectable in both mind and body, delivering a fusion of cerebral <a href="http://www.leafly.com/explore/tags-euphoric">euphoria</a> and physical <a href="http://www.leafly.com/explore/tags-relaxed">relaxation</a>. While your thoughts may float in a dreamy buzz, your body is more likely to find itself fixed in one spot for the duration of GDP’s effects. Like most heavy indica varieties, Granddaddy Purple is typically pulled off the shelf to treat <a href="http://www.leafly.com/explore/symptoms-pain">pain</a>, <a href="http://www.leafly.com/explore/symptoms-stress">stress</a>, <a href="http://www.leafly.com/explore/symptoms-insomnia">insomnia</a>, <a href="http://www.leafly.com/explore/symptoms-lack-of-appetite">appetite loss</a>, and <a href="http://www.leafly.com/explore/symptoms-muscle-spasms">muscle spasms</a>. GDP blesses growers with massive commercial yields which are ready for harvest following a 60 day flowering time indoors.\r\n\r\n</div>\r\n</div>', 'Grandaddy Purple', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2018-01-02 18:28:30', '2018-01-02 18:28:30', '', 111, 'http://localhost/greenhaven/111-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2018-01-03 16:26:58', '2018-01-03 16:26:58', '', 'medicalmarijuana-atomazul-shutterstock_170303738', '', 'inherit', 'open', 'closed', '', 'medicalmarijuana-atomazul-shutterstock_170303738', '', '', '2018-01-03 16:26:58', '2018-01-03 16:26:58', '', 111, 'http://localhost/greenhaven/wp-content/uploads/2017/12/medicalmarijuana-atomazul-shutterstock_170303738.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 17, 'order', '0'),
(2, 18, 'order', '0'),
(3, 19, 'order', '0'),
(4, 20, 'order', '0'),
(5, 21, 'order', '0'),
(6, 22, 'order', '0'),
(7, 23, 'order', '0'),
(8, 17, 'product_count_product_cat', '7'),
(9, 18, 'product_count_product_cat', '3'),
(10, 19, 'product_count_product_cat', '4'),
(11, 20, 'product_count_product_cat', '5'),
(12, 21, 'product_count_product_cat', '12'),
(13, 22, 'product_count_product_cat', '6'),
(14, 24, 'order_pa_color', '0'),
(15, 25, 'order_pa_color', '0'),
(16, 23, 'product_count_product_cat', '6'),
(17, 26, 'order_pa_color', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sativa', 'sativa', 0),
(2, 'Primary Menu', 'primary-menu', 0),
(3, 'Utility Menu', 'utility-menu', 0),
(4, 'simple', 'simple', 0),
(5, 'grouped', 'grouped', 0),
(6, 'variable', 'variable', 0),
(7, 'external', 'external', 0),
(8, 'exclude-from-search', 'exclude-from-search', 0),
(9, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(10, 'featured', 'featured', 0),
(11, 'outofstock', 'outofstock', 0),
(12, 'rated-1', 'rated-1', 0),
(13, 'rated-2', 'rated-2', 0),
(14, 'rated-3', 'rated-3', 0),
(15, 'rated-4', 'rated-4', 0),
(16, 'rated-5', 'rated-5', 0),
(17, 'Music', 'music', 0),
(18, 'Singles', 'singles', 0),
(19, 'Albums', 'albums', 0),
(20, 'Posters', 'posters', 0),
(21, 'Clothing', 'clothing', 0),
(22, 'Hoodies', 'hoodies', 0),
(23, 'T-shirts', 't-shirts', 0),
(24, 'Black', 'black', 0),
(25, 'Blue', 'blue', 0),
(26, 'Green', 'green', 0),
(27, 'Legal Information', 'legal-information', 0),
(28, 'Our Products', 'our-products', 0),
(29, 'Customer Service', 'customer-service', 0),
(30, 'Indica', 'indica', 0),
(31, 'Indica Hybrid', 'indica-hybrid', 0),
(32, 'Indica', 'indica', 0),
(33, 'Sativa', 'sativa', 0),
(34, 'Indica Hybrid', 'indica-hybrid', 0),
(35, 'Sativa Hybrid', 'sativa-hybrid', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(15, 2, 0),
(138, 27, 0),
(139, 27, 0),
(32, 4, 0),
(33, 4, 0),
(34, 4, 0),
(35, 4, 0),
(36, 4, 0),
(37, 4, 0),
(38, 4, 0),
(39, 4, 0),
(40, 4, 0),
(41, 4, 0),
(41, 21, 0),
(45, 21, 0),
(44, 4, 0),
(45, 4, 0),
(46, 4, 0),
(46, 21, 0),
(33, 17, 0),
(33, 18, 0),
(32, 17, 0),
(32, 18, 0),
(52, 17, 0),
(52, 18, 0),
(52, 5, 0),
(55, 19, 0),
(55, 17, 0),
(55, 4, 0),
(36, 19, 0),
(36, 17, 0),
(35, 19, 0),
(35, 17, 0),
(34, 19, 0),
(34, 17, 0),
(64, 20, 0),
(64, 4, 0),
(67, 20, 0),
(67, 4, 0),
(70, 20, 0),
(70, 4, 0),
(73, 20, 0),
(73, 4, 0),
(76, 20, 0),
(76, 4, 0),
(38, 21, 0),
(38, 22, 0),
(47, 21, 0),
(47, 22, 0),
(47, 7, 0),
(46, 22, 0),
(85, 21, 0),
(85, 22, 0),
(85, 4, 0),
(40, 21, 0),
(40, 22, 0),
(43, 21, 0),
(43, 22, 0),
(141, 29, 0),
(43, 24, 0),
(43, 25, 0),
(43, 6, 0),
(45, 23, 0),
(39, 21, 0),
(39, 23, 0),
(44, 21, 0),
(44, 23, 0),
(42, 21, 0),
(42, 23, 0),
(140, 29, 0),
(42, 24, 0),
(42, 26, 0),
(42, 6, 0),
(41, 23, 0),
(37, 21, 0),
(37, 23, 0),
(142, 29, 0),
(143, 28, 0),
(111, 32, 0),
(147, 2, 0),
(150, 2, 0),
(111, 31, 0),
(111, 30, 0),
(153, 30, 0),
(153, 31, 0),
(154, 30, 0),
(154, 31, 0),
(155, 30, 0),
(155, 31, 0),
(156, 30, 0),
(156, 31, 0),
(157, 1, 0),
(157, 32, 0),
(165, 2, 0),
(111, 34, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 0),
(4, 4, 'product_type', '', 0, 20),
(5, 5, 'product_type', '', 0, 1),
(6, 6, 'product_type', '', 0, 2),
(7, 7, 'product_type', '', 0, 1),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_cat', '', 0, 7),
(18, 18, 'product_cat', '', 17, 3),
(19, 19, 'product_cat', '', 17, 4),
(20, 20, 'product_cat', '', 0, 5),
(21, 21, 'product_cat', '', 0, 12),
(22, 22, 'product_cat', '', 21, 6),
(23, 23, 'product_cat', '', 21, 6),
(27, 27, 'nav_menu', '', 0, 2),
(24, 24, 'pa_color', '', 0, 2),
(25, 25, 'pa_color', '', 0, 1),
(26, 26, 'pa_color', '', 0, 1),
(28, 28, 'nav_menu', '', 0, 1),
(29, 29, 'nav_menu', '', 0, 3),
(30, 30, 'category', '', 0, 5),
(31, 31, 'category', '', 0, 5),
(32, 32, 'post_tag', '', 0, 2),
(33, 33, 'post_tag', '', 0, 0),
(34, 34, 'post_tag', '', 0, 1),
(35, 35, 'post_tag', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'greenhaven'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:1:{s:64:"9a2e95372fe736c139570c6425850e2a12231714da84b2a44d0fd2a222058a1b";a:4:{s:10:"expiration";i:1515084068;s:2:"ip";s:3:"::1";s:2:"ua";s:78:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0";s:5:"login";i:1514911268;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '162'),
(17, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(18, 1, 'closedpostboxes_page', 'a:1:{i:0;s:12:"revisionsdiv";}'),
(19, 1, 'metaboxhidden_page', 'a:6:{i:0;s:12:"revisionsdiv";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&hidetb=1'),
(21, 1, 'wp_user-settings-time', '1512785573'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:21:"add-post-type-feature";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(24, 1, 'nav_menu_recently_edited', '2'),
(25, 1, 'closedpostboxes_acf', 'a:0:{}'),
(26, 1, 'metaboxhidden_acf', 'a:1:{i:0;s:7:"slugdiv";}'),
(27, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(28, 1, 'wp_product_import_error_log', 'a:0:{}'),
(29, 1, 'closedpostboxes_strains', 'a:0:{}'),
(30, 1, 'metaboxhidden_strains', 'a:4:{i:0;s:7:"acf_119";i:1;s:6:"acf_20";i:2;s:10:"postcustom";i:3;s:7:"slugdiv";}'),
(31, 1, 'wp_media_library_mode', 'list'),
(32, 1, 'closedpostboxes_retailers', 'a:1:{i:0;s:10:"postcustom";}'),
(33, 1, 'metaboxhidden_retailers', 'a:5:{i:0;s:7:"acf_151";i:1;s:7:"acf_119";i:2;s:6:"acf_20";i:3;s:10:"postcustom";i:4;s:7:"slugdiv";}'),
(34, 1, 'meta-box-order_page', 'a:4:{s:15:"acf_after_title";s:7:"acf_151";s:4:"side";s:55:"submitdiv,pageparentdiv,postimagediv,featuredgallerydiv";s:6:"normal";s:93:"acf_119,acf_20,acf_159,revisionsdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(35, 1, 'screen_layout_page', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'greenhaven', '$P$B2FBEGSlpSzRFHGx/aZqadMuPdlvH41', 'greenhaven', 'eckkyle2@gmail.com', '', '2017-11-13 23:48:29', '', 0, 'greenhaven');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'color', 'Color', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(3, '1', 'a:7:{s:4:"cart";s:6:"a:0:{}";s:11:"cart_totals";s:367:"a:15:{s:8:"subtotal";i:0;s:12:"subtotal_tax";i:0;s:14:"shipping_total";i:0;s:12:"shipping_tax";i:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";i:0;s:12:"discount_tax";i:0;s:19:"cart_contents_total";i:0;s:17:"cart_contents_tax";i:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";i:0;s:7:"fee_tax";i:0;s:9:"fee_taxes";a:0:{}s:5:"total";i:0;s:9:"total_tax";i:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:8:"customer";s:672:"a:25:{s:2:"id";i:1;s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:2:"WA";s:7:"country";s:2:"GB";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:2:"WA";s:16:"shipping_country";s:2:"GB";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:18:"eckkyle2@gmail.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1513560797);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=927;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1751;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
