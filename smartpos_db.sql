-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2025 at 11:57 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartpos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(100) NOT NULL,
  `nama_barang` text NOT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `id_supplier` int(11) DEFAULT NULL,
  `id_merk` int(11) DEFAULT NULL,
  `id_satuan` int(11) DEFAULT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `upload_gambar` varchar(200) DEFAULT NULL,
  `tgl_input` datetime NOT NULL,
  `tgl_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `barang`
--

-- INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `id_kategori`, `id_supplier`, `id_merk`, `id_satuan`, `harga_beli`, `harga_jual`, `stok`, `upload_gambar`, `tgl_input`, `tgl_update`) VALUES
-- (25, 'BR001', 'Buku tulis kiky 40 lembar-1234', 2, 25, 29, 1, '2000', '5000', '99', '6799fdeb2565f.jpg', '2025-01-29 17:07:22', '2025-01-29 17:28:12'),
-- (26, 'BR002', 'Pensil Faber Castell 2B', 2, 28, 32, 1, '1500', '3000', '99', '', '2025-01-29 17:25:23', '2025-01-29 17:28:12'),
-- (27, 'BR003', 'Pena Joyko Blue 0.5mm', 2, 29, 33, 1, '900', '1500', '119', '', '2025-01-29 17:27:07', '2025-01-29 17:28:12');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `tgl_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

