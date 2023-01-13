print("Bienvenido a la actividad del modulo 2")
print("Favor de escribir los datos solicitados en numero enteros")
x=(input("Introduzca la coordenada en x: "))
Caracteres_x=len(x) #La varieble se guarda
tipo_x=x.isdigit() #Vemos que sea un digito

#hacemos un while o bucle para hacer que el usuario no deje vacia la casilla, o un caracter no valido
while Caracteres_x ==0 or tipo_x == False:
    print("ERROR Favor de introducir un numero vaido")
    x=(input("Introduzca la coordenada en x: "))
    Caracteres_x=len(x)
    tipo_x=x.isdigit()
    if Caracteres_x > 0 and tipo_x == True :
        break #rompemos el while


y=(input("Introduzca la coordenada en y: ")) 
Caracteres_y=len(y) 
tipo_y=y.isdigit() 
#De igual manera que el while anterior solo que para el caso de la coordenada "Y"
while Caracteres_y ==0 or tipo_y == False:
    print("ERROR Favor de introducir un numero vaido")
    y=(input("Introduzca la coordenada en y: "))
    Caracteres_y=len(y)
    tipo_y=y.isdigit()

    if Caracteres_y > 0 and tipo_y == True :
        break
#los hacemos enteros para comparar
x = int(x) 
y = int(y)

#aqui es donde de verdad ponemos a comparar pra validar los datos y poderlos separar

if x==0 and y==0:  # En dado caso que este en el origen
    print ('Origen')
elif x>0 and y>0:
    print ('Cuadrante I') #Si el eje "X" y "Y" son mayores a cero
elif x==0 and y>0:
    print("Entre cuadrante I y II") # Si el eje "X" es igual a cero y el eje "Y" es mayor a cero
elif x<0 and y>0:
    print ('Cuadrante II') # Si el eje "X" es menor a cero, y el eje "Y" es mayor a cero
elif x<0 and y==0:
    print("Entre cuadrante II y III") # Si el eje "X" es menor a cero y el eje "Y" es igual a cero
elif x<0 and y<0:
    print ('Cuadrante III') #Si el eje "X" y "Y" son menores a cero
elif x==0 and y<0:
    print("Entre cuadrante III y IV") # Si el eje "X" es igual a cero y el eje "Y" es menor a cero
elif x>0 and y<0 :
    print ('Cuadrante IV ') # Si el eje "X" es mayor a cero, y el eje "Y" es menor a cero
else :
    print("Entre cuadrante IV y I") # Si el eje "X" es mayor a cero y el eje "Y" es igual a cero

print(f"Su coordenada introducida es: {(x,y)}") #se imprime las cordenadas con ayuda de f