create table compras(
	id_compra int,
	cedula char (10) not null,
	fecha_compra date not null,
	monto decimal(10, 2) not null,
	constraint compra primary key (id_compra)
)