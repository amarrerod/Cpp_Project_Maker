# C++ Project Maker

### Author: Alejandro Marrero Díaz
### Universidad de La Laguna [ULL](http://www.ull.es)
### Contacto: alu0100825008@ull.edu.es

Script en bash para crear proyectos en lenguaje C++ automáticamente.

###  Forma de uso
1. Crear un directorio en el que se deben incluir los ficheros plantilla para usar en el proyecto. Se asume el uso de Travis-ci para integración continua y EditorConfig para configurar el editor (Se incluyen ejemplos de estos ficheros en el directorio ejemplos). Por lo que, a parte de los ficheros que desee debe incluir estos dos ficheros:
 - .travis.yml
 - .editorconfig
```bash
mkdir ~/Templates/Cpp
```
2. Ejecutar el script pasando como argumento la ruta donde se desea crear el proyecto.

### Resultado
El script se encargará de crear un repositorio y hacer una primera confirmación cuando la estructura haya sido creada en la ruta especificada.
#### Directorios

- path/doc  : Documentación asociada al proyecto.
- path/src : Directiro en el que se aloja el código fuente del proyecto.
- path/lib : Directio para incluir las librerías y cabeceras del proyecto.
- path/test: Directorio para incluir las pruebas del proyecto

#### Ficheros
- path/src/main.cpp : Fichero que debe incluir la función de entrada al programa.
- path/.gitignore : Fichero que por defecto hace que el sistema git ignore los ficheros ocultos
- path/README.md : Fichero README.md para incluir información acerca del proyecto.
