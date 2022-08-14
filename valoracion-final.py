#Ejercicio 8
#8) Crear una tupla en Python con el nombre de “Historial4” la cual contenga los siguientes valores:
#         7510, 7960, 76180, 800, 4100
#Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Olivia”. Cree una función para determinar
#el valor mínimo de atención gastada en “Olivia”  mostrándolo en pantalla.

historial4 = 7510, 7960, 76180, 800, 4100

def gastoMin (minimo):
    valorMinimo = (minimo)
    print(valorMinimo, "es el valor mínimo para la atención de Olivia")
    
gastoMin(historial4)