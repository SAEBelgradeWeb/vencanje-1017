-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 20, 2017 at 08:02 PM
-- Server version: 5.7.13-log
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vencanje_1017`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://vencanje-1017.app', 'yes'),
(2, 'home', 'http://vencanje-1017.app', 'yes'),
(3, 'blogname', 'Miranda i Majkl', 'yes'),
(4, 'blogdescription', 'Wedding of Miranda &amp; Michael - We are getting married finally!', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'v.lelicanin@sae.edu', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:133:{s:18:"about_post_type/?$";s:35:"index.php?post_type=about_post_type";s:48:"about_post_type/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?post_type=about_post_type&feed=$matches[1]";s:43:"about_post_type/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?post_type=about_post_type&feed=$matches[1]";s:35:"about_post_type/page/([0-9]{1,})/?$";s:53:"index.php?post_type=about_post_type&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:34:"slider/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"slider/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"slider/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"slider/([^/]+)/embed/?$";s:39:"index.php?slider=$matches[1]&embed=true";s:27:"slider/([^/]+)/trackback/?$";s:33:"index.php?slider=$matches[1]&tb=1";s:35:"slider/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?slider=$matches[1]&paged=$matches[2]";s:42:"slider/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?slider=$matches[1]&cpage=$matches[2]";s:31:"slider/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?slider=$matches[1]&page=$matches[2]";s:23:"slider/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"slider/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"slider/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:58:"slider-categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?slider-categories=$matches[1]&feed=$matches[2]";s:53:"slider-categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?slider-categories=$matches[1]&feed=$matches[2]";s:34:"slider-categories/([^/]+)/embed/?$";s:50:"index.php?slider-categories=$matches[1]&embed=true";s:46:"slider-categories/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?slider-categories=$matches[1]&paged=$matches[2]";s:28:"slider-categories/([^/]+)/?$";s:39:"index.php?slider-categories=$matches[1]";s:43:"about_post_type/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:53:"about_post_type/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:73:"about_post_type/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"about_post_type/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"about_post_type/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:49:"about_post_type/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:32:"about_post_type/([^/]+)/embed/?$";s:48:"index.php?about_post_type=$matches[1]&embed=true";s:36:"about_post_type/([^/]+)/trackback/?$";s:42:"index.php?about_post_type=$matches[1]&tb=1";s:56:"about_post_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?about_post_type=$matches[1]&feed=$matches[2]";s:51:"about_post_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?about_post_type=$matches[1]&feed=$matches[2]";s:44:"about_post_type/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?about_post_type=$matches[1]&paged=$matches[2]";s:51:"about_post_type/([^/]+)/comment-page-([0-9]{1,})/?$";s:55:"index.php?about_post_type=$matches[1]&cpage=$matches[2]";s:40:"about_post_type/([^/]+)(?:/([0-9]+))?/?$";s:54:"index.php?about_post_type=$matches[1]&page=$matches[2]";s:32:"about_post_type/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"about_post_type/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"about_post_type/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"about_post_type/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"about_post_type/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"about_post_type/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=8&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:2;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'vencanje', 'yes'),
(41, 'stylesheet', 'vencanje', 'yes'),
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
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '8', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"home-page";a:3:{i:0;s:13:"home_widget-4";i:1;s:13:"home_widget-5";i:2;s:13:"home_widget-3";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'cron', 'a:4:{i:1513836106;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1513879352;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1513884967;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1512755223;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-1";a:0:{}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.1";s:7:"version";s:5:"4.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1513792948;s:15:"version_checked";s:5:"4.9.1";s:12:"translations";a:0:{}}', 'no'),
(124, 'can_compress_scripts', '1', 'no'),
(139, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1513792956;s:7:"checked";a:4:{s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.4";s:13:"twentysixteen";s:3:"1.4";s:8:"vencanje";s:5:"1.0.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(140, 'current_theme', 'vencanje', 'yes'),
(141, 'theme_mods_vencanje', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:11:"header-menu";i:2;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1512755149;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(142, 'theme_switched', '', 'yes'),
(150, 'WPLANG', '', 'yes'),
(151, 'new_admin_email', 'v.lelicanin@sae.edu', 'yes'),
(158, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(179, 'theme_mods_marko', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1512755219;s:4:"data";a:1:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(217, 'recently_activated', 'a:3:{s:43:"custom-post-type-ui/custom-post-type-ui.php";i:1513790991;s:30:"advanced-custom-fields/acf.php";i:1513420801;s:44:"options-page-admin-for-acf/options-pages.php";i:1513420616;}', 'yes'),
(223, 'slider-categories_children', 'a:0:{}', 'yes'),
(236, '_site_transient_timeout_browser_f4f646d94c93d67142ec6fd2459f205f', '1513965808', 'no'),
(237, '_site_transient_browser_f4f646d94c93d67142ec6fd2459f205f', 'a:10:{s:4:"name";s:14:"Microsoft Edge";s:7:"version";s:8:"14.14393";s:8:"platform";s:7:"Windows";s:10:"update_url";s:0:"";s:7:"img_src";s:0:"";s:11:"img_src_ssl";s:0:"";s:15:"current_version";s:8:"15.15063";s:7:"upgrade";b:1;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(258, 'cptui_new_install', 'false', 'yes'),
(264, '_site_transient_timeout_browser_9bb7b3178e07390e66ccfc3e17d20f2e', '1514020458', 'no'),
(265, '_site_transient_browser_9bb7b3178e07390e66ccfc3e17d20f2e', 'a:10:{s:4:"name";s:7:"Firefox";s:7:"version";s:4:"58.0";s:8:"platform";s:7:"Windows";s:10:"update_url";s:24:"https://www.firefox.com/";s:7:"img_src";s:44:"http://s.w.org/images/browsers/firefox.png?1";s:11:"img_src_ssl";s:45:"https://s.w.org/images/browsers/firefox.png?1";s:15:"current_version";s:2:"56";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(291, 'acf_version', '5.6.7', 'yes'),
(303, 'options_about_us', 'Praesent luctus ligula gravida urna adipiscing rutrum. Aenean tempus fringilla nulla. Phasellus eu accumsan velit, ac mollis tellus. Praesent luctus ligula gravida urna adipiscing rutrum. Aenean tempus fringilla nulla. Phasellus eu accumsan velit, ac mollis tellus. Marko Pera Zika gsgsgrds', 'no'),
(304, '_options_about_us', 'field_5a34f90d89207', 'no'),
(306, 'category_children', 'a:0:{}', 'yes'),
(311, 'options_latest_posts_category', '8', 'no'),
(312, '_options_latest_posts_category', 'field_5a35019e7c198', 'no'),
(313, 'options_logo', '87', 'no'),
(314, '_options_logo', 'field_5a35036dd097b', 'no'),
(315, 'options_contact_information', 'If you want to get in touch with us directly, please use the following contact details below marko:\r\nTelp: +1 800 123 456\r\nEmail: <a href="mailto:mymail@domain.com">mymail@domain.com</a>\r\nWebsite: <a href="http://www.makeyoursitebetter.com">www.makeyoursitebetter.com</a>', 'no'),
(316, '_options_contact_information', 'field_5a350510857af', 'no'),
(317, 'options_social_links_0_title', 'Twitter', 'no'),
(318, '_options_social_links_0_title', 'field_5a3506fafee03', 'no'),
(319, 'options_social_links_0_link', 'http://twitter.com', 'no'),
(320, '_options_social_links_0_link', 'field_5a35074924185', 'no'),
(321, 'options_social_links_0_icon', 'twitter', 'no'),
(322, '_options_social_links_0_icon', 'field_5a3507d263d7d', 'no'),
(323, 'options_social_links_1_title', 'Facebook', 'no'),
(324, '_options_social_links_1_title', 'field_5a3506fafee03', 'no'),
(325, 'options_social_links_1_link', 'http://facebook.com', 'no'),
(326, '_options_social_links_1_link', 'field_5a35074924185', 'no'),
(327, 'options_social_links_1_icon', 'facebook', 'no'),
(328, '_options_social_links_1_icon', 'field_5a3507d263d7d', 'no'),
(329, 'options_social_links_2_title', 'Instagram', 'no'),
(330, '_options_social_links_2_title', 'field_5a3506fafee03', 'no'),
(331, 'options_social_links_2_link', 'http://instagram.com', 'no'),
(332, '_options_social_links_2_link', 'field_5a35074924185', 'no'),
(333, 'options_social_links_2_icon', 'instagram', 'no'),
(334, '_options_social_links_2_icon', 'field_5a3507d263d7d', 'no'),
(335, 'options_social_links_3_title', 'Pinterest', 'no'),
(336, '_options_social_links_3_title', 'field_5a3506fafee03', 'no'),
(337, 'options_social_links_3_link', 'http://pinterest.com', 'no'),
(338, '_options_social_links_3_link', 'field_5a35074924185', 'no'),
(339, 'options_social_links_3_icon', 'pinterest', 'no'),
(340, '_options_social_links_3_icon', 'field_5a3507d263d7d', 'no'),
(341, 'options_social_links_4_title', 'Google+', 'no'),
(342, '_options_social_links_4_title', 'field_5a3506fafee03', 'no'),
(343, 'options_social_links_4_link', 'https://plus.google.com', 'no'),
(344, '_options_social_links_4_link', 'field_5a35074924185', 'no'),
(345, 'options_social_links_4_icon', 'google', 'no'),
(346, '_options_social_links_4_icon', 'field_5a3507d263d7d', 'no'),
(347, 'options_social_links', '5', 'no'),
(348, '_options_social_links', 'field_5a350649fee02', 'no'),
(354, '_transient_timeout_acf_plugin_info_pro', '1513794216', 'no'),
(355, '_transient_acf_plugin_info_pro', 'a:17:{s:4:"name";s:26:"Advanced Custom Fields PRO";s:4:"slug";s:26:"advanced-custom-fields-pro";s:8:"homepage";s:37:"https://www.advancedcustomfields.com/";s:7:"version";s:5:"5.6.7";s:6:"author";s:13:"Elliot Condon";s:10:"author_url";s:28:"http://www.elliotcondon.com/";s:12:"contributors";s:12:"elliotcondon";s:8:"requires";s:5:"3.6.0";s:6:"tested";s:5:"4.9.0";s:4:"tags";a:72:{i:0;s:5:"5.6.6";i:1;s:5:"5.6.5";i:2;s:5:"5.6.4";i:3;s:5:"5.6.3";i:4;s:5:"5.6.2";i:5;s:5:"5.6.1";i:6;s:11:"5.6.0-beta2";i:7;s:11:"5.6.0-beta1";i:8;s:9:"5.6.0-RC2";i:9;s:9:"5.6.0-RC1";i:10;s:5:"5.6.0";i:11;s:5:"5.5.9";i:12;s:5:"5.5.7";i:13;s:5:"5.5.5";i:14;s:5:"5.5.3";i:15;s:5:"5.5.2";i:16;s:6:"5.5.14";i:17;s:6:"5.5.13";i:18;s:6:"5.5.12";i:19;s:6:"5.5.11";i:20;s:6:"5.5.10";i:21;s:5:"5.5.1";i:22;s:5:"5.5.0";i:23;s:5:"5.4.8";i:24;s:5:"5.4.7";i:25;s:5:"5.4.6";i:26;s:5:"5.4.5";i:27;s:5:"5.4.4";i:28;s:5:"5.4.3";i:29;s:5:"5.4.2";i:30;s:5:"5.4.1";i:31;s:5:"5.4.0";i:32;s:5:"5.3.8";i:33;s:5:"5.3.7";i:34;s:5:"5.3.6";i:35;s:5:"5.3.5";i:36;s:5:"5.3.4";i:37;s:5:"5.3.3";i:38;s:5:"5.3.2";i:39;s:6:"5.3.10";i:40;s:5:"5.3.1";i:41;s:5:"5.3.0";i:42;s:5:"5.2.9";i:43;s:5:"5.2.8";i:44;s:5:"5.2.7";i:45;s:5:"5.2.6";i:46;s:5:"5.2.5";i:47;s:5:"5.2.4";i:48;s:5:"5.2.3";i:49;s:5:"5.2.2";i:50;s:5:"5.2.1";i:51;s:5:"5.2.0";i:52;s:5:"5.1.9";i:53;s:5:"5.1.8";i:54;s:5:"5.1.7";i:55;s:5:"5.1.6";i:56;s:5:"5.1.5";i:57;s:5:"5.1.4";i:58;s:5:"5.1.3";i:59;s:5:"5.1.2";i:60;s:5:"5.1.1";i:61;s:5:"5.1.0";i:62;s:5:"5.0.9";i:63;s:5:"5.0.8";i:64;s:5:"5.0.7";i:65;s:5:"5.0.6";i:66;s:5:"5.0.5";i:67;s:5:"5.0.4";i:68;s:5:"5.0.3";i:69;s:5:"5.0.2";i:70;s:5:"5.0.1";i:71;s:5:"5.0.0";}s:6:"tagged";s:61:"acf, advanced, custom, field, fields, form, repeater, content";s:11:"description";s:1478:"<p>Use the Advanced Custom Fields plugin to take full control of your WordPress edit screens & custom field data.</p>\n<b>Add fields on demand.</b> Our field builder allows you to quickly and easily add fields to WP edit screens with only the click of a few buttons!\n<b>Add them anywhere.</b> Fields can be added all over WP including posts, users, taxonomy terms, media, comments and even custom options pages!\n<b>Show them everywhere.</b> Load and display your custom field values in any theme template file with our hassle free developer friendly functions!\n<h4> Features </h4>\n<ul><li>Simple & Intuitive</li><li>Powerful Functions</li><li>Over 30 Field Types</li><li>Extensive Documentation</li><li>Millions of Users</li></ul>\n<h4> Links </h4>\n<ul><li>[Website](<a href="https://www.advancedcustomfields.com)">www.advancedcustomfields.com)</a></li><li>[Documentation](<a href="https://www.advancedcustomfields.com/resources/)">www.advancedcustomfields.com/resources/)</a></li><li>[Support](<a href="https://support.advancedcustomfields.com)">support.advancedcustomfields.com)</a></li><li>[ACF PRO](<a href="https://www.advancedcustomfields.com/pro/)">www.advancedcustomfields.com/pro/)</a></li></ul>\n<h4> PRO </h4>\n<p>The Advanced Custom Fields plugin is also available in a professional version which includes more fields, more functionality, and more flexibility! [Learn more](<a href="https://www.advancedcustomfields.com/pro/)">www.advancedcustomfields.com/pro/)</a></p>\n";s:12:"installation";s:515:"<p>From your WordPress dashboard<ol><li><b>Visit</b> Plugins > Add New</li><li><b>Search</b> for "Advanced Custom Fields"</li><li><b>Activate</b> Advanced Custom Fields from your Plugins page</li><li><b>Click</b> on the new menu item "Custom Fields" and create your first Custom Field Group!</li><li><b>Read</b> the documentation to [get started](<a href="https://www.advancedcustomfields.com/resources/getting-started-with-acf/)">www.advancedcustomfields.com/resources/getting-started-with-acf/)</a></li></ol></p>\n";s:9:"changelog";s:5408:"<h4> 5.6.7 </h4>\n<ul><li>Fixed an assortment of bugs found in 5.6.6</li></ul>\n<h4> 5.6.6 </h4>\n<ul><li>Accordion field: Added new field type</li><li>Tab field: Added logic to remember active tabs</li><li>WYSIWYG field: Fixed JS error in quicktags initialization</li><li>Core: Fixed issue preventing conditional logic for menu item fields</li><li>Core: Fixed issue preventing JS initialization for newly added menu items.</li><li>Core: Allow whitespace in input value (previously trimmed)</li><li>Core: Minor fixes and improvements</li><li>Language: Updated Italian translation - thanks to Davide Pantè</li><li>Language: Updated Brazilian Portuguese translation - thanks to Rafael Ribeiro</li><li>Language: Updated Dutch translation - thanks to Derk Oosterveld</li><li>Language: Updated Portuguese translation - thanks to Pedro Mendonça</li><li>Language: Updated Persian translation - thanks to Kamel Kimiaei</li><li>Language: Updated Swiss German translation - thanks to Raphael Hüni</li></ul>\n<h4> 5.6.5 </h4>\n<ul><li>API: Added new <code>kses</code> setting to the `acf_form()` function</li><li>Core: Added new <code>Admin Tools</code> framework (includes design refresh)</li><li>Core: Minor fixes and improvements</li><li>Language: Update Ukrainian translation - thanks to Jurko Chervony</li><li>Language: Update Russian translation - thanks to Andriy Toniyevych</li><li>Language: Update Hebrew translation - thanks to Itamar Megged</li></ul>\n<h4> 5.6.4 </h4>\n<ul><li>Google Map field: Fixed bug causing invalid url to JavaScript library</li><li>WYSIWYG field: Fixed minor z-index and drag/drop bugs</li><li>Group field: Fixed bug causing incorrect export settings</li><li>Core: Fixed bug in <code>Post Taxonomy</code> location rule ignoring selected terms during AJAX callback</li><li>Core: Fixed bug preventing a draft to validate with required fields</li><li>Language: Updated Italian translation - thanks to Davide Pantè</li><li>Language: Update Turkish translation - thanks to Emre Erkan</li><li>Language: Updated Chinese translation - thanks to Wang Hao</li><li>Language: Update Hebrew translation - thanks to Itamar Megged</li></ul>\n<h4> 5.6.3 </h4>\n<ul><li>Button Group field: Added new field type</li><li>Range field: Added missing <code>step</code> attribute to number input</li><li>Range field: Added width to number input based on max setting</li><li>Basic fields: Added missing <code>required</code> attribute to inputs</li><li>Basic fields: Removed empty attributes from inputs</li><li>API: Fixed `get_fields()` bug ignoring fields starting with an underscore</li><li>Core: Minor fixes and improvements</li><li>Language: Updated Portuguese translation - thanks to Pedro Mendonça</li><li>Language: Updated French translation - thanks to Maxime Bernard-Jacquet</li><li>Language: Updated Finnish translation - thanks to Sauli Rajala</li><li>Language: Updated German translation - thanks to Ralf Koller</li></ul>\n<h4> 5.6.2 </h4>\n<ul><li>Range field: Added new field type</li><li>Clone field: Fixed bug causing value update issues for <code>seamless</code> + widgets / nave menu items</li><li>Location: Added parent theme<code>s post templates to </code>post template\' location rule</li><li>Location: Fixed bug causing <code>nav menu</code> location rule to fail during AJAX (add new item)</li><li>Core: Fixed PHP errors in customizer when editing non ACF panels</li><li>Core: Fixed bug casing backslash character to break fields / field groups</li><li>Core: Many minor bug fixes</li><li>Language: Updated Romanian translation - thanks to Ionut Staicu</li><li>Language: Updated Italian translation - thanks to Davide Pantè</li><li>Language: Update Turkish translation - thanks to Emre Erkan</li><li>Language: Updated Russian translation - Thanks to Алекс Яровиков</li><li>Language: Updated French translation - Thanks to Julie Arrigoni</li></ul>\n<h4> 5.6.1 </h4>\n<ul><li>Fixed an assortment of bugs found in 5.6.0</li></ul>\n<h4> 5.6.0 </h4>\n<ul><li>Link field: Added new field type</li><li>Group field: Added new field type</li><li>API: Improved `have_rows()` function to work with clone and group field values</li><li>Core: Added new location for Menus</li><li>Core: Added new location for Menu Items</li><li>Core: Added types to Attachment location rule - thanks to Jan Thomas</li><li>Core: Added "Confirm Remove" tooltips</li><li>Core: Updated Select2 JS library to v4</li><li>Core: Minor fixes and improvements</li></ul>\n<h4> 5.5.14 </h4>\n<ul><li>Core: Minor bug fixes</li></ul>\n<h4> 5.5.13 </h4>\n<ul><li>Clone field: Improved <code>Fields</code> setting to show all fields within a matching field group search</li><li>Flexible Content field: Fixed bug causing <code>layout_title</code> filter to fail when field is cloned</li><li>Flexible Content field: Added missing <code>translate_field</code> function</li><li>WYSIWYG field: Fixed JS error when using CKEditor plugin</li><li>Date Picker field: Improved <code>Display Format</code> and <code>Return Format</code> settings UI</li><li>Time Picker field: Same as above</li><li>Datetime Picker field: Same as above</li><li>Core: Added new <code>remove_wp_meta_box</code> setting</li><li>Core: Added constants ACF, ACF_PRO, ACF_VERSION and ACF_PATH</li><li>Core: Improved compatibility with Select2 v4 including sortable functionality</li><li>Language: Updated Portuguese translation - thanks to Pedro Mendonça</li></ul>\n";s:14:"upgrade_notice";s:551:"<h4> 5.2.7 </h4>\n<ul><li>Field class names have changed slightly in v5.2.7 from `field_type-{$type}` to `acf-field-{$type}`. This change was introduced to better optimise JS performance. The previous class names can be added back in with the following filter: <a href="https://www.advancedcustomfields.com/resources/acfcompatibility/">www.advancedcustomfields.com/resources/acfcompatibility/</a></li></ul>\n<h4> 3.0.0 </h4>\n<ul><li>Editor is broken in WordPress 3.3</li></ul>\n<h4> 2.1.4 </h4>\n<ul><li>Adds post_id column back into acf_values</li></ul>\n";s:5:"icons";a:1:{s:7:"default";s:63:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png";}s:7:"banners";a:1:{s:7:"default";s:66:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg";}}', 'no'),
(356, '_transient_timeout_plugin_slugs', '1513877391', 'no'),
(357, '_transient_plugin_slugs', 'a:5:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:3;s:9:"hello.php";i:4;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";}', 'no'),
(360, '_site_transient_timeout_theme_roots', '1513794751', 'no'),
(361, '_site_transient_theme_roots', 'a:4:{s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";s:8:"vencanje";s:7:"/themes";}', 'no'),
(362, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1513792954;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":11:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.2.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.1";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:43:"custom-post-type-ui/custom-post-type-ui.php";O:8:"stdClass":9:{s:2:"id";s:33:"w.org/plugins/custom-post-type-ui";s:4:"slug";s:19:"custom-post-type-ui";s:6:"plugin";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:11:"new_version";s:5:"1.5.6";s:3:"url";s:50:"https://wordpress.org/plugins/custom-post-type-ui/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.6.zip";s:5:"icons";a:3:{s:2:"1x";s:72:"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557";s:2:"2x";s:72:"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557";s:7:"default";s:72:"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557";}s:7:"banners";a:3:{s:2:"2x";s:75:"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557";s:2:"1x";s:74:"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557";s:7:"default";s:75:"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:3:{s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:7:"default";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";}s:7:"banners";a:2:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";s:7:"default";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:47:"regenerate-thumbnails/regenerate-thumbnails.php";O:8:"stdClass":9:{s:2:"id";s:35:"w.org/plugins/regenerate-thumbnails";s:4:"slug";s:21:"regenerate-thumbnails";s:6:"plugin";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:11:"new_version";s:5:"3.0.0";s:3:"url";s:52:"https://wordpress.org/plugins/regenerate-thumbnails/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip";s:5:"icons";a:2:{s:2:"1x";s:74:"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390";s:7:"default";s:74:"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390";}s:7:"banners";a:3:{s:2:"2x";s:77:"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390";s:2:"1x";s:76:"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390";s:7:"default";s:77:"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(372, '_site_transient_timeout_available_translations', '1513805159', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(373, '_site_transient_available_translations', 'a:111:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-12-01 13:40:41";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.1/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-27 09:27:02";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.1/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-22 18:59:07";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-14 06:19:36";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.1/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-15 09:53:15";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-10-01 12:57:10";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.3/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-05 09:44:12";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-04 20:20:28";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-12-12 08:56:15";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.1/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 08:46:26";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:9:"Čeština";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-22 16:19:20";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.1/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-12-07 17:05:51";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-12-03 11:38:18";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.9.1/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-22 15:38:30";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-22 15:43:53";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.9.1/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-12-03 11:38:13";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-12-10 15:04:39";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.1/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-15 09:54:30";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-15 14:51:39";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-23 18:53:44";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-24 22:15:20";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-14 02:06:55";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-14 01:23:37";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.1/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-16 03:15:17";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/es_AR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-15 23:17:08";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/es_CO.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-12-18 11:09:35";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/es_ES.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.8.4";s:7:"updated";s:19:"2017-07-31 15:12:02";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.4/es_MX.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.8.4";s:7:"updated";s:19:"2017-07-30 16:09:17";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.4/es_VE.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CR";a:8:{s:8:"language";s:5:"es_CR";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-10-01 17:54:52";s:12:"english_name";s:20:"Spanish (Costa Rica)";s:11:"native_name";s:22:"Español de Costa Rica";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-28 20:09:49";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-15 15:03:42";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/es_GT.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-19 14:11:29";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.1/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-12-09 21:12:23";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.1/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-09 15:50:45";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-15 09:48:14";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.1/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-15 21:50:23";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-12-18 12:43:12";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-19 23:55:33";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-16 10:40:05";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-16 11:06:53";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.1/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-12-06 13:23:01";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-12-02 23:26:33";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-14 13:03:07";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.1/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-12-14 10:14:07";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-14 11:09:49";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-04-13 13:55:54";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.7/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-12-13 12:06:14";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-17 09:56:44";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.1/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"jv_ID";a:8:{s:8:"language";s:5:"jv_ID";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-14 11:47:57";s:12:"english_name";s:8:"Javanese";s:11:"native_name";s:9:"Basa Jawa";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/jv_ID.zip";s:3:"iso";a:2:{i:1;s:2:"jv";i:2;s:3:"jav";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nutugne";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-12-07 12:32:16";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-08-22 15:33:00";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8.3/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-07 02:07:59";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-12-04 01:44:20";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:25";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:9:"ຕໍ່";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-15 19:40:23";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-03-17 20:40:40";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.7/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-01-26 15:54:41";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.8.4";s:7:"updated";s:19:"2017-09-30 06:25:41";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.4/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-12-09 00:51:20";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.20";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-17 19:14:57";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-10-05 06:45:20";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.3/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:31:"जारीराख्नु ";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-12-06 06:13:30";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-16 15:44:47";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.9.1/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-25 10:53:17";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-09-25 10:02:16";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.3/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-08-25 10:03:08";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-28 19:24:26";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.20";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-14 20:53:34";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:10:"pt_PT_ao90";a:8:{s:8:"language";s:10:"pt_PT_ao90";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-12-18 12:10:14";s:12:"english_name";s:27:"Portuguese (Portugal, AO90)";s:11:"native_name";s:17:"Português (AO90)";s:7:"package";s:69:"https://downloads.wordpress.org/translation/core/4.9.1/pt_PT_ao90.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-12-19 23:04:20";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-12-19 20:26:00";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-12-15 20:59:00";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-12-19 10:53:46";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-16 18:38:56";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-30 17:20:03";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.1/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-15 23:19:48";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-12-06 10:38:27";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:24:"தொடரவும்";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-10-07 02:08:56";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.3/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-30 02:38:08";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-20 16:20:13";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-05 09:23:39";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-11-02 17:05:02";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.3/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-12-07 09:26:23";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.1/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-10-15 05:40:58";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.3/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-15 10:43:28";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.1/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-17 22:20:52";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-12-09 02:29:44";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-12-02 09:46:12";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'no'),
(374, 'options_related', '', 'no'),
(375, '_options_related', 'field_5a350b4c9fa87', 'no'),
(376, 'options_smajli', '111', 'no'),
(377, '_options_smajli', 'field_5a3aab8a07acf', 'no'),
(381, 'widget_my_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(382, 'widget_home_widget', 'a:4:{i:3;a:2:{s:5:"title";s:20:"Our Wedding Location";s:11:"description";s:151:"Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore feugiat tristique tincidunt nunc ullamcorper.";}i:4;a:2:{s:5:"title";s:17:"Our Gift Registry";s:11:"description";s:151:"Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore feugiat tristique tincidunt nunc ullamcorper.";}i:5;a:2:{s:5:"title";s:22:"Honeymoon Destinantion";s:11:"description";s:151:"Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore feugiat tristique tincidunt nunc ullamcorper.";}s:12:"_multiwidget";i:1;}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(22, 2, '_wp_trash_meta_status', 'publish'),
(23, 2, '_wp_trash_meta_time', '1512588964'),
(24, 2, '_wp_desired_post_slug', 'sample-page'),
(25, 8, '_edit_last', '1'),
(26, 8, '_edit_lock', '1513425638:1'),
(27, 10, '_edit_last', '1'),
(28, 10, '_edit_lock', '1512760622:1'),
(29, 12, '_edit_last', '1'),
(30, 12, '_edit_lock', '1512761744:1'),
(31, 14, '_edit_last', '1'),
(32, 14, '_edit_lock', '1512762393:1'),
(33, 16, '_edit_last', '1'),
(34, 16, '_edit_lock', '1512760538:1'),
(35, 18, '_edit_last', '1'),
(36, 18, '_edit_lock', '1512760084:1'),
(37, 21, '_edit_last', '1'),
(38, 21, '_edit_lock', '1513417648:1'),
(39, 23, '_menu_item_type', 'post_type'),
(40, 23, '_menu_item_menu_item_parent', '0'),
(41, 23, '_menu_item_object_id', '12'),
(42, 23, '_menu_item_object', 'page'),
(43, 23, '_menu_item_target', ''),
(44, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(45, 23, '_menu_item_xfn', ''),
(46, 23, '_menu_item_url', ''),
(48, 24, '_menu_item_type', 'post_type'),
(49, 24, '_menu_item_menu_item_parent', '0'),
(50, 24, '_menu_item_object_id', '21'),
(51, 24, '_menu_item_object', 'page'),
(52, 24, '_menu_item_target', ''),
(53, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(54, 24, '_menu_item_xfn', ''),
(55, 24, '_menu_item_url', ''),
(57, 25, '_menu_item_type', 'post_type'),
(58, 25, '_menu_item_menu_item_parent', '0'),
(59, 25, '_menu_item_object_id', '14'),
(60, 25, '_menu_item_object', 'page'),
(61, 25, '_menu_item_target', ''),
(62, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(63, 25, '_menu_item_xfn', ''),
(64, 25, '_menu_item_url', ''),
(66, 26, '_menu_item_type', 'post_type'),
(67, 26, '_menu_item_menu_item_parent', '0'),
(68, 26, '_menu_item_object_id', '18'),
(69, 26, '_menu_item_object', 'page'),
(70, 26, '_menu_item_target', ''),
(71, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(72, 26, '_menu_item_xfn', ''),
(73, 26, '_menu_item_url', ''),
(75, 27, '_menu_item_type', 'post_type'),
(76, 27, '_menu_item_menu_item_parent', '0'),
(77, 27, '_menu_item_object_id', '8'),
(78, 27, '_menu_item_object', 'page'),
(79, 27, '_menu_item_target', ''),
(80, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(81, 27, '_menu_item_xfn', ''),
(82, 27, '_menu_item_url', ''),
(84, 28, '_menu_item_type', 'post_type'),
(85, 28, '_menu_item_menu_item_parent', '0'),
(86, 28, '_menu_item_object_id', '10'),
(87, 28, '_menu_item_object', 'page'),
(88, 28, '_menu_item_target', ''),
(89, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(90, 28, '_menu_item_xfn', ''),
(91, 28, '_menu_item_url', ''),
(93, 29, '_menu_item_type', 'post_type'),
(94, 29, '_menu_item_menu_item_parent', '0'),
(95, 29, '_menu_item_object_id', '16'),
(96, 29, '_menu_item_object', 'page'),
(97, 29, '_menu_item_target', ''),
(98, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(99, 29, '_menu_item_xfn', ''),
(100, 29, '_menu_item_url', ''),
(102, 30, '_menu_item_type', 'custom'),
(103, 30, '_menu_item_menu_item_parent', '0'),
(104, 30, '_menu_item_object_id', '30'),
(105, 30, '_menu_item_object', 'custom'),
(106, 30, '_menu_item_target', ''),
(107, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(108, 30, '_menu_item_xfn', ''),
(109, 30, '_menu_item_url', 'http://vencanje-1017.app/'),
(110, 30, '_menu_item_orphaned', '1512589106'),
(111, 31, '_edit_last', '1'),
(112, 31, '_edit_lock', '1512762672:1'),
(113, 33, '_menu_item_type', 'post_type'),
(114, 33, '_menu_item_menu_item_parent', '28'),
(115, 33, '_menu_item_object_id', '31'),
(116, 33, '_menu_item_object', 'page'),
(117, 33, '_menu_item_target', ''),
(118, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(119, 33, '_menu_item_xfn', ''),
(120, 33, '_menu_item_url', ''),
(121, 21, '_wp_page_template', 'page-contact.php'),
(122, 18, '_wp_page_template', 'page-guestbook.php'),
(123, 16, '_wp_page_template', 'page-rsvp.php'),
(124, 10, '_wp_page_template', 'page-wedding.php'),
(125, 12, '_wp_page_template', 'page-blog.php'),
(130, 36, '_edit_last', '1'),
(131, 36, '_edit_lock', '1513422935:1'),
(134, 14, '_wp_page_template', 'page-gallery.php'),
(135, 31, '_wp_page_template', 'default'),
(138, 53, '_edit_last', '1'),
(139, 53, '_edit_lock', '1513194528:1'),
(140, 54, '_wp_attached_file', '2017/12/slide1.jpg'),
(141, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1156;s:6:"height";i:407;s:4:"file";s:18:"2017/12/slide1.jpg";s:5:"sizes";a:5:{s:14:"thumbnail-mini";a:4:{s:4:"file";s:16:"slide1-32x32.jpg";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"slide1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"slide1-300x106.jpg";s:5:"width";i:300;s:6:"height";i:106;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"slide1-768x270.jpg";s:5:"width";i:768;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"slide1-1024x361.jpg";s:5:"width";i:1024;s:6:"height";i:361;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(142, 53, '_thumbnail_id', '54'),
(146, 55, '_edit_last', '1'),
(147, 55, '_edit_lock', '1513194540:1'),
(148, 56, '_wp_attached_file', '2017/12/slide2.jpg'),
(149, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1156;s:6:"height";i:407;s:4:"file";s:18:"2017/12/slide2.jpg";s:5:"sizes";a:5:{s:14:"thumbnail-mini";a:4:{s:4:"file";s:16:"slide2-32x32.jpg";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"slide2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"slide2-300x106.jpg";s:5:"width";i:300;s:6:"height";i:106;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"slide2-768x270.jpg";s:5:"width";i:768;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"slide2-1024x361.jpg";s:5:"width";i:1024;s:6:"height";i:361;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(150, 55, '_thumbnail_id', '56'),
(151, 57, '_edit_last', '1'),
(152, 57, '_edit_lock', '1513194534:1'),
(153, 58, '_wp_attached_file', '2017/12/slide3.jpg'),
(154, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1156;s:6:"height";i:407;s:4:"file";s:18:"2017/12/slide3.jpg";s:5:"sizes";a:5:{s:14:"thumbnail-mini";a:4:{s:4:"file";s:16:"slide3-32x32.jpg";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"slide3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"slide3-300x106.jpg";s:5:"width";i:300;s:6:"height";i:106;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"slide3-768x270.jpg";s:5:"width";i:768;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"slide3-1024x361.jpg";s:5:"width";i:1024;s:6:"height";i:361;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(155, 57, '_thumbnail_id', '58'),
(156, 36, '_thumbnail_id', '56'),
(159, 59, '_edit_last', '1'),
(160, 59, '_edit_lock', '1513417198:1'),
(164, 61, '_wp_attached_file', '2017/12/happy-family-seaside-summer-holidays-children-people-concept-34393828.jpg'),
(165, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1300;s:6:"height";i:1013;s:4:"file";s:81:"2017/12/happy-family-seaside-summer-holidays-children-people-concept-34393828.jpg";s:5:"sizes";a:6:{s:14:"thumbnail-mini";a:4:{s:4:"file";s:79:"happy-family-seaside-summer-holidays-children-people-concept-34393828-32x32.jpg";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:81:"happy-family-seaside-summer-holidays-children-people-concept-34393828-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:81:"happy-family-seaside-summer-holidays-children-people-concept-34393828-300x234.jpg";s:5:"width";i:300;s:6:"height";i:234;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:81:"happy-family-seaside-summer-holidays-children-people-concept-34393828-768x598.jpg";s:5:"width";i:768;s:6:"height";i:598;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:82:"happy-family-seaside-summer-holidays-children-people-concept-34393828-1024x798.jpg";s:5:"width";i:1024;s:6:"height";i:798;s:9:"mime-type";s:10:"image/jpeg";}s:15:"slider-velicina";a:4:{s:4:"file";s:82:"happy-family-seaside-summer-holidays-children-people-concept-34393828-1156x407.jpg";s:5:"width";i:1156;s:6:"height";i:407;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:30:"(c) Dolgachov | Dreamstime.com";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(166, 59, '_thumbnail_id', '61'),
(167, 65, '_edit_last', '1'),
(168, 65, '_edit_lock', '1513422929:1'),
(171, 67, '_edit_last', '1'),
(172, 67, '_edit_lock', '1513422916:1'),
(173, 70, '_edit_last', '1'),
(174, 70, 'field_5a34ec62f3ee2', 'a:11:{s:3:"key";s:19:"field_5a34ec62f3ee2";s:5:"label";s:10:"Hero Image";s:4:"name";s:10:"hero_image";s:4:"type";s:5:"image";s:12:"instructions";s:54:"Ubacite ovde sliku ako zelite da se ta slika prikaze..";s:8:"required";s:1:"1";s:11:"save_format";s:6:"object";s:12:"preview_size";s:5:"large";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(176, 70, 'position', 'normal'),
(177, 70, 'layout', 'no_box'),
(178, 70, 'hide_on_screen', ''),
(179, 70, '_edit_lock', '1513418143:1'),
(182, 71, 'hero_image', '56'),
(183, 71, '_hero_image', 'field_5a34ec62f3ee2'),
(184, 36, 'hero_image', '56'),
(185, 36, '_hero_image', 'field_5a34ec62f3ee2'),
(190, 72, 'hero_image', '54'),
(191, 72, '_hero_image', 'field_5a34ec62f3ee2'),
(192, 65, 'hero_image', '54'),
(193, 65, '_hero_image', 'field_5a34ec62f3ee2'),
(194, 70, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(195, 56, '_wp_attachment_image_alt', 'marko je car'),
(198, 73, 'hero_image', '61'),
(199, 73, '_hero_image', 'field_5a34ec62f3ee2'),
(200, 67, 'hero_image', '61'),
(201, 67, '_hero_image', 'field_5a34ec62f3ee2'),
(202, 75, '_edit_lock', '1513420767:1'),
(203, 78, '_edit_last', '1'),
(204, 78, '_edit_lock', '1513794346:1'),
(213, 80, '_edit_last', '1'),
(214, 80, '_edit_lock', '1513423110:1'),
(215, 81, '_wp_attached_file', '2017/12/scuffs-website-photos-info-0352.jpg'),
(216, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3264;s:6:"height";i:2448;s:4:"file";s:43:"2017/12/scuffs-website-photos-info-0352.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:43:"scuffs-website-photos-info-0352-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"scuffs-website-photos-info-0352-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:43:"scuffs-website-photos-info-0352-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:44:"scuffs-website-photos-info-0352-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:15:"slider-velicina";a:4:{s:4:"file";s:44:"scuffs-website-photos-info-0352-1156x407.jpg";s:5:"width";i:1156;s:6:"height";i:407;s:9:"mime-type";s:10:"image/jpeg";}s:14:"thumbnail-mini";a:4:{s:4:"file";s:41:"scuffs-website-photos-info-0352-32x32.jpg";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:18:"DXG Digital Camera";s:6:"camera";s:0:"";s:7:"caption";s:12:"PHOT0114.JPG";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:15:"DXG Proprietary";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:12:"PHOT0114.JPG";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(217, 81, '_wp_attachment_image_alt', 'Car Scratch'),
(220, 80, 'hero_image', '81'),
(221, 80, '_hero_image', 'field_5a34ec62f3ee2'),
(222, 82, 'hero_image', '81'),
(223, 82, '_hero_image', 'field_5a34ec62f3ee2'),
(224, 87, '_wp_attached_file', '2017/12/logo.png'),
(225, 87, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:514;s:6:"height";i:75;s:4:"file";s:16:"2017/12/logo.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"logo-150x75.png";s:5:"width";i:150;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:15:"logo-300x44.png";s:5:"width";i:300;s:6:"height";i:44;s:9:"mime-type";s:9:"image/png";}s:14:"thumbnail-mini";a:4:{s:4:"file";s:14:"logo-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(226, 87, '_wp_attachment_image_alt', ''),
(227, 88, '_wp_attached_file', '2017/12/sae-institute-logo-4FB3DF8204-seeklogo.com_.png'),
(228, 88, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:238;s:4:"file";s:55:"2017/12/sae-institute-logo-4FB3DF8204-seeklogo.com_.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:55:"sae-institute-logo-4FB3DF8204-seeklogo.com_-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:55:"sae-institute-logo-4FB3DF8204-seeklogo.com_-300x238.png";s:5:"width";i:300;s:6:"height";i:238;s:9:"mime-type";s:9:"image/png";}s:14:"thumbnail-mini";a:4:{s:4:"file";s:53:"sae-institute-logo-4FB3DF8204-seeklogo.com_-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(229, 104, '_edit_last', '1'),
(230, 104, '_edit_lock', '1513793958:1'),
(231, 105, '_wp_attached_file', '2017/12/avatar5.jpg'),
(232, 105, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:126;s:6:"height";i:126;s:4:"file";s:19:"2017/12/avatar5.jpg";s:5:"sizes";a:1:{s:14:"thumbnail-mini";a:4:{s:4:"file";s:17:"avatar5-32x32.jpg";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(233, 106, '_wp_attached_file', '2017/12/avatar6.jpg'),
(234, 106, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:126;s:6:"height";i:126;s:4:"file";s:19:"2017/12/avatar6.jpg";s:5:"sizes";a:1:{s:14:"thumbnail-mini";a:4:{s:4:"file";s:17:"avatar6-32x32.jpg";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(235, 104, '_thumbnail_id', '105'),
(236, 107, '_edit_last', '1'),
(237, 107, '_edit_lock', '1513798646:1'),
(238, 107, '_thumbnail_id', '106'),
(239, 108, '_edit_last', '1'),
(240, 108, '_edit_lock', '1513794131:1'),
(241, 107, 'button', 'Read more about Michael'),
(242, 107, '_button', 'field_5a3aa9a3c2954'),
(243, 104, 'button', 'Miranda\'s Biography'),
(244, 104, '_button', 'field_5a3aa9a3c2954'),
(245, 111, '_wp_attached_file', '2017/12/1200px-Smiley_icon.svg_.png'),
(246, 111, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:1200;s:4:"file";s:35:"2017/12/1200px-Smiley_icon.svg_.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"1200px-Smiley_icon.svg_-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:35:"1200px-Smiley_icon.svg_-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:35:"1200px-Smiley_icon.svg_-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:37:"1200px-Smiley_icon.svg_-1024x1024.png";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:15:"slider-velicina";a:4:{s:4:"file";s:36:"1200px-Smiley_icon.svg_-1156x407.png";s:5:"width";i:1156;s:6:"height";i:407;s:9:"mime-type";s:9:"image/png";}s:14:"thumbnail-mini";a:4:{s:4:"file";s:33:"1200px-Smiley_icon.svg_-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}s:14:"about-us-image";a:4:{s:4:"file";s:35:"1200px-Smiley_icon.svg_-126x126.png";s:5:"width";i:126;s:6:"height";i:126;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2017-12-06 18:01:44', '2017-12-06 18:01:44', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://vencanje-1017.app/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2017-12-06 19:36:04', '2017-12-06 19:36:04', '', 0, 'http://vencanje-1017.app/?page_id=2', 0, 'page', '', 0),
(7, 1, '2017-12-06 19:36:04', '2017-12-06 19:36:04', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://vencanje-1017.app/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-12-06 19:36:04', '2017-12-06 19:36:04', '', 2, 'http://vencanje-1017.app/2017/12/06/2-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2017-12-06 19:37:24', '2017-12-06 19:37:24', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-12-06 19:37:24', '2017-12-06 19:37:24', '', 0, 'http://vencanje-1017.app/?page_id=8', 0, 'page', '', 0),
(9, 1, '2017-12-06 19:36:20', '2017-12-06 19:36:20', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2017-12-06 19:36:20', '2017-12-06 19:36:20', '', 8, 'http://vencanje-1017.app/2017/12/06/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2017-12-06 19:37:24', '2017-12-06 19:37:24', '', 'Our Wedding', '', 'publish', 'closed', 'closed', '', 'our-wedding', '', '', '2017-12-08 19:18:08', '2017-12-08 19:18:08', '', 0, 'http://vencanje-1017.app/?page_id=10', 0, 'page', '', 0),
(11, 1, '2017-12-06 19:36:31', '2017-12-06 19:36:31', '', 'Our Wedding', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-12-06 19:36:31', '2017-12-06 19:36:31', '', 10, 'http://vencanje-1017.app/2017/12/06/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2017-12-06 19:37:23', '2017-12-06 19:37:23', '', 'Novosti', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2017-12-08 19:36:22', '2017-12-08 19:36:22', '', 0, 'http://vencanje-1017.app/?page_id=12', 0, 'page', '', 0),
(13, 1, '2017-12-06 19:36:35', '2017-12-06 19:36:35', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-12-06 19:36:35', '2017-12-06 19:36:35', '', 12, 'http://vencanje-1017.app/2017/12/06/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2017-12-06 19:37:24', '2017-12-06 19:37:24', '', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2017-12-08 19:47:51', '2017-12-08 19:47:51', '', 0, 'http://vencanje-1017.app/?page_id=14', 0, 'page', '', 0),
(15, 1, '2017-12-06 19:36:40', '2017-12-06 19:36:40', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2017-12-06 19:36:40', '2017-12-06 19:36:40', '', 14, 'http://vencanje-1017.app/2017/12/06/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2017-12-06 19:37:24', '2017-12-06 19:37:24', '', 'RSVP', '', 'publish', 'closed', 'closed', '', 'rsvp', '', '', '2017-12-08 19:10:35', '2017-12-08 19:10:35', '', 0, 'http://vencanje-1017.app/?page_id=16', 0, 'page', '', 0),
(17, 1, '2017-12-06 19:36:45', '2017-12-06 19:36:45', '', 'RSVP', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2017-12-06 19:36:45', '2017-12-06 19:36:45', '', 16, 'http://vencanje-1017.app/2017/12/06/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2017-12-06 19:36:57', '2017-12-06 19:36:57', '', 'Guestbook', '', 'publish', 'closed', 'closed', '', 'guestbook', '', '', '2017-12-08 19:07:47', '2017-12-08 19:07:47', '', 0, 'http://vencanje-1017.app/?page_id=18', 0, 'page', '', 0),
(19, 1, '2017-12-06 19:36:51', '2017-12-06 19:36:51', '', 'Geustbook', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2017-12-06 19:36:51', '2017-12-06 19:36:51', '', 18, 'http://vencanje-1017.app/2017/12/06/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2017-12-06 19:36:57', '2017-12-06 19:36:57', '', 'Guestbook', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2017-12-06 19:36:57', '2017-12-06 19:36:57', '', 18, 'http://vencanje-1017.app/2017/12/06/18-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2017-12-06 19:37:23', '2017-12-06 19:37:23', 'Ja sam marko.', 'Kontakt', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2017-12-08 20:03:34', '2017-12-08 20:03:34', '', 0, 'http://vencanje-1017.app/?page_id=21', 0, 'page', '', 0),
(22, 1, '2017-12-06 19:37:01', '2017-12-06 19:37:01', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-12-06 19:37:01', '2017-12-06 19:37:01', '', 21, 'http://vencanje-1017.app/2017/12/06/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2017-12-06 19:39:12', '2017-12-06 19:39:12', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2017-12-06 19:52:38', '2017-12-06 19:52:38', '', 0, 'http://vencanje-1017.app/?p=23', 7, 'nav_menu_item', '', 0),
(24, 1, '2017-12-06 19:39:13', '2017-12-06 19:39:13', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2017-12-06 19:52:38', '2017-12-06 19:52:38', '', 0, 'http://vencanje-1017.app/?p=24', 8, 'nav_menu_item', '', 0),
(25, 1, '2017-12-06 19:39:12', '2017-12-06 19:39:12', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2017-12-06 19:52:38', '2017-12-06 19:52:38', '', 0, 'http://vencanje-1017.app/?p=25', 4, 'nav_menu_item', '', 0),
(26, 1, '2017-12-06 19:39:13', '2017-12-06 19:39:13', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2017-12-06 19:52:38', '2017-12-06 19:52:38', '', 0, 'http://vencanje-1017.app/?p=26', 6, 'nav_menu_item', '', 0),
(27, 1, '2017-12-06 19:39:11', '2017-12-06 19:39:11', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2017-12-06 19:52:37', '2017-12-06 19:52:37', '', 0, 'http://vencanje-1017.app/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2017-12-06 19:39:11', '2017-12-06 19:39:11', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2017-12-06 19:52:37', '2017-12-06 19:52:37', '', 0, 'http://vencanje-1017.app/?p=28', 2, 'nav_menu_item', '', 0),
(29, 1, '2017-12-06 19:39:12', '2017-12-06 19:39:12', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2017-12-06 19:52:38', '2017-12-06 19:52:38', '', 0, 'http://vencanje-1017.app/?p=29', 5, 'nav_menu_item', '', 0),
(30, 1, '2017-12-06 19:38:25', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-06 19:38:25', '0000-00-00 00:00:00', '', 0, 'http://vencanje-1017.app/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2017-12-06 19:39:37', '2017-12-06 19:39:37', 'gvkvbkj', 'Subpage', '', 'publish', 'closed', 'closed', '', 'subpage', '', '', '2017-12-08 19:49:18', '2017-12-08 19:49:18', '', 0, 'http://vencanje-1017.app/?page_id=31', 0, 'page', '', 0),
(32, 1, '2017-12-06 19:39:18', '2017-12-06 19:39:18', '', 'Subpage', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2017-12-06 19:39:18', '2017-12-06 19:39:18', '', 31, 'http://vencanje-1017.app/2017/12/06/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2017-12-06 19:39:56', '2017-12-06 19:39:56', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2017-12-06 19:52:37', '2017-12-06 19:52:37', '', 0, 'http://vencanje-1017.app/?p=33', 3, 'nav_menu_item', '', 0),
(34, 1, '2017-12-06 19:53:00', '2017-12-06 19:53:00', '', 'Novosti', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-12-06 19:53:00', '2017-12-06 19:53:00', '', 12, 'http://vencanje-1017.app/2017/12/06/12-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2017-12-08 19:39:37', '2017-12-08 19:39:37', 'Praesent ac justo quis nunc tempor tincidunt. Integer molestie malesuada nunc ut porta. Nullam ornare viverra nisi, ut sollicitudin urna dapibus nec. Suspendisse ante nisi, aliquet sit amet urna et, ornare tincidunt nunc. Cras et enim lacus. In hac habitasse platea dictumst. Pellentesque quis sapien ac urna sagittis congue non sed ante. Donec semper venenatis vestibulum. Suspendisse pretium rutrum turpis non pretium. Nullam rhoncus metus nec enim lacinia tempus. Nulla sagittis malesuada augue ac auctor.\r\n\r\nPraesent ac justo quis nunc tempor tincidunt. Integer molestie malesuada nunc ut porta. Nullam ornare viverra nisi, ut sollicitudin urna dapibus nec. Suspendisse ante nisi, aliquet sit amet urna et, ornare tincidunt nunc. Cras et enim lacus. In hac habitasse platea dictumst. Pellentesque quis sapien ac urna sagittis congue non sed ante. Donec semper venenatis vestibulum. Suspendisse pretium rutrum turpis non pretium. Nullam rhoncus metus nec enim lacinia tempus. Nulla sagittis malesuada augue ac auctor.\r\n\r\nPraesent ac justo quis nunc tempor tincidunt. Integer molestie malesuada nunc ut porta. Nullam ornare viverra nisi, ut sollicitudin urna dapibus nec. Suspendisse ante nisi, aliquet sit amet urna et, ornare tincidunt nunc. Cras et enim lacus. In hac habitasse platea dictumst. Pellentesque quis sapien ac urna sagittis congue non sed ante. Donec semper venenatis vestibulum. Suspendisse pretium rutrum turpis non pretium. Nullam rhoncus metus nec enim lacinia tempus. Nulla sagittis malesuada augue ac auctor.\r\n\r\nPraesent ac justo quis nunc tempor tincidunt. Integer molestie malesuada nunc ut porta. Nullam ornare viverra nisi, ut sollicitudin urna dapibus nec. Suspendisse ante nisi, aliquet sit amet urna et, ornare tincidunt nunc. Cras et enim lacus. In hac habitasse platea dictumst. Pellentesque quis sapien ac urna sagittis congue non sed ante. Donec semper venenatis vestibulum. Suspendisse pretium rutrum turpis non pretium. Nullam rhoncus metus nec enim lacinia tempus. Nulla sagittis malesuada augue ac auctor.\r\n\r\nPraesent ac justo quis nunc tempor tincidunt. Integer molestie malesuada nunc ut porta. Nullam ornare viverra nisi, ut sollicitudin urna dapibus nec. Suspendisse ante nisi, aliquet sit amet urna et, ornare tincidunt nunc. Cras et enim lacus. In hac habitasse platea dictumst. Pellentesque quis sapien ac urna sagittis congue non sed ante. Donec semper venenatis vestibulum. Suspendisse pretium rutrum turpis non pretium. Nullam rhoncus metus nec enim lacinia tempus. Nulla sagittis malesuada augue ac auctor.\r\n\r\nPraesent ac justo quis nunc tempor tincidunt. Integer molestie malesuada nunc ut porta. Nullam ornare viverra nisi, ut sollicitudin urna dapibus nec. Suspendisse ante nisi, aliquet sit amet urna et, ornare tincidunt nunc. Cras et enim lacus. In hac habitasse platea dictumst. Pellentesque quis sapien ac urna sagittis congue non sed ante. Donec semper venenatis vestibulum. Suspendisse pretium rutrum turpis non pretium. Nullam rhoncus metus nec enim lacinia tempus. Nulla sagittis malesuada augue ac auctor.', 'This is Michael & Miranda first date', '', 'publish', 'open', 'open', '', 'this-is-michael-miranda-first-date', '', '', '2017-12-16 11:15:34', '2017-12-16 11:15:34', '', 0, 'http://vencanje-1017.app/?p=36', 0, 'post', '', 0),
(37, 1, '2017-12-08 19:39:37', '2017-12-08 19:39:37', 'Praesent ac justo quis nunc tempor tincidunt. Integer molestie malesuada nunc ut porta. Nullam ornare viverra nisi, ut sollicitudin urna dapibus nec. Suspendisse ante nisi, aliquet sit amet urna et, ornare tincidunt nunc. Cras et enim lacus. In hac habitasse platea dictumst. Pellentesque quis sapien ac urna sagittis congue non sed ante. Donec semper venenatis vestibulum. Suspendisse pretium rutrum turpis non pretium. Nullam rhoncus metus nec enim lacinia tempus. Nulla sagittis malesuada augue ac auctor.', 'This is Michael & Miranda first date', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2017-12-08 19:39:37', '2017-12-08 19:39:37', '', 36, 'http://vencanje-1017.app/2017/12/08/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2017-12-08 19:49:18', '2017-12-08 19:49:18', 'gvkvbkj', 'Subpage', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2017-12-08 19:49:18', '2017-12-08 19:49:18', '', 31, 'http://vencanje-1017.app/2017/12/08/31-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2017-12-08 19:55:07', '2017-12-08 19:55:07', 'Ja sam marko.', 'Contact', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-12-08 19:55:07', '2017-12-08 19:55:07', '', 21, 'http://vencanje-1017.app/2017/12/08/21-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2017-12-08 19:55:47', '2017-12-08 19:55:47', 'Ja sam marko.', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-12-08 19:55:47', '2017-12-08 19:55:47', '', 21, 'http://vencanje-1017.app/2017/12/08/21-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2017-12-08 19:56:29', '2017-12-08 19:56:29', 'Ja sam marko.', 'Kontakt1', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-12-08 19:56:29', '2017-12-08 19:56:29', '', 21, 'http://vencanje-1017.app/2017/12/08/21-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2017-12-08 20:03:33', '2017-12-08 20:03:33', 'Ja sam marko.', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '21-autosave-v1', '', '', '2017-12-08 20:03:33', '2017-12-08 20:03:33', '', 21, 'http://vencanje-1017.app/2017/12/08/21-autosave-v1/', 0, 'revision', '', 0),
(43, 1, '2017-12-08 20:03:34', '2017-12-08 20:03:34', 'Ja sam marko.', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-12-08 20:03:34', '2017-12-08 20:03:34', '', 21, 'http://vencanje-1017.app/2017/12/08/21-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2017-12-13 18:50:01', '2017-12-13 18:50:01', '', 'Love is color of blind', 'Maecenas egestas congue nulla, eget feugiat diam\r\neleifend in. Nunc augue mi, vestibulum.', 'publish', 'closed', 'closed', '', 'love-is-color-of-blind', '', '', '2017-12-13 19:51:10', '2017-12-13 19:51:10', '', 0, 'http://vencanje-1017.app/?post_type=slider&#038;p=53', 0, 'slider', '', 0),
(54, 1, '2017-12-13 18:49:52', '2017-12-13 18:49:52', '', 'slide1', '', 'inherit', 'open', 'closed', '', 'slide1', '', '', '2017-12-13 18:49:52', '2017-12-13 18:49:52', '', 53, 'http://vencanje-1017.app/wp-content/uploads/2017/12/slide1.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2017-12-13 18:50:55', '2017-12-13 18:50:55', '', 'Nulla porta, ipsum sit amet', 'Maecenas egestas congue nulla, eget feugiat diam eleifend in. Nunc augue mi, vestibulum.', 'publish', 'closed', 'closed', '', 'nulla-porta-ipsum-sit-amet', '', '', '2017-12-13 19:51:23', '2017-12-13 19:51:23', '', 0, 'http://vencanje-1017.app/?post_type=slider&#038;p=55', 0, 'slider', '', 0),
(56, 1, '2017-12-13 18:50:52', '2017-12-13 18:50:52', 'Ovaj ACF je bas super', 'slide2', '', 'inherit', 'open', 'closed', '', 'slide2', '', '', '2017-12-16 09:58:21', '2017-12-16 09:58:21', '', 55, 'http://vencanje-1017.app/wp-content/uploads/2017/12/slide2.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2017-12-13 18:51:23', '2017-12-13 18:51:23', '', 'Quisque lorem urna blandit', 'Maecenas egestas congue nulla, eget feugiat diam eleifend in. Nunc augue mi, vestibulum.', 'publish', 'closed', 'closed', '', 'quisque-lorem-urna-blandit', '', '', '2017-12-13 19:51:17', '2017-12-13 19:51:17', '', 0, 'http://vencanje-1017.app/?post_type=slider&#038;p=57', 0, 'slider', '', 0),
(58, 1, '2017-12-13 18:51:19', '2017-12-13 18:51:19', '', 'slide3', '', 'inherit', 'open', 'closed', '', 'slide3', '', '', '2017-12-13 18:51:19', '2017-12-13 18:51:19', '', 57, 'http://vencanje-1017.app/wp-content/uploads/2017/12/slide3.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2017-12-13 19:08:16', '2017-12-13 19:08:16', '', 'Novi slajd', 'Kako nam je lopo bilo na moru. Kako nam je lopo bilo na moru . Kako nam je lopo bilo na moru. Kako nam je lopo bilo na moru. Kako nam je lopo bilo na moru. .Kako nam je lopo bilo na moru. Kako nam je lopo bilo na moru Kako nam je lopo bilo na moru. Kako nam je lopo bilo na moru . Kako nam je lopo bilo na moru. Kako nam je lopo bilo na moru. Kako nam je lopo bilo na moru. .Kako nam je lopo bilo na moru. Kako nam je lopo bilo na moru', 'publish', 'closed', 'closed', '', 'novi-slajd', '', '', '2017-12-13 19:51:04', '2017-12-13 19:51:04', '', 0, 'http://vencanje-1017.app/?post_type=slider&#038;p=59', 0, 'slider', '', 0),
(61, 1, '2017-12-13 19:15:06', '2017-12-13 19:15:06', '', 'happy-family-seaside-summer-holidays-children-people-concept-34393828', '', 'inherit', 'open', 'closed', '', 'happy-family-seaside-summer-holidays-children-people-concept-34393828', '', '', '2017-12-13 19:15:06', '2017-12-13 19:15:06', '', 59, 'http://vencanje-1017.app/wp-content/uploads/2017/12/happy-family-seaside-summer-holidays-children-people-concept-34393828.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2017-12-15 18:21:42', '2017-12-15 18:21:42', 'Nunc lacinia, lectus sed posuere laoreet, dui velit varius enim, id feugiat risus lacus posuere purus. Quisque vitae risus enim. Quisque in massa sodales, bibendum felis sed, egestas quam.', 'Love is color of blind', '', 'publish', 'open', 'open', '', 'love-is-color-of-blind', '', '', '2017-12-16 11:15:28', '2017-12-16 11:15:28', '', 0, 'http://vencanje-1017.app/?p=65', 0, 'post', '', 0),
(66, 1, '2017-12-15 18:21:42', '2017-12-15 18:21:42', 'Nunc lacinia, lectus sed posuere laoreet, dui velit varius enim, id feugiat risus lacus posuere purus. Quisque vitae risus enim. Quisque in massa sodales, bibendum felis sed, egestas quam.', 'Love is color of blind', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2017-12-15 18:21:42', '2017-12-15 18:21:42', '', 65, 'http://vencanje-1017.app/2017/12/15/65-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2017-12-15 18:22:10', '2017-12-15 18:22:10', 'Nunc lacinia, lectus sed posuere laoreet, dui velit varius enim, id feugiat risus lacus posuere purus. Quisque vitae risus enim. Quisque in massa sodales, bibendum felis sed, egestas quam.', 'When I look into your eyes', '', 'publish', 'open', 'open', '', 'when-i-look-into-your-eyes', '', '', '2017-12-16 11:15:15', '2017-12-16 11:15:15', '', 0, 'http://vencanje-1017.app/?p=67', 0, 'post', '', 0),
(68, 1, '2017-12-15 18:22:10', '2017-12-15 18:22:10', 'Nunc lacinia, lectus sed posuere laoreet, dui velit varius enim, id feugiat risus lacus posuere purus. Quisque vitae risus enim. Quisque in massa sodales, bibendum felis sed, egestas quam.', 'When I look into your eyes', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2017-12-15 18:22:10', '2017-12-15 18:22:10', '', 67, 'http://vencanje-1017.app/2017/12/15/67-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2017-12-15 19:19:10', '2017-12-15 19:19:10', 'Praesent ac justo quis nunc tempor tincidunt. Integer molestie malesuada nunc ut porta. Nullam ornare viverra nisi, ut sollicitudin urna dapibus nec. Suspendisse ante nisi, aliquet sit amet urna et, ornare tincidunt nunc. Cras et enim lacus. In hac habitasse platea dictumst. Pellentesque quis sapien ac urna sagittis congue non sed ante. Donec semper venenatis vestibulum. Suspendisse pretium rutrum turpis non pretium. Nullam rhoncus metus nec enim lacinia tempus. Nulla sagittis malesuada augue ac auctor.\r\n\r\nPraesent ac justo quis nunc tempor tincidunt. Integer molestie malesuada nunc ut porta. Nullam ornare viverra nisi, ut sollicitudin urna dapibus nec. Suspendisse ante nisi, aliquet sit amet urna et, ornare tincidunt nunc. Cras et enim lacus. In hac habitasse platea dictumst. Pellentesque quis sapien ac urna sagittis congue non sed ante. Donec semper venenatis vestibulum. Suspendisse pretium rutrum turpis non pretium. Nullam rhoncus metus nec enim lacinia tempus. Nulla sagittis malesuada augue ac auctor.\r\n\r\nPraesent ac justo quis nunc tempor tincidunt. Integer molestie malesuada nunc ut porta. Nullam ornare viverra nisi, ut sollicitudin urna dapibus nec. Suspendisse ante nisi, aliquet sit amet urna et, ornare tincidunt nunc. Cras et enim lacus. In hac habitasse platea dictumst. Pellentesque quis sapien ac urna sagittis congue non sed ante. Donec semper venenatis vestibulum. Suspendisse pretium rutrum turpis non pretium. Nullam rhoncus metus nec enim lacinia tempus. Nulla sagittis malesuada augue ac auctor.\r\n\r\nPraesent ac justo quis nunc tempor tincidunt. Integer molestie malesuada nunc ut porta. Nullam ornare viverra nisi, ut sollicitudin urna dapibus nec. Suspendisse ante nisi, aliquet sit amet urna et, ornare tincidunt nunc. Cras et enim lacus. In hac habitasse platea dictumst. Pellentesque quis sapien ac urna sagittis congue non sed ante. Donec semper venenatis vestibulum. Suspendisse pretium rutrum turpis non pretium. Nullam rhoncus metus nec enim lacinia tempus. Nulla sagittis malesuada augue ac auctor.\r\n\r\nPraesent ac justo quis nunc tempor tincidunt. Integer molestie malesuada nunc ut porta. Nullam ornare viverra nisi, ut sollicitudin urna dapibus nec. Suspendisse ante nisi, aliquet sit amet urna et, ornare tincidunt nunc. Cras et enim lacus. In hac habitasse platea dictumst. Pellentesque quis sapien ac urna sagittis congue non sed ante. Donec semper venenatis vestibulum. Suspendisse pretium rutrum turpis non pretium. Nullam rhoncus metus nec enim lacinia tempus. Nulla sagittis malesuada augue ac auctor.\r\n\r\nPraesent ac justo quis nunc tempor tincidunt. Integer molestie malesuada nunc ut porta. Nullam ornare viverra nisi, ut sollicitudin urna dapibus nec. Suspendisse ante nisi, aliquet sit amet urna et, ornare tincidunt nunc. Cras et enim lacus. In hac habitasse platea dictumst. Pellentesque quis sapien ac urna sagittis congue non sed ante. Donec semper venenatis vestibulum. Suspendisse pretium rutrum turpis non pretium. Nullam rhoncus metus nec enim lacinia tempus. Nulla sagittis malesuada augue ac auctor.', 'This is Michael & Miranda first date', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2017-12-15 19:19:10', '2017-12-15 19:19:10', '', 36, 'http://vencanje-1017.app/2017/12/15/36-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2017-12-16 09:53:49', '2017-12-16 09:53:49', '', 'Blogpost', '', 'publish', 'closed', 'closed', '', 'acf_blogpost', '', '', '2017-12-16 09:57:22', '2017-12-16 09:57:22', '', 0, 'http://vencanje-1017.app/?post_type=acf&#038;p=70', 0, 'acf', '', 0),
(71, 1, '2017-12-16 09:54:15', '2017-12-16 09:54:15', 'Praesent ac justo quis nunc tempor tincidunt. Integer molestie malesuada nunc ut porta. Nullam ornare viverra nisi, ut sollicitudin urna dapibus nec. Suspendisse ante nisi, aliquet sit amet urna et, ornare tincidunt nunc. Cras et enim lacus. In hac habitasse platea dictumst. Pellentesque quis sapien ac urna sagittis congue non sed ante. Donec semper venenatis vestibulum. Suspendisse pretium rutrum turpis non pretium. Nullam rhoncus metus nec enim lacinia tempus. Nulla sagittis malesuada augue ac auctor.\r\n\r\nPraesent ac justo quis nunc tempor tincidunt. Integer molestie malesuada nunc ut porta. Nullam ornare viverra nisi, ut sollicitudin urna dapibus nec. Suspendisse ante nisi, aliquet sit amet urna et, ornare tincidunt nunc. Cras et enim lacus. In hac habitasse platea dictumst. Pellentesque quis sapien ac urna sagittis congue non sed ante. Donec semper venenatis vestibulum. Suspendisse pretium rutrum turpis non pretium. Nullam rhoncus metus nec enim lacinia tempus. Nulla sagittis malesuada augue ac auctor.\r\n\r\nPraesent ac justo quis nunc tempor tincidunt. Integer molestie malesuada nunc ut porta. Nullam ornare viverra nisi, ut sollicitudin urna dapibus nec. Suspendisse ante nisi, aliquet sit amet urna et, ornare tincidunt nunc. Cras et enim lacus. In hac habitasse platea dictumst. Pellentesque quis sapien ac urna sagittis congue non sed ante. Donec semper venenatis vestibulum. Suspendisse pretium rutrum turpis non pretium. Nullam rhoncus metus nec enim lacinia tempus. Nulla sagittis malesuada augue ac auctor.\r\n\r\nPraesent ac justo quis nunc tempor tincidunt. Integer molestie malesuada nunc ut porta. Nullam ornare viverra nisi, ut sollicitudin urna dapibus nec. Suspendisse ante nisi, aliquet sit amet urna et, ornare tincidunt nunc. Cras et enim lacus. In hac habitasse platea dictumst. Pellentesque quis sapien ac urna sagittis congue non sed ante. Donec semper venenatis vestibulum. Suspendisse pretium rutrum turpis non pretium. Nullam rhoncus metus nec enim lacinia tempus. Nulla sagittis malesuada augue ac auctor.\r\n\r\nPraesent ac justo quis nunc tempor tincidunt. Integer molestie malesuada nunc ut porta. Nullam ornare viverra nisi, ut sollicitudin urna dapibus nec. Suspendisse ante nisi, aliquet sit amet urna et, ornare tincidunt nunc. Cras et enim lacus. In hac habitasse platea dictumst. Pellentesque quis sapien ac urna sagittis congue non sed ante. Donec semper venenatis vestibulum. Suspendisse pretium rutrum turpis non pretium. Nullam rhoncus metus nec enim lacinia tempus. Nulla sagittis malesuada augue ac auctor.\r\n\r\nPraesent ac justo quis nunc tempor tincidunt. Integer molestie malesuada nunc ut porta. Nullam ornare viverra nisi, ut sollicitudin urna dapibus nec. Suspendisse ante nisi, aliquet sit amet urna et, ornare tincidunt nunc. Cras et enim lacus. In hac habitasse platea dictumst. Pellentesque quis sapien ac urna sagittis congue non sed ante. Donec semper venenatis vestibulum. Suspendisse pretium rutrum turpis non pretium. Nullam rhoncus metus nec enim lacinia tempus. Nulla sagittis malesuada augue ac auctor.', 'This is Michael & Miranda first date', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2017-12-16 09:54:15', '2017-12-16 09:54:15', '', 36, 'http://vencanje-1017.app/2017/12/16/36-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2017-12-16 09:57:00', '2017-12-16 09:57:00', 'Nunc lacinia, lectus sed posuere laoreet, dui velit varius enim, id feugiat risus lacus posuere purus. Quisque vitae risus enim. Quisque in massa sodales, bibendum felis sed, egestas quam.', 'Love is color of blind', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2017-12-16 09:57:00', '2017-12-16 09:57:00', '', 65, 'http://vencanje-1017.app/2017/12/16/65-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2017-12-16 10:06:05', '2017-12-16 10:06:05', 'Nunc lacinia, lectus sed posuere laoreet, dui velit varius enim, id feugiat risus lacus posuere purus. Quisque vitae risus enim. Quisque in massa sodales, bibendum felis sed, egestas quam.', 'When I look into your eyes', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2017-12-16 10:06:05', '2017-12-16 10:06:05', '', 67, 'http://vencanje-1017.app/2017/12/16/67-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2017-12-16 10:36:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-16 10:36:36', '0000-00-00 00:00:00', '', 0, 'http://vencanje-1017.app/?post_type=acf&p=74', 0, 'acf', '', 0),
(75, 1, '2017-12-16 10:40:09', '2017-12-16 10:40:09', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";}}}s:8:"position";s:6:"normal";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:0:{}s:11:"description";s:0:"";}', 'Blogpost', 'blogpost', 'publish', 'closed', 'closed', '', 'group_5a34f8097af10', '', '', '2017-12-16 10:40:09', '2017-12-16 10:40:09', '', 0, 'http://vencanje-1017.app/?post_type=acf-field-group&p=75', 0, 'acf-field-group', '', 0),
(76, 1, '2017-12-16 10:40:09', '2017-12-16 10:40:09', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:54:"Ubacite ovde sliku ako zelite da se ta slika prikaze..";s:8:"required";i:1;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:12:"preview_size";s:5:"large";s:7:"library";s:3:"all";s:17:"conditional_logic";i:0;s:13:"return_format";s:5:"array";s:9:"min_width";i:0;s:10:"min_height";i:0;s:8:"min_size";i:0;s:9:"max_width";i:0;s:10:"max_height";i:0;s:8:"max_size";i:0;s:10:"mime_types";s:0:"";}', 'Hero Image', 'hero_image', 'publish', 'closed', 'closed', '', 'field_5a34ec62f3ee2', '', '', '2017-12-16 10:40:09', '2017-12-16 10:40:09', '', 75, 'http://vencanje-1017.app/?post_type=acf-field&p=76', 0, 'acf-field', '', 0),
(77, 1, '2017-12-16 10:41:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-16 10:41:56', '0000-00-00 00:00:00', '', 0, 'http://vencanje-1017.app/?post_type=acf-field-group&p=77', 0, 'acf-field-group', '', 0),
(78, 1, '2017-12-16 10:43:54', '2017-12-16 10:43:54', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:26:"acf-options-theme-settings";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Theme Options', 'theme-options', 'publish', 'closed', 'closed', '', 'group_5a34f8d6a526b', '', '', '2017-12-20 18:28:08', '2017-12-20 18:28:08', '', 0, 'http://vencanje-1017.app/?post_type=acf-field-group&#038;p=78', 0, 'acf-field-group', '', 0),
(79, 1, '2017-12-16 10:46:08', '2017-12-16 10:46:08', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:59:"The text that will be shown within the footer About Us box.";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:0;s:5:"delay";i:1;}', 'About Us', 'about_us', 'publish', 'closed', 'closed', '', 'field_5a34f90d89207', '', '', '2017-12-16 11:44:26', '2017-12-16 11:44:26', '', 78, 'http://vencanje-1017.app/?post_type=acf-field&#038;p=79', 7, 'acf-field', '', 0),
(80, 1, '2017-12-16 11:18:32', '2017-12-16 11:18:32', 'I hate him.', 'Michael is a jackass', '', 'publish', 'open', 'open', '', 'michael-is-a-jackass', '', '', '2017-12-16 11:18:32', '2017-12-16 11:18:32', '', 0, 'http://vencanje-1017.app/?p=80', 0, 'post', '', 0),
(81, 1, '2017-12-16 11:17:43', '2017-12-16 11:17:43', '', 'Car Scratch', '', 'inherit', 'open', 'closed', '', 'phot0114-jpg', '', '', '2017-12-16 11:18:19', '2017-12-16 11:18:19', '', 80, 'http://vencanje-1017.app/wp-content/uploads/2017/12/scuffs-website-photos-info-0352.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2017-12-16 11:18:32', '2017-12-16 11:18:32', 'I hate him.', 'Michael is a jackass', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2017-12-16 11:18:32', '2017-12-16 11:18:32', '', 80, 'http://vencanje-1017.app/2017/12/16/80-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2017-12-16 11:23:32', '2017-12-16 11:23:32', 'a:13:{s:4:"type";s:8:"taxonomy";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:8:"taxonomy";s:8:"category";s:10:"field_type";s:6:"select";s:10:"allow_null";i:0;s:8:"add_term";i:0;s:10:"save_terms";i:0;s:10:"load_terms";i:0;s:13:"return_format";s:2:"id";s:8:"multiple";i:0;}', 'Latest Posts Category', 'latest_posts_category', 'publish', 'closed', 'closed', '', 'field_5a35019e7c198', '', '', '2017-12-16 11:44:26', '2017-12-16 11:44:26', '', 78, 'http://vencanje-1017.app/?post_type=acf-field&#038;p=83', 5, 'acf-field', '', 0),
(84, 1, '2017-12-16 11:26:23', '2017-12-16 11:26:23', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:4:"left";s:8:"endpoint";i:0;}', 'Latest Posts', '', 'publish', 'closed', 'closed', '', 'field_5a3502c7843be', '', '', '2017-12-16 11:44:26', '2017-12-16 11:44:26', '', 78, 'http://vencanje-1017.app/?post_type=acf-field&#038;p=84', 4, 'acf-field', '', 0),
(85, 1, '2017-12-16 11:26:24', '2017-12-16 11:26:24', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:4:"left";s:8:"endpoint";i:0;}', 'About Us', '', 'publish', 'closed', 'closed', '', 'field_5a3502b4843bd', '', '', '2017-12-16 11:44:26', '2017-12-16 11:44:26', '', 78, 'http://vencanje-1017.app/?post_type=acf-field&#038;p=85', 6, 'acf-field', '', 0),
(86, 1, '2017-12-16 11:30:24', '2017-12-16 11:30:24', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:106:"This is a logotype that will be shown on all pages within the header section. The logo will not be scaled.";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_5a35036dd097b', '', '', '2017-12-16 11:30:24', '2017-12-16 11:30:24', '', 78, 'http://vencanje-1017.app/?post_type=acf-field&p=86', 0, 'acf-field', '', 0),
(87, 1, '2017-12-16 11:30:47', '2017-12-16 11:30:47', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2017-12-16 11:31:00', '2017-12-16 11:31:00', '', 0, 'http://vencanje-1017.app/wp-content/uploads/2017/12/logo.png', 0, 'attachment', 'image/png', 0),
(88, 1, '2017-12-16 11:33:27', '2017-12-16 11:33:27', '', 'sae-institute-logo-4FB3DF8204-seeklogo.com', '', 'inherit', 'open', 'closed', '', 'sae-institute-logo-4fb3df8204-seeklogo-com', '', '', '2017-12-16 11:33:27', '2017-12-16 11:33:27', '', 0, 'http://vencanje-1017.app/wp-content/uploads/2017/12/sae-institute-logo-4FB3DF8204-seeklogo.com_.png', 0, 'attachment', 'image/png', 0),
(89, 1, '2017-12-16 11:38:52', '2017-12-16 11:38:52', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:4:"left";s:8:"endpoint";i:0;}', 'Get in Touch', '', 'publish', 'closed', 'closed', '', 'field_5a3504ff857ae', '', '', '2017-12-16 11:44:25', '2017-12-16 11:44:25', '', 78, 'http://vencanje-1017.app/?post_type=acf-field&#038;p=89', 1, 'acf-field', '', 0),
(90, 1, '2017-12-16 11:38:52', '2017-12-16 11:38:52', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:5:"basic";s:12:"media_upload";i:0;s:5:"delay";i:0;}', 'Contact Information', 'contact_information', 'publish', 'closed', 'closed', '', 'field_5a350510857af', '', '', '2017-12-16 11:44:26', '2017-12-16 11:44:26', '', 78, 'http://vencanje-1017.app/?post_type=acf-field&#038;p=90', 2, 'acf-field', '', 0),
(91, 1, '2017-12-16 11:44:26', '2017-12-16 11:44:26', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";i:0;s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:0:"";}', 'Social Links', 'social_links', 'publish', 'closed', 'closed', '', 'field_5a350649fee02', '', '', '2017-12-16 11:44:26', '2017-12-16 11:44:26', '', 78, 'http://vencanje-1017.app/?post_type=acf-field&p=91', 3, 'acf-field', '', 0),
(92, 1, '2017-12-16 11:44:26', '2017-12-16 11:44:26', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"30";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:7:"Twitter";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_5a3506fafee03', '', '', '2017-12-16 11:44:26', '2017-12-16 11:44:26', '', 91, 'http://vencanje-1017.app/?post_type=acf-field&p=92', 0, 'acf-field', '', 0),
(93, 1, '2017-12-16 11:45:58', '2017-12-16 11:45:58', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"40";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:19:"http://facebook.com";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_5a35074924185', '', '', '2017-12-16 11:45:58', '2017-12-16 11:45:58', '', 91, 'http://vencanje-1017.app/?post_type=acf-field&p=93', 1, 'acf-field', '', 0),
(94, 1, '2017-12-16 11:48:47', '2017-12-16 11:48:47', 'a:13:{s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"30";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:5:{s:7:"twitter";s:7:"Twitter";s:8:"facebook";s:8:"Facebook";s:9:"pinterest";s:9:"pinterest";s:6:"google";s:6:"google";s:9:"instagram";s:9:"instagram";}s:13:"default_value";a:0:{}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:0;s:4:"ajax";i:0;s:13:"return_format";s:5:"value";s:11:"placeholder";s:0:"";}', 'Icon', 'icon', 'publish', 'closed', 'closed', '', 'field_5a3507d263d7d', '', '', '2017-12-16 12:02:45', '2017-12-16 12:02:45', '', 91, 'http://vencanje-1017.app/?post_type=acf-field&#038;p=94', 2, 'acf-field', '', 0),
(95, 1, '2017-12-16 12:02:45', '2017-12-16 12:02:45', 'a:11:{s:4:"type";s:11:"post_object";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"post_type";a:0:{}s:8:"taxonomy";a:0:{}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:13:"return_format";s:6:"object";s:2:"ui";i:1;}', 'Related', 'related', 'publish', 'closed', 'closed', '', 'field_5a350b4c9fa87', '', '', '2017-12-16 12:02:45', '2017-12-16 12:02:45', '', 78, 'http://vencanje-1017.app/?post_type=acf-field&p=95', 8, 'acf-field', '', 0),
(96, 1, '2017-12-20 17:23:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-20 17:23:42', '0000-00-00 00:00:00', '', 0, 'http://vencanje-1017.app/?post_type=acf-field-group&p=96', 0, 'acf-field-group', '', 0),
(97, 1, '2017-12-20 17:24:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-20 17:24:12', '0000-00-00 00:00:00', '', 0, 'http://vencanje-1017.app/?post_type=acf-field-group&p=97', 0, 'acf-field-group', '', 0),
(98, 1, '2017-12-20 17:45:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-20 17:45:54', '0000-00-00 00:00:00', '', 0, 'http://vencanje-1017.app/?post_type=about_post_type&p=98', 0, 'about_post_type', '', 0),
(99, 1, '2017-12-20 17:46:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-20 17:46:13', '0000-00-00 00:00:00', '', 0, 'http://vencanje-1017.app/?post_type=about_post_type&p=99', 0, 'about_post_type', '', 0),
(100, 1, '2017-12-20 17:46:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-20 17:46:32', '0000-00-00 00:00:00', '', 0, 'http://vencanje-1017.app/?post_type=about_post_type&p=100', 0, 'about_post_type', '', 0),
(101, 1, '2017-12-20 17:46:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-20 17:46:47', '0000-00-00 00:00:00', '', 0, 'http://vencanje-1017.app/?post_type=about_post_type&p=101', 0, 'about_post_type', '', 0),
(102, 1, '2017-12-20 17:46:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-20 17:46:53', '0000-00-00 00:00:00', '', 0, 'http://vencanje-1017.app/?post_type=about_post_type&p=102', 0, 'about_post_type', '', 0),
(103, 1, '2017-12-20 17:47:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-20 17:47:03', '0000-00-00 00:00:00', '', 0, 'http://vencanje-1017.app/?post_type=about_post_type&p=103', 0, 'about_post_type', '', 0),
(104, 1, '2017-12-20 17:51:36', '2017-12-20 17:51:36', 'Etiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidunEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidunEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidunEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidunEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidunEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidunEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidun\r\n\r\nEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidunEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidunEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidunEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidun', 'About Miranda', '', 'publish', 'closed', 'closed', '', 'about-miranda', '', '', '2017-12-20 18:20:31', '2017-12-20 18:20:31', '', 0, 'http://vencanje-1017.app/?post_type=about_post_type&#038;p=104', 0, 'about_post_type', '', 0),
(105, 1, '2017-12-20 17:51:27', '2017-12-20 17:51:27', '', 'avatar5', '', 'inherit', 'open', 'closed', '', 'avatar5', '', '', '2017-12-20 17:51:27', '2017-12-20 17:51:27', '', 104, 'http://vencanje-1017.app/wp-content/uploads/2017/12/avatar5.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2017-12-20 17:51:28', '2017-12-20 17:51:28', '', 'avatar6', '', 'inherit', 'open', 'closed', '', 'avatar6', '', '', '2017-12-20 17:51:28', '2017-12-20 17:51:28', '', 104, 'http://vencanje-1017.app/wp-content/uploads/2017/12/avatar6.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2017-12-20 17:51:54', '2017-12-20 17:51:54', 'Etiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidunEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidunEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidunEtiam vitae urna nec ipsum gravida cursus dapibus et eros.\r\n\r\n[nesto]\r\n\r\n[prevedi prevod="Bla bla truc truc"]Vivamus[/prevedi] vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidunEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidunEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidunEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidun\r\n\r\n[nesto]\r\n\r\nEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidunEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidunEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidunEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidun', 'About Michael', '', 'publish', 'closed', 'closed', '', 'about-michael', '', '', '2017-12-20 19:24:25', '2017-12-20 19:24:25', '', 0, 'http://vencanje-1017.app/?post_type=about_post_type&#038;p=107', 0, 'about_post_type', '', 0),
(108, 1, '2017-12-20 18:19:12', '2017-12-20 18:19:12', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:15:"about_post_type";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'About', 'about', 'publish', 'closed', 'closed', '', 'group_5a3aa99d86b73', '', '', '2017-12-20 18:19:50', '2017-12-20 18:19:50', '', 0, 'http://vencanje-1017.app/?post_type=acf-field-group&#038;p=108', 0, 'acf-field-group', '', 0),
(109, 1, '2017-12-20 18:19:39', '2017-12-20 18:19:39', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Button', 'button', 'publish', 'closed', 'closed', '', 'field_5a3aa9a3c2954', '', '', '2017-12-20 18:19:39', '2017-12-20 18:19:39', '', 108, 'http://vencanje-1017.app/?post_type=acf-field&p=109', 0, 'acf-field', '', 0),
(110, 1, '2017-12-20 18:28:08', '2017-12-20 18:28:08', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:14:"about-us-image";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Smajli', 'smajli', 'publish', 'closed', 'closed', '', 'field_5a3aab8a07acf', '', '', '2017-12-20 18:28:08', '2017-12-20 18:28:08', '', 78, 'http://vencanje-1017.app/?post_type=acf-field&p=110', 9, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(111, 1, '2017-12-20 18:28:53', '2017-12-20 18:28:53', '', '1200px-Smiley_icon.svg', '', 'inherit', 'open', 'closed', '', '1200px-smiley_icon-svg', '', '', '2017-12-20 18:28:56', '2017-12-20 18:28:56', '', 0, 'http://vencanje-1017.app/wp-content/uploads/2017/12/1200px-Smiley_icon.svg_.png', 0, 'attachment', 'image/png', 0),
(112, 1, '2017-12-20 19:23:45', '2017-12-20 19:23:45', 'Etiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidunEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidunEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidunEtiam vitae urna nec ipsum gravida cursus dapibus et eros.\n\n[nesto]\n\nVivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidunEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidunEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidunEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidun\n\n[nesto]\n\nEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidunEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidunEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidunEtiam vitae urna nec ipsum gravida cursus dapibus et eros. Vivamus vel pellentesque nisl. Etiam eu sodales justo. Donec vitae faucibus tellus, at lacinia orci. Aliquam blandit tellus ut porttitor eleifend. Sed ornare tincidun', 'About Michael', '', 'inherit', 'closed', 'closed', '', '107-autosave-v1', '', '', '2017-12-20 19:23:45', '2017-12-20 19:23:45', '', 107, 'http://vencanje-1017.app/107-autosave-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Header Menu', 'main-header-menu', 0),
(5, 'Prvi Slajder', 'prvi-slajder', 0),
(6, 'Drugi Slajder', 'drugi-slajder', 0),
(7, 'Wedding', 'wedding', 0),
(8, 'Divorce', 'divorce', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(26, 2, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(33, 2, 0),
(36, 7, 0),
(53, 1, 0),
(53, 5, 0),
(55, 1, 0),
(55, 6, 0),
(57, 1, 0),
(57, 6, 0),
(59, 1, 0),
(59, 5, 0),
(65, 7, 0),
(67, 7, 0),
(80, 8, 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 8),
(5, 5, 'slider-categories', '', 0, 2),
(6, 6, 'slider-categories', '', 0, 2),
(7, 7, 'category', '', 0, 3),
(8, 8, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Vlada'),
(2, 1, 'first_name', 'Vladimir'),
(3, 1, 'last_name', 'Lelicanin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '44'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'session_tokens', 'a:2:{s:64:"44fd1bdb63dc0111739c29c8126661c427d4365ba1bb03c0fae48a6c18f606b5";a:4:{s:10:"expiration";i:1513963344;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:78:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0";s:5:"login";i:1513790544;}s:64:"d599c060c7015a94881d6e732ba4fd3ccbb7b171c723a6db53318e691f349945";a:4:{s:10:"expiration";i:1513963839;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:78:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0";s:5:"login";i:1513791039;}}'),
(23, 1, 'closedpostboxes_post', 'a:0:{}'),
(24, 1, 'metaboxhidden_post', 'a:6:{i:0;s:13:"trackbacksdiv";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(25, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&hidetb=0'),
(26, 1, 'wp_user-settings-time', '1513421451'),
(27, 1, 'closedpostboxes_acf', 'a:0:{}'),
(28, 1, 'metaboxhidden_acf', 'a:1:{i:0;s:7:"slugdiv";}'),
(29, 1, 'acf_user_settings', 'a:0:{}');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BjUF37q2kWd3FSsKiTBCf4VwwUqzoo/', 'admin', 'v.lelicanin@sae.edu', '', '2017-12-06 18:01:42', '', 0, 'admin');

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
  ADD KEY `comment_author_email` (`comment_author_email`(10));

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=383;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
