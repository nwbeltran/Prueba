# Prueba

Herramientas usadas

-> Servidor de Base de datos Mysql Server
-> Como cliente para base de datos se usa Worckbenh
-> Eclipse "Spring tools Suite 4"
-> VisualStudio

Configuraciones previas

-> Mylsq: Se debe ejecutar en la base de datos el script "\Prueba\Base Datos\BD.sql"
-> Mysql: Se crear un usuario prueba1 con password prueba y darle los permisos suficientes para ver y ejecutar comandos dll en la base de datos transporte creada con el script.
-> Desde eclipse, se debe importar el proyecto "\Prueba\BACKEND\servicio-transporte"
-> En Eclipse configurar(Windows/preferences/server/Runtime Environments) un servidor apache tomcat(version >= 8.5)
-> Una vez configurado el apache tomcat se despliega el proyecto importado
-> Descomprimir archivo "\Prueba\FRONTEND\TransporteApp.7z" y abrirlo en visual estudio, despues ejecutar en la terminal del visual la instruccion "ng -o serve" la cual sube el servidor del frontend
-> Ingresar a un navegador e ingresar la url http://localhost:4200/empresa

Nota: en la ruta "\Prueba\Test" queda un documento con pruebas de estos pasos.
Nota: Se sube archivo "\Prueba\Base Datos\Query.sql" para el punto 2