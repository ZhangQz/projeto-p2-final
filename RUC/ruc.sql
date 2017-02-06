-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 06-Fev-2017 às 12:54
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
CREATE DATABASE IF NOT EXISTS `ruc` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ruc`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluguer`
--

DROP TABLE IF EXISTS `aluguer`;
CREATE TABLE `aluguer` (
  `id_aluguer` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `idequipamento` int(11) DEFAULT '0',
  `idkit` int(11) DEFAULT '0',
  `data_inicio` varchar(100) DEFAULT NULL,
  `data_fim` varchar(100) DEFAULT NULL,
  `preço_total` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

DROP TABLE IF EXISTS `autor`;
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

DROP TABLE IF EXISTS `categoria`;
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

DROP TABLE IF EXISTS `categoria_noticia`;
CREATE TABLE `categoria_noticia` (
  `idcategoria` int(11) NOT NULL,
  `idnoticia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categoria_noticia`
--

INSERT INTO `categoria_noticia` (`idcategoria`, `idnoticia`) VALUES
(1, 4),
(1, 5),
(1, 6),
(2, 1),
(2, 2),
(2, 3),
(3, 7),
(3, 8),
(3, 9),
(4, 10),
(4, 11),
(4, 12),
(5, 13),
(5, 14),
(5, 15),
(6, 16),
(6, 17),
(6, 18),
(7, 19),
(7, 20),
(7, 21),
(7, 22),
(8, 23),
(8, 24),
(8, 25),
(8, 25);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

DROP TABLE IF EXISTS `dia`;
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

DROP TABLE IF EXISTS `equipamento`;
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

DROP TABLE IF EXISTS `equipamento_kit`;
CREATE TABLE `equipamento_kit` (
  `equipamento_rel_kit` int(11) NOT NULL,
  `idequipamento` int(11) NOT NULL,
  `idkit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `grelha`
--

DROP TABLE IF EXISTS `grelha`;
CREATE TABLE `grelha` (
  `idgrelha` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `grelhageral`
--

DROP TABLE IF EXISTS `grelhageral`;
CREATE TABLE `grelhageral` (
  `iddia` int(11) NOT NULL,
  `programa` int(11) NOT NULL,
  `idgrelha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `grelhageral`
--

INSERT INTO `grelhageral` (`iddia`, `programa`, `idgrelha`) VALUES
(1, 27, 1),
(1, 22, 1),
(1, 9, 1),
(1, 78, 1),
(1, 61, 1),
(1, 59, 1),
(1, 25, 1),
(1, 72, 1),
(1, 18, 1),
(1, 33, 1),
(1, 65, 1),
(1, 20, 1),
(1, 73, 1),
(2, 71, 1),
(2, 4, 1),
(2, 10, 1),
(2, 66, 1),
(2, 11, 1),
(2, 26, 1),
(2, 30, 1),
(2, 21, 1),
(2, 72, 1),
(2, 52, 1),
(2, 47, 1),
(2, 36, 1),
(2, 65, 1),
(2, 43, 1),
(2, 55, 1),
(2, 17, 1),
(2, 1, 1),
(2, 14, 1),
(2, 72, 1),
(2, 32, 1),
(3, 71, 1),
(3, 58, 1),
(3, 41, 1),
(3, 28, 1),
(3, 75, 1),
(3, 70, 1),
(3, 79, 1),
(3, 51, 1),
(3, 38, 1),
(4, 71, 1),
(4, 12, 1),
(4, 34, 1),
(4, 78, 1),
(4, 52, 1),
(4, 7, 1),
(4, 2, 1),
(4, 35, 1),
(4, 77, 1),
(4, 63, 1),
(5, 57, 1),
(5, 41, 1),
(5, 69, 1),
(5, 29, 1),
(5, 70, 1),
(5, 44, 1),
(5, 49, 1),
(5, 37, 1),
(5, 31, 1),
(6, 53, 1),
(6, 8, 1),
(6, 21, 1),
(6, 52, 1),
(6, 3, 1),
(6, 56, 1),
(6, 16, 1),
(6, 68, 1),
(6, 39, 1),
(6, 74, 1),
(6, 48, 1),
(7, 5, 1),
(7, 45, 1),
(7, 71, 1),
(7, 42, 1),
(7, 40, 1),
(7, 72, 1),
(7, 82, 1),
(7, 83, 1),
(7, 65, 1),
(7, 64, 1),
(7, 73, 1),
(7, 46, 1),
(7, 15, 1),
(7, 24, 1),
(7, 13, 1),
(7, 6, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `grelha_dia`
--

DROP TABLE IF EXISTS `grelha_dia`;
CREATE TABLE `grelha_dia` (
  `grelha_rel_dia` int(11) NOT NULL,
  `id_grelha` int(11) DEFAULT NULL,
  `id_dia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `grelha_locutor`
--

DROP TABLE IF EXISTS `grelha_locutor`;
CREATE TABLE `grelha_locutor` (
  `id_rel_grelha_locutor` int(11) NOT NULL,
  `id_grelha` int(11) DEFAULT NULL,
  `id_locutor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `grelha_programa`
--

DROP TABLE IF EXISTS `grelha_programa`;
CREATE TABLE `grelha_programa` (
  `id_rel_grelha_programa` int(11) NOT NULL,
  `id_grelha` int(11) DEFAULT NULL,
  `id_programa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `kit`
--

DROP TABLE IF EXISTS `kit`;
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

DROP TABLE IF EXISTS `locutor`;
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

DROP TABLE IF EXISTS `noticia`;
CREATE TABLE `noticia` (
  `idnoticia` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `artigo` varchar(500) NOT NULL,
  `data_noticia` date NOT NULL,
  `extra` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`idnoticia`, `titulo`, `artigo`, `data_noticia`, `extra`) VALUES
(1, 'CÓDIGO DA PRAXE DA UC ATUALIZADO', 'O Código da Praxe mudou. Janeiro traz novas alterações, que vêm sobretudo atualizar e explicar as práticas da praxe académica da Universidade de Coimbra (UC). O Dux da UC, João Luís Jesus, diz que uma das principais revisões debruça-se sobre a utilização de insígnias pessoais por parte dos estudantes de mestrado integrado. Segundo o estudante, insígnias como as fitas e os grelos devem ser usadas no mesmo regime que as licenciaturas.\r\n\r\nAlém desta alteração, o Dux diz que a vistoria do documento ', '2017-01-11', ''),
(2, 'SEMANA ABERTA DAS REPÚBLICAS CONTRA O REGIME FUNDACIONAL', 'As repúblicas de Coimbra estão a preparar uma semana aberta de consciencialização relativamente ao modelo fundacional na Universidade de Coimbra.\r\n\r\nA ideia surgiu em reunião do Conselho de Repúblicas no passado mês de dezembro. A semana aberta está a ser preparada para fevereiro.\r\n\r\nO programa Minerva de ontem foi dedicado à semana e contou com a presença de um elemento do Conselho de Repúblicas, Tiago Mendes.\r\n\r\nAlém de pretender informar os estudantes, as repúblicas querem lutar abertamente c', '2017-01-06', ''),
(3, 'HELPIE, A APP SOLIDÁRIA CRIADA POR ESTUDANTES DA UC', 'Na cadeira de Processos de Gestão e Inovação do curso de Engenharia Informática da UC os trabalhos não ficam só para o professor. Várias ‘apps’ foram feitas para a avaliação dos estudantes e hoje damos a conhecer a Helpie, um instrumento de ajuda – como o nome indica -, com duas vertentes distintas. A primeira é um sistema simples de troca, de um utilizador para outro, como explica um dos criadores, Pedro Caseiro.\r\n\r\nO segundo plano é o de voluntariado. No caso de instituições de solidariedade p', '2017-01-06', ''),
(4, 'REABERTURA DAS CANTINAS AMARELAS COM MUITAS NOVIDADES', 'As cantinas amarelas da Universidade de Coimbra (UC), encerradas em 2013 devido à falta de condições de higiene e qualidade, continuam em obras profundas de requalificação. Segundo a administradora dos Serviços de Ação Social da UC (SASUC), Regina Bento, o espaço estará pronto ainda antes do final de 2017 e os estudantes podem esperar algumas surpresas. Polivalência, alternativa e cultura são algumas das palavras-chave dentro da nova dinâmica que se pretende que as “amarelas” venham a assumir.\r\n', '2017-01-13', ''),
(5, '450 MIL VISITARAM A UC EM 2016, 93% FORAM ESTRANGEIROS', '350 mil visitantes anuais para 450 mil – foi este o salto que a Universidade de Coimbra (UC) deu de 2015 para 2016.\r\n\r\nOs franceses são os turistas que mais conheceram a UC durante o ano de 2016, cerca de 99 mil em 450 milhares. Seguidos pelos espanhóis, italianos e brasileiros. São estes os 4 países donde provêm metade dos visitantes da universidade durante o ano passado.\r\n\r\nOs portugueses apenas aparecem no quinto lugar, imediatamente depois dos alemães. Estes correspondem a uma percentagem, d', '2017-01-13', ''),
(6, 'GRUPO DE ESTUDANTES DA UC CRIA “TELL ME ALL ABOUT IT” PARA TE AJUDAR A CANDIDATAR A ERASMUS', 'Um grupo de estudantes da licenciatura de Engenharia Informática da Faculdade de Ciências e Tecnologia da Universidade de Coimbra (FCTUC), desenvolveu um site dedicado aos alunos que pretendem usufruir do Programa de Mobilidade Erasmus.\r\n\r\n“Tell Me All About It” é o nome do projecto que pretende fornecer informações sobre os processos de candidatura a programas de mobilidade e ainda contribuir com testemunhos daqueles que já tiveram a oportunidade de vivenciar esta experiência. Estivemos à conve', '2017-01-09', ''),
(7, 'PCP CONTRA O FECHO DO POSTO DA GNR DE TAVEIRO', 'O posto de GNR de Taveiro pode vir a encerrar de vez. A notícia não é nova, já por diversas vezes, no passado, haviam sido conhecidos indícios da intenção de fechar o posto. A Junta da União de freguesias de Taveiro, Ameal e Arzila tem realizado esforços no sentido de resolver várias questões, nomeadamente em relação aos problemas de humidade que afetam as instalações de Taveiro, no entanto o encerramento destas pode estar para vir.\r\n\r\nDe acordo com Vladimir Vale do PCP de Coimbra, sabe-se agora', '2017-01-13', ''),
(8, 'MACHADO CONSIDERA POUCO EXEQUÍVEL CONSTRUIR MATERNIDADE JUNTO AOS HUC', 'A saúde, por diversos motivos, esteve ontem em destaque na reunião de Câmara Municipal de Coimbra. No final da reunião, o presidente Manuel Machado esteve à conversa com os jornalistas sobre alguns pontos do debate.\r\n\r\nA circulação e o estacionamento junto dos Hospitais da Universidade de Coimbra (HUC) precisa de melhoramentos. Manuel Machado explicou que a solução escolhida foi a do loteamento por ser a mais exequível.\r\n\r\nO pedido de loteamento vai reorganizar os arruamentos e definir o que é d', '2017-01-10', ''),
(9, 'AAC PARTICIPA NA DESPEDIDA DE MÁRIO SOARES', 'O último ato público de despedida de Mário Soares percorreu hoje Lisboa. Na Assembleia da República a Assoicação Académica de Coimbra (AAC) fez-se representar pelo presidente cessante José Dias e pelo eleito Alexandre Amado. Falámos com os dois sobre este dia. A conversa sublinhou, em todos os momentos, o papel de Soares na construção da democracia em Portugal. A luta contra a ditadura leva a que a Academia o homenageie, diz José Dias.\r\n\r\nA ligação próxima com a associação de estudantes é outro ', '2017-01-10', ''),
(10, 'FCT COM CANDIDATURAS ABERTAS PARA ESTÁGIOS NA NASA', 'A Fundação para a Ciência e Tecnologia (FCT) tem candidaturas abertas para estágios na NASA. A diretora do Departamento de Relações Internacionais, Ana Quartin, falou à RUC sobre o projeto. Os estudantes escolhidos vão ser integrados em doze programas da agência espacial norte-americana.\r\n\r\nA representante da FCT explica as condições de candidatura.\r\n\r\nOs estudantes têm também que estar a desenvolver projetos nas áreas de interesse do estágio.\r\n\r\nO melhor local para consultar os requisitos para ', '2017-01-11', ''),
(11, 'MORREU MÁRIO SOARES', 'Terminou deste modo um largo capítulo da história de Portugal:\r\n\r\nO diretor clínico do Hospital da Cruz Vermelha, Manuel Pedro Magalhães, foi o responsável pelo anúncio. Internado desde 13 de dezembro, Mário Soares morreu aos 92 anos. Com breves sinais de melhoria no estado de saúde, um agravamento da situação clínica na véspera de Natal obrigou ao regresso à Unidade dos Cuidados Intensivos que não mais deixou.\r\n\r\nA curta declaração de Manuel Pedro Magalhães destacou a constante presença dos fil', '2017-01-07', ''),
(12, 'REITOR DA UNIVERSIDADE DO MINHO DEFENDE REGIME FUNDACIONAL', 'As repúblicas de Coimbra estão a preparar uma semana aberta de consciencialização sobre o Regime Fundacional. O Conselho de Repúblicas reuniu em dezembro e decidiu assumir-se contra o modelo de gestão que pode vir a ser aplicado à Universidade de Coimbra. A semana aberta deve acontecer em fevereiro e hoje deu-se o primeiro encontro de preparação. Na altura em que se forma um novo movimento contra a aplicação do regime à UC, ouvimos as declarações do reitor da Universidade do Minho, António Cunha', '2017-01-06', ''),
(13, 'ÚLTIMA REPRESENTAÇÃO DA ÓPERA “PIMPINONE” NO TAGV ESTE SÁBADO', 'A Ritornello – Associação Cultural leva ao palco do Teatro Académico de Gil Vicente (TAGV) a ópera “Pimpinone” no próximo sábado, dia 14, ás 18 horas. Esta é a última representação na cidade, depois a associação leva o espetáculo em digressão pelo país. A ópera teve a sua última récita em Coimbra em outubro de 2016, o diretor musical, António Ramos afirma que esta atuação “vai ser ainda melhor”.\r\n\r\nUma ópera cómica, em três atos, para toda a família, cantada em português com música do músico e c', '2017-01-13', ''),
(14, 'COLECTIVO 84 APRESENTA “SÓCRATES TEM DE MORRER – PARTE I” NO TAGV', 'A peça sobe a palco do Teatro Académico de Gil Vicente (TAGV), esta quinta-feira, pelas 21h30. O TAGV estreia a nova coprodução com o Teatro Municipal São Luiz de Lisboa e o Centro Cultural Vila Flor de Guimarães.\r\n\r\nO autor do texto e encenador, Mickaël de Oliveira, enumerou para a RUC as facetas da personalidade do filósofo Grego em destaque.\r\n\r\nSegundo a sinopse o espetáculo conta “os últimos três dias de Sócrates na prisão”. Durante um mês Sócrates pensou escreveu poesia e recebeu a visita d', '2017-01-12', ''),
(15, 'SALÃO BRAZIL RECEBE “ARQUIVO VIVO É ANARQUIVO”', 'Acontece amanhã no Salão Brazil a apresentação “Arquivo Vivo é Anarquivo”. O projeto Arquivo Digital da Po-ex em parceria com o Serviço Educativo JACC promove três atividades durante o dia de amanhã no Salão Brazil. O responsável pela programação do espaço, José Miguel, sublinha a importância do projeto.\r\n\r\nUma oficina coordenada por Américo Rodrigues marca o início da programação. Com “As vozes da Voz” pretende-se que os participantes explorem as potencialidades expressivas da voz. O representa', '2017-01-06', ''),
(17, 'MANCHA NEGRA EM CAMPO PELOS SEM ABRIGO DE COIMBRA', 'A Mancha Negra promoveu ontem um jantar solidário dirigido à comunidade menos favorecida da cidade de Coimbra. A iniciativa resulta numa parceria entre a claque academista e a associação Integrar, e reuniu cerca de 75 pessoas na sede da Mancha Negra, no Pavilhão Jorge Anjinhos. Este é já o sexto jantar solidário promovido pela histórica claque da briosa. A ementa contou com sopa de legumes, feijoada, sumos e água. A RUC falou com o presidente da histórica claque de apoio à Briosa. João Paulo Fer', '2016-12-28', ''),
(18, 'AAC/OAF DISCUTE EM ASSEMBLEIA GERAL EXTRAORDINÁRIA ESTRATÉGIAS DE FINANCIAMENTO', 'A Associação Académica de Coimbra/Organismo Autónomo de Futebol (AAC/OAF), convocou os sócios da instituição para uma assembleia geral extraordinária a realizar esta noite pelas 20h30 no Estádio Cidade de Coimbra. Estivemos à conversa com o presidente da Mesa da Assembleia Geral, João Vasco Ribeiro, que nos fez a antevisão.\r\n\r\nA “Missão Briosa” convidava os sócios a, através de uma participação financeira, adquirirem a antiga sede do clube, situada junto aos Arcos do Jardim, pelo valor de um mil', '2016-12-16', ''),
(19, 'AAAC/OAF DEFRONTA PENAFIEL PARA A TAÇA DE PORTUGAL', 'A Associação Académica de Coimbra Organismo Autónomo de Futebol (AAC/OAF) recebe daqui a pouco, às 18 horas, a equipa do Penafiel a contar para os oitavos de final da Taça de Portugal (TP). Durante a tarde de ontem o treinador dos estudantes fez, em conferência de imprensa, a antevisão da partida. Costinha percebe o entusiasmo gerado pelo sorteio mas garante que os jogadores estão de sobreaviso.\r\n\r\nAté esta etapa da competição os estudantes tiveram de ultrapassar a equipa do Gouveia e os primodi', '2016-12-14', ''),
(20, 'MANUEL PIRES DA ROCHA: “OBAMA FOI UM MAU PRESIDENTE”', 'O comentário à atualidade do Alvorada de hoje (5), quinta-feira, esteve a cargo do diretor do Conservatório de Música de Coimbra e deputado municipal na Câmara de Coimbra, Manuel Pires da Rocha.\r\n\r\nO aumento do salário mínimo nacional para 557 euros entrou em vigor este mês. O aumento de 27 euros que corresponde a uma subida em cadeia de 5% relativamente a 2016 e 16% desde 2014, com a descida constante do desemprego, contraria as teorias económicas que concluem que uma subida dos salários implic', '2017-01-06', ''),
(21, 'RUI ANTUNES: “O MUNDO ESTÁ A CONSTRUIR A REALIDADE DO MEDO”', 'No Alvorada de hoje (4), quarta-feira, o comentário à atualidade esteve a cargo do Presidente do Instituto Politécnico de Coimbra, Rui Antunes.\r\n\r\nA federação dos sindicatos dos funcionários públicos convocou uma greve para o dia 3 de fevereiro dos trabalhadores não docentes das escolas e jardins de infância em protesto contra a precariedade laboral, dentre as reinvidicações a mais urgente segundo os funcionários seria o reajuste dos salários. Rui Antunes realça a importância de rever a situação', '2017-01-04', ''),
(22, 'ELISABETE RAMOS: “OBAMA IMPUTA À RÚSSIA INTERFERÊNCIAS SIGNIFICATIVAS NAS ELEIÇÕES”', 'O último Alvorada de 2016 decorreu esta sexta-feira (30) e contou com o comentário à atualidade da docente da Faculdade de Economia da Universidade de Coimbra (FEUC), Elisabete Ramos.\r\n\r\nDe acordo com a Associação de Bolseiros de Investigação Científica, bolseiros de doutoramento e pós-doutoramento a darem aulas gratuitamente é prática comum. A Universidade do Porto contratou, no ano de 2016, 40 professores sem remuneração e a Universidade Nova de Lisboa tem voluntários a dar aulas. Elisabete Ra', '2016-12-30', ''),
(23, 'RUC @ AMEN DUNES | ZDB | 24.11.2016', 'A voz de Amen Dunes enche tudo.\r\n\r\nSozinho em palco, com uma guitarra, polo aberto e fato de treino. Sozinho, acústico, num mundo pós 9 de Novembro. Sozinho, sem banda, ano e meio após o seu último concerto, ano e meio entre Nova Iorque e LA, e agora semana e meia em Lisboa, em gravações do novo disco.\r\n\r\n\r\nSozinho, voou entre Roma e Lisboa no início da semana. Como habitual, para disfarçar a ansiedade que sente em viagens de avião, viu um documentário sobre música. Este sobre Townes Van Zandt. ', '2016-11-28', 'assets/images/slide_1'),
(24, 'RUC @ NORBERTO LOBO APRESENTA “MUXAMA” | TEATRO MARIA MATOS | 23.11.2016', 'Imerso em breu, uma luz débil pulsa no centro do palco. Adivinham-se os vislumbres do guitarrista que o ocupa sozinho. No meio de todo um labirinto de pedais, de guitarra semiacústica ao colo, Norberto Lobo estreia no Maria Matos “Muxama”, o seu último longa duração, editado este ano pela three:four. Perante um teatro cheio, mostra-nos porque continua a ser um dos mais valiosos músicos que cresceram por cá.\r\n\r\nChamar a Norberto Lobo um guitarrista será limitá-lo a uma imagética que nunca ocupou ', '2016-11-28', 'assets/images/slide_2'),
(25, 'RUC @ SEMIBREVE 2016', 'Se 5 minutos a percorrer as ruas de Braga são suficientes para alguém se sentir em casa ou acolhido, então o que dizer quando ocorre ao mesmo tempo um evento (já com estatuto de culto) de música exploratória e arte digital?! Acrescentando ainda o facto de ser verão no meio do outono (28 a 30 de Outubro). Falamos de algo que cada vez mais dispensa apresentações, o festival Semibreve. Este ano acrescentando a belíssima Capela Imaculada do Seminário Menor aos habituais locais de performance (Theatr', '2016-11-12', 'assets/images/slide_3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia_autor`
--

DROP TABLE IF EXISTS `noticia_autor`;
CREATE TABLE `noticia_autor` (
  `idnoticia` int(11) NOT NULL,
  `idautor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `noticia_autor`
--

INSERT INTO `noticia_autor` (`idnoticia`, `idautor`) VALUES
(1, 2),
(2, 8),
(3, 2),
(4, 1),
(5, 1),
(6, 10),
(7, 1),
(8, 8),
(9, 2),
(10, 2),
(11, 8),
(12, 2),
(13, 7),
(14, 7),
(15, 5),
(16, 11),
(17, 10),
(18, 10),
(19, 4),
(20, 5),
(21, 4),
(22, 6),
(23, 6),
(24, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfil`
--

DROP TABLE IF EXISTS `perfil`;
CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ler` tinyint(1) NOT NULL,
  `inserir` tinyint(1) NOT NULL,
  `apagar` tinyint(1) NOT NULL,
  `editar` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `nome`, `ler`, `inserir`, `apagar`, `editar`) VALUES
(1, 'admin', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produção`
--

DROP TABLE IF EXISTS `produção`;
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

DROP TABLE IF EXISTS `programa`;
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

DROP TABLE IF EXISTS `programa_locutor`;
CREATE TABLE `programa_locutor` (
  `idprograma` int(11) NOT NULL,
  `idlocutor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `programa_locutor`
--

INSERT INTO `programa_locutor` (`idprograma`, `idlocutor`) VALUES
(1, 1),
(71, 20),
(4, 20),
(10, 0),
(66, 83),
(11, 80),
(26, 21),
(30, 21),
(21, 20),
(21, 21),
(71, 20),
(52, 21),
(47, 20),
(36, 21),
(65, 26),
(65, 73),
(55, 20),
(43, 45),
(43, 73),
(17, 20),
(1, 15),
(1, 18),
(1, 40),
(14, 61),
(72, 5),
(32, 82),
(58, 32),
(58, 48),
(41, 30),
(41, 49),
(28, 11),
(28, 44),
(28, 63),
(75, 21),
(70, 14),
(70, 73),
(70, 64),
(51, 19),
(67, 40),
(67, 54),
(67, 5),
(67, 47),
(67, 66),
(67, 43),
(38, 3),
(12, 10),
(34, 33),
(34, 34),
(78, 55),
(78, 46),
(62, 46),
(62, 55),
(52, 21),
(7, 16),
(7, 81),
(23, 16),
(23, 81),
(2, 20),
(35, 14),
(35, 73),
(77, 5),
(77, 69),
(77, 2),
(63, 59),
(57, 36),
(57, 58),
(41, 30),
(41, 49),
(69, 44),
(69, 50),
(29, 17),
(29, 4),
(29, 43),
(44, 20),
(49, 2),
(37, 69),
(31, 22),
(53, 65),
(8, 62),
(3, 44),
(3, 45),
(56, 20),
(73, 20),
(16, 51),
(16, 78),
(16, 8),
(16, 7),
(68, 40),
(68, 54),
(39, 75),
(74, 70),
(48, 48),
(5, 24),
(45, 26),
(19, 26),
(50, 28),
(42, 37),
(40, 57),
(80, 52),
(81, 35),
(81, 79),
(64, 44),
(64, 41),
(64, 63),
(46, 77),
(46, 29),
(15, 62),
(15, 66),
(54, 27),
(54, 29),
(54, 38),
(24, 9),
(24, 53),
(24, 60),
(24, 72),
(24, 77),
(13, 47),
(13, 69),
(13, 42),
(13, 61),
(6, 6),
(27, 0),
(22, 26),
(9, 83),
(76, 12),
(61, 71),
(59, 68),
(60, 68),
(25, 31),
(18, 13),
(18, 23),
(18, 39),
(18, 67),
(33, 25),
(33, 35),
(33, 18),
(33, 56),
(33, 74),
(20, 27),
(20, 72);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `nome` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 NOT NULL,
  `email` text CHARACTER SET latin1 NOT NULL,
  `id_perfil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`iduser`, `nome`, `password`, `email`, `id_perfil`) VALUES
(0, 'admin', 'admin', 'admin@nimda.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluguer`
--
ALTER TABLE `aluguer`
  ADD PRIMARY KEY (`id_aluguer`);

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
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
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
  ADD PRIMARY KEY (`equipamento_rel_kit`);

--
-- Indexes for table `grelha`
--
ALTER TABLE `grelha`
  ADD PRIMARY KEY (`idgrelha`);

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
-- Indexes for table `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id_perfil`);

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
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluguer`
--
ALTER TABLE `aluguer`
  MODIFY `id_aluguer` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
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
  MODIFY `equipamento_rel_kit` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `grelha`
--
ALTER TABLE `grelha`
  MODIFY `idgrelha` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `idnoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
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
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
