insert into aluno(id, nome, nascimento, telefone)
values (1923, 'Joao', '2000-01-20', '8699999999');

insert into turma(id, nome, serie)
values (1923, 'Turma test 0-10', 1);

insert into matricula(id, aluno_id, turma_id, data)
values (1923, 1923, 1923, now());

insert into disciplina(id, nome, serie, carga_horaria)
values (1923, 'Materia teste 0-10', 1, 90);

insert into disciplina_ofertada(id, turma_id, disicplina_id)
values (1923, 1923, 1923);

-- Error
-- Msg: [11130] A nota do aluno deve ser entre 0 e 10
insert into prova(id, aluno_id, disciplina_ofertada_id, nota, numero, ano_letivo)
values (192321, 1923, 1923, 10.1, 12, 2021);


-- Error
-- Msg: [11130] A nota do aluno deve ser entre 0 e 10
insert into prova(id, disciplina_ofertada_id, aluno_id, nota, numero, ano_letivo)
values (1923, 1923, 1923, -1, 1, 2021);

-- 0k
insert into prova(id, aluno_id, disciplina_ofertada_id, nota, numero, ano_letivo)
values
(1923, 1923, 1923, 0, 1, 2021),
(1924, 1923, 1923, 5.5, 2, 2021),
(1925, 1923, 1923, 10, 3, 2021),
(1926, 1923, 1923, 9.9, 4, 2021);


-- Error
-- Msg: [11130] A nota do aluno deve ser entre 0 e 10
update prova set nota = 10.1 where id = 1923;
update prova set nota = -1.0 where id = 1923;


-- Ok
update prova set nota = 1.0 where id = 1923;
