--transacciones
drop table Transacciones

create table Transacciones(
	codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date not null,
	hora time not null,
	nombre varchar(100)not null,
	nombre_vigilante varchar(100)not null,
	hora_del_vigilante time not null,
	hora_de_salida time not null,
	constraint Transacciones_pk primary key(codigo)
)

insert into Transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora,nombre,nombre_vigilante,hora_del_vigilante,hora_de_salida)
values(1,'18564',156.6,'D','25/12/2025','15:30','Anthony','Luis','14:25','15:30')

insert into Transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora,nombre,nombre_vigilante,hora_del_vigilante,hora_de_salida)
values(2,'18698',278.2,'C','28/05/2025','12:30','Estefan','Israel','16:45','18:30')

insert into Transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora,nombre,nombre_vigilante,hora_del_vigilante,hora_de_salida)
values(3,'78596',586.4,'C','31/08/2024','6:30','Samuel','Steven','19:30','21:30')

insert into Transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora,nombre,nombre_vigilante,hora_del_vigilante,hora_de_salida)
values(4,'84576',475.3,'D','21/01/2022','7:30','Pamela','Mela','9:30','10:35')

insert into Transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora,nombre,nombre_vigilante,hora_del_vigilante,hora_de_salida)
values(5,'24865',835.7,'D','04/02/2020','8:30','Yamilet','Lisbet','5:00','7:00')

insert into Transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora,nombre,nombre_vigilante,hora_del_vigilante,hora_de_salida)
values(6,'24736',248.65,'C','06/03/1999','7:30','Nelson','Alexandra','19:48','20:24')

insert into Transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora,nombre,nombre_vigilante,hora_del_vigilante,hora_de_salida)
values(7,'49851',347.16,'D','08/04/1998','8:27','Cristina','Valentina','17:58','18:10')

insert into Transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora,nombre,nombre_vigilante,hora_del_vigilante,hora_de_salida)
values(8,'59624',475.48,'D','03/06/1859','5:36','Jennifer','Wendy','18:27','19:16')

insert into Transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora,nombre,nombre_vigilante,hora_del_vigilante,hora_de_salida)
values(9,'38745',735.24,'C','07/11/1889','5:34','Lolita','Dolores','17:35','18:00')

insert into Transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora,nombre,nombre_vigilante,hora_del_vigilante,hora_de_salida)
values(10,'75428',934.62,'C','09/06/1887','7:35','Caren','Melani','6:54','7:10')

select * from Transacciones