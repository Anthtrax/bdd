select * from Transacciones 
UPDATE Transacciones
SET tipo = 'T'
WHERE monto > '100' AND monto < '500'