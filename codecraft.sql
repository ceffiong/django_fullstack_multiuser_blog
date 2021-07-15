-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 15, 2021 at 04:52 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codecraft`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles_article`
--

CREATE TABLE `articles_article` (
  `article_id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `cover_image` varchar(100) DEFAULT NULL,
  `content` longtext,
  `slug` varchar(255) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles_article`
--

INSERT INTO `articles_article` (`article_id`, `title`, `subtitle`, `cover_image`, `content`, `slug`, `created_by_id`, `created_at`, `updated_at`, `category_id`) VALUES
(35, 'Program a cool social media App in PHP and MySQL and Bootstrap frontend', 'I love PHP and MySQL programming. So cool - updated', 'article_cover_images/phpmysql.jpeg', '\n        \n        What is Lorem Ipsum?\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nWhy do we use it?\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). updated\n      ', 'program-a-cool-social-media-app-in-phdmysql-and-bootstrap-frontend', 1, '2021-07-06 14:02:35.197968', '2021-07-13 17:37:18.824841', 3),
(37, 'Learn how to use HTML5 advance features', 'Crack all HTML5 Interviews', 'article_cover_images/html5.jpeg', '\n        What is Lorem Ipsum?\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nWhy do we use it?\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n      ', 'learn-how-to-use-html5-advance-features', 22, '2021-07-07 20:13:46.551867', '2021-07-13 18:41:27.487122', 6),
(38, 'Learn CSS the easy way', 'Random CSS classes and methods updated', 'article_cover_images/css.png', '\n        \n        This is great\n      \n      ', 'learn-css-the-easy-way', 1, '2021-07-07 20:54:41.133590', '2021-07-13 18:40:07.047286', 7),
(39, 'Learn everything about axios in React', 'Make great api calls', 'article_cover_images/react-js-image.png', 'Demo', 'learn-everything-about-axios-in-react', 22, '2021-07-07 20:55:31.509652', '2021-07-15 12:30:12.190092', 5),
(40, 'Modern Javascript', 'Learn how to use modern js constructs', 'article_cover_images/javascript.jpeg', '\n        \n        Demo\n      \n      ', 'modern-javascript', 22, '2021-07-07 20:56:03.521552', '2021-07-13 18:12:39.626846', 2),
(41, 'How to program the matrix', 'Learn how to program the matrix in just 5 days of pure coding', 'article_cover_images/matrix.jpeg', '\n        Matrix programming is so much fun and you just want to try it hahahahaha', 'how-to-program-the-matrix', 1, '2021-07-13 15:03:32.913721', '2021-07-13 17:35:14.255087', 8),
(42, 'Build a full-stack app using Python Flask and React', 'Create RESTFUL API using Python Flask', 'article_cover_images/background.png', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'build-a-full-stack-app-using-python-flask-and-react', 1, '2021-07-15 12:29:32.178408', '2021-07-15 12:29:32.178452', 1),
(43, 'Build a User Management Application in Python', 'Learn basic CRUD operations using Python and SQLite DB', 'article_cover_images/background_9cII3SM.png', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'build-a-user-management-application-in-python', 1, '2021-07-15 12:31:27.234569', '2021-07-15 12:31:27.234605', 1),
(46, 'Build a multiuser full-stack blog with Django', 'Learn Django by building a cool blog full-stack app', 'article_cover_images/python-django_FC1Ve1G.png', 'Updated by Admin\r\nWhat is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the\r\n readable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less normal distribution of \r\nletters, as opposed to using \'Content here, content here\', making it \r\nlook like readable English. Many desktop publishing packages and web \r\npage editors now use Lorem Ipsum as their default model text, and a \r\nsearch for \'lorem ipsum\' will uncover many web sites still in their \r\ninfancy. Various versions have evolved over the years, sometimes by \r\naccident, sometimes on purpose (injected humour and the like).\r\n\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It\r\n has roots in a piece of classical Latin literature from 45 BC, making \r\nit over 2000 years old. Richard McClintock, a Latin professor at \r\nHampden-Sydney College in Virginia, looked up one of the more obscure \r\nLatin words, consectetur, from a Lorem Ipsum passage, and going through \r\nthe cites of the word in classical literature, discovered the \r\nundoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 \r\nof \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by \r\nCicero, written in 45 BC. This book is a treatise on the theory of \r\nethics, very popular during the Renaissance. The first line of Lorem \r\nIpsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section \r\n1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is\r\n reproduced below for those interested. Sections 1.10.32 and 1.10.33 \r\nfrom \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in \r\ntheir exact original form, accompanied by English versions from the 1914\r\n translation by H. Rackham.\r\n\r\nWhere can I get some?\r\nThere are many variations of passages of Lorem Ipsum available, but \r\nthe majority have suffered alteration in some form, by injected humour, \r\nor randomised words which don\'t look even slightly believable. If you \r\nare going to use a passage of Lorem Ipsum, you need to be sure there \r\nisn\'t anything embarrassing hidden in the middle of text. All the Lorem \r\nIpsum generators on the Internet tend to repeat predefined chunks as \r\nnecessary, making this the first true generator on the Internet. It uses\r\n a dictionary of over 200 Latin words, combined with a handful of model \r\nsentence structures, to generate Lorem Ipsum which looks reasonable. The\r\n generated Lorem Ipsum is therefore always free from repetition, \r\ninjected humour, or non-characteristic words etc.', 'build-a-multiuser-blog-with-django', 30, '2021-07-15 14:38:25.367936', '2021-07-15 14:41:44.643979', 4);

-- --------------------------------------------------------

--
-- Table structure for table `articles_category`
--

CREATE TABLE `articles_category` (
  `category_id` bigint(20) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles_category`
--

INSERT INTO `articles_category` (`category_id`, `category`) VALUES
(7, 'CSS'),
(4, 'Django'),
(6, 'HTML'),
(2, 'Javascript'),
(8, 'Other'),
(3, 'PHP'),
(1, 'Python'),
(5, 'React');

-- --------------------------------------------------------

--
-- Table structure for table `articles_comment`
--

CREATE TABLE `articles_comment` (
  `comment_id` bigint(20) NOT NULL,
  `comment` longtext NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `article_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles_comment`
--

INSERT INTO `articles_comment` (`comment_id`, `comment`, `created_by_id`, `created_at`, `updated_at`, `article_id`) VALUES
(52, 'This is lovely. Nice!', 1, '2021-07-06 15:09:44.493064', '2021-07-06 15:36:18.101297', 35),
(70, 'Adding a new comment', 22, '2021-07-07 20:09:25.014466', '2021-07-07 20:09:25.014498', 35),
(71, 'This is my first comment - update', 1, '2021-07-12 19:26:17.869444', '2021-07-13 10:49:25.004918', 38),
(79, 'comment updated again and again', 1, '2021-07-13 10:45:42.705250', '2021-07-13 10:47:50.915640', 35),
(80, 'This is a new comment', 1, '2021-07-13 10:49:34.993778', '2021-07-13 10:49:34.993810', 38),
(82, 'Another comment', 1, '2021-07-13 10:55:35.911403', '2021-07-13 10:55:35.911434', 38),
(85, 'This is a demo comment', 1, '2021-07-13 15:56:11.751675', '2021-07-13 16:11:01.289416', 41),
(86, 'Nice article. Thanks for sharing', 22, '2021-07-15 12:41:55.679843', '2021-07-15 12:41:55.679871', 38),
(121, 'This is my first comment', 30, '2021-07-15 14:39:26.716766', '2021-07-15 14:39:26.716806', 46),
(124, 'Nice article @Charles', 30, '2021-07-15 14:40:33.504313', '2021-07-15 14:40:33.504404', 41);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add article', 7, 'add_article'),
(26, 'Can change article', 7, 'change_article'),
(27, 'Can delete article', 7, 'delete_article'),
(28, 'Can view article', 7, 'view_article'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add comment', 9, 'add_comment'),
(34, 'Can change comment', 9, 'change_comment'),
(35, 'Can delete comment', 9, 'delete_comment'),
(36, 'Can view comment', 9, 'view_comment'),
(37, 'Can add user bio', 10, 'add_userbio'),
(38, 'Can change user bio', 10, 'change_userbio'),
(39, 'Can delete user bio', 10, 'delete_userbio'),
(40, 'Can view user bio', 10, 'view_userbio'),
(41, 'Can add user avatar', 11, 'add_useravatar'),
(42, 'Can change user avatar', 11, 'change_useravatar'),
(43, 'Can delete user avatar', 11, 'delete_useravatar'),
(44, 'Can view user avatar', 11, 'view_useravatar'),
(45, 'Can add user social', 12, 'add_usersocial'),
(46, 'Can change user social', 12, 'change_usersocial'),
(47, 'Can delete user social', 12, 'delete_usersocial'),
(48, 'Can view user social', 12, 'view_usersocial');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$cIlThaPrOmbCjGUIKm3Ynw$rw8ml1KRhqIS/s4wpbHNRbffIiq7xgPgdMib2rgbw0g=', '2021-07-15 14:40:49.459299', 1, 'ceffiong', 'Charles', 'Effiong', 'ceffiong.work@gmail.com', 1, 1, '2021-07-02 18:07:33.000000'),
(22, 'pbkdf2_sha256$260000$lj4aPm9ogzFCkX1QCaBhSt$+QhR5+JzmkPJMDGW1d5MGJaM25SlV+tha18cM7wjlqs=', '2021-07-14 09:45:10.000000', 0, 'phnung', 'Pham Hong', 'Nhung', 'phnung@mail.com', 0, 1, '2021-07-07 20:06:42.000000'),
(30, 'pbkdf2_sha256$260000$pX7M3NR6ms4WdVBhz4rEeh$NbKc23Hpo1rGDfHgYEi6MQ0Kaa5+9FipRnd3zVmDof0=', '2021-07-15 14:42:08.734100', 0, 'jdoe', 'John Max', 'Doe', 'john.doe@gmail.com', 0, 1, '2021-07-15 14:36:03.979674');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-07-02 18:08:44.253236', '1', 'Python', 1, '[{\"added\": {}}]', 8, 1),
(2, '2021-07-02 18:08:49.564275', '2', 'Javascript', 1, '[{\"added\": {}}]', 8, 1),
(3, '2021-07-02 18:08:54.082660', '3', 'PHP', 1, '[{\"added\": {}}]', 8, 1),
(4, '2021-07-02 18:08:57.882894', '4', 'Django', 1, '[{\"added\": {}}]', 8, 1),
(5, '2021-07-02 18:09:02.091128', '5', 'React', 1, '[{\"added\": {}}]', 8, 1),
(6, '2021-07-02 18:09:05.795407', '6', 'HTML', 1, '[{\"added\": {}}]', 8, 1),
(7, '2021-07-02 18:09:10.291066', '7', 'CSS', 1, '[{\"added\": {}}]', 8, 1),
(8, '2021-07-02 18:09:14.711169', '8', 'Other', 1, '[{\"added\": {}}]', 8, 1),
(9, '2021-07-02 18:09:30.618621', '1', 'Learn how to program your first multiple user game in Python - Python', 1, '[{\"added\": {}}]', 7, 1),
(10, '2021-07-02 18:35:30.870975', '21', 'abc', 3, '', 9, 1),
(11, '2021-07-02 18:35:30.872079', '20', 'dfasdfasf', 3, '', 9, 1),
(12, '2021-07-02 18:35:30.872878', '19', 'dfasdfas', 3, '', 9, 1),
(13, '2021-07-02 18:35:30.874143', '18', 'dfdsfasfa', 3, '', 9, 1),
(14, '2021-07-02 18:35:30.874945', '17', 'this is nhung', 3, '', 9, 1),
(15, '2021-07-02 18:35:30.875710', '16', 'dfsd fdsfa fadsf asf', 3, '', 9, 1),
(16, '2021-07-02 18:35:30.876486', '15', 'dfsdfasdf', 3, '', 9, 1),
(17, '2021-07-02 18:35:30.877276', '14', 'dfsdfasfdfsafda', 3, '', 9, 1),
(18, '2021-07-02 18:35:30.878050', '13', 'dfadsfasfa', 3, '', 9, 1),
(19, '2021-07-02 18:35:30.878829', '12', 'thisi', 3, '', 9, 1),
(20, '2021-07-02 18:35:30.879775', '11', 'dfasdfa', 3, '', 9, 1),
(21, '2021-07-02 18:35:30.880452', '10', 'dfasdfasf', 3, '', 9, 1),
(22, '2021-07-02 18:35:30.881225', '9', 'dfadsf', 3, '', 9, 1),
(23, '2021-07-02 18:35:30.882011', '8', 'dfasf', 3, '', 9, 1),
(24, '2021-07-02 18:35:30.882752', '7', 'dfasfa', 3, '', 9, 1),
(25, '2021-07-02 18:35:30.883499', '6', 'dfasdfasf', 3, '', 9, 1),
(26, '2021-07-02 18:35:30.884201', '5', 'dfsafaf', 3, '', 9, 1),
(27, '2021-07-02 18:35:30.884796', '4', 'dfasfa', 3, '', 9, 1),
(28, '2021-07-02 18:35:30.885548', '3', 'this dlfjas fldsjf alsjdfa', 3, '', 9, 1),
(29, '2021-07-02 18:35:30.886226', '2', 'sfasdfas', 3, '', 9, 1),
(30, '2021-07-02 18:39:46.642541', '24', 'dfdaf', 3, '', 9, 1),
(31, '2021-07-02 18:39:46.643405', '23', 'dfasdfa', 3, '', 9, 1),
(32, '2021-07-02 18:39:46.644121', '22', 'Nhung', 3, '', 9, 1),
(33, '2021-07-02 18:47:15.897124', '29', 'dfasfa', 3, '', 9, 1),
(34, '2021-07-02 18:47:15.898136', '28', 'now what', 3, '', 9, 1),
(35, '2021-07-02 18:47:15.898950', '27', 'dfdsfa', 3, '', 9, 1),
(36, '2021-07-02 18:47:15.900802', '26', 'aef', 3, '', 9, 1),
(37, '2021-07-02 18:47:15.901570', '25', 'abc', 3, '', 9, 1),
(38, '2021-07-02 19:00:41.631773', '32', 'What is my id?', 3, '', 9, 1),
(39, '2021-07-02 19:00:41.634919', '31', 'I am loving this', 3, '', 9, 1),
(40, '2021-07-02 19:00:41.635731', '30', 'This is working', 3, '', 9, 1),
(41, '2021-07-02 19:06:04.792424', '33', 'Nice!', 3, '', 9, 1),
(42, '2021-07-02 19:06:04.793629', '1', 'This is my first comment', 3, '', 9, 1),
(43, '2021-07-02 19:19:44.814310', '40', 'fasdfasfa', 3, '', 9, 1),
(44, '2021-07-02 19:19:44.816378', '39', 'dfsdfafa', 3, '', 9, 1),
(45, '2021-07-02 19:19:44.817173', '38', 'Another comment', 3, '', 9, 1),
(46, '2021-07-02 19:19:44.817926', '37', 'Hello', 3, '', 9, 1),
(47, '2021-07-02 19:19:44.818694', '36', 'This is my latest comment', 3, '', 9, 1),
(48, '2021-07-02 19:19:44.821231', '35', 'This is my second comment', 3, '', 9, 1),
(49, '2021-07-03 19:31:43.664427', '1', 'Learn how to program your first multiple user game in Python Working - Python', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 7, 1),
(50, '2021-07-03 19:32:22.411410', '2', 'Program a cool social media App in PHD/MySQL and Bootstrap frontend - PHP', 1, '[{\"added\": {}}]', 7, 1),
(51, '2021-07-04 18:44:10.354114', '3', 'Learn to program a Django rest application - Django', 3, '', 7, 1),
(52, '2021-07-04 21:00:01.579988', '4', 'Learn to program a Django rest application - Django', 3, '', 7, 1),
(53, '2021-07-04 21:00:01.584323', '2', 'Program a cool social media App in PHD/MySQL and Bootstrap frontend - PHP', 3, '', 7, 1),
(54, '2021-07-04 21:00:01.585237', '1', 'Learn how to program your first multiple user game in Python - Python', 3, '', 7, 1),
(55, '2021-07-04 21:03:01.629434', '22', 'Program a cool social media App in PHD/MySQL and Bootstrap frontend - PHP', 3, '', 7, 1),
(56, '2021-07-04 21:04:20.787941', '25', 'Program a cool social media App in PHD/MySQL and Bootstrap frontend - Python', 3, '', 7, 1),
(57, '2021-07-04 21:05:08.231828', '26', 'dfdsa - Python', 3, '', 7, 1),
(58, '2021-07-05 08:18:09.969310', '27', 'Program a cool social media App in PHD/MySQL and Bootstrap frontend - Python', 3, '', 7, 1),
(59, '2021-07-05 08:25:17.776676', '28', 'Program a cool social media App in PHD/MySQL and Bootstrap frontend - PHP', 3, '', 7, 1),
(60, '2021-07-05 08:41:26.617535', '32', 'This is a nice article - Python', 3, '', 7, 1),
(61, '2021-07-05 08:41:26.621881', '31', 'dfsdfa - Python', 3, '', 7, 1),
(62, '2021-07-05 08:41:26.623729', '30', 'Program a cool social media App in PHD/MySQL and Bootstrap frontend - PHP', 3, '', 7, 1),
(63, '2021-07-05 08:41:26.626711', '29', 'Learn how to program your first multiple user game in Python - Python', 3, '', 7, 1),
(64, '2021-07-05 11:54:00.459136', '2', 'nhung', 3, '', 4, 1),
(65, '2021-07-05 11:55:58.899319', '3', '', 3, '', 4, 1),
(66, '2021-07-05 12:59:50.683600', '4', 'nhung', 3, '', 4, 1),
(67, '2021-07-05 13:00:58.498939', '5', 'nhung', 3, '', 4, 1),
(68, '2021-07-05 13:04:59.531197', '6', 'nhung', 3, '', 4, 1),
(69, '2021-07-05 13:04:59.532664', '7', 'tayoademola', 3, '', 4, 1),
(70, '2021-07-05 13:09:05.207139', '8', 'adfadsfas', 3, '', 4, 1),
(71, '2021-07-05 13:11:59.243196', '9', 'addfa', 3, '', 4, 1),
(72, '2021-07-05 13:11:59.246453', '10', 'dfasdfsaf', 3, '', 4, 1),
(73, '2021-07-05 13:15:57.780808', '11', 'dfsdfasdfasdfdsf', 3, '', 4, 1),
(74, '2021-07-05 13:15:57.781766', '12', 'sdfsdfsdfdsfdsfsadf', 3, '', 4, 1),
(75, '2021-07-05 13:23:52.988161', '16', 'adfdsfdsfadsfa', 3, '', 4, 1),
(76, '2021-07-05 13:23:52.989801', '15', 'dfsadfadsfasdfasdfa', 3, '', 4, 1),
(77, '2021-07-05 13:23:52.990720', '14', 'fdasfadsfdsfdsfdsfasdfa', 3, '', 4, 1),
(78, '2021-07-05 13:23:52.991495', '13', 'fdsfdsafasdfadf', 3, '', 4, 1),
(79, '2021-07-06 09:25:13.114256', '17', 'phnung', 2, '[{\"added\": {\"name\": \"user bio\", \"object\": \"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\"}}, {\"added\": {\"name\": \"user avatar\", \"object\": \"user_cover_images/2_C5Y00xUrlUBJcWR9PqlX3w.jpeg\"}}]', 4, 1),
(80, '2021-07-06 09:26:01.684565', '1', 'ceffiong', 2, '[{\"added\": {\"name\": \"user bio\", \"object\": \"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\"}}, {\"added\": {\"name\": \"user avatar\", \"object\": \"user_cover_images/avatar.png\"}}]', 4, 1),
(81, '2021-07-06 09:53:48.244636', '1', 'ceffiong', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 4, 1),
(82, '2021-07-06 13:57:46.843252', '34', 'Learn how to program your first multiple user game in Python - Python', 3, '', 7, 1),
(83, '2021-07-06 13:57:46.846036', '33', 'Program a cool social media App in PHD/MySQL and Bootstrap frontend updated - PHP', 3, '', 7, 1),
(84, '2021-07-06 14:59:04.470595', '49', 'df fadf adf fad', 3, '', 9, 1),
(85, '2021-07-06 14:59:04.479150', '48', 'fdsfsfa', 3, '', 9, 1),
(86, '2021-07-06 14:59:04.480743', '47', 'dffasfdasf', 3, '', 9, 1),
(87, '2021-07-06 14:59:04.482466', '46', 'af fadsfa sfa', 3, '', 9, 1),
(88, '2021-07-06 15:00:48.847800', '50', 'jgjhgj', 3, '', 9, 1),
(89, '2021-07-06 15:34:53.396152', '64', 'dfdsafa', 3, '', 9, 1),
(90, '2021-07-06 15:34:53.400656', '63', 'dfdsfasdfa', 3, '', 9, 1),
(91, '2021-07-06 15:34:53.402201', '62', 'fds fs f afa f', 3, '', 9, 1),
(92, '2021-07-06 15:34:53.403517', '61', 'this is nice', 3, '', 9, 1),
(93, '2021-07-06 15:34:53.404359', '60', 'fd fadsfa', 3, '', 9, 1),
(94, '2021-07-06 15:34:53.405157', '59', 'dfsdfaf', 3, '', 9, 1),
(95, '2021-07-06 15:34:53.406629', '58', 'fcds afafsd fafafa', 3, '', 9, 1),
(96, '2021-07-06 15:34:53.407390', '57', 'dfsdf fdsfasd f fads fa', 3, '', 9, 1),
(97, '2021-07-06 15:34:53.408174', '56', 'dfdsfa', 3, '', 9, 1),
(98, '2021-07-06 15:34:53.409790', '55', 'dfasdfafa', 3, '', 9, 1),
(99, '2021-07-06 15:34:53.410579', '54', 'dfsdfa', 3, '', 9, 1),
(100, '2021-07-06 15:34:53.412068', '53', 'dfsfa', 3, '', 9, 1),
(101, '2021-07-07 19:56:13.716450', '19', 'chris', 3, '', 4, 1),
(102, '2021-07-07 19:56:13.718014', '18', 'tayo', 3, '', 4, 1),
(103, '2021-07-07 19:56:28.039935', '17', 'phnung', 3, '', 4, 1),
(104, '2021-07-07 20:02:51.079988', '20', 'tayo', 3, '', 4, 1),
(105, '2021-07-13 08:58:13.757272', '74', 'This is my latest comment', 3, '', 9, 1),
(106, '2021-07-13 08:58:13.768607', '73', 'new', 3, '', 9, 1),
(107, '2021-07-13 09:24:21.875283', '75', 'New comment', 3, '', 9, 1),
(108, '2021-07-13 09:24:21.883039', '72', 'Another comment', 3, '', 9, 1),
(109, '2021-07-13 17:45:52.724459', '21', 'chris', 3, '', 4, 1),
(110, '2021-07-14 07:12:41.353843', '1', 'ceffiong', 2, '[{\"changed\": {\"name\": \"user bio\", \"object\": \"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum - updated\", \"fields\": [\"Bio\"]}}]', 4, 1),
(111, '2021-07-14 07:12:53.238083', '22', 'phnung', 2, '[{\"changed\": {\"name\": \"user bio\", \"object\": \"This is my demo Bio\", \"fields\": [\"Bio\"]}}]', 4, 1),
(112, '2021-07-14 15:26:04.133624', '1', 'ceffiong', 2, '[{\"changed\": {\"name\": \"user bio\", \"object\": \"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum - updated\", \"fields\": [\"Bio\"]}}, {\"added\": {\"name\": \"user social\", \"object\": \"UserSocial object (1)\"}}]', 4, 1),
(113, '2021-07-14 15:26:22.471660', '22', 'phnung', 2, '[{\"added\": {\"name\": \"user social\", \"object\": \"UserSocial object (2)\"}}]', 4, 1),
(114, '2021-07-14 21:24:44.182326', '1', 'ceffiong', 2, '[{\"changed\": {\"name\": \"user social\", \"object\": \"UserSocial object (1)\", \"fields\": [\"Youtube\"]}}]', 4, 1),
(115, '2021-07-15 12:30:12.192122', '39', 'Learn everything about axios in React - React', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Category\"]}}]', 7, 1),
(116, '2021-07-15 12:39:27.403101', '23', 'jdoe', 3, '', 4, 1),
(117, '2021-07-15 12:51:23.495037', '24', 'jdoe', 3, '', 4, 1),
(118, '2021-07-15 13:09:14.695678', '26', 'jalex', 3, '', 4, 1),
(119, '2021-07-15 13:09:14.697656', '25', 'jdoe', 3, '', 4, 1),
(120, '2021-07-15 13:21:31.869731', '27', 'jdoe', 3, '', 4, 1),
(121, '2021-07-15 13:25:21.909829', '28', 'jdoe', 3, '', 4, 1),
(122, '2021-07-15 13:38:18.313299', '29', 'jdoe', 3, '', 4, 1),
(123, '2021-07-15 14:41:44.647714', '46', 'Build a multiuser full-stack blog with Django - Django', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'articles', 'article'),
(8, 'articles', 'category'),
(9, 'articles', 'comment'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(11, 'users', 'useravatar'),
(10, 'users', 'userbio'),
(12, 'users', 'usersocial');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-07-02 18:03:36.796519'),
(2, 'auth', '0001_initial', '2021-07-02 18:03:37.160678'),
(3, 'admin', '0001_initial', '2021-07-02 18:03:37.230889'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-07-02 18:03:37.239676'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-07-02 18:03:37.246214'),
(6, 'articles', '0001_initial', '2021-07-02 18:03:37.368146'),
(7, 'contenttypes', '0002_remove_content_type_name', '2021-07-02 18:03:37.431651'),
(8, 'auth', '0002_alter_permission_name_max_length', '2021-07-02 18:03:37.462354'),
(9, 'auth', '0003_alter_user_email_max_length', '2021-07-02 18:03:37.490769'),
(10, 'auth', '0004_alter_user_username_opts', '2021-07-02 18:03:37.499713'),
(11, 'auth', '0005_alter_user_last_login_null', '2021-07-02 18:03:37.530254'),
(12, 'auth', '0006_require_contenttypes_0002', '2021-07-02 18:03:37.532318'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2021-07-02 18:03:37.541540'),
(14, 'auth', '0008_alter_user_username_max_length', '2021-07-02 18:03:37.576205'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2021-07-02 18:03:37.608965'),
(16, 'auth', '0010_alter_group_name_max_length', '2021-07-02 18:03:37.642172'),
(17, 'auth', '0011_update_proxy_permissions', '2021-07-02 18:03:37.653940'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2021-07-02 18:03:37.687366'),
(19, 'sessions', '0001_initial', '2021-07-02 18:03:37.723967'),
(20, 'articles', '0002_alter_comment_created_at', '2021-07-03 16:11:54.067240'),
(21, 'articles', '0003_auto_20210704_1832', '2021-07-04 18:32:18.052675'),
(22, 'articles', '0004_alter_article_content', '2021-07-06 08:49:25.417404'),
(23, 'users', '0001_initial', '2021-07-06 08:49:25.566010'),
(24, 'articles', '0005_auto_20210706_1356', '2021-07-06 13:57:01.530047'),
(25, 'users', '0002_auto_20210707_1955', '2021-07-07 19:55:49.599209'),
(26, 'users', '0003_auto_20210707_2005', '2021-07-07 20:05:44.111080'),
(27, 'users', '0004_usersocial', '2021-07-14 07:11:55.676033'),
(28, 'users', '0005_auto_20210714_0717', '2021-07-14 07:17:07.553066'),
(29, 'users', '0006_auto_20210714_1611', '2021-07-14 16:11:48.305482');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('547lhsicrplbj69o03j7z4uots23qcva', 'e30:1m0hNb:_9ls81iwzdxnPf_V0yeLbsQuRbfCdLJ0_RwtVWfPj7w', '2021-07-20 09:28:35.214125'),
('5otfpaaaytatuo7mx53bj5xwtetor0p8', '.eJxVjDsOwjAQBe_iGln-rYkp6XMGa-1dcADZUpxUiLuTSCmgfTPz3iLiupS4dp7jROIitDj9bgnzk-sO6IH13mRudZmnJHdFHrTLsRG_rof7d1Cwl61mk9hrpwwQWEAawEPw4DO6gB5MCFZZTQwDbxKlW3aOwSdUgBnyWXy-xZc3cA:1m28Dd:3eeT8lUKWtV13IHHS-gPGS8CvNsdYkLd2YOGPow83SE', '2021-07-24 08:20:13.151695'),
('aej30vtio9cafahkvr29qmkp2wfemtp0', '.eJxVjEEOwiAQRe_C2hAYwIJL9z0DYYZBqoYmpV0Z765NutDtf-_9l4hpW2vcOi9xyuIiAMTpd8RED247yffUbrOkua3LhHJX5EG7HOfMz-vh_h3U1Ou3HhCNNYEUImqHRFSMsgaYPRe01oPKzlNWFHzRwGcblMsErAfwCax4fwAiZzhU:1m3bS2:v3yMPJeQBISNl1jLRkKMUxtR_d0yfph_JM8KE__o5bY', '2021-07-28 09:45:10.766303'),
('cm1fnm3qdvfxqab2lhsim3rcntp7y5tc', 'e30:1m0hQ0:QtsFIMFqbNa2f7AC22qp1HhigswGh3p-bkDp6C3lhwY', '2021-07-20 09:31:04.728845'),
('izb2gcygqdnc1au2csq3goclyhcyitpu', '.eJxVjDsOwjAQBe_iGlkr2-sPJT1nsNY_HEC2FCdVxN1JpBTQvpl5G_O0LtWvI89-SuzKhGOX3zFQfOV2kPSk9ug89rbMU-CHwk86-L2n_L6d7t9BpVH3WmsQFLNNexKLQ2OcLoAWgnZSKbQ6OsSSEQwoYwgJBJCUKhQMUgb2-QIB1DeA:1m41RG:nYo3gGmDDCA2e6stmKPlIIrjfo97G1kjZtTwDYzcXSM', '2021-07-29 13:30:06.520329'),
('lpscfgrgtufpounx7ne093lkt8bcxt59', '.eJxVjDsOwjAQBe_iGln-rYkp6XMGa-1dcADZUpxUiLuTSCmgfTPz3iLiupS4dp7jROIitDj9bgnzk-sO6IH13mRudZmnJHdFHrTLsRG_rof7d1Cwl61mk9hrpwwQWEAawEPw4DO6gB5MCFZZTQwDbxKlW3aOwSdUgBnyWXy-xZc3cA:1m28Eu:mYU_S-qltD0NseocG1G5zvEYjOTvePyaD-85E9lCFbU', '2021-07-24 08:21:32.621541'),
('nbv12lsi7y7d3deye0ppmdc4b8pu3ori', '.eJxVjDsOwjAQBe_iGln-rYkp6XMGa-1dcADZUpxUiLuTSCmgfTPz3iLiupS4dp7jROIitDj9bgnzk-sO6IH13mRudZmnJHdFHrTLsRG_rof7d1Cwl61mk9hrpwwQWEAawEPw4DO6gB5MCFZZTQwDbxKlW3aOwSdUgBnyWXy-xZc3cA:1m28EE:6CkYw0Dms2FScW41CoC8xdauqy8qb-L4XZsHf_RAinE', '2021-07-24 08:20:50.462891'),
('noppv6460dwqrvew5thu2makf9e5aoq7', '.eJxVjDsOwjAQBe_iGln-rYkp6XMGa-1dcADZUpxUiLuTSCmgfTPz3iLiupS4dp7jROIitDj9bgnzk-sO6IH13mRudZmnJHdFHrTLsRG_rof7d1Cwl61mk9hrpwwQWEAawEPw4DO6gB5MCFZZTQwDbxKlW3aOwSdUgBnyWXy-xZc3cA:1m28Cn:QfrRDoNpX9R4BuukcahxjuRZukywlSeUu1w5sVNdT3M', '2021-07-24 08:19:21.858973'),
('p0iorjk9c43o2lg3560bhl0h3tvhllmz', '.eJxVjDsOwjAQBe_iGln-rYkp6XMGa-1dcADZUpxUiLuTSCmgfTPz3iLiupS4dp7jROIitDj9bgnzk-sO6IH13mRudZmnJHdFHrTLsRG_rof7d1Cwl61mk9hrpwwQWEAawEPw4DO6gB5MCFZZTQwDbxKlW3aOwSdUgBnyWXy-xZc3cA:1m28Hf:fVIjg9792ofogcKGlmThylFnZt-ItWeNuZeocxNNF4c', '2021-07-24 08:24:23.046168'),
('pccbrl5y6joww7tmhzm16ina977hzn7u', '.eJxVjDsOwjAQBe_iGln-rYkp6XMGa-1dcADZUpxUiLuTSCmgfTPz3iLiupS4dp7jROIitDj9bgnzk-sO6IH13mRudZmnJHdFHrTLsRG_rof7d1Cwl61mk9hrpwwQWEAawEPw4DO6gB5MCFZZTQwDbxKlW3aOwSdUgBnyWXy-xZc3cA:1m28Fb:F13UylqJ_2ajPsv7kNG9FoG52E8Zg3DPaqAaNFDown0', '2021-07-24 08:22:15.867746'),
('svf5yurx6qwruwx0xun3g3ilo66ekeg6', 'e30:1m0heZ:2NsH3huAQTNiP-ZVRjBVxiVB4sen3vkwc35gQpgdPXs', '2021-07-20 09:46:07.490225'),
('trc69a9i1m8xmnovvmowuoopxvfesm30', '.eJxVjDsOwjAQBe_iGln-xD9Kes5g7XptHEC2FCcV4u4QKQW0b2bei0XY1hq3kZc4EzszLdjpd0RIj9x2Qndot85Tb-syI98VftDBr53y83K4fwcVRv3WsmhQGIicoKIcBNKuGJm8R-GcRa0nICRLxQZQnnIqBicpQ3ZGK0rs_QEhVTjM:1m42Yy:F-rtJAcVpVGiaaeYuI_ayK-DE2DRZJXbtfSYeVx55ww', '2021-07-29 14:42:08.735866'),
('v3h8i5w55qe3fnnatpg39dbrqmctbmzo', '.eJxVjDsOwjAQBe_iGln-rYkp6XMGa-1dcADZUpxUiLuTSCmgfTPz3iLiupS4dp7jROIitDj9bgnzk-sO6IH13mRudZmnJHdFHrTLsRG_rof7d1Cwl61mk9hrpwwQWEAawEPw4DO6gB5MCFZZTQwDbxKlW3aOwSdUgBnyWXy-xZc3cA:1m41Yz:ehjZNq-NEw9_oZ5cEtvS4i0cN-1lAK735-QWNl25Lic', '2021-07-29 13:38:05.667231'),
('xqhlgbqh261qhczbcw492o7u995u3d05', '.eJxVjDsOwyAQBe9CHSGWn3HK9D4DYmEJTiKQjF1FuXuE5CJp38y8N_Ph2Is_Om1-TezK5MQuvyOG-KQ6SHqEem88trpvK_Kh8JN2vrREr9vp_h2U0MuotTUJsgRNZA0J1KAQKTsBRGjjDFLKyakcNNikHQRMAu2cnYsIRrHPFxGXOCw:1m419L:4NX5h3JSPdgfNhgQh0T2gpQuRY0IfhwckaiDF3xnScM', '2021-07-29 13:11:35.594662'),
('z6nf98ffpu8fhpmuw4ct6s2w16owid2b', '.eJxVjDsOwjAQBe_iGln-rYkp6XMGa-1dcADZUpxUiLuTSCmgfTPz3iLiupS4dp7jROIitDj9bgnzk-sO6IH13mRudZmnJHdFHrTLsRG_rof7d1Cwl61mk9hrpwwQWEAawEPw4DO6gB5MCFZZTQwDbxKlW3aOwSdUgBnyWXy-xZc3cA:1m412s:-qBeqUiWa6Pg9zsOcLINMjDGM6JKypM-SrqiadlSXMY', '2021-07-29 13:04:54.540851');

-- --------------------------------------------------------

--
-- Table structure for table `users_useravatar`
--

CREATE TABLE `users_useravatar` (
  `id` bigint(20) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_useravatar`
--

INSERT INTO `users_useravatar` (`id`, `avatar`, `user_id`) VALUES
(2, 'user_cover_images/2_C5Y00xUrlUBJcWR9PqlX3w_OQ1UKH3.jpeg', 1),
(24, 'user_cover_images/avatar.png', 22),
(32, 'user_cover_images/cat_er2eU28.jpeg', 30);

-- --------------------------------------------------------

--
-- Table structure for table `users_userbio`
--

CREATE TABLE `users_userbio` (
  `id` bigint(20) NOT NULL,
  `bio` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_userbio`
--

INSERT INTO `users_userbio` (`id`, `bio`, `user_id`) VALUES
(2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum - updated', 1),
(3, 'This is my demo Bio', 22),
(11, 'I am a software developer with many years of experience.', 30);

-- --------------------------------------------------------

--
-- Table structure for table `users_usersocial`
--

CREATE TABLE `users_usersocial` (
  `id` bigint(20) NOT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `github` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_usersocial`
--

INSERT INTO `users_usersocial` (`id`, `linkedin`, `github`, `twitter`, `youtube`, `user_id`) VALUES
(1, 'http://linkedin.com/ceffiong', 'https://github.com/demo', 'https://twitter.com/demo', 'https://www.youtube.com/channel/demo', 1),
(2, 'https://www.linkedin.com/in/demo/', 'https://github.com/demo', 'https://twitter.com/demo', 'https://www.youtube.com/channel/demo', 22),
(10, 'https://www.linkedin.com/in/demo/', 'https://github.com/demo', 'https://twitter.com/demo', 'https://www.youtube.com/channel/demo', 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles_article`
--
ALTER TABLE `articles_article`
  ADD PRIMARY KEY (`article_id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `articles_article_category_id_633dad2b` (`category_id`),
  ADD KEY `articles_article_created_by_id_b1067734` (`created_by_id`);

--
-- Indexes for table `articles_category`
--
ALTER TABLE `articles_category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category` (`category`);

--
-- Indexes for table `articles_comment`
--
ALTER TABLE `articles_comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `articles_comment_article_id_59ff1409_fk_articles_` (`article_id`),
  ADD KEY `articles_comment_created_by_id_807d6275` (`created_by_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `users_useravatar`
--
ALTER TABLE `users_useravatar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `users_userbio`
--
ALTER TABLE `users_userbio`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `users_usersocial`
--
ALTER TABLE `users_usersocial`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles_article`
--
ALTER TABLE `articles_article`
  MODIFY `article_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `articles_category`
--
ALTER TABLE `articles_category`
  MODIFY `category_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `articles_comment`
--
ALTER TABLE `articles_comment`
  MODIFY `comment_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users_useravatar`
--
ALTER TABLE `users_useravatar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users_userbio`
--
ALTER TABLE `users_userbio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users_usersocial`
--
ALTER TABLE `users_usersocial`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles_article`
--
ALTER TABLE `articles_article`
  ADD CONSTRAINT `articles_article_category_id_633dad2b_fk_articles_` FOREIGN KEY (`category_id`) REFERENCES `articles_category` (`category_id`),
  ADD CONSTRAINT `articles_article_created_by_id_b1067734_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `articles_comment`
--
ALTER TABLE `articles_comment`
  ADD CONSTRAINT `articles_comment_article_id_59ff1409_fk_articles_` FOREIGN KEY (`article_id`) REFERENCES `articles_article` (`article_id`),
  ADD CONSTRAINT `articles_comment_created_by_id_807d6275_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `users_useravatar`
--
ALTER TABLE `users_useravatar`
  ADD CONSTRAINT `users_useravatar_user_id_202bd793_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `users_userbio`
--
ALTER TABLE `users_userbio`
  ADD CONSTRAINT `users_userbio_user_id_a3fe6de0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `users_usersocial`
--
ALTER TABLE `users_usersocial`
  ADD CONSTRAINT `users_usersocial_user_id_b452402d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
