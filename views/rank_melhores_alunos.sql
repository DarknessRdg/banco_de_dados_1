create or replace view melhores_alunos_do_ano
as
select aluno.id                 as id_aluno,
       aluno.nome               as nome_aluno,
       prova.ano_letivo         as ano_letivo,
       turma.serie              as serie,
       round(sum(nota) / 12, 2) as media
from aluno
         join prova on aluno.id = prova.aluno_id
         join disciplina_ofertada on prova.disciplina_ofertada_id = disciplina_ofertada.id
         join turma on disciplina_ofertada.turma_id = turma.id
group by aluno.id, prova.ano_letivo, turma.serie
order by media desc;
