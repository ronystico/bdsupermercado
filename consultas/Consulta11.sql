create proc sp_Consulta11
as
select pro.Nombre, ent.Exento
from Producto pro INNER JOIN Entrada ent ON (pro.Id = ent.IdProducto)
where Exento = 'SI'
go