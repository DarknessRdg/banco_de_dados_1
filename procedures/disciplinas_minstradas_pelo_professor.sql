delimiter $$ create procedure
    disciplinas_ministradas_pelo_professor(id_professor int, ano_letivo int)
begin
    select disciplina.*
    from disciplina
             join disciplina_ofertada on disciplina.id = disciplina_ofertada.disicplina_id
             join aula on disciplina_ofertada.id = aula.disciplina_ofertada_id
    where aula.professor_id = id_professor and aula.ano_letivo = ano_letivo;
end;

# drop procedure disciplinas_ministradas_pelo_professor;
