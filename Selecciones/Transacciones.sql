select tipo from Transacciones where tipo ='D',
select monto from Transacciones where monto between '200.00'::MONEY and '2000.00'::MONEY,
select codigo,monto,tipo,fecha from Transacciones where fecha is not null