--productos
drop table Productos

create table Productos(
	codigo int not null ,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint Productos_pk primary key(codigo)
)

insert into Productos (codigo,nombre,precio,stock)
values (1,'Salchicas',18.46,156)

insert into Productos (codigo,nombre,precio,stock)
values (2,'Jugos',0.35,348)

insert into Productos (codigo,nombre,precio,stock)
values (3,'Pollo',1.15,678)

insert into Productos (codigo,nombre,descripcion,precio,stock)
values (4,'Papa','Es un producto muy rico si esta frita',14.26,279)

insert into Productos (codigo,nombre,descripcion,precio,stock)
values (5,'Camaron','Es un producto muy rico si esta cocinado',1.56,576)

insert into Productos (codigo,nombre,descripcion,precio,stock)
values (6,'Cangrejo','Es un producto muy rico si esta echo sopa',2.48,756)

insert into Productos (codigo,nombre,descripcion,precio,stock)
values (7,'Lonchis','Es un producto muy rico ',2.35,486)

insert into Productos (codigo,nombre,descripcion,precio,stock)
values (8,'Queso','Es un producto muy rico',2.00,675)

select * from Productos