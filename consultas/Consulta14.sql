create proc sp_Consulta14
as
select *
from Entrada as ent INNER JOIN Producto as pro
ON (ent.IdProducto = pro.Id)
where ent.Precio > 60
order by ent.Precio asc
go