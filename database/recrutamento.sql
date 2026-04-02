-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 02/04/2026 às 13:20
-- Versão do servidor: 5.7.42
-- Versão do PHP: 8.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ctpricec_recrutamento`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `auditoria_usuarios`
--

CREATE TABLE `auditoria_usuarios` (
  `id` int(11) NOT NULL,
  `actor_usuario_id` int(11) DEFAULT NULL,
  `target_usuario_id` int(11) DEFAULT NULL,
  `action` varchar(80) NOT NULL,
  `details` text,
  `ip` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `auditoria_usuarios`
--

INSERT INTO `auditoria_usuarios` (`id`, `actor_usuario_id`, `target_usuario_id`, `action`, `details`, `ip`, `created_at`) VALUES
(1, 1, 1, 'supervisor_ensured', 'Usuário supervisor garantido', '186.219.223.142', '2026-03-17 20:37:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `beneficios`
--

CREATE TABLE `beneficios` (
  `id` int(11) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `descricao` text,
  `parceiro` varchar(120) DEFAULT NULL,
  `logo_path` varchar(255) DEFAULT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `beneficios`
--

INSERT INTO `beneficios` (`id`, `nome`, `descricao`, `parceiro`, `logo_path`, `ativo`, `created_at`) VALUES
(1, 'Caju Multibenefícios', '', '', '97c31e0bfd9df2bfbdb96f810b486dc8.png', 1, '2026-03-17 20:40:16'),
(2, 'Unimed', '', '', '5be723d09750403f5b542d285c5674fc.png', 1, '2026-03-19 21:01:50'),
(3, 'Hapvida', '', '', '7c18bbba2fec5e2685a240ab61432088.png', 1, '2026-03-19 21:03:05'),
(4, 'B-day', '', '', '019d4bd824997f8639c5f70e8fda609e.png', 1, '2026-03-19 21:09:43'),
(5, 'Ginástica Laboral', '', '', '1ef254056cfa362eeaf914db86529688.png', 1, '2026-03-19 21:11:24'),
(6, 'Amistê', '', '', 'caab3d345581b091b0ba88a4c2a04817.png', 1, '2026-03-19 21:21:29'),
(7, 'Lilium', '', '', 'ec9b124fe53e44e573191559633e9415.png', 1, '2026-03-19 21:21:48'),
(8, 'Dress Code', '', '', 'c8a3d710ac0da0cb89001625dff9de58.png', 1, '2026-03-19 21:22:08'),
(9, 'Programa de Desenvolvimento ao Colaborador', '', '', '0e1e860271eebdde98415cca75718123.png', 1, '2026-03-19 21:22:43'),
(10, 'Indicação de Talentos', '', '', '7c747210581148209aedbc0fccc1e0b1.png', 1, '2026-03-19 21:22:59'),
(11, 'Indicação de Empresas', '', '', 'c7bec2666efa5c5a6a755b54ec29e344.png', 1, '2026-03-19 21:23:19'),
(12, 'Premiação por Desempenho', '', '', '4a64cfc1abf00e0cce5ab39c8e88c76a.png', 1, '2026-03-19 21:23:46');

-- --------------------------------------------------------

--
-- Estrutura para tabela `candidaturas`
--

CREATE TABLE `candidaturas` (
  `id` int(11) NOT NULL,
  `vaga_id` int(11) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `telefone` varchar(40) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `cargo_pretendido` varchar(120) NOT NULL,
  `experiencia` text NOT NULL,
  `pdf_path` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'novo',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `stage_id` int(11) DEFAULT NULL,
  `observacoes` text,
  `indicacao_colaborador` tinyint(1) NOT NULL DEFAULT '0',
  `indicacao_colaborador_nome` varchar(120) DEFAULT NULL,
  `indicacao_data_contratacao` datetime DEFAULT NULL,
  `indicacao_data_fim_experiencia` date DEFAULT NULL,
  `indicacao_pagamento_realizado` tinyint(1) NOT NULL DEFAULT '0',
  `indicacao_data_pagamento` date DEFAULT NULL,
  `indicacao_pagamento_registrado_em` datetime DEFAULT NULL,
  `indicacao_valor_comissao` decimal(10,2) DEFAULT NULL,
  `indicacao_metodo_pagamento` varchar(50) DEFAULT NULL,
  `indicacao_pagamento_status` varchar(20) NOT NULL DEFAULT 'pendente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `candidaturas`
--

INSERT INTO `candidaturas` (`id`, `vaga_id`, `nome`, `email`, `telefone`, `cpf`, `cargo_pretendido`, `experiencia`, `pdf_path`, `status`, `created_at`, `stage_id`, `observacoes`, `indicacao_colaborador`, `indicacao_colaborador_nome`, `indicacao_data_contratacao`, `indicacao_data_fim_experiencia`, `indicacao_pagamento_realizado`, `indicacao_data_pagamento`, `indicacao_pagamento_registrado_em`, `indicacao_valor_comissao`, `indicacao_metodo_pagamento`, `indicacao_pagamento_status`) VALUES
(1, 1, 'Fabio Ozuna', 'fozuna@gmail.com', '67993256260', '81229046100', 'ANALISTA DE DEPARTAMENTO PESSOAL', '10 anos', 'Fabio_Ozuna_ANALISTA_DE_DEPARTAMENTO_PESSOAL_2026-03-17_20-41-36.pdf', 'novo', '2026-03-17 20:41:37', 6, 'Candidato fora do perfil exigido pela vaga.', 0, NULL, NULL, NULL, 0, NULL, '2026-03-25 18:14:41', NULL, NULL, 'pendente'),
(2, 1, 'CLEVER RENAN', 'cleverrenan17@gmail.com', '67984622737', '06877219112', 'ANALISTA DE DEPARTAMENTO PESSOAL', 'Sou formado em Processos Gerenciais pela UFMS e construí minha carreira com foco em organização, estratégia e resultado. Tenho experiência em atendimento ao público e rotinas administrativas em empresas como BTCC, LIG10 e no setor de Qualidade do Hospital Cassems, onde atuei com elaboração de planilhas gerenciais, organização de processos e controle documental, sempre buscando eficiência e melhoria contínua.\r\n\r\nNa FAPEC, atuando na aplicação de provas para o Detran, desenvolvi ainda mais minha comunicação, postura profissional e capacidade de liderança em ambientes de responsabilidade e pressão.\r\n\r\nMeu perfil é analítico, estratégico e orientado a metas.', 'CLEVER_RENAN_ANALISTA_DE_DEPARTAMENTO_PESSOAL_2026-03-24_03-12-39.pdf', 'novo', '2026-03-24 03:12:39', 6, 'Candidato fora do perfil exigido pela vaga.', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'pendente'),
(3, 1, 'Daniele Assis Tuneca', 'danytuneca@hotmail.com', '67992340853', '02421102154', 'ANALISTA DE DEPARTAMENTO PESSOAL', '..', 'Daniele_Assis_Tuneca_ANALISTA_DE_DEPARTAMENTO_PESSOAL_2026-03-24_20-13-38.pdf', 'novo', '2026-03-24 20:13:38', 1, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'pendente'),
(4, 1, 'Julia Luizi Apodaca Penha', 'julialapenha@gmail.com', '67992490224', '09635224184', 'ANALISTA DE DEPARTAMENTO PESSOAL', 'Atuação nas rotinas de Departamento Pessoal, incluindo admissão, demissão, controle de ponto, folha de pagamento e encargos trabalhistas. Apoio na apuração de impostos, organização de documentos e cumprimento de prazos legais.', 'Julia_Luizi_Apodaca_Penha_ANALISTA_DE_DEPARTAMENTO_PESSOAL_2026-03-26_17-52-47.pdf', 'novo', '2026-03-26 17:52:47', 1, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'pendente'),
(5, 1, 'Giovanna Cuttier', 'giovannacuttier@gmail.com', '679993046090', '07154782145', 'ANALISTA DE DEPARTAMENTO PESSOAL', 'Experiência em rotinas de Departamento Pessoal, gestão de folha, encargos sociais, eSocial e obrigações acessórias, com atendimento a empresas de diversos segmentos e foco em organização e cumprimento de prazos.', 'Giovanna_Cuttier_ANALISTA_DE_DEPARTAMENTO_PESSOAL_2026-04-01_14-32-58.pdf', 'novo', '2026-04-01 14:32:58', 1, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'pendente'),
(6, 2, 'Pedro Henrique de Arruda Oliveira de Arruda', 'po170104@gmail.com', '679999-9999', '06310917188', 'ANALISTA FISCAL', 'Estudante de Ciências Contábeis com grande disposição para o aprendizado, visando o desenvolvimento profissional no setor contábil ou fiscal.', 'Pedro_Henrique_de_Arruda_Oliveira_de_Arruda_ANALISTA_FISCAL_2026-04-01_14-51-41.pdf', 'novo', '2026-04-01 14:51:41', 6, NULL, 1, 'Maria Luiza', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'pendente'),
(7, 1, 'Jéssica Dos Santos Dias', 'jessicadias201546@gmail.com', '67  99996-8789', '06842443148', 'ANALISTA DE DEPARTAMENTO PESSOAL', 'Sou uma pessoa resolutiva, possuo experiência tanto na área hospitalar quanto na área administrativa. Possuo conhecimentos avançados em inventários de medicamentos e materiais hospitalares. Em minha trajetória meu maior objetivo é aprimorar meus conhecimentos sempre agregando ao time.', 'Jssica_Dos_Santos_Dias_ANALISTA_DE_DEPARTAMENTO_PESSOAL_2026-04-01_17-28-21.pdf', 'novo', '2026-04-01 17:28:21', 1, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'pendente'),
(8, 3, 'Helena Chuver', 'helenaschuver@gmail.com', '(67) 99169-9831', '02598275179', 'ANALISTA CONTÁBIL', 'Tenho bastante experiência na área , conforme está descriminado no meu currículo.', 'Helena_Chuver_ANALISTA_CONTBIL_2026-04-01_21-50-00.pdf', 'novo', '2026-04-01 21:50:00', 1, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'pendente');

-- --------------------------------------------------------

--
-- Estrutura para tabela `candidatura_historico`
--

CREATE TABLE `candidatura_historico` (
  `id` int(11) NOT NULL,
  `candidatura_id` int(11) NOT NULL,
  `status_anterior` varchar(30) DEFAULT NULL,
  `status_novo` varchar(30) NOT NULL,
  `observacoes` text,
  `usuario_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `candidatura_historico`
