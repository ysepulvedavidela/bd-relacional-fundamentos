# Fundamentos-de-Bases-de-Datos-Relacionales
El siguiente proyecto fue hecho para el Módulo 5 del Bootcamp de Desarrollo de Aplicaciones Full Stack JavaScript Trainee V2.0.

Para este proyecto se ha utilizado la tecnología:

- PostgreSQL

<p align="center">
    <img src="https://skillicons.dev/icons?i=postgresql" />
</p>


## FINAL DRILLING: ARRIENDO DE DVDS
#
Este proyecto tiene un listado de cuatro instrucciones, las cuales se describen y muestran aquí:

- [x] Descarga el archivo adjunto, y descomprímelo para obtener el archivo “dvdrental.tar”.

![dvdrental](https://github.com/ysepulvedavidela/bd-relacional-fundamentos/assets/87554453/fe330e48-3720-469a-a7b6-b32051d18fb4)
- [x] La base de datos “dvdrental” contiene 15 tablas bajo el siguiente modelo relacional. 

![1](https://github.com/ysepulvedavidela/bd-relacional-fundamentos/assets/87554453/eb55803f-ab76-42f1-8120-ce6fddaa7596)
![2](https://github.com/ysepulvedavidela/bd-relacional-fundamentos/assets/87554453/9074f362-fd5d-4535-a33d-bb7550c24a8a)
![3](https://github.com/ysepulvedavidela/bd-relacional-fundamentos/assets/87554453/5dd83d44-b19d-4a07-8df5-75ea4a4a404f)
![4](https://github.com/ysepulvedavidela/bd-relacional-fundamentos/assets/87554453/b4211505-483a-4a38-af48-517bc39f01d2)
- [x] Construir consultas en sql. **(query.sql)**
- [x] Realiza un Diccionario de datos que contenga el nombre de las tablas y columnas, si éstas pueden ser nulas, y su tipo de dato correspondiente.

```
SELECT
    t1.TABLE_NAME AS tabla_nombre,
    t1.COLUMN_NAME AS columna_nombre,
    t1.IS_NULLABLE AS columna_nulo,
    t1.DATA_TYPE AS columna_tipo_dato,
    COALESCE(t1.NUMERIC_PRECISION,
    t1.CHARACTER_MAXIMUM_LENGTH) AS columna_longitud
FROM 
    INFORMATION_SCHEMA.COLUMNS t1
    INNER JOIN PG_CLASS t2 ON (t2.RELNAME = t1.TABLE_NAME)
WHERE 
    t1.TABLE_SCHEMA = 'public'
ORDER BY
    t1.TABLE_NAME;
```
