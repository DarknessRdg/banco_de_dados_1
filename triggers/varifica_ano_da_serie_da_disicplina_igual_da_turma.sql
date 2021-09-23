delimiter $$ create trigger varifica_ano_da_serie_da_disicplina_igual_da_turma
    before insert
    on disciplina_ofertada
    for each row
begin
    declare serie_turma int;
    declare serie_disciplina int;

    set serie_turma := (select serie from turma where id = new.turma_id);
    set serie_disciplina := (select serie from disciplina where id = new.disicplina_id);

    if serie_disciplina != serie_turma then
        SIGNAL SQLSTATE '11110' SET MESSAGE_TEXT = 'Serie da turma deve ser igual a serie da disciplina';
    end if;
end;


# drop trigger varifica_ano_da_serie_da_disicplina_igual_da_turma;
