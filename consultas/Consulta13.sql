create proc sp_Consulta13
as
select *
from Producto pro INNER JOIN Entrada ent 
ON (pro.Id = ent.IdProducto)
order by Precio desc
go