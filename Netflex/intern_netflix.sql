-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220423.6d54ac471a
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2022 at 11:40 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `intern_netflix`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `actor_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`actor_id`, `name`) VALUES
(1, 'Shah Rukh Khan'),
(2, 'Salman Khan'),
(3, 'Rajinikanth'),
(4, 'Akshay Kumar');

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `about` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('beggcp4n2kvhi13meran3v5dt23rrto6', '::1', 1653585589, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333538353538393b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b6163746976655f757365727c733a353a2261646d696e223b),
('dog4m6jcpcltslm8i4dblns0jv1sb4hp', '::1', 1655113207, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635353131333139383b),
('hntolra9od94v9gaavpn4b53dju7f9rr', '::1', 1653586539, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333538363234383b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b6163746976655f757365727c733a353a2261646d696e223b),
('kjf4beco2ob03ffalarkl3hfui3utc5v', '::1', 1653585207, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333538353230373b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b6163746976655f757365727c733a353a2261646d696e223b),
('koo8uksomt96vjq4bulhufrimagl6tot', '::1', 1653586248, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333538363234383b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b6163746976655f757365727c733a353a2261646d696e223b),
('s7i9etd7h6n5b52o8or03hkeg0roo1ik', '::1', 1653585892, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333538353839323b757365725f6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6c6f67696e5f747970657c733a313a2231223b6163746976655f757365727c733a353a2261646d696e223b);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `name`, `status`) VALUES
(1, 'India', NULL),
(2, 'Russia', NULL),
(3, 'Canada', NULL),
(4, '	United States', NULL),
(5, 'China', NULL),
(6, 'Brazil', NULL),
(7, 'Australia', NULL),
(8, 'Argentina', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES
(1, 'Leke', 'ALL', 'Lek', 0, 1),
(2, 'Dollars', 'USD', '$', 1, 1),
(3, 'Afghanis', 'AFN', '؋', 0, 1),
(4, 'Pesos', 'ARS', '$', 0, 1),
(5, 'Guilders', 'AWG', 'ƒ', 0, 1),
(6, 'Dollars', 'AUD', '$', 1, 1),
(7, 'New Manats', 'AZN', 'ман', 0, 1),
(8, 'Dollars', 'BSD', '$', 0, 1),
(9, 'Dollars', 'BBD', '$', 0, 1),
(10, 'Rubles', 'BYR', 'p.', 0, 0),
(11, 'Euro', 'EUR', '€', 1, 1),
(12, 'Dollars', 'BZD', 'BZ$', 0, 1),
(13, 'Dollars', 'BMD', '$', 0, 1),
(14, 'Bolivianos', 'BOB', '$b', 0, 1),
(15, 'Convertible Marka', 'BAM', 'KM', 0, 1),
(16, 'Pula', 'BWP', 'P', 0, 1),
(17, 'Leva', 'BGN', 'лв', 0, 1),
(18, 'Reais', 'BRL', 'R$', 1, 1),
(19, 'Pounds', 'GBP', '£', 1, 1),
(20, 'Dollars', 'BND', '$', 0, 1),
(21, 'Riels', 'KHR', '៛', 0, 1),
(22, 'Dollars', 'CAD', '$', 1, 1),
(23, 'Dollars', 'KYD', '$', 0, 1),
(24, 'Pesos', 'CLP', '$', 0, 1),
(25, 'Yuan Renminbi', 'CNY', '¥', 0, 1),
(26, 'Pesos', 'COP', '$', 0, 1),
(27, 'Colón', 'CRC', '₡', 0, 1),
(28, 'Kuna', 'HRK', 'kn', 0, 1),
(29, 'Pesos', 'CUP', '₱', 0, 0),
(30, 'Koruny', 'CZK', 'Kč', 1, 1),
(31, 'Kroner', 'DKK', 'kr', 1, 1),
(32, 'Pesos', 'DOP ', 'RD$', 0, 1),
(33, 'Dollars', 'XCD', '$', 0, 1),
(34, 'Pounds', 'EGP', '£', 0, 1),
(35, 'Colones', 'SVC', '$', 0, 0),
(36, 'Pounds', 'FKP', '£', 0, 1),
(37, 'Dollars', 'FJD', '$', 0, 1),
(38, 'Cedis', 'GHC', '¢', 0, 0),
(39, 'Pounds', 'GIP', '£', 0, 1),
(40, 'Quetzales', 'GTQ', 'Q', 0, 1),
(41, 'Pounds', 'GGP', '£', 0, 0),
(42, 'Dollars', 'GYD', '$', 0, 1),
(43, 'Lempiras', 'HNL', 'L', 0, 1),
(44, 'Dollars', 'HKD', '$', 1, 1),
(45, 'Forint', 'HUF', 'Ft', 1, 1),
(46, 'Kronur', 'ISK', 'kr', 0, 1),
(47, 'Rupees', 'INR', 'Rp', 0, 1),
(48, 'Rupiahs', 'IDR', 'Rp', 0, 1),
(49, 'Rials', 'IRR', '﷼', 0, 0),
(50, 'Pounds', 'IMP', '£', 0, 0),
(51, 'New Shekels', 'ILS', '₪', 1, 1),
(52, 'Dollars', 'JMD', 'J$', 0, 1),
(53, 'Yen', 'JPY', '¥', 1, 1),
(54, 'Pounds', 'JEP', '£', 0, 0),
(55, 'Tenge', 'KZT', 'лв', 0, 1),
(56, 'Won', 'KPW', '₩', 0, 0),
(57, 'Won', 'KRW', '₩', 0, 1),
(58, 'Soms', 'KGS', 'лв', 0, 1),
(59, 'Kips', 'LAK', '₭', 0, 1),
(60, 'Lati', 'LVL', 'Ls', 0, 0),
(61, 'Pounds', 'LBP', '£', 0, 1),
(62, 'Dollars', 'LRD', '$', 0, 1),
(63, 'Switzerland Francs', 'CHF', 'CHF', 1, 1),
(64, 'Litai', 'LTL', 'Lt', 0, 0),
(65, 'Denars', 'MKD', 'ден', 0, 1),
(66, 'Ringgits', 'MYR', 'RM', 1, 1),
(67, 'Rupees', 'MUR', '₨', 0, 1),
(68, 'Pesos', 'MXN', '$', 1, 1),
(69, 'Tugriks', 'MNT', '₮', 0, 1),
(70, 'Meticais', 'MZN', 'MT', 0, 1),
(71, 'Dollars', 'NAD', '$', 0, 1),
(72, 'Rupees', 'NPR', '₨', 0, 1),
(73, 'Guilders', 'ANG', 'ƒ', 0, 1),
(74, 'Dollars', 'NZD', '$', 1, 1),
(75, 'Cordobas', 'NIO', 'C$', 0, 1),
(76, 'Nairas', 'NGN', '₦', 0, 1),
(77, 'Krone', 'NOK', 'kr', 1, 1),
(78, 'Rials', 'OMR', '﷼', 0, 0),
(79, 'Rupees', 'PKR', '₨', 0, 1),
(80, 'Balboa', 'PAB', 'B/.', 0, 1),
(81, 'Guarani', 'PYG', 'Gs', 0, 1),
(82, 'Nuevos Soles', 'PEN', 'S/.', 0, 1),
(83, 'Pesos', 'PHP', 'Php', 1, 1),
(84, 'Zlotych', 'PLN', 'zł', 1, 1),
(85, 'Rials', 'QAR', '﷼', 0, 1),
(86, 'New Lei', 'RON', 'lei', 0, 1),
(87, 'Rubles', 'RUB', 'руб', 0, 1),
(88, 'Pounds', 'SHP', '£', 0, 1),
(89, 'Riyals', 'SAR', '﷼', 0, 1),
(90, 'Dinars', 'RSD', 'Дин.', 0, 1),
(91, 'Rupees', 'SCR', '₨', 0, 1),
(92, 'Dollars', 'SGD', '$', 1, 1),
(93, 'Dollars', 'SBD', '$', 0, 1),
(94, 'Shillings', 'SOS', 'S', 0, 1),
(95, 'Rand', 'ZAR', 'R', 0, 1),
(96, 'Rupees', 'LKR', '₨', 0, 1),
(97, 'Kronor', 'SEK', 'kr', 1, 1),
(98, 'Dollars', 'SRD', '$', 0, 1),
(99, 'Pounds', 'SYP', '£', 0, 0),
(100, 'New Dollars', 'TWD', 'NT$', 1, 1),
(101, 'Baht', 'THB', '฿', 1, 1),
(102, 'Dollars', 'TTD', 'TT$', 0, 1),
(103, 'Lira', 'TRY', 'TL', 0, 1),
(104, 'Liras', 'TRL', '£', 0, 0),
(105, 'Dollars', 'TVD', '$', 0, 0),
(106, 'Hryvnia', 'UAH', '₴', 0, 1),
(107, 'Pesos', 'UYU', '$U', 0, 1),
(108, 'Sums', 'UZS', 'лв', 0, 1),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', 0, 0),
(110, 'Dong', 'VND', '₫', 0, 1),
(111, 'Rials', 'YER', '﷼', 0, 1),
(112, 'Zimbabwe Dollars', 'ZWD', 'Z$', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

CREATE TABLE `director` (
  `director_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `director`
