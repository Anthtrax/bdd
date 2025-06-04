--estudiante
drop table Estudiantes

create table Estudiantes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date not null,
	curso int not null,
	paralelo char (1) not null,
	licenciado varchar (100) not null,
	constraint Estudiantes_pk primary key(cedula)
)

insert into Estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,curso,paralelo,licenciado)
values ('1710404490','Sandra','Amancha','san.pa.ama27@gmail.com','05/12/1972','3','A','Alexandra')

select * from Estudiantes