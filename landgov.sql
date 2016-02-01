-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Feb 01, 2016 at 01:57 PM
-- Server version: 5.1.54
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `landgov`
--
CREATE DATABASE IF NOT EXISTS `landgov` DEFAULT CHARACTER SET latin1 COLLATE latin1_bin;
USE `landgov`;

-- --------------------------------------------------------

--
-- Table structure for table `agency`
--

DROP TABLE IF EXISTS `agency`;
CREATE TABLE `agency` (
  `agency_id` int(11) NOT NULL,
  `agency_name` varchar(128) NOT NULL COMMENT 'Full name of development agency.',
  `agency_code` varchar(16) DEFAULT NULL COMMENT 'Used if this agency has a preferred short code to use vs. agency_name.',
  `agency_url` varchar(128) DEFAULT NULL COMMENT 'If they have a web URL, put it here.',
  `status` char(1) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Development Agencies';

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_code` char(3) NOT NULL,
  `country_name` varchar(128) NOT NULL,
  `top_left_lat` float DEFAULT NULL,
  `top_left_long` float DEFAULT NULL,
  `bot_right_lat` float DEFAULT NULL,
  `bot_right_long` float DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(387, 'AFG', 'Afghanistan', 60.5053, 29.3942, 74.8988, 38.453, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(388, 'AGO', 'Angola', 11.7311, -18.0117, 24.0622, -4.38889, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(389, 'ALB', 'Albania', 19.2825, 39.6678, 21.053, 42.6614, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(390, 'AND', 'Andorra', 1.2, 42.3375, 2, 42.7375, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(391, 'ARE', 'United Arab Emirates', 50.8261, 22.0572, 56.3758, 26.0836, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(392, 'ARG', 'Argentina', -73.5817, -55.0453, -53.6503, -21.7875, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(393, 'ARM', 'Armenia', 43.4732, 38.8442, 46.6225, 41.2986, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(394, 'ATG', 'Antigua and Barbuda', -61.8911, 16.9897, -61.6664, 17.725, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(395, 'AUS', 'Australia', 112.908, -43.6481, 153.62, -10.7106, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(396, 'AUT', 'Austria', 9.54041, 46.3875, 17.1799, 49.0158, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(397, 'AZE', 'Azerbaijan', 44.7786, 38.3905, 50.385, 41.8967, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(398, 'BDI', 'Burundi', 28.9875, -4.45472, 30.8539, -2.29944, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(399, 'BEL', 'Belgium', 2.54167, 49.5061, 6.40028, 51.5028, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(400, 'BEN', 'Benin', 0.776667, 6.21068, 3.855, 12.3933, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(401, 'BFA', 'Burkina Faso', -5.52066, 9.39639, 2.40156, 15.083, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(402, 'BGD', 'Bangladesh', 88.0433, 20.7486, 92.6694, 26.6253, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(403, 'BGR', 'Bulgaria', 22.3594, 41.2544, 28.6064, 44.2431, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(404, 'BHR', 'Bahrain', 50.4661, 25.7906, 50.613, 26.2403, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(405, 'BHS', 'Bahamas', -78.8031, 22.2569, -73.8295, 26.9283, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(406, 'BIH', 'Bosnia and Herzegovina', 15.7364, 42.5645, 19.6197, 45.2769, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(407, 'BLR', 'Belarus', 19.6365, 51.2528, 32.7414, 56.1678, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(408, 'BLZ', 'Belize', -94.45, 14.25, -82.45, 20.25, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(409, 'BOL', 'Bolivia', -69.6525, -22.9011, -57.4586, -9.68278, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(410, 'BRA', 'Brazil', -74.0095, -33.7477, -34.7994, 5.27361, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(411, 'BRB', 'Barbados', -63.0445, 11.4415, -56.0445, 14.9415, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(412, 'BRN', 'Brunei Darussalam', 112.9, 3.65, 116.5, 5.45, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(413, 'BTN', 'Bhutan', 86.45, 25.45, 94.45, 29.45, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(414, 'BWA', 'Botswana', 19.9958, -26.8947, 29.3705, -17.7977, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(415, 'CAF', 'Central African Republic', 14.4144, 2.2211, 27.458, 11.0014, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(416, 'CAN', 'Canada', -141.001, 41.9133, -52.6167, 83.1133, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(417, 'CHE', 'Switzerland', 5.96583, 45.8239, 10.4886, 47.8064, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(418, 'CHL', 'Chile', -75.7156, -55.7206, -67.0011, -17.5053, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(419, 'CHN', 'China', 73.6239, 18.1689, 134.772, 53.5539, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(420, 'CIV', 'Côte d''Ivoire', -8.60667, 4.34778, -2.48806, 10.735, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(421, 'CMR', 'Cameroon', 8.5025, 1.65417, 16.2064, 13.0847, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(422, 'COD', 'Democratic Republic of the Congo', 12.2097, -13.452, 31.2775, 5.3475, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(423, 'COG', 'Congo', 11.1415, -5.02062, 18.6422, 3.71083, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(424, 'COL', 'Colombia', -79.0517, -4.22423, -66.8734, 12.4583, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(425, 'COM', 'Comoros', 42.25, -13.2, 46.25, -11.2, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(426, 'CPV', 'Cape Verde', -32, 12, -16, 20, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(427, 'CRI', 'Costa Rica', -85.8986, 8.02671, -82.5652, 11.2136, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(428, 'CUB', 'Cuba', -84.9533, 19.8219, -74.1319, 23.1864, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(429, 'CYP', 'Cyprus', 32.2692, 34.5633, 34.5817, 35.6716, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(430, 'CZE', 'Czech Republic', 12.0935, 48.5756, 18.8717, 51.0314, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(431, 'DEU', 'Germany', 5.86944, 47.2811, 15.038, 54.9174, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(432, 'DJI', 'Djibouti', 38.6, 9.8, 46.6, 13.8, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(433, 'DMA', 'Dominica', -64.85, 13.675, -57.85, 17.175, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(434, 'DNK', 'Denmark', 8.09139, 54.5703, 12.6181, 57.7442, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(435, 'DOM', 'Dominican Republic', -71.9915, 17.6183, -68.3222, 19.9283, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(436, 'DZA', 'Algeria', -8.66929, 18.9764, 11.9865, 37.0836, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(437, 'ECU', 'Ecuador', -91.6661, -5.00333, -75.2186, 1.43793, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(438, 'EGY', 'Egypt', 24.7064, 21.9967, 35.813, 31.6393, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(439, 'ERI', 'Eritrea', 36.4439, 12.3639, 43.1233, 18.0089, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(440, 'ESP', 'Spain', -17.995, 27.7347, 4.33667, 43.7744, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(441, 'EST', 'Estonia', 21.8319, 57.5222, 28.1953, 59.6683, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(442, 'ETH', 'Ethiopia', 32.9894, 3.40667, 47.9894, 14.8673, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(443, 'FIN', 'Finland', 19.6483, 59.805, 31.5873, 70.0794, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(444, 'FJI', 'Fiji', 177.256, -19.1614, 179.99, -16.1527, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(445, 'FRA', 'France', -4.79056, 41.3664, 9.54305, 51.0911, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(446, 'FSM', 'Micronesia', 155, 8.6, 161, 4.93, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(447, 'GAB', 'Gabon', 8.70639, -3.9229, 14.5186, 2.31728, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(448, 'GBR', 'United Kingdom', -8.16472, 49.9553, 1.7425, 60.6311, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(449, 'GEO', 'Georgia', 40.0065, 41.0461, 46.7108, 43.5847, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(450, 'GHA', 'Ghana', -158.104, 1.6606, -157.247, 2.11082, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(451, 'GIN', 'Guinea', -15.0786, 3.21361, 8.96139, 12.666, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(452, 'GMB', 'Gambia', -16.8264, 13.0371, -13.7986, 13.8264, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(453, 'GNB', 'Guinea-Bissau', -16.6778, 10.9239, -13.6442, 12.6847, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(454, 'GNQ', 'Equatorial Guinea', 9.3575, 1.00194, 11.3539, 2.34607, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(455, 'GRC', 'Greece', 19.6275, 34.93, 28.2422, 41.7444, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(456, 'GRD', 'Grenada', -61.7897, 11.9964, -61.5964, 12.2378, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(457, 'GTM', 'Guatemala', -92.2459, 13.7455, -88.2131, 17.8211, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(458, 'GUY', 'Guyana', -61.39, 1.18555, -56.4709, 8.5336, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(459, 'HND', 'Honduras', -89.3549, 12.9874, -83.1309, 16.0203, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(460, 'HRV', 'Croatia', 13.4964, 42.3983, 19.4261, 46.5417, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(461, 'HTI', 'Haiti', -74.477, 18.0228, -71.6294, 19.9328, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(462, 'HUN', 'Hungary', 16.1067, 45.7603, 22.8949, 48.5758, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(463, 'IDN', 'Indonesia', 95.1986, -10.93, 141.008, 5.65389, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(464, 'IND', 'India', 68.14, 6.74889, 97.3941, 35.9861, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(465, 'IRL', 'Ireland', -10.4728, 51.4458, -5.99472, 55.3772, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(466, 'IRN', 'Iran', 44.0342, 25.0753, 63.3419, 39.7805, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(467, 'IRQ', 'Iraq', 38.7946, 29.1042, 48.5452, 37.3844, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(468, 'ISL', 'Iceland', -24.515, 63.4028, -13.4978, 66.5344, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(469, 'ISR', 'Israel', 34.2671, 29.4938, 35.6697, 33.2903, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(470, 'ITA', 'Italy', 6.62017, 36.6508, 18.5108, 47.0905, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(471, 'JAM', 'Jamaica', -78.3728, 17.6967, -76.1886, 18.5219, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(472, 'JOR', 'Jordan', 34.8844, 29.1889, 39.3031, 33.3772, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(473, 'JPN', 'Japan', 127.653, 26.0789, 145.818, 45.5055, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(474, 'KAZ', 'Kazakhstan', 46.4992, 40.5911, 87.3453, 55.4447, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(475, 'KEN', 'Kenya', 33.9514, -4.67312, 41.9136, 4.62208, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(476, 'KGZ', 'Kyrgyzstan', 69.2489, 39.1919, 80.2855, 43.2686, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(477, 'KHM', 'Cambodia', 102.351, 10.0097, 107.636, 14.705, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(478, 'KIR', 'Kiribati', -188, -12.5, -152, 5.5, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(479, 'KNA', 'Saint Kitts and Nevis', -63.6991, 16.7513, -61.6991, 17.7513, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(480, 'KOR', 'Republic of Korea', 126.124, 33.1903, 129.586, 38.6225, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(481, 'KWT', 'Kuwait', 46.5416, 28.5444, 48.4197, 30.0839, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(482, 'LAO', 'Lao People''s Democratic Republic', 100.092, 13.92, 107.695, 22.5008, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(483, 'LBN', 'Lebanon', 35.0971, 33.063, 36.625, 34.6892, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(484, 'LBR', 'Liberia', -11.4987, 4.35145, -7.36778, 8.56968, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(485, 'LBY', 'Libya', 9.30389, 19.4978, 25.1342, 33.1658, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(486, 'LCA', 'Saint Lucia', -61.0797, 13.7178, -60.8922, 14.1047, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(487, 'LIE', 'Liechtenstein', 9.43, 46.96, 9.61, 47.33, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(488, 'LKA', 'Sri Lanka', 79.6983, 5.94361, 81.8905, 9.82611, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(489, 'LSO', 'Lesotho', 27.0147, -30.6589, 29.4555, -28.5695, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(490, 'LTU', 'Lithuania', 20.932, 53.8881, 26.8197, 56.4508, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(491, 'LUX', 'Luxembourg', 5.73111, 49.4483, 6.52222, 50.1722, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(492, 'LVA', 'Latvia', 20.9869, 55.675, 28.2378, 58.0844, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(493, 'MAR', 'Morocco', -13.1769, 27.6651, -1.01056, 35.9153, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(494, 'MCO', 'Monaco', 7.16, 43.89, 7.8, 43.6, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(495, 'MDA', 'Moldova', 26.635, 45.4482, 30.1342, 48.4867, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(496, 'MDG', 'Madagascar', 43.2211, -25.6003, 50.4994, -11.9478, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(497, 'MDV', 'Maldives', 72.6836, -0.6908, 73.7536, 7.0964, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(498, 'MEX', 'Mexico', -117.124, 14.5481, -86.745, 32.7183, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(499, 'MHL', 'Marshall Islands', 163, 9.7, 176.2, 4, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(500, 'MKD', 'Macedonia (Former Yugoslav Republic)', 20.4625, 40.857, 23.0314, 42.3614, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(501, 'MLI', 'Mali', -12.2458, 10.1419, 4.2525, 25.0003, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(502, 'MLT', 'Malta', 12.3833, 34.9417, 16.3833, 36.9417, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(503, 'MMR', 'Myanmar', 92.1933, 9.98555, 101.162, 28.5469, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(504, 'MNE', 'Montenegro', 18.4533, 41.8493, 20.3828, 43.5561, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(505, 'MNG', 'Mongolia', 87.7594, 41.5814, 119.928, 52.142, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(506, 'MOZ', 'Mozambique', 30.2128, -26.8603, 40.8392, -10.4804, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(507, 'MRT', 'Mauritania', -17.0543, 14.7255, -4.80639, 27.2802, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(508, 'MUS', 'Mauritius', 57.3064, -20.5058, 57.7858, -20.0011, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(509, 'MWI', 'Malawi', 32.6897, -17.1358, 35.9242, -9.37333, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(510, 'MYS', 'Malaysia', 99.6469, 0.853333, 119.276, 7.35667, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(511, 'NAM', 'Namibia', 11.7333, -28.9608, 25.2658, -16.9689, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(512, 'NER', 'Niger', 0.166667, 11.6917, 15.9967, 23.5223, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(513, 'NGA', 'Nigeria', 2.68213, 4.28194, 14.6742, 13.8931, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(514, 'NIC', 'Nicaragua', -87.6903, 10.7097, -83.1309, 15.0247, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(515, 'NLD', 'Netherlands', 3.36389, 50.7561, 7.20944, 53.5093, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(516, 'NOR', 'Norway', -9.12, 57.9961, 33.625, 80.5133, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(517, 'NPL', 'Nepal', 80.0558, 26.3478, 88.1958, 30.4197, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(518, 'NRU', 'Nauru', 165, 1, 169, -2.3, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(519, 'NZL', 'New Zealand', 165.566, -50.8545, 178.56, -33.0697, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(520, 'OMN', 'Oman', 51.9041, 16.6439, 59.8361, 25.0392, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(521, 'PAK', 'Pakistan', 60.8669, 23.688, 77.8314, 37.0628, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(522, 'PAN', 'Panama', -83.0317, 7.20583, -77.1467, 9.62028, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(523, 'PER', 'Peru', -81.3564, -18.348, -68.6875, -0.0375, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(524, 'PHL', 'Philippines', 117.174, 5.05139, 126.598, 18.6475, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(525, 'PLW', 'Palau', 131.13, 10.23, 137.6, 5.09, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(526, 'PNG', 'Papua New Guinea', 140, -1.1, 155.6, -13.2, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(527, 'POL', 'Poland', 14.1333, 49.0064, 24.1447, 54.8367, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(528, 'PRK', 'Democratic People''s Republic of Korea', 124.324, 37.6803, 130.695, 42.9805, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(529, 'PRT', 'Portugal', -28.5494, 32.6375, -6.19444, 42.1522, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(530, 'PRY', 'Paraguay', -62.6387, -27.5861, -54.2431, -19.2967, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(531, 'QAT', 'Qatar', 50.7525, 24.5556, 51.6117, 26.1528, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(532, 'ROU', 'Romania', 20.2611, 43.6247, 29.7011, 48.2533, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(533, 'RUS', 'Russian Federation', 26.9703, 41.1961, 180, 83.2714, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(534, 'RWA', 'Rwanda', 28.8533, -2.82667, 30.8764, -1.06162, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(535, 'SAU', 'Saudi Arabia', 34.603, 15.1055, 56.5131, 32.2373, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(536, 'SDN', 'Sudan', 21.8283, 8.49214, 38.6213, 23.128, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(537, 'SEN', 'Senegal', -17.52, 12.3014, -11.3583, 16.6931, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(538, 'SGP', 'Singapore', 103.223, 1.0425, 104.423, 1.64251, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(539, 'SLB', 'Solomon Islands', 150, -4, 168, -12, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(540, 'SLE', 'Sierra Leone', -13.2984, 6.9132, -10.2665, 9.9975, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(541, 'SLV', 'El Salvador', -90.1058, 13.1567, -87.6953, 14.4517, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(542, 'SMR', 'San Marino', 12.3053, 43.8624, 12.6253, 44.0224, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(543, 'SOM', 'Somalia', 40.9863, -1.67436, 54.5336, 12.7128, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(544, 'SRB', 'Serbia', 18.8281, 42.2322, 23.0069, 46.175, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(545, 'SSD', 'South Sudan', 21.8283, 3.49214, 38.6213, 8.49, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(546, 'STP', 'Sao Tome and Principe', 6.465, 0.02, 7.4642, 1.7019, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(547, 'SUR', 'Suriname', -58.0717, 1.84944, -53.9844, 5.9975, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(548, 'SVK', 'Slovakia', 16.8408, 47.7408, 22.558, 49.6053, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(549, 'SVN', 'Slovenia', 13.383, 45.4256, 16.6092, 46.8725, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(550, 'SWE', 'Sweden', 11.1069, 55.0011, 24.1671, 69.0631, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(551, 'SWZ', 'Swaziland', 30.8022, -27.3167, 32.1342, -25.7283, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(552, 'SYC', 'Seychelles', 55.3747, -4.7892, 55.7928, -4.28, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(553, 'SYR', 'Syria', 35.5905, 32.3136, 42.3739, 37.3222, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(554, 'TCD', 'Chad', 13.4622, 7.45778, 23.9997, 23.4506, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(555, 'TGO', 'Togo', -0.150955, 6.0991, 1.79996, 11.1393, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(556, 'THA', 'Thailand', 97.3458, 5.63194, 105.634, 20.4553, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(557, 'TJK', 'Tajikistan', 67.3647, 36.6722, 75.1875, 41.0503, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(558, 'TKM', 'Turkmenistan', 52.4433, 35.1455, 66.6725, 42.7978, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(559, 'TLS', 'Timor-Leste', 121.7, -10.9, 129.7, -6.9, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(560, 'TON', 'Tonga', -175.361, -21.4542, -173.906, -18.5681, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(561, 'TTO', 'Trinidad and Tobago', -61.9244, 10.038, -60.9283, 10.8386, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(562, 'TUN', 'Tunisia', 7.49167, 30.2361, 11.5833, 37.338, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(563, 'TUR', 'Turkey', 26.0333, 35.8217, 44.8219, 42.1072, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(564, 'TUV', 'Tuvalu', 171.95, -5.15, 183.95, -11.15, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(565, 'TZA', 'Tanzania', 29.5905, -11.7269, 40.4533, -0.997581, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(566, 'UGA', 'Uganda', 29.5783, -1.46444, 35.0261, 4.22176, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(567, 'UKR', 'Ukraine', 22.1514, 44.3953, 40.1797, 52.3797, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(568, 'URY', 'Uruguay', -58.4386, -34.9778, -53.095, -30.1006, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(569, 'USA', 'United States of America', -178.214, 18.5369, -48.4668, 71.4066, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(570, 'UZB', 'Uzbekistan', 55.9972, 37.1853, 73.173, 45.5707, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(571, 'VCT', 'Saint Vincent and the Grenadines', -61.4593, 12.5771, -61.1203, 13.3842, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(572, 'VEN', 'Venezuela', -73.3839, 0.649722, -59.8014, 12.1953, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(573, 'VNM', 'Viet Nam', 102.141, 8.57416, 109.459, 23.3758, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(574, 'VUT', 'Vanuatu', 165.777, -19.6403, 169.484, -10.6717, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(575, 'WSM', 'Samoa', -172.775, -14.0531, -171.437, -13.4606, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(576, 'YEM', 'Yemen', 42.6139, 12.5997, 53.0783, 18.9989, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(577, 'ZAF', 'South Africa', 16.4697, -34.815, 32.8931, -22.1361, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(578, 'ZMB', 'Zambia', 21.9983, -18.0753, 33.693, -8.22081, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(579, 'ZWE', 'Zimbabwe', 25.2367, -22.4161, 33.073, -15.6161, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(580, 'KOS', 'Kosovo', 20.0056, 43.2452, 21.9063, 41.7856, 'A');
INSERT INTO `country` (`country_id`, `country_code`, `country_name`, `top_left_lat`, `top_left_long`, `bot_right_lat`, `bot_right_long`, `status`) VALUES(581, 'WBG', 'West Bank / Gaza', 33.924, 32.0546, 35.3632, 31.3443, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `funder`
--

DROP TABLE IF EXISTS `funder`;
CREATE TABLE `funder` (
  `funder_id` int(11) NOT NULL COMMENT 'Unique ID for each funder.',
  `name` varchar(64) NOT NULL COMMENT 'Name of the funder.',
  `status` char(1) NOT NULL DEFAULT 'A' COMMENT 'If A, this is an active funder.  If Z, this is not an active funder (excluded from new entry forms).',
  `username` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Comprehensive list of potential funders for programs and act';

--
-- Dumping data for table `funder`
--

INSERT INTO `funder` (`funder_id`, `name`, `status`, `username`) VALUES(1, 'Austria', 'A', 'austria');
INSERT INTO `funder` (`funder_id`, `name`, `status`, `username`) VALUES(2, 'Belgium', 'A', 'belgium');
INSERT INTO `funder` (`funder_id`, `name`, `status`, `username`) VALUES(3, 'Denmark', 'A', 'denmark');
INSERT INTO `funder` (`funder_id`, `name`, `status`, `username`) VALUES(4, 'EU', 'A', 'european_commission');
INSERT INTO `funder` (`funder_id`, `name`, `status`, `username`) VALUES(5, 'FAO', 'A', 'fao');
INSERT INTO `funder` (`funder_id`, `name`, `status`, `username`) VALUES(6, 'France', 'A', 'france');
INSERT INTO `funder` (`funder_id`, `name`, `status`, `username`) VALUES(7, 'Germany', 'A', 'germany');
INSERT INTO `funder` (`funder_id`, `name`, `status`, `username`) VALUES(8, 'Netherlands', 'A', 'netherlands');
INSERT INTO `funder` (`funder_id`, `name`, `status`, `username`) VALUES(9, 'Switzerland', 'A', 'switzerland');
INSERT INTO `funder` (`funder_id`, `name`, `status`, `username`) VALUES(10, 'United States', 'A', 'united_states');
INSERT INTO `funder` (`funder_id`, `name`, `status`, `username`) VALUES(11, 'United Kingdom', 'A', 'united_kingdom');
INSERT INTO `funder` (`funder_id`, `name`, `status`, `username`) VALUES(12, 'World Bank', 'A', 'world_bank');
INSERT INTO `funder` (`funder_id`, `name`, `status`, `username`) VALUES(13, 'Sweden', 'A', 'sweden');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

DROP TABLE IF EXISTS `program`;
CREATE TABLE `program` (
  `program_id` int(11) NOT NULL COMMENT 'Uniqiue, database generated ID of programs.',
  `is_single_donor` int(11) NOT NULL COMMENT 'Indicates as to wether or not this program has multiple donors. This field should be set by the database at save-time to ensure the value is always constant with the program_donor table. 1 = single donor; 0 = multiple donors.',
  `agencies` varchar(256) DEFAULT NULL COMMENT 'Donor donors/development agencies (e.g. ADA, BTC, DANIDA, EC, AFD, GIZ, BMZ, SIDA, USAID, MCC, etc.)',
  `implemented_by` text COMMENT 'Free text field to describe, in any way, who the implementing entity or entities are.',
  `title` varchar(256) NOT NULL COMMENT 'Name of the program.',
  `scope_id` int(11) DEFAULT NULL COMMENT 'Indicator that tells if program is limited to one country, multiple countries, or is global.',
  `region_id` int(11) DEFAULT NULL COMMENT 'Foreign Key to region table.  Where program is implemented.',
  `locations` varchar(256) DEFAULT NULL COMMENT 'Free text field available to enter specific cities, provinces, countries regions, etc.',
  `activity_start_dt` date DEFAULT NULL COMMENT 'Program/activity start date (or anticipated start date).',
  `activity_end_dt` date DEFAULT NULL COMMENT 'Program/activity end date (or anticipated end date).',
  `funding` float DEFAULT '0' COMMENT 'Funding for project/activity. If not defined yet, use anticipated amounts.',
  `summary` text COMMENT 'A brief summary statement of program activities and objectives (less than 1000 characters).',
  `poc_name` varchar(128) DEFAULT NULL COMMENT 'Point of contact''s name.',
  `poc_organization` varchar(128) DEFAULT NULL COMMENT 'Point of contact''s organization.',
  `poc_email` varchar(128) DEFAULT NULL COMMENT 'Point of contact''s email address.',
  `poc_phone` varchar(128) DEFAULT NULL COMMENT 'Point of contact''s phone number w/ country code.',
  `program_url` varchar(256) DEFAULT NULL COMMENT 'Link to program website or other source of relevant information if available.',
  `create_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_dt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='One row in this table represents on project/activity.';

--
-- Dumping data for table `program`
--

-- --------------------------------------------------------

--
-- Table structure for table `program_country`
--

DROP TABLE IF EXISTS `program_country`;
CREATE TABLE `program_country` (
  `program_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `program_country`
--

-- --------------------------------------------------------

--
-- Table structure for table `program_doc`
--

DROP TABLE IF EXISTS `program_doc`;
CREATE TABLE `program_doc` (
  `doc_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `description` varchar(256) NOT NULL,
  `original_filename` varchar(256) NOT NULL,
  `create_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table to link references to supplemental documents to progra';

-- --------------------------------------------------------

--
-- Table structure for table `program_funder`
--

DROP TABLE IF EXISTS `program_funder`;
CREATE TABLE `program_funder` (
  `program_id` int(11) NOT NULL,
  `funder_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `program_funder`
--

-- --------------------------------------------------------

--
-- Table structure for table `program_region`
--

DROP TABLE IF EXISTS `program_region`;
CREATE TABLE `program_region` (
  `program_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `program_region`
--

-- --------------------------------------------------------

--
-- Table structure for table `program_vg_section`
--

DROP TABLE IF EXISTS `program_vg_section`;
CREATE TABLE `program_vg_section` (
  `program_id` int(11) NOT NULL,
  `vg_part_id` varchar(8) NOT NULL,
  `vg_section_id` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `program_vg_section`
--

INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(5, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(10, '2', '3A');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(10, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(10, '2', '4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(10, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(10, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(10, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(10, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(10, '4', '12');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(10, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(10, '7', '26');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(16, '2', '3A');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(16, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(16, '2', '4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(16, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(16, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(16, '3', '10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(16, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(16, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(16, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(16, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(16, '4', '12');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(16, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(16, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(16, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(16, '7', '26');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(28, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(28, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(28, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(29, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(30, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(66, '2', '3A');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(66, '4', '13');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(66, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(66, '6', '24');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(94, '2', '3A');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(94, '2', '4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(94, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(94, '3', '10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(94, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(94, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(94, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(94, '4', '12');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(94, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(94, '5', '19');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(94, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(94, '6', '25');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(95, '2', '3A');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(95, '2', '4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(95, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(95, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(95, '4', '15');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(95, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(95, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(95, '6', '24');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(96, '2', '3A');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(96, '2', '4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(96, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(96, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(96, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(96, '4', '13');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(96, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(96, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(96, '6', '25');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(97, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(97, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(97, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(97, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(97, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(97, '4', '12');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(97, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(97, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(98, '2', '3A');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(98, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(98, '2', '4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(98, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(98, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(98, '3', '10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(98, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(98, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(98, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(98, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(98, '4', '12');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(98, '4', '13');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(98, '4', '14');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(98, '4', '15');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(98, '4', '16');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(98, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(98, '5', '18');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(98, '5', '19');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(98, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(98, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(98, '5', '22');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(98, '6', '23');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(98, '6', '24');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(98, '6', '25');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(98, '7', '26');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(98, '7', '26.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(98, '7', '26.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(100, '2', '3A');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(100, '7', '26');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(101, '2', '3A');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(101, '7', '26');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(102, '2', '3A');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(103, '2', '3A');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(104, '2', '3A');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(104, '7', '26');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(105, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(105, '4', '14');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(105, '4', '15');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(105, '6', '25');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(106, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(106, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(107, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(107, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(107, '4', '15');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(108, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(109, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(109, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(110, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(110, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(110, '6', '23');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(113, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(113, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(113, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(114, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(115, '2', '4.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(115, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(115, '2', '6.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(115, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(115, '5', '20.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(115, '5', '20.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(116, '2', '4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(116, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(116, '2', '4.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(116, '2', '4.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(116, '3', '7.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(116, '3', '8.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(116, '3', '8.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(116, '7', '26.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(116, '7', '26.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(116, '7', '26.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(117, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(117, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(117, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(117, '5', '19');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(117, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(118, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(118, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(118, '4', '15');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(118, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(118, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(120, '2', '3A');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(120, '2', '4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(120, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(120, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(120, '4', '12');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(120, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(121, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(121, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(121, '4', '15');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(121, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(121, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(122, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(122, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(122, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(123, '4', '15');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(123, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(123, '6', '25');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(124, '2', '4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(124, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(124, '3', '10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(124, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(124, '4', '12');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(124, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(124, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(125, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(125, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(125, '4', '15');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(125, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(125, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(126, '2', '3A');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(126, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(126, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(128, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(129, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(129, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(129, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(129, '4', '15');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(131, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(131, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(131, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(131, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(136, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(136, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(136, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(136, '4', '16');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(136, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(136, '5', '18');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(136, '5', '19');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(136, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(136, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(137, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(137, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(137, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(137, '4', '16');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(137, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(137, '5', '18');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(137, '5', '19');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(137, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(137, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(138, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(138, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(141, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(141, '3', '10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(141, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(141, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(141, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(141, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(141, '6', '24');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(144, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(144, '3', '10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(144, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(144, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(144, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(144, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(144, '6', '24');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(145, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(145, '3', '10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(145, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(145, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(145, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(145, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(145, '5', '21.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(145, '6', '24');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(146, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(146, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(146, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(146, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(146, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(147, '4', '14');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(149, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(149, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(149, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(149, '4', '16');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(149, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(149, '5', '18');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(149, '5', '19');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(149, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(149, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(150, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(150, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(150, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(150, '4', '16');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(150, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(150, '5', '18');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(150, '5', '19');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(150, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(150, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(153, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(153, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(154, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(154, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(154, '3', '10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(154, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(154, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(154, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(154, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(154, '5', '18');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(155, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(155, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(155, '3', '10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(155, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(155, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(155, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(155, '4', '12');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(155, '4', '13');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(155, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(155, '5', '18');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(155, '5', '19');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(155, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(156, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(156, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(156, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(156, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(156, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(156, '5', '18');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(156, '5', '19');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(157, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(157, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(157, '3', '10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(157, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(157, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(157, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(157, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(157, '5', '18');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(158, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(158, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(158, '3', '10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(158, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(158, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(158, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(158, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(158, '5', '18');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(159, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(159, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(159, '3', '10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(159, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(159, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(159, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(159, '5', '18');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(160, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(160, '3', '10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(160, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(160, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(160, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(161, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(161, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(161, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(161, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(161, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(161, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(161, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(162, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(162, '7', '26');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(163, '4', '13');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(164, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(164, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(164, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(164, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(164, '4', '12');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(164, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(165, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(165, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(165, '3', '10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(165, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(165, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(165, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(165, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(165, '5', '18');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(166, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(166, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(168, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(168, '3', '10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(168, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(168, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(169, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(169, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(169, '3', '10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(169, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(169, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(169, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(169, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(169, '5', '18');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(169, '5', '19');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(172, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(172, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(172, '3', '10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(172, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(172, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(172, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(172, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(172, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(181, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(181, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(181, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(181, '4', '16');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(181, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(181, '5', '18');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(181, '5', '19');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(181, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(181, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(182, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(182, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(182, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(182, '4', '16');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(182, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(182, '5', '18');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(182, '5', '19');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(182, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(182, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(191, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(191, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(191, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(191, '4', '16');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(191, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(191, '5', '18');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(191, '5', '19');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(191, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(191, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(218, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(218, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(218, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(218, '4', '16');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(218, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(218, '5', '18');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(218, '5', '19');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(218, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(218, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(221, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(221, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(221, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(221, '4', '16');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(221, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(221, '5', '18');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(221, '5', '19');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(221, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(221, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(222, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(222, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(222, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(222, '4', '16');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(222, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(222, '5', '18');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(222, '5', '19');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(222, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(222, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(227, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(227, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(227, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(227, '4', '16');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(227, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(227, '5', '18');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(227, '5', '19');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(227, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(227, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(230, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(230, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(230, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(230, '4', '16');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(230, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(230, '5', '18');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(230, '5', '19');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(230, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(235, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(235, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(235, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(235, '4', '16');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(235, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(235, '5', '18');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(235, '5', '19');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(235, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(235, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(237, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(237, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(237, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(237, '4', '16');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(237, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(237, '5', '18');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(237, '5', '19');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(237, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(237, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(238, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(238, '3', '10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(238, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(238, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(238, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(252, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(253, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(253, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(255, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(271, '2', '3B.4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(271, '2', '3B.5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(273, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(273, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(285, '3', '10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(285, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(285, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(285, '6', '23');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(286, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(287, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(287, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(287, '6', '23');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(288, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(288, '6', '23');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(295, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(299, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(299, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(301, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(301, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(301, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(303, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(303, '6', '23');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(305, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(305, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(305, '6', '25');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(308, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(308, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(308, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(308, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(308, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(311, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(312, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(313, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(313, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(315, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(316, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(316, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(316, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(316, '3', '7.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(316, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(316, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(316, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(316, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(317, '2', '3B.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(317, '2', '3B.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(317, '2', '3B.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(317, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(317, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(317, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(318, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(318, '2', '6.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(318, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(318, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(318, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(318, '6', '25.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(321, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(323, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(323, '6', '24.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(324, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(325, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(326, '2', '3B.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(326, '2', '3B.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(326, '2', '3B.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(326, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(326, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(326, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(327, '2', '3B.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(327, '2', '3B.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(327, '2', '3B.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(327, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(327, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(327, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(329, '2', '3B.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(329, '2', '3B.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(329, '2', '3B.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(329, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(329, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(329, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(331, '3', '10.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(331, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(333, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(333, '3', '9.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(333, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(334, '2', '3B.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(334, '2', '3B.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(334, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(334, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(334, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(334, '4', '12');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(334, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(336, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(337, '2', '3B.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(337, '2', '3B.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(337, '2', '3B.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(337, '2', '3B.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(337, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(337, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(337, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(337, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(337, '4', '16');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(337, '6', '24');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(338, '2', '3B.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(338, '2', '3B.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(338, '2', '3B.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(338, '2', '3B.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(338, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(338, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(338, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(338, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(338, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(338, '6', '24.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(339, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(339, '3', '7.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(339, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(339, '5', '19');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(340, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(340, '3', '10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(340, '4', '12.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(341, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(341, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(341, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(341, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(352, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(353, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(354, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(354, '3', '7.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(354, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(354, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(354, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(354, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(354, '6', '25');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(355, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(355, '2', '4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(355, '3', '7.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(355, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(356, '3', '7.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(356, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(356, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(357, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(357, '3', '7.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(357, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(357, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(357, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(357, '6', '25');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(358, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(358, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(358, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(358, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(359, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(359, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(359, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(359, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(360, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(360, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(360, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(360, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(361, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(361, '2', '4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(361, '3', '7.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(361, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(361, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(361, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(361, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(362, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(362, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(362, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(362, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(362, '4', '12');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(362, '5', '18.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(362, '5', '19.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(362, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(362, '6', '25.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(363, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(365, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(365, '2', '6.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(365, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(365, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(365, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(365, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(365, '6', '25.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(366, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(376, '2', '3B.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(376, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(377, '2', '3B.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(377, '2', '3B.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(377, '2', '3B.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(377, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(377, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(377, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(378, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(378, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(378, '3', '7.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(380, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(380, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(380, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(381, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(382, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(383, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(384, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(384, '2', '3B.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(384, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(384, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(384, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(385, '2', '3B.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(385, '2', '3B.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(385, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(386, '6', '23');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(387, '2', '3B.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(387, '2', '3B.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(387, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(387, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(388, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(390, '2', '3B.2');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(390, '2', '3B.4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(390, '2', '3B.6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(390, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(391, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(391, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(391, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(391, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(392, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(392, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(392, '3', '7.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(393, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(393, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(393, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(393, '4', '12');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(393, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(393, '5', '18');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(394, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(394, '2', '6.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(394, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(394, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(394, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(394, '6', '25.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(395, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(395, '2', '6.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(395, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(395, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(395, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(395, '6', '25.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(396, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(396, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(397, '2', '6.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(397, '6', '25.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(399, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(400, '7', '26');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(400, '7', '26.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(400, '7', '26.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(400, '7', '26.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(400, '7', '26.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(400, '7', '26.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(401, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(401, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(401, '2', '6.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(401, '3', '7.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(401, '3', '7.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(401, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(401, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(401, '5', '17.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(401, '5', '17.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(401, '5', '17.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(401, '5', '17.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(401, '5', '21.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(401, '6', '25.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(402, '2', '3B.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(402, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(402, '7', '26.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(402, '7', '26.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(403, '2', '3B.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(403, '2', '3B.6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(403, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(403, '2', '5.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(403, '2', '5.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(403, '2', '5.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(403, '4', '12.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(403, '4', '12.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(403, '4', '12.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(403, '4', '12.14');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(403, '4', '13.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(403, '4', '15.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(404, '2', '3B.3');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(404, '3', '7.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(404, '5', '22.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(404, '5', '22.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(405, '2', '3B.3');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(405, '2', '3B.4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(405, '2', '3B.8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(405, '2', '4.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(405, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(405, '3', '7.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(406, '2', '3B.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(406, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(407, '2', '3B.5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(407, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(407, '3', '8.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(407, '5', '20.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(407, '5', '20.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(407, '5', '21.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(407, '6', '25.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(408, '2', '3B.5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(408, '2', '3B.6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(408, '5', '20.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(408, '5', '20.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(409, '2', '3B.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(409, '2', '3B.3');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(409, '2', '3B.6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(409, '2', '3B.8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(409, '2', '4.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(409, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(409, '2', '5.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(409, '2', '5.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(409, '2', '6.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(409, '3', '8.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(409, '3', '9.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(410, '2', '3A.1.5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(410, '2', '3B.5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(410, '2', '3B.6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(410, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(410, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(410, '2', '5.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(410, '6', '25.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(410, '6', '25.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(411, '2', '3B.3');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(411, '2', '3B.4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(411, '2', '3B.6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(411, '2', '4.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(411, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(411, '2', '5.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(411, '2', '5.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(411, '2', '5.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(411, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(412, '2', '3B.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(412, '2', '3B.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(412, '2', '3B.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(412, '2', '3B.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(412, '2', '3B.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(412, '2', '4.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(412, '2', '4.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(412, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(412, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(412, '2', '5.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(412, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(412, '3', '7.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(412, '3', '7.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(412, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(413, '2', '3B.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(413, '2', '3B.5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(413, '2', '3B.7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(413, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(413, '2', '5.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(413, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(413, '2', '6.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(413, '2', '6.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(413, '2', '6.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(413, '3', '8.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(413, '3', '8.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(413, '3', '8.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(414, '2', '3B.3');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(414, '2', '3B.5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(414, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(414, '2', '4.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(414, '2', '4.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(414, '2', '4.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(414, '3', '7.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(414, '3', '7.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(414, '3', '8.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(414, '4', '11.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(414, '4', '12.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(414, '4', '12.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(414, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(414, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(414, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(415, '2', '3B.4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(415, '2', '3B.5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(415, '2', '4.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(415, '2', '5.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(415, '3', '7.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(415, '3', '7.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(415, '3', '7.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(415, '4', '11.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(415, '4', '12.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(415, '4', '12.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(415, '5', '17.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(415, '5', '21.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(416, '2', '3B.3');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(416, '2', '3B.7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(416, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(416, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(416, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(416, '4', '11.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(416, '4', '12.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(416, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(416, '5', '20.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(416, '5', '20.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(416, '5', '20.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(416, '5', '20.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(416, '5', '20.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(417, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(417, '4', '12.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(418, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(418, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(418, '2', '6.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(419, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(419, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(419, '5', '17.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(420, '2', '3B.3');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(420, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(420, '2', '4.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(420, '2', '4.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(420, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(420, '2', '6.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(420, '2', '6.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(420, '3', '7.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(420, '3', '7.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(420, '5', '21.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(420, '5', '21.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(421, '2', '3B.3');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(421, '2', '3B.6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(421, '2', '3B.8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(421, '2', '4.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(421, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(421, '2', '5.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(421, '2', '5.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(421, '2', '5.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(422, '2', '3B.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(422, '2', '3B.3');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(422, '2', '3B.8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(422, '2', '3B.9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(422, '2', '5.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(422, '2', '6.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(422, '2', '6.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(422, '2', '6.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(422, '3', '7.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(422, '3', '7.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(422, '6', '25.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(423, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(423, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(423, '5', '17.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(424, '4', '13.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(425, '2', '3B.6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(425, '2', '4.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(425, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(425, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(425, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(425, '3', '7.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(425, '3', '8.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(425, '3', '9.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(425, '3', '9.11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(425, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(425, '5', '21.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(425, '5', '21.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(425, '6', '25.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(425, '6', '25.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(426, '2', '3B.9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(426, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(426, '2', '5.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(427, '2', '3B.2');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(427, '2', '3B.4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(427, '2', '4.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(429, '2', '3B.9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(430, '2', '3B.4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(430, '2', '3B.6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(430, '2', '4.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(430, '2', '4.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(430, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(430, '2', '5.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(430, '3', '7.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(430, '3', '7.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(431, '2', '3B.3');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(431, '2', '3B.4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(431, '2', '3B.8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(431, '2', '4.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(431, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(431, '3', '7.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(432, '2', '3B.5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(432, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(433, '3', '9.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(433, '4', '12.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(434, '2', '3B.8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(434, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(434, '2', '6.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(434, '3', '7.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(434, '3', '8.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(434, '3', '9.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(434, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(434, '5', '17.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(435, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(435, '6', '24.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(436, '2', '3B.5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(436, '2', '3B.6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(436, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(436, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(436, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(436, '2', '5.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(436, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(436, '3', '10.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(436, '3', '10.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(436, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(436, '3', '8.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(436, '3', '8.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(436, '3', '8.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(436, '3', '8.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(436, '3', '8.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(436, '3', '8.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(436, '3', '8.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(436, '3', '8.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(436, '3', '8.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(436, '3', '8.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(436, '3', '8.11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(436, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(436, '6', '25.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(437, '2', '4.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(437, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(437, '2', '5.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(437, '2', '5.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(437, '3', '10.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(437, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(437, '3', '8.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(437, '3', '8.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(437, '3', '8.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(437, '3', '8.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(437, '3', '8.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(437, '3', '8.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(437, '3', '8.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(437, '3', '8.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(437, '3', '8.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(437, '3', '8.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(437, '3', '8.11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(437, '4', '15.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(437, '4', '15.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(437, '4', '15.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(438, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(438, '3', '8.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(438, '3', '8.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(439, '2', '3B.8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(439, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(439, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(439, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(439, '4', '13.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(439, '4', '13.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(439, '4', '13.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(439, '5', '20.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(439, '5', '20.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(440, '2', '3B.8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(440, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(440, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(440, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(440, '4', '13.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(440, '4', '13.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(440, '4', '13.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(440, '5', '20.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(440, '5', '20.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(441, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(441, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(441, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(441, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(441, '5', '17.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(441, '5', '18.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(441, '5', '18.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(442, '2', '3B.5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(442, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(442, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(442, '5', '18');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(442, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(443, '2', '3B.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(443, '2', '3B.8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(443, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(443, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(443, '2', '6.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(443, '2', '6.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(443, '2', '6.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(443, '2', '6.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(443, '2', '6.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(443, '2', '6.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(443, '2', '6.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(443, '2', '6.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(443, '3', '10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(443, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(444, '2', '3B.5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(444, '2', '3B.8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(444, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(444, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(444, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(445, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(445, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(445, '2', '5.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(445, '4', '14.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(445, '4', '16.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(446, '2', '3B.6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(446, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(446, '4', '12.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(446, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(447, '2', '3B.3');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(447, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(447, '2', '5.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(447, '4', '14');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(447, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(448, '2', '3B.1');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(448, '2', '3B.3');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(448, '2', '3B.4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(448, '2', '3B.6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(448, '2', '3B.8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(448, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(448, '2', '4.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(448, '2', '4.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(448, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(448, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(448, '2', '5.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(448, '2', '5.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(448, '2', '5.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(448, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(448, '3', '8.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(448, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(448, '5', '17.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(448, '5', '21.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(449, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(449, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(449, '5', '17.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(450, '2', '3B.4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(450, '2', '5.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(450, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(450, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(450, '5', '17.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(451, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(451, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(451, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(451, '5', '17.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(452, '2', '3B.5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(452, '2', '3B.6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(452, '5', '20.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(452, '5', '20.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(453, '2', '3B.3');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(453, '2', '3B.4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(453, '2', '3B.6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(453, '2', '3B.9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(453, '2', '4.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(453, '2', '4.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(453, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(453, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(453, '2', '5.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(453, '2', '6.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(453, '7', '26.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(453, '7', '26.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(453, '7', '26.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(453, '7', '26.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(454, '2', '3B.5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(454, '2', '3B.6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(454, '5', '20.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(454, '5', '20.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(455, '2', '3B.5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(455, '2', '3B.6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(455, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(455, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(455, '2', '5.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(455, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(455, '3', '8.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(455, '4', '11.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(455, '5', '20.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(455, '5', '20.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(455, '5', '20.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(456, '2', '3B.5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(456, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(456, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(456, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(456, '5', '20.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(459, '2', '3B.6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(459, '2', '4.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(459, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(459, '3', '10.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(459, '3', '7.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(459, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(459, '6', '24.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(459, '6', '24.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(459, '6', '24.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(460, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(460, '2', '4.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(460, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(460, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(460, '3', '7.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(460, '4', '11.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(460, '4', '11.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(460, '4', '11.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(460, '4', '12.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(460, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(460, '5', '17.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(461, '2', '3B.5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(461, '2', '3B.6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(461, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(461, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(461, '2', '5.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(461, '2', '5.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(461, '4', '12.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(461, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(462, '2', '3B.6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(462, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(462, '6', '25.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(463, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(463, '2', '5.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(463, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(463, '3', '9.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(464, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(464, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(464, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(464, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(464, '5', '17.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(465, '2', '3B.3');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(465, '2', '3B.4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(465, '2', '3B.6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(465, '2', '3B.9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(465, '2', '4.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(465, '2', '4.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(465, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(465, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(465, '2', '5.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(465, '2', '6.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(465, '7', '26.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(466, '4', '12.14');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(467, '2', '3B.3');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(467, '2', '3B.4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(467, '2', '3B.8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(467, '2', '4.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(467, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(467, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(467, '5', '17.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(467, '5', '17.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(467, '5', '17.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(468, '2', '3B.3');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(468, '2', '3B.8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(468, '2', '4.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(468, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(468, '3', '7.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(468, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(468, '5', '17.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(468, '5', '17.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(468, '5', '21.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(469, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(469, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(469, '5', '17.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(469, '5', '17.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(469, '5', '17.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(473, '2', '3A.1.5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(473, '2', '3B.8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(473, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(473, '4', '13.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(474, '2', '3B.6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(474, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(475, '2', '3B.5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(475, '2', '3B.6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(475, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(475, '2', '5.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(475, '2', '5.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(475, '5', '22');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(475, '6', '23');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(476, '2', '3B.4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(476, '2', '4.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(476, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(476, '3', '7.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(476, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(477, '2', '3B.4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(477, '2', '4.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(477, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(477, '3', '7.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(477, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(478, '2', '3B.4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(479, '6', '25');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(480, '2', '4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(480, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(480, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(482, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(482, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(482, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(483, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(483, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(483, '3', '10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(483, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(483, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(483, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(483, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(484, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(484, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(484, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(484, '4', '16');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(484, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(484, '5', '18');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(484, '5', '19');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(484, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(484, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(486, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(486, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(486, '3', '10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(486, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(486, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(486, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(486, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(488, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(488, '5', '22');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(489, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(489, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(489, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(489, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(490, '2', '3B.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(490, '2', '3B.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(490, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(490, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(490, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(490, '3', '7.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(490, '3', '7.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(490, '3', '7.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(490, '3', '8.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(490, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(490, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(497, '2', '3A');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(497, '3', '10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(497, '3', '7.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(497, '3', '7.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(497, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(497, '3', '8.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(497, '3', '8.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(497, '3', '8.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(497, '3', '8.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(497, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(497, '3', '9.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(497, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(497, '4', '11.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(497, '4', '11.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(497, '6', '23');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(497, '7', '26');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(498, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(498, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(498, '5', '21.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(506, '2', '3A.2');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(506, '2', '3B.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(506, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(506, '4', '11.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(506, '4', '12.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(506, '4', '12.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(506, '4', '12.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(506, '4', '12.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(506, '4', '12.15');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(506, '7', '26.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(506, '7', '26.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(506, '7', '26.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(506, '7', '26.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(507, '2', '3A.1.2');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(507, '2', '3A.1.3');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(507, '2', '3B.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(507, '2', '3B.4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(507, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(507, '2', '4.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(507, '2', '4.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(507, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(507, '2', '6.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(507, '2', '6.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(507, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(507, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(507, '5', '17.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(507, '5', '17.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(507, '5', '17.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(507, '5', '17.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(507, '7', '26.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(507, '7', '26.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(507, '7', '26.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(507, '7', '26.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(508, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(509, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(510, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(510, '2', '5.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(510, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(510, '2', '6.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(510, '2', '6.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(510, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(510, '3', '7.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(510, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(510, '5', '21.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(510, '5', '21.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(510, '5', '21.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(510, '5', '21.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(513, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(513, '4', '12');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(513, '4', '12.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(513, '5', '19');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(514, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(514, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(514, '2', '5.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(514, '2', '5.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(514, '2', '5.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(514, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(514, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(514, '2', '6.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(514, '2', '6.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(514, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(514, '4', '13');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(519, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(519, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(519, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(519, '2', '6.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(519, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(519, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(519, '4', '11.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(519, '4', '12');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(519, '4', '12.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(519, '4', '12.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(519, '4', '16');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(519, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(519, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(519, '5', '20.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(519, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(519, '6', '25');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(520, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(520, '4', '11.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(520, '4', '12');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(520, '4', '12.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(520, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(520, '5', '19');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(521, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(521, '3', '8.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(521, '3', '8.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(521, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(521, '3', '9.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(521, '3', '9.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(521, '3', '9.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(521, '3', '9.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(521, '3', '9.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(521, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(521, '5', '21.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(521, '5', '21.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(521, '5', '21.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(521, '6', '23');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(521, '6', '23.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(521, '6', '25');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(521, '6', '25.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(521, '6', '25.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(521, '6', '25.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(522, '2', '3A');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(522, '2', '3A.1.1');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(522, '2', '3A.1.3');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(522, '2', '3A.1.5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(522, '4', '14');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(522, '4', '14.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(522, '4', '14.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(522, '4', '14.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(522, '4', '14.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(522, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(522, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(522, '5', '17.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(522, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(523, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(523, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(523, '4', '12');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(523, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(523, '6', '23');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(523, '6', '24');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(523, '6', '25');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(523, '7', '26');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(524, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(524, '4', '12');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(524, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(524, '6', '23');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(524, '6', '25');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(524, '7', '26');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(524, '7', '26.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(525, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(525, '3', '7.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(525, '3', '7.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(525, '3', '7.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(525, '3', '7.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(525, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(525, '3', '8.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(525, '3', '8.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(525, '3', '8.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(525, '3', '8.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(525, '3', '8.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(525, '3', '8.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(525, '3', '8.11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(525, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(525, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(525, '4', '12');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(525, '4', '16');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(525, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(525, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(526, '2', '4.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(526, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(526, '3', '8.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(526, '6', '25');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(526, '6', '25.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(526, '6', '25.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(527, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(527, '4', '11.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(527, '4', '11.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(527, '4', '11.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(527, '4', '11.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(527, '4', '12');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(527, '4', '12.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(527, '4', '12.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(527, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(532, '6', '23');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(534, '2', '4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(534, '2', '4.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(534, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(534, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(534, '2', '5.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(534, '2', '5.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(534, '2', '5.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(534, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(534, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(534, '2', '6.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(534, '2', '6.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(534, '2', '6.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(534, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(534, '3', '7.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(534, '3', '7.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(534, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(534, '3', '9.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(534, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(534, '5', '17.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(534, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(534, '5', '21.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(534, '5', '21.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(534, '5', '21.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(534, '5', '21.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(535, '2', '4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(535, '2', '4.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(535, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(535, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(535, '2', '6.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(535, '2', '6.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(535, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(535, '4', '11.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(535, '4', '12');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(535, '4', '13');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(536, '2', '4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(536, '2', '4.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(536, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(536, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(536, '2', '6.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(536, '2', '6.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(536, '2', '6.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(536, '2', '6.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(536, '2', '6.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(536, '2', '6.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(536, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(536, '3', '8.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(536, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(536, '6', '25');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(536, '6', '25.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(536, '6', '25.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(536, '6', '25.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(537, '4', '12');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(537, '4', '12.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(537, '6', '23');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(537, '6', '24');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(539, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(539, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(539, '4', '12');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(539, '4', '16');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(539, '5', '18');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(539, '5', '19');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(540, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(540, '3', '8.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(540, '3', '8.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(540, '3', '8.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(540, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(540, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(540, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(540, '5', '17.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(540, '5', '17.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(540, '5', '17.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(540, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(540, '6', '23');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(540, '6', '24');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(540, '6', '25');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(541, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(541, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(541, '2', '6.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(541, '2', '6.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(541, '2', '6.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(541, '2', '6.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(541, '2', '6.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(541, '2', '6.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(541, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(541, '5', '21.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(541, '5', '21.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(541, '5', '21.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(541, '5', '21.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(541, '5', '21.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(541, '6', '25');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(541, '6', '25.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(541, '6', '25.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(541, '6', '25.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(541, '6', '25.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(541, '6', '25.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(543, '6', '23');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(543, '6', '24');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(545, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(547, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(547, '3', '8.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(547, '3', '8.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(547, '3', '8.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(547, '3', '8.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(547, '3', '8.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(547, '3', '8.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(547, '3', '8.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(547, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(547, '4', '12');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(547, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(547, '5', '20');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(547, '5', '21');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(547, '5', '21.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(547, '6', '23');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(547, '6', '25');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(547, '6', '25.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(547, '6', '25.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(549, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(549, '4', '11.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(549, '4', '11.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(549, '4', '11.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(549, '4', '12');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(549, '4', '12.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(549, '4', '12.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(549, '4', '12.11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(549, '4', '12.14');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(551, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(551, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(551, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(551, '4', '14');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(551, '5', '17');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(552, '2', '3A');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(552, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(553, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(553, '2', '5.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(554, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(554, '2', '5.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(555, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(555, '7', '26');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(555, '7', '26.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(556, '2', '4.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(556, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(557, '2', '3A');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(557, '2', '3A.1.1');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(557, '2', '3A.1.2');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(557, '2', '3A.1.3');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(557, '2', '3A.1.4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(557, '2', '3A.1.5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(557, '2', '3A.2');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(557, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(557, '2', '4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(557, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(557, '2', '6');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(558, '2', '3A');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(558, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(558, '2', '5.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(559, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(559, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(560, '2', '3B.9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(560, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(560, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(560, '2', '5.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(561, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(562, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(562, '2', '4.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(562, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(563, '3', '7.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(563, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(564, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(564, '7', '26.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(565, '7', '26');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(566, '2', '4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(566, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(567, '2', '3A');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(567, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(568, '2', '3A');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(568, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(569, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(569, '3', '9.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(569, '3', '9.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(569, '4', '11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(570, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(570, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(570, '2', '5.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(571, '2', '4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(571, '2', '5.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(571, '3', '7.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(572, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(573, '2', '5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(573, '2', '5.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(573, '3', '7.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(574, '3', '7.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(575, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(575, '3', '7.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(576, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(576, '2', '5.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(576, '3', '9.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(576, '7', '26.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(576, '7', '26.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(576, '7', '26.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(577, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(577, '7', '26.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(577, '7', '26.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(577, '7', '26.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(578, '7', '26');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(578, '7', '26.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(578, '7', '26.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(578, '7', '26.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(578, '7', '26.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(578, '7', '26.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(579, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(579, '2', '5.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(579, '3', '8.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(579, '7', '26.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(579, '7', '26.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(580, '3', '10.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(580, '3', '9.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(580, '3', '9.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(581, '2', '5.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(581, '3', '9.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(582, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(582, '2', '5.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(582, '5', '21.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(582, '5', '21.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(583, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(583, '3', '8.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(583, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(584, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(584, '2', '5.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(584, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(584, '2', '6.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(584, '3', '8.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(584, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(584, '5', '17.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(584, '7', '26.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(585, '2', '6.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(585, '3', '8.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(585, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(585, '5', '20.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(586, '3', '8.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(586, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(587, '2', '5.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(587, '3', '9.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(587, '3', '9.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(587, '3', '9.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(588, '5', '20.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(589, '5', '20.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(589, '5', '20.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(589, '5', '20.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(589, '5', '20.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(590, '3', '9.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(590, '3', '9.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(590, '5', '20.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(590, '5', '20.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(590, '7', '26.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(591, '2', '5.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(591, '4', '14.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(591, '4', '14.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(591, '6', '25.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(592, '3', '9.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(592, '3', '9.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(592, '4', '14.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(592, '4', '14.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(592, '6', '25.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(593, '2', '4.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(593, '5', '20.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(593, '5', '20.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(593, '5', '20.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(593, '5', '20.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(593, '5', '20.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(594, '3', '9.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(594, '3', '9.07');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(594, '3', '9.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(594, '3', '9.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(594, '3', '9.12');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(595, '2', '3A.1.1');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(595, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(595, '2', '4.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(595, '2', '4.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(595, '3', '9.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(595, '3', '9.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(595, '3', '9.08');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(595, '3', '9.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(595, '3', '9.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(595, '3', '9.11');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(595, '3', '9.12');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(595, '5', '20.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(595, '7', '26.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(596, '3', '10.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(596, '3', '9.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(596, '3', '9.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(596, '3', '9.10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(596, '7', '26.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(597, '3', '9.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(597, '3', '9.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(597, '7', '26.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(598, '3', '9.12');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(598, '5', '20.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(598, '7', '26.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(598, '7', '26.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(599, '2', '3A.1.1');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(599, '2', '3A.1.2');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(599, '2', '3A.1.3');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(599, '2', '3A.1.4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(599, '2', '3A.1.5');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(599, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(599, '2', '4.09');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(599, '2', '5.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(599, '2', '5.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(599, '2', '5.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(599, '2', '5.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(599, '2', '5.06');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(599, '2', '6.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(599, '2', '6.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(599, '3', '9.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(599, '3', '9.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(599, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(599, '5', '17.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(599, '5', '17.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(599, '5', '17.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(599, '5', '17.05');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(599, '5', '21.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(599, '5', '21.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(599, '7', '26.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(600, '4', '12.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(600, '5', '17.01');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(600, '5', '17.03');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(600, '5', '20.02');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(600, '5', '20.04');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(601, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(602, '2', '3A');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(602, '2', '3B');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(602, '2', '4');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(602, '3', '10');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(602, '3', '7');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(602, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(602, '3', '9');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(602, '7', '26');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(603, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(604, '3', '8');
INSERT INTO `program_vg_section` (`program_id`, `vg_part_id`, `vg_section_id`) VALUES(605, '3', '8');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
CREATE TABLE `region` (
  `region_id` int(11) NOT NULL,
  `region_name` varchar(128) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`region_id`, `region_name`, `status`) VALUES(1, 'Africa (sub-Sahara)', 'A');
INSERT INTO `region` (`region_id`, `region_name`, `status`) VALUES(2, 'East Asia and the Pacific', 'A');
INSERT INTO `region` (`region_id`, `region_name`, `status`) VALUES(3, 'Europe and Eurasia', 'A');
INSERT INTO `region` (`region_id`, `region_name`, `status`) VALUES(4, 'Latin American and Caribbean', 'A');
INSERT INTO `region` (`region_id`, `region_name`, `status`) VALUES(5, 'North Africa and the Middle East', 'A');
INSERT INTO `region` (`region_id`, `region_name`, `status`) VALUES(6, 'South Asia', 'A');
INSERT INTO `region` (`region_id`, `region_name`, `status`) VALUES(7, 'Central Asia', 'A');
INSERT INTO `region` (`region_id`, `region_name`, `status`) VALUES(8, 'North America', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `result_message`
--

DROP TABLE IF EXISTS `result_message`;
CREATE TABLE `result_message` (
  `message_id` int(11) NOT NULL,
  `program_id` int(11) DEFAULT NULL,
  `message` varchar(1024) NOT NULL,
  `create_dt` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `result_message`
--

-- --------------------------------------------------------

--
-- Table structure for table `scope`
--

DROP TABLE IF EXISTS `scope`;
CREATE TABLE `scope` (
  `scope_id` int(11) NOT NULL,
  `scope_name` varchar(45) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scope`
--

INSERT INTO `scope` (`scope_id`, `scope_name`, `status`) VALUES(1, 'Implemented in a single country', 'A');
INSERT INTO `scope` (`scope_id`, `scope_name`, `status`) VALUES(2, 'Implemented in multiple countires', 'A');
INSERT INTO `scope` (`scope_id`, `scope_name`, `status`) VALUES(3, 'Implemented globally', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `vg_part`
--

DROP TABLE IF EXISTS `vg_part`;
CREATE TABLE `vg_part` (
  `vg_part_id` varchar(8) NOT NULL,
  `title` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Voluntary Guideline parts - Used with vg_section table.';

--
-- Dumping data for table `vg_part`
--

INSERT INTO `vg_part` (`vg_part_id`, `title`) VALUES('2', 'General Matters');
INSERT INTO `vg_part` (`vg_part_id`, `title`) VALUES('3', 'Legal recognition and allocation of tenure rights and duties');
INSERT INTO `vg_part` (`vg_part_id`, `title`) VALUES('4', 'Transfers and other changes to tenure rights and duties');
INSERT INTO `vg_part` (`vg_part_id`, `title`) VALUES('5', 'Administration of tenure');
INSERT INTO `vg_part` (`vg_part_id`, `title`) VALUES('6', 'Responses to climate change and emergencies');
INSERT INTO `vg_part` (`vg_part_id`, `title`) VALUES('7', 'Promotion, implementation, monitoring and evaluation');

-- --------------------------------------------------------

--
-- Table structure for table `vg_section`
--

DROP TABLE IF EXISTS `vg_section`;
CREATE TABLE `vg_section` (
  `vg_part_id` varchar(8) NOT NULL,
  `vg_section_id` varchar(8) NOT NULL,
  `title` varchar(3000) NOT NULL COMMENT 'Description of section.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Voluntary Guidelines Sections, used by linking to programs v';

--
-- Dumping data for table `vg_section`
--

INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '3A', 'Guiding principles of responsible tenure governance - General principles');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '3A.1.1', 'States should: Recognize and respect all legitimate tenure right holders and their rights. They should take reasonable measures to identify, record and respect legitimate tenure right holders and their rights, whether formally recorded or not; to refrain from infringement of tenure rights of others; and to meet the duties associated with tenure rights.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '3A.1.2', 'States shoud: Safeguard legitimate tenure rights against threats and infringements. They should protect tenure right holders against the arbitrary loss of their tenure rights, including forced evictions that are inconsistent with their existing obligations under national and international law.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '3A.1.3', 'States should: Promote and facilitate the enjoyment of legitimate tenure rights. They should take active measures to promote and facilitate the full realization of tenure rights or the making of transactions with the rights, such as ensuring that services are accessible to all.\n');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '3A.1.4', 'States should: Provide access to justice to deal with infringements of legitimate tenure rights. They should provide effective and accessible means to everyone, through judicial authorities or other approaches, to resolve disputes over tenure rights; and to provide affordable and prompt enforcement of outcomes. States should provide prompt, just compensation where tenure rights are taken for public purposes.\n');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '3A.1.5', 'States should: Prevent tenure disputes, violent conflicts and corruption. They should take active measures to prevent tenure disputes from arising and from escalating into violent conflicts. They should endeavour to prevent corruption in all forms, at all levels, and in all settings.\n');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '3A.2', 'Non-state actors including business enterprises have a responsibility to respect human rights and legitimate tenure rights. Business enterprises should act with due diligence to avoid infringing on the human rights and legitimate tenure rights of others. They should include appropriate risk management systems to prevent and address adverse impacts on human rights and legitimate tenure rights. Business enterprises should provide for and cooperate in non-judicial mechanisms to provide remedy, including effective operational-level grievance mechanisms, where appropriate, where they have caused or contributed to adverse impacts on human rights and legitimate tenure rights. Business enterprises should identify and assess any actual or potential impacts on human rights and legitimate tenure rights in which they may be involved. States, in accordance with their international obligations, should provide access to effective judicial remedies for negative impacts on human rights and legitimate tenure rights by business enterprises. Where transnational corporations are involved, their home States have roles to play in assisting both those corporations and host States to ensure that businesses are not involved in abuse of human rights and legitimate tenure rights. States should take additional steps to protect against abuses of human rights and legitimate tenure rights by business enterprises that are owned or controlled by the State, or that receive substantial support and service from State agencies.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '3B', 'Principles of implementation - General principles');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '3B.1', 'Human dignity: recognizing the inherent dignity and the equal and inalienable human rights of all individuals.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '3B.10', 'ontinuous improvement: States should improve mechanisms for monitoring and analysis of tenure governance in order to develop evidence-based programmes and secure on-going improvements.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '3B.2', 'Non-discrimination: no one should be subject to discrimination under law and policies as well as in practice.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '3B.3', 'Equity and justice: recognizing that equality between individuals may require acknowledging differences between individuals, and taking positive action, including empowerment, in order to promote equitable tenure rights and access to land, fisheries and forests, for all, women and men, youth and vulnerable and traditionally marginalized people, within the national context.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '3B.4', 'Gender equality: Ensure the equal right of women and men to the enjoyment of all human rights, while acknowledging differences between women and men and taking specific measures aimed at accelerating de facto equality when necessary. States should ensure that women and girls have equal tenure rights and access to land, fisheries and forests independent of their civil and marital status.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '3B.5', 'Holistic and sustainable approach: recognizing that natural resources and their uses are interconnected, and adopting an integrated and sustainable approach to their administration.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '3B.6', 'Consultation and participation: engaging with and seeking the support of those who, having legitimate tenure rights, could be affected by decisions, prior to decisions being taken, and responding to their contributions; taking into consideration existing power imbalances between different parties and ensuring active, free, effective, meaningful and informed participation of individuals and groups in associated decision-making processes.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '3B.7', 'Rule of law: adopting a rules-based approach through laws that are widely publicized in applicable languages, applicable to all, equally enforced and independently adjudicated, and that are consistent with their existing obligations under national and international law, and with due regard to voluntary commitments under applicable regional and international instruments.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '3B.8', 'Transparency: clearly defining and widely publicizing policies, laws and procedures in applicable languages, and widely publicizing decisions in applicable languages and in formats accessible to all.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '3B.9', 'Accountability: holding individuals, public agencies and nonstate actors responsible for their actions and decisions according to the principles of the rule of law.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '4', 'Rights and responsibilities related to tenure');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '4.01', 'States should strive to ensure  responsible governance of tenure because land, fisheries and forests are central for the realization of human rights, food security, poverty  eradication,  sustainable  livelihoods,  social  stability,  housing  security, rural development, and social and economic growth.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '4.02', 'States should ensure that all actions regarding tenure and its governance are consistent with their existing obligations under national and international law, and with due regard to voluntary commitments under applicable regional and international instruments.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '4.03', 'All parties should recognize that no tenure right, including private ownership, is absolute. All tenure rights are limited by the rights of others and by the measures taken by States necessary for public purposes. Such measures should be determined by law, solely for the purpose of promoting general welfare including environmental protection and consistent with States'' human rights obligations. Tenure rights are also balanced by duties. All should respect the long-term protection and sustainable use of land, fisheries and forests.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '4.04', 'Based on an examination of tenure rights in line with national law, States should provide legal recognition for legitimate tenure rights not currently protected by law. Policies and laws that ensure tenure rights should be non-discriminatory and gender sensitive. Consistent with the principles of consultation and participation of these Guidelines, States should define through widely publicized rules the categories of rights that are considered legitimate. All forms of tenure should provide all persons with a degree of tenure security which guarantees legal protection against forced evictions that are inconsistent with States'' existing obligations under national and international law, and against harassment and other threats.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '4.05', 'States should protect legitimate tenure rights, and ensure that people are not arbitrarily evicted and that their legitimate tenure rights are not otherwise extinguished or infringed.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '4.06', 'States should remove and prohibit all forms of discrimination related to tenure rights, including those resulting from change of marital status, lack of legal capacity, and lack of access to economic resources. In particular, States should ensure equal tenure rights for women and men, including the right to inherit and bequeath these rights. Such State actions should be consistent with their existing obligations under relevant national law and legislation and international law, and with due regard to voluntary commitments under applicable regional and international instruments.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '4.07', 'States should consider providing non-discriminatory and gender-sensitive assistance where people are unable through their own actions to acquire tenure rights to sustain themselves, to gain access to the services of implementing agencies and judicial authorities, or to participate in processes that could affect their tenure rights.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '4.08', 'Given that all human rights are universal, indivisible, interdependent and interrelated, the governance of tenure of land, fisheries and forests should not only take into account rights that are directly linked to access and use of land, fisheries and forests, but also all civil, political, economic, social and cultural rights. In doing so, States should respect and protect the civil and political rights of defenders of human rights, including the human rights of peasants, indigenous peoples, fishers, pastoralists and rural workers, and should observe their human rights obligations when dealing with individuals and associations acting in defence of land, fisheries and forests.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '4.09', 'States should provide access through impartial and competent judicial and administrative bodies to timely, affordable and effective means of resolving disputes over tenure rights, including alternative means of resolving such disputes, and should provide effective remedies, which may include a right of appeal, as appropriate. Such remedies should be promptly enforced and may include restitution, indemnity, compensation and reparation. States should strive to ensure that vulnerable and marginalized persons have access to such means, in line with paragraphs 6.6 and 21.6. States should ensure that any person whose human rights are violated in the context of tenure has access to such means of dispute resolution and remedies.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '4.10', 'States should welcome and facilitate the participation of users of land, fisheries and forests in order to be fully involved in a participatory process of tenure governance, inter alia, formulation and implementation of policy and law and decisions on territorial development, as appropriate to the roles of State and non-state actors, and in line with national law and legislation.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '5', 'Policy, legal and organizational frameworks related to tenure');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '5.01', 'States should provide and maintain policy, legal and organizational frameworks that promote responsible governance of tenure of land, fisheries and forests. These frameworks are dependent on, and are supported by, broader reforms to the legal system, public service and judicial authorities.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '5.02', 'States should ensure that policy, legal and organizational frameworks for tenure governance are consistent with their existing obligations under national and international law, and with due regard to voluntary commitments under applicable regional and international instruments.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '5.03', 'States should ensure that policy, legal and organizational frameworks for tenure governance recognize and respect, in accordance with national laws, legitimate tenure rights including legitimate customary tenure rights that are not currently protected by law; and facilitate, promote and protect the exercise of tenure rights. Frameworks should reflect the social, cultural, economic and environmental significance of land, fisheries and forests. States should provide frameworks that are non-discriminatory and promote social equity and gender equality. Frameworks should reflect the interconnected relationships between land, fisheries and forests and their uses, and establish an integrated approach to their administration.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '5.04', 'States should consider the particular obstacles faced by women and girls with regard to tenure and associated tenure rights, and take measures to ensure that legal and policy frameworks provide adequate protection for women and that laws that recognize women''s tenure rights are implemented and enforced. States should ensure that women can legally enter into contracts concerning tenure rights on the basis of equality with men and should strive to provide legal services and other assistance to enable women to defend their tenure interests.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '5.05', 'States should develop relevant policies, laws and procedures through participatory processes involving all affected parties, ensuring that both men and women are included from the outset. Policies, laws and procedures should take into account the capacity to implement. They should incorporate gender-sensitive approaches, be clearly expressed in applicable languages, and widely publicized.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '5.06', 'States should place responsibilities at levels of government that can most effectively deliver services to the people. States should clearly define the roles and responsibilities of agencies dealing with tenure of land, fisheries and forests. States should ensure coordination between implementing agencies, as well as with local governments, and indigenous peoples and other communities with customary tenure systems.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '5.07', 'States should define and publicize opportunities for civil society, private sector and academia to contribute to developing and implementing policy, legal and organizational frameworks as appropriate.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '5.08', 'States and other parties should regularly review and monitor policy, legal and organizational frameworks to maintain their effectiveness. Implementing agencies and judicial authorities should engage with civil society, user representatives and the broader public to improve services and endeavour to prevent corruption through transparent processes and decision-making. Information about changes and their anticipated impacts should be clearly stated and widely publicized in applicable languages.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '5.09', 'States should recognize that policies and laws on tenure rights operate in the broader political, legal, social, cultural, religious, economic and environmental contexts. Where the broader contexts change, and where reforms to tenure are therefore required, States should seek to develop national consensus on proposed reforms.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '6', 'Delivery of services');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '6.01', 'To the extent that resources permit, States should ensure that implementing agencies and judicial authorities have the human, physical, financial and other forms of capacity to implement policies and laws in a timely, effective and gender-sensitive manner. Staff at all organizational levels should receive continuous training, and be recruited with due regard to ensuring gender and social equality.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '6.02', 'States should ensure that the delivery of services related to tenure and its administration are consistent with their existing obligations under national and international law, and with due regard to voluntary commitments under applicable regional and international instruments.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '6.03', 'States should provide prompt, accessible and non-discriminatory services to protect tenure rights, to promote and facilitate the enjoyment of those rights, and to resolve disputes. States should eliminate unnecessary legal and procedural requirements and strive to overcome barriers related to tenure rights. States should review services of implementing agencies and judicial authorities, and introduce improvements where required.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '6.04', 'States should ensure that implementing agencies and judicial authorities serve the entire population, delivering services to all, including those in remote locations. Services should be provided promptly and efficiently using locally suitable technology to increase efficiency and accessibility. Internal guidelines should be established so that staff can implement policies and laws in a reliable and consistent manner. Procedures should be simplified without threatening tenure security or quality of justice. Explanatory materials should be widely publicized in applicable languages and inform users of their rights and responsibilities.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '6.05', 'States should establish policies and laws to promote the sharing, as appropriate, of spatial and other information on tenure rights for the effective use by the State and implementing agencies, indigenous peoples and other communities, civil society, the private sector, academia and the general public. National standards should be developed for the shared use of information, taking into account regional and international standards.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '6.06', 'States and other parties should consider additional measures to support vulnerable or marginalized groups who could not otherwise access administrative and judicial services. These measures should include legal support, such as affordable legal aid, and may also include the provision of services of paralegals or parasurveyors, and mobile services for remote communities and mobile indigenous peoples.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '6.07', 'States should encourage implementing agencies and judicial authorities to foster a culture based on service and ethical behaviour. Agencies and judicial authorities should seek regular feedback, such as through surveys and focus groups, to raise standards and improve delivery of services, to meet expectations, and to satisfy new needs. They should publish performance standards and report regularly on results. Users should have means of addressing complaints either within the implementing agency, such as by administrative review, or externally, such as by an independent review or through an ombudsman.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '6.08', 'Relevant professional associations for services related to tenure should develop, publicize and monitor the implementation of high levels of ethical behaviour. Public and private sector parties should adhere to applicable ethical standards, and be subject to disciplinary action in case of violations. Where such associations do not exist, States should ensure an environment conducive to their establishment.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('2', '6.09', 'States and non-state actors should endeavour to prevent corruption with regard to tenure rights. States should do so particularly through consultation and participation, rule of law, transparency and accountability. States should adopt and enforce anti-corruption measures including applying checks and balances, limiting the arbitrary use of power, addressing conflicts of interest and adopting clear rules and regulations. States should provide for the administrative and/or judicial review of decisions of implementing agencies. Staff working on the administration of tenure should be held accountable for their actions. They should be provided with the means of conducting their duties effectively. They should be protected against interference in their duties and from retaliation for reporting acts of corruption.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '10', 'Informal tenure');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '10.01', 'Where informal tenure to land, fisheries and forests exists, States should acknowledge it in a manner that respects existing formal rights under national law and in ways that recognize the reality of the situation and promote social, economic and environmental well-being. States should promote policies and laws to provide recognition to such informal tenure. The process of establishing these policies and laws should be participatory, gender sensitive and strive to make provision for technical and legal support to affected communities and individuals. In particular, States should acknowledge the emergence of informal tenure arising from large-scale migrations.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '10.02', 'States should ensure that all actions regarding informal tenure are consistent with their existing obligations under national and international law, and with due regard to voluntary commitments under applicable regional and international instruments, including as appropriate to the right to adequate housing.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '10.03', 'Whenever States provide legal recognition to informal tenure, this should be done through participatory, gender-sensitive processes, having particular regard to tenants. In doing so, States should pay special attention to farmers and small- scale food producers. These processes should facilitate access to legalization services and minimize costs. State should strive to provide technical and legal support to communities and participants.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '10.04', 'States should take all appropriate measures to limit the informal tenure that results from overly complex legal and administrative requirements for land use change and development on land. Development requirements and processes should be clear, simple and affordable to reduce the burden of compliance.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '10.05', 'States should endeavour to prevent corruption, particularly through increasing transparency, holding decision-makers accountable, and ensuring that impartial decisions are delivered promptly.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '10.06', 'Where it is not possible to provide legal recognition to informal tenure, States should prevent forced evictions that violate existing obligations under national and international law, and consistent with relevant provisions under Section 16.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '7', 'Safeguards');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '7.01', 'When States recognize or allocate tenure rights to land, fisheries and forests, they should establish, in accordance with national laws, safeguards to avoid infringing on or extinguishing tenure rights of others, including legitimate tenure rights that are not currently protected by law. In particular, safeguards should protect women and the vulnerable who hold subsidiary tenure rights, such as gathering rights.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '7.02', 'States should ensure that all actions regarding the legal recognition and allocation of tenure rights and duties are consistent with their existing obligations under national and international law, and with due regard to voluntary commitments under applicable regional and international instruments.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '7.03', 'Where States intend to recognize or allocate tenure rights, they should first identify all existing tenure rights and right holders, whether recorded or not. Indigenous peoples and other communities with customary tenure systems, smallholders and anyone else who could be affected should be included in the consultation process, consistent with paragraphs 3B.6 and 9.9. States should provide access to justice, consistent with paragraph 4.9 if people believe their tenure rights are not recognized.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '7.04', 'States should ensure that women and men enjoy the same rights in the newly recognized tenure rights, and that those rights are reflected in records. Where possible, legal recognition and allocation of tenure rights of individuals, families and communities should be done systematically, progressing area by area in accordance with national priorities, in order to provide the poor and vulnerable with full opportunities to acquire legal recognition of their tenure rights. Legal support should be provided, particularly to the poor and vulnerable. Locally appropriate approaches should be used to increase transparency when records of tenure rights are initially created, including in the mapping of tenure rights.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '7.05', 'States should ensure that people whose tenure rights are recognized or who are allocated new tenure rights have full knowledge of their rights and also their duties. Where necessary, States should provide support to such people so that they can enjoy their tenure rights and fulfil their duties.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '7.06', 'Where it is not possible to provide legal recognition of tenure rights, States should prevent forced evictions that are inconsistent with their existing obligations under national and international law, and in accordance with the principles of these Guidelines.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '8', 'Public land, fisheries and forests');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '8.01', 'Where States own or control land, fisheries and forests, they should determine the use and control of these resources in light of broader social, economic and environmental objectives. They should ensure that all actions are consistent with their existing obligations under national and international law, and with due regard to voluntary commitments under applicable regional and international instruments.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '8.02', 'Where States own or control land, fisheries and forests, the legitimate tenure rights of individuals and communities, including where applicable those with customary tenure systems, should be recognized, respected and protected, consistent with existing obligations under national and international law, and with due regard to voluntary commitments under applicable regional and international instruments. To this end, categories of legitimate tenure rights should be clearly defined and publicized, through a transparent process, and in accordance with national law.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '8.03', 'Noting that there are publicly-owned land, fisheries and forests that are collectively used and managed (in some national contexts referred to as commons), States should, where applicable, recognize and protect such publicly- owned land, fisheries and forests and their related systems of collective use and management, including in processes of allocation by the State.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '8.04', 'States should strive to establish up-to-date tenure information on land, fisheries and forests that they own or control by creating and maintaining accessible inventories. Such inventories should record the agencies responsible for administration as well as any legitimate tenure rights held by indigenous peoples and other communities with customary tenure systems and the private sector. Where possible, States should ensure that the publicly-held tenure rights are recorded together with tenure rights of indigenous peoples and other communities with customary tenure systems and the private sector in a single recording system, or are linked to them by a common framework.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '8.05', 'States should determine which of the land, fisheries and forests they own or control will be retained and used by the public sector, and which of these will be allocated for use by others and under what conditions.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '8.06', 'States should develop and publicize policies covering the use and control of land, fisheries and forests that are retained by the public sector and should strive to develop policies that promote equitable distribution of benefits from State-owned land, fisheries and forests. Policies should take into account the tenure rights of others and anyone who could be affected should be included in the consultation process consistent with the principles of consultation and participation of these Guidelines. The administration of, and transactions concerning, these resources should be undertaken in an effective, transparent and accountable manner in fulfilment of public policies.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '8.07', 'States should develop and publicize policies covering the allocation of tenure rights to others and, where appropriate, the delegation of responsibilities for tenure governance. Policies for allocation of tenure rights should be consistent with broader social, economic and environmental objectives. Local communities that have traditionally used the land, fisheries and forests should receive due consideration in the reallocation of tenure rights. Policies should take into account the tenure rights of others and anyone who could be affected should be included in the consultation, participation and decision-making processes. Such policies should ensure that the allocation of tenure rights does not threaten the livelihoods of people by depriving them of their legitimate access to these resources.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '8.08', 'States have the power to allocate tenure rights in various forms, from limited use to full ownership. Policies should recognize the range of tenure rights and right holders. Policies should specify the means of allocation of rights, such as allocation based on historical use or other means. Where necessary, those who are allocated tenure rights should be provided with support so they can enjoy their rights. States should determine whether they retain any form of control over land, fisheries and forests that have been allocated.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '8.09', 'States should allocate tenure rights and delegate tenure governance in transparent, participatory ways, using simple procedures that are clear, accessible and understandable to all, especially to indigenous peoples and other communities with customary tenure systems. Information in applicable languages should be provided to all potential participants, including through gender-sensitive messages. Where possible, States should ensure that newly allocated tenure rights are recorded with other tenure rights in a single recording system, or are linked by a common framework. States and non-state actors should further endeavour to prevent corruption in the allocation of tenure rights.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '8.10', 'To the extent that resources permit, States should ensure that competent bodies responsible for land, fisheries and forests have the human, physical, financial and other forms of capacity. Where responsibilities for tenure governance are delegated, the recipients should receive training and other support so they can perform those responsibilities.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '8.11', 'States should monitor the outcome of allocation programmes, including the gender-differentiated impacts on food security and poverty eradication as well as their impacts on social, economic and environmental objectives, and introduce corrective measures as required.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '9', 'Indigenous peoples and other communities with customary tenure systems');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '9.01', 'State and non-state actors should acknowledge that land, fisheries and forests have social, cultural, spiritual, economic, environmental and political value to indigenous peoples and other communities with customary tenure systems.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '9.02', 'Indigenous peoples and other communities with customary tenure systems that exercise self-governance of land, fisheries and forests should promote and provide equitable, secure and sustainable rights to those resources, with special attention to the provision of equitable access for women. Effective participation of all members, men, women and youth, in decisions regarding their tenure systems should be promoted through their local or traditional institutions, including in the case of collective tenure systems. Where necessary, communities should be assisted to increase the capacity of their members to participate fully in decision-making and governance of their tenure systems.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '9.03', 'States should ensure that all actions are consistent with their existing obligations under national and international law, and with due regard to voluntary commitments under applicable regional and international instruments. In the case of indigenous peoples, States should meet their relevant obligations and voluntary commitments to protect, promote and implement human rights, including as appropriate from the International Labour Organization Convention (No 169) concerning Indigenous and Tribal Peoples in Independent Countries, the Convention on Biological Diversity and the United Nations Declaration on the Rights of Indigenous Peoples.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '9.04', 'States should provide appropriate recognition and protection of the legitimate tenure rights of indigenous peoples and other communities with customary tenure systems, consistent with existing obligations under national and international law, and with due regard to voluntary commitments under applicable regional and international instruments. Such recognition should take into account the land, fisheries and forests that are used exclusively by a community and those that are shared, and respect the general principles of responsible governance. Information on any such recognition should be publicized in an accessible location, in an appropriate form which is understandable and in applicable languages.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '9.05', 'Where indigenous peoples and other communities with customary tenure systems have legitimate tenure rights to the ancestral lands on which they live, States should recognize and protect these rights. Indigenous peoples and other communities with customary tenure systems should not be forcibly evicted from such ancestral lands.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '9.06', 'States should consider adapting their policy, legal and organizational frameworks to recognize tenure systems of indigenous peoples and other communities with customary tenure systems. Where constitutional or legal reforms strengthen the rights of women and place them in conflict with custom, all parties should cooperate to accommodate such changes in the customary tenure systems.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '9.07', 'States should, in drafting tenure policies and laws, take into account the social, cultural, spiritual, economic and environmental values of land, fisheries and forests held under tenure systems of indigenous peoples and other communities with customary tenure systems. There should be full and effective participation of all members or representatives of affected communities, including vulnerable and marginalized members, when developing policies and laws related to tenure systems of indigenous peoples and other communities with customary tenure systems.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '9.08', 'States should protect indigenous peoples and other communities with customary tenure systems against the unauthorized use of their land, fisheries and forests by others. Where a community does not object, States should assist to formally document and publicize information on the nature and location of land, fisheries and forests used and controlled by the community. Where tenure rights of indigenous peoples and other communities with customary tenure systems are formally documented, they should be recorded with other public, private and communal tenure rights to prevent competing claims.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '9.09', 'States and other parties should hold good faith consultation with indigenous peoples before initiating any project or before adopting and implementing legislative or administrative measures affecting the resources for which the communities hold rights. Such projects should be based on an effective and meaningful consultation with indigenous peoples, through their own representative institutions in order to obtain their free, prior and informed consent under the United Nations Declaration of Rights of Indigenous Peoples and with due regard for particular positions and understandings of individual States. Consultation and decision-making processes should be organized without intimidation and be conducted in a climate of trust. The principles of consultation and participation, as set out in paragraph 3B.6, should be applied in the case of other communities described in this section.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '9.10', 'State and non-state actors should strive, where necessary, together with representative institutions of affected communities and in cooperation with affected communities, to provide technical and legal assistance to affected communities to participate in the development of tenure policies, laws and projects in non-discriminatory and gender-sensitive ways.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '9.11', 'States should respect and promote customary approaches used by indigenous peoples and other communities with customary tenure systems to resolving tenure conflicts within communities consistent with their existing obligations under national and international law, and with due regard to voluntary commitments under applicable regional and international instruments. For land, fisheries and forests that are used by more than one community, means of resolving conflict between communities should be strengthened or developed.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('3', '9.12', 'States and non-state actors should endeavour to prevent corruption in relation to tenure systems of indigenous peoples and other communities with customary tenure systems, by consultation and participation, and by empowering communities.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '11', 'Markets');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '11.01', 'Where appropriate, States should recognize and facilitate fair and transparent sale and lease markets as a means of transfer of rights of use and ownership of land, fisheries and forests. Where markets in tenure rights operate, States should ensure that all actions are consistent with their existing obligations under national and international law, and with due regard to voluntary commitments under applicable regional and international instruments. Transactions of tenure rights to land, fisheries and forests should comply with national regulation of land use and not jeopardize core development goals.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '11.02', 'States should facilitate the operations of efficient and transparent markets to promote participation under equal conditions and opportunities for mutually beneficial transfers of tenure rights which lessen conflict and instability; promote the sustainable use of land, fisheries and forests and conservation of the environment; promote the fair and equitable use of genetic resources associated with land, fisheries and forests in accordance with applicable treaties; expand economic opportunities; and increase participation by the poor. States should take measures to prevent undesirable impacts on local communities, indigenous peoples and vulnerable groups that may arise from, inter alia, land speculation, land concentration and abuse of customary forms of tenure. States and other parties should recognize that values, such as social, cultural and environmental values, are not always well served by unregulated markets. States should protect the wider interests of societies through appropriate policies and laws on tenure.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '11.03', 'States should establish policies, laws and regulatory systems and agencies to ensure transparent and efficient market operations, to provide non-discriminatory access, and to prevent uncompetitive practices. States should simplify administrative procedures in order to avoid discouragement of market participation by the poor and the most vulnerable.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '11.04', 'States and other parties should ensure that information on market transactions and information on market values are transparent and widely publicized, subject to privacy restrictions. States should monitor this information and take action where markets have adverse impacts or discourage wide and equitable market participation.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '11.05', 'States should establish appropriate and reliable recording systems, such as land registries, that provide accessible information on tenure rights and duties in order to increase tenure security and to reduce the costs and risks of transactions.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '11.06', 'States should establish safeguards to protect the legitimate tenure rights of spouses, family members and others who are not shown as holders of tenure rights in recording systems, such as land registries.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '11.07', 'State and non-state actors should adhere to applicable ethical standards. They should publicize and monitor the implementation of these standards in the operation of markets in order to prevent corruption, particularly through public disclosure.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '11.08', 'Given the importance of small-scale producers for national food security and social stability, States should ensure that when facilitating market operations of tenure transactions, they protect the tenure rights of small-scale producers.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '12', 'Investments');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '12.01', 'State and non-state actors should acknowledge that responsible public and private investments are essential to improve food security. Responsible governance of tenure of land, fisheries and forests encourages tenure right holders to make responsible investments in these resources, increasing sustainable agricultural production and generating higher incomes. States should promote and support responsible investments in land, fisheries and forests that support broader social, economic and environmental objectives under a variety of farming systems. States should ensure that all actions are consistent with their existing obligations under national and international law, and with due regard to voluntary commitments under applicable regional and international instruments.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '12.02', 'Considering that smallholder producers and their organizations in developing countries provide a major share of agricultural investments that contribute significantly to food security, nutrition, poverty eradication and environmental resilience, States should support investments by smallholders as well as public and private smallholder-sensitive investments.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '12.03', 'All forms of transactions in tenure rights as a result of investments in land, fisheries and forests should be done transparently in line with relevant national sectoral policies and be consistent with the objectives of social and economic growth and sustainable human development focusing on smallholders.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '12.04', 'Responsible investments should do no harm, safeguard against dispossession of legitimate tenure right holders and environmental damage, and should respect human rights. Such investments should be made working in partnership with relevant levels of government and local holders of tenure rights to land, fisheries and forests, respecting their legitimate tenure rights. They should strive to further contribute to policy objectives, such as poverty eradication; food security and sustainable use of land, fisheries and forests; support local communities; contribute to rural development; promote and secure local food production systems; enhance social and economic sustainable development; create employment; diversify livelihoods; provide benefits to the country and its people, including the poor and most vulnerable; and comply with national laws and international core labour standards as well as, when applicable, obligations related to standards of the International Labour Organization.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '12.05', 'States should, with appropriate consultation and participation, provide transparent rules on the scale, scope and nature of allowable transactions in tenure rights and should define what constitutes large-scale transactions in tenure rights in their national context.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '12.06', 'States should provide safeguards to protect legitimate tenure rights, human rights, livelihoods, food security and the environment from risks that could arise from large-scale transactions in tenure rights. Such safeguards could include introducing ceilings on permissible land transactions and regulating how transfers exceeding a certain scale should be approved, such as by parliamentary approval. States should consider promoting a range of production and investment models that do not result in the large-scale transfer of tenure rights to investors, and should encourage partnerships with local tenure right holders.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '12.07', 'In the case of indigenous peoples and their communities, States should ensure that all actions are consistent with their existing obligations under national and international law, and with due regard to voluntary commitments under applicable regional and international instruments, including as appropriate from the International Labour Organization Convention (No 169) concerning Indigenous and Tribal Peoples in Independent Countries and the United Nations Declaration on the Rights of Indigenous Peoples. States and other parties should hold good faith consultation with indigenous peoples before initiating any investment project affecting the resources for which the communities hold rights. Such projects should be based on an effective and meaningful consultation with members of indigenous peoples as described in paragraph 9.9. The principles of consultation and participation of these Guidelines should be applied for investments that use the resources of other communities.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '12.08', 'States should determine with all affected parties, consistent with the principles of consultation and participation of these Guidelines, the conditions that promote responsible investments and then should develop and publicize policies and laws that encourage responsible investments, respect human rights, and promote food security and sustainable use of the environment. Laws should require agreements for investments to clearly define the rights and duties of all parties to the agreement. Agreements for investments should comply with national legal frameworks and investment codes.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '12.09', 'States should make provision for investments involving all forms of transactions of tenure rights, including acquisitions and partnership agreements, consistent with the principles of consultation and participation of these Guidelines, with those whose tenure rights, including subsidiary rights, might be affected. States and other relevant parties should inform individuals, families and communities of their tenure rights, and assist to develop their capacity in consultations and participation, including providing professional assistance as required.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '12.10', 'When investments involving large-scale transactions of tenure rights, including acquisitions and partnership agreements, are being considered, States should strive to make provisions for different parties to conduct prior independent assessments on the potential positive and negative impacts that those investments could have on tenure rights, food security and the progressive realization of the right to adequate food, livelihoods and the environment. States should ensure that existing legitimate tenure rights and claims, including those of customary and informal tenure, are systematically and impartially identified, as well as the rights and livelihoods of other people also affected by the investment, such as small-scale producers. This process should be conducted through consultation with all affected parties consistent with the principles of consultation and participation of these Guidelines. States should ensure that existing legitimate tenure rights are not compromised by such investments.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '12.11', 'Contracting parties should provide comprehensive information to ensure that all relevant persons are engaged and informed in the negotiations, and should seek that the agreements are documented and understood by all who are affected. The negotiation process should be non-discriminatory and gender sensitive.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '12.12', 'Investors have the responsibility to respect national law and legislation and recognize and respect tenure rights of others and the rule of law in line with the general principle for non-state actors as contained in these Guidelines. Investments should not contribute to food insecurity and environmental degradation.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '12.13', 'Professionals who provide services to States, investors and holders of tenure rights to land, fisheries and forests should undertake due diligence to the best of their ability when providing their services, irrespective of whether it is specifically requested.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '12.14', 'States and affected parties should contribute to the effective monitoring of the implementation and impacts of agreements involving large-scale transactions in tenure rights, including acquisitions and partnership agreements. States should take corrective action where necessary to enforce agreements and protect tenure and other rights and provide mechanisms whereby aggrieved parties can request such action.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '12.15', 'When States invest or promote investments abroad, they should ensure that their conduct is consistent with the protection of legitimate tenure rights, the promotion of food security and their existing obligations under national and international law, and with due regard to voluntary commitments under applicable regional and international instruments.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '13', 'Land consolidation and other readjustment approaches');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '13.01', 'Where appropriate, States may consider land consolidation, exchanges or other voluntary approaches for the readjustment of parcels or holdings to assist owners and users to improve the layout and use of their parcels or holdings, including for the promotion of food security and rural development in a sustainable manner. States should ensure that all actions are consistent with their obligations under national and international law, and with due regard to voluntary commitments under applicable regional and international instruments, and ensure that participants are at least as well off after the schemes compared with before. These approaches should be used to coordinate the preferences of multiple owners and users in a single legitimate readjustment.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '13.02', 'Where appropriate, States may consider the establishment of land banks as a part of land consolidation programmes to acquire and temporarily hold land parcels until they are allocated to beneficiaries.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '13.03', 'Where appropriate, States may consider encouraging and facilitating land consolidation and land banks in environmental protection and infrastructure projects to facilitate the acquisition of private land for such public projects, and to provide affected owners, farmers and small-scale food producers with land in compensation that will allow them to continue, and even increase, production.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '13.04', 'Where fragmentation of smallholder family farms and forests into many parcels increases production costs, States may consider land consolidation and land banks to improve the structure of those farms and forests. States should refrain from using land consolidation where fragmentation provides benefits, such as risk reduction or crop diversification. Land consolidation projects to restructure farms should be integrated with support programmes for farmers, such as the rehabilitation of irrigation systems and local roads. Measures should be developed to protect the investment of land consolidation by restricting the future subdivision of consolidated parcels.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '13.05', 'States should establish strategies for readjustment approaches that fit particular local requirements. Such strategies should be socially, economically and environmentally sustainable, and gender sensitive. Strategies should identify the principles and objectives of the readjustment approaches; the beneficiaries; and the development of capacity and knowledge in the public sector, the private sector, organizations of farmers and small-scale producers, of fishers, and of forest users, and academia. Laws should establish clear and cost-effective procedures for the reorganization of parcels or holdings and their uses.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '13.06', 'States should establish appropriate safeguards in projects using readjustment approaches. Any individuals, communities or peoples likely to be affected by a project should be contacted and provided with sufficient information in applicable languages. Technical and legal support should be provided. Participatory and gender-sensitive approaches should be used taking into account rights of indigenous peoples. Environmental safeguards should be established to prevent or minimize degradation and loss of biodiversity and reward changes that foster good land management, best practices and reclamation.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '14', 'Restitution');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '14.01', 'Where appropriate, considering their national context, States should consider providing restitution for the loss of legitimate tenure rights to land, fisheries and forests. States should ensure that all actions are consistent with their existing obligations under national and international law, and with due regard to voluntary commitments under applicable regional and international instruments.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '14.02', 'Where possible, the original parcels or holdings should be returned to those who suffered the loss, or their heirs, by resolution of the competent national authorities. Where the original parcel or holding cannot be returned, States should provide prompt and just compensation in the form of money and/or alternative parcels or holdings, ensuring equitable treatment of all affected people.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '14.03', 'Where appropriate, the concerns of indigenous peoples regarding restitution should be addressed in the national context and in accordance with national law and legislation.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '14.04', 'States should develop gender-sensitive policies and laws that provide for clear, transparent processes for restitution. Information on restitution procedures should be widely disseminated in applicable languages. Claimants should be provided with adequate assistance, including through legal and paralegal aid, throughout the process. States should ensure that restitution claims are promptly processed. Where necessary, successful claimants should be provided with support services so that they can enjoy their tenure rights and fulfil their duties. Progress of implementation should be widely publicized.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '15', 'Redistributive reforms');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '15.01', 'Redistributive reforms can facilitate broad and equitable access to land and inclusive rural development. In this regard, where appropriate under national contexts, States may consider allocation of public land, voluntary and market based mechanisms as well as expropriation of private land, fisheries or forests for a public purpose.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '15.02', 'States may consider land ceilings as a policy option in the context of implementing redistributive reforms.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '15.03', 'In the national context and in accordance with national law and legislation, redistributive reforms may be considered for social, economic and environmental reasons, among others, where a high degree of ownership concentration is combined with a significant level of rural poverty attributable to lack of access toland, fisheries and forests respecting, in line with the provisions of Section 15, the rights of all legitimate tenure holders. Redistributive reforms should guarantee equal access of men and women to land, fisheries and forests.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '15.04', 'Where States choose to implement redistributive reforms, they should ensure that the reforms are consistent with their obligations under national and international law, and voluntary commitments under applicable regional and international instruments. Reforms should follow the rule of law and be implemented according to national laws and procedures. States should facilitate the development of consultations, consistent with the principles of these Guidelines, on the redistribution, including balancing the needs of all parties, and on the approaches to be used. Partnerships between the State; communities; civil society; the private sector; organizations of farmers and small-scale food producers, of fishers, and of forest users; and other parties should be developed. The financial and other contributions expected of beneficiaries should be reasonable and not leave them with unmanageable debt loads. Those who give up their tenure rights to land, fisheries and forests should receive equivalent payments without undue delay.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '15.05', 'Where States choose to implement redistributive reforms, they should clearly define the objectives of reform programmes and indicate land exempted from such redistribution. The intended beneficiaries, such as families including those seeking homegardens, women, informal settlement residents, pastoralists, historically disadvantaged groups, marginalized groups, youth, indigenous peoples, gatherers and small-scale food producers, should be clearly defined.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '15.06', 'Where States choose to implement redistributive reforms, they should develop policies and laws, through participatory processes, to make them sustainable. States should ensure that policies and laws assist beneficiaries, whether communities, families or individuals, to earn an adequate standard of living from the land, fisheries and forests they acquire and ensure equal treatment of men and women in redistributive reforms. States should revise policies that might inhibit the achievement and sustainability of the intended effects of the redistributive reforms.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '15.07', 'When redistributive reforms are being considered, States may, if so desired, conduct assessments on the potential positive and negative impacts that those reforms could have on tenure rights, food security and the progressive realization of the right to adequate food, livelihoods and the environment. This assessment process should be conducted consistent with the principles of consultation and participation of these Guidelines. Assessments may be used as a basis to determine the measures needed to support beneficiaries and improve the redistributive programme.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '15.08', 'States should ensure that redistributive land reform programmes provide the full measure of support required by beneficiaries, such as access to credit, crop insurance, inputs, markets, technical assistance in rural extension, farm development and housing. The provision of support services should be coordinated with the movement on the land by the beneficiaries. The full costs of land reforms, including costs of support services, should be identified in advance and included in relevant budgets.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '15.09', 'States should implement redistributive reforms through transparent, participatory and accountable approaches and procedures. All affected parties should be accorded with due process and just compensation according to national law and the provisions of Section 16. All affected parties, including disadvantaged groups, should receive full and clear information on the reforms, including through gender-targeted messages. Beneficiaries should be selected through open processes, and they should receive secure tenure rights that are publicly recorded. Access to means of resolving disputes should be provided for under national law. States should endeavour to prevent corruption in redistributive reform programmes, particularly through greater transparency and participation.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '15.10', 'States, with the participation of the involved parties, should monitor and evaluate the outcomes of redistributive reform programmes, including associated support policies, as listed in paragraph 15.8, and their impacts on access to land and food security of both men and women and, where necessary, States should introduce corrective measures.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '16', 'Expropriation and compensation');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '16.01', 'Subject to their national law and legislation and in accordance with national context, States should expropriate only where rights to land, fisheries or forests are required for a public purpose. States should clearly define the concept of public purpose in law, in order to allow for judicial review. States should ensure that all actions are consistent with their national law as well as their existing obligations under national and international law, and with due regard to voluntary commitments under applicable regional and international instruments. They should respect all legitimate tenure right holders, especially vulnerable and marginalized groups, by acquiring the minimum resources necessary and promptly providing just compensation in accordance with national law.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '16.02', 'States should ensure that the planning and process for expropriation are transparent and participatory. Anyone likely to be affected should be identified, and properly informed and consulted at all stages. Consultations, consistent with the principles of these Guidelines, should provide information regarding possible alternative approaches to achieve the public purpose, and should have regard to strategies to minimize disruption of livelihoods. States should be sensitive where proposed expropriations involve areas of particular cultural, religious or environmental significance, or where the land, fisheries and forests in question are particularly important to the livelihoods of the poor or vulnerable.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '16.03', 'States should ensure a fair valuation and prompt compensation in accordance with national law. Among other forms, the compensation may be, for example, in cash, rights to alternative areas, or a combination.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '16.04', 'To the extent that resources permit, States should ensure that implementing agencies have the human, physical, financial and other forms of capacity.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '16.05', 'Where the land, fisheries and forests are not needed due to changes of plans, States should give the original right holders the first opportunity to re-acquire these resources. In such a case the re-acquisition should take into consideration the amount of compensation received in return for the expropriation.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '16.06', 'All parties should endeavour to prevent corruption, particularly through use of objectively assessed values, transparent and decentralized processes and services, and a right to appeal.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '16.07', 'Where evictions are considered to be justified for a public purpose as a result of expropriation of land, fisheries and forests, States should conduct such evictions and treat all affected parties in a manner consistent with their relevant obligations to respect, protect, and fulfil human rights.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '16.08', 'States should, prior to eviction or shift in land use which could result in depriving individuals and communities from access to their productive resources, explore feasible alternatives in consultation with the affected parties, consistent with the principles of these Guidelines, with a view to avoiding, or at least minimizing, the need to resort to evictions.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('4', '16.09', 'Evictions and relocations should not result in individuals being rendered homeless or vulnerable to the violation of human rights. Where those affected are unable to provide for themselves, States should, to the extent that resources permit, take appropriate measures to provide adequate alternative housing, resettlement or access to productive land, fisheries and forests, as the case may be.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '17', 'Records of tenure rights');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '17.01', 'States should provide systems (such as registration, cadastre and licensing systems) to record individual and collective tenure rights in order to improve security of tenure rights, including those held by the State and public sector, private sector, and indigenous peoples and other communities with customary tenure systems; and for the functioning of local societies and of markets. Such systems should record, maintain and publicize tenure rights and duties, including who holds those rights and duties, and the parcels or holdings of land, fisheries or forests to which the rights and duties relate.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '17.02', 'States should provide recording systems appropriate for their particular circumstances, including the available human and financial resources. Socio- culturally appropriate ways of recording rights of indigenous peoples and other communities with customary tenure systems should be developed and used. In order to enhance transparency and compatibility with other sources of information for spatial planning and other purposes, each State should strive to develop an integrated framework that includes existing recording systems and other spatial information systems. In each jurisdiction, records of tenure rights of the State and public sector, private sector, and indigenous peoples and other communities with customary tenure systems should be kept within the integrated recording system. Whenever it is not possible to record tenure rights of indigenous peoples and other communities with customary tenure systems, or occupations in informal settlements, particular care should be taken to prevent the registration of competing rights in those areas.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '17.03', 'States should strive to ensure that everyone is able to record their tenure rights and obtain information without discrimination on any basis. Where appropriate, implementing agencies, such as land registries, should establish service centres or mobile offices, having regard to accessibility by women, the poor and vulnerable groups. States should consider using locally-based professionals, such as lawyers, notaries, surveyors and social scientists to deliver information on tenure rights to the public.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '17.04', 'Implementing agencies should adopt simplified procedures and locally suitable technology to reduce the costs and time required for delivering services. The spatial accuracy for parcels and other spatial units should be sufficient for their identification to meet local needs, with increased spatial accuracy being provided if required over time. To facilitate the use of records of tenure rights, implementing agencies should link information on the rights, the holders of those rights, and the spatial units related to those rights. Records should be indexed by spatial units as well as by holders to allow competing or overlapping rights to be identified. As part of broader public information sharing, records of tenure rights should be available to State agencies and local governments to improve their services. Information should be shared in accordance with national standards, and include disaggregated data on tenure rights.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '17.05', 'States should ensure that information on tenure rights is easily available to all, subject to privacy restrictions. Such restrictions should not unnecessarily prevent public scrutiny to identify corrupt and illegal transactions. States and non-state actors should further endeavour to prevent corruption in the recording of tenure rights by widely publicizing processes, requirements, fees and any exemptions, and deadlines for responses to service requests.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '18', 'Valuation');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '18.01', 'States should ensure that appropriate systems are used for the fair and timely valuation of tenure rights for specific purposes, such as operation of markets, security for loans, transactions in tenure rights as a result of investments, expropriation and taxation. Such systems should promote broader social, economic, environmental and sustainable development objectives.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '18.02', 'Policies and laws related to valuation should strive to ensure that valuation systems take into account non-market values, such as social, cultural, religious, spiritual and environmental values where applicable.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '18.03', 'States should develop policies and laws that encourage and require transparency in valuing tenure rights. Sale prices and other relevant information should be recorded, analysed and made accessible to provide a basis for accurate and reliable assessments of values.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '18.04', 'States and other parties should develop and publicize national standards for valuation for governmental, commercial and other purposes. National standards should be consistent with relevant international standards. Training of staff should include methodologies and international standards.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '18.05', 'Implementing agencies should make their valuation information and analyses available to the public in accordance with national standards. States should endeavour to prevent corruption in valuation through transparency of information and methodologies, in public resource administration and compensation, and in company accounts and lending.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '19', 'Taxation');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '19.01', 'States have the power to raise revenue through taxation related to tenure rights so as to contribute to the achievement of their broader social, economic and environmental objectives. These objectives may include encouraging investment or preventing undesirable impacts that may arise, such as from speculation and concentration of ownership or other tenure rights. Taxes should encourage socially, economically and environmentally desirable behaviour, such as registering transactions or declaring the full sale value.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '19.02', 'States should strive to develop policies and laws and organizational frameworks regulating all aspects pertaining to taxation of tenure rights. Tax policies and laws should be used where appropriate to provide for effective financing for decentralized levels of government and local provision of services and infrastructure.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '19.03', 'States should administer taxes efficiently and transparently. Staff of implementing agencies should receive training that includes methodologies. Taxes should be based on appropriate values. Assessments of valuations and taxable amounts should be made public. States should provide taxpayers with a right to appeal against valuations. States should endeavour to prevent corruption in taxation administration, through increased transparency in the use of objectively assessed values.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '20', 'Regulated spatial planning');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '20.01', 'Regulated spatial planning affects tenure rights by legally constraining their use. States should conduct regulated spatial planning, and monitor and enforce compliance with those plans, including balanced and sustainable territorial development, in a way that promotes the objectives of these Guidelines. In this regard, spatial planning should reconcile and harmonize different objectives of the use of land, fisheries and forests.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '20.02', 'States should develop through consultation and participation, and publicize, gender-sensitive policies and laws on regulated spatial planning. Where appropriate, formal planning systems should consider methods of planning and territorial development used by indigenous peoples and other communities with customary tenure systems, and decision-making processes within those communities.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '20.03', 'States should ensure that regulated spatial planning is conducted in a manner that recognizes the interconnected relationships between land, fisheries and forests and their uses, including the gendered aspects of their uses. States should strive towards reconciling and prioritizing public, community and private interests and accommodate the requirements for various uses, such as rural, agricultural, nomadic, urban and environmental. Spatial planning should consider all tenure rights, including overlapping and periodic rights. Appropriate risk assessments for spatial planning should be required. National, regional and local spatial plans should be coordinated.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '20.04', 'States should ensure that there is wide public participation in the development of planning proposals and the review of draft spatial plans to ensure that priorities and interests of communities, including indigenous peoples and food-producing communities, are reflected. Where necessary, communities should be provided with support during the planning process. Implementing agencies should disclose how public input from participation was reflected in the final spatial plans. States should endeavour to prevent corruption by establishing safeguards against improper use of spatial planning powers, particularly regarding changes to regulated use. Implementing agencies should report on results of compliance monitoring.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '20.05', 'Spatial planning should take duly into account the need to promote diversified sustainable management of land, fisheries and forests, including agro-ecological approaches and sustainable intensification, and to meet the challenges of climate change and food security.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '21', 'Resolution of disputes over tenure rights');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '21.01', 'States should provide access through impartial and competent judicial and administrative bodies to timely, affordable and effective means of resolving disputes over tenure rights, including alternative means of resolving such disputes, and should provide effective remedies and a right to appeal. Such remedies should be promptly enforced. States should make available, to all, mechanisms to avoid or resolve potential disputes at the preliminary stage, either within the implementing agency or externally. Dispute resolution services should be accessible to all, women and men, in terms of location, language and procedures.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '21.02', 'States may consider introducing specialized tribunals or bodies that deal solely with disputes over tenure rights, and creating expert positions within the judicial authorities to deal with technical matters. States may also consider special tribunals to deal with disputes over regulated spatial planning, surveys and valuation.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '21.03', 'States should strengthen and develop alternative forms of dispute resolution, especially at the local level. Where customary or other established forms of dispute settlement exist they should provide for fair, reliable, accessible and non- discriminatory ways of promptly resolving disputes over tenure rights.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '21.04', 'States may consider using implementing agencies to resolve disputes within their technical expertise, such as those responsible for surveying to resolve boundary disputes between individual parcels within national contexts. Decisions should be delivered in writing and based on objective reasoning, and there should be a right to appeal to the judicial authorities.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '21.05', 'States should endeavour to prevent corruption in dispute resolution processes.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '21.06', 'In providing dispute resolution mechanisms, States should strive to provide legal assistance to vulnerable and marginalized persons to ensure safe access for all to justice without discrimination. Judicial authorities and other bodies should ensure that their staff have the necessary skills and competencies to provide such services.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '22', 'Transboundary matters');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '22.01', 'States should cooperate, in the framework of appropriate mechanisms and with the participation of affected parties, in addressing tenure issues related to land, fisheries and forests which traverse national boundaries. States should ensure that all actions are consistent with their existing obligations under national and international law, and with due regard to voluntary commitments under applicable regional and international instruments. In States where transboundary matters related to tenure rights arise, parties should work together to protect such tenure rights, livelihoods and food security of the migrating populations while on their respective territories.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '22.02', 'States and other parties should contribute to the understanding of transboundary tenure issues affecting communities, such as with rangelands or seasonal migration routes of pastoralists, and fishing grounds of small-scale fishers, which lie across international boundaries.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('5', '22.03', 'Where appropriate, States should harmonize legal standards of tenure governance, in accordance with existing obligations under national and international law, and with due regard to voluntary commitments under applicable regional and international instruments. Where appropriate, this should be coordinated with relevant regional bodies and with affected parties. States, with the participation of the affected parties as appropriate, should develop or strengthen existing international measures to administer tenure rights that cross international boundaries. Where appropriate, they should coordinate with relevant regional bodies. This should be done especially to protect the livelihoods and, in line with paragraph 4.8, the rights of all those affected.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('6', '23', 'Climate change');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('6', '23.01', 'States should ensure that the legitimate tenure rights to land, fisheries and forests of all individuals, communities or peoples likely to be affected, with an emphasis on farmers, small-scale food producers, and vulnerable and marginalized people, are respected and protected by laws, policies, strategies and actions with the aim to prevent and respond to the effects of climate change consistent with their respective obligations, as applicable, in terms of relevant climate change framework agreements.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('6', '23.02', 'Where appropriate, States should strive to prepare and implement strategies and actions in consultation and with the participation of all people, women and men, who may be displaced due to climate change. Any provision of alternative land, fisheries, forests and livelihoods for displaced persons should not jeopardize the livelihoods of others. States may also consider offering special assistance to small island and other developing states.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('6', '23.03', 'States should facilitate the participation, consistent with the principles of consultation and participation of these Guidelines, of all individuals, communities or peoples, with an emphasis on farmers, small-scale food producers, and vulnerable and marginalized people, who hold legitimate tenure rights, in the negotiations and implementation of mitigation and adaptation programmes.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('6', '24', 'Natural disasters');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('6', '24.01', 'All parties should ensure that tenure aspects of land, fisheries and forests are addressed when preventing and preparing for natural disasters and in their responses to them. Regulatory frameworks for tenure, including spatial planning, should be designed to avoid or minimize the potential impacts of natural disasters.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('6', '24.02', 'States should ensure that all actions are consistent with their existing obligations under national and international law, and with due regard to voluntary commitments under applicable regional and international instruments. All parties should act, taking into consideration relevant international principles, including as appropriate the United Nations Principles on Housing and Property Restitution for Refugees and Displaced Persons ("Pinheiro Principles"), and the Humanitarian Charter and Minimum Standards in Disaster Response.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('6', '24.03', 'States should address tenure in disaster prevention and preparedness programmes. Information on legitimate tenure rights should be collected for areas that could be affected through a process consistent with the principles of consultation and participation of these Guidelines. Systems for recording legitimate tenure rights should be resilient to natural disasters, including off-site storage of records, to allow right holders to prove their rights and relocate their parcels and other spatial units. States should strive to identify areas for the temporary resettlement of people who could be displaced by natural disasters, and rules should be established for providing tenure security in such areas.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('6', '24.04', 'States and other parties should address tenure in the emergency response phase.\nAny provision of alternative land, fisheries, forests and livelihoods for displaced persons should not jeopardize the rights and livelihoods of others. Legitimate tenure rights of displaced persons should also be recognized, respected and protected. Information on tenure rights and unauthorized use should be disseminated to all affected persons.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('6', '24.05', 'States and other parties should address tenure during the reconstruction phase.\nPersons who are temporarily displaced should be assisted in voluntarily, safely and with dignity returning to their place of origin. Means to resolve disputes over tenure rights should be provided. Where boundaries of parcels and other spatial units are to be re-established, this should be done consistent with the principles of consultation and participation of these Guidelines. Where people are unable to return to their place of origin, they should be permanently resettled elsewhere. Such resettlement should be negotiated with host communities to ensure that the people who are displaced are provided with secure access to alternative land, fisheries, forests and livelihoods in ways that do not jeopardize the rights and livelihoods of others.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('6', '25', 'Conflicts in respect to tenure of land, fisheries and forests');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('6', '25.01', 'All parties should take steps to prevent and eliminate issues of tenure of land, fisheries and forests as a cause of conflict and should ensure that aspects of tenure are addressed before, during and after conflict, including in situations of occupation where parties should act in accordance with applicable international humanitarian law.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('6', '25.02', 'States should ensure that all actions are consistent with their existing obligations under national and international law, and with due regard to voluntary commitments under applicable regional and international instruments, including as appropriate those of the Convention relating to the Status of Refugees and its Protocol, and the United Nations Principles on Housing and Property Restitution for Refugees and Displaced Persons ("Pinheiro Principles"). During and after conflicts States should respect applicable international humanitarian law related to legitimate tenure rights.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('6', '25.03', 'In order that tenure problems do not lead to conflicts, all parties should take steps to resolve such problems through peaceful means. States should revise relevant policies and laws to eliminate discrimination and other factors that can be a cause of conflicts. Where appropriate, States may consider using customary and other local mechanisms that provide fair, reliable, gender-sensitive, accessible and non-discriminatory ways of promptly resolving disputes over tenure rights to land, fisheries and forests.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('6', '25.04', 'When conflicts arise, States and other parties should strive to respect and protect existing legitimate tenure rights and guarantee that these are not extinguished by other parties. Consistent with existing obligations under relevant national and international law, States should not recognize tenure rights to land, fisheries and forests acquired, within their territories, through forceful and/or violent means. Refugees and displaced persons and others affected by conflict should be settled in safe conditions in ways that protect the tenure rights of host communities. Violations of tenure rights should be documented and, where appropriate, subsequently remedied. Official records of tenure rights should be protected against destruction and theft in order to provide evidence for subsequent processes to address such violations and facilitate possible corrective action, and in areas where such records do not exist, the existing tenure rights should be documented as best as possible in a gender-sensitive manner, including through oral histories and testimonies. Legitimate tenure rights of refugees and displaced persons should be recognized, respected and protected. Information on tenure rights and unauthorized use should be disseminated to all affected persons.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('6', '25.05', 'In situations of conflicts, whenever possible or when conflicts cease, States and other parties should ensure that tenure problems are addressed in ways that contribute to gender equality and support durable solutions for those affected. Where restitution is possible and, as appropriate, with the assistance of UNHCR and other relevant agencies, refugees and displaced persons should be assisted in voluntarily, safely and with dignity returning to their place of origin, in line with applicable international standards. Procedures for restitution, rehabilitation and reparation should be non-discriminatory, gender sensitive and widely publicized, and claims for restitution should be processed promptly. Procedures for restitution of tenure rights of indigenous peoples and other communities with customary tenure systems should provide for the use of traditional sources of information.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('6', '25.06', 'Where restitution is not possible, the provision of secure access to alternative land, fisheries and forests and livelihoods for refugees and displaced persons should be negotiated with host communities and other relevant parties to ensure that the resettlement does not jeopardize the livelihoods of others. Special procedures should, where possible, provide the vulnerable, including widows and orphans, with secure access to land, fisheries and forests.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('6', '25.07', 'Where appropriate, policies and laws should be revised to address pre-existing discrimination as well as discrimination introduced during the conflicts. Where appropriate or required, relevant agencies should be re-established to deliver services necessary for responsible tenure governance.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('7', '26', 'Promotion, implementation, monitoring and evaluation');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('7', '26.01', 'In accordance with the voluntary nature of these Guidelines, States have the responsibility for their implementation, monitoring and evaluation.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('7', '26.02', 'States are encouraged to set up multi-stakeholder platforms and frameworks at local, national and regional levels or use such existing platforms and frameworks to collaborate on the implementation of these Guidelines; to monitor and evaluate the implementation in their jurisdictions; and to evaluate the impact on improved governance of tenure of land, fisheries and forests, and on improving food security and the progressive realization of the right to adequate food in the context of national food security, and sustainable development. This process should be inclusive, participatory, gender sensitive, implementable, cost effective and sustainable. In carrying out these tasks, States may seek technical support from regional and international bodies.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('7', '26.03', 'Development partners, specialized agencies of the United Nations, and regional organizations are encouraged to support voluntary efforts by States to implement these Guidelines, including through South-South cooperation. Such support could include technical cooperation, financial assistance, institutional capacity development, knowledge sharing and exchange of experiences, assistance in developing national tenure policies and transfer of technology.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('7', '26.04', 'The Committee on World Food Security should be the global forum where all relevant actors learn from each other''s experiences, and assess progress toward the implementation of these Guidelines and their relevance, effectiveness and impact. Therefore, the Secretariat of the Committee on World Food Security, in collaboration with the Advisory Group, should report to the Committee on World Food Security on the progress of the implementation of these Guidelines, as well as evaluate their impact and their contribution to the improvement of tenure governance. Such reports should be universal and include, inter alia, regional experiences, best practices and lessons learned.');
INSERT INTO `vg_section` (`vg_part_id`, `vg_section_id`, `title`) VALUES('7', '26.05', 'All parties, including civil society organizations and the private sector, are encouraged to use collaborative efforts to promote and implement these Guidelines in accordance with national priorities and contexts. All parties are encouraged to disseminate information on responsible tenure governance in order to improve practices.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agency`
--
ALTER TABLE `agency`
  ADD PRIMARY KEY (`agency_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `funder`
--
ALTER TABLE `funder`
  ADD PRIMARY KEY (`funder_id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`program_id`);

--
-- Indexes for table `program_country`
--
ALTER TABLE `program_country`
  ADD PRIMARY KEY (`program_id`,`country_id`);

--
-- Indexes for table `program_doc`
--
ALTER TABLE `program_doc`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `program_funder`
--
ALTER TABLE `program_funder`
  ADD PRIMARY KEY (`program_id`,`funder_id`);

--
-- Indexes for table `program_region`
--
ALTER TABLE `program_region`
  ADD PRIMARY KEY (`program_id`,`region_id`);

--
-- Indexes for table `program_vg_section`
--
ALTER TABLE `program_vg_section`
  ADD PRIMARY KEY (`program_id`,`vg_part_id`,`vg_section_id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`region_id`);

--
-- Indexes for table `result_message`
--
ALTER TABLE `result_message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `scope`
--
ALTER TABLE `scope`
  ADD PRIMARY KEY (`scope_id`);

--
-- Indexes for table `vg_part`
--
ALTER TABLE `vg_part`
  ADD PRIMARY KEY (`vg_part_id`);

--
-- Indexes for table `vg_section`
--
ALTER TABLE `vg_section`
  ADD PRIMARY KEY (`vg_part_id`,`vg_section_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agency`
--
ALTER TABLE `agency`
  MODIFY `agency_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=582;
--
-- AUTO_INCREMENT for table `funder`
--
ALTER TABLE `funder`
  MODIFY `funder_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique ID for each funder.', AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `program_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Uniqiue, database generated ID of programs.', AUTO_INCREMENT=606;
--
-- AUTO_INCREMENT for table `program_doc`
--
ALTER TABLE `program_doc`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `region_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `result_message`
--
ALTER TABLE `result_message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=592;
--
-- AUTO_INCREMENT for table `scope`
--
ALTER TABLE `scope`
  MODIFY `scope_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
