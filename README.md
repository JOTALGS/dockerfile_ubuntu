# dockerfile_ubuntu

+ Instalar extension de Docker en VS
+ Clone el repo en una carpeta
+ Abrir consola de comandos y ubicarse en la carpeta del repo

+ __importante__: el segundo argumento que recibe la fincion docker build es el path del archivo Dokerfile. Por eso situarse en la carpeta del archivo y poner '.' como el path.
```
docker build -t <image_name> .
```
+ puedes elegir cualquier __<image_name>__ este sera el nombre de la imagen que vas a crear

```
docker run -it -p 3000:3000 -p 8080:8080 --name=<container_name> <image_name>
``` 
+ puedes elegir cualquier __<container_name>__ y el __<image_name>__ debe ser el mismo de la imagen que creaste
+ El contenedor deberia iniciarce automaticamente
```
docker start <container_name>
```
```
docker exec -it <container_name> /bin/bash
```

run backend server with python3 manage.py runserver 0.0.0.0:8080
yes