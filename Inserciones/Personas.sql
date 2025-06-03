--crea la tabla personas
create table personas(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar (50) not null,
	estatura decimal,
	fecha_nacimiento date,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint personas_pk primary key (cedula)
)
insert into personas (cedula,nombre,apellido)
values ('1751373554','Anthony','Ramirez')

insert into personas (cedula,nombre,apellido,estatura)
values ('1710404490','Sandra','Amancha',1.45)

insert into personas (cedula,nombre,apellido,numero_hijos)
values ('1751373737','Luis','Ramirez',2)

insert into personas (cedula,nombre,apellido,numero_hijos,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada)
values ('1751468923','Juan','Ramirez',1,1.58,'22/05/2000','22:54',200.34)

select cedula,nombre,numero_hijos,estatura from personas

select * from personas