-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15-Jan-2017 às 23:06
-- Versão do servidor: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ruc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluguer`
--

CREATE TABLE `aluguer` (
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

CREATE TABLE `autor` (
  `idautor` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`idautor`, `nome`) VALUES
(1, 'Camila Vidal\r\n'),
(2, 'João André Oliveira'),
(3, 'André Pinheiro'),
(4, 'Ricardo Vaz'),
(5, 'Isabel Simões'),
(6, 'Fabíola Pretel'),
(7, 'Tomás Nogueira'),
(9, 'Diogo Resende'),
(10, 'Guilherme Queiroz'),
(11, 'Catarina Antunes'),
(12, 'João Baptista');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `categoria_noticia` (
  `idcategoria` int(11) NOT NULL,
  `idnoticia` int(11) NOT NULL,
  `idautor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `idcliente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `iddia` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `equipamento` (
  `idequipamento` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` text,
  `marca` varchar(80) DEFAULT NULL,
  `quantidade` text NOT NULL,
  `preco` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `equipamento`
--

INSERT INTO `equipamento` (`idequipamento`, `nome`, `descricao`, `marca`, `quantidade`, `preco`) VALUES
(1, 'PA HK POWER WORKS', 'Só pode ser requisitada com acompanhamento de um Técnico da RUC', NULL, '1', 60),
(2, 'Coluna Activa Yamaha MSR 400 ', 'Com Tripés; Só pode ser requisitada com acompanhamento de um Técnico da RUC', NULL, '2', 50),
(3, 'PA Acustica', '', NULL, '2', 60),
(4, 'Mesa Yamaha MG 12/4', '12 Canais', NULL, '1', 20),
(5, 'Mesa Numark DJ', '4 Canais', NULL, '1', 20),
(6, 'DI 20', '', NULL, '1', 5),
(7, 'DI BSS AR-133', '', NULL, '1', 15),
(8, 'Equalizador', '', NULL, '1', 80),
(9, 'Preamp Stereo', 'Para Giradiscos', NULL, '1', 5),
(10, 'Fonte de Phantom Power Dupla', '', NULL, '1', 10),
(11, 'Leitor de CD Sony', NULL, NULL, '1', 10),
(12, 'Microfono Shure SM 57', NULL, NULL, '1', 10),
(13, 'Microfone Shure SM 58', NULL, NULL, '1', 10),
(14, 'Kit Microfones Bateria', NULL, NULL, '1', 30),
(15, 'Tripé/Suporte de mesa para microfone ', NULL, NULL, '1', 3),
(16, 'Headphone Superlux HD 681', NULL, NULL, '1', 3),
(17, 'Cabo RCA, Cabo XLR, Cabo Jack', NULL, NULL, '1', 2),
(18, 'Adaptadores Diversos', NULL, NULL, '1', 1),
(19, 'Extensões e Fichas Triplas ', NULL, NULL, '', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamento_kit`
--

CREATE TABLE `equipamento_kit` (
  `idequipamento` int(11) NOT NULL,
  `idkit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `grelha`
--

CREATE TABLE `grelha` (
  `id_grelha` int(11) NOT NULL,
  `nome` varchar(100) CHARACTER SET latin1 NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `id_dia` int(11) NOT NULL,
  `id_programa` int(11) NOT NULL,
  `id_locutor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `grelha_dia`
--

CREATE TABLE `grelha_dia` (
  `grelha_rel_dia` int(11) NOT NULL,
  `id_grelha` int(11) DEFAULT NULL,
  `id_dia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `grelha_locutor`
--

CREATE TABLE `grelha_locutor` (
  `id_rel_grelha_locutor` int(11) NOT NULL,
  `id_grelha` int(11) DEFAULT NULL,
  `id_locutor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `grelha_programa`
--

CREATE TABLE `grelha_programa` (
  `id_rel_grelha_programa` int(11) NOT NULL,
  `id_grelha` int(11) DEFAULT NULL,
  `id_programa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kit`
--

CREATE TABLE `kit` (
  `idkit` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` text,
  `preco` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `locutor`
--

CREATE TABLE `locutor` (
  `idlocutor` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `noticia` (
  `idnoticia` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `artigo` varchar(500) NOT NULL,
  `extra` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia_autor`
--

CREATE TABLE `noticia_autor` (
  `idnoticia` int(11) NOT NULL,
  `idautor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produção`
--

CREATE TABLE `produção` (
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

CREATE TABLE `programa` (
  `idprograma` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` text,
  `link` text,
  `horario` datetime(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `programa_locutor` (
  `idprograma` int(11) NOT NULL,
  `idlocutor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `nome` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 NOT NULL,
  `email` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluguer`
--
ALTER TABLE `aluguer`
  ADD PRIMARY KEY (`idcliente`,`idequipamento`,`idkit`),
  ADD KEY `idequipamento` (`idequipamento`),
  ADD KEY `idkit` (`idkit`);

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
  ADD PRIMARY KEY (`idcategoria`,`idnoticia`),
  ADD KEY `idautor` (`idautor`),
  ADD KEY `idnoticia` (`idnoticia`);

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
  ADD PRIMARY KEY (`idequipamento`,`idkit`),
  ADD KEY `idkit` (`idkit`);

--
-- Indexes for table `grelha`
--
ALTER TABLE `grelha`
  ADD PRIMARY KEY (`id_grelha`),
  ADD KEY `idlocutor` (`id_locutor`),
  ADD KEY `idprograma` (`id_programa`),
  ADD KEY `iddia` (`id_dia`);

--
-- Indexes for table `grelha_dia`
--
ALTER TABLE `grelha_dia`
  ADD PRIMARY KEY (`grelha_rel_dia`);

--
-- Indexes for table `grelha_locutor`
--
ALTER TABLE `grelha_locutor`
  ADD PRIMARY KEY (`id_rel_grelha_locutor`);

--
-- Indexes for table `grelha_programa`
--
ALTER TABLE `grelha_programa`
  ADD PRIMARY KEY (`id_rel_grelha_programa`);

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
-- Indexes for table `noticia_autor`
--
ALTER TABLE `noticia_autor`
  ADD PRIMARY KEY (`idnoticia`),
  ADD KEY `idautor` (`idautor`);

--
-- Indexes for table `produção`
--
ALTER TABLE `produção`
  ADD PRIMARY KEY (`idprodução`),
  ADD KEY `idequipamento` (`idequipamento`);

--
-- Indexes for table `programa`
--
ALTER TABLE `programa`
  ADD PRIMARY KEY (`idprograma`);

--
-- Indexes for table `programa_locutor`
--
ALTER TABLE `programa_locutor`
  ADD PRIMARY KEY (`idprograma`,`idlocutor`),
  ADD KEY `idlocutor` (`idlocutor`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autor`
--
ALTER TABLE `autor`
  MODIFY `idautor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
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
  MODIFY `iddia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `equipamento`
--
ALTER TABLE `equipamento`
  MODIFY `idequipamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `equipamento_kit`
--
ALTER TABLE `equipamento_kit`
  MODIFY `idequipamento` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `grelha_dia`
--
ALTER TABLE `grelha_dia`
  MODIFY `grelha_rel_dia` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `grelha_locutor`
--
ALTER TABLE `grelha_locutor`
  MODIFY `id_rel_grelha_locutor` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `grelha_programa`
--
ALTER TABLE `grelha_programa`
  MODIFY `id_rel_grelha_programa` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kit`
--
ALTER TABLE `kit`
  MODIFY `idkit` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `locutor`
--
ALTER TABLE `locutor`
  MODIFY `idlocutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
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
  MODIFY `idprograma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
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
  ADD CONSTRAINT `grelha_ibfk_1` FOREIGN KEY (`id_dia`) REFERENCES `dia` (`iddia`),
  ADD CONSTRAINT `grelha_ibfk_2` FOREIGN KEY (`id_programa`) REFERENCES `programa` (`idprograma`),
  ADD CONSTRAINT `grelha_ibfk_3` FOREIGN KEY (`id_locutor`) REFERENCES `locutor` (`idlocutor`);

--
-- Limitadores para a tabela `programa_locutor`
--
ALTER TABLE `programa_locutor`
  ADD CONSTRAINT `programa_locutor_ibfk_1` FOREIGN KEY (`idprograma`) REFERENCES `programa` (`idprograma`),
  ADD CONSTRAINT `programa_locutor_ibfk_2` FOREIGN KEY (`idlocutor`) REFERENCES `locutor` (`idlocutor`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
