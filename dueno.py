#EJERCICIO 7
#Creo tupla
Historial3 = 9530, 4120, 4580, 1500, 890, 7516, 426 
PromedioGastosLennon = 0
SumaGastosLennon = 0
CantidadGastos = 0

for gasto in Historial3: 
    SumaGastosLennon += gasto
    CantidadGastos += 1
PromedioGastosLennon = SumaGastosLennon / CantidadGastos

print("El promedio de gastos por atencion de Lennon, 2)")

if PromedioGastosLennon > 4500:
    print ("Se ha excedido del gasto promedio para su mascota")
        