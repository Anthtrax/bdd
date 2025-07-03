create table usuarios (
	id int,
	nombre varchar(25) not null,
	apellido varchar (25)not null,
	fecha_nacimiento date ,
	constraint usuarios_pk primary key (id)
)

create table grupo(
	id int ,
	nombre varchar(25) not null,
	descripcion varchar(75),
	fecha_creacion date,
	constraint grupo_pk primary key (id)
)

create table usuario_grupo(
	us_id int not null,
	gr_id int not null,
	constraint usuarios_fk foreign key (us_id) references usuarios(id),
	constraint grupo_fk foreign key (gr_id) references grupo(id)
)

insert into usuarios (id,nombre,apellido,fecha_nacimiento)
values (1,'Martin','Gualotuña','04/01/2010');
insert into usuarios (id,nombre,apellido,fecha_nacimiento)
values (2,'Estefan','Ramírez','27/01/2012');
insert into usuarios (id,nombre,apellido,fecha_nacimiento)
values(3,'Mario','Garcia','11/10/2009');
insert into usuarios (id,nombre,apellido,fecha_nacimiento)
values(4,'Luis','Ramírez','01/02/2009');
insert into usuarios (id,nombre,apellido,fecha_nacimiento)
values(5,'Varginia','Miler','01/09/2013');
insert into usuarios (id,nombre,apellido,fecha_nacimiento)
values(6,'Anthony','Ramírez','02/04/2007');
insert into usuarios (id,nombre,apellido,fecha_nacimiento)
values(7,'Edwin','Amancha','27/12/2000');
insert into usuarios (id,nombre,apellido,fecha_nacimiento)
values(8,'Daniel','Amancha','05/07/1995');
insert into usuarios (id,nombre,apellido,fecha_nacimiento)
values(9,'Sandra','Amancha','15/12/1980');
insert into usuarios (id,nombre,apellido,fecha_nacimiento)
values (10,'Bolivar','Pacheco','18/03/2007');							

insert into grupo (id,nombre,descripcion,fecha_creacion)
values (1,'Maternal 1','Grupo de maternal matutino','08/03/2020');
insert into grupo (id,nombre,descripcion,fecha_creacion)
values (2,'Maternal 2','Grupo de maternal vespertino','08/03/2020');
insert into grupo (id,nombre,descripcion,fecha_creacion)
values (3,'Maternal 3','Grupo de maternal nocturno','08/03/2020');
insert into grupo (id,nombre,descripcion,fecha_creacion)
values (4,'Incial 1 ','Grupo de inicial matutino','15/03/2021');
insert into grupo (id,nombre,descripcion,fecha_creacion)
values (5,'Incial 2','Grupo de  inicial vespertino','15/03/2021');
insert into grupo (id,nombre,descripcion,fecha_creacion)
values (6,'Incial 3','Grupo de  inicial  nocturno','15/03/2021');
insert into grupo (id,nombre,descripcion,fecha_creacion)
values (7,'Incial intensivo','Grupo de inicial días sabados','15/03/2021');
insert into grupo (id,nombre,descripcion,fecha_creacion)
values (8,'Maternal intensivo 1','Grupo de maternal matutino días sabados','15/03/2022');
insert into grupo (id,nombre,descripcion,fecha_creacion)
values (9,'Maternal intensivo 2','Grupo de maternal vespertino días sabados','15/03/2022');
insert into grupo (id,nombre,descripcion,fecha_creacion)
values (10,'Maternal intensivo 3','Grupo de maternal nocturno días sabados','15/03/2022');

insert into usuario_grupo (us_id,gr_id)
values (1,8);
insert into usuario_grupo (us_id,gr_id)
values (2,3);
insert into usuario_grupo (us_id,gr_id)
values (3,8);
insert into usuario_grupo (us_id,gr_id)
values (4,9);
insert into usuario_grupo (us_id,gr_id)
values (5,1);
insert into usuario_grupo (us_id,gr_id)
values (6,2);
insert into usuario_grupo (us_id,gr_id)
values (7,8);
insert into usuario_grupo (us_id,gr_id)
values (8,8);
insert into usuario_grupo (us_id,gr_id)
values (9,10);
insert into usuario_grupo (us_id,gr_id)
values (10,1);

select u.nombre,g.nombre from usuarios u, grupo g,usuario_grupo ug
where u.id=ug.us_id and g.id=ug.gr_id 

