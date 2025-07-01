--usuario y cuentas
select numero_cuenta,nombre from cuentas ,usuario where 
cedula_propietario=cedula
and saldo 
between '100' and '1000'

select* from cuentas ,usuario where 
ccedula_usiario=cedula
and fecha_creacion
between '2022/09/21' and '2023/09/21'
--clientes y compras 

select nombre,apellido,c from clientes ,compras
where
idCompras=id_compra 
and cedula like '%7%'

select cedula,nombre,apellido,edad from clientes ,compras
where
idCompras=id_compra 
and cedula ='1727947720'
--estudiantes y profesor
select *from estudiantes ,profesores 
where 
codigo=codigo
and apellido like  '%n%'

select codigo,nombre,apellido,email,fecha_nacimiento from estudiantes ,profesores 
where 
codigo=codigo
and nombre ='Pepe'

--persona y prestamo 

select cantidad_ahorrada,monto,nombre,apellido from personas ,prestamo
where 
cedula=cedula
and monto
between '100' and '1000'

select cantidad_ahorrada,monto,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento from personas ,prestamo 
where 
cedula=cedula
and nombre ='Estefan'

--Productos y ventas
select nombre,stock,cantidad from productos ,ventas 
where 
idV=id_ventas
and nombre like '%m%' or descripcion ='0'

select nombre,stock from productos ,ventas 
where 
idV=id_ventas
and cantidad ='5'

--transacciones y bancos 
select *from transacciones ,banco 
where 
codigoB=codigo_banco
and
tipo= 'C' and numero_cuenta
between '22001' and '22004'

select codigoB,codigo,numero_cuenta,monto,tipo,fecha,hora from transacciones ,banco 
where 
codigoB=codigo_banco
and
codigoB= '1'

--videojuego y plataformas 

select* from videojuegos ,plataformas 
where 
idP=id_plataformas
and 
descripcion ='Guerra' and valoracion >'7'or nombre like 'C%' and  valoracion >'8' and  nombre like 'D%'


select id_plataformas,nombre_plataformas ,codigo_videojuego from videojuegos ,plataformas 
where 
idP=id_plataformas
and 
idP ='1'
--registro entrada y empleados
select codigo_empleado ,fecha,nombre from  registro_entrada ,empleado 
where codigo=codigo_empleado 
and fecha
between '2023/08/01' and '2023/08/31'
and hora 
between '8:00' and '12:00'
or fecha
between '2023/10/06' and '2023/10/20'
and hora 
between '9:00' and '13:00'

select codigo_empleado ,fecha,nombre,hora from  registro_entrada ,empleado 
where codigo=codigo_empleado 
and codigo='2201'