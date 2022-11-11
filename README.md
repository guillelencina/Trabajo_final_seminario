
# Seminario de Tópicos Avanzados en Datos Complejos
### Especialización en ciencia de datos ITBA  
  
  
  
Docentes:   
Pedro Ferrari | pedro@muttdata.ai  
Juan Martín Pampliega | jpamplie@itba.edu.ar  

Estudiantes:      
Guillermo Lencina | glencina@itba.edu.ar    
Nicolas Arosteguy | narosteguy@itba.edu.ar    
Alexander Chavez | achavezmontano@itba.edu.ar   
  

## Objetivo    
  
Obtener datos sobre que artistas que escuchan los usuarios en sus playlists publicas con el fin de prototipar la extracción, el procesamiento, y los análisis de la información para un futuro sistema de recomendacion basado en las coincidencias de artistas entre los usuarios.  
  

## Workflow 
  
![](./images/arquitectura.jpg)
  
  
## Resumen

Se consultarán dos API's publicas de spotify, una con información de usuarios y sus playlist y otra con la información de las playlist perse.  
  
En una primera instancia y mediante un script de python (y con usuarios pre-seleccionados manualmente) se obtienen datos de los mismos que contienen las playlist que tengan creadas.  
  
La salida del response es almacenada en un csv (users_file.csv) sin tranformar, y subido a la base de datos SEMINARIO en el schema staging (donde almacenaremos los csv en tablas sin transformar).  
  
Luego mediante Queries de SQL se ejecutan diferentes transformaciones para lograr extraer y estructurar de la tabla de staging de usuarios tanto los datos de los mismos como sus playlist.  
  
Una vez construidas las tablas de usuarios y playlist en el eschema public , con un segundo script de python obtenemos estos id de playlist ya procesados y consultamos la API de playlist, de donde obtenemos un 2do csv (playlist_file.csv) que será almacenado también en el schema de staging, sin procesar.  
  
Nuevamente con Queries SQL extraemos y estructuramos la tabla de playlist_artist, en donde vamos a poder obtener que artistas contiene cada playlist.  
  
Por último, con SQL, se genera una tabla con información (user_id, artista), vinculando todos los artistas que se hayan encontrado en las playlist con sus respectivos usuarios.  
  
Esta ultima información es exportada en un csv (export_colab.csv) para ser el input del colab y empezar con los algoritmos de clusterización.  
  
Todas estas tareas estarán osquestadas mediante operadores de airflow ( Postgres Operators y Python Operators)  
  
  
## Contenido

* [Infraestructura/arquitectura](#Infraestructura)
* [Instalación y puesta en marcha del ambiente](#Pasos-para-instalar)
* [Jupyter Notebook](jupyter/notebook/README.md)
* [Airflow (DAGs configurados en _users_spotify.py_)](dags/README.md)
  
    
## Infraestructura/arquitectura  
  
  
Nuestro _docker-compose.yaml_ contiene 3 servicios: 

* Un container para jupyter (quedó estable pero no pudimos usarlo porque no encontramos la forma de instalar las librerías en el docker compose).
  
* Uno para Airflow.

* Y un tercero para postgres.  

* ~~BDT~~:
  
Inicialmente quisimos usar DBT para la ingesta de los _.csvs_ generados por los archivos de python mediante el comando dbt seed, y adicionalmente hacer todas las transformaciones de los datos con ésta herramienta. Esto nos permitía crear modelos (tablas) declarando sentencias SQL y abstrayéndonos de la estructura de las tablas. Todas las pruebas con DBT funcionaron en entornos locales, pero a la hora de levantar el container tuvimos problemas para dejarlo estable (estado _exited_). 
  
La solución a ésto fue utilizar operadores de postgres directamente desde Airflow para realizar las ingestas de los _.csvs_ y las transformaciones de los datos.
  
  
* Colab:  
  
Originalmente con el servicio de jupyter ibamos a obtener los datos haciendo una consulta directamente a la BD con la librería _sqlalchemy_. Sin embargo, al no poder instalar éstas librerías reemplazamos por Colab, que es una herramienta externa: por lo cual, se creó un phyton operator dentro de Airflow para realizar ésta consulta y generar un _csv._ que pueda ser importado desde Colab sin inconvenientes.






Las librerías estandar usadas: [Numpy](https://numpy.org/), [pandas](https://pandas.pydata.org/), [seaborn](https://seaborn.pydata.org/) y [matplotlib](https://matplotlib.org/).  
Para preprocesamiento: [Sklearn](https://scikit-learn.org/stable/).  
Grafos: [Networkx](https://networkx.org/).  

[La tabla final se obtiene desde la siguiente ruta:](dags/csv)

[El colab se encuentra en el siguiente link:](https://colab.research.google.com/github/guillelencina/Trabajo_final_seminario/blob/master/red_spotify.ipynb#scrollTo=aazLisBb2CO-)

* En primera instancia, se hace una segmentación de poblaciones de usuarios y artistas, por gustos y géneros musicales          respectivamente.  
  
* Como en todo dataset, hay limpieza de algunos datos que no son útiles para el análisis.  
  
* Luego alimentamos la bbdd y se consolida un dataset con la tabla en postgres.  
  
* Se hacen unos ajustes previos a la clusterización y luego iniciamos el ML con un _one hot encoder_ sobre la feature artista.  
  
* Luego, usamos k-means con cuatro clusters.  
  
* Se obtienen las etiquetas asignadas en lugar de los centroides y se mapean.  
  
* Aplicamos DBscan de con búsqueda de hiperparámetros.  
  
* También se incluye como alternativa para el algortitmo _affinity propagation_.  
  
* Por último, usamos grafos para visualizar y mostramos algunas métricas de los resultados.  
  
  

## Pasos para instalar

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



* Airflow tiene una BD por defecto. Se debe crear por primera vez la BD SEMINARIO y realizar la conexión manual a través de dbeaver: 

![](./images/bd_seminario.jpg)





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
