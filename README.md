# dockerfile_ubuntu

+ Instalar extension de Docker en VS
+ Clone el repo en una carpeta
+ Abrir consola de comandos y ubicarse en la carpeta del repo

```
docker build -t __image_name__
```
+ puedes elegir cualquier __image_name__ este sera el nombre de la imagen que vas a crear

```
docker run -it --name=__container_name__ __image_name__
```
+ puedes elegir cualquier __container_name__ y el __image_name__ debe ser el mismo de la imagen que creaste
+ El contenedor deberia iniciarce automaticamente