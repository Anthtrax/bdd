select * from personas

delete from personas

alter table personas
add column estado_civil_codigo char(1) not null

create table estado_civil(
	codigo char(1) not null,
	descripcion varchar(20) not null,
	constraint estado_civil_pk primary key(codigo)
)

alter table personas
add constraint personas_estado_civil_fk 
foreign key (estado_civil_codigo)
references estado_civil(codigo)

insert into personas (cedula,nombre,apellido,estado_civil_codigo)
values('1751373554','Anthony','Ramírez','U')


select * from estado_civil
insert into estado_civil(codigo,descripcion)
values('U','UNION LIBRE');
insert into estado_civil(codigo,descripcion)
values('C','CASADO');
insert into estado_civil(codigo,descripcion)
values('S','SOLTERO');

-- COUNT
select count(ec.codigo) from personas per , estado_civil ec 
where per.estado_civil_codigo = ec.codigo
and estado_civil_codigo = 'U'

--AVG - PROMEDIO
select avg(cast(cantidad_ahorrada as numeric)) from personas

select sum(cast(cantidad_ahorrada as numeric)) from personas per , estado_civil ec 
where per.estado_civil_codigo = ec.codigo
and estado_civil_codigo = 'U'

--MAX - MIN - SUM

--group by 
select estado_civil_codigo,sum(numero_hijos) from personas 
group by estado_civil_codigo