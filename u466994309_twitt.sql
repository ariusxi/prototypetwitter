
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 03/10/2018 às 18:30:01
-- Versão do Servidor: 10.1.20-MariaDB
-- Versão do PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `u466994309_twitt`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `follows`
--

CREATE TABLE IF NOT EXISTS `follows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seguidor` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Extraindo dados da tabela `follows`
--

INSERT INTO `follows` (`id`, `seguidor`, `usuario`) VALUES
(9, 1, 2),
(2, 2, 1),
(3, 3, 1),
(10, 5, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `trending`
--

CREATE TABLE IF NOT EXISTS `trending` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hashtag` varchar(100) NOT NULL,
  `mencoes` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `trending`
--

INSERT INTO `trending` (`id`, `hashtag`, `mencoes`) VALUES
(1, '#testando', 5),
(2, '#tweet', 1),
(3, '#hashtags', 1),
(4, '#thelastofus', 1),
(5, '#testedotpet', 1),
(6, '#teste', 1),
(7, '#hashtag', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tweets`
--

CREATE TABLE IF NOT EXISTS `tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `tweet` varchar(250) NOT NULL,
  `data` datetime NOT NULL,
  `timestamp` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Extraindo dados da tabela `tweets`
--

INSERT INTO `tweets` (`id`, `user_id`, `tweet`, `data`, `timestamp`) VALUES
(1, 1, '<a href="http://prototypetwitter.esy.es/hashtag/testando">#testando</a> hashtag', '2016-08-25 15:55:34', '1472151334'),
(2, 2, 'SALVE RAPAZIADA', '2016-08-25 18:21:17', '1472160077'),
(3, 1, 'shazam carai', '2016-08-25 18:21:37', '1472160097'),
(4, 1, '<a href="http://prototypetwitter.esy.es/hashtag/testando">#testando</a> o sistema de <a href="http://prototypetwitter.esy.es/hashtag/tweet">#tweet</a> com três <a href="http://prototypetwitter.esy.es/hashtag/hashtags">#hashtags</a>', '2016-08-26 15:12:16', '1472235136'),
(5, 3, 'Aehooooo carai!', '2016-08-26 15:15:21', '1472235321'),
(6, 1, '<a href="http://prototypetwitter.esy.es/hashtag/testando">#testando</a> sistema de tweet', '2016-08-30 18:52:17', '1472593937'),
(7, 1, '<a href="http://prototypetwitter.esy.es/hashtag/testando">#testando</a> isso aqui é um tweet', '2016-10-18 18:45:07', '1476823507'),
(8, 1, '<a href="http://prototypetwitter.esy.es/hashtag/testando">#testando</a> o twitter whatever', '2016-11-08 10:09:55', '1478606995'),
(9, 4, 'Oi', '2017-04-27 14:04:27', '1493312667'),
(10, 1, '<a href="http://prototypetwitter.esy.es/hashtag/thelastofus">#thelastofus</a> mudei a foto pra o joel', '2017-06-09 10:39:04', '1497015544'),
(11, 1, 'teste <a href="http://prototypetwitter.esy.es/hashtag/testedotpet">#testedotpet</a>', '2018-03-28 17:59:55', '1522270795'),
(12, 5, 'isto é um <a href="http://prototypetwitter.esy.es/hashtag/teste">#teste</a> de <a href="http://prototypetwitter.esy.es/hashtag/hashtag">#hashtag</a> do twitter', '2018-09-25 20:00:37', '1537916437');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto` varchar(200) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `email` varchar(150) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `foto`, `nome`, `nickname`, `email`, `senha`, `descricao`) VALUES
(1, '06c7219608119b85717dff52d620e480.jpg', 'Alef Felix', 'aleffelixf', 'alef.farias@etec.sp.gov.br', 'alef35924781', 'Descrição Whatever'),
(2, '5de1117787376add92d4d38f32b5be44.jpg', 'Anderson Antonio', 'and', 'anderson.antonio.olv@gmail.com', '123456', 'Olá! rs'),
(3, 'a015a281d1fc18d3ef5a49b585516eca.jpg', 'Anonymous', 'unknown', 'unknown@gmail.com', '123', '[unassigned]'),
(4, '', 'Milena Leão zanholo stavale', 'milenamih', 'milenamih@live.com', '895623', 'Oi'),
(5, '', 'Alef Felix de Farias', 'ariusxi', 'alef.developerweb@gmail.com', '123456', 'Essa é uam descrição');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
