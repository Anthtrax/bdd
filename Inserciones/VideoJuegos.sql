--VideoJuegos
drop table VideoJuegos

create table VideoJuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint VideoJuegos_pk primary key(codigo)
)