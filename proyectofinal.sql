CREATE DATABASE [supermercado]
GO
USE [supermercado]
GO
CREATE TABLE [dbo].[Almacen](
	[Codigo] [varchar](6) NOT NULL,
	[Principal] [varchar](2) NOT NULL,
	[Ubicacion] [varchar](100) NOT NULL,
	[Encargado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Almacen] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Entrada]    Script Date: 01/03/2020 12:05:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Entrada](
	[IdProducto] [int] NOT NULL,
	[Almacen] [varchar](6) NOT NULL,
	[Secuencia] [int] IDENTITY(1,1) NOT NULL,
	[Cant] [int] NOT NULL,
	[Costo] [money] NOT NULL,
	[Precio] [money] NOT NULL,
	[Exento] [varchar](2) NOT NULL,
	[ITBIS] [money] NOT NULL,
	[PrecioTotal] [money] NOT NULL,
	[Unidad] [varchar](3) NOT NULL,
	[FechaHora] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 01/03/2020 12:05:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[Id] [int] NOT NULL,
	[CodigoBarra] [varchar](20) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Descripcion] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Almacen] ([Codigo], [Principal], [Ubicacion], [Encargado]) VALUES (N'ALM01', N'SI', N'Sucursal Santo Domingo', N'Javier Céspedes')
INSERT [dbo].[Almacen] ([Codigo], [Principal], [Ubicacion], [Encargado]) VALUES (N'ALM02', N'NO', N'Sucursal Santiago', N'Jesus Rodriguez')
INSERT [dbo].[Almacen] ([Codigo], [Principal], [Ubicacion], [Encargado]) VALUES (N'ALM03', N'NO', N'Sucursal San Juan', N'Juan Hidalgo')
INSERT [dbo].[Almacen] ([Codigo], [Principal], [Ubicacion], [Encargado]) VALUES (N'ALM04', N'NO', N'Sucursal La Romana', N'Patricia Taveras')
SET IDENTITY_INSERT [dbo].[Entrada] ON 

