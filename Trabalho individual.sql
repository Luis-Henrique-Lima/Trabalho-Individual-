CREATE TABLE `Aluno` (
  `id` int PRIMARY KEY,
  `name` varchar(50),
  `cpf` varchar(11),
  `id_Turma` varchar(255)
);

CREATE TABLE `Turma` (
  `id` int PRIMARY KEY,
  `Periodo` varchar(20),
  `Turno` varchar(20),
  `id_Professor` varchar(255)
);

CREATE TABLE `Curso` (
  `id` int PRIMARY KEY,
  `Diciplina` varchar(20),
  `progresso` varchar(20),
  `id_Aluno` varchar(255)
);

CREATE TABLE `Professor` (
  `id` int PRIMARY KEY,
  `nome` varchar(50),
  `cpf` varchar(11),
  `id_Curso` varchar(255)
);

ALTER TABLE `Turma` ADD FOREIGN KEY (`id`) REFERENCES `Aluno` (`id_Turma`);

ALTER TABLE `Curso` ADD FOREIGN KEY (`id`) REFERENCES `Professor` (`id_Curso`);

ALTER TABLE `Aluno` ADD FOREIGN KEY (`id`) REFERENCES `Curso` (`id_Aluno`);

ALTER TABLE `Professor` ADD FOREIGN KEY (`id`) REFERENCES `Turma` (`id_Professor`);
