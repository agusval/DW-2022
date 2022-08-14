#Actividad 2:

#Creo lista
Dueno2 =[23546987, "Maria", "Perez", 4789689, "Pueyrredon 811"]

#Muestro datos, excepto DNI y APELLIDO
for x in range(5):
    #Muestro datos siempre y cuando no sean de la posicion CERO y DOS de la lista
    if (x != 0) and (x != 2):
        print(Dueno2[x])