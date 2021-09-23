insert into aluno(id, nome, nascimento, telefone) values
(1, 'Joao', '2000-01-20', '8699999999'),
(2, 'Maria', '2001-05-13', '8691111111'),
(3, 'Carla', '2000-11-03', '8699999222');

insert turma(id, nome, serie) values
(1, 'A', 8),
(2, 'B', 8),
(3, 'A', 5);

insert into matricula(id, aluno_id, turma_id, data) values
(1, 1, 1, now()),
(2, 2, 2, now()),
(3, 3, 3, now());

insert into professor(id, cpf, nome, nascimento, telefone) values
(1, '12312312311', 'Prof Daniel', '1962-04-29', '8694444444'),
(2, '22222222211', 'Profa Daniela', '1969-01-30', '8691232344'),
(3, '00000000012', 'Prof Pereira', '1995-05-17', '8694321444'),
(4, '10120203030', 'Profa Anotnia', '1962-03-07', '86321444321');

insert into disciplina(id, nome, serie, carga_horaria) values
(1, 'Matemática', 8, 90),
(2, 'Matemática 1', 8, 90),
(3, 'Química 1', 8, 45),
(4, 'Português', 5, 90);

insert into disciplina_ofertada(id, turma_id, disicplina_id) value
(1, 1, 1),
(2, 2, 1);


insert into prova(id, aluno_id, disciplina_ofertada_id, nota, numero, ano_letivo) values
(1, 1, 1, 10.0, 1, 2021),
(2, 1, 1, 8.0, 2, 2021),
(3, 1, 1, 9.0, 3, 2021),
(4, 1, 1, 10.0, 4, 2021),
(5, 1, 1, 10.0, 5, 2021),
(6, 1, 1, 10.0, 6, 2021),
(7, 1, 1, 4.0, 7, 2021),
(8, 1, 1, 5.0, 8, 2021),
(9, 1, 1, 3.0, 9, 2021),
(10, 1, 1, 10.0, 10, 2021),
(11, 1, 1, 9.5, 11, 2021),
(12, 1, 1, 9.4, 12, 2021),

-- aluno 2
(13, 2, 1, 4, 2, 2021);