-- INSERT INTO `kategori` (`id`, `nama_kategori`, `tgl_input`, `tgl_update`) VALUES
-- (2, 'Alat Tulis Kantor', '2025-01-27 01:26:43', '2025-01-29 17:03:31');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(128) NOT NULL,
  `role` varchar(10) DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`, `role`, `id_member`) VALUES
(1, 'admin', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'admin', 1),
(19, 'steven', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'kasir', 15),
(20, 'steven123', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'admin', 16),
(21, '1111', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', 'admin', 17);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`) VALUES
(1, 'SmartPoS', 'Universitas Siber Asia', '-', 'Smartpos@gmail.com', '17325911023.jpg', '-'),
(15, 'Admin', '2', '2', '2@gmail.com', '1714378963av2.png', '2'),
(16, 'steven', '', '', '', '1714378963av2.png', ''),
(17, '1111', '', '', '', '1714378963av2.png', ''),
(18, 'Heri', '', '', '', '1737917068Screenshot 2025-01-25 at 09.37.19.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `merk`
--

CREATE TABLE `merk` (
  `id` int(11) NOT NULL,
  `kode_merk` varchar(100) NOT NULL,
  `nama_merk` varchar(100) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `tgl_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `merk`
--

-- INSERT INTO `merk` (`id`, `kode_merk`, `nama_merk`, `tgl_input`, `tgl_update`) VALUES
-- (29, 'MR001', 'KIKY', '2025-01-27 01:09:51', '2025-01-29 17:04:35'),
-- (32, 'MR002', 'Faber Castell', '2025-01-29 17:23:04', '2025-01-29 17:23:04'),
-- (33, 'MR003', 'Joyko', '2025-01-29 17:23:14', '2025-01-29 17:23:14');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_transaksi` int(11) DEFAULT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` double DEFAULT NULL,
  `tanggal_input` datetime NOT NULL DEFAULT current_timestamp(),
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_nota`, `id_transaksi`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`, `periode`) VALUES
(1597, 26, 'BR001', 15, '1', 5000, '2025-01-29 17:27:30', '01-2025'),
(1598, 26, 'BR002', 15, '1', 3000, '2025-01-29 17:27:35', '01-2025'),
(1599, 26, 'BR003', 15, '1', 1500, '2025-01-29 17:27:38', '01-2025'),
(1600, 26, 'BR001', 15, '1', 5000, '2025-01-22 17:27:30', '01-2025'),
(1601, 26, 'BR002', 15, '1', 3000, '2025-01-22 17:27:35', '01-2025'),
(1602, 26, 'BR003', 15, '1', 1500, '2025-01-06 17:27:38', '01-2025'),
(1603, 1, 'BR001', 15, '2', 10000, '2025-01-01 17:27:30', '01-2025'),
(1604, 1, 'BR002', 15, '1', 3000, '2025-01-01 17:27:35', '01-2025'),
(1605, 1, 'BR003', 15, '1', 1500, '2025-01-01 17:27:38', '01-2025'),
(1606, 2, 'BR001', 15, '3', 15000, '2025-01-02 17:27:30', '01-2025'),
(1607, 2, 'BR002', 15, '2', 6000, '2025-01-02 17:27:35', '01-2025'),
(1608, 2, 'BR003', 15, '3', 4500, '2025-01-02 17:27:38', '01-2025'),
(1609, 3, 'BR001', 15, '1', 5000, '2025-01-03 17:27:30', '01-2025'),
(1610, 3, 'BR002', 15, '2', 6000, '2025-01-03 17:27:35', '01-2025'),
(1611, 3, 'BR003', 15, '3', 4500, '2025-01-03 17:27:38', '01-2025'),
(1612, 4, 'BR001', 15, '1', 5000, '2025-01-04 17:27:30', '01-2025'),
(1613, 4, 'BR002', 15, '2', 6000, '2025-01-04 17:27:35', '01-2025'),
(1614, 4, 'BR003', 15, '3', 4500, '2025-01-04 17:27:38', '01-2025'),
(1615, 5, 'BR001', 15, '1', 5000, '2025-01-05 17:27:30', '01-2025'),
(1616, 5, 'BR002', 15, '2', 6000, '2025-01-05 17:27:35', '01-2025'),
(1617, 5, 'BR003', 15, '3', 4500, '2025-01-05 17:27:38', '01-2025'),
(1618, 6, 'BR001', 15, '1', 5000, '2025-01-06 17:27:30', '01-2025'),
(1619, 6, 'BR002', 15, '2', 6000, '2025-01-06 17:27:35', '01-2025'),
(1620, 6, 'BR003', 15, '3', 4500, '2025-01-06 17:27:38', '01-2025'),
(1621, 7, 'BR001', 15, '1', 5000, '2025-01-07 17:27:30', '01-2025'),
(1622, 7, 'BR002', 15, '2', 6000, '2025-01-07 17:27:35', '01-2025'),
(1623, 7, 'BR003', 15, '3', 4500, '2025-01-07 17:27:38', '01-2025'),
(1624, 8, 'BR001', 15, '1', 5000, '2025-01-08 17:27:30', '01-2025'),
(1625, 8, 'BR002', 15, '2', 6000, '2025-01-08 17:27:35', '01-2025'),
(1626, 8, 'BR003', 15, '3', 4500, '2025-01-08 17:27:38', '01-2025'),
(1627, 9, 'BR001', 15, '1', 5000, '2025-01-09 17:27:30', '01-2025'),
(1628, 9, 'BR002', 15, '2', 6000, '2025-01-09 17:27:35', '01-2025'),
(1629, 9, 'BR003', 15, '3', 4500, '2025-01-09 17:27:38', '01-2025'),
(1630, 10, 'BR001', 15, '1', 5000, '2025-01-10 17:27:30', '01-2025'),
(1631, 10, 'BR002', 15, '2', 6000, '2025-01-10 17:27:35', '01-2025'),
(1632, 10, 'BR003', 15, '3', 4500, '2025-01-10 17:27:38', '01-2025'),
(1633, 11, 'BR001', 15, '1', 5000, '2025-01-11 17:27:30', '01-2025'),
(1634, 11, 'BR002', 15, '2', 6000, '2025-01-11 17:27:35', '01-2025'),
(1635, 11, 'BR003', 15, '3', 4500, '2025-01-11 17:27:38', '01-2025'),
(1636, 12, 'BR001', 15, '1', 5000, '2025-01-12 17:27:30', '01-2025'),
(1637, 12, 'BR002', 15, '2', 6000, '2025-01-12 17:27:35', '01-2025'),
(1638, 12, 'BR003', 15, '3', 4500, '2025-01-12 17:27:38', '01-2025'),
(1639, 13, 'BR001', 15, '1', 5000, '2025-01-13 17:27:30', '01-2025'),
(1640, 13, 'BR002', 15, '2', 6000, '2025-01-13 17:27:35', '01-2025'),
(1641, 13, 'BR003', 15, '3', 4500, '2025-01-13 17:27:38', '01-2025'),
(1642, 14, 'BR001', 15, '1', 5000, '2025-01-14 17:27:30', '01-2025'),
(1643, 14, 'BR002', 15, '2', 6000, '2025-01-14 17:27:35', '01-2025'),
(1644, 14, 'BR003', 15, '3', 4500, '2025-01-14 17:27:38', '01-2025'),
(1645, 15, 'BR001', 15, '1', 5000, '2025-01-15 17:27:30', '01-2025'),
(1646, 15, 'BR002', 15, '2', 6000, '2025-01-15 17:27:35', '01-2025'),
(1647, 15, 'BR003', 15, '3', 4500, '2025-01-15 17:27:38', '01-2025'),
(1648, 16, 'BR001', 15, '1', 5000, '2025-01-16 17:27:30', '01-2025'),
(1649, 16, 'BR002', 15, '2', 6000, '2025-01-16 17:27:35', '01-2025'),
(1650, 16, 'BR003', 15, '3', 4500, '2025-01-16 17:27:38', '01-2025'),
(1651, 17, 'BR001', 15, '1', 5000, '2025-01-17 17:27:30', '01-2025'),
(1652, 17, 'BR002', 15, '2', 6000, '2025-01-17 17:27:35', '01-2025'),
(1653, 17, 'BR003', 15, '3', 4500, '2025-01-17 17:27:38', '01-2025'),
(1654, 18, 'BR001', 15, '1', 5000, '2025-01-18 17:27:30', '01-2025'),
(1655, 18, 'BR002', 15, '2', 6000, '2025-01-18 17:27:35', '01-2025'),
(1656, 18, 'BR003', 15, '3', 4500, '2025-01-18 17:27:38', '01-2025'),
(1657, 19, 'BR001', 15, '1', 5000, '2025-01-19 17:27:30', '01-2025'),
(1658, 19, 'BR002', 15, '2', 6000, '2025-01-19 17:27:35', '01-2025'),
(1659, 19, 'BR003', 15, '3', 4500, '2025-01-19 17:27:38', '01-2025'),
(1660, 20, 'BR001', 15, '1', 5000, '2025-01-20 17:27:30', '01-2025'),
(1661, 20, 'BR002', 15, '2', 6000, '2025-01-20 17:27:35', '01-2025'),
(1662, 20, 'BR003', 15, '3', 4500, '2025-01-20 17:27:38', '01-2025'),
(1663, 21, 'BR001', 15, '1', 5000, '2025-01-21 17:27:30', '01-2025'),
(1664, 21, 'BR002', 15, '2', 6000, '2025-01-21 17:27:35', '01-2025'),
(1665, 21, 'BR003', 15, '3', 4500, '2025-01-21 17:27:38', '01-2025'),
(1666, 22, 'BR001', 15, '1', 5000, '2025-01-22 17:27:30', '01-2025'),
(1667, 22, 'BR002', 15, '2', 6000, '2025-01-22 17:27:35', '01-2025'),
(1668, 22, 'BR003', 15, '3', 4500, '2025-01-22 17:27:38', '01-2025'),
(1669, 23, 'BR001', 15, '1', 5000, '2025-01-23 17:27:30', '01-2025'),
(1670, 23, 'BR002', 15, '2', 6000, '2025-01-23 17:27:35', '01-2025'),
(1671, 23, 'BR003', 15, '3', 4500, '2025-01-23 17:27:38', '01-2025'),
(1672, 24, 'BR001', 15, '1', 5000, '2025-01-24 17:27:30', '01-2025'),
(1673, 24, 'BR002', 15, '2', 6000, '2025-01-24 17:27:35', '01-2025'),
(1674, 24, 'BR003', 15, '3', 4500, '2025-01-24 17:27:38', '01-2025'),
(1675, 25, 'BR001', 15, '1', 5000, '2025-01-25 17:27:30', '01-2025'),
(1676, 25, 'BR002', 15, '2', 6000, '2025-01-25 17:27:35', '01-2025'),
(1677, 25, 'BR003', 15, '3', 4500, '2025-01-25 17:27:38', '01-2025'),
(1678, 26, 'BR001', 15, '1', 5000, '2025-01-26 17:27:30', '01-2025'),
(1679, 26, 'BR002', 15, '2', 6000, '2025-01-26 17:27:35', '01-2025'),
(1680, 26, 'BR003', 15, '3', 4500, '2025-01-26 17:27:38', '01-2025'),
(1681, 27, 'BR001', 15, '1', 5000, '2025-01-27 17:27:30', '01-2025'),
(1682, 27, 'BR002', 15, '2', 6000, '2025-01-27 17:27:35', '01-2025'),
(1683, 27, 'BR003', 15, '3', 4500, '2025-01-27 17:27:38', '01-2025'),
(1684, 28, 'BR001', 15, '1', 5000, '2025-01-28 17:27:30', '01-2025'),
(1685, 28, 'BR002', 15, '2', 6000, '2025-01-28 17:27:35', '01-2025'),
(1686, 28, 'BR003', 15, '3', 4500, '2025-01-28 17:27:38', '01-2025'),
(1687, 29, 'BR001', 15, '1', 5000, '2025-01-29 17:27:30', '01-2025'),
(1688, 29, 'BR002', 15, '2', 6000, '2025-01-29 17:27:35', '01-2025'),
(1689, 29, 'BR003', 15, '3', 4500, '2025-01-29 17:27:38', '01-2025'),
(1690, 30, 'BR001', 15, '1', 5000, '2025-01-30 17:27:30', '01-2025'),
(1691, 30, 'BR002', 15, '2', 6000, '2025-01-30 17:27:35', '01-2025'),
(1692, 30, 'BR003', 15, '3', 4500, '2025-01-30 17:27:38', '01-2025'),
(1693, 31, 'BR001', 15, '1', 5000, '2025-01-31 17:27:30', '01-2025'),
(1694, 31, 'BR002', 15, '2', 6000, '2025-01-31 17:27:35', '01-2025'),
(1695, 31, 'BR003', 15, '3', 4500, '2025-01-31 17:27:38', '01-2025'),
(1696, 1, 'BR001', 15, '2', 10000, '2025-01-01 17:27:30', '01-2025'),
(1697, 1, 'BR002', 15, '1', 3000, '2025-01-01 17:27:35', '01-2025'),
(1698, 1, 'BR003', 15, '1', 1500, '2025-01-01 17:27:38', '01-2025'),
(1699, 4, 'BR001', 15, '1', 5000, '2025-01-04 17:27:30', '01-2025'),
(1700, 4, 'BR002', 15, '2', 6000, '2025-01-04 17:27:35', '01-2025'),
(1701, 4, 'BR003', 15, '3', 4500, '2025-01-04 17:27:38', '01-2025'),
(1702, 5, 'BR001', 15, '1', 5000, '2025-01-05 17:27:30', '01-2025'),
(1703, 5, 'BR002', 15, '2', 6000, '2025-01-05 17:27:35', '01-2025'),
(1704, 5, 'BR003', 15, '3', 4500, '2025-01-05 17:27:38', '01-2025'),
(1705, 6, 'BR001', 15, '1', 5000, '2025-01-06 17:27:30', '01-2025'),
(1706, 6, 'BR002', 15, '2', 6000, '2025-01-06 17:27:35', '01-2025'),
(1707, 6, 'BR003', 15, '3', 4500, '2025-01-06 17:27:38', '01-2025'),
(1708, 7, 'BR001', 15, '1', 5000, '2025-01-07 17:27:30', '01-2025'),
(1709, 7, 'BR002', 15, '2', 6000, '2025-01-07 17:27:35', '01-2025'),
(1710, 7, 'BR003', 15, '3', 4500, '2025-01-07 17:27:38', '01-2025'),
(1711, 8, 'BR001', 15, '1', 5000, '2025-01-08 17:27:30', '01-2025'),
(1712, 8, 'BR002', 15, '2', 6000, '2025-01-08 17:27:35', '01-2025'),
(1713, 8, 'BR003', 15, '3', 4500, '2025-01-08 17:27:38', '01-2025'),
(1714, 9, 'BR001', 15, '1', 5000, '2025-01-09 17:27:30', '01-2025'),
(1715, 9, 'BR002', 15, '2', 6000, '2025-01-09 17:27:35', '01-2025'),
(1716, 9, 'BR003', 15, '3', 4500, '2025-01-09 17:27:38', '01-2025'),
(1717, 10, 'BR001', 15, '1', 5000, '2025-01-10 17:27:30', '01-2025'),
(1718, 10, 'BR002', 15, '2', 6000, '2025-01-10 17:27:35', '01-2025'),
(1719, 10, 'BR003', 15, '3', 4500, '2025-01-10 17:27:38', '01-2025'),
(1720, 11, 'BR001', 15, '1', 5000, '2025-01-11 17:27:30', '01-2025'),
(1721, 11, 'BR002', 15, '2', 6000, '2025-01-11 17:27:35', '01-2025'),
(1722, 11, 'BR003', 15, '3', 4500, '2025-01-11 17:27:38', '01-2025'),
(1723, 12, 'BR001', 15, '1', 5000, '2025-01-12 17:27:30', '01-2025'),
(1724, 12, 'BR002', 15, '2', 6000, '2025-01-12 17:27:35', '01-2025'),
(1725, 12, 'BR003', 15, '3', 4500, '2025-01-12 17:27:38', '01-2025'),
(1726, 13, 'BR001', 15, '1', 5000, '2025-01-13 17:27:30', '01-2025'),
(1727, 13, 'BR002', 15, '2', 6000, '2025-01-13 17:27:35', '01-2025'),
(1728, 13, 'BR003', 15, '3', 4500, '2025-01-13 17:27:38', '01-2025'),
(1729, 14, 'BR001', 15, '1', 5000, '2025-01-14 17:27:30', '01-2025'),
(1730, 14, 'BR002', 15, '2', 6000, '2025-01-14 17:27:35', '01-2025'),
(1731, 14, 'BR003', 15, '3', 4500, '2025-01-14 17:27:38', '01-2025'),
(1732, 15, 'BR001', 15, '1', 5000, '2025-01-15 17:27:30', '01-2025'),
(1733, 15, 'BR002', 15, '2', 6000, '2025-01-15 17:27:35', '01-2025'),
(1734, 15, 'BR003', 15, '3', 4500, '2025-01-15 17:27:38', '01-2025'),
(1735, 16, 'BR001', 15, '1', 5000, '2025-01-16 17:27:30', '01-2025'),
(1736, 16, 'BR002', 15, '2', 6000, '2025-01-16 17:27:35', '01-2025'),
(1737, 16, 'BR003', 15, '3', 4500, '2025-01-16 17:27:38', '01-2025'),
(1738, 17, 'BR001', 15, '1', 5000, '2025-01-17 17:27:30', '01-2025'),
(1739, 17, 'BR002', 15, '2', 6000, '2025-01-17 17:27:35', '01-2025'),
(1740, 17, 'BR003', 15, '3', 4500, '2025-01-17 17:27:38', '01-2025'),
(1741, 18, 'BR001', 15, '1', 5000, '2025-01-18 17:27:30', '01-2025'),
(1742, 18, 'BR002', 15, '2', 6000, '2025-01-18 17:27:35', '01-2025'),
(1743, 18, 'BR003', 15, '3', 4500, '2025-01-18 17:27:38', '01-2025'),
(1744, 19, 'BR001', 15, '1', 5000, '2025-01-19 17:27:30', '01-2025'),
(1745, 19, 'BR002', 15, '2', 6000, '2025-01-19 17:27:35', '01-2025'),
(1746, 19, 'BR003', 15, '3', 4500, '2025-01-19 17:27:38', '01-2025'),
(1747, 20, 'BR001', 15, '1', 5000, '2025-01-20 17:27:30', '01-2025'),
(1748, 20, 'BR002', 15, '2', 6000, '2025-01-20 17:27:35', '01-2025'),
(1749, 20, 'BR003', 15, '3', 4500, '2025-01-20 17:27:38', '01-2025'),
(1750, 21, 'BR001', 15, '1', 5000, '2025-01-21 17:27:30', '01-2025'),
(1751, 21, 'BR002', 15, '2', 6000, '2025-01-21 17:27:35', '01-2025'),
(1752, 21, 'BR003', 15, '3', 4500, '2025-01-21 17:27:38', '01-2025'),
(1753, 22, 'BR001', 15, '1', 5000, '2025-01-22 17:27:30', '01-2025'),
(1754, 22, 'BR002', 15, '2', 6000, '2025-01-22 17:27:35', '01-2025'),
(1755, 22, 'BR003', 15, '3', 4500, '2025-01-22 17:27:38', '01-2025'),
(1756, 23, 'BR001', 15, '1', 5000, '2025-01-23 17:27:30', '01-2025'),
(1757, 23, 'BR002', 15, '2', 6000, '2025-01-23 17:27:35', '01-2025'),
(1758, 23, 'BR003', 15, '3', 4500, '2025-01-23 17:27:38', '01-2025'),
(1759, 24, 'BR001', 15, '1', 5000, '2025-01-24 17:27:30', '01-2025'),
(1760, 24, 'BR002', 15, '2', 6000, '2025-01-24 17:27:35', '01-2025'),
(1761, 24, 'BR003', 15, '3', 4500, '2025-01-24 17:27:38', '01-2025'),
(1762, 25, 'BR001', 15, '1', 5000, '2025-01-25 17:27:30', '01-2025'),
(1763, 25, 'BR002', 15, '2', 6000, '2025-01-25 17:27:35', '01-2025'),
(1764, 25, 'BR003', 15, '3', 4500, '2025-01-25 17:27:38', '01-2025'),
(1765, 26, 'BR001', 15, '1', 5000, '2025-01-26 17:27:30', '01-2025'),
(1766, 26, 'BR002', 15, '2', 6000, '2025-01-26 17:27:35', '01-2025'),
(1767, 26, 'BR003', 15, '3', 4500, '2025-01-26 17:27:38', '01-2025'),
(1768, 27, 'BR001', 15, '1', 5000, '2025-01-27 17:27:30', '01-2025'),
(1769, 27, 'BR002', 15, '2', 6000, '2025-01-27 17:27:35', '01-2025'),
(1770, 27, 'BR003', 15, '3', 4500, '2025-01-27 17:27:38', '01-2025'),
(1771, 28, 'BR001', 15, '1', 5000, '2025-01-28 17:27:30', '01-2025'),
(1772, 28, 'BR002', 15, '2', 6000, '2025-01-28 17:27:35', '01-2025'),
(1773, 28, 'BR003', 15, '3', 4500, '2025-01-28 17:27:38', '01-2025'),
(1774, 29, 'BR001', 15, '1', 5000, '2025-01-29 17:27:30', '01-2025'),
(1775, 29, 'BR002', 15, '2', 6000, '2025-01-29 17:27:35', '01-2025'),
(1776, 29, 'BR003', 15, '3', 4500, '2025-01-29 17:27:38', '01-2025'),
(1777, 30, 'BR001', 15, '1', 5000, '2025-01-30 17:27:30', '01-2025'),
(1778, 30, 'BR002', 15, '2', 6000, '2025-01-30 17:27:35', '01-2025'),
(1779, 30, 'BR003', 15, '3', 4500, '2025-01-30 17:27:38', '01-2025'),
(1780, 31, 'BR001', 15, '1', 5000, '2025-01-31 17:27:30', '01-2025'),
(1781, 31, 'BR002', 15, '2', 6000, '2025-01-31 17:27:35', '01-2025'),
(1782, 31, 'BR003', 15, '3', 4500, '2025-01-31 17:27:38', '01-2025'),
(1783, 1, 'BR001', 15, '2', 10000, '2025-01-01 17:27:30', '01-2025'),
(1784, 1, 'BR002', 15, '1', 3000, '2025-01-01 17:27:35', '01-2025'),
(1785, 1, 'BR003', 15, '1', 1500, '2025-01-01 17:27:38', '01-2025'),
(1786, 2, 'BR001', 15, '3', 15000, '2025-01-02 17:27:30', '01-2025'),
(1787, 2, 'BR002', 15, '2', 6000, '2025-01-02 17:27:35', '01-2025'),
(1788, 2, 'BR003', 15, '3', 4500, '2025-01-02 17:27:38', '01-2025'),
(1789, 3, 'BR001', 15, '1', 5000, '2025-01-03 17:27:30', '01-2025'),
(1790, 3, 'BR002', 15, '2', 6000, '2025-01-03 17:27:35', '01-2025'),
(1791, 3, 'BR003', 15, '3', 4500, '2025-01-03 17:27:38', '01-2025'),
(1792, 4, 'BR001', 15, '1', 5000, '2025-01-04 17:27:30', '01-2025'),
(1793, 4, 'BR002', 15, '2', 6000, '2025-01-04 17:27:35', '01-2025'),
(1794, 4, 'BR003', 15, '3', 4500, '2025-01-04 17:27:38', '01-2025'),
(1795, 5, 'BR001', 15, '1', 5000, '2025-01-05 17:27:30', '01-2025'),
(1796, 5, 'BR002', 15, '2', 6000, '2025-01-05 17:27:35', '01-2025'),
(1797, 5, 'BR003', 15, '3', 4500, '2025-01-05 17:27:38', '01-2025'),
(1798, 6, 'BR001', 15, '1', 5000, '2025-01-06 17:27:30', '01-2025'),
(1799, 6, 'BR002', 15, '2', 6000, '2025-01-06 17:27:35', '01-2025'),
(1800, 6, 'BR003', 15, '3', 4500, '2025-01-06 17:27:38', '01-2025'),
(1801, 7, 'BR001', 15, '1', 5000, '2025-01-07 17:27:30', '01-2025'),
(1802, 7, 'BR002', 15, '2', 6000, '2025-01-07 17:27:35', '01-2025'),
(1803, 7, 'BR003', 15, '3', 4500, '2025-01-07 17:27:38', '01-2025'),
(1804, 8, 'BR001', 15, '1', 5000, '2025-01-08 17:27:30', '01-2025'),
(1805, 8, 'BR002', 15, '2', 6000, '2025-01-08 17:27:35', '01-2025'),
(1806, 8, 'BR003', 15, '3', 4500, '2025-01-08 17:27:38', '01-2025'),
(1807, 9, 'BR001', 15, '1', 5000, '2025-01-09 17:27:30', '01-2025'),
(1808, 9, 'BR002', 15, '2', 6000, '2025-01-09 17:27:35', '01-2025'),
(1809, 9, 'BR003', 15, '3', 4500, '2025-01-09 17:27:38', '01-2025'),
(1810, 10, 'BR001', 15, '1', 5000, '2025-01-10 17:27:30', '01-2025'),
(1811, 10, 'BR002', 15, '2', 6000, '2025-01-10 17:27:35', '01-2025'),
(1812, 10, 'BR003', 15, '3', 4500, '2025-01-10 17:27:38', '01-2025'),
(1813, 11, 'BR001', 15, '1', 5000, '2025-01-11 17:27:30', '01-2025'),
(1814, 11, 'BR002', 15, '2', 6000, '2025-01-11 17:27:35', '01-2025'),
(1815, 11, 'BR003', 15, '3', 4500, '2025-01-11 17:27:38', '01-2025'),
(1816, 12, 'BR001', 15, '1', 5000, '2025-01-12 17:27:30', '01-2025'),
(1817, 12, 'BR002', 15, '2', 6000, '2025-01-12 17:27:35', '01-2025'),
(1818, 12, 'BR003', 15, '3', 4500, '2025-01-12 17:27:38', '01-2025'),
(1819, 13, 'BR001', 15, '1', 5000, '2025-01-13 17:27:30', '01-2025'),
(1820, 13, 'BR002', 15, '2', 6000, '2025-01-13 17:27:35', '01-2025'),
(1821, 13, 'BR003', 15, '3', 4500, '2025-01-13 17:27:38', '01-2025'),
(1822, 14, 'BR001', 15, '1', 5000, '2025-01-14 17:27:30', '01-2025'),
(1823, 14, 'BR002', 15, '2', 6000, '2025-01-14 17:27:35', '01-2025'),
(1824, 14, 'BR003', 15, '3', 4500, '2025-01-14 17:27:38', '01-2025'),
(1825, 15, 'BR001', 15, '1', 5000, '2025-01-15 17:27:30', '01-2025'),
(1826, 15, 'BR002', 15, '2', 6000, '2025-01-15 17:27:35', '01-2025'),
(1827, 15, 'BR003', 15, '3', 4500, '2025-01-15 17:27:38', '01-2025'),
(1828, 16, 'BR001', 15, '1', 5000, '2025-01-16 17:27:30', '01-2025'),
(1829, 16, 'BR002', 15, '2', 6000, '2025-01-16 17:27:35', '01-2025'),
(1830, 16, 'BR003', 15, '3', 4500, '2025-01-16 17:27:38', '01-2025'),
(1831, 17, 'BR001', 15, '1', 5000, '2025-01-17 17:27:30', '01-2025'),
(1832, 17, 'BR002', 15, '2', 6000, '2025-01-17 17:27:35', '01-2025'),
(1833, 17, 'BR003', 15, '3', 4500, '2025-01-17 17:27:38', '01-2025'),
(1834, 18, 'BR001', 15, '1', 5000, '2025-01-18 17:27:30', '01-2025'),
(1835, 18, 'BR002', 15, '2', 6000, '2025-01-18 17:27:35', '01-2025'),
(1836, 18, 'BR003', 15, '3', 4500, '2025-01-18 17:27:38', '01-2025'),
(1837, 19, 'BR001', 15, '1', 5000, '2025-01-19 17:27:30', '01-2025'),
(1838, 19, 'BR002', 15, '2', 6000, '2025-01-19 17:27:35', '01-2025'),
(1839, 19, 'BR003', 15, '3', 4500, '2025-01-19 17:27:38', '01-2025'),
(1840, 20, 'BR001', 15, '1', 5000, '2025-01-20 17:27:30', '01-2025'),
(1841, 20, 'BR002', 15, '2', 6000, '2025-01-20 17:27:35', '01-2025'),
(1842, 20, 'BR003', 15, '3', 4500, '2025-01-20 17:27:38', '01-2025'),
(1843, 21, 'BR001', 15, '1', 5000, '2025-01-21 17:27:30', '01-2025'),
(1844, 21, 'BR002', 15, '2', 6000, '2025-01-21 17:27:35', '01-2025'),
(1845, 21, 'BR003', 15, '3', 4500, '2025-01-21 17:27:38', '01-2025'),
(1846, 22, 'BR001', 15, '1', 5000, '2025-01-22 17:27:30', '01-2025'),
(1847, 22, 'BR002', 15, '2', 6000, '2025-01-22 17:27:35', '01-2025'),
(1848, 22, 'BR003', 15, '3', 4500, '2025-01-22 17:27:38', '01-2025'),
(1849, 23, 'BR001', 15, '1', 5000, '2025-01-23 17:27:30', '01-2025'),
(1850, 23, 'BR002', 15, '2', 6000, '2025-01-23 17:27:35', '01-2025'),
(1851, 23, 'BR003', 15, '3', 4500, '2025-01-23 17:27:38', '01-2025'),
(1852, 24, 'BR001', 15, '1', 5000, '2025-01-24 17:27:30', '01-2025'),
(1853, 24, 'BR002', 15, '2', 6000, '2025-01-24 17:27:35', '01-2025'),
(1854, 24, 'BR003', 15, '3', 4500, '2025-01-24 17:27:38', '01-2025'),
(1855, 25, 'BR001', 15, '1', 5000, '2025-01-25 17:27:30', '01-2025'),
(1856, 25, 'BR002', 15, '2', 6000, '2025-01-25 17:27:35', '01-2025'),
(1857, 25, 'BR003', 15, '3', 4500, '2025-01-25 17:27:38', '01-2025'),
(1858, 26, 'BR001', 15, '1', 5000, '2025-01-26 17:27:30', '01-2025'),
(1859, 26, 'BR002', 15, '2', 6000, '2025-01-26 17:27:35', '01-2025'),
(1860, 26, 'BR003', 15, '3', 4500, '2025-01-26 17:27:38', '01-2025'),
(1861, 27, 'BR001', 15, '1', 5000, '2025-01-27 17:27:30', '01-2025'),
(1862, 27, 'BR002', 15, '2', 6000, '2025-01-27 17:27:35', '01-2025'),
(1863, 27, 'BR003', 15, '3', 4500, '2025-01-27 17:27:38', '01-2025'),
(1864, 3, 'BR001', 15, '1', 5000, '2025-01-03 17:27:30', '01-2025'),
(1865, 3, 'BR002', 15, '2', 6000, '2025-01-03 17:27:35', '01-2025'),
(1866, 3, 'BR003', 15, '3', 4500, '2025-01-03 17:27:38', '01-2025');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(11) NOT NULL,
  `kode_pelanggan` varchar(100) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `tgl_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

-- INSERT INTO `pelanggan` (`id`, `kode_pelanggan`, `nama_pelanggan`, `alamat`, `telepon`, `tgl_input`, `tgl_update`) VALUES
-- (2, 'PL001', 'Customer UMUM', 'NON-Member', '0', '2025-01-27 16:24:14', '2025-01-29 17:05:17'),
-- (4, 'PL002', 'Steven', 'Jl, Member1', '0808', '2025-01-29 17:05:50', '2025-01-29 17:05:50');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` double DEFAULT NULL,
  `tanggal_input` datetime NOT NULL DEFAULT current_timestamp(),
  `tanggal_update` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` double DEFAULT NULL,
  `tanggal_input` datetime NOT NULL DEFAULT current_timestamp(),
  `tanggal_update` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE `satuan` (
  `id` int(11) NOT NULL,
  `kode_satuan` varchar(100) NOT NULL,
  `nama_satuan` varchar(100) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `tgl_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `satuan`
--

-- INSERT INTO `satuan` (`id`, `kode_satuan`, `nama_satuan`, `tgl_input`, `tgl_update`) VALUES
-- (1, 'S001', 'PCS', '2025-01-27 00:01:36', '2025-01-27 00:37:16'),
-- (5, 'S002', 'LUSIN', '2025-01-29 17:23:46', '2025-01-29 17:24:00');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `kode_supplier` varchar(100) NOT NULL,
  `nama_supplier` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `tgl_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

-- INSERT INTO `supplier` (`id`, `kode_supplier`, `nama_supplier`, `alamat`, `telepon`, `tgl_input`, `tgl_update`) VALUES
-- (25, 'SP001', 'PT. Kiky', 'Jl Supplier1', '08123', '2025-01-27 00:41:01', '2025-01-29 17:25:43'),
-- (28, 'SP002', 'PT. Faber Castell', 'Faber Castell', '0811', '2025-01-29 17:22:34', '2025-01-29 17:25:34'),
-- (29, 'SP003', 'PT. Joyko', 'Joyko', '0811', '2025-01-29 17:22:47', '2025-01-29 17:25:51');

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
(1, 'SmartPoS | Sistem Penjualan Smart PoS Berbasis AI', 'Universitas Siber Asia', '-', 'Kelompok 2 - IF701 - 2024/2025 Ganjil');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `kode_transaksi` varchar(100) DEFAULT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `total_transaksi` double NOT NULL,
  `tanggal_input` datetime NOT NULL DEFAULT current_timestamp(),
  `tanggal_update` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `kode_transaksi`, `id_pelanggan`, `total_transaksi`, `tanggal_input`, `tanggal_update`) VALUES
(26, '9v51iU08nJ', 2, 9500, '2025-01-29 17:28:12', '2025-01-29 17:28:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `merk`
--
ALTER TABLE `merk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `merk`
--
ALTER TABLE `merk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1867;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
