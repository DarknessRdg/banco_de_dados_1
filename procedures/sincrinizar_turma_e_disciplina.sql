delimiter $$ create procedure sincronizar_turma_com_as_disicplina(id_turma int)
begin
    declare temp_disciplina_id int;
    declare ultimo_id_disciplina_ofertada int;

    declare end_loop boolean default false;

    declare cursor_disciplinas_de_mesma_serie cursor for
        select disciplina.id from disciplina
            join turma on disciplina.serie = turma.serie
        where turma.id = id_turma;

    declare continue handler for not found set end_loop = true;

    set ultimo_id_disciplina_ofertada := (select max(disciplina_ofertada.id) from disciplina_ofertada);

    open cursor_disciplinas_de_mesma_serie;
    while (not end_loop) do
        fetch cursor_disciplinas_de_mesma_serie into temp_disciplina_id;

        set ultimo_id_disciplina_ofertada := ultimo_id_disciplina_ofertada + 1;

        if not exists(select * from disciplina_ofertada where turma_id = id_turma and disicplina_id = temp_disciplina_id) then
            insert into disciplina_ofertada(id, turma_id, disicplina_id)
            value (ultimo_id_disciplina_ofertada, id_turma, temp_disciplina_id);
        end if;
    end while;
end;


# drop procedure sincronizar_turma_com_as_disicplina;