--

INSERT INTO `director` (`director_id`, `name`) VALUES
(1, 'CHRISTOPHER NOLAN'),
(2, 'RAJKUMAR HIRANI'),
(3, 'DAVID FINCHER'),
(4, 'DAVID YATES'),
(5, 'JAMES CAMERON');

-- --------------------------------------------------------

--
-- Table structure for table `episode`
--

CREATE TABLE `episode` (
  `episode_id` int(11) NOT NULL,
  `season_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `faq_id` int(11) NOT NULL,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `name`) VALUES
(1, 'Action'),
(2, 'Romantic'),
(3, 'Adventure'),
(4, 'Comedy'),
(5, 'Crime and mystery'),
(6, 'Fantasy');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `movie_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_short` text COLLATE utf8_unicode_ci NOT NULL,
  `description_long` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `actors` longtext COLLATE utf8_unicode_ci NOT NULL,
  `director` text COLLATE utf8_unicode_ci NOT NULL,
  `featured` int(11) NOT NULL,
  `kids_restriction` int(11) NOT NULL DEFAULT 0,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `trailer_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `plan_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `screens` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 active, 0 inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`plan_id`, `name`, `screens`, `price`, `status`) VALUES
(1, 'basic', '1', '7.99', 1),
(2, 'standard', '2', '9.99', 1),
(3, 'premium', '4', '11.99', 1);

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

CREATE TABLE `progress` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `active_user` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `movie_id` int(11) NOT NULL,
  `progress_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `season`
--

CREATE TABLE `season` (
  `season_id` int(11) NOT NULL,
  `series_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `series_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_short` text COLLATE utf8_unicode_ci NOT NULL,
  `description_long` text COLLATE utf8_unicode_ci NOT NULL,
  `genre_id` int(11) NOT NULL,
  `actors` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'comma separated actor_id',
  `director` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `featured` int(11) NOT NULL,
  `kids_restriction` int(11) NOT NULL,
  `episodes` text COLLATE utf8_unicode_ci NOT NULL,
  `trailer_url` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1, 'site_name', 'Movie subscription portal'),
(2, 'site_email', 'noreply@netflex.com'),
(3, 'paypal_merchant_email', ''),
(4, 'invoice_address', '24/e North Huston, NY, Australia'),
(5, 'language', 'english'),
(6, 'purchase_code', 'your-product-purchase-code-goes-here'),
(7, 'privacy_policy', '<hr />\r\n<p>Effective date: November 02, 2018</p>\r\n\r\n<p>Netflex (&quot;us&quot;, &quot;we&quot;, or &quot;our&quot;) operates the http://netflex.com website (the &quot;Service&quot;).</p>\r\n\r\n<p>This page informs you of our policies regarding the collection, use, and disclosure of personal data when you use our Service and the choices you have associated with that data. Our Privacy Policy for Netflex is managed through <a href=\"https://www.freeprivacypolicy.com/free-privacy-policy-generator.php\">Free Privacy Policy</a>.</p>\r\n\r\n<p>We use your data to provide and improve the Service. By using the Service, you agree to the collection and use of information in accordance with this policy. Unless otherwise defined in this Privacy Policy, terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, accessible from http://netflex.com</p>\r\n\r\n<h2>Information Collection And Use</h2>\r\n\r\n<p>We collect several different types of information for various purposes to provide and improve our Service to you.</p>\r\n\r\n<h3>Types of Data Collected</h3>\r\n\r\n<p>Personal Data</p>\r\n\r\n<p>While using our Service, we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you (&quot;Personal Data&quot;). Personally identifiable information may include, but is not limited to:</p>\r\n\r\n<ul>\r\n	<li>Email address</li>\r\n	<li>First name and last name</li>\r\n	<li>Cookies and Usage Data</li>\r\n</ul>\r\n\r\n<p>Usage Data</p>\r\n\r\n<p>We may also collect information how the Service is accessed and used (&quot;Usage Data&quot;). This Usage Data may include information such as your computer&#39;s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that you visit, the time and date of your visit, the time spent on those pages, unique device identifiers and other diagnostic data.</p>\r\n\r\n<p>Tracking &amp; Cookies Data</p>\r\n\r\n<p>We use cookies and similar tracking technologies to track the activity on our Service and hold certain information.</p>\r\n\r\n<p>Cookies are files with small amount of data which may include an anonymous unique identifier. Cookies are sent to your browser from a website and stored on your device. Tracking technologies also used are beacons, tags, and scripts to collect and track information and to improve and analyze our Service.</p>\r\n\r\n<p>You can instruct your browser to refuse all cookies or to indicate when a cookie is being sent. However, if you do not accept cookies, you may not be able to use some portions of our Service.</p>\r\n\r\n<p>Examples of Cookies we use:</p>\r\n\r\n<ul>\r\n	<li><strong>Session Cookies.</strong> We use Session Cookies to operate our Service.</li>\r\n	<li><strong>Preference Cookies.</strong> We use Preference Cookies to remember your preferences and various settings.</li>\r\n	<li><strong>Security Cookies.</strong> We use Security Cookies for security purposes.</li>\r\n</ul>\r\n\r\n<h2>Use of Data</h2>\r\n\r\n<p>Netflex uses the collected data for various purposes:</p>\r\n\r\n<ul>\r\n	<li>To provide and maintain the Service</li>\r\n	<li>To notify you about changes to our Service</li>\r\n	<li>To allow you to participate in interactive features of our Service when you choose to do so</li>\r\n	<li>To provide customer care and support</li>\r\n	<li>To provide analysis or valuable information so that we can improve the Service</li>\r\n	<li>To monitor the usage of the Service</li>\r\n	<li>To detect, prevent and address technical issues</li>\r\n</ul>\r\n\r\n<h2>Transfer Of Data</h2>\r\n\r\n<p>Your information, including Personal Data, may be transferred to &mdash; and maintained on &mdash; computers located outside of your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from your jurisdiction.</p>\r\n\r\n<p>If you are located outside Australia and choose to provide information to us, please note that we transfer the data, including Personal Data, to Australia and process it there.</p>\r\n\r\n<p>Your consent to this Privacy Policy followed by your submission of such information represents your agreement to that transfer.</p>\r\n\r\n<p>Netflex will take all steps reasonably necessary to ensure that your data is treated securely and in accordance with this Privacy Policy and no transfer of your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of your data and other personal information.</p>\r\n\r\n<h2>Disclosure Of Data</h2>\r\n\r\n<h3>Legal Requirements</h3>\r\n\r\n<p>Netflex may disclose your Personal Data in the good faith belief that such action is necessary to:</p>\r\n\r\n<ul>\r\n	<li>To comply with a legal obligation</li>\r\n	<li>To protect and defend the rights or property of Netflex</li>\r\n	<li>To prevent or investigate possible wrongdoing in connection with the Service</li>\r\n	<li>To protect the personal safety of users of the Service or the public</li>\r\n	<li>To protect against legal liability</li>\r\n</ul>\r\n\r\n<h2>Security Of Data</h2>\r\n\r\n<p>The security of your data is important to us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your Personal Data, we cannot guarantee its absolute security.</p>\r\n\r\n<h2>Service Providers</h2>\r\n\r\n<p>We may employ third party companies and individuals to facilitate our Service (&quot;Service Providers&quot;), to provide the Service on our behalf, to perform Service-related services or to assist us in analyzing how our Service is used.</p>\r\n\r\n<p>These third parties have access to your Personal Data only to perform these tasks on our behalf and are obligated not to disclose or use it for any other purpose.</p>\r\n\r\n<h2>Links To Other Sites</h2>\r\n\r\n<p>Our Service may contain links to other sites that are not operated by us. If you click on a third party link, you will be directed to that third party&#39;s site. We strongly advise you to review the Privacy Policy of every site you visit.</p>\r\n\r\n<p>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</p>\r\n\r\n<h2>Children&#39;s Privacy</h2>\r\n\r\n<p>Our Service does not address anyone under the age of 18 (&quot;Children&quot;).</p>\r\n\r\n<p>We do not knowingly collect personally identifiable information from anyone under the age of 18. If you are a parent or guardian and you are aware that your Children has provided us with Personal Data, please contact us. If we become aware that we have collected Personal Data from children without verification of parental consent, we take steps to remove that information from our servers.</p>\r\n\r\n<h2>Changes To This Privacy Policy</h2>\r\n\r\n<p>We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.</p>\r\n\r\n<p>We will let you know via email and/or a prominent notice on our Service, prior to the change becoming effective and update the &quot;effective date&quot; at the top of this Privacy Policy.</p>\r\n\r\n<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>\r\n\r\n<h2>Contact Us</h2>\r\n\r\n<p>If you have any questions about this Privacy Policy, please contact us:</p>\r\n\r\n<ul>\r\n	<li>By email: support@netflex.com</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n'),
(23, 'cookie_note', 'This Website Uses Cookies To Personalize Content And Analyse Traffic In Order To Offer You A Better Experience.'),
(8, 'refund_policy', '<h1>Returns and Refunds Policy</h1>\r\n\r\n<p>Thank you for shopping at Netflex.</p>\r\n\r\n<p>Please read this policy carefully. This is the Return and Refund Policy of Netflex. This Return and Refund Policy for Netflex is managed by <a href=\"https://termsfeed.com/return-refund-policy/generator/\">the Return Refund Policy Generator</a>.</p>\r\n\r\n<h2>Digital products</h2>\r\n\r\n<p>We do not issue refunds for digital products once the order is confirmed and the product is sent.</p>\r\n\r\n<p>We recommend contacting us for assistance if you experience any issues receiving or downloading our products.</p>\r\n\r\n<h2>Contact us</h2>\r\n\r\n<p>If you have any questions about our Returns and Refunds Policy, please contact us:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>By email: support@netflex.com</p>\r\n	</li>\r\n</ul>\r\n'),
(22, 'cookie_status', 'active'),
(9, 'stripe_publishable_key', ''),
(10, 'stripe_secret_key', ''),
(11, 'trial_period', 'off'),
(12, 'trial_period_days', '30'),
(13, 'theme', 'flixer'),
(14, 'currency_position', 'left'),
(15, 'system_currency', 'EUR'),
(16, 'paypal_currency', 'EUR'),
(17, 'stripe_currency', 'USD'),
(18, 'paypal', '[{\"active\":\"1\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AZDxjDScFpQtjWTOUtWKbyN_bDt4OgqaF4eYXlewfBP4-8aqX3PiV8e1GWU6liB2CUXlkA59kJXE7M6R\",\"production_client_id\":\"1234\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_secret_key\":\"12345\"}]'),
(19, 'stripe_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"public_key\":\"pk_test_LnMXAA8Rox0ITcpDgkIjbcR600u09yZlhQ\",\"secret_key\":\"sk_test_9iN1igv6l9R5tolcyZLrIgMP00rcDJMVnJ\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]'),
(20, 'purchase_code', 'your-product-purchase-code-goes-here'),
(21, 'version', '2.4'),
(24, 'cookie_policy', '<h1>Cookie policy</h1>\r\n\r\n<ol>\r\n	<li>Cookies are small text files that can be used by websites to make a user&#39;s experience more efficient.</li>\r\n	<li>The law states that we can store cookies on your device if they are strictly necessary for the operation of this site. For all other types of cookies we need your permission.</li>\r\n	<li>This site uses different types of cookies. Some cookies are placed by third party services that appear on our pages.</li>\r\n</ol>\r\n'),
(25, 'protocol', 'smtp'),
(26, 'smtp_host', 'ssl://smtp.googlemail.com'),
(27, 'smtp_port', '465'),
(28, 'smtp_user', 'your-email-address'),
(29, 'smtp_pass', ''),
(30, 'email_verification', '0'),
(31, 'recaptcha', '0'),
(32, 'recaptcha_secretkey', 'recaptcha-secretkey'),
(33, 'recaptcha_sitekey', 'recaptcha-sitekey');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `subscription_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `price_amount` int(11) NOT NULL,
  `paid_amount` float NOT NULL,
  `timestamp_from` int(11) NOT NULL,
  `timestamp_to` int(11) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_details` text COLLATE utf8_unicode_ci NOT NULL,
  `payment_timestamp` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 active, 0 cancelled',
  `currency` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subtitle`
--

CREATE TABLE `subtitle` (
  `id` int(11) UNSIGNED NOT NULL,
  `movie_id` int(11) NOT NULL,
  `language` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1 admin, 0 customer',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user1` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user 1',
  `user2` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user 2',
  `user3` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user 3',
  `user4` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user 4',
  `user1_session` text COLLATE utf8_unicode_ci NOT NULL,
  `user2_session` text COLLATE utf8_unicode_ci NOT NULL,
  `user3_session` text COLLATE utf8_unicode_ci NOT NULL,
  `user4_session` text COLLATE utf8_unicode_ci NOT NULL,
  `user1_movielist` text COLLATE utf8_unicode_ci NOT NULL,
  `user2_movielist` text COLLATE utf8_unicode_ci NOT NULL,
  `user3_movielist` text COLLATE utf8_unicode_ci NOT NULL,
  `user4_movielist` text COLLATE utf8_unicode_ci NOT NULL,
  `user1_serieslist` text COLLATE utf8_unicode_ci NOT NULL,
  `user2_serieslist` text COLLATE utf8_unicode_ci NOT NULL,
  `user3_serieslist` text COLLATE utf8_unicode_ci NOT NULL,
  `user4_serieslist` text COLLATE utf8_unicode_ci NOT NULL,
  `verification_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plan_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 banned'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `type`, `name`, `email`, `password`, `user1`, `user2`, `user3`, `user4`, `user1_session`, `user2_session`, `user3_session`, `user4_session`, `user1_movielist`, `user2_movielist`, `user3_movielist`, `user4_movielist`, `user1_serieslist`, `user2_serieslist`, `user3_serieslist`, `user4_serieslist`, `verification_code`, `plan_id`, `status`) VALUES
(1, 1, 'Waris', 'admin@gmail.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'user 1', 'user 2', 'user 3', 'user 4', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 0, 1),
(2, 0, 'NormalUser', 'normaluser@gmail.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'user 1', 'user 2', 'user 3', 'user 4', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`actor_id`);

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`director_id`);

--
-- Indexes for table `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`episode_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indexes for table `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `season`
--
ALTER TABLE `season`
  ADD PRIMARY KEY (`season_id`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`series_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`subscription_id`);

--
-- Indexes for table `subtitle`
--
ALTER TABLE `subtitle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actor`
--
ALTER TABLE `actor`
  MODIFY `actor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `director`
--
ALTER TABLE `director`
  MODIFY `director_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `episode`
--
ALTER TABLE `episode`
  MODIFY `episode_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `progress`
--
ALTER TABLE `progress`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `season`
--
ALTER TABLE `season`
  MODIFY `season_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `series_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `subscription_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subtitle`
--
ALTER TABLE `subtitle`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



