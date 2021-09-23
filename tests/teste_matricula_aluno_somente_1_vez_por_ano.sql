insert into aluno(id, nome, nascimento, telefone) values
(222, 'Joao', '2000-01-20', '8699999999');

insert turma(id, nome, serie) values
(333, 'A', 10);

insert into matricula(id, aluno_id, turma_id, data) values
(312, 222, 333, '2010-01-01');

-- Error
-- Msg: [11120] O aluno só pode se matricula em 1 turma por ano
insert into matricula(id, aluno_id, turma_id, data) values
(314, 222, 333, '2010-01-01');

-- Ok
-- Anos diferenets
insert into matricula(id, aluno_id, turma_id, data) values
(313, 222, 333, '2011-01-01');

-- Error update:
-- Msg: [11120] O aluno só pode se matricula em 1 turma por ano
update matricula set data = '2010-01-02' where id = 312;