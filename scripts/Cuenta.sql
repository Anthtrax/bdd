-- cuentas
drop table Cuentas

create table Cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint Cuentas_pk primary key(numero_cuenta)
)