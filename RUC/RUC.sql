-- phpMyAdmin SQL Dump
-- version 4.3.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 15-Jan-2017 às 06:10
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

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
  `artigo` text NOT NULL,
  `data_noticia` date NOT NULL,
  `extra` varchar(255) NOT NULL,
  `idcategoria` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`idnoticia`, `titulo`, `artigo`, `data_noticia`, `extra`, `idcategoria`) VALUES
(1, 'CÓDIGO DA PRAXE DA UC ATUALIZADO', 'O Código da Praxe mudou. Janeiro traz novas alterações, que vêm sobretudo atualizar e explicar as práticas da praxe académica da Universidade de Coimbra (UC). O Dux da UC, João Luís Jesus, diz que uma das principais revisões debruça-se sobre a utilização de insígnias pessoais por parte dos estudantes de mestrado integrado. Segundo o estudante, insígnias como as fitas e os grelos devem ser usadas no mesmo regime que as licenciaturas.\r\n\r\nAlém desta alteração, o Dux diz que a vistoria do documento foi geral. Uma das questões que já estava prevista mas que era, diz o estudante, mal interpretada, refere-se à praxe dentro de instalações universitárias. O Dux afirma, por exemplo, que é proibido haver perturbação das aulas e que por isso a atividade não pode acontecer debaixo do teto das faculdades.\r\n\r\n\r\nJoão Luís Jesus é assertivo ao dizer que no Código da Praxe da Universidade de Coimbra nunca foram permitidas situações de violência.\r\n\r\n\r\nSobre qual é o maior mito da praxe, João Luís Jesus refere que a obrigatoriedade de ostracizar o ‘caloiro’, estudante de primeiro ano que participa na praxe, é um mito. Dizer que o caloiro “não é nada”, segundo o Dux, é, claro, mentira, e o estudante deve queixar-se às autoridades competentes em casos de abuso de autoridade na praxe.\r\n\r\nO Fórum Apparitor é outra novidade: uma plataforma criada pelo Conselho de Veteranos, que aproxima o organismo à comunidade universitária e terá representantes de todos os cursos da UC.\r\n\r\nOutra alteração significativa no código, conta o líder do Conselho de Veteranos, é a alteração do Artigo 1º do documento, que corresponde à definição do que é praxe académica. Agora lê-se que é “o conjunto de usos, costumes, regras, normas de etiqueta e protocolo que tradicionalmente regem as relações sociais dos estudantes da Universidade de Coimbra que livremente aderem à mesma, em conjunto com todas as disposições que, nesse sentido, forem decretadas pelo Conselho de Veteranos da Universidade de Coimbra.”\r\nA alteração está em “normas de etiqueta e protocolo”, expressões que antes estavam omissas.\r\n\r\nO novo Código da Praxe está disponível na papelaria da AAC e em formato pdf aqui ou no facebook do Conselho de Veteranos.', '2017-01-11', '', 1),
(2, 'SEMANA ABERTA DAS REPÚBLICAS CONTRA O REGIME FUNDACIONAL', 'As repúblicas de Coimbra estão a preparar uma semana aberta de consciencialização relativamente ao modelo fundacional na Universidade de Coimbra.\r\n\r\nA ideia surgiu em reunião do Conselho de Repúblicas no passado mês de dezembro. A semana aberta está a ser preparada para fevereiro.\r\n\r\nO programa Minerva de ontem foi dedicado à semana e contou com a presença de um elemento do Conselho de Repúblicas, Tiago Mendes.\r\n\r\nAlém de pretender informar os estudantes, as repúblicas querem lutar abertamente contra o regime fundacional.\r\n\r\nA decisão sobre a passagem ao modelo fundacional vai ser votada em Conselho Geral da Universidade. Para as repúblicas, a participação de docentes nas atividades é particularmente importante, dado que têm poder de voto e que também são afectados pela decisão.\r\n\r\nPara Tiago Mendes, a maior dificuldade para as atividades que se vão realizar é conseguir chegar a todos os estudantes.\r\n\r\nO Conselho de Repúblicas entendeu ser necessário tornar pública a posição contra o modelo fundacional por considerarem que vai elitizar o ensino. Tiago Mendes relembrou a importância histórica das repúblicas.\r\n\r\nA semana foi discutida esta tarde, numa reunião aberta a todos os interessados. As repúblicas querem incluir atividades das próprias instituições e também de secções, núcleos ou estudantes individuais.', '2017-01-06', '', 1),
(3, 'HELPIE, A APP SOLIDÁRIA CRIADA POR ESTUDANTES DA UC', 'Na cadeira de Processos de Gestão e Inovação do curso de Engenharia Informática da UC os trabalhos não ficam só para o professor. Várias ‘apps’ foram feitas para a avaliação dos estudantes e hoje damos a conhecer a Helpie, um instrumento de ajuda – como o nome indica -, com duas vertentes distintas. A primeira é um sistema simples de troca, de um utilizador para outro, como explica um dos criadores, Pedro Caseiro.\r\n\r\nO segundo plano é o de voluntariado. No caso de instituições de solidariedade precisarem de chegar a potenciais voluntários, a ‘app’ facilita o processo e aproxima-as à comunidade. Os estudantes dizem já ter algumas instituições parceiras em Coimbra. Tudo funciona em sintonia com as necessidades dos intervenientes.\r\n\r\nA aplicação foi lançada há cerca de duas semanas e, segundo Pedro Caseiro, pode tornar-se maior ao longo do tempo.\r\n\r\nNa cadeira de Processos de Gestão e Inovação os alunos devem desenvolver um evento, uma aplicação ou um site. Sobre o método de ensino que se propõe, Pedro Caseiro refere que há espaço para as ideias.\r\n\r\nAntónio Simões, Carlos Pinho, Daniel Azevedo, Dinis Marques, João Lopes e Pedro Caseiro são os estudantes de terceiro ano da licenciatura em Engenharia Informática da Universidade de Coimbra por detrás da aplicação Helpie. O vídeo de demonstração pode ser consultado aqui. O produto está disponível na Playstore do Google.\r\n', '2017-01-06', '', 1),
(4, 'REABERTURA DAS CANTINAS AMARELAS COM MUITAS NOVIDADES', 'As cantinas amarelas da Universidade de Coimbra (UC), encerradas em 2013 devido à falta de condições de higiene e qualidade, continuam em obras profundas de requalificação. Segundo a administradora dos Serviços de Ação Social da UC (SASUC), Regina Bento, o espaço estará pronto ainda antes do final de 2017 e os estudantes podem esperar algumas surpresas. Polivalência, alternativa e cultura são algumas das palavras-chave dentro da nova dinâmica que se pretende que as “amarelas” venham a assumir.\r\n\r\nAs cantinas podem ainda vir a revelar-se um espaço de atuação para as secções culturais da Associação Académica de Coimbra (AAC). Segundo Regina Bento, um dos objetivos é dotar as amarelas de uma vertente cultural.\r\n\r\nHá ainda outros assuntos em destaque no que diz respeito à alimentação, este que é um dos maiores focos de ação dos SASUC. Em dezembro, a administradora Regina Bento esteve na Assembleia da República a apresentar o programa de controlo do desperdício alimentar da UC.\r\n\r\nRegina Bento conta que até agora houve uma grande recetividade por parta da comunidade universitária, com ‘e-mails’ a elogiar o programa de controlo do desperdício e a dar sugestões. A administradora diz tratar-se no fundo de uma mudança de mentalidades, o que não se faz de um dia para o outro, mas tem sido feito progressivamente e, por isso, já muito mudou desde que o programa foi implementado.\r\n\r\nOs sons que ouvimos fazem todos parte da grande entrevista a Regina Bento feita por Isabel Simões para o programa da RUC, Perfil. ', '2017-01-13', '', 2),
(5, '450 MIL VISITARAM A UC EM 2016, 93% FORAM ESTRANGEIROS', '350 mil visitantes anuais para 450 mil – foi este o salto que a Universidade de Coimbra (UC) deu de 2015 para 2016.\r\n\r\nOs franceses são os turistas que mais conheceram a UC durante o ano de 2016, cerca de 99 mil em 450 milhares. Seguidos pelos espanhóis, italianos e brasileiros. São estes os 4 países donde provêm metade dos visitantes da universidade durante o ano passado.\r\n\r\nOs portugueses apenas aparecem no quinto lugar, imediatamente depois dos alemães. Estes correspondem a uma percentagem, do total de 450 mil visitantes, que ronda os 7 por cento, diz Luís Menezes, o vice-reitor da UC da área turística.\r\n\r\nPara entendermos a falta de interesse nacional em conhecer a universidade, Luís Menezes compara o turista português com o francês, dos quais quase 100 mil visitaram a UC só em 2016.\r\n\r\nTambém a falta de divulgação pode desempenhar um papel fulcral neste problema, admite o vice-reitor, e é portanto necessário que seja amplificado o reconhecimento da importância histórica que a universidade tem.\r\n\r\nLuís Menezes destaca como fundamental, para a marca de 450 mil visitantes anuais, os vários espaços que forma o chamado Museu da Ciência da UC e que em 2016 passaram a estar abertos livremente.\r\n\r\nPara o ano de 2017, pretende-se que a exploração turística da universidade seja alargada ao Jardim Botânico. Vão ser criados novos espaços de visita no recinto, que tem sofrido obras de remodelação profundas, nomeadamente na Estufa do Século XVIII. A inauguração está prevista para maio.\r\n\r\nO vice-reitor responsável pelo turismo acaba sublinhando que a aposta global da UC não é o turismo mas sim captar mais e melhores estudantes, através da internacionalização da universidade.\r\n\r\nA partir de dia 1 de março a UC quer abrir de forma permanente as Galerias de História Natural e o Gabinete de Física no Colégio de Jesus.', '2017-01-13', '', 2),
(6, 'GRUPO DE ESTUDANTES DA UC CRIA “TELL ME ALL ABOUT IT” PARA TE AJUDAR A CANDIDATAR A ERASMUS', 'Um grupo de estudantes da licenciatura de Engenharia Informática da Faculdade de Ciências e Tecnologia da Universidade de Coimbra (FCTUC), desenvolveu um site dedicado aos alunos que pretendem usufruir do Programa de Mobilidade Erasmus.\r\n\r\n“Tell Me All About It” é o nome do projecto que pretende fornecer informações sobre os processos de candidatura a programas de mobilidade e ainda contribuir com testemunhos daqueles que já tiveram a oportunidade de vivenciar esta experiência. Estivemos à conversar com um dos elementos deste grupo, Diana Pinheiro, que explicou o que levou a avançar com a ideia.\r\n\r\nCom o site (http://tellmeallaboutit.dei.uc.pt/) já em funcionamento a previsão de lançamento de todas as funcionalidades está previsto para o final do mês de Janeiro. Diana Pinheiro faz o ponto da situação e explica o que pretende com cada passo.\r\n\r\nCom centenas de alunos da Universidade de Coimbra a recorrer, todos os anos, a este tipo de programas de mobilidade é com naturalidade que o grupo vê a curiosidade dos estudantes no seu projeto, no entanto Diana Pinheiro não esconde a surpresa pela afluência.\r\n\r\nO projeto está vocacionado para os alunos de Engenharia Informática, mas o grupo de estudantes tem como pretensão alargar a todos os departamentos da UC já num próximo período de candidaturas.', '2017-01-09', '', 2),
(7, 'PCP CONTRA O FECHO DO POSTO DA GNR DE TAVEIRO', 'O posto de GNR de Taveiro pode vir a encerrar de vez. A notícia não é nova, já por diversas vezes, no passado, haviam sido conhecidos indícios da intenção de fechar o posto. A Junta da União de freguesias de Taveiro, Ameal e Arzila tem realizado esforços no sentido de resolver várias questões, nomeadamente em relação aos problemas de humidade que afetam as instalações de Taveiro, no entanto o encerramento destas pode estar para vir.\r\n\r\nDe acordo com Vladimir Vale do PCP de Coimbra, sabe-se agora, por notícia tornadas públicas por parte da junta, que houve contactos entre esta e responsáveis da GNR e que, embora numa primeira fase tenha sido garantido que o posto de Taveiro não era para encerrar, a questão voltou a ser colocada em cima da mesa. Em declarações à RUC, Vladimir Vale, responsável da Comissão de Concelhia de Coimbra do PCP, deu a conhecer a posição do partido quanto à matéria.\r\n\r\nEstes são fatores que, segundo Vladimir Vale, têm afetado o policiamento e a vigilância necessários à diminuição da criminalidade e da vulnerabilidade das pessoas, pelo que a população de Taveiro tem demonstrado alguma preocupação.\r\n\r\nNeste momento já foi criado um abaixo-assinado contra o encerramento do posto da GNR de Taveiro. Para além de exigir a recuperação das instalações ou a criação de novas, a população exige ainda que sejam fornecidas condições para a GNR atuar, nomeadamente no que toca a equipamentos e meios necessários a missões de proximidade.\r\n\r\nO PCP questionou o Ministério da Administração Interna: pede-se uma confirmação relativamente a se o fecho do posto vai ocorrer ou não. E, para ambos os desfechos, como é que o governo vai responder às necessidades das populações de Taveiro e arredores. O representante do PCP de Coimbra, adiantou ainda que, numa próxima ocasião também os órgãos municipais irão ser questionados', '2017-01-13', '', 3),
(8, 'MACHADO CONSIDERA POUCO EXEQUÍVEL CONSTRUIR MATERNIDADE JUNTO AOS HUC', 'A saúde, por diversos motivos, esteve ontem em destaque na reunião de Câmara Municipal de Coimbra. No final da reunião, o presidente Manuel Machado esteve à conversa com os jornalistas sobre alguns pontos do debate.\r\n\r\nA circulação e o estacionamento junto dos Hospitais da Universidade de Coimbra (HUC) precisa de melhoramentos. Manuel Machado explicou que a solução escolhida foi a do loteamento por ser a mais exequível.\r\n\r\nO pedido de loteamento vai reorganizar os arruamentos e definir o que é domínio privado e domínio público. O processo implica a zona do pólo III e a área mais próxima dos Hospitais da Universidade.\r\n\r\nA reunião debruçou-se também sobre uma nova maternidade em Coimbra. O ministro da Saúde, Adalberto Campos Fernandes, mostrou abertura para a criação do novo equipamento, mas não falou sobre verbas. Manuel Machado é taxativo: Coimbra precisa de uma nova maternidade.\r\n\r\nEmbora esteja disponível para as várias soluções – sejam a construção de raíz ou o aproveitamento de instalações do Estado – Manuel Machado não considera exequível construir no espaço dos HUC.\r\n\r\nManuel Machado falou ainda sobre os terrenos do antigo Hospital Pediátrico, junto à Avenida Armando Gonçalves. Apesar de o município deter parte dos terrenos, o presidente do executivo disse que abdica do direito de resgate caso a vontade de Governo e Universidade passe por instalar o Ageing@Coimbra no terreno. Manuel Machado revelou-se indisponível, no entanto, para soluções como a alienação.\r\n', '2017-01-10', '', 3),
(9, 'AAC PARTICIPA NA DESPEDIDA DE MÁRIO SOARES', 'O último ato público de despedida de Mário Soares percorreu hoje Lisboa. Na Assembleia da República a Assoicação Académica de Coimbra (AAC) fez-se representar pelo presidente cessante José Dias e pelo eleito Alexandre Amado. Falámos com os dois sobre este dia. A conversa sublinhou, em todos os momentos, o papel de Soares na construção da democracia em Portugal. A luta contra a ditadura leva a que a Academia o homenageie, diz José Dias.\r\n\r\nA ligação próxima com a associação de estudantes é outro motivo forte para a presença dos estudantes em Lisboa, diz o presidente da Direção-Geral.\r\n\r\nAlexandre Amado destaca o mesmo motivo. Mário Soares era também sócio honorário da RUC, desde 1990.\r\n\r\nJosé Dias destacou a evocação da crise académica de 1969 a 17 de abril de 2016, iniciativa da AAC, que trouxe a Coimbra alguns dos rostos da crise académica e da resistência à ditadura. Assim, reforça-se a ideia de os valores continuarem em sintonia com a Académica.\r\n\r\nOs dois dirigentes da AAC estiveram presentes no cortejo no Parlamento, conta José Dias.\r\n\r\nNa homenagem realizada no Mosteiro dos Jerónimos, o momento foi emotivo sobretudo nos discursos dos filhos de Mário Soares e numa gravação de Maria Barroso transmitida durante a cerimónia. Alexandre Amado destaca as emoções vividas.\r\n\r\nAntónio Costa marcou presença por vídeo, já que está em visita à Índia. O primeiro-ministro começou por se dirigir a João e Isabel, filhos do antigo Presidente da República.\r\n\r\nMarcelo Rebelo de Sousa escolheu um poema de Fernando Pessoa para fechar a sua homenagem ao homólogo.\r\n\r\nEste é o primeiro funeral com honras de Estado na história da democracia portuguesa. Estiveram envolvidos mil elementos, dos três ramos das Forças Armadas.\r\nMário Soares está sepultado no Cemitério dos Prazeres, em Lisboa.', '2017-01-10', '', 3),
(10, 'FCT COM CANDIDATURAS ABERTAS PARA ESTÁGIOS NA NASA', 'A Fundação para a Ciência e Tecnologia (FCT) tem candidaturas abertas para estágios na NASA. A diretora do Departamento de Relações Internacionais, Ana Quartin, falou à RUC sobre o projeto. Os estudantes escolhidos vão ser integrados em doze programas da agência espacial norte-americana.\r\n\r\nA representante da FCT explica as condições de candidatura.\r\n\r\nOs estudantes têm também que estar a desenvolver projetos nas áreas de interesse do estágio.\r\n\r\nO melhor local para consultar os requisitos para a candidatura é, segundo, Ana Quartin, o site da FCT.\r\n\r\nO processo de seleção é faseado. Em primeiro lugar a FCT analisa a elegibilidade dos candidatos e, depois, em conjunto com um painel de peritos nacionais, procede à elaboração de um ‘ranking’ que será enviado à NASA, a quem cabe a decisão no fim.\r\n\r\nA ideia é capacitar portugueses para o estudo do espaço. Sobre se em Portugal há lugar para esta área crescer, Ana Quartin considera que já há uma “massa crítica muito boa” no país.\r\n\r\nAs candidaturas estão abertas até dia 30 de janeiro. As bolsas de investigação para estágios na NASA são uma parceria do Ministério da Ciência, Tecnologia e Ensino Superior, Fundação para a Ciência e Tecnologia e NASA.', '2017-01-11', '', 4),
(11, 'MORREU MÁRIO SOARES', 'Terminou deste modo um largo capítulo da história de Portugal:\r\n\r\nO diretor clínico do Hospital da Cruz Vermelha, Manuel Pedro Magalhães, foi o responsável pelo anúncio. Internado desde 13 de dezembro, Mário Soares morreu aos 92 anos. Com breves sinais de melhoria no estado de saúde, um agravamento da situação clínica na véspera de Natal obrigou ao regresso à Unidade dos Cuidados Intensivos que não mais deixou.\r\n\r\nA curta declaração de Manuel Pedro Magalhães destacou a constante presença dos filhos, Isabel e João Soares, e a confiança depositada na equipa do Hospital.\r\n\r\nO agradecimento foi recíproco. Os filhos transmitiram uma mensagem de gratidão pelo tratamento dado pela equipa liderada pelo “Dr. Manuel Pedro”, nas palavras de João Soares.\r\n\r\nCo-fundador do Partido Socialista, figura da Revolução e do pós-Revolução de Abril, primeiro-ministro, Presidente. Os obituários lembram Mário Soares pelos cargos e pelas ações. O antigo consultor da Casa Civil da Presidência, Carlos Gaspar, diz que tinha “uma obsessão com o seu lugar na história”.\r\n\r\nDo parlamento chegam as vozes dos partidos. Da esquerda à direita distribuem-se elogios e lembranças de conflito mas todos concordam: Soares é face da história política portuguesa no século XX.\r\n\r\nA política era o seu habitat natural – era apelidado de ‘animal político’. No entanto, Mário Soares era também um apaixonado pela literatura. Entrevistado pela agência Lusa, o alfarrabista Nuno Canavez foi amigo desde os tempos do exílio, quando já lhe enviava livros e catálogos.\r\n\r\nÁvido leitor das questões políticas aos clássicos dos séculos XIX e XX, o antigo chefe de Estado era um homem ‘culto’ e de ‘memória prodigiosa’, conta o livreiro.\r\n\r\nEm visita oficial em Nova Delí, na Índia, o primeiro-ministro António Costa anunciou o luto nacional de três dias decretado pelo Governo, a ser cumprido a partir desta segunda-feira (9), bem como o funeral com honras de Estado.\r\n\r\nO corpo do antigo estadista vai seguir na segunda-feira até à sala dos Azulejos do Mosteiro dos Jerónimos, onde vai ser velado até ao final do dia.\r\n\r\nO funeral está marcado para terça-feira (10), com um cortejo fúnebre até ao cemitério dos Prazeres, onde vão decorrer as últimas homenagens a Mário Soares.', '2017-01-07', '', 4),
(12, 'REITOR DA UNIVERSIDADE DO MINHO DEFENDE REGIME FUNDACIONAL', 'As repúblicas de Coimbra estão a preparar uma semana aberta de consciencialização sobre o Regime Fundacional. O Conselho de Repúblicas reuniu em dezembro e decidiu assumir-se contra o modelo de gestão que pode vir a ser aplicado à Universidade de Coimbra. A semana aberta deve acontecer em fevereiro e hoje deu-se o primeiro encontro de preparação. Na altura em que se forma um novo movimento contra a aplicação do regime à UC, ouvimos as declarações do reitor da Universidade do Minho, António Cunha, à RUC. A Universidade que lidera funciona já neste regime e o académico é defensor do mesmo.\r\n\r\nNo Regime Fundacional as universidades passam a Universidade Fundação Pública com regime de Direito Privado, segundo a lei. A autonomia a que o reitor se refere está relacionada diretamente com o direito privado: a gestão financeira e do património, a contratação de recursos humanos e a aquisição de bens e serviços saem da esfera do Estado. O reitor sublinha a questão da autonomia.\r\n\r\nE só vê vantagens no modelo.\r\n\r\nO medo da “privatização” das universidades, a fragilidade dos contratos com professores, investigadores e funcionários ou o poder conferido ao Conselho de Curadores são argumentos contra o regime que o próprio Conselho Geral da Universidade do Minho apontava. Em Coimbra, as dúvidas mantêm-se. António Cunha questiona a credibilidade dos argumentos de quem se opõe ao modelo.\r\n\r\nSe a mudança relativa a contratos de trabalho assusta alguns, António Cunha acredita que na Universidade do Minho a mudança é necessária.\r\n\r\nAntónio Cunha preside também ao Conselho de Reitores das Universidades Portuguesas. No seio do organismo, admite que o caminho que as universidades estão a traçar se encaixa no modelo de fundação.\r\n\r\nNas eleições para o Conselho Geral da UC, ocorridas em dezembro, a expressão dos eleitores parece ditar que não querem a aplicação do regime à Universidade de Coimbra. Algumas das listas mais populares rejeitam veemente o modelo.\r\n\r\nA Universidade do Porto, a Universidade de Aveiro e o ISCTE são outras universidades-fundação.', '2017-01-06', '', 4),
(13, 'ÚLTIMA REPRESENTAÇÃO DA ÓPERA “PIMPINONE” NO TAGV ESTE SÁBADO', 'A Ritornello – Associação Cultural leva ao palco do Teatro Académico de Gil Vicente (TAGV) a ópera “Pimpinone” no próximo sábado, dia 14, ás 18 horas. Esta é a última representação na cidade, depois a associação leva o espetáculo em digressão pelo país. A ópera teve a sua última récita em Coimbra em outubro de 2016, o diretor musical, António Ramos afirma que esta atuação “vai ser ainda melhor”.\r\n\r\nUma ópera cómica, em três atos, para toda a família, cantada em português com música do músico e compositor alemão, George Philipp Telemann. A música será interpretada por elementos da Orquestra Camerata Joanina. O grupo utiliza instrumentos do século XVIII, época em que foi concebida a obra. “Pimpinone” tem libretto de Praetorious, mantém parte do italiano original. Com estreia em Hamburgo no ano de 1725, a ópera surgiu sob a forma de quadros satíricos nos intervalos das tragédias teatrais.\r\n\r\nEsta é a terceira produção da Ritornello, uma associação cultural fundada por músicos e pedagogos. Em 2017 vai ser apresentado em Junho um novo trabalho. O período clássico foi o escolhido, segundo António Ramos os desafios vão ser ainda maiores.\r\n\r\n“Pimpinone” sobe ao palco do TAGV este sábado a partir das 18h00. Jorge Silva e André Janicas são os produtores. A encenação está a cargo de Mário João Alves. Como soprano Tânia Ralha, como barítono Nuno Mendes. Os bilhetes custam 5 €.', '2017-01-13', '', 5),
(14, 'COLECTIVO 84 APRESENTA “SÓCRATES TEM DE MORRER – PARTE I” NO TAGV', 'A peça sobe a palco do Teatro Académico de Gil Vicente (TAGV), esta quinta-feira, pelas 21h30. O TAGV estreia a nova coprodução com o Teatro Municipal São Luiz de Lisboa e o Centro Cultural Vila Flor de Guimarães.\r\n\r\nO autor do texto e encenador, Mickaël de Oliveira, enumerou para a RUC as facetas da personalidade do filósofo Grego em destaque.\r\n\r\nSegundo a sinopse o espetáculo conta “os últimos três dias de Sócrates na prisão”. Durante um mês Sócrates pensou escreveu poesia e recebeu a visita de alguns amigos próximos. O filósofo “pensava contra a corrente” do seu tempo, afirmou Mickaël de Oliveira.\r\n\r\nA peça vai estar em cena no TAGV, em 12 e 13 de janeiro, sempre às 21h30. O bilhete tem o preço entre 5 e 7 euros.\r\n\r\n“Sócrates Tem de Morrer” é a mais recente criação de Mickaël de Oliveira/Colectivo 84 e tem interpretação de Albano Jerónimo, Ana Bustorff, Maria Leite, Paulo Pinto e Pedro Lacerda. A  música é de Diogo Ribeiro que também interpreta.', '2017-01-12', '', 5),
(15, 'SALÃO BRAZIL RECEBE “ARQUIVO VIVO É ANARQUIVO”', 'Acontece amanhã no Salão Brazil a apresentação “Arquivo Vivo é Anarquivo”. O projeto Arquivo Digital da Po-ex em parceria com o Serviço Educativo JACC promove três atividades durante o dia de amanhã no Salão Brazil. O responsável pela programação do espaço, José Miguel, sublinha a importância do projeto.\r\n\r\nUma oficina coordenada por Américo Rodrigues marca o início da programação. Com “As vozes da Voz” pretende-se que os participantes explorem as potencialidades expressivas da voz. O representante do Salão Brazil explica o objetivo do workshop.\r\n\r\n“Arquivo Vivo é Anarquivo!” é a segunda atividade que, através de três sessões com debate e remistura audiovisual, vai expor o projeto do Arquivo Digital da Literatura Experimental Portuguesa. A exibição fica a cargo dos artistas Rui Torres, Ana Carvalho, Luís Aly e Luís Grifu. Ainda no âmbito desta iniciativa há também uma apresentação em forma de concerto com a reunião dos artistas Américo Rodrigues, João Ricardo e José Miguel.\r\n\r\nJosé Miguel aproveita para reiterar que este ano o Salão Brazil pretende realizar mais atividades assentes em poesia, literatura e música; e que outros workshops devem decorrer ao longo do ano no mesmo ciclo “Das palavras nascem sons, dos sons nascem ideias”.\r\n\r\nAs atividades são pagas e variam entre 10 euros, no caso da oficina que ocorre das 14h às 16h30, e 5 euros para o concerto das 22h30. Para a oficina, a inscrição pode ser feita através do email servicoeducativo.jacc@gmail.com.', '2017-01-06', '', 5),
(17, 'MANCHA NEGRA EM CAMPO PELOS SEM ABRIGO DE COIMBRA', 'A Mancha Negra promoveu ontem um jantar solidário dirigido à comunidade menos favorecida da cidade de Coimbra. A iniciativa resulta numa parceria entre a claque academista e a associação Integrar, e reuniu cerca de 75 pessoas na sede da Mancha Negra, no Pavilhão Jorge Anjinhos. Este é já o sexto jantar solidário promovido pela histórica claque da briosa. A ementa contou com sopa de legumes, feijoada, sumos e água. A RUC falou com o presidente da histórica claque de apoio à Briosa. João Paulo Fernandes explica como é que surgiu a intenção de ajudar.\r\n\r\nEste é já um hábito da estrutura comandada por João Paulo Fernandes. No início do ano letivo, a Mancha Negra tinha aproveitado para distribuir material escolar aos jovens mais carenciados da região. O número de pessoas abrangidas pelos jantares solidários da claque tem aumentado ao longo dos últimos anos. João Paulo Fernandes mostra-se preocupado com a situação dos sem-abrigo na cidade.\r\n\r\nA parceria com a associação Integrar tem permitido à Mancha Negra um maior contacto com a realidade dos sem-abrigo de Coimbra. João Paulo Fernandes revela sentir uma forte proximidade com as pessoas auxiliadas.\r\n\r\nO Presidente da Mancha Negra aproveitou a conversa com a Rádio Universidade de Coimbra para lamentar os episódios de Guimarães. Recordamos que durante a cobertura da partida entra a Académica e o Vitória de Guimarães, o relatador da RUC foi forçado a abandonar o estádio Dom Afonso Henriques, por responsáveis do clube vimaranense.', '2016-12-28', '', 6),
(18, 'AAC/OAF DISCUTE EM ASSEMBLEIA GERAL EXTRAORDINÁRIA ESTRATÉGIAS DE FINANCIAMENTO', 'A Associação Académica de Coimbra/Organismo Autónomo de Futebol (AAC/OAF), convocou os sócios da instituição para uma assembleia geral extraordinária a realizar esta noite pelas 20h30 no Estádio Cidade de Coimbra. Estivemos à conversa com o presidente da Mesa da Assembleia Geral, João Vasco Ribeiro, que nos fez a antevisão.\r\n\r\nA “Missão Briosa” convidava os sócios a, através de uma participação financeira, adquirirem a antiga sede do clube, situada junto aos Arcos do Jardim, pelo valor de um milhão de euros. O prazo limite para a participação dos sócios era até o dia 15 de dezembro. Com o valor a ficar aquém do pretendido resta agora encontrar alternativas para o financiamento da AAC/OAF. Segundo João Vasco Ribeiro a direção tem “trabalhado afincadamente” para encontrar uma solução.\r\n\r\nJoão Vasco Ribeiro considera insatisfatória a resposta dada pelos sócios da Académica e queixa-se da falta de tempo para a realização da missão. No entanto realça os aspectos positivos que resultaram da “Missão Briosa”.\r\n\r\nApesar dos objectivos desta campanha não terem sido atingidos, João Vasco Ribeiro sublinha a mobilização dos sócios, que tem apoiado a equipa no estádio, e o empenho de jogadores, treinadores e respetiva equipa técnica.\r\n\r\nA atual direção é presidida por Paulo Almeida desde 11 de junho de 2016.', '2016-12-16', '', 6),
(19, 'AAAC/OAF DEFRONTA PENAFIEL PARA A TAÇA DE PORTUGAL', 'A Associação Académica de Coimbra Organismo Autónomo de Futebol (AAC/OAF) recebe daqui a pouco, às 18 horas, a equipa do Penafiel a contar para os oitavos de final da Taça de Portugal (TP). Durante a tarde de ontem o treinador dos estudantes fez, em conferência de imprensa, a antevisão da partida. Costinha percebe o entusiasmo gerado pelo sorteio mas garante que os jogadores estão de sobreaviso.\r\n\r\nAté esta etapa da competição os estudantes tiveram de ultrapassar a equipa do Gouveia e os primodivisionários Feirense e Belenenses. Já no campeonato a briosa vem de 4 jogos sem perder, sendo que na última partida venceu a formação do Benfica B já no período de descontos. Estes e outros factores são razão para um aumento dos índices de confiança, no entanto Costinha defende não existir em excesso e que essa confiança é fruto do trabalho realizado.\r\n\r\nAs duas equipas já se encontraram na presente época, com a AAC/OAF a sair derrotada por uma bola a zero na deslocação ao estádio do Penafiel. Dessa partida, e do que tem apresentado a equipa orientada por Paulo Alves, fica a imagem de uma equipa difícil de ultrapassar. O que para Costinha significa um conjunto de dificuldades que obriga os estudantes a ser uma equipa desconfiada.\r\n\r\nDesde que assumiu o comando da equipa, em junho, Costinha nunca escondeu a vontade de chegar à final da Taça de Portugal. A última vez que uma equipa da AAC/OAF conseguiu tal feito foi na época 2011/2012, tendo derrotado a equipa do Sporting por 1-0 com golo de Marinho. Levantando assim a segunda Taça de Portugal inscrita no palmarés do clube.', '2016-12-14', '', 6),
(20, 'MANUEL PIRES DA ROCHA: “OBAMA FOI UM MAU PRESIDENTE”', 'O comentário à atualidade do Alvorada de hoje (5), quinta-feira, esteve a cargo do diretor do Conservatório de Música de Coimbra e deputado municipal na Câmara de Coimbra, Manuel Pires da Rocha.\r\n\r\nO aumento do salário mínimo nacional para 557 euros entrou em vigor este mês. O aumento de 27 euros que corresponde a uma subida em cadeia de 5% relativamente a 2016 e 16% desde 2014, com a descida constante do desemprego, contraria as teorias económicas que concluem que uma subida dos salários implicam um aumento dos desempregados. O deputado municipal afirma que o peso dos salários nos encargos das empresas é “muito pequeno”.\r\n\r\nO Instituto Nacional de Estatística disponibilizou os resultados do Inquérito Qualitativo de Conjuntura aos Consumidores realizado no mês de dezembro. Segundo as estatísticas das opiniões, a situação económica do país está em máximos de 1998. Também tanto a situação financeira do agregado familiar como o indicador de confirança atingiram resultados de 2000. Manuel Pires da Rocha argumenta que as pessoas se sentem aliviadas após passarem por um mau periodo. O convidado diz ainda que os eleitores tendem a agir quando estão insatisfeitas, e exemplifica com a eleição de Trump nos Estados Unidos da América.\r\n\r\nComemora-se no ano de 2017 o centenário das duas revoluções na Rússia de 1917, em fevereiro e em outubro. Para o diretor do conservatório, a revolução russa foi um dos maiores avanços da humanidade.\r\n\r\nDurante o Alvorada fez-se ainda a antecipação do conservatório para o ano de 2017. Houve ainda tempo para a rubrica Sputnik, na voz de Isabel Simões.', '2017-01-06', '', 7),
(21, 'RUI ANTUNES: “O MUNDO ESTÁ A CONSTRUIR A REALIDADE DO MEDO”', 'No Alvorada de hoje (4), quarta-feira, o comentário à atualidade esteve a cargo do Presidente do Instituto Politécnico de Coimbra, Rui Antunes.\r\n\r\nA federação dos sindicatos dos funcionários públicos convocou uma greve para o dia 3 de fevereiro dos trabalhadores não docentes das escolas e jardins de infância em protesto contra a precariedade laboral, dentre as reinvidicações a mais urgente segundo os funcionários seria o reajuste dos salários. Rui Antunes realça a importância de rever a situação dos direitos trabalhistas destas pessoas.\r\n\r\nA Europa assiste ao crescimento do discurso anti-imigração e islamofóbico, alimentado pelos recorrentes ataques terroristas. A notícia apresentada pelo Jornal de Notícias relatou um pouco do cotidiano e dos preconceitos vividos pelos mulçumanos em Portugal onde, atualemnte, já somam cerca de 60 mil. O comentador ressalta uma era de medo no contexto mundial que acabou por gerar movimentos de reações extremas e marcadas por um discurso de ódio.\r\n\r\nO secretário-geral das Nações Unidas, António Guterres, disse ontem aos funcionários que o receberam na sede da organização que não é capaz de fazer milagres. O discurso de Guterres salientou ainda que um dos maiores desafios deste mandato vai ser o combate aos ataques crescentes relativo ao multilateralismo vindos de políticos nacionalistas, como Donald Trump, que toma posse a 20 de Janeiro como Presidente dos EUA. Rui Antunes considera o período que Guterres vai assumir seu mandato como delicado e marcado por movimentos extremistas.\r\n\r\nA Finlândia vai ser, em 2017, o laboratório mundial de uma renda básica universal. O projeto vai durar dois anos e cerca de dois mil cidadãos vão receber 560 euros mensais a partir de janeiro independentemente de estarem empregados ou não. O estudo é assente nas possibilidades futuras de falta de empregos geradas pela automatização das forças de trabalho. O comentador afirma uma tendência positiva presente nesta medida e aponta o país nórdico como exemplo a ser seguido pelo resto do mundo em relação a distribuição das riquezas.\r\n\r\nDurante o Alvorada abordou-se ainda as urgências lotadas com até 11 horas de espera nos casos de doenças respiratórias e a falta de preparo dos hospitais para receber os utentes, o aumento das infrações nas estradas causadas devido ao uso dos telemóveis e também a nova ferramenta apresentada pelo fundador do Facebook, Mark Zuckerberg, que será capaz de criar uma marcação para notícias falsas.', '2017-01-04', '', 7),
(22, 'ELISABETE RAMOS: “OBAMA IMPUTA À RÚSSIA INTERFERÊNCIAS SIGNIFICATIVAS NAS ELEIÇÕES”', 'O último Alvorada de 2016 decorreu esta sexta-feira (30) e contou com o comentário à atualidade da docente da Faculdade de Economia da Universidade de Coimbra (FEUC), Elisabete Ramos.\r\n\r\nDe acordo com a Associação de Bolseiros de Investigação Científica, bolseiros de doutoramento e pós-doutoramento a darem aulas gratuitamente é prática comum. A Universidade do Porto contratou, no ano de 2016, 40 professores sem remuneração e a Universidade Nova de Lisboa tem voluntários a dar aulas. Elisabete Ramos afirma que os bolseiros, que se vêem obrigados a dar aulas sem vencimento, estão numa posição “muito frágil” devido ao seu vínculo com as universidades.\r\n\r\nEspanha autorizou a construção de um armazém de resíduos nucleares em Almaraz, para suprir as necessidades de armazenamento da central nuclear da localidade, a 100 km da fronteira com Portugal. A central de Almaraz já teve diversos incidentes durante os seus 36 anos de história. A docente da FEUC considera que “o que está em causa são as regras de segurança”.\r\n\r\nOs Estados Unidos da América deram ordens de expulsão a 35 agentes dos serviços secretos russos. Obama anunciou as sanções contra a Rússia, devido à alegada ingerência do país soviético nas eleições estadunidenses. O presidente do Estados Unidos prometeu ainda outras consequências, mas não as especificou. Na perspetiva da convidada, a manipulação das eleições estadunidenses é “gravíssima”.\r\n\r\nDurante o Alvorada fez-se o balanço do ano de 2016 da Universidade de Coimbra, da ministra da Justiça, Francisca Van Dunem, do primeiro-ministro, António Costa e do presidente-eleitos dos Estados Unidos da América, Donald Trump. Houve ainda tempo para a rubrica Crime na Cidade, na voz de Isabel Simões.', '2016-12-30', '', 7),
(23, 'RUC @ AMEN DUNES | ZDB | 24.11.2016', 'A voz de Amen Dunes enche tudo.\r\n\r\nSozinho em palco, com uma guitarra, polo aberto e fato de treino. Sozinho, acústico, num mundo pós 9 de Novembro. Sozinho, sem banda, ano e meio após o seu último concerto, ano e meio entre Nova Iorque e LA, e agora semana e meia em Lisboa, em gravações do novo disco.\r\n\r\n\r\nSozinho, voou entre Roma e Lisboa no início da semana. Como habitual, para disfarçar a ansiedade que sente em viagens de avião, viu um documentário sobre música. Este sobre Townes Van Zandt. Também ele sozinho, de guitarra, a contar histórias. “A música era ao mesmo tempo datada, e actual. Uma guitarra e um contador de histórias, a contar mais histórias do que a cantar. É disto que precisamos nos dias de hoje.”\r\n\r\nSegundo ele, a decisão acústica estava tomada muito antes de voltar ao Van Zandt. “Ocasião rara, talvez irrepetível”, no fim da gravação de um disco sem uma única guitarra daquelas, tudo em banda. Mas esse outro americano em tempo difíceis definiu sem dúvida este regresso ao nuclear que encontra nas cordas da guitarra. E àquela voz que enche tudo.\r\n\r\nAs canções surgem novas e antigas, saltando um pouco por todos os discos que nos tem deixado. As novas sempre com um pedido de desculpas. “Detesto bandas que decidem tocar as músicas novas nos concertos. Não gosto de mudança. Gosto quando tudo fica na mesma.” Será difícil, a partir do intimismo, da acústica, da simplicidade, adivinhar como será o sucessor de Love. A mudança nota-se num tom menos rendido a esse amor em desconstrução de Love, mais desafiante, forte, envolvendo-nos numa certa agressividade. Ainda assim, os acordes de uma Lonely Richard enrolam-se nas cordas das novas canções, sem transição, sem quebra, em fluxo sem início nem final.\r\n\r\nAo seu lado, a solo em abertura, em dupla no fecho, esteve o irmão Xander Duell. Velho companheiro dos Inouk, chega à zdb para apresentar “In The Castle”. Entre altos e baixos, numa entrega expressiva, marca ao piano um dos momentos altos da noite, quando o cabaret com que começa evoluiu para “Hallelujah”, “Purple Rain” e uma “Black Star” delirante, de prender os pés ao chão e viajar para essa estrela negra onde os ecos de Bowie ressoam vivos e reais. As vozes dos dois acabam a entrelaçar-se no fecho, numa viagem à Líbia de Fayruz, a deixar o desejo de que a combinação da força de Xander com a envolvência de Damon se una também brevemente em estúdio.\r\n\r\nNa caixa negra do aquário da zdb, enquanto o dilúvio universal caía lá fora, Amen Dunes levou-nos para fora do tempo e do espaço. A voz de Amon Dunes enche tudo. No mundo pós 9N, pós Bowie, pós Prince e Cohen, Amen Dunes sozinho enche tudo. E, fechando os olhos, essa voz que enche tudo une-se com a de Van Zandt e canta “I’ll be here in the morning / Close you eyes / I’ll be here for a while”.', '2016-11-28', '', 8),
(24, 'RUC @ NORBERTO LOBO APRESENTA “MUXAMA” | TEATRO MARIA MATOS | 23.11.2016', 'Imerso em breu, uma luz débil pulsa no centro do palco. Adivinham-se os vislumbres do guitarrista que o ocupa sozinho. No meio de todo um labirinto de pedais, de guitarra semiacústica ao colo, Norberto Lobo estreia no Maria Matos “Muxama”, o seu último longa duração, editado este ano pela three:four. Perante um teatro cheio, mostra-nos porque continua a ser um dos mais valiosos músicos que cresceram por cá.\r\n\r\nChamar a Norberto Lobo um guitarrista será limitá-lo a uma imagética que nunca ocupou e da qual se afasta cada vez mais. A guitarra surge como interface entre a cabeça de Norberto e o universo de sons que faz ressoar. E é num lamento quase carpideira de Giacometti que começa este Muxama. Nos dedos de Norberto, as cordas soltam ais perdidos numa memória distante, num interior longínquo, muito humanos e nossos.\r\n\r\nDistanciando-se de um mais áspero Fornalha, Muxama investe num trabalho de criação quase nostálgica, neste jogo de sons distantes, melodias errantes, que divagam e se esfumam. Sob as cordas, o ambiente adensa e dilata, por vezes mais nevoeiro, por outras mais mecânico. O clique dos pedais é um cimematógrafo que vai rodando, fotograma em tons sépias e gastos pelo tempo, destas imagens que, sem nunca as viver, parecemos revisitar.\r\n\r\nAs linhas e escalas desconstroem-se, diluídas nas camadas sobrepostas. Norberto toca guitarra como quem sente o piano, como quem sopra a harmónica, como quem solta esses “ais”. O silêncio, também ele instrumento, pesa denso sobre as cordas, abafando ténue e cheio, afastando as notas que se desvanecem. Outras vezes, como em “Figueira”, a linha rasga esse fino lençol que desenha, em ecos que evoluem ao longe em doce dedilhar.\r\n\r\nHá uma qualquer empatia na música de Norberto Lobo que não nos deixa escapar. Se o sentimos desde Pata Lenta, não o perdemos nos vários caminhos trilhados até agora. Muxama é um reencontro, entre o íntimo e o partilhado, em que os sons respiram e ficam, lentamente, a ecoar em nós. Num dos melhores discos do ano, Norberto Lobo continua a explorar as suas formas e sons, o seu próprio, único e inesgotável, universo próprio.', '2016-11-28', '', 8),
(25, 'RUC @ SEMIBREVE 2016', 'Se 5 minutos a percorrer as ruas de Braga são suficientes para alguém se sentir em casa ou acolhido, então o que dizer quando ocorre ao mesmo tempo um evento (já com estatuto de culto) de música exploratória e arte digital?! Acrescentando ainda o facto de ser verão no meio do outono (28 a 30 de Outubro). Falamos de algo que cada vez mais dispensa apresentações, o festival Semibreve. Este ano acrescentando a belíssima Capela Imaculada do Seminário Menor aos habituais locais de performance (Theatro Circo, Casa Rolão e gnration) e ainda o prémio Edigma.\r\n\r\nPerto das 21:30 às portas do Theatro Circo ainda se encontram inúmeras pessoas a acabarem o último cigarro e a trocar os bilhetes. É possível reconhecer vários rostos de edições anteriores, o que demonstra o público fiel ao festival. Após a sala estar praticamente cheia, Kara-Lis Coverdale inaugurou a sexta edição do Semibreve. Escondida atrás de uma cortina, ia criando paisagens ambientais e relaxantes, penetrada pelo hipnótico imaginário visual de Marcel Weber (a.k.a. MFO) que inevitavelmente metia a música em segundo plano durante algumas sequências. Foi o suficiente para convencer a audiência e fazer jus à abertura do festival. Já Kaitlyn Aurelia Smith, virtuosa do sintetizador Buchla, mostrou um registo mais pop. E foi mesmo o Buchla 100 e pouco mais, o suficiente para arrancar uma ovação do público. De certa forma foi uma homenagem inconsciente ao criador deste mesmo sintetizador, Don Buchla, que infelizmente faleceu no mês de Setembro passado.\r\n\r\nRon Morelli lotou o pequeno auditório do Theatro, onde apresentou pela primeira vez o projecto Faltar ao lado de Florence To. Ao contrário dos seus conhecidos sets para partir a pista de dança, aqui apresentou as suas produções mais ambientais/industriais que se podem ouvir nos seus últimos lançamentos pela Hosptial Productions. Na tela, o visual bauhausiano e glitch de Florence To foi acompanhado pela sonoridade negra de Morelli, carregada de drones e alguma batida. Provavelmente dos melhores concertos do Semibreve. Uma vasta parte do público saiu a meio para não perder o início de Andy Stott que acabou por ser uma desilusão. Tudo estava à espera para ouvir os belos sons de Too Many Voices mas o que se ouviu foi um dubstep monótono com pouco conteúdo, e ainda por cima com a Black Box sobrelotada com necessidade de oxigénio. Tudo errado.\r\n\r\nO segundo dia começou com a romaria à missa das 17:30h, mais concretamente à de Christina Vantzou acompanhada pelo Ensemble Harawi, na Capela Imaculada do Seminário Menor. Música ambiental através dos drones de Vantzou acompanhados pelo Ensemble, que colocou a plateia, que sobrelotou a Capela, em puro estado de contemplação. Infelizmente só teve uma curta duração de 30 minutos.\r\n\r\nTyondai Braxton, ex-líder dos Battles, presenteou-nos com a única performance do Theatro Circo que nos fez querer levantar das cadeiras e começar a dançar, recheada de momentos abstractos e inquietantes, que Braxton misturou com ritmos divertidamente pesados de forma bem-sucedida. Infelizmente, um problema no equipamento obrigou-o a encurtar a actuação, ao qual o público respondeu solidariamente com uma longa salva de palmas.\r\n\r\nAntes de rumarmos ao GNRation para ver Laurel Halo, fomos hipnotizados por Jonathan Saldanha. Encantador e alucinogénio, simultaneamente. O som moveu-se de forma imponente à medida que o pequeno auditório escuro, apenas com uma vaga luz vermelha ao fundo, era repleto de fumo. Saldanha proporcionou-nos os ingredientes essenciais a uma trip à medida da ‘cave’ do Theatro.\r\n\r\nAo contrário do aborrecimento que foi Stott, Laurel Halo conseguiu hipnotizar a plateia da Black Box que ia fervilhando através da incrível amálgama sonora que foi construída. Do house ao techno, de afinidades dub a batidas quebradas e até mesmo algum ambient pelo meio. Caso para dizer, clubbing de vanguarda.\r\n\r\nNo último dia o formato tem-se mantido em matinée de típico Domingo preguiçoso, onde é possível ir chillar até à Casa Rolão com a habitual Q&A da revista The Wire e depois ir ver as últimas performances no Theatro Circo até ao final da tarde. E foi a cargo de Oliver Coates e Paul Jebanasam + Tarik Barri que o Semibreve terminou. Primeiro foi Oliver Coates, violoncelista que veio apresentar o seu último disco, Upstepping (gravado apenas com sons do seu violoncelo). E nada melhor do que as simulações virtuais, distópicas e vazias de Lawrence Lek (colaborador de Kode9) como acompanhamento dos sedosos sons de Oliver. O espírito de Arthur Russell continua bem vivo!\r\nDepois veio algo que é quase impossível de expor em palavras (assim como qualquer outro lançamento com o selo da Subtext Recordings); a catarse de Paul Jebanasam e Tarik Barri que fez todo o sentido como encerramento do festival. O último trabalho de Jebanasam, Continuum, é ligado na perfeição aos visuais de Tarik (cujo software foi criado pelo próprio), dando a sensação que se estava numa tempestade em movimento constante, alternando entre a ausência de luz e mesmo de som também. Dos melhores exemplos que se pode dar de uma verdadeira experiência audiovisual.\r\n\r\nComo Kara-Lis Coverdale disse na Q&A, que é libertador sair do universo regrado da música de conservatório à qual estava habituada e consequentemente saturada, aplica-se ao Semibreve. O exemplo de como andar sempre debaixo do radar sem cair no tédio e na repetição, num mar saturado de festivais em cada esquina e a cada hora.', '2016-11-12', '', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia_autor`
--

CREATE TABLE IF NOT EXISTS `noticia_autor` (
  `idnoticia` int(11) NOT NULL,
  `idautor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`iduser` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
 ADD PRIMARY KEY (`idnoticia`), ADD KEY `idcategoria` (`idcategoria`);

--
-- Indexes for table `noticia_autor`
--
ALTER TABLE `noticia_autor`
 ADD PRIMARY KEY (`idnoticia`), ADD KEY `idautor` (`idautor`);

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
MODIFY `idautor` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
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
MODIFY `idequipamento` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
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
MODIFY `idnoticia` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
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
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT;
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
