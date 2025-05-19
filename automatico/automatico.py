import numpy as np
import os
import configparser
import time

# cantidad de iteraciones entre dos roles iguales
try:
    ciclos = int(input("->digite ciclos (def 10): "))
except:
    ciclos = 10
total = 255
try:
    apoyo = np.floor(total * float(input("->digite % apoyo (def 0.25): ")))
except:
    apoyo = np.floor(total * 0.25)

# roles y su cantidad de unidades, 0:rol, 1:num basic=(total-num)
data = []
data.append(total)
data.append(apoyo)
data.append(apoyo)
data.append(apoyo)
data.append(total)
data.append(apoyo)
data.append(apoyo)
data.append(apoyo)
data.append(total)
data.append(total)
data.append(total)
data.append(total)
data.append(total)
data.append(apoyo)
data.append(total)
data.append(total)
data.append(apoyo)
data.append(apoyo)
data.append(total)
data.append(total)
data.append(total)
data.append(apoyo)
data.append(total)
data.append(apoyo)
data.append(total)
data.append(total)
data.append(apoyo)
data.append(total)

# lleva registro de que peleas ya sucedieron
estad = []
tipo = input("->digite 0-TvT, 1-RvT, 2-RvR, 3-Sel, 4-Mel, 5-Apo: ")
if tipo == "0":
    for r1 in range(28):
        for r2 in range(r1 + 1, 28):
            estad.append([r1, r2, 0])
elif tipo == "1":
    try:
        r1 = min(27, max(0, int(input("->digite rol ind 0-27 (def 9): "))))
    except:
        r1 = 9
    for r2 in range(28):
        estad.append([r1, r2, 0])
elif tipo == "2":
    try:
        r1 = min(27, max(0, int(input("->digite rol A ind 0-27 (def 9): "))))
    except:
        r1 = 9
    try:
        r2 = min(27, max(0, int(input("->digite rol B ind 0-27 (def 8): "))))
    except:
        r2 = 8
    estad.append([r1, r2, 0])
elif tipo == "3":
    while True:
        try:
            r1 = min(27, max(0, int(input("->digite rol A ind 0-27 (def 9): "))))
        except:
            r1 = 9
        try:
            r2 = min(27, max(0, int(input("->digite rol B ind 0-27 (def 8): "))))
        except:
            r2 = 8
        estad.append([r1, r2, 0])
        print("->{} vs {}".format(r1, r2))
        if input("->digite x para terminar seleccion: ") == "x":
            break
elif tipo == "4":
    mele = [0, 8, 9, 10, 11, 12, 14, 15, 18, 19, 20, 24, 25, 27]
    for r1 in range(28):
        for r2 in range(r1, 28):
            if r1 in mele and r2 in mele:
                estad.append([r1, r2, 0])
elif tipo == "5":
    mele = [0, 8, 9, 10, 14, 15, 18, 19, 20, 24, 25, 27]
    for r1 in range(28):
        for r2 in range(r1, 28):
            if not r1 in mele and not r2 in mele:
                estad.append([r1, r2, 0])
else:
    print("***End***")
    exit()

fff = open("end.txt", "w")
fff.write("...")
fff.close()

num = 0
print("***DelRowAuto***")
print("->casos: {}".format(len(estad)))
print("->ciclo: {}".format(ciclos))
print("->total: {}".format(len(estad) * ciclos))
try:
    dura = float(input("->digite duracion ciclo s (def 17): "))
    dura = int((((dura * len(estad) * ciclos) / 60) / 60) * 100) / 100.0
    print("->duracion: {} h".format(dura))
except:
    dura = int((((17.0 * len(estad) * ciclos) / 60) / 60) * 100) / 100.0
    print("->duracion: {} h".format(dura))
print("...")
while True:
    if not os.path.exists("automatico.ini"):
        num += 1
        # elegir pares
        r1 = -1
        r2 = -1
        fre = 1000000
        while fre > 0:
            fig = np.random.randint(len(estad))
            if estad[fig][2] < ciclos:
                estad[fig][2] += 1
                r1 = estad[fig][0]
                r2 = estad[fig][1]
                break
            fre -= 1
        if fre <= 0:
            break
        # escribir el archivo
        print("->{}: {}%".format(num, round((num / (len(estad) * ciclos)) * 100)))
        cof = configparser.ConfigParser()
        cof["A"] = {"r1": str(r1), "c1": str(data[r1]), "c2": str(total - data[r1])}
        cof["B"] = {"r1": str(r2), "c1": str(data[r2]), "c2": str(total - data[r2])}
        fff = open("automatico.ini", "w")
        cof.write(fff)
        fff.close()
        while True:
            if os.path.exists("end.txt"):
                os.remove("end.txt")
                if os.path.exists("DelRowAuto.exe"):
                    os.startfile("DelRowAuto.exe")
                else:
                    print("***No DelRowAuto.exe***")
                    exit()
                break
            time.sleep(1)
    time.sleep(1)
print("***End***")
