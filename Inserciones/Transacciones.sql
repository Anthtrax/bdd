--transacciones
drop table Transacciones

create table Transacciones(
	codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date not null,
	hora time not null,
	constraint Transacciones_pk primary key(codigo)
)