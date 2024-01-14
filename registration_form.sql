-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2022 at 02:27 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration_form`
--

-- --------------------------------------------------------

--
-- Table structure for table `registered_user`
--

CREATE TABLE `registered_user` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registered_user`
--

INSERT INTO `registered_user` (`id`, `name`, `email`, `phone`, `password`, `cpassword`, `token`, `status`) VALUES
(1, 'ravi', 'ravi98@ggh.com', '4564564567', '$2y$10$a4jWKJVC/boByJNmav4Se.mw3iTyuWS7TODK2a9OD.R3Ny29EZ/6u', '$2y$10$wf3QVa9ZnCkzGzIFsQVBAujak0t8oS6F8aWevWPVyv.XRwaOE1c3W', '', ''),
(3, 'sajan', 'sajan34@ff.com', '3345556664', '$2y$10$26LFL6fAOI0E.Dqms2LU5OdYJNI/Whp0OAUsEqUku4/3Rl14B6LY6', '$2y$10$UX6xLg2PGS22DNDe9D44r.VhYQYsunZXLXFaVLpbWnga/XYIooQYO', '', ''),
(4, 'gurpreet', 'gggg32@ff.ggg', '222333444', '$2y$10$/lIy4Y1K2i0k0yUt6YVPeuXb2GpZCZqzX84VifdfzuEZXL0Xx3BGq', '$2y$10$pOeuy3eiTDOjcXeVGv9Nj.H9/6jAi88CMTK223lH5FJgc0ZS6FYDu', '', ''),
(5, 'ujwal', 'ujjwal32@ff.ggg', '222333789', '$2y$10$H94Tv5se7kbu8EylKZvzNeTMoSjUKYMgISRs4uIqBlOYI0/qA3FC6', '$2y$10$WKLj5oJlHm1nY6DfTyzV1e419eJkC0dhlEe1jOXoybvp8iQWW2hom', '', ''),
(6, 'arav', 'arav32@ff.ggg', '2334445556', '$2y$10$mV8nWX8DkNR975eTEs/pRORR2nA4tsRLBhkU9Kd6jOX0jVj/5ReOW', '$2y$10$fZfev1v.frFJFSEZTKjaruVSAlHtMvrolv/K6BH5jlijlM6uA.oem', '', ''),
(7, 'meera', 'meera32@ff.ggg', '3334443334', '$2y$10$wKoaHEGR4KrOoLpBEHWObuh1XZWYgh7LIlxL9E2n5UIOMYl23NtJm', '$2y$10$yJkSV3UUrs0vKxXQCI/SVOX8hyAGi9IThKD01HXIfnlcRaNQBY2p2', '', ''),
(8, 'mario', 'mario32@ff.ggg', '3453453453', '$2y$10$Rc..qXQTsDXaSWROvdRDauHncbQ7IWNYclEuqEnlWy0F4uobEzu5u', '$2y$10$U5eUuD42qxPE9E/t4Kx7NOkGDy2LhArjK9.VSvgFK3y8.QBUX3/gS', '', ''),
(9, 'yahoo', 'yahoo32@ff.ggg', '1234512345', '$2y$10$Byp0r5PpcNKdcG2rWSQameBne1NDqVpJw9GOEYSWlKD/dkzv8UwDG', '$2y$10$YCop/mDb5kR66FNHl/tZ/eavn9IWnAo2enmg7gGAA1Q/93tojIoh2', '', ''),
(10, 'yuvraj', 'yuvraj34@ff.com', '4564564567', '$2y$10$u4AGXoYex7LQbaROevLkLOYhrrawBHX9oAhyKez0uiMCJ2yoFoi/.', '$2y$10$UO2bcMiEc2VX2aGnICYFXePRsyFLs5dwsMNzloOh3wmZge4FLCY8u', '', ''),
(11, 'jerry', 'jerry34@ff.com', '6786786789', '$2y$10$5QD.NP8Qf3si3r0538G2l.hmMgNL2LBxqTcAZ4ADZjFjEA4EwLUqa', '$2y$10$k0AbpKTeL2nEnHSO1oCEO.fNvCvBqgVb3xAk3txCn.Ki.V6LRw4hO', '', ''),
(12, 'vikas', 'vikas32@ff.ggg', '787', '$2y$10$OTvY7qIunwLHwRn0KcoGGOUuVyH6wNWc8VYDwSLl5L7dPArB5FsK6', '$2y$10$1xzNmqkJhJgwV0d/EgKOKOrDL3KbuemVSUBABPDOSVFGXf5L.b2Sm', '', ''),
(13, 'rama shankar', 'rama32@ggg.vim', '2323232322', '$2y$10$mrpeIIRAHP7OXkTLNW.8FuiLf2uhw55EbK.hoJneEl8TmVaDlcUyK', '$2y$10$mZY/GLYdsJzgV9/6DZJ/i.kwtqyutz7c.7lEm.Q18RtH2vrsGSOcm', '', ''),
(14, 'pika', 'pika23@fg.bbb', '987', '$2y$10$kZlQUI964MWhajrfCWX.WOA96R9G1Z3EYDzBKbdxYs8ljaER2lkGK', '$2y$10$3QvdgukHKr5vP87NfsJitemdr/to0zh8om/9QQcGoQZwildfPJU3G', '', ''),
(18, 'amar', 'amar34@gg.ggg', '334', '$2y$10$sPB17Cxs8Xs/gOkubjrFQOjVR8e6P.1GIYYfAAhXM.df1Xs3vwoc.', '$2y$10$SBsoOzl15KhYYpucn1SBPOL.kNZ3Tjb4SLy.qRwlOlFjelZyItF6u', '', ''),
(19, 'ramesh', 'ramesh78@gmail.cmf', '333', '$2y$10$RBKCD0L16.I.KToRjC.PdeXyDTtTeEgzgpc4Fgt0riji2fPegs1qq', '$2y$10$EFyg24JYLXfdaa4q/jP2VeM2l/x399F7yL/WP2B2DPpk5AUkMKbEO', '', ''),
(20, 'kriti', 'kriti445@jj.fff', '13121', '$2y$10$w3tTDzWZ7dpbO6CUXU5K/OQUF7g0JwNCPPKJ/1X32luVfX7FEPhjG', '$2y$10$VBKJjC19cQp48Hm34amycOzkDA/j9.0SLbpETxcV03IdxA/WhRxsm', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `id` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Middle_Name` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Aadhar_Number` varchar(255) NOT NULL,
  `Father_name` varchar(255) NOT NULL,
  `Mother_name` varchar(255) NOT NULL,
  `Trade` varchar(255) NOT NULL,
  `D_O_B` date NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Mobile_no` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Zipcode` varchar(255) NOT NULL,
  `Language` varchar(255) NOT NULL,
  `About` varchar(255) NOT NULL,
  `Alternate_Number` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `Aadhar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`id`, `Name`, `Middle_Name`, `Last_Name`, `Email`, `password`, `Aadhar_Number`, `Father_name`, `Mother_name`, `Trade`, `D_O_B`, `Gender`, `Mobile_no`, `Country`, `Address`, `Zipcode`, `Language`, `About`, `Alternate_Number`, `photo`, `Aadhar`) VALUES
(10, 'adarsh', '', 'singh', 'adaa45@gg.bom', '', '555644449999', 'ravi verma', 'rita verma', 'Electrician', '2022-06-22', 'FEMALE', '4445556667', 'India ', 'rrrrrrrrrrrrrr', '444555', 'Hindi', 'sdgfdsssssgdf', '', 'Array', 'Array'),
(11, 'ujjwal', 'kumar', 'raj', 'cvzzzbfd223@gmail.hgf', '', '555644449999', 'ravi verma', 'rita verma', 'Electrician', '2022-06-08', 'MALE', '3456677777', 'India ', '345ghdfhdfh', '333444', 'Hindi', 'dfgsdfhs', '', 'Array', 'Array');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `message` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registered_user`
--
ALTER TABLE `registered_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registered_user`
--
ALTER TABLE `registered_user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
