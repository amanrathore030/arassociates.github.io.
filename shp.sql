-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2021 at 07:01 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(1, 'adff', '9796', 'ad@df');

-- --------------------------------------------------------

--
-- Table structure for table `contactform`
--

CREATE TABLE `contactform` (
  `id` int(20) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactform`
--

INSERT INTO `contactform` (`id`, `emailid`, `phone`, `query`) VALUES
(1, 'amanrathore@030gmail.com', '9625429664', 'fg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `fld_id` int(11) NOT NULL,
  `fld_category_id` int(11) NOT NULL,
  `fld_sub_category_id` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `fld_product` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `fld_dimension` text COLLATE latin1_general_ci NOT NULL,
  `fld_description` text COLLATE latin1_general_ci NOT NULL,
  `fld_price` text COLLATE latin1_general_ci NOT NULL,
  `fld_color` text COLLATE latin1_general_ci NOT NULL,
  `fld_weight` int(5) NOT NULL,
  `fld_image` varchar(1000) COLLATE latin1_general_ci NOT NULL,
  `fld_image1` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `fld_cat` varchar(1000) COLLATE latin1_general_ci NOT NULL,
  `fld_status` tinyint(4) NOT NULL DEFAULT '1',
  `fld_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `exports` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_product`
--

CREATE TABLE `table_product` (
  `id` int(11) NOT NULL,
  `fld_category_id` int(11) NOT NULL,
  `fld_sub_category_id` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `fld_product` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `fld_dimension` text COLLATE latin1_general_ci NOT NULL,
  `fld_description` text COLLATE latin1_general_ci NOT NULL,
  `fld_price` text COLLATE latin1_general_ci NOT NULL,
  `fld_color` text COLLATE latin1_general_ci NOT NULL,
  `fld_weight` int(5) NOT NULL,
  `fld_image` varchar(1000) COLLATE latin1_general_ci NOT NULL,
  `fld_image1` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `fld_cat` varchar(1000) COLLATE latin1_general_ci NOT NULL,
  `fld_status` tinyint(4) NOT NULL DEFAULT '1',
  `fld_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `exports` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `table_product`
--

INSERT INTO `table_product` (`id`, `fld_category_id`, `fld_sub_category_id`, `fld_product`, `fld_dimension`, `fld_description`, `fld_price`, `fld_color`, `fld_weight`, `fld_image`, `fld_image1`, `fld_cat`, `fld_status`, `fld_date`, `exports`) VALUES
(487, 187, '', 'India Habitat Center, Lodhi Road,New Delhi', '', 'Special Chandigarh Brick Cladding in outer surface of building.', 'Stein Doshi and Bhalla', '', 0, '', '', '01', 1, '2015-10-18 07:04:31', ''),
(488, 187, '', 'Indira Gandhi National Center for Art, 05, Rajendra Prasad Road, New Delhi', '', 'Civil Work', 'Tirath Ram Ahuja Ltd.', '', 0, '', '', '02', 1, '2015-10-18 07:04:20', ''),
(489, 187, '', 'Great Eastern Shipping Company, 70, Nehru Place, New Delhi', '', 'Civil Work', 'Tirath Ram Ahuja Ltd.', '', 0, '', '', '03', 1, '2015-10-18 07:04:08', ''),
(490, 187, '', 'National Institute of fashion Technology  (N.I.F.T), Hauz Khas, New Delhi', '', 'Girt Wash of The outer  face of the Building', 'Tirath Ram Ahuja Ltd.', '', 0, '', '', '04', 1, '2015-10-18 07:03:58', ''),
(492, 187, '', 'HCL Technology, Sector- 24, Noida', '', 'Civil Work', 'Shapoorji Pallonji & Co.', '', 0, '', '', '06', 1, '2015-10-18 07:03:33', ''),
(493, 187, '', 'Lotus Temple, Nehru Place, New Delhi', '', 'Civil Work', 'Mr. H.B. Montegi ,Canada', '', 0, '', '', '07', 1, '2015-10-18 07:03:24', ''),
(494, 187, '', 'Bahai Publishing Trust of India, Okhla, New Delhi', '', 'Civil Work', 'Dua&Associate,  New Delhi', '', 0, '', '', '08', 1, '2015-10-15 08:54:01', ''),
(495, 187, '', 'National Spiritual Assembly Bahai House of worship 6 caning Rd. New Delhi.', '', 'Civil Work', 'S.H. Associate', '', 0, '', '', '09', 1, '2015-10-18 07:02:31', ''),
(496, 187, '', 'Tata Consultancy Services, Phase - II Noida', '', 'Civil Work', 'Shapoorji Palloniji & Co Ltd.', '', 0, '', '', '10', 1, '2015-10-18 07:01:55', ''),
(497, 187, '', 'Tata House, 2A, 23 Prithviraj Road, Tata House', '', 'Interior Works', 'Mr. Anil Mehindiratta', '', 0, '', '', '11', 1, '2015-10-18 07:01:45', ''),
(498, 187, '', 'Tata Consultancy Services, Phase - II Noida', '', 'Civil Work', 'Shapoorji Palloniji & Co Ltd.', '', 0, '', '', '10', 1, '2015-10-18 07:01:36', ''),
(499, 187, '', 'Tata House, 2A, 23 Prithviraj Road, Tata House', '', 'Interior Works', 'Mr. Anil Mehindiratta', '', 0, '', '', '11', 1, '2015-10-18 07:01:29', ''),
(500, 187, '', 'Tata Consultancy Services, 447, Udyog Vihar, Gurgaon.', '', 'Waterproofing and tile fixing on Terrace of TCS', 'Mr. Yogendar Varma', '', 0, '', '', '12', 1, '2015-10-18 07:01:19', ''),
(501, 187, '', 'ICICI Bank Ltd. NBCC Building, Lodhi Road, New Delhi 110003', '', 'Construction of Under Water Tank & Water Proofing', 'ICICI Bank', '', 0, '', '', '13', 1, '2015-10-15 12:49:52', ''),
(502, 187, '', 'Asia Pragati Capfin Pvt. Ltd,  Tolstoy Marg', '', 'Interior Works', 'Dreamstoreonline.com Pvt. Ltd.', '', 0, '', '', '14', 1, '2015-10-18 07:00:38', ''),
(503, 188, '', 'Mr. R.N. Bansal, 102 , Darya Ganj,  New Delhi', '', 'Renovation Work', 'Habitat System New Delhi', '', 0, '', '', '01', 1, '2015-10-18 06:59:48', ''),
(504, 188, '', 'Dr. Shahin Norreyezdan, C- 26 Pamposh Enclave New Delhi', '', 'Interior Work', 'Mr. Sheryaar, Mumbai', '', 0, '', '', '02', 1, '2015-10-18 06:59:41', ''),
(505, 188, '', 'Mr. Dawood Ahmed,  Plot no. 170 Sector - 40 Gurgaon', '', 'Construction and Interior', 'Naveen Babbar & Associates', '', 0, '', '', '03', 1, '2015-10-18 06:59:27', ''),
(506, 188, '', 'Mr.Suraj Thappa, B - 24 Sahyog Vihar, Sector - III, Dwarka, New Delhi-110059', '', 'Construction and Interior', 'S.H. Associates', '', 0, '', '', '04', 1, '2015-10-18 06:59:17', ''),
(507, 188, '', 'Mr. H. P. Meena, RZ - T - 62 / 238 SagarPur New Delhi', '', 'Construction and Interior', 'Design Services, Bharat Bhatia, New Delhi', '', 0, '', '', '05', 1, '2015-10-18 06:59:10', ''),
(508, 188, '', 'Mr. Harati P, Meena RZ - T - 63 / 238 SagarPur', '', 'Construction and Interior', 'S.H. Associate', '', 0, '', '', '06', 1, '2015-10-18 06:58:53', ''),
(509, 188, '', 'Mr.Kailash Sharma', '', 'Interior and Civil', 'S.H. Associate', '', 0, '', '', '07', 1, '2015-10-15 12:53:22', ''),
(510, 188, '', 'Mr.R.S Mani, 16 D PKT B Siddharth Extension', '', 'Interior Work & Waterproofing.', 'S.H. Associate', '', 0, '', '', '08', 1, '2015-10-18 06:57:54', ''),
(511, 188, '', 'Mr. J.R. Bhalla (Architect), 116 JorBagh, New Delhi', '', 'Interior Work', 'S.D.B Consultant Pvt. Ltd.', '', 0, '', '', '09', 1, '2015-10-18 06:57:40', ''),
(512, 188, '', 'Mr.Sher Singh New Roshanpura, Najafgarh,New Delhi.', '', 'Construction of Residence.', 'S.H ASSOCIATES', '', 0, '', '', '10', 1, '2015-10-15 12:58:49', ''),
(513, 188, '', 'Agence Francaise De Development, 1/A, Janpath, New Delhi', '', 'Civil and Interior Work', 'S.H. Associate', '', 0, '', '', '11', 1, '2015-10-18 06:57:32', ''),
(514, 188, '', 'Mr. Rohit Khanna, A-106,New Friends Colony', '', 'Construction of residence floors (Work in Progress )', 'S.H Associates', '', 0, '', '', '12', 1, '2015-10-18 06:57:15', ''),
(515, 189, '', 'Maurya Sheraton Hotel & Tower, S.P Marg, Chanakyapuri New Delhi-110021', '', 'Civil Work', 'Rajinder Kr. & Associate Shapoorji and Pallanji Ltd.', '', 0, '', '', '01', 1, '2015-10-18 06:57:05', ''),
(516, 189, '', 'China Garden Restaurant, M -73 Greater kailash, part – II, New Delhi', '', 'Civil & Interior Work', 'Mr. Bobby Mukherjee, Mumbai.', '', 0, '', '', '02', 1, '2015-10-18 06:56:56', ''),
(517, 190, '', 'Escorts Heart Institute & Research Center, Okhla New Delhi', '', 'Renovation Work of OT 6', 'Kothari & Associate,  New Delhi', '', 0, '', '', '01', 1, '2015-10-18 06:56:48', ''),
(518, 190, '', 'Rajan Memorial Hospital, Sohna ,Haryana', '', 'Structure & Finishing  Work', 'Naveen Babbar& Associate New Delhi.', '', 0, '', '', '02', 1, '2015-10-18 06:56:38', ''),
(519, 191, '', 'Opposite Nawada Metro Station, Uttam Nagar', '', 'Construction of Multi-storey Flats', 'S.H ASSOCIATES', '', 0, '', '', '01', 1, '2015-10-15 13:01:34', ''),
(520, 192, '', 'UNICEF 73', '73,Lodhi Estate,New Delhi', 'Waterproofing & Miscellaneous Work', 'Mr. Tarun Arora', '', 0, '', '', '01', 1, '2016-05-05 10:09:01', ''),
(521, 192, '', 'UNICEF', '73,Lodhi Estate,New Delhi', 'Waterproofing  work  of roof and inner courtyard', 'Mr. Tarun Arora', '', 0, '', '', '02', 1, '2016-05-05 10:08:16', ''),
(522, 192, '', 'UN Women', '19 B,Rajdoot Marg, New Delhi', 'Civil, Carpentry and MS Work', 'Ms. Kalpana Gulati', '', 0, '', '', '03', 1, '2016-05-05 10:07:04', ''),
(523, 192, '', 'UN Women', '19 B,Rajdoot Marg, New Delhi', 'Electrical and Waterproofing Work', 'Mrs. Anne. S', '', 0, '', '', '04', 1, '2016-05-05 10:06:25', ''),
(524, 192, '', 'UN Women', '19 B,Rajdoot Marg, New Delhi', 'Security Upgrades', 'Ms.Alka Gulati', '', 0, '', '', '05', 1, '2016-05-05 10:05:46', ''),
(525, 192, '', 'UNDP', '55,Lodhi Estate,New Delhi', 'Providing Tactile tiles', 'SDB Consultant Pvt. Ltd', '', 0, '', '', '06', 1, '2016-05-05 10:04:55', ''),
(526, 192, '', 'UNDP', '55,Lodhi Estate,New Delhi', 'Civil Work', 'SDB Consultant Pvt. Ltd', '', 0, '', '', '07', 1, '2016-05-05 10:04:17', ''),
(527, 192, '', 'Food & Agricultural Organization of United Nation (FAO)', 'Kapashera,New Delhi', 'Construction & Interior of F.A.O Field Office at Kapashera', 'Mr. John Paul', '', 0, '', '', '09', 1, '2016-05-05 10:03:09', ''),
(528, 192, '', 'UN Women', 'C-83, Defence Colony , New Delhi', 'Relocation, Interior & LAN work', 'Ms.Meenu Kapoor', '', 0, '', '', '09', 1, '2016-05-05 10:01:12', ''),
(529, 192, '', 'International Planned Parenthood Federation (IPPF)', 'C-139, Defence Colony , New Delhi', 'Relocation, LAN, Electrical & Interior Works', 'Mr. Anindit Roy Chowdhury', '', 0, '', '', '10', 1, '2016-05-05 09:59:51', ''),
(530, 193, '', 'Embassy of France in India', '2/50-E, Shantipath, Chanakyapuri New Delhi-110 021', 'Civil and Interior', 'Mr. Jacques Delfosse, Annie Mallairt', '', 0, '', '', '01', 1, '2016-05-05 10:20:36', ''),
(531, 193, '', 'Embassy of France in India', '2/50-E, Shantipath, Chanakyapuri New Delhi-110 021', 'Security Barriers and Civil and Fabrication of Barriers', 'Mr. Jacques Delfosse, Miss. Annie Mallairt', '', 0, '', '', '02', 1, '2016-05-05 10:19:41', ''),
(532, 193, '', 'Embassy of Japan in India', 'Plot No.4 & 5, 50-G, Shantipath, Chanakyapuri, New Delhi-110021', 'Construction of Tree bark hut in Garden.', 'Japan Embassy', '', 0, '', '', '03', 1, '2016-05-05 10:18:03', ''),
(533, 193, '', 'Embassy of Japan in India', 'Plot No.4 & 5, 50-G, Shantipath, Chanakyapuri, New Delhi-110021', 'Renovation of Toilets at Second Floor', 'Mr. Anil Madan', '', 0, '', '', '04', 1, '2016-05-05 10:18:42', ''),
(534, 193, '', 'Embassy of Japan in India', 'Plot No.4 & 5, 50-G, Shantipath, Chanakyapuri, New Delhi-110021', 'Construction and Renovation of 2nd floor Economic section office.', 'Mr. Naka mora', '', 0, '', '', '05', 1, '2016-05-05 10:17:14', ''),
(536, 193, '', 'Embassy of Czech Republic', 'Niti Marg, Chanakyapuri,New Delhi', 'Construction of Entry way at Residence gate', 'Mr. Jan Bednarik', '', 0, '', '', '06', 1, '2016-05-05 10:16:45', ''),
(538, 193, '', 'Embassy of Czech Republic', 'Niti Marg, Chanakyapuri,New Delhi', 'Repairing of building cracks by FOSROC.', 'Mr. Jan Bednarik', '', 0, '', '', '08', 1, '2016-05-05 10:14:50', ''),
(539, 193, '', 'Italian Embassy', '50 E, Chandragupta Marg, Chanakyapuri, New Delhi', 'Renovation of Ambassadors’ residence', 'Ms. Ciprani', '', 0, '', '', '09', 1, '2016-05-05 10:13:07', ''),
(540, 194, '', 'Providing. Modification &  construction of DQ wall at gate # 4', '', '', 'Mr  Martin E. Tromburg', '', 0, '', '', '01', 1, '2015-10-16 09:49:49', ''),
(541, 194, '', 'Construction of Soccer walls in Middle School ground & Flooring for Skating track', '', '', 'Mr. Sanjay Gautam', '', 0, '', '', '02', 1, '2015-10-18 06:43:17', ''),
(542, 194, '', 'Designing ,Excavation & construction of Staff Parking at Gate # 1,2,4 & 5', '', '', 'Mr. Martin E. Tromburg, Mr. Charles R. More and Mr Sanjay Gautam', '', 0, '', '', '03', 1, '2015-10-18 06:43:12', ''),
(543, 194, '', 'Renovation of PEC Boys shower room', '', '', 'Mr Sanjay Gautam', '', 0, '', '', '04', 1, '2015-10-16 09:50:40', ''),
(544, 194, '', 'Construction of DQ walls at Gate # 5', '', '', 'Mr. Sanjay Gautam', '', 0, '', '', '05', 1, '2015-10-18 06:39:36', ''),
(545, 194, '', 'Construction of Ramp at Gate # 2', '', '', 'Mr. Sanjay Gautam', '', 0, '', '', '06', 1, '2015-10-18 06:38:32', ''),
(546, 194, '', 'Supply of MS Lockers Amirah’s at middle School', '', '', 'Mr. Sanjay Gautam', '', 0, '', '', '07', 1, '2015-10-18 06:38:25', ''),
(547, 194, '', 'Renovation work in B building Elementary School', '', '', 'Mr. Martin E. Tromburg', '', 0, '', '', '08', 1, '2015-10-18 06:38:14', ''),
(548, 194, '', 'Providing, fabrication & fixing of MS Fence behind Porta Cabins', '', '', 'Mr. Sanjay Gautam', '', 0, '', '', '09', 1, '2015-10-18 06:38:07', ''),
(549, 194, '', 'Construction of Service Trench at HS building', '', '', 'S.P.C.L / AES', '', 0, '', '', '10', 1, '2015-10-16 09:52:01', ''),
(550, 194, '', 'PEC roof covering with green netting', '', '', 'Mr. Sanjay Gautam', '', 0, '', '', '11', 1, '2015-10-18 06:37:47', ''),
(551, 194, '', 'Civil works outside Gate# 5', '', '', 'Mr. Sanjay Gautam', '', 0, '', '', '12', 1, '2015-10-18 06:36:48', ''),
(552, 194, '', 'Civil  and fabrication  work and installation of equipment’s at  gate # 1', '', '', 'Mr. Sanjay Gautam', '', 0, '', '', '13', 1, '2015-10-18 06:37:20', ''),
(553, 194, '', 'Civil, sanitary and electrical work in PEC office.', '', '', 'Mr. Chanakya Bora', '', 0, '', '', '14', 1, '2015-10-18 06:36:27', ''),
(554, 194, '', 'M.S Playfield toilet extension and Renovation Civil, Plumbing and electrical work.', '', '', 'Mr. Chanakya Bora', '', 0, '', '', '15', 1, '2015-10-18 06:32:50', ''),
(555, 194, '', 'Remodeling Theater balcony seating and Renovation of Theater flooring.', '', '', 'Mr. Chanakya Bora', '', 0, '', '', '16', 1, '2015-10-18 06:32:18', ''),
(556, 194, '', 'Making of wooden deck in HS, Courtyard including construction Landscaping and Fabrication work', '', '', 'Mr. Chanakya Bora', '', 0, '', '', '17', 1, '2015-10-18 06:30:30', ''),
(557, 194, '', 'Renovation of MS Classroom # 206', '', '', 'Mr. Chanakya Bora', '', 0, '', '', '18', 1, '2015-10-18 06:29:55', ''),
(558, 194, '', 'Wooden Deck, near Gate # 9 and gas flaming work on Kota stone flooring of HS.', '', '', 'Mr. Chanakya Bora', '', 0, '', '', '19', 1, '2015-10-18 06:29:36', ''),
(559, 194, '', 'Fence around construction zone', '', '', 'MrChanakya Bora', '', 0, '', '', '20', 1, '2015-10-16 09:54:54', ''),
(560, 194, '', '60th Anniversary garden works includes civil, steel, plumbing and landscape works.', '', '', 'Ms.Laura Ruesjas and Mr. Chanakya Bora', '', 0, '', '', '21', 1, '2015-10-18 06:23:41', ''),
(561, 194, '', 'Tech Office Renovation & LAN work', '', '', 'Mr. HarbirBhadana', '', 0, '', '', '22', 1, '2015-10-18 06:28:37', ''),
(562, 194, '', 'New Learning Center Renovation work', '', '', 'Mr. Chanakya Bora', '', 0, '', '', '23', 1, '2015-10-18 06:28:30', ''),
(563, 194, '', 'New Tech Office Renovation work', '', '', 'Mr. Chanakya Bora', '', 0, '', '', '24', 1, '2015-10-18 06:28:24', ''),
(564, 194, '', 'Construction of Tiger’s Kiosk', '', '', 'Mr. Chanakya Bora', '', 0, '', '', '25', 1, '2015-10-18 06:27:35', ''),
(565, 194, '', 'ACP cladding work at Racing pool', '', '', 'Mr. Chanakya Bora', '', 0, '', '', '26', 1, '2015-10-18 06:27:02', ''),
(566, 194, '', 'Miscellaneous work', '', '', 'Work in progress', '', 0, '', '', '27', 1, '2015-10-16 09:56:51', ''),
(567, 193, '', 'Embassy of Italy', '50 E, Chandragupta Marg, Chanakyapuri, New Delhi', 'Miscellaneous civil work', 'Ms. Cipriani', '', 0, '', '', '01', 1, '2020-09-21 10:51:04', ''),
(568, 192, '', 'UNDP, 55, Lodhi Estate', '', 'Construction of lift pit & toilet for disable', 'SDB Consultant Pvt. Ltd', '', 0, '', '', '02', 1, '2017-11-01 17:26:25', ''),
(569, 192, '', 'UNDP', '55,Lodhi Estate,New Delhi', 'Construction & repairing of planters', 'SDB Consultant Pvt. Ltd', '', 0, '', '', '03', 1, '2017-11-01 17:26:50', ''),
(571, 193, '', 'Embassy of Italy', '50 E, Chandragupta Marg, Chanakyapuri, New Delhi', 'Renovation work at Military office', 'Mr. Roberto Tomsi', '', 0, '', '', '02', 1, '2020-09-21 10:50:45', ''),
(572, 193, '', 'Vatican Embassy', '50 C,Niti Marg,Chanakyapuri,New Delhi', 'Making of Chapel door & Installation of mosaic glass', 'Studio 4D', '', 0, '', '', '', 1, '2016-05-05 10:11:10', ''),
(573, 192, '', 'UNDP', '55,Lodhi Estate,New Delhi', 'Construction of lift pit', 'SDB Consultants Pvt. Ltd', '', 0, '', '', '', 1, '2016-05-05 09:54:29', ''),
(574, 194, '', 'Construction of foundation & Installation of 30000 Ltr fire water tank including fire line works', '', '', 'Mr. Chanakya Bora', '', 0, '', '', '', 1, '2016-05-05 09:57:15', ''),
(576, 193, '', 'Embassy of Spain', '12, Rajesh Pilot Marg, New Delhi - 110001 India', 'Renovation work of Ambassador''s Residence', 'S.H. Associates', '', 0, '', '', '01', 1, '2018-05-08 05:16:49', ''),
(577, 193, '', 'Royal Bhutanese Embassy', '3, Chandragupta Marg, Chanakyapuri New Delhi -110021 India', 'Renovation work of Bunglow No.3 inside Embassy Premises', 'S.H. Associates', '', 0, '', '', '02', 1, '2018-05-08 05:15:59', ''),
(578, 193, '', 'Royal Bhutanese Embassy', '3, Chandragupta Marg, Chanakyapuri New Delhi -110021 India', 'Renovation work of Bunglow No.2 inside Embassy Premises', 'S.H. Associates', '', 0, '', '', '03', 1, '2018-05-08 05:20:43', ''),
(579, 193, '', 'Embassy Of Spain', '12, Prithviraj Rd, Near Calories Hotel, Aurangzeb Road, New Delhi, Delhi', 'Maintenance Work', 'S.H. Associates', '', 0, '', '', '', 1, '2020-07-27 05:03:44', ''),
(580, 193, '', 'Embassy Of Spain', '12, Prithviraj Rd, Near Calories Hotel, Aurangzeb Road, New Delhi, Delhi', 'Panel Work', 'S.H. Associates', '', 0, '', '', '', 1, '2019-04-06 08:36:33', ''),
(581, 192, '', 'UN Women', '83, Block C, Defence Colony, New Delhi, Delhi', 'Shifting', 'S.H. Associates', '', 0, '', '', '', 1, '2019-04-06 08:37:14', ''),
(582, 193, '', 'Embassy of Italy', '50 N, Nyaya Marg, Chanakyapuri, New Delhi, Delhi', 'Pest Control', 'S.H. Associates', '', 0, '', '', '', 1, '2020-07-27 05:04:50', ''),
(583, 193, '', 'Embassy of Italy', '50 N, Nyaya Marg, Chanakyapuri, New Delhi, Delhi', '', 'S.H. Associates', '', 0, '', '', '', 1, '2019-04-06 08:37:47', ''),
(584, 193, '', 'Embassy of Poland', '50-M Shantipath, Chanakyapuri, New Delhi, Delhi', 'Providing, Supplying & Installation of 2500 ltr RO Plant', 'S.H. Associates', '', 0, '', '', '', 1, '2020-04-29 10:46:22', ''),
(585, 193, '', 'The Royal Bhutanese Embassy', 'EP-4, Chandragupta Marg, Chanakyapuri New Delhi, Delhi 110021, India', 'Consulting Architecture', 'S.H. Associates', '', 0, '', '', '', 1, '2020-07-27 05:03:18', ''),
(586, 193, '', 'The Royal Bhutanese Embassy', 'EP-4, Chandragupta Marg, Chanakyapuri New Delhi, Delhi 110021, India', 'Temporary Shed', 'S.H. Associates', '', 0, '', '', '', 1, '2020-04-29 10:44:06', ''),
(587, 193, '', 'Embassy of Italy', '50 N, Nyaya Marg, Chanakyapuri, New Delhi, Delhi', 'Construction of new Visa gate', 'The Design Consortium', '', 0, '', '', '', 1, '2020-09-21 10:50:22', ''),
(588, 193, '', 'The Royal Bhutanese Embassy', '3, Chandragupta Marg, Chanakyapuri New Delhi -110021', 'Extension of Ambassador''s residence - Construction, doors & window and modular kitchen work', 'SH Associates', '', 0, '', '', '', 1, '2020-07-27 05:00:20', ''),
(589, 193, '', 'Embassy of Italy', '50 N, Nyaya Marg, Chanakyapuri, New Delhi, Delhi', 'Installation of Bullet proof glasses at Gate 2', 'SH Associates', '', 0, '', '', '', 1, '2020-09-21 10:50:06', ''),
(590, 193, '', 'Embassy of Italy', '50 N, Nyaya Marg, Chanakyapuri, New Delhi, Delhi', 'Renovation of Counsellor office area', 'Chanakya Bora', '', 0, '', '', '', 1, '2020-09-21 10:49:55', ''),
(591, 193, '', 'Embassy of Italy', '50 N, Nyaya Marg, Chanakyapuri, New Delhi, Delhi', 'Wasterproofing and Civil work at backside of Counsellor Office', 'Chanakya Bora', '', 0, '', '', '', 1, '2020-09-21 10:49:40', ''),
(592, 195, '', 'Embassy of Italy', '50 N, Nyaya Marg, Chanakyapuri, New Delhi, Delhi', 'Pest Control Service for the year 2020', 'SH Associates', '', 0, '', '', '', 1, '2020-09-21 10:49:29', ''),
(593, 193, '', 'AFD, New Delhi', '112, Malcha Marg, Chanakyapuri, New Delhi', 'Renovation', 'S.H. Associates', '', 0, '', '', '', 1, '2020-11-24 06:31:21', ''),
(594, 192, '', 'UNICEF', 'Near 73, Lodhi Gardens, Lodhi Estate, New Delhi', 'Supply and install Acrylic/Plexiglass sheet', 'S.H. Associates', '', 0, '', '', '', 1, '2020-11-24 06:34:58', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about`
--

CREATE TABLE `tbl_about` (
  `id` int(20) NOT NULL,
  `about` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_about`
--

INSERT INTO `tbl_about` (`id`, `about`, `description`, `status`) VALUES
(3, 'About Us', '<h3>Building a New Enterprising World</h3>\r\n\r\n<ul>\r\n	<li>Having started as a Professional Contracting Company in Delhi in 1994, we have cemented a gratifying&nbsp;<br />\r\n	repute in construction industry over these years.</li>\r\n	<li>Gradually we have built on our core strengths, namely, Quality Construction, State-of-the-art technology&nbsp;<br />\r\n	and skilled work force to promote our very own buildings and deliver high standard excellence in this field.</li>\r\n	<li>It is this inspiration that has motivated everyone of us at SH Associates, while we stand committed in&nbsp;<br />\r\n	transcending our clients&#39; expectation.</li>\r\n	<li>Since our incorporation, we have acquired expertise in construction contracts, and have also recently&nbsp;<br />\r\n	forayed into Urban Infrastructure projects. We commenced our construction projects by undertaking two&nbsp;<br />\r\n	contracts of INR 0.3 million each in 1994 and presently have a prequalification capacity to quote for&nbsp;<br />\r\n	contracts over INR 300 million.<br />\r\n	<br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<h3>Pre-Construction :</h3>\r\n\r\n<ul>\r\n	<li>The Stepping Stone To Quality Construction<br />\r\n	Our ears attentively listen to our clients requirement and expectation, Our mind works out on the feasibility of&nbsp;<br />\r\n	the project, the architectural style, the layout design plan, the financial costing, the building mechanics including&nbsp;<br />\r\n	number of floors, kind of fixtures and fittings and of course, the tentative time of project completion.</li>\r\n	<li>Design &amp; Build : Symbiosis Between Dream And Reality</li>\r\n	<li>Good understanding / rapport between the design team and the engineers on-site</li>\r\n	<li>&nbsp;Better understanding of the drawings and the technicalities&nbsp;</li>\r\n	<li>Proper coordination between the site and management</li>\r\n	<li>Immediate response possible from both, in case of any changes or emergency</li>\r\n	<li>Effective time management as clients need to deal with only one team.<br />\r\n	<br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<h3>Execution</h3>\r\n\r\n<ul>\r\n	<li>Raising The Bar Of Quality Construction</li>\r\n	<li>A full-fledged Construction Company, we&#39;re capable of handling today&#39;s most complex projects. Our in<br />\r\n	-house expertise in architecture, structural and construction engineering help us identify key challenges,&nbsp;<br />\r\n	find solutions early in the building process and provide accurate solutions.</li>\r\n	<li>We have seasoned building material constructors to supply top of the range high quality materials at&nbsp;<br />\r\n	cost effective price. Our full-time Project Managers ensure people and materials come together&nbsp;<br />\r\n	seamlessly to drive project to completion, on schedule. From start to end we offer a comprehensive, &quot;no&nbsp;<br />\r\n	excuse approach that builds trust and delivers results.<br />\r\n	<br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<h3>Safety Measures &amp; Environment</h3>\r\n\r\n<ul>\r\n	<li>Protecting People, Saving Lives &amp; protecting Environment</li>\r\n	<li>A clean site is a safe site. It reduces the risk of injury. Our leadership in safety stands tall. We&#39;ve&nbsp;<br />\r\n	pioneered the use of worker safety plan. The rigorous safety controls like wearing head gears make&nbsp;<br />\r\n	every individual to play an active role in risk prevention. The sourcing of alcohol free onsite workers&nbsp;<br />\r\n	improve relationships and job site efficiency. The results have been so effective, we have passed six&nbsp;<br />\r\n	long accident free years.</li>\r\n	<li>We at SH Associates have concern for the environment and pollution control and take every step&nbsp;<br />\r\n	possible to reduce pollution and save energy.</li>\r\n	<li>As an organization we feel responsible towards Our Clients, Our Team and above all the Human Race.&nbsp;<br />\r\n	This impels us to develop only GREEN BUILDINGS that help live in a healthy and a happy environment&nbsp;<br />\r\n	at a reasonable cost. These sustainable developments use far less natural resources and energy in the&nbsp;<br />\r\n	process they are built and used.<br />\r\n	<br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<h3>Project Management</h3>\r\n\r\n<ul>\r\n	<li>Delivering Value At Every Phase</li>\r\n	<li>We go that extra mile to implement cost-saving strategies throughout the project life cycle, working -<br />\r\n	side-by-side with all key building materials contractors to reduce cost without sacrificing the quality of&nbsp;<br />\r\n	the final product.</li>\r\n	<li>We also have the ability to self-perform core functions such as interior decoration, electrical and&nbsp;<br />\r\n	carpentry tasks This is a vital advantage, helping us to cut project cost-our site construction department&nbsp;<br />\r\n	reports independently providing accurate, unbiased and up-to-the minute information. The best of our&nbsp;<br />\r\n	construction minds plan, track and control all critical project variables, including design, procurement,&nbsp;<br />\r\n	labour, materials and time to always set precise, realistic schedules-and meet them.<br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<h3>Management &amp; Group of Companies</h3>\r\n\r\n<ul>\r\n	<li>Promoted by a team of enterprising professionals we offer a comprehensive building solution from design&nbsp;<br />\r\n	concept to government approvals, financial planning to project management and construction to execution&nbsp;<br />\r\n	on time. Driven by ambitious goals, highly ethical and transparent work culture, our dominant presence in the&nbsp;<br />\r\n	construction industry spans across major project types including hospitality, education residential commercial&nbsp;<br />\r\n	offices and retail buildings.</li>\r\n	<li>Our Group of Companies:</li>\r\n	<li>Fast Connect Services Pvt.Ltd.: Imports &amp; manufacturing of Interior and construction products</li>\r\n	<li>Immediate Infrastructure &amp; Interior Pvt.Ltd. . : Project Management Services</li>\r\n	<li>Gomti Transtech Services Pvt.Ltd. : Master Franchise of Sporty Beans for Delhi NCR<br />\r\n	&nbsp;(A Company Owned by Cricketer Yuvaj Singh)<br />\r\n	<br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<h3>Core Team</h3>\r\n\r\n<ul>\r\n	<li>Mr.Shamsher: (Founder Chairman, Promoter and Presently Chairman &amp; Managing Director) aged 51 years,&nbsp;<br />\r\n	has been involved in the construction activities for more than two and half decades. Under Mr.Shamsher<br />\r\n	, the company&rsquo;s turnover rose manifold in the face of stiff competition from various players.&nbsp;<br />\r\n	He was actively involved in construction management for various prestigious projects in Delhi NCR such&nbsp;<br />\r\n	as Construction of India Habitat Center, Lodhi Road, Escort Heart Institute, National Institute of Fashion&nbsp;<br />\r\n	Technology, Lotus Temple Auditorium Block, Indra Gandhi National Center for Arts, Oberoi Hotel &amp; Maurya<br />\r\n	Sheraton Hotel and many more. With more than 25 years of Experience in multifarious activities relating to infrastructure. He has been instrumental in award and execution of many mega projects by the company<br />\r\n	. He is the guiding figure who directs, manages and oversees all activities of our company.</li>\r\n</ul>\r\n\r\n<h3>Our Team</h3>\r\n\r\n<ul>\r\n	<li>Mr Hanish: An expert in the field of infrastructure development, HanishKhan has an enviable experience of&nbsp;<br />\r\n	over 10 years in Construction and Interior Works. Turning a creative design to master piece is&nbsp;<br />\r\n	Hanish&rsquo;sforte. Under his guidance the company has maintained a track record of timely delivery and<br />\r\n	superior quality for all the projects.</li>\r\n	<li>Mr.S. Gautam: A well-recognized and much admired name associated with urbane &amp; elegant developments&nbsp;<br />\r\n	in Saudi Arabia, Mr Gautam is associated with the real estate sector for more than 38 years.An<br />\r\n	M.Tech from IIT Delhi, he has been one of the key drivers of setting up a 400 Million USD green<br />\r\n	&nbsp;field dairy milk processing project and handled projects of over SAR 3.2 Billion. Packed&nbsp;<br />\r\n	with diverse knowledge, he has left lasting impressions in varied spheres concurrently.</li>\r\n	<li>Ms.Vidhu Chadha: (Senior Architect) having 20 years of experience in Interior designing and turnkey&nbsp;<br />\r\n	enterprise solutions</li>\r\n	<li>Mr R Dubey: Visiting Environmental Engineer having 22 Years of professional experience out of which 12&nbsp;<br />\r\n	years of experience in implementing Green Building Projects and Energy Audit.<br />\r\n	<br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<table cellspacing="0" class="table table-bordered" style="color:rgb(44, 44, 44); font-family:droid_sansregular; font-size:12px; margin:0px; padding:0px">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h3>S. No.</h3>\r\n\r\n			<h3>&nbsp;</h3>\r\n			</td>\r\n			<td>\r\n			<h3>Designation</h3>\r\n\r\n			<h3>&nbsp;</h3>\r\n			</td>\r\n			<td>\r\n			<h3>No.</h3>\r\n\r\n			<h3>&nbsp;</h3>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>Work Director</td>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>\r\n			<p>Work Managers</p>\r\n			</td>\r\n			<td>6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>\r\n			<p>Sr. Engineers</p>\r\n			</td>\r\n			<td>3</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>Engineers</td>\r\n			<td>5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>\r\n			<p>Foremen (Work Mistry)</p>\r\n			</td>\r\n			<td>10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>\r\n			<p>Labour Supervisors</p>\r\n			</td>\r\n			<td>10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>\r\n			<p>Purchase Officers</p>\r\n			</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>Store Keepers</td>\r\n			<td>3</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>\r\n			<p>Time Keepers</p>\r\n			</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>Accountants &amp; Clerks</td>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>Mechanics</td>\r\n			<td>6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>Electricians</td>\r\n			<td>6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>\r\n			<p>Mixer &amp; Machinery Operators</p>\r\n			</td>\r\n			<td>12</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td>Plumbers (For maintenance only)</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td>\r\n			<p>Skilled, Semi Skilled &amp; Unskilled Labourer&#39;s Force</p>\r\n			</td>\r\n			<td>(as required)</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Our Major Clients</h3>\r\n\r\n<ul>\r\n	<li>American Embassy School&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; International Organizations</li>\r\n	<li>United Nation Development Program (UNDP)</li>\r\n	<li>United Nation International Children&#39;s Education Fund (UNICEF)</li>\r\n	<li>United Nation Women</li>\r\n	<li>Food &amp; Agriculture Organization of UN (FAO)</li>\r\n	<li>International Planned Parenthood Federation (IPPF)</li>\r\n	<li>Agence FrancaiseDe Development, Janpath</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Embassy of Italy</li>\r\n	<li>Poland Embassy</li>\r\n	<li>Embassy of Spain</li>\r\n	<li>United States of America Embassy</li>\r\n	<li>Embassy of France in India</li>\r\n	<li>Embassy of Japan in India</li>\r\n	<li>Embassy of Czech Republic</li>\r\n	<li>Embassy of Holy See</li>\r\n	<li>Royal Bhutanese Embassy<br />\r\n	<br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<h3>A Few of Our Esteemed ProjectS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>\r\n\r\n<ul>\r\n	<li>Indian Habitat Centre&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; National Organizations</li>\r\n	<li>Lotus Temple</li>\r\n	<li>Bahai Publishing Trust of India</li>\r\n	<li>National Spiritual Assembly Bahai House</li>\r\n	<li>Indira Gandhi National Centre of Art</li>\r\n	<li>National Institute of Fashion Technology (NIFT)<br />\r\n	&nbsp;</li>\r\n	<li>Maurya Sheraton Hotel &amp; Tower&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hotels &amp; Hospitality</li>\r\n	<li>Vana Group of Hotels &amp; Resorts, Dehradun</li>\r\n	<li>Fortune Group of Hotels, Gurgaon</li>\r\n	<li>China Garden Restaurant, GK</li>\r\n	<li>Veda Restaurant</li>\r\n	<li>Earth Oven, Fortune Hotel<br />\r\n	<br />\r\n	Residences</li>\r\n	<li>Mr.J.R. Bhalla(Architect), JorBagh</li>\r\n	<li>Residence of the Ambassador of Spain</li>\r\n	<li>Tata House, Prithviraj Road<br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<h3>A Few of Our Esteemed Clients&nbsp;</h3>\r\n\r\n<h3>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>\r\n\r\n<ul>\r\n	<li>Escorts Heart Institute &amp; Research Center&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hospitals&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Rajan Memorial Hospital, Sohna</li>\r\n	<li>Alchemist Hospital, Gurgaon</li>\r\n	<li>Max Group</li>\r\n	<li>ITC Group of Hotels, Patna<br />\r\n	&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Corporate Clients</li>\r\n	<li>Hero Moto Corp</li>\r\n	<li>Jubilant Food Works, Noida</li>\r\n	<li>Tata Consultancy Services, Noida &amp; Gurgaon</li>\r\n	<li>Icici Bank Ltd, LodhiRoad</li>\r\n	<li>Timex Watch Ltd.</li>\r\n	<li>HCL Technology</li>\r\n	<li>Great Eastern Shipping Company, Nehru Place</li>\r\n	<li>Asia PragatiCapfin Pvt.Ltd., Tolstoy Marg<br />\r\n	<br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<h3>Our Brands &amp; Partners</h3>\r\n\r\n<ul>\r\n	<li>&ldquo;KADAT DESIGNS&rdquo;is a young &amp; customized Interior &amp; Exterior products brand born under&nbsp;<br />\r\n	one of the parent group of company -&ldquo;Fast Connect Services Pvt. Ltd.&rdquo;, a Delhi based<br />\r\n	import oriented firm.</li>\r\n	<li>As our name suggest, we Connect Fast to our customer needs &amp; offer customized solution by providing wider&nbsp;<br />\r\n	choice &amp; superior quality through imports, thus consolidating the position in the industry under our brand.</li>\r\n	<li>Our brand&ldquo;KADAT DESIGNS&rdquo; offers exhaustive range of products to create &amp; customize your interior&nbsp;<br />\r\n	space &amp; designs decor.</li>\r\n	<li>FOR WALLS:Import &amp; Pan India distribution of3D Wall Coverings (Germany)&amp;Manufacturer of<br />\r\n	Moveable Acoustical Walls (Hong Kong)</li>\r\n	<li>FOR CEILING:Importer of Designer Decorative Fans (Korea) &amp; MGO Ceiling Tile (China)</li>\r\n	<li>FOR WINDOWS:Manufacturer of Manual &amp;Motorized Blinds (Elero) &amp; Import of Drapery Motors (China)</li>\r\n	<li>FOR FLOORS:Authorized Distributors for &ndash;InterfaceFlorModular Carpet Tiles (America), Harlequin&nbsp;<br />\r\n	Dance Floors (London) &amp; TopFlorPVC Sports Flooring (China)<br />\r\n	<br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<h3>Our Esteemed Associates</h3>\r\n\r\n<ul>\r\n	<li>Joseph Stein, (10 April 1912 &ndash;6 October 2001) was an American architect and a major figure in the&nbsp;<br />\r\n	establishment of a regional modern architecture in the San Francisco Bay area in the 1940s and 1950s&nbsp;<br />\r\n	during the early days of the environmental design movement.&nbsp;<br />\r\n	In 1952 he moved to India. He is noted for designing several important buildings in India, most notably in&nbsp;<br />\r\n	Lodhi Estate in Central Delhi, nicknamed &quot;Steinabad&quot; after him, and where today the &#39;Joseph Stein Lane&#39;,&nbsp;<br />\r\n	is the only road in Delhi named after an architect. The Government of India awarded him the fourth highes&nbsp;<br />\r\n	civilian award of Padma Shriin 1992.</li>\r\n	<li>Fariborz Sahba, a Canadian citizen, was born in 1948 in Iran. He received a master&#39;s degree in architecture<br />\r\n	in 1972 from the Faculty of Fine Arts at Tehran University. In Iran, Mr.Sahba was involved in the design&nbsp;<br />\r\n	of a wide range of prestigious buildings. In 1976, the international governing body of&nbsp;<br />\r\n	the Bah&aacute;&#39;&iacute;community selected Mr.Sahbato design the Bah&aacute;&#39;&iacute;House of Worship for the Indian subcontinent in New Delhi, India. This project, on which he worked for10 years as the architect and project manager, was described by Canadianarchitect Arthur Erickson as &quot;one of the most remarkable achievements of our time, proving that the drive<br />\r\n	and vision of spirit can achieve miracles.&quot; With over 3.5 million visitors a year, this building, commonly&nbsp;<br />\r\n	known as the &quot;Lotus of Bahapur,&quot; is one of the most visited sites in the world.</li>\r\n	<li>The Shapoorji Pallonji Group (SP Group) is an Indian business conglomerate in India with interests in&nbsp;<br />\r\n	construction, real estate, textiles, engineering goods, home appliances, shipping, publications, power, and&nbsp;<br />\r\n	biotechnology.</li>\r\n</ul>', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `fld_select` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `fld_category` text COLLATE latin1_general_ci NOT NULL,
  `fld_description` text COLLATE latin1_general_ci NOT NULL,
  `image` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `fld_image1` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `fld_url` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `fld_status` tinyint(4) NOT NULL DEFAULT '1',
  `fld_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fld_order` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `fld_weight` varchar(11) COLLATE latin1_general_ci NOT NULL,
  `exports` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `fld_select`, `fld_category`, `fld_description`, `image`, `fld_image1`, `fld_url`, `fld_status`, `fld_date`, `fld_order`, `fld_weight`, `exports`) VALUES
(231, '', 'Embassies Projects', '', '../uploaded_files/category/270720_1595825328.jpg', '', '', 1, '2021-06-10 10:19:18', '3', '', ''),
(232, '', 'United Nations Projects', '', '../uploaded_files/category/270720_1595824326.png', '', '', 1, '2021-06-10 10:20:05', '4', '', ''),
(230, '', 'American Embassy School', '', '../uploaded_files/category/120810_1281624643.png', '', '', 1, '2021-06-10 10:18:39', '2', '', ''),
(229, '', 'Ongoing Projects', '', '../uploaded_files/category/270720_1595825390.png', '', '', 1, '2021-06-10 10:16:33', '1', '', ''),
(236, '', 'Residential Projects', '', '../uploaded_files/category/270720_1595824497.png', '', '', 1, '2021-06-10 10:23:01', '8', '', ''),
(237, '', 'Offices Projects', '', '050516_1462444175.jpg', '', '', 1, '2021-06-15 09:23:11', '9', '', ''),
(234, '', 'Hospital Projects', '', '../uploaded_files/category/270720_1595824815.jpg', '', '', 1, '2021-06-10 10:21:56', '6', '', ''),
(235, '', 'Hotel Projects', '', '../uploaded_files/category/270720_1595824697.jfif', '', '', 1, '2021-06-10 10:22:32', '7', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client`
--

CREATE TABLE `tbl_client` (
  `fld_id` int(11) NOT NULL,
  `fld_company` varchar(200) NOT NULL,
  `fld_phone` varchar(200) NOT NULL,
  `fld_email` varchar(200) NOT NULL,
  `fld_image` varchar(100) NOT NULL,
  `fld_status` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_client`
--

INSERT INTO `tbl_client` (`fld_id`, `fld_company`, `fld_phone`, `fld_email`, `fld_image`, `fld_status`) VALUES
(4, 'test', '', '', '120215_1423746339.jpg', '1'),
(3, 'Gaursons', '', '', '120215_1423746313.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `fld_id` int(11) NOT NULL,
  `fld_contact` varchar(200) NOT NULL,
  `fld_description` text NOT NULL,
  `fld_status` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`fld_id`, `fld_contact`, `fld_description`, `fld_status`) VALUES
(1, 'Contact Us', '<p>H.O. : E-84, Sahyog Vihar, Sector-3, Dwarka, New Delhi 110059</p>\r\n\r\n<p>Office Address: RZ- 10/13, Phase 1A, Om Vihar, Near Metro Pillar No. 707, Uttam Nagar (West), New Delhi- 110059</p>\r\n\r\n<p>Tel. No. 9811557791, 9999226607</p>\r\n\r\n<p>Email: info@shassociate.in, shassociates@outlook.com, sh_associates2u@yahoo.com</p>\r\n\r\n<p>Follow on:&nbsp;<a href="http://onlinedemo.co.in/sha/contact.php" style="margin: 0px; padding: 0px; text-decoration: none; color: rgb(0, 102, 153);">Facebook</a>,&nbsp;<a href="http://onlinedemo.co.in/sha/contact.php" style="margin: 0px; padding: 0px; text-decoration: none; color: rgb(0, 102, 153);">Twitter</a></p>\r\n\r\n<p>Website:&nbsp;http://shassociates.in/</p>\r\n', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id` int(11) NOT NULL,
  `fld_category_id` varchar(11) NOT NULL,
  `fld_name` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `fld_date` varchar(200) NOT NULL,
  `fld_status` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id`, `fld_category_id`, `fld_name`, `image`, `fld_date`, `fld_status`) VALUES
(124, '', 'aman rathore', '120810_1281624643.png', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_home`
--

CREATE TABLE `tbl_home` (
  `fld_id` int(11) NOT NULL,
  `fld_title` varchar(250) NOT NULL,
  `fld_description` text NOT NULL,
  `fld_status` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_home`
--

INSERT INTO `tbl_home` (`fld_id`, `fld_title`, `fld_description`, `fld_status`) VALUES
(2, 'Welcome to S.H. Associates', '<p><span style="color:rgb(96, 96, 96); font-family:arial,helvetica,sans-serif; font-size:11px">We Introduce Ourselves As Civil Contractors Specializes In Undertaking Turnkey Projects Which Includes Construction, Interior, Waterproofing, Fabrication, Air Conditioning, Electrical, Plumbing And IT Networking (total Solution) Works. We Provide Comprehensive Construction Solution And Holistic Approach To Our Projects. Our Team Consists Of Well-trained Technical And General Staff To Carry Out Any Magnitude Of Work. We Have Latest Equipment&rsquo;s To Employ In The Works. We Have Executed Number Of Specialized Turnkey Projects Under Renowned Architects And For Renowned International And National Organizations. We Are Continuously Blessed With The Patronage Of Our Esteemed Clients And They Have Awarded Efficiency Certificates To Us.</span></p>\r\n', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `ghjhgjhgj` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_product`
--

CREATE TABLE `tbl_sub_product` (
  `id` int(11) NOT NULL,
  `fld_product_id` varchar(20) NOT NULL,
  `fld_name` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `fld_date` varchar(250) NOT NULL,
  `fld_discription` text NOT NULL,
  `fld_status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_product`
--

INSERT INTO `tbl_sub_product` (`id`, `fld_product_id`, `fld_name`, `image`, `fld_date`, `fld_discription`, `fld_status`) VALUES
(150, '', '', '151015_1444894576.jpg', '', '', '1'),
(153, '', '', '151015_1444894639.jpg', '', '', '1'),
(154, '', '', '151015_1444894643.jpg', '', '', '1'),
(155, '', '', '151015_1444894656.jpg', '', '', '1'),
(156, '', '', '151015_1444894658.jpg', '', '', '1'),
(157, '', '', '151015_1444894660.jpg', '', '', '1'),
(158, '', '', '151015_1444894664.jpg', '', '', '1'),
(159, '', '', '151015_1444894676.jpg', '', '', '1'),
(160, '', '', '151015_1444894677.jpg', '', '', '1'),
(161, '', '', '151015_1444894683.jpg', '', '', '1'),
(162, '', '', '151015_1444894687.jpg', '', '', '1'),
(163, '', '', '151015_1444894692.jpg', '', '', '1'),
(164, '', '', '151015_1444894698.jpg', '', '', '1'),
(165, '', '', '151015_1444894702.jpg', '', '', '1'),
(166, '', '', '151015_1444894708.jpg', '', '', '1'),
(167, '', '', '151015_1444894712.jpg', '', '', '1'),
(168, '', '', '151015_1444894718.jpg', '', '', '1'),
(169, '', '', '151015_1444894722.jpg', '', '', '1'),
(170, '', '', '151015_1444894734.jpg', '', '', '1'),
(185, '', 'undp', '010416_1459513768.bmp', '', '', '1'),
(184, '', 'ippf', '010416_1459513680.bmp', '', '', '1'),
(182, '', 'French embassy 121', '010416_1459513553.bmp', '', '', '1'),
(181, '', 'Ford', '010416_1459513462.bmp', '', '', '1'),
(186, '', 'unicef 1', '010416_1459513857.bmp', '', '', '1'),
(187, '', 'unicef 2', '010416_1459513951.bmp', '', '', '1'),
(189, '', 'Bhutan Embassy', '080518_1525756263.jpg', '', '', '1'),
(190, '', 'Poland Embassy', '080518_1525756421.jpeg', '', '', '1'),
(192, '', '', '310720_1596184551.jpg', '', '', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactform`
--
ALTER TABLE `contactform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_product`
--
ALTER TABLE `table_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_about`
--
ALTER TABLE `tbl_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_client`
--
ALTER TABLE `tbl_client`
  ADD PRIMARY KEY (`fld_id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`fld_id`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_home`
--
ALTER TABLE `tbl_home`
  ADD PRIMARY KEY (`fld_id`);

--
-- Indexes for table `tbl_sub_product`
--
ALTER TABLE `tbl_sub_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contactform`
--
ALTER TABLE `contactform`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `table_product`
--
ALTER TABLE `table_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=595;
--
-- AUTO_INCREMENT for table `tbl_about`
--
ALTER TABLE `tbl_about`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;
--
-- AUTO_INCREMENT for table `tbl_client`
--
ALTER TABLE `tbl_client`
  MODIFY `fld_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `fld_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT for table `tbl_home`
--
ALTER TABLE `tbl_home`
  MODIFY `fld_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_sub_product`
--
ALTER TABLE `tbl_sub_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
