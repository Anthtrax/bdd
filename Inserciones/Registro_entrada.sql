--registro_entrada
drop table Registro_entrada

create table Registro_entrada(
	nombre varchar (50) not null,
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora_entrada time not null,
	hora_salida time not null,
	dia varchar(50) not null,
	cosas_vendidas varchar(100) not null,
	cosas_cambiar varchar(100) not null,
	cosas_caducadas varchar(100) not null,
	constraint Registro_entrada_pk primary key(codigo_registro)
)

insert into Registro_entrada(nombre,codigo_registro,cedula_empleado,fecha,hora_entrada,hora_salida,dia,cosas_vendidas,cosas_cambiar,cosas_caducadas)
values ('Estefan',32,'1752197861','28/01/2025','5:30','18:00','Jueves','Platos de plastico , Papas risada sin marca','Parabrisas Productos comestibles','Salchicas , duraznos en almibar')

select * from Registro_entrada