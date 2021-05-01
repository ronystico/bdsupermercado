create proc sp_Consulta6
as
select * from Almacen
where Codigo = 'ALM01' OR Codigo = 'ALM04'
go