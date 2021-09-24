delimiter $$ create function data_para_padrao_br(data date)
    returns char(10)
begin
    declare divisor char default cast('/' as char);
    declare dia int;
    declare mes int;
    declare ano int;

    set dia := extract(day from data);
    set mes := extract(month from data);
    set ano := extract(year from data);

    return concat(
        cast(dia as char), divisor,
        cast(mes as char), divisor,
        cast(ano as char)
    );
end;
