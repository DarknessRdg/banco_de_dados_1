create or replace view alunos_de_recuperacao
as
select id_aluno, nome_aluno, ano_letivo, serie, media
from (
         select aluno.id            as id_aluno,
                aluno.nome          as nome_aluno,
                prova.ano_letivo    as ano_letivo,
                turma.serie         as serie,
                round(avg(nota), 2) as media
         from aluno
                  join prova on aluno.id = prova.aluno_id
                  join disciplina_ofertada on prova.disciplina_ofertada_id = disciplina_ofertada.id
                  join turma on disciplina_ofertada.turma_id = turma.id
         group by aluno.id, prova.ano_letivo, turma.serie
         order by media desc
     ) as media_do_aluno
where media_do_aluno.media < 7;
