-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2018 at 12:34 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `snakeeater`
--

-- --------------------------------------------------------

--
-- Table structure for table `sk_admin`
--

CREATE TABLE `sk_admin` (
  `ad_id` int(11) NOT NULL,
  `ad_password` varchar(25) NOT NULL,
  `ad_username` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sk_admin`
--

INSERT INTO `sk_admin` (`ad_id`, `ad_password`, `ad_username`) VALUES
(1, 'adminadmin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `sk_admin_detail`
--

CREATE TABLE `sk_admin_detail` (
  `dtl_id` int(11) NOT NULL,
  `dtl_eth_address` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sk_admin_detail`
--

INSERT INTO `sk_admin_detail` (`dtl_id`, `dtl_eth_address`) VALUES
(1, 'asdfasdfasdfasdfasd');

-- --------------------------------------------------------

--
-- Table structure for table `sk_balance_transfer`
--

CREATE TABLE `sk_balance_transfer` (
  `bt_id` int(11) NOT NULL,
  `bt_sender_id` int(11) NOT NULL,
  `bt_reciever_id` int(11) NOT NULL,
  `bt_coin` varchar(20) NOT NULL,
  `bt_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bt_Status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sk_coin_value`
--

CREATE TABLE `sk_coin_value` (
  `c_id` int(11) NOT NULL,
  `c_btc_value` varchar(25) NOT NULL,
  `c_eth_value` varchar(25) NOT NULL,
  `snk_coins` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sk_coin_value`
--

INSERT INTO `sk_coin_value` (`c_id`, `c_btc_value`, `c_eth_value`, `snk_coins`) VALUES
(1, '0.5000', '1.5000', '498');

-- --------------------------------------------------------

--
-- Table structure for table `sk_country`
--

CREATE TABLE `sk_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sk_country`
--

INSERT INTO `sk_country` (`country_id`, `country_name`) VALUES
(1, 'Pakistan'),
(2, 'United Arab Emirate');

-- --------------------------------------------------------

--
-- Table structure for table `sk_dashboard_news`
--

CREATE TABLE `sk_dashboard_news` (
  `dn_id` int(11) NOT NULL,
  `dn_news` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sk_dashboard_news`
--

INSERT INTO `sk_dashboard_news` (`dn_id`, `dn_news`) VALUES
(1, 'Pre ICO');

-- --------------------------------------------------------

--
-- Table structure for table `sk_eth`
--

CREATE TABLE `sk_eth` (
  `eth_id` int(11) NOT NULL,
  `eth_coin` varchar(25) NOT NULL,
  `eth_user_address` varchar(500) NOT NULL,
  `eth_user_id` int(11) NOT NULL,
  `eth_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `eth_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sk_pay_method`
--

CREATE TABLE `sk_pay_method` (
  `pm_id` int(11) NOT NULL,
  `pm_name` varchar(35) NOT NULL,
  `pm_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sk_pay_method`
--

INSERT INTO `sk_pay_method` (`pm_id`, `pm_name`, `pm_status`) VALUES
(1, 'ETH', 1),
(2, 'BTC', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sk_purchasing_history`
--

CREATE TABLE `sk_purchasing_history` (
  `ph_id` int(11) NOT NULL,
  `ph_user_id` int(11) NOT NULL,
  `ph_pm` int(11) NOT NULL,
  `ph_snk_amount` varchar(20) NOT NULL,
  `ph_other_coin` varchar(20) NOT NULL,
  `ph_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ph_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sk_purchasing_history`
--

INSERT INTO `sk_purchasing_history` (`ph_id`, `ph_user_id`, `ph_pm`, `ph_snk_amount`, `ph_other_coin`, `ph_date`, `ph_status`) VALUES
(14, 15, 1, '2', '3.00000', '2017-12-24 12:41:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sk_status`
--

CREATE TABLE `sk_status` (
  `s_id` int(11) NOT NULL,
  `s_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sk_status`
--

INSERT INTO `sk_status` (`s_id`, `s_status`) VALUES
(1, 'Active'),
(2, 'Block');

-- --------------------------------------------------------

--
-- Table structure for table `sk_support`
--

CREATE TABLE `sk_support` (
  `sp_id` int(11) NOT NULL,
  `sp_sender` varchar(5) NOT NULL,
  `sp_reciever` varchar(5) NOT NULL,
  `sp_subject` varchar(25) NOT NULL,
  `sp_message` varchar(1800) NOT NULL,
  `sp_status` int(11) NOT NULL DEFAULT '0',
  `sp_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sk_transaction_history`
--

CREATE TABLE `sk_transaction_history` (
  `th_id` int(11) NOT NULL,
  `th_coin` varchar(25) NOT NULL,
  `th_pmethod` int(11) NOT NULL,
  `th_user_id` int(11) NOT NULL,
  `th_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `th_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sk_user`
--

CREATE TABLE `sk_user` (
  `u_id` int(11) NOT NULL,
  `u_name` varchar(50) NOT NULL,
  `u_contact` varchar(11) NOT NULL,
  `u_email` varchar(150) NOT NULL,
  `u_dob` date NOT NULL,
  `u_country` int(11) NOT NULL,
  `u_gender` int(11) NOT NULL,
  `u_password` varchar(25) NOT NULL,
  `u_referral_code` varchar(15) DEFAULT NULL,
  `u_sponsor` varchar(11) DEFAULT NULL,
  `u_joining_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `u_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sk_user`
--

INSERT INTO `sk_user` (`u_id`, `u_name`, `u_contact`, `u_email`, `u_dob`, `u_country`, `u_gender`, `u_password`, `u_referral_code`, `u_sponsor`, `u_joining_date`, `u_status`) VALUES
(15, 'Zain', '', 'officialarea@gmail.com', '0000-00-00', 0, 0, 'zainzain', 'offi3078', NULL, '2017-12-24 12:36:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sk_user_snk_coin`
--

CREATE TABLE `sk_user_snk_coin` (
  `usc_id` int(11) NOT NULL,
  `usc_user_id` int(11) NOT NULL,
  `usc_coin` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sk_user_snk_coin`
--

INSERT INTO `sk_user_snk_coin` (`usc_id`, `usc_user_id`, `usc_coin`) VALUES
(9, 15, '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sk_admin`
--
ALTER TABLE `sk_admin`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `sk_admin_detail`
--
ALTER TABLE `sk_admin_detail`
  ADD PRIMARY KEY (`dtl_id`);

--
-- Indexes for table `sk_balance_transfer`
--
ALTER TABLE `sk_balance_transfer`
  ADD PRIMARY KEY (`bt_id`);

--
-- Indexes for table `sk_coin_value`
--
ALTER TABLE `sk_coin_value`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `sk_country`
--
ALTER TABLE `sk_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `sk_dashboard_news`
--
ALTER TABLE `sk_dashboard_news`
  ADD PRIMARY KEY (`dn_id`);

--
-- Indexes for table `sk_eth`
--
ALTER TABLE `sk_eth`
  ADD PRIMARY KEY (`eth_id`);

--
-- Indexes for table `sk_pay_method`
--
ALTER TABLE `sk_pay_method`
  ADD PRIMARY KEY (`pm_id`);

--
-- Indexes for table `sk_purchasing_history`
--
ALTER TABLE `sk_purchasing_history`
  ADD PRIMARY KEY (`ph_id`);

--
-- Indexes for table `sk_status`
--
ALTER TABLE `sk_status`
  ADD UNIQUE KEY `s_id` (`s_id`);

--
-- Indexes for table `sk_support`
--
ALTER TABLE `sk_support`
  ADD PRIMARY KEY (`sp_id`);

--
-- Indexes for table `sk_transaction_history`
--
ALTER TABLE `sk_transaction_history`
  ADD PRIMARY KEY (`th_id`);

--
-- Indexes for table `sk_user`
--
ALTER TABLE `sk_user`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `sk_user_snk_coin`
--
ALTER TABLE `sk_user_snk_coin`
  ADD PRIMARY KEY (`usc_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sk_admin`
--
ALTER TABLE `sk_admin`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sk_admin_detail`
--
ALTER TABLE `sk_admin_detail`
  MODIFY `dtl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sk_balance_transfer`
--
ALTER TABLE `sk_balance_transfer`
  MODIFY `bt_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sk_coin_value`
--
ALTER TABLE `sk_coin_value`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sk_country`
--
ALTER TABLE `sk_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sk_dashboard_news`
--
ALTER TABLE `sk_dashboard_news`
  MODIFY `dn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sk_eth`
--
ALTER TABLE `sk_eth`
  MODIFY `eth_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sk_pay_method`
--
ALTER TABLE `sk_pay_method`
  MODIFY `pm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sk_purchasing_history`
--
ALTER TABLE `sk_purchasing_history`
  MODIFY `ph_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `sk_status`
--
ALTER TABLE `sk_status`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sk_support`
--
ALTER TABLE `sk_support`
  MODIFY `sp_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sk_transaction_history`
--
ALTER TABLE `sk_transaction_history`
  MODIFY `th_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sk_user`
--
ALTER TABLE `sk_user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `sk_user_snk_coin`
--
ALTER TABLE `sk_user_snk_coin`
  MODIFY `usc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
