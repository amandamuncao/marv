-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19-Set-2018 às 01:02
-- Versão do servidor: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marv`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_clientes`
--

CREATE TABLE `tb_clientes` (
  `Id` int(11) NOT NULL,
  `Nome` varchar(20) NOT NULL,
  `E_mail` varchar(50) NOT NULL,
  `Tipos` varchar(10) NOT NULL,
  `Id_do_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_receitas`
--

CREATE TABLE `tb_receitas` (
  `Titulo` varchar(20) NOT NULL,
  `Descricao` varchar(350) NOT NULL,
  `Ingredientes` varchar(200) NOT NULL,
  `Tempo_de_preparo` time NOT NULL,
  `Rendimento` int(11) NOT NULL,
  `Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_receitas`
--

INSERT INTO `tb_receitas` (`Titulo`, `Descricao`, `Ingredientes`, `Tempo_de_preparo`, `Rendimento`, `Id`) VALUES
('Torta Pascoalina', 'Torta Pascoalina Ã© opÃ§Ã£o vegetariana pro feriado', '400g de ricota 400g de espinafre 500ml de creme de leite 300 ml de leite', '00:00:45', 8, 1),
('aa', 'bb', 'cc', '00:00:00', 1, 4),
('abc', 'abc', 'abc', '00:02:00', 1, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_registrar`
--

CREATE TABLE `tb_registrar` (
  `login` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_registrar`
--

INSERT INTO `tb_registrar` (`login`, `email`, `senha`, `id`, `tipo`) VALUES
('', 'c', '', 1, 0),
('', '', '', 2, 0),
('dsansao1', 'a@gmail.com', '123', 3, 1),
('a', 'c', 'b', 4, 0),
('dsansao', 'dsansao@gmail.com', '12345', 5, 0),
('mariajoaquina', 'majoaquina@gmail.com', 'cirilinho123', 6, 0),
('amanda', 'amanda.muncao@gmail.com', '12345', 8, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_restaurantes`
--

CREATE TABLE `tb_restaurantes` (
  `Id` int(11) NOT NULL,
  `Endereco` varchar(50) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Area_de_Preferencia` int(11) NOT NULL,
  `Nome_do_restaurante` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_restaurantes`
--

INSERT INTO `tb_restaurantes` (`Id`, `Endereco`, `Numero`, `Area_de_Preferencia`, `Nome_do_restaurante`) VALUES
(0, 'natal', 312, 5, 'Mangai');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `usuario` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`usuario`, `senha`, `id`) VALUES
('', '', 1),
('', '', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_clientes`
--
ALTER TABLE `tb_clientes`
  ADD PRIMARY KEY (`Id_do_usuario`),
  ADD UNIQUE KEY `Id` (`Id`),
  ADD UNIQUE KEY `Id_do_usuario` (`Id_do_usuario`);

--
-- Indexes for table `tb_receitas`
--
ALTER TABLE `tb_receitas`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tb_registrar`
--
ALTER TABLE `tb_registrar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_clientes`
--
ALTER TABLE `tb_clientes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_receitas`
--
ALTER TABLE `tb_receitas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_registrar`
--
ALTER TABLE `tb_registrar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
