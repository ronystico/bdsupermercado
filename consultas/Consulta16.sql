create proc sp_Consulta16
as
update Almacen
set Encargado = 'Javier Céspedes'
where Codigo = 'ALM01'
/* Revertir cambios (Seleccionar las tres líneas y darle a ejecutar)
update Almacen
set Encargado = 'Katelyne Cabrera'
where Codigo = 'ALM01'
*/
go
