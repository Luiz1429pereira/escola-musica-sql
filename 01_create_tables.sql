CREATE DATABASE IF NOT EXISTS escola_musica;
USE escola_musica;

CREATE TABLE IF NOT EXISTS aluno (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    data_nascimento DATE,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS professor (
    id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    especialidade VARCHAR(100),
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS curso (
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    carga_horaria INT,
    nivel VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS turma (
    id_turma INT PRIMARY KEY AUTO_INCREMENT,
    dia_semana VARCHAR(20),
    horario TIME,
    id_curso INT,
    id_professor INT,
    FOREIGN KEY (id_curso) REFERENCES curso(id_curso),
    FOREIGN KEY (id_professor) REFERENCES professor(id_professor)
);

CREATE TABLE IF NOT EXISTS matricula (
    id_matricula INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT,
    id_turma INT,
    data_matricula DATE,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
);
