## Clustering
  
El jupyter notebook contiene el tratamiento, preprocesamiento y análisis de los datos: [Clustering](red_spotify.ipynb).  

Las librerías estandar usadas: [Numpy](https://numpy.org/), [pandas](https://pandas.pydata.org/), [seaborn](https://seaborn.pydata.org/) y [matplotlib](https://matplotlib.org/).  
Para preprocesamiento: [Sklearn](https://scikit-learn.org/stable/).  
Mapeo de base de datos: [SQLAlchemy](https://www.sqlalchemy.org/).  
Grafos: [Networkx](https://networkx.org/).  

### Descripción del notebook:

* En primera instancia, se hace una segmentación de poblaciones de usuarios y artistas, por gustos y géneros musicales          respectivamente.  
  
* Como en todo dataset, hay limpieza de algunos datos que no son útiles para el análisis.  
  
* Luego alimentamos la bbdd y se consolida un dataset con la tabla en postgres.  
  
* Se hacen unos ajustes previos a la clusterización y luego iniciamos el ML con un _one hot encoder_ sobre la feature artista.  
  
* Luego, usamos k-means con cuatro clusters.  
  
* Se obtienen las etiquetas asignadas en lugar de los centroides y se mapean.  
  
* Aplicamos DBscan de con búsqueda de hiperparámetros.  
  
* También se incluye como alternativa para el algortitmo _affinity propagation_.  
  
* Por último, usamos grafos para visualizar y mostramos algunas métricas de los resultados.  
