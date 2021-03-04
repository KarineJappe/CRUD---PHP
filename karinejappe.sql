-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 04-Mar-2021 às 11:26
-- Versão do servidor: 5.7.33-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karinejappe`
--
CREATE DATABASE IF NOT EXISTS `karinejappe` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `karinejappe`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `caracteristicas`
--

CREATE TABLE `caracteristicas` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `caracteristicas`
--

INSERT INTO `caracteristicas` (`id`, `nome`) VALUES
(1, 'esporte'),
(2, 'classico'),
(3, 'turbo'),
(4, 'economico'),
(5, 'para cidade'),
(6, 'para longas viagens');

-- --------------------------------------------------------

--
-- Estrutura da tabela `caracteristicas_veiculos`
--

CREATE TABLE `caracteristicas_veiculos` (
  `idCaracteristica` int(11) NOT NULL,
  `idVeiculo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculos`
--

CREATE TABLE `veiculos` (
  `id` int(11) NOT NULL,
  `nroChassi` varchar(17) NOT NULL,
  `marca` varchar(1000) NOT NULL,
  `modelo` varchar(1000) NOT NULL,
  `ano` int(11) NOT NULL,
  `placa` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caracteristicas`
--
ALTER TABLE `caracteristicas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `caracteristicas_veiculos`
--
ALTER TABLE `caracteristicas_veiculos`
  ADD PRIMARY KEY (`idCaracteristica`,`idVeiculo`),
  ADD KEY `fk_veiculo` (`idVeiculo`);

--
-- Indexes for table `veiculos`
--
ALTER TABLE `veiculos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `caracteristicas`
--
ALTER TABLE `caracteristicas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `veiculos`
--
ALTER TABLE `veiculos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `caracteristicas_veiculos`
--
ALTER TABLE `caracteristicas_veiculos`
  ADD CONSTRAINT `fk_caracteristica` FOREIGN KEY (`idCaracteristica`) REFERENCES `caracteristicas` (`id`),
  ADD CONSTRAINT `fk_veiculo` FOREIGN KEY (`idVeiculo`) REFERENCES `veiculos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