--

INSERT INTO `candidatura_historico` (`id`, `candidatura_id`, `status_anterior`, `status_novo`, `observacoes`, `usuario_id`, `created_at`) VALUES
(1, 1, 'Desconhecido', 'Rejeitado', 'Mudança de etapa via Pipeline', 3, '2026-03-20 12:18:26'),
(2, 1, 'Rejeitado', 'Entrevista', 'Mudança de etapa via Pipeline', 3, '2026-03-20 12:23:40'),
(3, 1, 'Entrevista', 'Rejeitado', 'Mudança de etapa via Pipeline', 3, '2026-03-20 12:24:12'),
(4, 1, 'Rejeitado', 'Triagem', 'Mudança de etapa via Pipeline', 3, '2026-03-20 15:20:18'),
(5, 1, 'Triagem', 'Rejeitado', 'Mudança de etapa via Pipeline', 3, '2026-03-20 15:20:56'),
(6, 1, 'Rejeitado', 'Entrevista', 'Mudança de etapa via Pipeline', 3, '2026-03-20 18:30:57'),
(7, 1, 'Entrevista', 'Rejeitado', 'Mudança de etapa via Pipeline', 3, '2026-03-20 20:24:52'),
(8, 2, 'Desconhecido', 'Rejeitado', 'Mudança de etapa via Pipeline', 3, '2026-03-24 12:19:35'),
(9, 3, 'Desconhecido', 'Triagem', 'Mudança de etapa via Pipeline', 3, '2026-03-24 20:23:12'),
(10, 2, 'novo', 'novo', 'Candidato fora do perfil exigido pela vaga.', 3, '2026-03-24 20:38:30'),
(11, 2, 'novo', 'novo', 'Candidato fora do perfil exigido pela vaga.', 3, '2026-03-24 20:39:12'),
(12, 1, 'novo', 'novo', 'Candidato fora do perfil exigido pela vaga.', 3, '2026-03-24 20:39:42'),
(13, 4, 'Desconhecido', 'Triagem', 'Mudança de etapa via Pipeline', 3, '2026-03-26 20:01:50'),
(14, 4, 'Triagem', 'Novo', 'Mudança de etapa via Pipeline', 3, '2026-03-26 20:02:19'),
(15, 3, 'Triagem', 'Novo', 'Mudança de etapa via Pipeline', 3, '2026-04-01 14:33:59'),
(16, 6, 'Desconhecido', 'Rejeitado', 'Mudança de etapa via Pipeline', 3, '2026-04-01 14:52:16'),
(17, 7, 'Desconhecido', 'Novo', 'Mudança de etapa via Pipeline', 3, '2026-04-01 17:29:17'),
(18, 5, 'Desconhecido', 'Novo', 'Mudança de etapa via Pipeline', 3, '2026-04-01 17:29:37'),
(19, 8, 'Desconhecido', 'Novo', 'Mudança de etapa via Pipeline', 3, '2026-04-02 12:16:12');

