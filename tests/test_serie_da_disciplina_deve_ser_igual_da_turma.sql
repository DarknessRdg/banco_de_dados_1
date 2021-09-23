insert turma(id, nome, serie) values
(191, 'A', 3);

insert into disciplina(id, nome, serie, carga_horaria) values
(191, 'Disciplina 1', 3, 90),
(192, 'Disciplina 2', 4, 90);

-- Error:
-- Msg: [11110] Serie da turma deve ser igual a serie da disciplina
insert into disciplina_ofertada(id, turma_id, disicplina_id) values
(191, 191, 192);

-- Ok
insert into disciplina_ofertada(id, turma_id, disicplina_id) values
(191, 191, 191);

