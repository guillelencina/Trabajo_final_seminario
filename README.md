# Seminario de Tópicos Avanzados en Datos Complejos

CAMBIO DE PRUEBA

Docente:   
Pedro Ferrari | pedro@muttdata.ai  
Juan Martín Pampliega | jpamplie@itba.edu.ar  

Estudiantes:    

Guillermo Lencina | glencina@itba.edu.ar    
Nicolas Arosteguy | narosteguy@itba.edu.ar    
Alexander Chavez | achavezmontano@itba.edu.ar   

## Resumen

A través de una API vinculada a la plataforma Spotify obtenemos datos de usuarios. Un ETL para procesar los datos, orquestado desde Airflow. El extract & transform se realiza con postgres. El procesamiento y visualización con phyton: Se usaron algoritmos de clasificación y grafos para encontrar patrones. 

## Infraestructura

Nuestro trabajo simula una instalación de producción con múltiples containers en Docker.
_docker-compose.yaml_ contiene las definiciones y configuraciones para los siguientes servicios:

* Interfaz gráfica de Jupyter obtenida de la imagen arjones/pyspark:2.4.5. 

    Una vez los containers estén en Running, podés ingresar desde acá -> [Jupyter](http://localhost:8888)

* Interfaz gráfica de Airflow obtenida de la imagen -apache/airflow:2.4.1. 

    Una vez los containers estén en Running, podés ingresar desde acá -> [Airflow](http://localhost:8080)

* Motor de base de datos postgres obtenida de la imagen postgres:13. 

## Pasos para instalar:

1. Clonar repo: git clone https://github.com/guillelencina/seminario_final.git

![](./images/git_clone.jpg)


2. Abrir _Docker Desktop_ para visualizar desde la interfaz.

![](./images/docker_desktop_ini.jpg)


3. Desde VSCode, abrir la carpeta _seminario_final-master_.

![](./images/folder_seminario_final.jpg)


4. Ejecutar una consola de Ubuntu.

![](./images/ubuntu_console.jpg)


5. Ingresar a la carpeta: cd seminario_final-master

6. Ejecutar el comando: docker-compose -f docker-compose.yaml up -d

* El docker-compose es un archivo yaml/yml para crear todos los containers necesarios y a la vez.
* Una vez ejecutado, deben aparecer todos los containers OK como indica la imagen.

![](./images/containers_done.jpg)

* También los podés chequear en la interfaz gráfica de Docker.

![](./images/containers_running.jpg)


Sitios de interés: 

    * https://www.youtube.com/c/PeladoNerd  
    * https://www.youtube.com/c/HolaMundoDev  
    * https://www.youtube.com/c/NetworkChuck
    * Postgres + PGAdmin : https://www.youtube.com/watch?v=uKlRp6CqpDg  


## Acerca de

Nicolás Arostegui | [LinkedIn](https://www.linkedin.com/in/nicol%C3%A1s-arosteguy-a564a97a/) 

Guillermo Lencina | [LinkedIn](https://www.linkedin.com/in/guillermolencina/) 

Alexander Chavez | [LinkedIn](https://www.linkedin.com/in/alexchavez1980/) 

ITBA &copy; 2021/2022 
