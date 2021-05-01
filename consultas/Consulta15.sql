create proc sp_Consulta15
as
insert into Producto (
Id,CodigoBarra,Nombre,Fecha,Descripcion)
OUTPUT inserted.Id,inserted.CodigoBarra,inserted.Nombre,inserted.Fecha,inserted.Descripcion
VALUES (
790,'BK-M68S-45','Mountain-200 blue, 42','20200229','Producto adicional')
/* Código para revertir cambios (Seleccionar lineas de adentro y darle a ejecutar)
delete from Producto 
where Id = 790
*/
go