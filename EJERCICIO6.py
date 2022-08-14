#EJERCICIO 6

#Creo tupla
Historial2 = 23500, 5960, 2300, 10200, 8900
SumaDeGastosFrida = 0

#Recorrer la tupla y sumar gastos
for gasto in Historial2:
    SumaDeGastosFrida += gasto
print("El total de gastos en atención de Frida es de: $", SumaDeGastosFrida)

def CuentaGastosSuperiores(Tupla):
    aux = 0
    for gasto in Tupla:
        if gasto > 5000:
            aux += 1
    
    print(aux, " fueron los gastos superiores a $5000")

CuentaGastosSuperiores(Historial2)
