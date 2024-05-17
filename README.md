# dockerfile_ubuntu

+ Instalar extension de Docker en VS
+ Clone el repo en una carpeta
+ Abrir consola de comandos y ubicarse en la carpeta del repo

```
docker build -t <image_name>
```
+ puedes elegir cualquier __<image_name>__ este sera el nombre de la imagen que vas a crear

```
docker run -it --name=<container_name> <image_name>
```
+ puedes elegir cualquier __<container_name>__ y el __<image_name>__ debe ser el mismo de la imagen que creaste
+ El contenedor deberia iniciarce automaticamente