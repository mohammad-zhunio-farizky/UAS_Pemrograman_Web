-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220629.14f90d77f8
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2022 at 11:49 AM
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
-- Database: `apotek`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

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

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_instagram`, `admin_address`) VALUES
(1, 'Mohammad Zhunio Farizky', 'admin', '78fa8974ed8f239f8cd9828ad294804c', '+6282283307667', 'farizky.zhunio1818@gmail.com', '@zzhunio18', 'Jl. Jend.Sudirman No.30 Birugo, Bukittinggi, Sumatera Barat.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(1, 'Z'),
(2, 'Y'),
(3, 'X'),
(4, 'W'),
(5, 'V'),
(6, 'U'),
(7, 'T'),
(8, 'S'),
(9, 'R'),
(10, 'Q'),
(11, 'P'),
(12, 'O'),
(13, 'N'),
(14, 'M'),
(15, 'L'),
(16, 'K'),
(17, 'J'),
(18, 'I'),
(19, 'H'),
(20, 'G'),
(21, 'F'),
(22, 'E'),
(23, 'D'),
(24, 'C'),
(25, 'B'),
(26, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `tb_obat`
--

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

--
-- Dumping data for table `tb_obat`
--

INSERT INTO `tb_obat` (`obat_id`, `category_id`, `obat_name`, `obat_price`, `obat_description`, `obat_image`, `obat_stock`, `obat_status`, `data_created`) VALUES
(23, 1, 'Zambuk', 38000, '<p><strong>Kegunaan</strong> :</p>\r\n\r\n<p>Membantu meredakan memar dan terkilir ringan, gatal akibat gigitan serangga dan nyamuk, serta membantu meredakan rasa nyeri dan gatal-gatal yang berkaitan dengan luka ringan.</p>\r\n', 'obat1656327405.png', '24 kotak', 1, '2022-06-27 10:56:45'),
(24, 2, 'Yusimox', 8000, '<p>YUSIMOX adalah obat antibiotik yang mengandung Amoxicillin. Amoksisilin adalah aminopenisilin semisintetik yang menghambat langkah transpeptidasi akhir sintesis peptidoglikan di dinding sel bakteri dengan mengikat 1 atau lebih protein pengikat penisilin (PBP), sehingga menghambat biosintesis dinding sel dan akhirnya menyebabkan lisis bakteri. Obat ini digunakan untuk infeksi yang disebabkan oleh strain-strain bakteri yang peka spt Staphylococcus bukan penghasil penisilinase, Streptococcus, E.Coli, H.Influenzae, Streptococcus Pneumoniae, Streptococcus Faecalis, P.mirabilia dan N.Gonorrheae (bukan penghasil penisilinase) pada penyakit infeksi kulit dan jaringan lunak, infeksi saluran pernafasan, infeksi saluran genitourinari, dan gonore. Dalam penggunaan obat ini harus SESUAI DENGAN PETUNJUK DOKTER.</p>\r\n', 'obat1656327721.png', '500 lembar', 1, '2022-06-27 11:00:56'),
(25, 4, 'Welmove', 18000, '<p>WELMOVE TABLET merupakan nutrisi sendi yang mengandung glucosamin, chondroitin, vitamin dan mineral yang cocok atasi kaku dan nyeri pada sendi lutut, pinggang, bahu, dan sendi lainnya. Welmove bekerja melumasi persendian sehingga sendi jadi mudah untuk digerakkan.</p>\r\n', 'obat1656327853.png', '325 lembar', 1, '2022-06-27 11:04:13'),
(26, 5, 'VFresh', 114000, '<p><strong>VFresh</strong> digunakan untuk membantu meringankan mabuk perjalanan, masuk angin, dan pusing. VFresh juga dapat digunakan untuk mengatasi gatal akibat gigitan serangga.</p>\r\n', 'obat1656328083.png', '8 lusin', 1, '2022-06-27 11:08:03'),
(27, 5, 'Vicee 500', 80000, '<p><strong>VICEE 500</strong> merupakan suplemen yang mengandung vitamin C. Suplemen ini digunakan untuk membantu memenuhi kebutuhan vitamin C tubuh.</p>\r\n', 'obat1656328221.png', '10 box', 1, '2022-06-27 11:10:21'),
(28, 6, 'UltraFlu', 72000, '<p><strong>ULTRAFLU</strong> tablet adalah obat yang digunakan untuk mengobati gejala flu seperti demam, sakit kepala, hidung tersumbat dan bersin-bersin.</p>\r\n', 'obat1656328368.png', '8 box', 1, '2022-06-27 11:12:48'),
(29, 7, 'Termorex Plus Syrup 30ml', 12000, '<p>Menghilangkan gejala flu yang disertai dengan demam, sakit kepala, hidung tersumbat, dan bersin-bersin.</p>\r\n', 'obat1656334731.png', '35 botol', 1, '2022-06-27 12:58:52'),
(30, 8, 'Sakatonik ABC', 18000, '<p>SAKATONIK ABC STRAWBERRY merupakan tablet hisap mutivitamin untuk anak-anak rasa strawberry. Membantu memenuhi kebutuhan vitamin pada anak. Kandungan vitamin Sakatonik ABC: Vitamin A, Vitamin B1, Vitamin B2, Vitamin B3, Vitamin B6, Vitamin B12 , Vitamin C, Vitamin D3, Vitamin E, Kalsium Pantotenat.</p>\r\n', 'obat1656334893.png', '30 botol', 1, '2022-06-27 13:01:33'),
(31, 9, 'Redoxon', 45000, '<p><strong>REDOXON TRIPLE ACTION EFFERVESCENT</strong> merupakan suplemen makanan yang mengandung Vitamin C dilengkapi dengan Vitamin D dan Zinc yang berfungsi untuk membantu menjaga daya tahan tubuh. Vitamin C bermanfaat membantu sistem imunitas tubuh. Vitamin D membantu menjaga fungsi daya tahan tubuh tetap normal. Zinc membantu kinerja vitamin C, sehingga menjadi lebih efektif dalam menjaga daya tahan tubuh, dan Zinc merupakan zat yang tidak diproduksi tubuh. Jika asupan dari makanan tidak mencukupi kebutuhan harian, bila perlu, dapat diberikan suplementasi.</p>\r\n', 'obat1656335040.png', '25 kotak', 1, '2022-06-27 13:04:00'),
(32, 10, 'Quantidex Syrup', 96000, '<p>Mengurangi gejala gangguan pada saluran napas atas: rinitis alergi, rinitis vasomotorik.</p>\r\n', 'obat1656335157.png', '7 lusin', 1, '2022-06-27 13:05:57'),
(33, 11, 'Paracetamol MEF', 37000, '<p>Analgesik-antipiretik yang dapat digunakan untuk menurunkan demam, meredakan nyeri seperti sakit gigi dan sakit kepala.</p>\r\n', 'obat1656335315.png', '5 box', 1, '2022-06-27 13:08:35'),
(34, 12, 'OBH Combi Batuk Berdahak 100ml', 16000, '<p><strong>OBH COMBI BATUK BERDAHAK</strong> adalah obat yang digunakan untuk meredakan batuk berdahak dengan cara bekerja sebagai ekspektoran yang membantu mengeluarkan dahak.</p>\r\n', 'obat1656335554.png', '18 botol', 1, '2022-06-27 13:12:34'),
(35, 13, 'Neurobion', 25000, '<p><strong>NEUROBION</strong> merupakan vitamin neurotropik dengan kandungan Vitamin B1, Vitamin B6, Vitamin B12, yang penting untuk kesehatan fungsi saraf. Vitamin B1 bekerja dengan membantu memetabolisme karbohidrat, Vitamin B6 membantu memetabolisme protein dan asam amino, Vitamin B12 membantu memelihara keutuhan jaringan saraf. Suplemen ini digunakan untuk pencegahan dan pengobatan penyakit karena kekurangan Vitamin B1, B6, B12, seperti neuritis perifer, neuralgia.</p>\r\n', 'obat1656335667.png', '250 lembar', 1, '2022-06-27 13:14:27'),
(36, 14, 'Minyak Telon Lang 30ml', 12000, '<p><strong>MINYAK TELON LANG 30ML</strong> merupakan minyak telon yang diformulasikan dari bahan alami terbaik. Dapat digunakan untuk keperluan bayi seperti menghangatkan tubuhnya saat berpergian atau saat setelah mandi. <strong>MINYAK TELON LANG 30ML</strong>&nbsp; dengan sensasi hangat yang pas untuk bayi yang baru lahir. Dibuat dari bahan alami agar si kecil tetap sehat dan nyaman. Aromanya yang menenangkan juga memberikan efek positif bagi bayi.</p>\r\n', 'obat1656335863.png', '35 botol', 1, '2022-06-27 13:17:43'),
(37, 15, 'Laxing', 4000, '<p><strong>LAXING</strong> merupakan obat tradisional yang terbuat dari bahan alam untuk menjaga kesehatan pencernaan dan melancarkan buang air besar (BAB).</p>\r\n', 'obat1656335990.png', '96 lembar', 1, '2022-06-27 13:19:50'),
(38, 16, 'Kapsida', 18000, '<p><strong>KAPSIDA</strong> merupakan kapsul ekstrak herbal yang berkhasiat untuk membantu meringankan gatal-gatal, bisul, koreng, dan jerawat.</p>\r\n', 'obat1656336115.png', '45 botol', 1, '2022-06-27 13:21:55'),
(39, 17, 'Jesscool', 33000, '<p>Mencegah dan mengatasi gejala-gejala panas dalam seperti sariawan, bibir pecah-pecah, sakit tenggorokan dan susah buang air besar.</p>\r\n', 'obat1656336312.png', '500 tablet', 1, '2022-06-27 13:25:12'),
(40, 18, 'Imboost Kids Tablet Hisap', 33000, '<p><strong>IMBOOST KIDS TABLET HISAP</strong> merupakan suplemen untuk membantu memelihara daya tahan tubuh anak dalam formula tablet hisap. Tablet hisap ini dilengkapi dengan rasa mixberry yang enak sehingga memiliki rasa yang sangat disukai oleh anak-anak.</p>\r\n', 'obat1656336544.png', '24 botol', 1, '2022-06-27 13:29:04'),
(41, 19, 'Hot In Cream 60gr (botol)', 12000, '<p>Sumbawa Hot in Cream merupakan cream antinyeri yang sangat tepat untuk mengatasi capek, pegal-pegal dan nyeri otot yang mengganggu aktivitas harian. Diformulasikan dalam basis cream, nyaman dipakai, panasnya pas, mudah meresap, tidak lengket dikulit, dan tidak mengotori baju.<br />\r\nBeli Sumbawa Hot in Cream tube 60G di apotek online K24Klik dan dapatkan manfaatnya.</p>\r\n', 'obat1656336713.png', '55 botol', 1, '2022-06-27 13:31:53'),
(42, 20, 'Geliga Balsem Otot 10gr', 6000, '<p>Meredakan nyeri otot dan sendi seperti nyeri akibat memar, kesleo, dan nyeri otot pada punggung</p>\r\n', 'obat1656336839.png', '72 pot', 1, '2022-06-27 13:33:59'),
(43, 21, 'Fatigon', 60000, '<p>Fatigon Putih Per Box/Dus/Dos - Tablet Multivitamin - Mineral, Lelah<br />\r\nHarga tertera untuk 1 box (isi 10 strip)<br />\r\n1 box isi 10 strip<br />\r\n1 strip isi 4 tablet</p>\r\n', 'obat1656337027.png', '10 box', 1, '2022-06-27 13:37:07'),
(44, 22, 'Entrostop', 16000, '<p><strong>NEO ENTROSTOP</strong> merupakan obat antidiare dengan kandungan Attapulgit dan Pektin. Obat ini dapat digunakan untuk mengobati diare non spesifik.</p>\r\n', 'obat1656337181.png', '300 lembar', 1, '2022-06-27 13:39:41'),
(45, 23, 'Decolgen', 3000, '<p><strong>DECOLGEN</strong> merupakan obat flu dengan kandungan Paracetamol, Phenylpropanolamine HCl, dan Chlorpheniramine maleate. Paracetamol digunakan sebagai pereda demam dan sakit kepala. Phenylpropanolamine digunakan untuk mengobati gejala hidung tersumbat. Chlorpheniramine maleate bekerja sebagai antihistamin atau anti alergi sehingga obat ini digunakan untuk meredakan gejala flu seperti sakit kepala, demam, bersin-bersin dan hidung tersumbat.</p>\r\n', 'obat1656337274.png', '300 lembar', 1, '2022-06-27 13:41:14'),
(46, 24, 'Calcifar', 16000, '<p>Suplemen dalam pemenuhan kebutuhan Kalsium</p>\r\n', 'obat1656337503.png', '35 box', 1, '2022-06-27 13:45:03'),
(47, 25, 'Balpirik', 12000, '<p><strong>BALPIRIK</strong> EXTRA KUAT (MERAH) BALSAM 20 G Untuk meringankan gejala flu, masuk angin, mabuk perjalanan, gatal akibat gigitan serangga, pegal dan kram otot.</p>\r\n', 'obat1656337651.png', '35 pot', 1, '2022-06-27 13:47:31'),
(48, 26, 'Adem Sari', 2000, '<p><strong>ADEM SARI</strong> merupakan minuman penyejuk yang mengandung ekstrak Citrus Aurantifolia dan ekstrak Alyxia stellata. Dilengkapi juga dengan kandungan vitamin C. Digunakan untuk meredakan gejala panas dalam, sakit tenggorokan, sariawan, bibir pecah-pecah dan susah buang air besar.</p>\r\n', 'obat1656337950.png', '500 sachet', 1, '2022-06-27 13:52:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_obat`
--
ALTER TABLE `tb_obat`
  ADD PRIMARY KEY (`obat_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tb_obat`
--
ALTER TABLE `tb_obat`
  MODIFY `obat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_obat`
--
ALTER TABLE `tb_obat`
  ADD CONSTRAINT `tb_obat_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `tb_category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



