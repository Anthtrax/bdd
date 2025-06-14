select * from personas where cedula='1734852649'

update personas set estatura=1.70 where cedula='1734852649'

update personas set cantidad_ahorrada=0.0 where cantidad_ahorrada is null
update personas set numero_hijos=0.0 where numero_hijos is null
update personas set estatura=1.80, fecha_nacimiento='10/10/2000' where cedula='1751373737'