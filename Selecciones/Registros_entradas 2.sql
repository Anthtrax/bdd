select cedula_empleado,fecha , hora_entrada from Registro_entrada ,
select hora_entrada from Registro_entrada where hora_entrada = '07:00:00' and hora_entrada <= '14:00:00',
select hora_entrada from Registro_entrada where hora_entrada > '08:00:00'
