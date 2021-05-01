create proc sp_Consulta9
as
select IdProducto from Entrada
where Precio >= 100
go