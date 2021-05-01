create proc sp_Consulta7
as
select * from Producto
where CodigoBarra LIKE '%M82S%'
go