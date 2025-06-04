--VideoJuegos
drop table VideoJuegos

create table VideoJuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	edad_necesario int,
	constraint VideoJuegos_pk primary key(codigo)
)

insert into VideoJuegos(codigo,nombre,descripcion,valoracion,edad_necesario)
values (25,'Cras','Super divertido',45.26,'13')

insert into VideoJuegos(codigo,nombre,valoracion)
values (35,'MortalKombat',45.26)

select * from VideoJuegos