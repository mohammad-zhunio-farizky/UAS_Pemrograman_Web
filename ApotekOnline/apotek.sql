SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

-- Database: `apotek`
-- CREATE DATABASE apotek;

-- Table admin

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_instagram` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data table admin

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_instagram`, `admin_address`) VALUES
(1, 'Mohammad Zhunio Farizky', 'admin', md5('zhunio'), '+6282283307667', 'farizky.zhunio1818@gmail.com', '@zzhunio18', 'Jl. Jend.Sudirman No.30 Birugo, Bukittinggi, Sumatera Barat.');

-- Table category

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data Table category

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E'),
(6, 'F'),
(7, 'G'),
(8, 'H'),
(9, 'I'),
(10, 'J'),
(11, 'K'),
(12, 'L'),
(13, 'M'),
(14, 'N'),
(15, 'O'),
(16, 'P'),
(17, 'Q'),
(18, 'R'),
(19, 'S'),
(20, 'T'),
(21, 'U'),
(22, 'V'),
(23, 'W'),
(24, 'X'),
(25, 'Y'),
(26, 'Z');

-- Table obat

CREATE TABLE `tb_obat` (
  `obat_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `obat_name` varchar(100) NOT NULL,
  `obat_price` int(11) NOT NULL,
  `obat_description` text NOT NULL,
  `obat_image` varchar(100) NOT NULL,  
  `obat_stock` varchar(100) NOT NULL,
  `obat_status` tinyint(1) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data Table obat

INSERT INTO `tb_obat` (`obat_id`, `category_id`, `obat_name`, `obat_price`, `obat_description`, `obat_image`, `obat_stock`, `obat_status`, `data_created`) VALUES
(1, 1, 'Adem Sari', 2000, '<p><strong>Adem Sari</strong>&nbsp;Dapat meredakan panas dalam', 'obat157172919812770.png', '240 sachet ', 1, '2022-06-27');

-- Indexes for table `tb_admin`

ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

-- Indexes for table `tb_category`

ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

-- Indexes for table `tb_obat`

ALTER TABLE `tb_obat`
  ADD PRIMARY KEY (`obat_id`),
  ADD KEY `category_id` (`category_id`);

-- AUTO_INCREMENT for table `tb_admin`

ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

-- AUTO_INCREMENT for table `tb_category`

ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

-- AUTO_INCREMENT for table `tb_obat`

ALTER TABLE `tb_obat`
  MODIFY `obat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;
