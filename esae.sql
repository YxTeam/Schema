-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21-Jul-2017 às 22:26
-- Versão do servidor: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esae`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cartao_cidadao` int(11) NOT NULL,
  `sexo` varchar(100) NOT NULL,
  `nacionalidade` varchar(100) NOT NULL,
  `morada` varchar(255) NOT NULL,
  `telemovel` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `cartao_cidadao`, `sexo`, `nacionalidade`, `morada`, `telemovel`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Filipe Gomes Silva', 123456789, 'Masculino', 'Portuguesa', 'Penela', 917226915, 'infinitywarfare7@gmail.com', '2017-07-14 04:06:43', '2017-07-14 04:06:43'),
(10, 'xczxczxc', 23131, 'Masculino', 'dksahdasdasdaa', 'asdasdasd', 12334, 'subap@car101.pro', '2017-07-17 01:16:34', '2017-07-17 01:16:34'),
(11, 'gjgjgjh', 646464, 'Masculino', 'fhfgugiguf', 'bnvbcvx', 46465431, 'test@test', '2017-07-17 01:20:36', '2017-07-17 01:20:36');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno_disciplina`
--

CREATE TABLE `aluno_disciplina` (
  `aluno_id` int(11) NOT NULL,
  `disciplina_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno_disciplina`
--

INSERT INTO `aluno_disciplina` (`aluno_id`, `disciplina_id`, `created_at`, `updated_at`) VALUES
(1, 3, '2017-07-14 04:07:02', '2017-07-14 04:07:02'),
(10, 2, '2017-07-17 01:16:34', '2017-07-17 01:16:34'),
(10, 3, '2017-07-17 01:16:34', '2017-07-17 01:16:34'),
(11, 2, '2017-07-17 01:20:36', '2017-07-17 01:20:36'),
(11, 3, '2017-07-17 01:20:37', '2017-07-17 01:20:37');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno_propina`
--

