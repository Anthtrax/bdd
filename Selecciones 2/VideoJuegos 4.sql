select * from VideoJuegos where nombre = 'C%' or valoracion = 7
select * from VideoJuegos where codigo between 3 and 7 or valoracion = 7
select nombre  from VideoJuegos where valoracion > 7 and nombre like 'C%' or valoracion > 8 and nombre like 'D%' 