--Habitaciones y húesped
create table habitaciones(
	habitacion_numero int ,
	precio_por_noche decimal not null,
	piso int not null,
	max_personas int ,
	constraint habitaciones_pk  primary key (habitacion_numero)
)
create table huespedes(
	id int ,
	nombres varchar (45) not null,
	apellidos varchar(45)not null,
	telefono char (10),
	correo varchar(45),
	direccion varchar(45),
	cuidad varchar(45),
	pais varchar(45),
	constraint huespedes_pk primary key (id)
)
create table reservas(
	inicio_fecha date  not null,
	fin_fecha date not null,
	habitaciones int  not null,
	huesped_id int not null,
	constraint habitaciones_fk foreign key (habitaciones) references  habitaciones(habitacion_numero),
	constraint huespedes_fk foreign key (huesped_id) references  huespedes(id)
)
insert into habitaciones(habitacion_numero,precio_por_noche,piso,max_personas)
values (1,10.0,4,4);
insert into habitaciones(habitacion_numero,precio_por_noche,piso,max_personas)
values (2,20.0,4,2);
insert into habitaciones(habitacion_numero,precio_por_noche,piso,max_personas)
values(3,30.0,4,4);
insert into habitaciones(habitacion_numero,precio_por_noche,piso,max_personas)
values(4,50.0,3,4);
insert into habitaciones(habitacion_numero,precio_por_noche,piso,max_personas)
values(5,60.0,3,2);
insert into habitaciones(habitacion_numero,precio_por_noche,piso,max_personas)
values(6,70.0,3,2);
insert into habitaciones(habitacion_numero,precio_por_noche,piso,max_personas)
values(7,80.0,2,2);
insert into habitaciones(habitacion_numero,precio_por_noche,piso,max_personas)
values(8,90.0,2,2);
insert into habitaciones(habitacion_numero,precio_por_noche,piso,max_personas)
values(9,100.0,2,2);
insert into habitaciones(habitacion_numero,precio_por_noche,piso,max_personas)
values(10,500.0,1,1);
insert into habitaciones(habitacion_numero,precio_por_noche,piso,max_personas)
values(11,150.0,1,1);
insert into habitaciones(habitacion_numero,precio_por_noche,piso,max_personas)
values(12,15.0,1,1);

insert into huespedes (id,nombres,apellidos,telefono,correo)
values (1,'Pepe','Pilates',0957483215,'Peppil@gmail.com');
insert into huespedes (id,nombres,apellidos,telefono,correo)
values (2,'Sofía','Morales',0957412689,'Sofmora@gmail.com');
insert into huespedes (id,nombres,apellidos,telefono,correo)
values (3,'Anthony','Ramírez',0963390526,'antez.ama2020@gmail.com');
insert into huespedes (id,nombres,apellidos,telefono,correo)
values (4,'Estefan','Amancha',0971348569,'Esteaman@gmail.com');
insert into huespedes (id,nombres,apellidos,telefono,correo)
values (5,'Wilson','Martillo',0942571835,'Wilsmart@gmail.com');
insert into huespedes (id,nombres,apellidos,telefono,correo)
values (6,'Virginia','Miler',0947526819,'Virgmili@gmail.com');
insert into huespedes (id,nombres,apellidos,telefono,correo)
values (7,'Anita','Reto',0942458617,'Anitret@gmail.com');
insert into huespedes (id,nombres,apellidos,telefono,correo)
values (8,'Luis','Ramirez',0979376266,'Luisrami@gmail.com');
insert into huespedes (id,nombres,apellidos,telefono,correo)
values (9,'Diana','Poveda',0924756819,'Dianapoveda@gmail.com');
insert into huespedes (id,nombres,apellidos,telefono,correo)
values (10,'Brandon','Pachacama',0975348167,'Brandpacha@gmail.com');
																				
insert into reservas (inicio_fecha,fin_fecha,habitaciones,huesped_id)
values ('11/05/2023','12/05/2023',2,10);
insert into reservas (inicio_fecha,fin_fecha,habitaciones,huesped_id)
values ('11/05/2023','12/05/2023',2,9);
insert into reservas (inicio_fecha,fin_fecha,habitaciones,huesped_id)
values ('22/06/2023','23/06/2023',1,1);
insert into reservas (inicio_fecha,fin_fecha,habitaciones,huesped_id)
values ('22/06/2023','23/06/2023',1,2);
insert into reservas (inicio_fecha,fin_fecha,habitaciones,huesped_id)
values ('22/06/2023','23/06/2023',1,3);
insert into reservas (inicio_fecha,fin_fecha,habitaciones,huesped_id)
values ('22/06/2023','23/06/2023',1,4);
insert into reservas (inicio_fecha,fin_fecha,habitaciones,huesped_id)
values ('01/01/2023','02/01/2023',12,5);
insert into reservas (inicio_fecha,fin_fecha,habitaciones,huesped_id)
values ('11/08/2023','12/08/2023',11,6);
insert into reservas (inicio_fecha,fin_fecha,habitaciones,huesped_id)
values ('11/05/2023','12/05/2023',10,7);
insert into reservas (inicio_fecha,fin_fecha,habitaciones,huesped_id)
values ('11/05/2023','12/05/2023',9,8);
							
select hue.nombres,hue.apellidos from habitaciones ha,huespedes hue,reservas r
where  hue.id in(select huesped_id from reservas where ha.habitacion_numero=2 )

select ha.habitacion_numero,count(r.huesped_id) from habitaciones ha,reservas r
where ha.habitacion_numero=r.habitaciones
group by ha.habitacion_numero

select ha.habitacion_numero,ha.piso,hue.nombres,hue.apellidos from habitaciones ha,huespedes hue,reservas r
where  ha.habitacion_numero=r.habitaciones and hue.id=r.huesped_id and ha.piso=4

select hue.nombres,hue.apellidos from habitaciones ha,huespedes hue,reservas r
where hue.id in(select huesped_id from reservas where habitaciones=3 )

select ha.habitacion_numero,avg(r.huesped_id) from habitaciones ha,reservas r
where ha.habitacion_numero=r.habitaciones
group by ha.habitacion_numero

select ha.habitacion_numero,hue.nombres,hue.apellidos from habitaciones ha,huespedes hue,reservas r
where ha.habitacion_numero=r.habitaciones and hue.id=r.huesped_id

select nombres,apellidos from huespedes hue
where id in(select huesped_id from reservas where habitaciones=4 )

select ha.habitacion_numero,sum(ha.precio_por_noche) from habitaciones ha,reservas r
group by ha.habitacion_numero

