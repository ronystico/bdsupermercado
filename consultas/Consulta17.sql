create proc sp_Consulta17
as
declare @tabla table(Secuenciat int, Costot money)

insert into @tabla(Secuenciat,Costot) select Secuencia, Costo from Entrada

declare @count int = (select count(*) from @tabla)

while @count > 0
begin
    declare @Secuenciat int = (select top(1) Secuenciat from @tabla order by Secuenciat desc)
    declare @Costot money = (select top(1) Costot from @tabla order by Secuenciat desc)
 
	declare @porcentaje money = (@Costot * 5) / 100
    update Entrada
	set Costo = Costo - @porcentaje
	where Secuencia = @Secuenciat
 
    delete @tabla where Secuenciat=@Secuenciat
    set @count = (select count(*) from @tabla)
	print @count
end

/* Revertir cambios (Seleccionar líneas sin signo de estrella y ejecutar)
declare @tabla table(Secuenciat int, Costot money)

insert into @tabla(Secuenciat,Costot) select Secuencia, Costo from Entrada

declare @count int = (select count(*) from @tabla)

while @count > 0
begin
    declare @Secuenciat int = (select top(1) Secuenciat from @tabla order by Secuenciat)
    declare @Costot money = (select top(1) Costot from @tabla order by Secuenciat)
 
	declare @porcentaje money = (100 * @Costot) / 95
    update Entrada
	set Costo = @porcentaje
	where Secuencia = @Secuenciat
 
    delete @tabla where Secuenciat=@Secuenciat
    set @count = (select count(*) from @tabla)
	print @count
end
*/
go