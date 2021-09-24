insert turma(id, nome, serie) values
(277, 'A', 321);

insert into disciplina(id, nome, serie, carga_horaria) values
(277, 'Disciplina 1', 321, 90),
(278, 'Disciplina 2', 321, 90);


-- Ok
-- sincronizacao deve criar duas disciplina_ofertada para a turma de id = 277
call sincronizar_turma_com_as_disicplina(277);

select * from disciplina_ofertada where turma_id = 277;
