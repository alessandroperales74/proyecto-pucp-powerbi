
# Proyecto Final - Data Visualization for Power BI

Este es un proyecto grupal del curso de Data Visualization for Power BI correspondiente al Diplomado en Business Analytics de la Pontificia Universidad Católica del Perú.

### Business Case

Como punto de partida para este proyecto, hemos definido como caso de negocio el indicador de "Promedio mensual de ventas diarias de líneas adicionales en el aplicativo móvil APP - MI ENTEL", el cual deberá estar reflejado en una aplicación de Power BI que nos permita darnos claridad para una correcta toma de decisiones.

En esta primera imagen podemos tener una vista de la aplicación de Power BI en donde se nos indica lo siguiente

- Objetivo
- Estrategia
- Costo Beneficio

![ImageBC](images/business_case.jpg)

### Definición del Indicador

Aquí definimos cuál va a ser la métrica que vamos a utilizar para el caso de negocio, además de lo siguiente:

- Nombre del indicador
- Fórmula para el cálculo del indicador
- Metas del indicador y semaforización
- Impacto económico de cada punto porcentual

![ImageInd](images/Indicador.jpg)

### Dashboard

En esta pestaña buscamos brindar un estatus de cómo está nuestro promedio mensual para el mes de Mayo 2023, el cual nos servirá como punto de partida para el despliegue de nuestra estrategia de Cross Selling, definida anteriormente. Como podemos apreciar, para el mes de actualización, se llegó a una meta del 93% el cual

![ImageD](images/Dashboard.jpg)

### Preguntas 

Tomando la data cargada en SQL Server, se plantearon 10 preguntas que deben ser respondidas utilizando las técnicas de visualización de datos. El objetivo de estas visualizaciones es poder facilitar la toma de decisiones de Entel para la implementación de nuestra estrategia.

- **Pregunta 1**: **¿Qué tendencia presentó el indicador de cumplimiento mensual en el año 2023?**

![ImageP1](images/Pregunta1.jpg)

- **Pregunta 2**: **¿Cuál es la difertencia porcentual con respecto al indicador de cumplimiento mensual, comparando el mes de Mayo del año 2023 y 2024?**

![ImageP2](images/Pregunta2.jpg)

- **Pregunta 3**: **¿Qué canal de venta generó un mayor incremento al indicador de cumplimiento mensual en el mes de Enero del 2024?**

![ImageP3](images/Pregunta3.jpg)

- **Pregunta 4**: **¿Qué variación porcentual tuvo el indicador de cumplimiento mensual entre el mes con mayor y menor valor del año 2023?**

![ImageP4](images/Pregunta4.jpg)
  
- **Pregunta 5**: **¿Qué campaña generó un mayor aumento en el indicador de cumplimiento mensual en el mes de Noviembre del año 2023 - con respecto al mes anterior?**

![ImageP5](images/Pregunta5.jpg)

- **Pregunta 6**: **¿Con qué promedio de cumplimiento mensual terminó el año 2023?**

![ImageP6](images/Pregunta6.jpg)

- **Pregunta 7**: **¿Qué campaña del "Día de la Madre" generó un mayor aumento en el indicador de cumplimiento mensual entrel el año 2023 y 2024?**

![ImageP7](images/Pregunta7.jpg)

- **Pregunta 8**: **¿Qué canal de venta representa el valor porcentual más bajo con respecto al indicador de cumplimiento mensual en el mes de Agosto del 2023?**

![ImageP8](images/Pregunta8.jpg)
  
- **Pregunta 9**: **¿Qué valor porcentual del indicador de cumplimiento mensual representa el canal de "WhatsApp" en el mes de Enero del 2024?**

![ImageP9](images/Pregunta9.jpg)

- **Pregunta 10**: **¿Cuál es el mes que tiene el Promedo mensual del cumplimiento diario diario de ventas de las campañas de líneas adicionales en el Aplicativo Movil APP MI ENTEL más cercano a la meta de 100% en el 2024?**

![ImageP10](images/Pregunta10.jpg)

## Creación de Tablas SQL

La creación de la base de datos necesaria para este análisis se realizó en SQL Server. Asimismo, para poder resolver este caso de negocio se crearion las siguientes tablas:

- CLIENTES
- PLAN_TARIFARIO
- CAMPAÑA
- LINEAS_NUEVAS
- VENTAS_GENERALES
- METAS_GENERAL
- TIPO_CANAL


```sql
-- Creación de tablas requeridas para el Proyecto
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
```

![ImageBBDD1](images/creacion_sql.jpg)

A continuación se indica el modelo de base de datos utilizado para este proyecto es el sigiuiente:

![ImageBBDD](images/diagrama_bbdd.jpg)

La inserción de los datos se realizó utilizando el INSERT INTO VALUES de la siguiente manera 

![ImageBBDD2](images/insercion_sql.jpg)
![ImageBBDD3](images/insercion_sql1.jpg)
![ImageBBDD4](images/insercion_sql2.jpg)
![ImageBBDD5](images/insercion_sql3.jpg)

Para mayor detalle, el código completo con la creación de las tablas SQL se encuentra en el siguiente enlace: ![Código SQL](sql/codigo_sql_entel.sql)



