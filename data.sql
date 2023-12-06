Use musicoterapia;

insert into usuario (nome, preferencias, historico_sessoes) 
values 
	('Samuel', 'Relaxamento', 'Tres Sessoes');

insert into terapeuta (nome, especializacao, avaliacao_medica)
values 
	('Pedro','Pacientes com ansiedade', 7);

insert into login (email, senha, data_acesso)
values
	('ads123@gmail.com','123456', getDate());


insert into sessao_musicoterapia (id_usuario,crp_terapeuta_sessao,diagnostico, notas_de_progresso, data, hora, duracao)
values 
	(1,1,'ansiedade aguda', 7, getDate(), '12h00', 3600);

insert into playlist_musicoterapia (id_usuario_playlist,id_musica, nome, data_criacao, categoria)
values
	(1,1,'Playlist1', getDate(), 'ansiedade');

insert into musica (titulo, artista, duracao, genero)
values
	('musica1', 'Pedro', 240, 'musicoterapia');

insert into sessao_terapeuta (id_sessao, diagnostico, notas_de_progresso)
values
	(1, 'O paciente se encontra em um estado agudo de Ansiedade, porem vem melhorando constantemente nas ultimas sessoes', 9)
