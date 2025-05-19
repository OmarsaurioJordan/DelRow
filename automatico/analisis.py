import numpy as np

print("***DelRowAuto Analisis***")
try:
    f = input("->digite nombre de archivo (def automatico): ")
    if not ".txt" in f:
        f += ".txt"
    fff = open(f, "r")
except:
    try:
        fff = open("automatico.txt", "r")
    except:
        fff = -1
        print("***End***")
        exit()
data = fff.readlines()
fff.close()

ciclo = 0
muestra = " ".join(data[0].split(" ")[:4])
for d in data:
    if muestra in d:
        ciclo += 1
print("->ciclo: {}".format(int(ciclo)))
casos = int(len(data) / ciclo)
print("->casos: {}".format(casos))
print("->total: {}".format(len(data)))
print("...")

names = []
names.append("Fami")
names.append("Agri")
names.append("Chef")
names.append("Arte")
names.append("Mine")
names.append("Herr")
names.append("Medi")
names.append("Lide")
names.append("Defe")
names.append("Guer")
names.append("Cepu")
names.append("Mago")
names.append("Sace")
names.append("Arti")
names.append("Depo")
names.append("Paya")
names.append("Acom")
names.append("Vend")
names.append("Limp")
names.append("Hipp")
names.append("Dome")
names.append("Pilo")
names.append("Mens")
names.append("Escr")
names.append("Inge")
names.append("Arqi")
names.append("Ases")
names.append("Cien")

estad = []
for c in range(casos):
    # 0rolA, 4rolB, 8killA, 12killB, killDif, 9eA1, 10eA2,
    # 13eB1, 14eB2, 11vivA, 15vivB, vivMax
    estad.append([])
    estad[-1].append(-1)
    estad[-1].append(-1)
    for p in range(2, 12):
        estad[-1].append(0.0)

for d in range(len(data)):
    data[d] = data[d].replace("A1:", "")
    data[d] = data[d].replace("A2:", "")
    data[d] = data[d].replace("B1:", "")
    data[d] = data[d].replace("B2:", "")
    data[d] = data[d].replace("A:", "")
    data[d] = data[d].replace("B:", "")
    data[d] = data[d].replace(":", " ")
    war = [int(n) for n in data[d].split(" ")]
    i = -1
    for c in range(casos):
        if estad[c][0] == war[0] and estad[c][1] == war[4]:
            i = c
            break
    if i == -1:
        for c in range(casos):
            if estad[c][0] == -1:
                estad[c][0] = war[0]
                estad[c][1] = war[4]
                i = c
                break
    estad[i][2] += war[8]
    estad[i][3] += war[12]
    estad[i][5] += war[9]
    estad[i][6] += war[10]
    estad[i][7] += war[13]
    estad[i][8] += war[14]
    estad[i][9] += war[11]
    estad[i][10] += war[15]

for c in range(casos):
    for p in [2, 3, 5, 6, 7, 8, 9, 10]:
        estad[c][p] = int(estad[c][p] / ciclo)
    estad[c][4] = int(((estad[c][2] - estad[c][3]) / 255.0) * 100.0)
    estad[c][11] = (max(estad[c][9], estad[c][10]) / 255.0) * 100.0
    estad[c][11] = (estad[c][11] if estad[c][9] > estad[c][10] else -estad[c][11])

dtype = [("rol", int), ("wins", float)]
values = []
for c in range(casos):
    values.append((c, estad[c][11]))
orden = np.sort(np.array(values, dtype=dtype), order="wins")
vec = []
for c in range(casos):
    vec.append(estad[orden[c][0]])
estad = vec

# 0rolA, 4rolB, 8killA, 12killB, killDif, 9eA1, 10eA2, 13eB1, 14eB2, vivos
txt = "RolA vs RolB (killA - killB = killDif%) (powA1, powA2) (powB1, powB2) surviv%"
print(txt)
for c in range(casos):
    t = "\r->{} vs {} ({} - {} = {}%) ({}, {}) ({}, {}) {}%".format(
        names[estad[c][0]], names[estad[c][1]], estad[c][2], estad[c][3],
        estad[c][4], estad[c][5], estad[c][6], estad[c][7], estad[c][8],
        int(estad[c][11])
    )
    print(t[1:])
    txt += t

fff = open("analisis.txt", "w")
fff.write(txt + "\r")
fff.close()

while True:
    print("...")
    sel = input("->digite ind 0-27 o nombre rol a filtrar (vacio salir): ")
    if sel == "":
        break
    try:
        sel = min(27, max(0, int(sel)))
    except:
        sel = sel.lower()
        for r in range(len(names)):
            if names[r].lower() == sel:
                sel = r
                break
        if type(sel) == str:
            continue
    esta = []
    for c in range(casos):
        if estad[c][0] == sel:
            esta.append(estad[c])
        elif estad[c][1] == sel:
            # 0rolA, 4rolB, 8killA, 12killB, killDif, 9eA1, 10eA2,
            # 13eB1, 14eB2, 11vivA, 15vivB, vivMax
            esta.append([
                estad[c][1], estad[c][0], estad[c][3], estad[c][2], -estad[c][4],
                estad[c][7], estad[c][8], estad[c][5], estad[c][6], estad[c][10],
                estad[c][9], -estad[c][11]
            ])
    dtype = [("rol", int), ("wins", float)]
    values = []
    for c in range(len(esta)):
        values.append((c, esta[c][11]))
    orden = np.sort(np.array(values, dtype=dtype), order="wins")
    vec = []
    for c in range(len(esta)):
        vec.append(esta[orden[c][0]])
    esta = vec
    print("RolA vs RolB (killA - killB = killDif%) (powA1, powA2) (powB1, powB2) surviv%")
    for c in range(len(esta)):
        print("->{} vs {} ({} - {} = {}%) ({}, {}) ({}, {}) {}%".format(
            names[esta[c][0]], names[esta[c][1]], esta[c][2], esta[c][3],
            esta[c][4], esta[c][5], esta[c][6], esta[c][7], esta[c][8],
            int(esta[c][11])
        ))
    if len(esta) >= 7:
        print("General:")
    print("Lose {}: {}%, {}: {}%, {}: {}%".format(
        names[esta[0][1]], int(esta[0][11]),
        names[esta[1][1]], int(esta[1][11]),
        names[esta[2][1]], int(esta[2][11]),
    ))
    print("Win {}: {}%, {}: {}%, {}: {}%, {}: {}%".format(
        names[esta[-1][1]], int(esta[-1][11]),
        names[esta[-2][1]], int(esta[-2][11]),
        names[esta[-3][1]], int(esta[-3][11]),
        names[esta[-4][1]], int(esta[-4][11]),
    ))
print("***End***")
