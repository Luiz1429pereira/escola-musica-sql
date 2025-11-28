SELECT * FROM aluno;

SELECT nome, email
FROM aluno
ORDER BY nome ASC;

SELECT a.nome AS aluno, c.nome AS curso, t.dia_semana
FROM matricula m
JOIN aluno a ON m.id_aluno = a.id_aluno
JOIN turma t ON m.id_turma = t.id_turma
JOIN curso c ON t.id_curso = c.id_curso;

SELECT p.nome AS professor, t.dia_semana, t.horario
FROM professor p
JOIN turma t ON p.id_professor = t.id_professor;

SELECT a.nome
FROM matricula m
JOIN aluno a ON m.id_aluno = a.id_aluno
JOIN turma t ON m.id_turma = t.id_turma
JOIN curso c ON t.id_curso = c.id_curso
WHERE c.nome = 'Violão';
