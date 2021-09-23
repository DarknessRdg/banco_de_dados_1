delimiter $$ create trigger nota_entre_0_e_10_insert
    before insert
    on prova
    for each row
begin
    if NEW.nota > 10 or NEW.nota < 0 then
        SIGNAL SQLSTATE '11130' SET MESSAGE_TEXT = 'A nota do aluno deve ser entre 0 e 10';
    end if;
end;

delimiter $$ create trigger nota_entre_0_e_10_update
    before update
    on prova
    for each row
begin
    if NEW.nota > 10 or NEW.nota < 0 then
        SIGNAL SQLSTATE '11130' SET MESSAGE_TEXT = 'A nota do aluno deve ser entre 0 e 10';
    end if;
end;
