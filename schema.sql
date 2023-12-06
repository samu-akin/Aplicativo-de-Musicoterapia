create database musicoterapia;

use musicoterapia

create table usuario(
num_inscricao int not null primary key identity,
nome varchar(100) not null,
preferencias varchar(100),
historico_sessoes varchar(100)
);

create table terapeuta(
crp int not null primary key identity,
nome varchar(100) not null,
especializacao varchar(100),
avaliacao_medica int not null
);

create table login(
id int not null primary key identity,
email varchar(100),
senha varchar(10),
data_acesso datetime not null
);

create table usuario_login(
num_inscricao_usuario int not null identity,
id_login int not null,
primary key(num_inscricao_usuario,id_login),
foreign key(num_inscricao_usuario) references usuario (num_inscricao)
);

create table terapeuta_login(
crp_terapeuta int not null identity,
id_login int not null,
primary key(crp_terapeuta,id_login),
foreign key(crp_terapeuta) references terapeuta (crp)
);


create table sessao_musicoterapia(
id int not null primary key identity,
id_usuario int not null,
crp_terapeuta_sessao int not null,
diagnostico varchar(100) not null,
notas_de_progresso int not null,
data datetime not null,
hora varchar (100) not null,
duracao int not null,
foreign key (id_usuario) references usuario (num_inscricao),
foreign key (crp_terapeuta_sessao) references terapeuta (crp)
);

create table playlist_musicoterapia(
id int not null primary key identity,
id_usuario_playlist int not null,
id_musica int not null,
nome varchar(100),
data_criacao datetime not null,
categoria varchar(100),
foreign key (id_usuario_playlist) references usuario (num_inscricao),
foreign key (id_musica) references musica (id)
);

create table musica(
id int not null primary key identity,
titulo varchar(100),
artista varchar(100),
duracao int not null,
genero varchar(100)
);

create table sessao_terapeuta(
crp_terapeuta_responsavel int not null identity,
id_sessao int not null,
diagnostico varchar(200),
notas_de_progresso int not null,
primary key(crp_terapeuta_responsavel,id_sessao),
foreign key(crp_terapeuta_responsavel) references terapeuta (crp)
);