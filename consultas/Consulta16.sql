create proc sp_Consulta16
as
update Almacen
set Encargado = 'Javier C�spedes'
where Codigo = 'ALM01'
/* Revertir cambios (Seleccionar las tres l�neas y darle a ejecutar)
update Almacen
set Encargado = 'Katelyne Cabrera'
where Codigo = 'ALM01'
*/
go
