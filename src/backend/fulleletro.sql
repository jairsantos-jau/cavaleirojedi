-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 15-Dez-2020 às 06:52
-- Versão do servidor: 5.6.13
-- versão do PHP: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `fulleletro`
--
CREATE DATABASE IF NOT EXISTS `fulleletro` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `fulleletro`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(60) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `categoria`) VALUES
(1, 'Geladeira'),
(2, 'Fogão'),
(3, 'Microondas'),
(4, 'Lava Roupas'),
(5, 'Lava Louças');

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

CREATE TABLE IF NOT EXISTS `comentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `email` varchar(30) NOT NULL,
  `msg` varchar(300) DEFAULT NULL,
  `dia` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`id`, `nome`, `email`, `msg`, `dia`) VALUES
(1, 'Guilherme', 'gui@gmail.com', 'ola,vcs aceitam boletos', '2020-12-15 00:38:05'),
(2, 'joaquim', 'joaquim@ig.com', 'ola sou o joaqui kk', '2020-12-15 00:32:44'),
(3, 'Pereira', 'pereira@contato.com', 'vcs tem franquias', '2020-12-15 01:24:10'),
(4, '', '', '', '2020-12-15 03:42:23');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE IF NOT EXISTS `produtos` (
  `id_produto` int(11) NOT NULL AUTO_INCREMENT,
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(60) NOT NULL,
  `descricao_produto` varchar(200) NOT NULL,
  `preco_real` char(20) NOT NULL,
  `preco_desc` char(20) NOT NULL,
  `imagem` varchar(200) NOT NULL,
  `marca` varchar(20) NOT NULL,
  PRIMARY KEY (`id_produto`),
  UNIQUE KEY `imagem` (`imagem`),
  KEY `id_categoria` (`id_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `id_categoria`, `categoria`, `descricao_produto`, `preco_real`, `preco_desc`, `imagem`, `marca`) VALUES
(1, 1, 'geladeira', 'Geladeira/Refrigerador Side By Side Frost Free Inox Electrolux - 127V (504L)', '2.877,00', '1.449,90', 'geladeira.jpg', 'Electrolux'),
(2, 1, 'geladeira', 'Refrigerador Electrolux Duplex DC35A - 127V (260L)', '5.849,01', '1.689,00', 'geladeira1.jpg', 'Electrolux'),
(3, 1, 'geladeira', 'Refrigerador Consul Biplex - 127V (334L)', '2.157,38', '1.753,84', 'geladeira2.jpg', 'Consul'),
(4, 2, 'fogao', 'Fogão 05 Bocas Mesa de Vidro - Electrolux - 127V', '1.659,39', '1.357,67', 'fogao.jpg', 'Electrolux'),
(5, 2, 'fogao', 'Fogão 4 Bocas Electrolux - Automático com Forno (70L)', '579,67', '493,28', 'fogao1.jpg', 'Electrolux'),
(6, 3, 'microondas', 'Forno de Micro-ondas - Prata - 127V (27 L)', '563,67', '498,20', 'microondas.jpg', 'Philco'),
(7, 3, 'microondas', 'Micro-ondas Philco - 127V (30L)', '554,67', '489,27', 'microondas1.jpg', 'Philco'),
(8, 3, 'microondas', 'Micro-ondas Brastemp Inox - 127V (20L)', '554,67', '489,27', 'microondas2.jpg', 'Brastemp'),
(9, 4, 'lavaRoupa', 'Lavadora Electrolux - Branca - 220V (13 Kg)', '2.084,62', '1.489,99', 'lavroupa.jpg', 'Electrolux'),
(10, 4, 'lavaRoupa', 'Lavadora de Roupas Brastemp com Turbo Agitação - 220V (11kg)', '2.056,97', '1.719,99', 'lavroupa1.jpg', 'Brastemp'),
(11, 5, 'lavaLouca', 'Lava-Louças Inox 14 Serviços - 220V', '3.548,79', '2.233,25', 'lavlouça.jpg', 'Inox'),
(12, 5, 'lavaLouca', 'Lava-louças 8 Serviços Brastemp Ative! - 220V', '2.368,79', '1.804,85', 'lavlouça1.jpg', 'Brastemp');

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
