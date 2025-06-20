select nombre, apellido from Estudiantes where nombre like 'M%' or apellido like '%Z'
select nombre from Estudiantes where cedula like '%32%' and cedula like '18%'
select nombre from Estudiantes where cedula like '%06' or cedula like '17%'