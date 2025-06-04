-- cuentas
drop table Cuentas

create table Cuentas(
	propietario varchar(400)not null,
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	email varchar(100) not null,
	constrasena varchar(50) not null,
	verificar_contrasena varchar(50) not null,
	saldo money not null,
	retiro money not null,
	codigo varchar (5) not null,
	constraint Cuentas_pk primary key(numero_cuenta)
)

insert into Cuentas (propietario,numero_cuenta,cedula_propietario,fecha_creacion,email,constrasena,verificar_contrasena,saldo,retiro,codigo)
values('Anthony',1,17513,'4/02/2007','antez.ama2020@gmail.com','Anthony18','Anthony18',506.36,54.56,'15648')

insert into Cuentas (propietario,numero_cuenta,cedula_propietario,fecha_creacion,email,constrasena,verificar_contrasena,saldo,retiro,codigo)
values('Estefan',2,16845,'1/01/2006','Estefan21568@gmail.com','Estefan18','Estefan18',506.36,54.56,'15648')

insert into Cuentas (propietario,numero_cuenta,cedula_propietario,fecha_creacion,email,constrasena,verificar_contrasena,saldo,retiro,codigo)
values('Luis',3,24768,'14/12/2003','Luis2021@gmail.com','Luis18','Luis18',506.36,54.56,'15648')

insert into Cuentas (propietario,numero_cuenta,cedula_propietario,fecha_creacion,email,constrasena,verificar_contrasena,saldo,retiro,codigo)
values('Pepe',4,75148,'31/01/2002','Pepe475@gmail.com','Pepe18','Pepe18',506.36,54.56,'15648')

insert into Cuentas (propietario,numero_cuenta,cedula_propietario,fecha_creacion,email,constrasena,verificar_contrasena,saldo,retiro,codigo)
values('Isaac',5,97635,'24/04/2004','Isaac4687@gmail.com','Isaac18','Isaac18',506.36,54.56,'15648')

insert into Cuentas (propietario,numero_cuenta,cedula_propietario,fecha_creacion,email,constrasena,verificar_contrasena,saldo,retiro,codigo)
values('Samuel',6,73485,'9/07/1989','Samuel468@gmail.com','Samuel18','Samuel18',506.36,54.56,'15648')

insert into Cuentas (propietario,numero_cuenta,cedula_propietario,fecha_creacion,email,constrasena,verificar_contrasena,saldo,retiro,codigo)
values('Steven',7,76348,'11/04/1987','Steven478@gmail.com','Steven18','Steven18',506.36,54.56,'15648')

insert into Cuentas (propietario,numero_cuenta,cedula_propietario,fecha_creacion,email,constrasena,verificar_contrasena,saldo,retiro,codigo)
values('Edwin',8,73745,'7/06/1999','Edwin47@gmail.com','Edwin18','Edwin18',506.36,54.56,'15648')

insert into Cuentas (propietario,numero_cuenta,cedula_propietario,fecha_creacion,email,constrasena,verificar_contrasena,saldo,retiro,codigo)
values('Israel',9,43875,'15/06/2001','Israel2000@gmail.com','Israel18','Israel18',506.36,54.56,'15648')

insert into Cuentas (propietario,numero_cuenta,cedula_propietario,fecha_creacion,email,constrasena,verificar_contrasena,saldo,retiro,codigo)
values('Daniel',10,17529,'18/07/2000','Daniel21@gmail.com','Daniel18','Daniel18',506.36,54.56,'15648')

select * from Cuentas