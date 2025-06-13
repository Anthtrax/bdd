select * from personas 
where hora_nacimiento 
between '10:00' and '22:54'


insert into personas (cedula,nombre,apellido,fecha_nacimiento)
values('1734852649','Pepé','Camotes','10/06/1995')

insert into personas (cedula,nombre,apellido,fecha_nacimiento)
values('1734852647','Pepé','Camotes','11/06/1995')

insert into personas (cedula,nombre,apellido,fecha_nacimiento,hora_nacimiento)
values('1734852641','Pepé','Salami','12/06/1995','22:54:10')

insert into personas (cedula,nombre,apellido,fecha_nacimiento,hora_nacimiento)
values('1734852642','Martina','Romero','12/06/1995','10:05:10')

select numero_hijos, * from personas where numero_hijos != 2