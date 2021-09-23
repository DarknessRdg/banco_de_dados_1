delimiter $$ create trigger somente_uma_matricula_de_aluno_por_ano_insert
    before insert
    on matricula
    for each row
begin
    if exists(
            select id from matricula
            where
                  extract(year from data) = extract(year from NEW.data) and
                  aluno_id = NEW.aluno_id
        ) then
        SIGNAL SQLSTATE '11120' SET MESSAGE_TEXT = 'O aluno só pode se matricula em 1 turma por ano';
    end if;
end;

# drop trigger somente_uma_matricula_de_aluno_por_ano_insert;
# drop trigger somente_uma_matricula_de_aluno_por_ano_update;


delimiter $$ create trigger somente_uma_matricula_de_aluno_por_ano_update
    before update
    on matricula
    for each row
begin
    if exists(
            select id from matricula
            where
                  extract(year from data) = extract(year from NEW.data) and
                  aluno_id = NEW.aluno_id
        ) then
        SIGNAL SQLSTATE '11120' SET MESSAGE_TEXT = 'O aluno só pode se matricula em 1 turma por ano';
    end if;
end;
