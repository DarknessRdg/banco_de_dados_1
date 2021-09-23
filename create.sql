create table aluno(
    id int primary key auto_increment,
    nome varchar(255) not null,
    nascimento date not null,
    telefone varchar(14) not null
);

create table professor(
    id int primary key auto_increment,
    cpf char(11) not null unique,
    nome varchar(255) not null,
    nascimento date not null,
    telefone varchar(14) not null
);


create table turma(
    id int primary key auto_increment,
    nome varchar(30) not null,
    serie int not null,

    unique (nome, serie)
);

create table disciplina(
    id int primary key auto_increment,
    nome varchar(30) not null,
    serie int not null,
    carga_horaria int not null,

    unique(nome, serie)
);


create table matricula(
    id int primary key auto_increment,
    aluno_id int not null,
    turma_id int not null,
    data date not null,

    foreign key (aluno_id) references aluno(id),
    foreign key (turma_id) references turma(id)
);


create table disciplina_ofertada(
    id int primary key auto_increment,
    turma_id int not null,
    disicplina_id int not null,

    foreign key (turma_id) references turma(id),
    foreign key (disicplina_id) references disciplina(id),

    unique (turma_id, disicplina_id)
);

create table aula(
    id int primary key auto_increment,
    disciplina_ofertada_id int not null,
    professor_id int not null,
    ano_letivo int not null,

    unique (professor_id, disciplina_ofertada_id, ano_letivo)
);

create table prova(
    id int primary key auto_increment,
    aluno_id int not null,
    disciplina_ofertada_id int not null,
    nota decimal(4, 2) not null,
    numero int not null,
    ano_letivo int not null,

    foreign key (aluno_id) references aluno(id),
    foreign key (disciplina_ofertada_id) references disciplina_ofertada(id),

    unique (aluno_id, disciplina_ofertada_id, numero, ano_letivo)
);
