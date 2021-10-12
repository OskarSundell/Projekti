-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 12.10.2021 klo 11:17
-- Palvelimen versio: 5.7.11
-- PHP Version: 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testi`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `tuotteet2`
--

CREATE TABLE `tuotteet2` (
  `id` int(11) NOT NULL,
  `Tuotteet` varchar(255) NOT NULL,
  `Hinta` varchar(255) NOT NULL,
  `Kuvat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `tuotteet2`
--

INSERT INTO `tuotteet2` (`id`, `Tuotteet`, `Hinta`, `Kuvat`) VALUES
(19, 'NZXT Capsule USB Microphone', '150â‚¬', 'https://jwimg.azureedge.net/product/0/4/350805-b351847_300x300.jpg'),
(20, 'Tehokas OMEN-pelikone', '1369â‚¬', 'https://media.power-cdn.net/images/h-877c2df7ba9c01c18dd79daf58945ddc/products/1164775/1164775_5_900x900_t_g.webp'),
(21, 'SAMSUNG ODYSSEY G5 C27G56 27" QHD PELINÃ„YTTÃ–', '370â‚¬', 'https://media.power-cdn.net/images/h-d364354fbb38af5c92e3f6503775fbb4/products/1134801/1134801_15_1200x1200_t_g.webp'),
(22, 'Logitech PRO X SUPERLIGHT Wireless', '149â‚¬', 'https://jwimg.azureedge.net/product/8/4/315585-b821563_300x300.jpg'),
(23, 'IPHONE 13 PRO MAX 512 GT KULTA', '1629â‚¬', 'https://media.power-cdn.net/images/h-9842eec63074aee67c31712590a87f78/products/1204183/1204183_10_1200x1200_t_g.webp'),
(26, 'OnePlus Nord 2 5G Ã¤lypuhelin 12/256GB', '499â‚¬', 'https://www.gigantti.fi/image/dv_web_D180001002785237/335452/oneplus-nord-2-5g-alypuhelin-12256gb-harmaa.jpg?$prod_all4one$'),
(58, 'Usb mikrofoni', '149 Euroa', 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/74/2_308471-550x400.jpeg'),
(59, 'Traeger FSC kirsikka pellettisÃ¤kki, 9 kg', '22,90 euroa', 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/51/2_674917-506x668.jpeg');

-- --------------------------------------------------------

--
-- Rakenne taululle `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nimi` varchar(255) NOT NULL,
  `sposti` varchar(255) NOT NULL,
  `salasana` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `users`
--

INSERT INTO `users` (`id`, `nimi`, `sposti`, `salasana`) VALUES
(1, 'Oskar sundell', 'Oskar.sundell@gmail.com', '8767t67'),
(2, 'Anders', 'anders.wikberg@kpedu.fi', 'koasdkoas'),
(7, 'big@arska', 'big.arska@gmail.com', 'arska123$2y$10$RbBfcAtNysUuYEaFl5jJb..RD1xG.hJZvNwYOYBsQe/I1T1tkWu.i');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tuotteet2`
--
ALTER TABLE `tuotteet2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tuotteet2`
--
ALTER TABLE `tuotteet2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