-- --------------------------------------------------------

--
-- Estrutura para tabela `indicacao_pagamento_auditoria`
--

CREATE TABLE `indicacao_pagamento_auditoria` (
  `id` int(11) NOT NULL,
  `candidatura_id` int(11) NOT NULL,
  `data_anterior` date DEFAULT NULL,
  `data_nova` date NOT NULL,
  `motivo` varchar(255) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `indicacao_pagamento_auditoria`
--

INSERT INTO `indicacao_pagamento_auditoria` (`id`, `candidatura_id`, `data_anterior`, `data_nova`, `motivo`, `usuario_id`, `created_at`) VALUES
(1, 1, NULL, '2026-03-25', 'Registro inicial do pagamento', 3, '2026-03-25 18:14:41');

-- --------------------------------------------------------

--
-- Estrutura para tabela `notas_recrutador`
--

CREATE TABLE `notas_recrutador` (
  `id` int(11) NOT NULL,
  `candidatura_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `nota` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `token_hash` varchar(255) NOT NULL,
  `expires_at` datetime NOT NULL,
  `used_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pipeline_movements`
--

CREATE TABLE `pipeline_movements` (
  `id` int(11) NOT NULL,
  `candidatura_id` int(11) NOT NULL,
  `stage_anterior_id` int(11) DEFAULT NULL,
  `stage_novo_id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `pipeline_movements`
--

INSERT INTO `pipeline_movements` (`id`, `candidatura_id`, `stage_anterior_id`, `stage_novo_id`, `usuario_id`, `created_at`) VALUES
(1, 1, NULL, 6, 3, '2026-03-20 12:18:26'),
(2, 1, 6, 3, 3, '2026-03-20 12:23:40'),
(3, 1, 3, 6, 3, '2026-03-20 12:24:12'),
(4, 1, 6, 2, 3, '2026-03-20 15:20:18'),
(5, 1, 2, 6, 3, '2026-03-20 15:20:56'),
(6, 1, 6, 3, 3, '2026-03-20 18:30:57'),
(7, 1, 3, 6, 3, '2026-03-20 20:24:52'),
(8, 2, NULL, 6, 3, '2026-03-24 12:19:35'),
(9, 3, NULL, 2, 3, '2026-03-24 20:23:12'),
(10, 4, NULL, 2, 3, '2026-03-26 20:01:50'),
(11, 4, 2, 1, 3, '2026-03-26 20:02:19'),
(12, 3, 2, 1, 3, '2026-04-01 14:33:59'),
(13, 6, NULL, 6, 3, '2026-04-01 14:52:16'),
(14, 7, NULL, 1, 3, '2026-04-01 17:29:17'),
(15, 5, NULL, 1, 3, '2026-04-01 17:29:37'),
(16, 8, NULL, 1, 3, '2026-04-02 12:16:12');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pipeline_stages`
--

CREATE TABLE `pipeline_stages` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `ordem` int(11) NOT NULL DEFAULT '0',
  `cor` varchar(7) DEFAULT '#cccccc',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `pipeline_stages`
--

INSERT INTO `pipeline_stages` (`id`, `nome`, `ordem`, `cor`, `created_at`) VALUES
(1, 'Novo', 1, '#3b82f6', '2026-03-19 20:03:04'),
(2, 'Triagem', 2, '#f59e0b', '2026-03-19 20:03:04'),
(3, 'Entrevista', 3, '#8b5cf6', '2026-03-19 20:03:04'),
(4, 'Proposta', 4, '#10b981', '2026-03-19 20:03:04'),
(5, 'Contratado', 5, '#059669', '2026-03-19 20:03:04'),
(6, 'Rejeitado', 6, '#ef4444', '2026-03-19 20:03:04');

-- --------------------------------------------------------

--
-- Estrutura para tabela `requisitos`
--

CREATE TABLE `requisitos` (
  `id` int(11) NOT NULL,
  `vaga_id` int(11) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `obrigatorio` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(120) NOT NULL,
  `senha_hash` varchar(255) NOT NULL,
  `role` enum('admin','rh','viewer') NOT NULL DEFAULT 'viewer',
  `is_supervisor` tinyint(1) NOT NULL DEFAULT '0',
  `email_verified_at` datetime DEFAULT NULL,
  `last_password_reset_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha_hash`, `role`, `is_supervisor`, `email_verified_at`, `last_password_reset_at`, `created_at`) VALUES
(1, 'Fabio Ozuna', 'admin@traxter.com.br', '$2y$10$7LUed99eJ3VjxUq2cqyxZOf6DWrgs29FsA/IYuW5qS4noH1o5VA8e', 'admin', 1, '2026-03-17 17:13:34', '2026-03-19 19:23:13', '2026-03-17 17:13:34'),
(2, 'Luis Otávio', 'luis@teste.com', '$2y$10$xTrylKl2TE8CwS4pufWJ8OS4jDZMJXMuJ18A6tIoBfqSxtnYNsLc6', 'admin', 0, NULL, NULL, '2026-03-17 20:55:48'),
(3, 'Luis Otávio', 'rh@ctpricems.com.br', '$2y$10$/aMrCDctQeLhtzM6H0UKZ.8HgsSNYWvzGKlZ8Jzk8VaHytlU5tJ2u', 'admin', 0, NULL, NULL, '2026-03-19 20:38:35'),
(4, 'Marcelo Barbosa da Silva', 'marcelo@ctpricems.com.br', '$2y$10$aMwEq.6rbIJFf9HYgGcwU.op14vDncsz.TyWPPoS0y.xx/4.AMI7G', 'admin', 0, '2026-03-25 12:49:14', NULL, '2026-03-20 13:55:35'),
(5, 'Ysabella Penzo Barbosa', 'ysabella@ctpricems.com.br', '$2y$10$23e6Yib/1mJpa7DB01lSwuLEKHr7fZCndjlnb/Ya3xML9zDQrOaAC', 'admin', 0, '2026-03-25 12:50:48', NULL, '2026-03-25 12:50:41');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vagas`
--

CREATE TABLE `vagas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `descricao` text NOT NULL,
  `requisitos` text NOT NULL,
  `area` varchar(100) DEFAULT NULL,
  `local` varchar(100) DEFAULT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `vagas`
--

INSERT INTO `vagas` (`id`, `titulo`, `descricao`, `requisitos`, `area`, `local`, `ativo`, `created_at`) VALUES
(1, 'ANALISTA DE DEPARTAMENTO PESSOAL', '-> Atuar nas rotinas de departamento pessoal de empresas enquadradas nos Regimes (Simples Nacional, Lucro Real e Lucro Presumido).\r\n\r\n-> Processamento de folha, férias, rescisões, acompanhamento de afastamentos, Sefip, DCTF WEB, e E-social, entre outras atividades pertinentes ao cargo.', '-> Conhecimento no sistema Domínio\r\n\r\n-> Experiência mínima de 1 ano em escritório de contabilidade', 'Departamento Pessoal', 'Campo Grande', 1, '2026-03-17 20:39:06'),
(2, 'ANALISTA FISCAL', '-> Apuração fiscal das empresas de Regime Lucro Real e Presumido.\r\n\r\n-> Apuração dos impostos municipais, estaduais e federais, entrega de obrigações acessórias (EFD Fiscal., EFD Contábil, EFD REinf, DCTF), entre outras atividades pertinentes ao cargo.', '-> Conhecimento no sistema Domínio\r\n\r\n-> Experiência mínima de 1 ano em escritório de contabilidade', 'Fiscal', 'Campo Grande', 1, '2026-03-19 20:48:48'),
(3, 'ANALISTA CONTÁBIL', '-> Atuar nas rotinas contábeis das empresas enquadradas nos regimes (Simples Nacional, Lucro Presumido e Lucro Real), lançamentos e análise de demonstrações contábeis, fechamento de balanço, conciliação de fornecedores, bancos, clientes, obrigações acessórias, entre outras atividades pertinentes ao cargo.', '-> Conhecimento no sistema Domínio\r\n\r\n-> Experiência mínima de 1 ano em escritório de contabilidade\r\n\r\n-> Ser inscrito no CRC ou cursando superior em Ciências Contábeis', 'Contábil', 'Campo Grande', 1, '2026-03-19 20:49:58');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `auditoria_usuarios`
--
ALTER TABLE `auditoria_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_auditoria_actor` (`actor_usuario_id`),
  ADD KEY `fk_auditoria_target` (`target_usuario_id`);

--
-- Índices de tabela `beneficios`
--
ALTER TABLE `beneficios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `candidaturas`
--
ALTER TABLE `candidaturas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD KEY `fk_cand_vaga` (`vaga_id`),
  ADD KEY `idx_candidaturas_stage_id` (`stage_id`);

--
-- Índices de tabela `candidatura_historico`
--
ALTER TABLE `candidatura_historico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hist_candidatura` (`candidatura_id`),
  ADD KEY `fk_hist_usuario` (`usuario_id`);

--
-- Índices de tabela `indicacao_pagamento_auditoria`
--
ALTER TABLE `indicacao_pagamento_auditoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ind_pag_cand` (`candidatura_id`),
  ADD KEY `fk_ind_pag_user` (`usuario_id`);

--
-- Índices de tabela `notas_recrutador`
--
ALTER TABLE `notas_recrutador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_nota_cand` (`candidatura_id`),
  ADD KEY `fk_nota_user` (`usuario_id`);

--
-- Índices de tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_password_reset_usuario` (`usuario_id`);

--
-- Índices de tabela `pipeline_movements`
--
ALTER TABLE `pipeline_movements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mov_cand` (`candidatura_id`),
  ADD KEY `fk_mov_stage_ant` (`stage_anterior_id`),
  ADD KEY `fk_mov_stage_new` (`stage_novo_id`),
  ADD KEY `fk_mov_user` (`usuario_id`);

--
-- Índices de tabela `pipeline_stages`
--
ALTER TABLE `pipeline_stages`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `requisitos`
--
ALTER TABLE `requisitos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_req_vaga` (`vaga_id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices de tabela `vagas`
--
ALTER TABLE `vagas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `auditoria_usuarios`
--
ALTER TABLE `auditoria_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `beneficios`
--
ALTER TABLE `beneficios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `candidaturas`
--
ALTER TABLE `candidaturas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `candidatura_historico`
--
ALTER TABLE `candidatura_historico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `indicacao_pagamento_auditoria`
--
ALTER TABLE `indicacao_pagamento_auditoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `notas_recrutador`
--
ALTER TABLE `notas_recrutador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pipeline_movements`
--
ALTER TABLE `pipeline_movements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `pipeline_stages`
--
ALTER TABLE `pipeline_stages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `requisitos`
--
ALTER TABLE `requisitos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `vagas`
--
ALTER TABLE `vagas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `auditoria_usuarios`
--
ALTER TABLE `auditoria_usuarios`
  ADD CONSTRAINT `fk_auditoria_actor` FOREIGN KEY (`actor_usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_auditoria_target` FOREIGN KEY (`target_usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `candidaturas`
--
ALTER TABLE `candidaturas`
  ADD CONSTRAINT `fk_cand_stage` FOREIGN KEY (`stage_id`) REFERENCES `pipeline_stages` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_cand_vaga` FOREIGN KEY (`vaga_id`) REFERENCES `vagas` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `candidatura_historico`
--
ALTER TABLE `candidatura_historico`
  ADD CONSTRAINT `fk_hist_candidatura` FOREIGN KEY (`candidatura_id`) REFERENCES `candidaturas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_hist_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `indicacao_pagamento_auditoria`
--
ALTER TABLE `indicacao_pagamento_auditoria`
  ADD CONSTRAINT `fk_ind_pag_cand` FOREIGN KEY (`candidatura_id`) REFERENCES `candidaturas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ind_pag_user` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Restrições para tabelas `notas_recrutador`
--
ALTER TABLE `notas_recrutador`
  ADD CONSTRAINT `fk_nota_cand` FOREIGN KEY (`candidatura_id`) REFERENCES `candidaturas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_nota_user` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `password_resets`
--
ALTER TABLE `password_resets`
  ADD CONSTRAINT `fk_password_reset_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `pipeline_movements`
--
ALTER TABLE `pipeline_movements`
  ADD CONSTRAINT `fk_mov_cand` FOREIGN KEY (`candidatura_id`) REFERENCES `candidaturas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_mov_stage_ant` FOREIGN KEY (`stage_anterior_id`) REFERENCES `pipeline_stages` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_mov_stage_new` FOREIGN KEY (`stage_novo_id`) REFERENCES `pipeline_stages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_mov_user` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `requisitos`
--
ALTER TABLE `requisitos`
  ADD CONSTRAINT `fk_req_vaga` FOREIGN KEY (`vaga_id`) REFERENCES `vagas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
