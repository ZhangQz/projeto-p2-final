CREATE DATABASE  IF NOT EXISTS `ruc` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ruc`;

-- phpMyAdmin SQL Dump
-- version 4.3.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 11-Jan-2017 às 19:49
-- Versão do servidor: 5.6.22
-- PHP Version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `RUC`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluguer`
--

CREATE TABLE IF NOT EXISTS `aluguer` (
  `idcliente` int(11) NOT NULL,
  `idequipamento` int(11) NOT NULL DEFAULT '0',
  `idkit` int(11) NOT NULL DEFAULT '0',
  `data_inicio` varchar(100) DEFAULT NULL,
  `data_fim` varchar(100) DEFAULT NULL,
  `preço_total` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE IF NOT EXISTS `autor` (
`idautor` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
`idcategoria` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nome`) VALUES
(1, 'Academia'),
(2, 'Universidade'),
(3, 'Coimbra'),
(4, 'Nacional'),
(5, 'Cultura'),
(6, 'Desporto'),
(7, 'Internacional'),
(8, 'Crónica');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria_noticia`
--

CREATE TABLE IF NOT EXISTS `categoria_noticia` (
`idcategoria` int(11) NOT NULL,
  `idnoticia` int(11) NOT NULL,
  `idautor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
`idcliente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE IF NOT EXISTS `dia` (
`iddia` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`iddia`, `nome`) VALUES
(1, 'Domingo'),
(2, 'Segunda-Feira'),
(3, 'Terça-Feira'),
(4, 'Quarta-Feira'),
(5, 'Quinta-Feira'),
(6, 'Sexta-Feira'),
(7, 'Sábado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamento`
--

CREATE TABLE IF NOT EXISTS `equipamento` (
`idequipamento` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` text,
  `marca` varchar(80) DEFAULT NULL,
  `quantidade` text NOT NULL,
  `preco` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamento_kit`
--

CREATE TABLE IF NOT EXISTS `equipamento_kit` (
`idequipamento` int(11) NOT NULL,
  `idkit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `grelha`
--

CREATE TABLE IF NOT EXISTS `grelha` (
  `idgrelha` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `iddia` int(11) NOT NULL,
  `idprograma` int(11) NOT NULL,
  `idlocutor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kit`
--

CREATE TABLE IF NOT EXISTS `kit` (
`idkit` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` text,
  `preco` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `locutor`
--

CREATE TABLE IF NOT EXISTS `locutor` (
`idlocutor` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `locutor`
--

INSERT INTO `locutor` (`idlocutor`, `nome`) VALUES
(1, 'Afonso Leitão'),
(2, 'Afonso Maceda'),
(3, 'Alexandre Valinho Gigas\r\n'),
(4, 'Ana Luís'),
(5, 'André Quaresma'),
(6, 'André Tejo'),
(7, 'António Apolinário Lourenço'),
(8, 'António Pinheiro'),
(9, 'António Ramires'),
(10, 'Avelino Américo'),
(11, 'Bruno Ferreira'),
(12, 'Bruno Marques'),
(13, 'Carla Lopes'),
(14, 'Carlos Braz'),
(15, 'Catarina Nunes'),
(16, 'Catarina Ribeiro'),
(17, 'Daniel Lopes'),
(18, 'Daniela Silva'),
(19, 'David Rodrigues'),
(20, 'Departamento de Informação'),
(21, 'Departamento de Programação'),
(22, 'Diogo Ferreira'),
(23, 'Diogo Santos'),
(24, 'Délio Nunes'),
(25, 'Elísio Sousa'),
(26, 'Fausto da Silva'),
(27, 'Fernando Alves'),
(28, 'Fernando Cabrita'),
(29, 'Fernando Ferreira'),
(30, 'Filipe Cravo'),
(31, 'Filipe Furtado'),
(32, 'Fábio Borges'),
(33, 'Fábio Lopes'),
(34, 'Fábio Nóbrega'),
(35, 'Germana Fernandes'),
(36, 'Gonçalo Falcão'),
(37, 'Guilherme Queiroz'),
(38, 'Gustavo Blanco'),
(39, 'Hugo Gomes'),
(40, 'Joana Ferreira\r\n'),
(41, 'Joana Moura Ferreira'),
(42, 'José Almeida'),
(43, 'José Guilherme'),
(44, 'José Santiago'),
(45, 'João André Oliveira'),
(46, 'João Barros'),
(47, 'João Batista'),
(48, 'João Fonseca'),
(49, 'João Gaspar'),
(50, 'João Moreira'),
(51, 'João Pedro Gonçalves'),
(52, 'João Picanço'),
(53, 'João Silva'),
(54, 'João Sousa'),
(55, 'L.A.'),
(56, 'Margarida Teixeira'),
(57, 'Nuno Ávila'),
(58, 'Paulo R. Santos'),
(59, 'Paulo Santos'),
(60, 'Paulo Sebastião'),
(61, 'Pedro Cosme'),
(62, 'Pedro Leal'),
(63, 'Pedro Nora'),
(64, 'Pedro Roquinho'),
(65, 'Pedro Serra'),
(66, 'Renan Alves'),
(67, 'Ricardo Carvalho'),
(68, 'Ricardo Sardo'),
(69, 'Rita Leonor Barqueiro'),
(70, 'Roberto Mortágua'),
(71, 'Rodrigo Dimas'),
(72, 'Rui Ferreira'),
(73, 'Rui Oliveira'),
(74, 'Rui Pedro'),
(75, 'Rui Seco'),
(76, 'Rui Teixeira'),
(77, 'Sara Mendes'),
(78, 'Serafim Duarte'),
(79, 'Sonya Pereira'),
(80, 'Teresa Mariano'),
(81, 'Tiago Bessa'),
(82, 'Tiago Schwabl'),
(83, 'Vasco Otero');

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE IF NOT EXISTS `noticia` (
`idnoticia` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `artigo` varchar(500) NOT NULL,
  `extra` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produção`
--

CREATE TABLE IF NOT EXISTS `produção` (
`idprodução` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` text,
  `preco` float NOT NULL DEFAULT '0',
  `preço hora` float NOT NULL,
  `idequipamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `programa`
--

CREATE TABLE IF NOT EXISTS `programa` (
`idprograma` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` text,
  `link` text,
  `horario` datetime(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `programa`
--

INSERT INTO `programa` (`idprograma`, `nome`, `descricao`, `link`, `horario`) VALUES
(1, '-0', '(Menos Zero)', NULL, '0000-00-00 00:00:00.0000'),
(2, '1111', NULL, NULL, '0000-00-00 00:00:00.0000'),
(3, 'A Word na Street', NULL, NULL, '0000-00-00 00:00:00.0000'),
(4, 'Alvorada', NULL, NULL, '0000-00-00 00:00:00.0000'),
(5, 'Automático para o Povo', NULL, NULL, '0000-00-00 00:00:00.0000'),
(6, 'Binário', NULL, NULL, '0000-00-00 00:00:00.0000'),
(7, 'Bling Beat', NULL, NULL, '0000-00-00 00:00:00.0000'),
(8, 'Brasil', NULL, NULL, '0000-00-00 00:00:00.0000'),
(9, 'Cadeira de Cinema', NULL, NULL, '0000-00-00 00:00:00.0000'),
(10, 'Café Olé', NULL, NULL, '0000-00-00 00:00:00.0000'),
(11, 'Candomblé', NULL, NULL, '0000-00-00 00:00:00.0000'),
(12, 'Capitão América', NULL, NULL, '0000-00-00 00:00:00.0000'),
(13, 'Chill Pill', NULL, NULL, '0000-00-00 00:00:00.0000'),
(14, 'Chronos', NULL, NULL, '0000-00-00 00:00:00.0000'),
(15, 'Claudio Gentile', NULL, NULL, '0000-00-00 00:00:00.0000'),
(16, 'Clepsidra', NULL, NULL, '0000-00-00 00:00:00.0000'),
(17, 'Compacto Informativo', NULL, NULL, '0000-00-00 00:00:00.0000'),
(18, 'Compasso', NULL, NULL, '0000-00-00 00:00:00.0000'),
(19, 'Contrabando Latino', NULL, NULL, '0000-00-00 00:00:00.0000'),
(20, 'Cover de Bruxelas', NULL, NULL, '0000-00-00 00:00:00.0000'),
(21, 'Culturama', NULL, NULL, '0000-00-00 00:00:00.0000'),
(22, 'Destino & Fortuna', NULL, NULL, '0000-00-00 00:00:00.0000'),
(23, 'Drip', NULL, NULL, '0000-00-00 00:00:00.0000'),
(24, 'Dubplate', NULL, NULL, '0000-00-00 00:00:00.0000'),
(25, 'Elevador Copacabana', NULL, NULL, '0000-00-00 00:00:00.0000'),
(26, 'Fahrenheit 107.9', NULL, NULL, '0000-00-00 00:00:00.0000'),
(27, 'Framework', NULL, NULL, '0000-00-00 00:00:00.0000'),
(28, 'GeekFreak', NULL, NULL, '0000-00-00 00:00:00.0000'),
(29, 'Gold Diggers', NULL, NULL, '0000-00-00 00:00:00.0000'),
(30, 'Gondwana', NULL, NULL, '0000-00-00 00:00:00.0000'),
(31, 'Hipocicloide', NULL, NULL, '0000-00-00 00:00:00.0000'),
(32, 'Hipoglote', NULL, NULL, '0000-00-00 00:00:00.0000'),
(33, 'Indiexposto', NULL, NULL, '0000-00-00 00:00:00.0000'),
(34, 'Jazzmatazz', NULL, NULL, '0000-00-00 00:00:00.0000'),
(35, 'Kalundu', NULL, NULL, '0000-00-00 00:00:00.0000'),
(36, 'Kepler', NULL, NULL, '0000-00-00 00:00:00.0000'),
(37, 'LSD', NULL, NULL, '0000-00-00 00:00:00.0000'),
(38, 'Livros que os Pariu', NULL, NULL, '0000-00-00 00:00:00.0000'),
(39, 'Locomotiva', NULL, NULL, '0000-00-00 00:00:00.0000'),
(40, 'Loja de Discos', NULL, NULL, '0000-00-00 00:00:00.0000'),
(41, 'Magia Negra', NULL, NULL, '0000-00-00 00:00:00.0000'),
(42, 'Mala Educación', NULL, NULL, '0000-00-00 00:00:00.0000'),
(43, 'Mellow', NULL, NULL, '0000-00-00 00:00:00.0000'),
(44, 'Minerva', NULL, NULL, '0000-00-00 00:00:00.0000'),
(45, 'Música Moderna', NULL, NULL, '0000-00-00 00:00:00.0000'),
(46, 'Narita', NULL, NULL, '0000-00-00 00:00:00.0000'),
(47, 'Noticiário', NULL, NULL, '0000-00-00 00:00:00.0000'),
(48, 'Null', NULL, NULL, '0000-00-00 00:00:00.0000'),
(49, 'O meu Disco Azul', NULL, NULL, '0000-00-00 00:00:00.0000'),
(50, 'Orelha Extra', NULL, NULL, '0000-00-00 00:00:00.0000'),
(51, 'Pangrama', NULL, NULL, '0000-00-00 00:00:00.0000'),
(52, 'Peta-Zetas', NULL, NULL, '0000-00-00 00:00:00.0000'),
(53, 'Portuguese Pedro Radio Show', NULL, NULL, '0000-00-00 00:00:00.0000'),
(54, 'Preto no Branco', NULL, NULL, '0000-00-00 00:00:00.0000'),
(55, 'Prognósticos', NULL, NULL, '0000-00-00 00:00:00.0000'),
(56, 'Pé de Atleta', NULL, NULL, '0000-00-00 00:00:00.0000'),
(57, 'Radio Killed the Video Star', NULL, NULL, '0000-00-00 00:00:00.0000'),
(58, 'Randomizer', NULL, NULL, '0000-00-00 00:00:00.0000'),
(59, 'Re-Make', NULL, NULL, '0000-00-00 00:00:00.0000'),
(60, 'Re-Model', NULL, NULL, '0000-00-00 00:00:00.0000'),
(61, 'Ricochete', NULL, NULL, '0000-00-00 00:00:00.0000'),
(62, 'RoadMap', NULL, NULL, '0000-00-00 00:00:00.0000'),
(63, 'Ruclub', NULL, NULL, '0000-00-00 00:00:00.0000'),
(64, 'Sala de Pânico', NULL, NULL, '0000-00-00 00:00:00.0000'),
(65, 'Santos da Casa', NULL, NULL, '0000-00-00 00:00:00.0000'),
(66, 'Singularidades', NULL, NULL, '0000-00-00 00:00:00.0000'),
(67, 'Sonnenstrahl Club Music', NULL, NULL, '0000-00-00 00:00:00.0000'),
(68, 'Spinning Jenny', NULL, NULL, '0000-00-00 00:00:00.0000'),
(69, 'Spinoff', NULL, NULL, '0000-00-00 00:00:00.0000'),
(70, 'Suburbano', NULL, NULL, '0000-00-00 00:00:00.0000'),
(71, 'Síntese Informativa', NULL, NULL, '0000-00-00 00:00:00.0000'),
(72, 'Tabacaria', NULL, NULL, '0000-00-00 00:00:00.0000'),
(73, 'Tema Livre', NULL, NULL, '0000-00-00 00:00:00.0000'),
(74, 'Tempo e Espaço', NULL, NULL, '0000-00-00 00:00:00.0000'),
(75, 'Terreiro da Erva', NULL, NULL, '0000-00-00 00:00:00.0000'),
(76, 'The Devil Blues', NULL, NULL, '0000-00-00 00:00:00.0000'),
(77, 'The Music Makers', NULL, NULL, '0000-00-00 00:00:00.0000'),
(78, 'The Office', NULL, NULL, '0000-00-00 00:00:00.0000'),
(79, 'Twee América', NULL, NULL, '0000-00-00 00:00:00.0000'),
(80, 'U-Quem?', NULL, NULL, '0000-00-00 00:00:00.0000'),
(81, 'Whisky com Água', NULL, NULL, '0000-00-00 00:00:00.0000');

-- --------------------------------------------------------

--
-- Estrutura da tabela `programa_locutor`
--

CREATE TABLE IF NOT EXISTS `programa_locutor` (
`idprograma` int(11) NOT NULL,
  `idlocutor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluguer`
--
ALTER TABLE `aluguer`
 ADD PRIMARY KEY (`idcliente`,`idequipamento`,`idkit`), ADD KEY `idequipamento` (`idequipamento`), ADD KEY `idkit` (`idkit`);

--
-- Indexes for table `autor`
--
ALTER TABLE `autor`
 ADD PRIMARY KEY (`idautor`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
 ADD PRIMARY KEY (`idcategoria`);

--
-- Indexes for table `categoria_noticia`
--
ALTER TABLE `categoria_noticia`
 ADD PRIMARY KEY (`idcategoria`,`idnoticia`), ADD KEY `idautor` (`idautor`), ADD KEY `idnoticia` (`idnoticia`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
 ADD PRIMARY KEY (`idcliente`);

--
-- Indexes for table `dia`
--
ALTER TABLE `dia`
 ADD PRIMARY KEY (`iddia`);

--
-- Indexes for table `equipamento`
--
ALTER TABLE `equipamento`
 ADD PRIMARY KEY (`idequipamento`);

--
-- Indexes for table `equipamento_kit`
--
ALTER TABLE `equipamento_kit`
 ADD PRIMARY KEY (`idequipamento`,`idkit`), ADD KEY `idkit` (`idkit`);

--
-- Indexes for table `grelha`
--
ALTER TABLE `grelha`
 ADD PRIMARY KEY (`idgrelha`), ADD KEY `idlocutor` (`idlocutor`), ADD KEY `idprograma` (`idprograma`), ADD KEY `iddia` (`iddia`);

--
-- Indexes for table `kit`
--
ALTER TABLE `kit`
 ADD PRIMARY KEY (`idkit`);

--
-- Indexes for table `locutor`
--
ALTER TABLE `locutor`
 ADD PRIMARY KEY (`idlocutor`);

--
-- Indexes for table `noticia`
--
ALTER TABLE `noticia`
 ADD PRIMARY KEY (`idnoticia`);

--
-- Indexes for table `produção`
--
ALTER TABLE `produção`
 ADD PRIMARY KEY (`idprodução`), ADD KEY `idequipamento` (`idequipamento`);

--
-- Indexes for table `programa`
--
ALTER TABLE `programa`
 ADD PRIMARY KEY (`idprograma`);

--
-- Indexes for table `programa_locutor`
--
ALTER TABLE `programa_locutor`
 ADD PRIMARY KEY (`idprograma`,`idlocutor`), ADD KEY `idlocutor` (`idlocutor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autor`
--
ALTER TABLE `autor`
MODIFY `idautor` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `categoria_noticia`
--
ALTER TABLE `categoria_noticia`
MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dia`
--
ALTER TABLE `dia`
MODIFY `iddia` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `equipamento`
--
ALTER TABLE `equipamento`
MODIFY `idequipamento` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `equipamento_kit`
--
ALTER TABLE `equipamento_kit`
MODIFY `idequipamento` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kit`
--
ALTER TABLE `kit`
MODIFY `idkit` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `locutor`
--
ALTER TABLE `locutor`
MODIFY `idlocutor` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `noticia`
--
ALTER TABLE `noticia`
MODIFY `idnoticia` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `produção`
--
ALTER TABLE `produção`
MODIFY `idprodução` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `programa`
--
ALTER TABLE `programa`
MODIFY `idprograma` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `programa_locutor`
--
ALTER TABLE `programa_locutor`
MODIFY `idprograma` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `aluguer`
--
ALTER TABLE `aluguer`
ADD CONSTRAINT `aluguer_ibfk_1` FOREIGN KEY (`idcliente`) REFERENCES `clientes` (`idcliente`),
ADD CONSTRAINT `aluguer_ibfk_2` FOREIGN KEY (`idequipamento`) REFERENCES `equipamento` (`idequipamento`),
ADD CONSTRAINT `aluguer_ibfk_3` FOREIGN KEY (`idkit`) REFERENCES `kit` (`idkit`);

--
-- Limitadores para a tabela `categoria_noticia`
--
ALTER TABLE `categoria_noticia`
ADD CONSTRAINT `categoria_noticia_ibfk_1` FOREIGN KEY (`idautor`) REFERENCES `autor` (`idautor`),
ADD CONSTRAINT `categoria_noticia_ibfk_2` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`),
ADD CONSTRAINT `categoria_noticia_ibfk_3` FOREIGN KEY (`idnoticia`) REFERENCES `noticia` (`idnoticia`);

--
-- Limitadores para a tabela `equipamento_kit`
--
ALTER TABLE `equipamento_kit`
ADD CONSTRAINT `equipamento_kit_ibfk_1` FOREIGN KEY (`idequipamento`) REFERENCES `equipamento` (`idequipamento`),
ADD CONSTRAINT `equipamento_kit_ibfk_2` FOREIGN KEY (`idkit`) REFERENCES `kit` (`idkit`);

--
-- Limitadores para a tabela `grelha`
--
ALTER TABLE `grelha`
ADD CONSTRAINT `grelha_ibfk_1` FOREIGN KEY (`iddia`) REFERENCES `dia` (`iddia`),
ADD CONSTRAINT `grelha_ibfk_2` FOREIGN KEY (`idprograma`) REFERENCES `programa` (`idprograma`),
ADD CONSTRAINT `grelha_ibfk_3` FOREIGN KEY (`idlocutor`) REFERENCES `locutor` (`idlocutor`);

--
-- Limitadores para a tabela `programa_locutor`
--
ALTER TABLE `programa_locutor`
ADD CONSTRAINT `programa_locutor_ibfk_1` FOREIGN KEY (`idprograma`) REFERENCES `programa` (`idprograma`),
ADD CONSTRAINT `programa_locutor_ibfk_2` FOREIGN KEY (`idlocutor`) REFERENCES `locutor` (`idlocutor`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