CREATE TABLE `aluno_propina` (
  `aluno_id` int(11) NOT NULL,
  `propina_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno_propina`
--

INSERT INTO `aluno_propina` (`aluno_id`, `propina_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2017-07-17 15:54:25', '2017-07-17 15:54:25'),
(10, 1, '2017-07-17 15:54:25', '2017-07-17 15:54:25');

-- --------------------------------------------------------

--
-- Estrutura da tabela `avisos`
--

CREATE TABLE `avisos` (
  `id` int(11) NOT NULL,
  `assunto` varchar(100) NOT NULL,
  `descricao` text NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `avisos`
--

INSERT INTO `avisos` (`id`, `assunto`, `descricao`, `created_at`, `updated_at`) VALUES
(1, 'cena', 'coise', '2017-07-08 19:43:04', '2017-07-08 19:43:04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aviso_curso`
--

CREATE TABLE `aviso_curso` (
  `aviso_id` int(11) NOT NULL,
  `curso_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aviso_disciplina`
--

CREATE TABLE `aviso_disciplina` (
  `aviso_id` int(11) NOT NULL,
  `disciplina_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `anos` int(5) NOT NULL,
  `coordenador` varchar(100) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`id`, `nome`, `anos`, `coordenador`, `tipo`, `created_at`, `updated_at`) VALUES
(1, 'Multimédia', 3, 'Francisco Amaral', 'Outro', '2017-06-22 01:57:32', '2017-06-27 01:28:54'),
(2, 'Cena', 4, 'Joaquim Alberto', 'Mestrado', '2017-07-13 22:36:36', '2017-07-13 22:36:36'),
(3, 'Curso Épico', 5, 'António Costas', 'Pós-Graduação', '2017-07-13 23:56:56', '2017-07-13 23:56:56'),
(4, 'Design e mais nada', 3, 'asda', 'Outro', '2017-07-17 01:24:30', '2017-07-17 01:24:30'),
(5, 'jgsjgda', 1, 'sadasda', 'Mestrado', '2017-07-17 01:27:59', '2017-07-17 01:27:59');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso_aluno`
--

CREATE TABLE `curso_aluno` (
  `curso_id` int(11) NOT NULL,
  `aluno_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `curso_aluno`
--

INSERT INTO `curso_aluno` (`curso_id`, `aluno_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2017-07-14 04:08:07', '2017-07-14 04:08:07'),
(1, 11, '2017-07-17 01:20:36', '2017-07-17 01:20:36');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso_disciplina`
--

CREATE TABLE `curso_disciplina` (
  `curso_id` int(11) NOT NULL,
  `disciplina_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `curso_disciplina`
--

INSERT INTO `curso_disciplina` (`curso_id`, `disciplina_id`, `created_at`, `updated_at`) VALUES
(5, 2, '2017-07-17 01:27:59', '2017-07-17 01:27:59'),
(5, 3, '2017-07-17 01:27:59', '2017-07-17 01:27:59');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso_documento`
--

CREATE TABLE `curso_documento` (
  `curso_id` int(11) NOT NULL,
  `documento_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso_estagio`
--

CREATE TABLE `curso_estagio` (
  `curso_id` int(11) NOT NULL,
  `estagio_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `curso_estagio`
--

INSERT INTO `curso_estagio` (`curso_id`, `estagio_id`, `created_at`, `updated_at`) VALUES
(1, 3, '2017-07-21 20:15:44', '2017-07-21 20:15:44'),
(2, 3, '2017-07-21 20:15:44', '2017-07-21 20:15:44'),
(3, 3, '2017-07-21 20:15:44', '2017-07-21 20:15:44');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso_propina`
--

CREATE TABLE `curso_propina` (
  `curso_id` int(11) NOT NULL,
  `propina_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `curso_propina`
--

INSERT INTO `curso_propina` (`curso_id`, `propina_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2017-07-17 15:54:24', '2017-07-17 15:54:24');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `tipo` int(5) DEFAULT '5',
  `ects` int(5) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `disciplinas`
--

INSERT INTO `disciplinas` (`id`, `nome`, `tipo`, `ects`, `created_at`, `updated_at`) VALUES
(2, 'Programação II', 5, 6, '2017-06-27 01:28:10', '2017-06-27 01:28:10'),
(3, 'Programação III', 5, 7, '2017-06-27 01:28:21', '2017-06-27 01:28:21');

-- --------------------------------------------------------

--
-- Estrutura da tabela `documentos`
--

CREATE TABLE `documentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `link` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `documentos`
--

INSERT INTO `documentos` (`id`, `nome`, `categoria`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Requerimento de admissão à prova pública', 'Requerimentos', 'http://www.ismt.pt/pt-files/pdf/RequerimentoAdmProPub.pdf', '2017-07-18 01:49:00', '2017-07-18 01:49:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estagios`
--

CREATE TABLE `estagios` (
  `id` int(11) NOT NULL,
  `empresa` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `n_horas` int(11) NOT NULL,
  `local` varchar(250) NOT NULL,
  `contacto` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estagios`
--

INSERT INTO `estagios` (`id`, `empresa`, `area`, `n_horas`, `local`, `contacto`, `created_at`, `updated_at`) VALUES
(1, 'Amora Digital', 'Programação', 250, 'Condeixa', 912345678, '2017-07-21 20:10:33', '2017-07-21 20:10:33'),
(2, 'Amora Digital', 'Programação', 250, 'Condeixa', 912345678, '2017-07-21 20:12:10', '2017-07-21 20:12:10'),
(3, 'Test', 'test', 152, 'teste', 912345678, '2017-07-21 20:15:44', '2017-07-21 20:15:44');

-- --------------------------------------------------------

--
-- Estrutura da tabela `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `dia` date NOT NULL,
  `hora` time NOT NULL,
  `local` varchar(255) NOT NULL,
  `assunto` varchar(100) NOT NULL,
  `descricao` text NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `eventos`
--

INSERT INTO `eventos` (`id`, `dia`, `hora`, `local`, `assunto`, `descricao`, `created_at`, `updated_at`) VALUES
(1, '2017-07-27', '14:00:00', 'ISMT', 'Apresentação', 'Apresentação askjdhakshdj asdhajsgd', '2017-07-17 02:28:52', '2017-07-17 02:28:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `evento_curso`
--

CREATE TABLE `evento_curso` (
  `evento_id` int(11) NOT NULL,
  `curso_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `evento_curso`
--

INSERT INTO `evento_curso` (`evento_id`, `curso_id`, `created_at`, `updated_at`) VALUES
(1, 3, '2017-07-17 02:28:52', '2017-07-17 02:28:52'),
(1, 4, '2017-07-17 02:28:52', '2017-07-17 02:28:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `evento_disciplina`
--

CREATE TABLE `evento_disciplina` (
  `evento_id` int(11) NOT NULL,
  `disciplina_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `evento_disciplina`
--

INSERT INTO `evento_disciplina` (`evento_id`, `disciplina_id`, `created_at`, `updated_at`) VALUES
(1, 2, '2017-07-17 02:28:52', '2017-07-17 02:28:52'),
(1, 3, '2017-07-17 02:28:52', '2017-07-17 02:28:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `horarios`
--

CREATE TABLE `horarios` (
  `id` int(11) NOT NULL,
  `dia` varchar(100) NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fim` time NOT NULL,
  `sala` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `horarios`
--

INSERT INTO `horarios` (`id`, `dia`, `hora_inicio`, `hora_fim`, `sala`, `created_at`, `updated_at`) VALUES
(1, 'Segunda-feira', '14:30:00', '16:30:00', 'Sala 4', '2017-07-15 00:02:28', '2017-07-17 20:19:42');

-- --------------------------------------------------------

--
-- Estrutura da tabela `horario_disciplina`
--

CREATE TABLE `horario_disciplina` (
  `horario_id` int(11) NOT NULL,
  `disciplina_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `horario_disciplina`
--

INSERT INTO `horario_disciplina` (`horario_id`, `disciplina_id`, `created_at`, `updated_at`) VALUES
(1, 3, '2017-07-15 00:02:39', '2017-07-15 00:02:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professores`
--

CREATE TABLE `professores` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `professores`
--

INSERT INTO `professores` (`id`, `nome`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Frederico Fonseca', 'fffonseca@gmail.com', '2017-07-17 01:35:16', '2017-07-17 01:35:16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor_disciplina`
--

CREATE TABLE `professor_disciplina` (
  `professor_id` int(11) NOT NULL,
  `disciplina_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `professor_disciplina`
--

INSERT INTO `professor_disciplina` (`professor_id`, `disciplina_id`, `created_at`, `updated_at`) VALUES
(1, 2, '2017-07-17 01:35:16', '2017-07-17 01:35:16'),
(1, 3, '2017-07-17 01:35:16', '2017-07-17 01:35:16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `propinas`
--

CREATE TABLE `propinas` (
  `id` int(11) NOT NULL,
  `ano` year(4) NOT NULL,
  `mes` varchar(100) NOT NULL,
  `valor` float NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `propinas`
--

INSERT INTO `propinas` (`id`, `ano`, `mes`, `valor`, `created_at`, `updated_at`) VALUES
(1, 2013, 'Maio', 235, '2017-07-17 15:54:24', '2017-07-17 15:54:24');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.pt', '$2y$10$F/n9Y8ZpwhaOZXoMMhBBJugUpAcachpCUDvTkIcRdRLSHNcLTjir6', 'l9ATE2TALcKfWGfek0gHa9yStbAg4jhi52Nk53Ktv9WKyknORLoXcMGeRQ2d', '2017-07-21 18:56:43', '2017-07-21 18:56:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aluno_disciplina`
--
ALTER TABLE `aluno_disciplina`
  ADD PRIMARY KEY (`aluno_id`,`disciplina_id`),
  ADD KEY `aluno_id` (`aluno_id`,`disciplina_id`),
  ADD KEY `aluno_id_2` (`aluno_id`,`disciplina_id`),
  ADD KEY `disciplina_id` (`disciplina_id`);

--
-- Indexes for table `aluno_propina`
--
ALTER TABLE `aluno_propina`
  ADD PRIMARY KEY (`aluno_id`,`propina_id`),
  ADD KEY `aluno_id` (`aluno_id`,`propina_id`),
  ADD KEY `propina_id` (`propina_id`);

--
-- Indexes for table `avisos`
--
ALTER TABLE `avisos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aviso_curso`
--
ALTER TABLE `aviso_curso`
  ADD PRIMARY KEY (`aviso_id`,`curso_id`),
  ADD KEY `aviso_id` (`aviso_id`,`curso_id`),
  ADD KEY `curso_id` (`curso_id`);

--
-- Indexes for table `aviso_disciplina`
--
ALTER TABLE `aviso_disciplina`
  ADD PRIMARY KEY (`aviso_id`,`disciplina_id`),
  ADD KEY `aviso_id` (`aviso_id`,`disciplina_id`),
  ADD KEY `disciplina_id` (`disciplina_id`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `curso_aluno`
--
ALTER TABLE `curso_aluno`
  ADD PRIMARY KEY (`curso_id`,`aluno_id`),
  ADD KEY `curso_id` (`curso_id`,`aluno_id`),
  ADD KEY `aluno_id` (`aluno_id`);

--
-- Indexes for table `curso_disciplina`
--
ALTER TABLE `curso_disciplina`
  ADD PRIMARY KEY (`curso_id`,`disciplina_id`),
  ADD KEY `curso_id` (`curso_id`,`disciplina_id`),
  ADD KEY `disciplina_id` (`disciplina_id`);

--
-- Indexes for table `curso_documento`
--
ALTER TABLE `curso_documento`
  ADD PRIMARY KEY (`curso_id`,`documento_id`),
  ADD KEY `curso_id` (`curso_id`,`documento_id`),
  ADD KEY `documento_id` (`documento_id`);

--
-- Indexes for table `curso_estagio`
--
ALTER TABLE `curso_estagio`
  ADD PRIMARY KEY (`curso_id`,`estagio_id`),
  ADD KEY `id_curso` (`curso_id`,`estagio_id`),
  ADD KEY `id_estagio` (`estagio_id`);

--
-- Indexes for table `curso_propina`
--
ALTER TABLE `curso_propina`
  ADD PRIMARY KEY (`curso_id`,`propina_id`),
  ADD KEY `curso_id` (`curso_id`,`propina_id`),
  ADD KEY `propina_id` (`propina_id`);

--
-- Indexes for table `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estagios`
--
ALTER TABLE `estagios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evento_curso`
--
ALTER TABLE `evento_curso`
  ADD PRIMARY KEY (`evento_id`,`curso_id`),
  ADD KEY `evento_id` (`evento_id`,`curso_id`),
  ADD KEY `curso_id` (`curso_id`);

--
-- Indexes for table `evento_disciplina`
--
ALTER TABLE `evento_disciplina`
  ADD PRIMARY KEY (`evento_id`,`disciplina_id`),
  ADD KEY `evento_id` (`evento_id`,`disciplina_id`),
  ADD KEY `disciplina_id` (`disciplina_id`);

--
-- Indexes for table `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `horario_disciplina`
--
ALTER TABLE `horario_disciplina`
  ADD KEY `horario_id` (`horario_id`,`disciplina_id`),
  ADD KEY `disciplina_id` (`disciplina_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professor_disciplina`
--
ALTER TABLE `professor_disciplina`
  ADD PRIMARY KEY (`professor_id`,`disciplina_id`),
  ADD KEY `professor_id` (`professor_id`,`disciplina_id`),
  ADD KEY `disciplina_id` (`disciplina_id`);

--
-- Indexes for table `propinas`
--
ALTER TABLE `propinas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `avisos`
--
ALTER TABLE `avisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `documentos`
--
ALTER TABLE `documentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `estagios`
--
ALTER TABLE `estagios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `professores`
--
ALTER TABLE `professores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `propinas`
--
ALTER TABLE `propinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `aluno_disciplina`
--
ALTER TABLE `aluno_disciplina`
  ADD CONSTRAINT `aluno_disciplina_ibfk_1` FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`),
  ADD CONSTRAINT `aluno_disciplina_ibfk_2` FOREIGN KEY (`disciplina_id`) REFERENCES `disciplinas` (`id`);

--
-- Limitadores para a tabela `aluno_propina`
--
ALTER TABLE `aluno_propina`
  ADD CONSTRAINT `aluno_propina_ibfk_1` FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`),
  ADD CONSTRAINT `aluno_propina_ibfk_2` FOREIGN KEY (`propina_id`) REFERENCES `propinas` (`id`);

--
-- Limitadores para a tabela `aviso_curso`
--
ALTER TABLE `aviso_curso`
  ADD CONSTRAINT `aviso_curso_ibfk_1` FOREIGN KEY (`aviso_id`) REFERENCES `avisos` (`id`),
  ADD CONSTRAINT `aviso_curso_ibfk_2` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`);

--
-- Limitadores para a tabela `aviso_disciplina`
--
ALTER TABLE `aviso_disciplina`
  ADD CONSTRAINT `aviso_disciplina_ibfk_1` FOREIGN KEY (`aviso_id`) REFERENCES `avisos` (`id`),
  ADD CONSTRAINT `aviso_disciplina_ibfk_2` FOREIGN KEY (`disciplina_id`) REFERENCES `disciplinas` (`id`);

--
-- Limitadores para a tabela `curso_aluno`
--
ALTER TABLE `curso_aluno`
  ADD CONSTRAINT `curso_aluno_ibfk_1` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`),
  ADD CONSTRAINT `curso_aluno_ibfk_2` FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`);

--
-- Limitadores para a tabela `curso_disciplina`
--
ALTER TABLE `curso_disciplina`
  ADD CONSTRAINT `curso_disciplina_ibfk_1` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`),
  ADD CONSTRAINT `curso_disciplina_ibfk_2` FOREIGN KEY (`disciplina_id`) REFERENCES `disciplinas` (`id`);

--
-- Limitadores para a tabela `curso_documento`
--
ALTER TABLE `curso_documento`
  ADD CONSTRAINT `curso_documento_ibfk_1` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`),
  ADD CONSTRAINT `curso_documento_ibfk_2` FOREIGN KEY (`documento_id`) REFERENCES `documentos` (`id`);

--
-- Limitadores para a tabela `curso_estagio`
--
ALTER TABLE `curso_estagio`
  ADD CONSTRAINT `curso_estagio_ibfk_1` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`),
  ADD CONSTRAINT `curso_estagio_ibfk_2` FOREIGN KEY (`estagio_id`) REFERENCES `estagios` (`id`);

--
-- Limitadores para a tabela `curso_propina`
--
ALTER TABLE `curso_propina`
  ADD CONSTRAINT `curso_propina_ibfk_1` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`),
  ADD CONSTRAINT `curso_propina_ibfk_2` FOREIGN KEY (`propina_id`) REFERENCES `propinas` (`id`);

--
-- Limitadores para a tabela `evento_curso`
--
ALTER TABLE `evento_curso`
  ADD CONSTRAINT `evento_curso_ibfk_1` FOREIGN KEY (`evento_id`) REFERENCES `eventos` (`id`),
  ADD CONSTRAINT `evento_curso_ibfk_2` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`);

--
-- Limitadores para a tabela `evento_disciplina`
--
ALTER TABLE `evento_disciplina`
  ADD CONSTRAINT `evento_disciplina_ibfk_1` FOREIGN KEY (`evento_id`) REFERENCES `eventos` (`id`),
  ADD CONSTRAINT `evento_disciplina_ibfk_2` FOREIGN KEY (`disciplina_id`) REFERENCES `disciplinas` (`id`);

--
-- Limitadores para a tabela `horario_disciplina`
--
ALTER TABLE `horario_disciplina`
  ADD CONSTRAINT `horario_disciplina_ibfk_1` FOREIGN KEY (`horario_id`) REFERENCES `horarios` (`id`),
  ADD CONSTRAINT `horario_disciplina_ibfk_2` FOREIGN KEY (`disciplina_id`) REFERENCES `disciplinas` (`id`);

--
-- Limitadores para a tabela `professor_disciplina`
--
ALTER TABLE `professor_disciplina`
  ADD CONSTRAINT `professor_disciplina_ibfk_1` FOREIGN KEY (`professor_id`) REFERENCES `professores` (`id`),
  ADD CONSTRAINT `professor_disciplina_ibfk_2` FOREIGN KEY (`disciplina_id`) REFERENCES `disciplinas` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
