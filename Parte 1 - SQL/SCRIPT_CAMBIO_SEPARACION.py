import pandas as pd

#IMPORTANTE!! Adaptar la ruta del archivo 
datos_adquiridos = './datos/netflix_titles.csv'
datos_limpios = './Parte 1 - SQL/datos_netflix.csv'

datos = pd.read_csv(datos_adquiridos, encoding='latin1')

#Solo que quedo con las columnas que me interesa
columnas_interes = datos.columns[:12]
datos = datos[columnas_interes]

#Guardo un nuevo CSV
datos.to_csv(datos_limpios, sep=';',  index=False, encoding='latin1')