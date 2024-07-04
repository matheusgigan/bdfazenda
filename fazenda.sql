-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05/05/2024 às 23:08
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fazenda`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_colheitaout`
--

CREATE TABLE `tb_colheitaout` (
  `id_produto` int(11) NOT NULL,
  `tipo` varchar(200) DEFAULT NULL,
  `nome_planta` varchar(200) DEFAULT NULL,
  `preco_semente` float DEFAULT NULL,
  `preco_venda_normal` float DEFAULT NULL,
  `preco_venda_prateado` float DEFAULT NULL,
  `preco_venda_dourado` float DEFAULT NULL,
  `preco_conserva` float DEFAULT NULL,
  `preco_barril` float DEFAULT NULL,
  `dias` int(11) DEFAULT NULL,
  `colheita` float DEFAULT NULL,
  `lucro` float DEFAULT NULL,
  `lucro_por_dia` float DEFAULT NULL,
  `recolheita` int(11) DEFAULT NULL,
  `lucro_estacao` float DEFAULT NULL,
  `colheita_total` int(11) DEFAULT NULL,
  `lucro_estacao_por_dia` float DEFAULT NULL,
  `fornecedor` varchar(200) DEFAULT NULL,
  `cresce_pos_colheita` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_colheitaout`
--

INSERT INTO `tb_colheitaout` (`id_produto`, `tipo`, `nome_planta`, `preco_semente`, `preco_venda_normal`, `preco_venda_prateado`, `preco_venda_dourado`, `preco_conserva`, `preco_barril`, `dias`, `colheita`, `lucro`, `lucro_por_dia`, `recolheita`, `lucro_estacao`, `colheita_total`, `lucro_estacao_por_dia`, `fornecedor`, `cresce_pos_colheita`) VALUES
(1, 'Fruta', 'Fruta antiga', 0, 750, 937, 1125, 1550, 2250, 28, 1, 750, 0, 8, 0, 0, 0, '?', 1),
(2, 'Fruta', 'Macieira', 4000, 100, 125, 150, 250, 300, 28, 0, 0, 0, 0, 0, 0, 0, 'Armazem Geral', 1),
(3, 'Fruta', 'Romãzeira', 6000, 140, 175, 210, 330, 420, 28, 0, 0, 0, 0, 0, 0, 0, 'Armazem Geral', 1),
(4, 'Fruta', 'Oxicoco', 240, 130, 162, 195, 310, 390, 7, 2, 20, 2.86, 5, 1060, 5, 37.86, 'Armazem Geral', 1),
(5, 'Vegetal', 'Abobora', 100, 320, 400, 480, 690, 720, 13, 1, 220, 16.92, 13, 440, 2, 15.71, 'Armazem Geral', 0),
(6, 'Fruta', 'Uva', 60, 80, 100, 120, 210, 240, 10, 1, 20, 2, 3, 420, 6, 15, 'Armazem Geral', 1),
(7, 'Vegetal', 'Alcachofra', 30, 160, 200, 240, 370, 360, 8, 1, 130, 16.25, 8, 390, 3, 13.93, 'Armazem Geral', 0),
(8, 'Verdura', 'Beterraba', 20, 60, 75, 90, 170, 135, 5, 1, 40, 8, 5, 280, 5, 10, 'Armazem Geral', 1),
(9, 'Vegetal', 'Amaranto', 70, 150, 187, 225, 350, 338, 7, 1, 80, 11.43, 7, 240, 3, 8.57, 'Armazem Geral', 0),
(10, 'Vegetal', 'Inhame', 60, 160, 200, 240, 370, 360, 10, 1, 100, 10, 10, 200, 2, 7.14, 'Armazem Geral', 0),
(11, 'Vegetal', 'Couve-chinesa', 50, 80, 100, 120, 210, 180, 4, 1, 30, 7.5, 4, 180, 6, 6.43, 'Armazem Geral', 0),
(12, 'Flor', 'Flor-de-fada', 200, 290, 362, 435, 0, 0, 12, 1, 90, 7.5, 12, 180, 2, 6.43, 'Armazem Geral', 0),
(13, 'Flor', 'Girassol', 50, 80, 100, 120, 0, 0, 8, 1, 30, 3.75, 8, 90, 3, 3.21, 'Armazem Geral', 0),
(14, 'Vegetal', 'Milho', 150, 50, 62, 75, 150, 133, 14, 1, -100, -7.14, 4, 50, 4, 1.79, 'Armazem Geral', 1),
(15, '?', 'Cereja-de-Joia-Doce', 1000, 3000, 3750, 4500, 6050, 0, 24, 1, 2000, 83.33, 24, 2000, 1, 71.43, 'Carrinho de Viagem', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_colheitaprim`
--

CREATE TABLE `tb_colheitaprim` (
  `id_produto` int(11) NOT NULL,
  `tipo` varchar(200) DEFAULT NULL,
  `nome_planta` varchar(200) DEFAULT NULL,
  `preco_semente` int(200) DEFAULT NULL,
  `preco_venda_normal` int(200) DEFAULT NULL,
  `preco_venda_prateado` int(200) DEFAULT NULL,
  `preco_venda_dourado` int(200) DEFAULT NULL,
  `preco_conserva` int(200) DEFAULT NULL,
  `preco_barril` int(200) DEFAULT NULL,
  `dias` int(200) DEFAULT NULL,
  `colheita` double DEFAULT NULL,
  `lucro` int(200) NOT NULL,
  `lucro_por_dia` double NOT NULL,
  `recolheita` int(200) NOT NULL,
  `lucro_estacao` int(200) NOT NULL,
  `colheita_total` int(200) NOT NULL,
  `lucro_estacao_por_dia` double NOT NULL,
  `fornecedor` varchar(200) NOT NULL,
  `cresce_pos_colheita` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_colheitaprim`
--

INSERT INTO `tb_colheitaprim` (`id_produto`, `tipo`, `nome_planta`, `preco_semente`, `preco_venda_normal`, `preco_venda_prateado`, `preco_venda_dourado`, `preco_conserva`, `preco_barril`, `dias`, `colheita`, `lucro`, `lucro_por_dia`, `recolheita`, `lucro_estacao`, `colheita_total`, `lucro_estacao_por_dia`, `fornecedor`, `cresce_pos_colheita`) VALUES
(1, 'Fruta', 'Cerejeira', 3400, 80, 100, 120, 210, 240, 28, 0, 0, 0, 0, 0, 0, 0, 'Armazem geral', 1),
(2, 'Fruta', 'Damasqueiro', 2000, 50, 62, 75, 150, 150, 28, 0, 0, 0, 0, 0, 0, 0, 'Armazem Geral', 1),
(3, 'Fruta', 'Fruta antiga', 0, 750, 937, 1125, 1550, 2250, 28, 1, 750, 0, 0, 0, 0, 0, '?', 1),
(4, 'Fruta', 'Morango', 100, 120, 150, 180, 290, 360, 8, 1, 20, 2.5, 4, 500, 5, 17.86, 'Festival do Ovo', 1),
(6, 'Vegetal', 'Ruibarbo', 100, 220, 275, 330, 490, 495, 13, 1, 120, 9.23, 13, 240, 2, 8.57, 'Loja Oasis', 0),
(7, 'Vegetal', 'Batata', 50, 80, 100, 120, 210, 180, 6, 1.25, 50, 8.33, 6, 200, 4, 7.14, 'Armazem Geral', 0),
(8, 'Vegetal', 'Couve-flor', 80, 175, 218, 262, 400, 394, 12, 1, 85, 7.92, 12, 190, 2, 6.79, 'Armazem Geral', 0),
(9, 'Vegetal', 'Vagem', 60, 40, 50, 60, 130, 90, 10, 1, -20, -2, 3, 190, 6, 6.43, 'Armazem Geral', 1),
(10, 'Vegetal', 'Couve', 70, 110, 137, 165, 270, 240, 6, 1, 40, 6.67, 6, 160, 4, 5.71, 'Armazem Geral', 0),
(11, 'Vegetal', 'Alho', 40, 60, 75, 90, 170, 135, 4, 1, 20, 5, 4, 120, 6, 4.29, 'Armazem Geral', 0),
(12, 'Vegetal', 'Chirivia', 20, 35, 43, 52, 120, 79, 4, 1, 15, 3.75, 4, 90, 6, 3.21, 'Armazem Geral', 0),
(13, 'Flor', 'Jasmim-azul', 30, 50, 62, 75, 0, 0, 7, 1, 20, 2.86, 7, 60, 3, 2.14, 'Armazem geral', 0),
(14, 'Flor', 'Tulipa', 20, 30, 37, 45, 0, 0, 6, 1, 10, 1.67, 6, 40, 4, 1.43, 'Armazem Geral', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_colheitaver`
--

CREATE TABLE `tb_colheitaver` (
  `id_produto` int(11) NOT NULL,
  `tipo` varchar(200) DEFAULT NULL,
  `nome_planta` varchar(200) DEFAULT NULL,
  `preco_semente` float DEFAULT NULL,
  `preco_venda_normal` float DEFAULT NULL,
  `preco_venda_prateado` float DEFAULT NULL,
  `preco_venda_dourado` float DEFAULT NULL,
  `preco_conserva` float DEFAULT NULL,
  `preco_barril` float DEFAULT NULL,
  `dias` int(11) DEFAULT NULL,
  `colheita` float DEFAULT NULL,
  `lucro` float DEFAULT NULL,
  `lucro_por_dia` float DEFAULT NULL,
  `recolheita` int(11) DEFAULT NULL,
  `lucro_estacao` float DEFAULT NULL,
  `colheita_total` int(11) DEFAULT NULL,
  `lucro_estacao_por_dia` float DEFAULT NULL,
  `fornecedor` varchar(200) DEFAULT NULL,
  `cresce_pos_colheita` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_colheitaver`
--

INSERT INTO `tb_colheitaver` (`id_produto`, `tipo`, `nome_planta`, `preco_semente`, `preco_venda_normal`, `preco_venda_prateado`, `preco_venda_dourado`, `preco_conserva`, `preco_barril`, `dias`, `colheita`, `lucro`, `lucro_por_dia`, `recolheita`, `lucro_estacao`, `colheita_total`, `lucro_estacao_por_dia`, `fornecedor`, `cresce_pos_colheita`) VALUES
(1, 'Fruta', 'Larangeira', 4000, 100, 125, 150, 250, 300, 28, 0, 0, 0, 0, 0, 0, 0, 'Armazem Geral', 1),
(2, 'Fruta', 'Pessegueira', 6000, 140, 175, 210, 330, 420, 28, 0, 0, 0, 0, 0, 0, 0, 'Armazem Geral', 1),
(3, 'Fruta', 'Fruta antiga', 0, 750, 937, 1125, 1550, 2250, 28, 1, 750, 0, 8, 0, 0, 0, '?', 1),
(4, 'Fruta', 'Mirtilo', 80, 80, 100, 120, 210, 240, 13, 3, 160, 12.31, 4, 880, 4, 31.43, 'Armazem Geral', 1),
(5, 'Fruta', 'Carambola', 400, 800, 1000, 1200, 1650, 2400, 13, 1, 400, 30.77, 13, 800, 2, 28.57, 'Loja Oasis', 0),
(6, 'Vegetal', 'Repolho-roxo', 100, 260, 325, 390, 570, 585, 9, 1, 160, 17.78, 9, 480, 3, 17.14, 'Armazem Geral', 0),
(7, 'Vegetal', 'Lupulo', 60, 25, 31, 37, 0, 300, 11, 1, -35, -3.18, 1, 365, 17, 13.04, 'Armazem Geral', 1),
(8, 'Fruta', 'Melão', 80, 250, 312, 375, 550, 750, 12, 1, 170, 14.17, 12, 340, 2, 12.14, 'Armazem Geral', 0),
(9, 'Fruta', 'Pimenta-picante', 40, 40, 50, 60, 130, 120, 5, 1, 0, 0, 3, 280, 8, 10, 'Armazem Geral', 1),
(10, 'Vegetal', 'Tomate', 50, 60, 75, 90, 170, 135, 11, 1, 10, 0.91, 4, 250, 5, 8.93, 'Armazem Geral', 1),
(11, 'Vegetal', 'Rabanete', 40, 90, 112, 135, 230, 203, 6, 1, 50, 8.33, 6, 200, 4, 7.14, 'Armazem Geral', 0),
(12, 'Flor', 'Papoula', 100, 140, 175, 210, 0, 0, 7, 1, 40, 5.71, 7, 120, 3, 4.29, 'Armazem Geral', 0),
(13, 'Flor', 'Flor-miçanga', 50, 90, 112, 135, 0, 0, 8, 1, 40, 5, 8, 120, 3, 4.29, 'Armazem Geral', 0),
(14, 'Vegetal', 'Milho', 150, 50, 62, 75, 150, 113, 14, 1, -100, -7.14, 4, 50, 4, 0.89, 'Armazem Geral', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_colheitaout`
--
ALTER TABLE `tb_colheitaout`
  ADD PRIMARY KEY (`id_produto`);

--
-- Índices de tabela `tb_colheitaprim`
--
ALTER TABLE `tb_colheitaprim`
  ADD PRIMARY KEY (`id_produto`);

--
-- Índices de tabela `tb_colheitaver`
--
ALTER TABLE `tb_colheitaver`
  ADD PRIMARY KEY (`id_produto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_colheitaout`
--
ALTER TABLE `tb_colheitaout`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `tb_colheitaprim`
--
ALTER TABLE `tb_colheitaprim`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `tb_colheitaver`
--
ALTER TABLE `tb_colheitaver`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
