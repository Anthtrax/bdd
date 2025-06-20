select * from Productos where stock =10 and precio < '10'
select nombre , stock  from Productos where nombre like '%m%' or descripcion like '% %'
select nombre from Productos where descripcion is null or stock = 0