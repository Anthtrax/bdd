--registro_entrada
drop table Registro_entrada

create table Registro_entrada(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hota time not null,
	constraint Registro_entrada_pk primary key(codigo_registro)
)