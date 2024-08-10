
CREATE TABLE grupo05.CLIENTES (
  Cliente_Id int PRIMARY KEY NOT NULL,
  Nombres varchar(255),
  Apellidos varchar(255),
  Genero varchar(1),
  DNI varchar(8),
  Fecha_nacimiento date
)
GO

CREATE TABLE grupo05.PLAN_TARIFARIO (
  Plan_Id int PRIMARY KEY NOT NULL,
  Nombre_Plan varchar(255),
  Precio_Plan decimal(10,2),
  GB_Disponibles int,
  Minutos_Disponibles int,
  SMS_Disponibles int
)
GO

CREATE TABLE grupo05.CAMPAÑA (
  Campaña_Id int PRIMARY KEY NOT NULL,
  Nombre varchar(255),
  Year_Diseño int
)
GO


CREATE TABLE grupo05.LINEAS_NUEVAS (
  Linea_Id int PRIMARY KEY NOT NULL,
  Numero_Telefono varchar(9),
  Cliente_Id int,
  Plan_Id int,
  Fecha_Ingreso date,
  Modelo_Equipo varchar(100),
  Tipo_Canal_Id int,
  Campaña_Id int
)
GO
CREATE TABLE grupo05.VENTAS_GENERALES (
  Ventas_Id int PRIMARY KEY NOT NULL,
  Fecha_Venta date,
  Total_Venta_Lineas int,
  Totalventas_Soles Decimal(10,2),
  MetaG_Id int,
  Campaña_Id int
)
GO

CREATE TABLE grupo05.METAS_GENERAL (
  MetaG_id int PRIMARY KEY NOT NULL,
  Cantidad_Lineas int,
  Cantidad_Soles Decimal(10,2),
  Fecha_Inicio date,
  Fecha_Fin date
)
GO

CREATE TABLE grupo05.TIPO_CANAL (
  Tipo_Canal_Id int PRIMARY KEY NOT NULL,
  Nombre varchar(100)
)
GO


ALTER TABLE grupo05.LINEAS_NUEVAS ADD CONSTRAINT [FK_Cliente_Id] FOREIGN KEY ([Cliente_Id]) REFERENCES grupo05.CLIENTES ([Cliente_Id])
GO

ALTER TABLE grupo05.LINEAS_NUEVAS ADD CONSTRAINT [FK_Plan_Id] FOREIGN KEY ([Plan_Id]) REFERENCES grupo05.PLAN_TARIFARIO ([Plan_Id])
GO

ALTER TABLE grupo05.LINEAS_NUEVAS ADD CONSTRAINT [FK_Tipo_Canal_Id] FOREIGN KEY ([Tipo_Canal_Id]) REFERENCES grupo05.TIPO_CANAL ([Tipo_Canal_Id])
GO
ALTER TABLE grupo05.LINEAS_NUEVAS ADD CONSTRAINT [FK_LINEA_NUEVA_Campaña_Id] FOREIGN KEY ([Campaña_Id]) REFERENCES grupo05.CAMPAÑA ([Campaña_Id])
GO

ALTER TABLE grupo05.VENTAS_GENERALES ADD CONSTRAINT [FK_VENTAS_MetaG_Id] FOREIGN KEY ([MetaG_Id]) REFERENCES grupo05.METAS_GENERAL ([MetaG_id])
GO

ALTER TABLE grupo05.VENTAS_GENERALES ADD CONSTRAINT [FK_VENTAS_GENERALES_Campaña_Id] FOREIGN KEY ([Campaña_Id]) REFERENCES grupo05.CAMPAÑA ([Campaña_Id])
GO

