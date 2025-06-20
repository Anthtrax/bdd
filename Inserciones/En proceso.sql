select * from personas where nombre='Juan' and apellido='Ramirez' and estatura is not null

select * from personas where nombre='Juan' or nombre='Sandra' or nombre='Anthony'

--personas que se lamen Juan o Sandra y estatura null o estatura > 1.50

select * from personas where (nombre='Juan' or nombre='Sandra') and (estatura is not null or estatura >1.50)