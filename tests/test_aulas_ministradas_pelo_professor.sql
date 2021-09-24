insert turma(id, nome, serie) values
(8872, 'A', 929);

insert into disciplina(id, nome, serie, carga_horaria) values
(8872, 'Disciplina 1', 929, 90),
(8873, 'Disciplina 2', 929, 90);

-- Ok
insert into disciplina_ofertada(id, turma_id, disicplina_id) values
(8872, 8872, 8872),
(8873, 8872, 8873);

insert into professor(id, cpf, nome, nascimento, telefone) values
(8872, '88181818181', 'Prof test 1', NOW(), '86919128822'),
(8873, '22218181818', 'Prof test 2', NOW(), '22919128822');

insert into aula(id, disciplina_ofertada_id, professor_id, ano_letivo) values

-- professor 8872 ministra 8872 e 8873 em 2021
(8872, 8872, 8872, 2021),
(8873, 8873, 8872, 2021),

-- professor 8872 ministra 8872 em 2020
-- professor 8873 ministra 8873 em 2020
(8874, 8872, 8872, 2020),
(8875, 8873, 8873, 2020);


call disciplinas_ministradas_pelo_professor(8872, 2021);
