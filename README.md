# Sofka-Preguntas-y-Respuestas

El proyecto tiene lo siguiente:

1. Unos archivos de estilos que están en la carpeta "Public/Css" donde se encuentran los estilos de la página de registro y de la pagina general.

2. Una base de datos que está dentro de la carpeta "DataBase/db.sql" en donde se encuentran 2 tablas, una denominada USERS y otra QUESTIONS. En la
primera tabla se almacen los datos de las personas que se registran para jugar. Y en la segunda están almacenadas todas las preguntas y opciones de 
respuesta. Esta base de datos fue diseñada en MySQL.

3. En la Carpeta "Routes" aparecen tres archivos pero por el tiempo sólo alcancé a completar uno, el de "Links", en ese aparecen todas las rutas que 
se alcanzaron a hacer, con sus correspondientes métodos HTTP.

4. En la carpeta "Views" hay dos carpetas "Main" y "Links", en la primera aparece la estructura de la aplicación y los enlaces de conexión con CSS y BOOTSTRAP. 
En la segunda aparecen varios archivos, cada uno de ellos contienen el Body de la aplicación y su contenido.

5. Dentro de la carpeta SRC aparece un archivo que se llama "database.js", en este se hace la conexión con la base de datos y se configuran los posibles errores
que pueden ocurrir durante la conexión.

6. En el archivo index.js que está dentro de la carpeta SRC se hacen las configuraciones generales del puerto en que se va a correr la aplicación, de las vistas
a través de handlers, de los middlewares y de las rutas.

7. En el archivo Keys.js que está dentro del SRC aparecen las credenciales para ejecutar la base de datos que se corre desde MySQL Workbench.

9. Por último escribo las rutas para que se pueda probar más facilmente:

Localhost:4000/ --> Aparece un letrero de "Hello World" 

Localhost:4000/links --> Aparecen las personas que se han registrado en el juego.

Localhost:4000/links/add --> Aparece la página de registro del juego.

Localhost:4000/links/questions --> Aparece la pregunta que fue renderizada desde la base de datos.

10. Se debe tener en cuenta que se hicieron dos botones, uno para borrar los usuarios que fueron creados y otro editar la información que registraron.