INSERT [dbo].[Entrada] ([IdProducto], [Almacen], [Secuencia], [Cant], [Costo], [Precio], [Exento], [ITBIS], [PrecioTotal], [Unidad], [FechaHora]) VALUES (706, N'ALM01', 1, 8, 0.9500, 10.0000, N'NO', 0.0000, 10.0000, N'UND', CAST(N'2020-02-28 20:00:00.000' AS DateTime))
INSERT [dbo].[Entrada] ([IdProducto], [Almacen], [Secuencia], [Cant], [Costo], [Precio], [Exento], [ITBIS], [PrecioTotal], [Unidad], [FechaHora]) VALUES (771, N'ALM01', 2, 10, 4.7500, 60.0000, N'NO', 0.0000, 60.0000, N'UND', CAST(N'2020-02-28 20:02:00.000' AS DateTime))
INSERT [dbo].[Entrada] ([IdProducto], [Almacen], [Secuencia], [Cant], [Costo], [Precio], [Exento], [ITBIS], [PrecioTotal], [Unidad], [FechaHora]) VALUES (771, N'ALM03', 3, 12, 0.0000, 5.0000, N'NO', 0.0000, 5.0000, N'UND', CAST(N'2020-02-28 20:04:00.000' AS DateTime))
INSERT [dbo].[Entrada] ([IdProducto], [Almacen], [Secuencia], [Cant], [Costo], [Precio], [Exento], [ITBIS], [PrecioTotal], [Unidad], [FechaHora]) VALUES (771, N'ALM04', 4, 15, 14.2500, 20.0000, N'SI', 4.5000, 24.5000, N'LIB', CAST(N'2020-02-28 20:06:00.000' AS DateTime))
INSERT [dbo].[Entrada] ([IdProducto], [Almacen], [Secuencia], [Cant], [Costo], [Precio], [Exento], [ITBIS], [PrecioTotal], [Unidad], [FechaHora]) VALUES (777, N'ALM01', 5, 4, 95.0000, 125.0000, N'SI', 21.0000, 146.0000, N'LIB', CAST(N'2020-02-28 20:10:00.000' AS DateTime))
INSERT [dbo].[Entrada] ([IdProducto], [Almacen], [Secuencia], [Cant], [Costo], [Precio], [Exento], [ITBIS], [PrecioTotal], [Unidad], [FechaHora]) VALUES (777, N'ALM03', 6, 8, 104.5000, 130.0000, N'NO', 0.0000, 130.0000, N'UND', CAST(N'2020-02-28 20:11:00.000' AS DateTime))
INSERT [dbo].[Entrada] ([IdProducto], [Almacen], [Secuencia], [Cant], [Costo], [Precio], [Exento], [ITBIS], [PrecioTotal], [Unidad], [FechaHora]) VALUES (777, N'ALM04', 7, 6, 114.0000, 150.0000, N'SI', 25.0000, 175.0000, N'LIB', CAST(N'2020-02-28 20:12:00.000' AS DateTime))
INSERT [dbo].[Entrada] ([IdProducto], [Almacen], [Secuencia], [Cant], [Costo], [Precio], [Exento], [ITBIS], [PrecioTotal], [Unidad], [FechaHora]) VALUES (780, N'ALM01', 8, 25, 214.2250, 395.7500, N'NO', 0.0000, 395.7500, N'CAJ', CAST(N'2020-02-28 20:13:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Entrada] OFF
INSERT [dbo].[Producto] ([Id], [CodigoBarra], [Nombre], [Fecha], [Descripcion]) VALUES (680, N'FR-R92B-58', N'HL Road Frame - Black, 58', CAST(N'2020-02-28' AS Date), N'Primer Producto')
INSERT [dbo].[Producto] ([Id], [CodigoBarra], [Nombre], [Fecha], [Descripcion]) VALUES (706, N'FR-R92R-58', N'HL Road Frame - Red, 58', CAST(N'2020-02-28' AS Date), N'Segundo Producto')
INSERT [dbo].[Producto] ([Id], [CodigoBarra], [Nombre], [Fecha], [Descripcion]) VALUES (771, N'BK-M82S-38', N'Mountain-100 Silver, 38', CAST(N'2020-02-28' AS Date), N'Tercer Producto')
INSERT [dbo].[Producto] ([Id], [CodigoBarra], [Nombre], [Fecha], [Descripcion]) VALUES (772, N'BK-M82S-42', N'Mountain-100 Silver, 42', CAST(N'2020-02-28' AS Date), N'Cuarto Producto')
INSERT [dbo].[Producto] ([Id], [CodigoBarra], [Nombre], [Fecha], [Descripcion]) VALUES (773, N'BK-M82S-44', N'Mountain-100 Silver, 44', CAST(N'2020-02-28' AS Date), N'Quinto Producto')
INSERT [dbo].[Producto] ([Id], [CodigoBarra], [Nombre], [Fecha], [Descripcion]) VALUES (774, N'BK-M82S-48', N'Mountain-100 Silver, 48', CAST(N'2020-02-28' AS Date), N'Sexto Producto')
INSERT [dbo].[Producto] ([Id], [CodigoBarra], [Nombre], [Fecha], [Descripcion]) VALUES (775, N'BK-M82B-38', N'Mountain-100 Black, 38', CAST(N'2020-02-28' AS Date), N'Séptimo Producto')
INSERT [dbo].[Producto] ([Id], [CodigoBarra], [Nombre], [Fecha], [Descripcion]) VALUES (776, N'BK-M82B-42', N'Mountain-100 Black, 42', CAST(N'2020-02-28' AS Date), N'Octavo Producto')
INSERT [dbo].[Producto] ([Id], [CodigoBarra], [Nombre], [Fecha], [Descripcion]) VALUES (777, N'BK-M82B-44', N'Mountain-100 Black, 44', CAST(N'2020-02-28' AS Date), N'Noveno Producto')
INSERT [dbo].[Producto] ([Id], [CodigoBarra], [Nombre], [Fecha], [Descripcion]) VALUES (778, N'BK-M82B-48', N'Mountain-100 Black, 48', CAST(N'2020-02-28' AS Date), N'Décimo Producto')
INSERT [dbo].[Producto] ([Id], [CodigoBarra], [Nombre], [Fecha], [Descripcion]) VALUES (779, N'BK-M68S-38', N'Mountain-200 Silver, 38', CAST(N'2020-02-28' AS Date), N'Undécimo Producto')
INSERT [dbo].[Producto] ([Id], [CodigoBarra], [Nombre], [Fecha], [Descripcion]) VALUES (780, N'BK-M68S-42', N'Mountain-200 Silver, 42', CAST(N'2020-02-28' AS Date), N'Duodécimo Producto')
INSERT [dbo].[Producto] ([Id], [CodigoBarra], [Nombre], [Fecha], [Descripcion]) VALUES (790, N'BK-M68S-45', N'Mountain-200 blue, 42', CAST(N'2020-02-29' AS Date), N'Producto adicional')
/****** Object:  StoredProcedure [dbo].[sp_Consulta1]    Script Date: 01/03/2020 12:05:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Consulta1]
as
select * from Producto

GO
/****** Object:  StoredProcedure [dbo].[sp_Consulta10]    Script Date: 01/03/2020 12:05:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Consulta10]
as
select avg(Precio) from Entrada

GO
/****** Object:  StoredProcedure [dbo].[sp_Consulta11]    Script Date: 01/03/2020 12:05:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Consulta11]
as
select pro.Nombre, ent.Exento
from Producto pro INNER JOIN Entrada ent ON (pro.Id = ent.IdProducto)
where Exento = 'SI'

GO
/****** Object:  StoredProcedure [dbo].[sp_Consulta12]    Script Date: 01/03/2020 12:05:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Consulta12]
as
select Id,Nombre from Producto
order by Id asc

GO
/****** Object:  StoredProcedure [dbo].[sp_Consulta13]    Script Date: 01/03/2020 12:05:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Consulta13]
as
select *
from Producto pro INNER JOIN Entrada ent 
ON (pro.Id = ent.IdProducto)
order by Precio desc

GO
/****** Object:  StoredProcedure [dbo].[sp_Consulta14]    Script Date: 01/03/2020 12:05:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Consulta14]
as
select *
from Entrada as ent INNER JOIN Producto as pro
ON (ent.IdProducto = pro.Id)
where ent.Precio > 60
order by ent.Precio asc

GO
/****** Object:  StoredProcedure [dbo].[sp_Consulta15]    Script Date: 01/03/2020 12:05:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Consulta15]
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

GO
/****** Object:  StoredProcedure [dbo].[sp_Consulta16]    Script Date: 01/03/2020 12:05:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Consulta16]
as
update Almacen
set Encargado = 'Javier Céspedes'
where Codigo = 'ALM01'
/* Revertir cambios (Seleccionar las tres líneas y darle a ejecutar)
update Almacen
set Encargado = 'Katelyne Cabrera'
where Codigo = 'ALM01'
*/

GO
/****** Object:  StoredProcedure [dbo].[sp_Consulta17]    Script Date: 01/03/2020 12:05:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Consulta17]
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

GO
/****** Object:  StoredProcedure [dbo].[sp_Consulta18]    Script Date: 01/03/2020 12:05:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Consulta18]
as
select *
from Producto
where Id between 771 and 777

GO
/****** Object:  StoredProcedure [dbo].[sp_Consulta2]    Script Date: 01/03/2020 12:05:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Consulta2]
as
select Nombre from Producto

GO
/****** Object:  StoredProcedure [dbo].[sp_Consulta3]    Script Date: 01/03/2020 12:05:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Consulta3]
as
select distinct IdProducto from Entrada

GO
/****** Object:  StoredProcedure [dbo].[sp_Consulta4]    Script Date: 01/03/2020 12:05:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Consulta4]
as
select * from Producto
where Id = 777

GO
/****** Object:  StoredProcedure [dbo].[sp_Consulta5]    Script Date: 01/03/2020 12:05:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Consulta5]
as
select * from Producto
where Nombre = 'Mountain-100 Black, 42'

GO
/****** Object:  StoredProcedure [dbo].[sp_Consulta6]    Script Date: 01/03/2020 12:05:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Consulta6]
as
select * from Almacen
where Codigo = 'ALM01' OR Codigo = 'ALM04'

GO
/****** Object:  StoredProcedure [dbo].[sp_Consulta7]    Script Date: 01/03/2020 12:05:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Consulta7]
as
select * from Producto
where CodigoBarra LIKE '%M82S%'

GO
/****** Object:  StoredProcedure [dbo].[sp_Consulta8]    Script Date: 01/03/2020 12:05:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Consulta8]
as
select * from Entrada
where Costo >= 100

GO
/****** Object:  StoredProcedure [dbo].[sp_Consulta9]    Script Date: 01/03/2020 12:05:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Consulta9]
as
select IdProducto from Entrada
where Precio >= 100

GO
USE [master]
GO
ALTER DATABASE [supermercado] SET  READ_WRITE 
GO
