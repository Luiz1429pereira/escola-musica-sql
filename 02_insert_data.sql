USE escola_musica;

INSERT INTO aluno (nome, data_nascimento, telefone, email) VALUES
('Lucas Silva', '2005-03-10', '99999-1111', 'lucas@gmail.com'),
('Marina Costa', '2003-11-02', '98888-2222', 'marina@gmail.com'),
('Thiago Mendes', '2000-08-25', '97777-3333', 'thiago@gmail.com');

INSERT INTO professor (nome, especialidade, telefone, email) VALUES
('João Pereira', 'Violão', '99999-4444', 'joao@gmail.com'),
('Ana Martins', 'Canto', '98888-5555', 'ana@gmail.com');

INSERT INTO curso (nome, carga_horaria, nivel) VALUES
('Violão', 60, 'Básico'),
('Canto', 80, 'Intermediário');

INSERT INTO turma (dia_semana, horario, id_curso, id_professor) VALUES
('Segunda-feira', '18:00:00', 1, 1),
('Quarta-feira', '19:00:00', 2, 2);

INSERT INTO matricula (id_aluno, id_turma, data_matricula) VALUES
(1, 1, '2024-02-10'),
(2, 2, '2024-02-11'),
(3, 1, '2024-02-15');
