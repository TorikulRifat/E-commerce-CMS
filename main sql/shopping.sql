-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2021 at 11:42 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(2, 'admin', 'ea14bad49556d3c2df116f775de7bf1a', '2021-01-06 06:54:56', '06-01-2021 12:26:46 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(8, 'Electronic', '', '2021-01-06 07:51:37', NULL),
(9, 'Fashion', '', '2021-01-06 07:51:52', NULL),
(10, 'Furniture', '', '2021-01-06 07:53:30', NULL),
(11, 'Other Accessories', '', '2021-01-06 07:53:36', '06-01-2021 01:32:19 PM');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(9, 6, '22', 1, '2021-01-11 09:07:54', 'COD', 'Delivered'),
(10, 6, '23', 5, '2021-01-11 09:14:11', 'COD', 'Delivered'),
(11, 6, '23', 1, '2021-01-11 09:15:37', 'COD', 'in Process'),
(12, 6, '24', 1, '2021-01-11 09:15:37', 'COD', 'in Process'),
(13, 2, '26', 1, '2021-01-11 10:34:35', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(7, 8, 'in Process', '', '2021-01-11 07:57:58'),
(8, 8, 'Delivered', '', '2021-01-11 08:48:21'),
(9, 9, 'in Process', '', '2021-01-11 09:10:47'),
(10, 9, 'Delivered', '', '2021-01-11 09:11:33'),
(11, 10, 'in Process', '', '2021-01-11 09:14:31'),
(12, 10, 'Delivered', '', '2021-01-11 09:14:59'),
(13, 11, 'in Process', '', '2021-01-11 09:16:11'),
(14, 12, 'in Process', '', '2021-01-11 09:16:27');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productlimit` int(11) NOT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productlimit`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(21, 8, 13, 'Realme 7 Pro - 8GB RAM / 128GB ROM', 'Realme', 0, 25, 0, '<ul><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">NO RETURN applicable if the seal is broken</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">BODY Dimensions: 160.9 x 74.3 x 8.7 mm (6.33 x 2.93 x 0.34 in)</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Weight: 182 g (6.42 oz)</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">SIM:Dual SIM (Nano-SIM, dual stand-by)</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Water-repellent coating</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">DISPLAY: Type Super AMOLED</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Size: 6.4 inches, 98.9 cm2 (~82.7% screen-to-body ratio)</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Resolution: 1080 x 2400 pixels, 20:9 ratio (~411 ppi density)</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Protection:Corning Gorilla Glass 3+</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">OS: Android 10, Realme UI</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Chipset :Qualcomm SM7125 Snapdragon 720G (8 nm)</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">CPU: Octa-core (2x2.3 GHz Kryo 465 Gold &amp; 6x1.8 GHz Kryo 465 Silver)</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">GPU:Adreno 618</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">MEMORY:Card slot microSDXC (dedicated slot)</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Internal:8GB RAM / 128GB ROM</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">MAIN CAMERA (Quad): 64 MP,8 MP, 2 MP,2 MP, f/2.4, (depth)</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Features:LED flash, HDR, panorama</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Video:4K@30fps, 1080p@30/60/120fps, gyro-EIS</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">SELFIE CAMERA (Single):32 MP, f/2.5, 24mm (wide), 1/2.8\", 0.8µm</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Features:HDR, panorama</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Video:1080p@30/120fps, gyro-EIS</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">SOUND Loudspeaker:Yes, with stereo speakers</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">3.5mm jack: Yes</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">24-bit/192kHz audio</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">COMMS: WLAN Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Bluetooth:5.1, A2DP, LE</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">GPS :Yes, with A-GPS, GLONASS, BDS, NavIC</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Radio: No</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">USB Type-C 2.0, USB On-The-Go</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">FEATURES: Sensors Fingerprint (under display, optical), accelerometer, gyro, proximity, compass</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">BATTERY Type: Li-Po 4500 mAh, non-removable</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Charging:Fast charging 65W, 50% in 12 min, 100% in 34 min</span></li></ul>', 'mobile001.jpeg', 'mobile002.jpeg', 'mobile003.jpeg', 500, 'In Stock', '2021-01-06 08:10:01', NULL),
(22, 8, 15, 'Walton Prelude N5000 Laptop', 'Walton', 28, 28, 0, '<ul><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">14.0\" High Definition (HD) LED Panel</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Intel N5000 1.10GHz Processor Quad-Core, Burst Frequency 2.70GHz, 4MB Cache</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">1TB Hard Disk Drive (HDD), 5400 rpm, 7mm</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">SSD Supported</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">4GB DDR4 RAM</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">802.11bgn WLAN + BT 4.2</span></li><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Color: Black</span></li></ul>', 'laptop001.jpeg', 'laptop002.jpeg', 'laptop001.jpeg', 200, 'In Stock', '2021-01-06 08:24:47', NULL),
(23, 8, 14, 'Q718 Quad Core 7Inch Tablets PC', 'LIYUNDA', 5, 5, 0, '<ul><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Plug Type: US Plug,it applies to Canada, India,Mexico, Thailand,taiwan the United States, the Philippines and so on.material: plasticThe Q718 Quad Core 7inch Tablet PC is specially designed for kids, and the cute cartoon animal appearance allows your kids fondle admiringly, which is really a perfect Christmas gift or present.Features:Educational Tablet, specially designed for kids and it is designed with very cute and lovely cartoon animal design, allowing your kids to fondle admiringly. Made of high-grade material to ensure its durability and security.</span></li></ul>', 'tablets.jpeg', 'teblets002.jpeg', 'tablets003.jpeg', 100, 'In Stock', '2021-01-06 08:39:02', NULL),
(24, 8, 16, 'Intel Core i5 HDD 500GB Ram 8GB DDR3', 'DELL', 25, 25, 0, '<ul><li><span style=\"font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Plug Type: US Plug,it applies to Canada, India, Mexico, Thailand,Taiwan the United States, the Philippines, and so on. material: plastic Q718 Quad Core 7inch Tablet PC is specially designed for kids, and the cute cartoon animal appearance allows your kids fondle admiringly, which is really a perfect Christmas gift or present.Features: Educational Tablet, specially designed for kids and it is designed with very cute and lovely cartoon animal design, allowing your kids to fondle admiringly. Made of high-grade material to ensure its durability and security.</span></li></ul>', 'desktop002.jpeg', 'desktop001.jpeg', 'desktop003.jpeg', 200, 'In Stock', '2021-01-06 08:42:00', NULL),
(26, 8, 13, 'mobile', 'bm', 70, 100, 5, 'adsfadsf', 'Thumbnail general-02.png', '', '', 0, 'In Stock', '2021-01-11 09:36:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 8, 'Mobile', '2021-01-06 07:57:19', NULL),
(14, 8, 'Tablets', '2021-01-06 07:57:29', NULL),
(15, 8, 'Laptop', '2021-01-06 07:58:11', NULL),
(16, 8, 'Desktop', '2021-01-06 07:58:21', NULL),
(17, 8, 'Gaming Console', '2021-01-06 07:58:38', NULL),
(18, 8, 'Camers', '2021-01-06 07:58:47', NULL),
(19, 8, 'Secqurity Camres', '2021-01-06 07:58:59', NULL),
(20, 9, 'Man', '2021-01-06 07:59:39', NULL),
(21, 9, 'Woman', '2021-01-06 07:59:46', '06-01-2021 01:30:44 PM'),
(22, 10, 'Hatil', '2021-01-06 08:01:20', NULL),
(23, 10, 'Otobi', '2021-01-06 08:01:25', NULL),
(24, 10, 'Best Buy', '2021-01-06 08:01:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(27, 'myshaprome@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-06 07:02:42', '06-01-2021 12:35:00 PM', 1),
(28, 'myshaprome@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-06 07:05:05', NULL, 1),
(29, 'myshaprome@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-07 04:29:07', NULL, 1),
(30, 'shimanto@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-11 07:47:57', NULL, 0),
(31, 'sam@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-11 07:48:38', NULL, 1),
(32, 'sam@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-11 10:25:24', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
