-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2019 at 02:48 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsoft`
--

-- --------------------------------------------------------

--
-- Table structure for table `balancesheet`
--

CREATE TABLE `balancesheet` (
  `id` varchar(20) NOT NULL,
  `name` varchar(80) NOT NULL,
  `persons` int(11) NOT NULL,
  `adultnon` int(11) NOT NULL,
  `scmnon` int(11) NOT NULL,
  `scfnon` int(11) NOT NULL,
  `childnon` int(11) NOT NULL,
  `adultac` int(11) NOT NULL,
  `scmac` int(11) NOT NULL,
  `scfac` int(11) NOT NULL,
  `childac` int(11) NOT NULL,
  `paid` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `remark` varchar(200) NOT NULL,
  `value` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`remark`, `value`) VALUES
('Train', 0),
('BeMathBus', 12300),
('G1TPTYFood', 30000),
('buyid a4', 243);

-- --------------------------------------------------------

--
-- Table structure for table `fare`
--

CREATE TABLE `fare` (
  `adult` int(11) NOT NULL,
  `yid` varchar(60) NOT NULL,
  `package` varchar(60) NOT NULL,
  `scm` int(11) NOT NULL,
  `scf` int(11) NOT NULL,
  `child` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fare`
--

INSERT INTO `fare` (`adult`, `yid`, `package`, `scm`, `scf`, `child`) VALUES
(13800, 'dpy2019', 'AC', 11500, 10950, 13200),
(9100, 'dpy2019', 'NONAC', 8250, 8050, 8200),
(10750, 'dpr2019', 'P1NONAC', 9850, 9550, 3000),
(16800, 'dpr2019', 'P2AC', 15950, 15550, 0),
(20390, 'dpr2019', 'P3AC', 18020, 17115, 0),
(18720, 'dpr2019', 'P4AC', 16850, 15535, 0),
(15850, 'dpr2019', 'P5AC', 15050, 14750, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fareac`
--

CREATE TABLE `fareac` (
  `adult` int(11) NOT NULL,
  `scm` int(11) NOT NULL,
  `scf` int(11) NOT NULL,
  `child` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `farenonac`
--

CREATE TABLE `farenonac` (
  `adult` int(11) NOT NULL,
  `scm` int(11) NOT NULL,
  `scf` int(11) NOT NULL,
  `child` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pilgrim`
--

CREATE TABLE `pilgrim` (
  `id` varchar(20) NOT NULL,
  `name` varchar(80) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `ac` varchar(60) NOT NULL,
  `dob` int(11) DEFAULT NULL,
  `charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pilgrim`
--

INSERT INTO `pilgrim` (`id`, `name`, `age`, `gender`, `phone`, `ac`, `dob`, `charge`) VALUES
('dpr2017Vand', 'Pradip Pawar', 22, 'A', 'null', 'P1NONAC', 0, 0),
('dpr2017Vand', '', 22, 'null', '', 'null', 0, 0),
('dpr2017Vand', '', 22, 'null', '', 'null', 0, 0),
('dpr2017Vand', '', 22, 'null', '', 'null', 0, 0),
('dpr2017Vand', '', 22, 'null', '', 'null', 0, 0),
('dpr2017Vand', '', 22, 'null', '', 'null', 0, 0),
('dpr2017Vand', '', 22, 'null', '', 'null', 0, 0),
('dpr2017Vand', '', 22, 'null', '', 'null', 0, 0),
('dpr2017Vand', '', 22, 'null', '', 'null', 0, 0),
('dpr2017Vand', '', 22, 'null', '', 'null', 0, 0),
('dpr2017Vand', '', 22, 'null', '', 'null', 0, 0),
('dpr2017Vand', '', 22, 'null', '', 'null', 0, 0),
('dpr2017Vand', '', 22, 'null', '', 'null', 0, 0);

--
-- Triggers `pilgrim`
--
DELIMITER $$
CREATE TRIGGER `after_insert` AFTER INSERT ON `pilgrim` FOR EACH ROW begin

insert into train (id,name,gender) values (new.id,new.name,new.gender);

end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `id` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `train1` varchar(6) NOT NULL DEFAULT '00000',
  `train2` varchar(6) NOT NULL DEFAULT '00000',
  `train3` varchar(6) NOT NULL DEFAULT '00000',
  `train4` varchar(6) NOT NULL DEFAULT '00000',
  `tirupati` varchar(100) NOT NULL DEFAULT '0',
  `rameswaram` varchar(200) NOT NULL DEFAULT '0',
  `kanyakumari` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`id`, `name`, `gender`, `train1`, `train2`, `train3`, `train4`, `tirupati`, `rameswaram`, `kanyakumari`) VALUES
('dpr2017Vand', 'Pradip Pawar', 'A', 'S0405', 'S0656', 'S0607', 'S0551', 'D8D', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `trainamt`
--

CREATE TABLE `trainamt` (
  `id` varchar(30) NOT NULL,
  `train1` int(11) NOT NULL DEFAULT 0,
  `train2` int(11) NOT NULL DEFAULT 0,
  `train3` int(11) NOT NULL DEFAULT 0,
  `train4` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainamt`
--

INSERT INTO `trainamt` (`id`, `train1`, `train2`, `train3`, `train4`) VALUES
('1', 1, 1, 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
