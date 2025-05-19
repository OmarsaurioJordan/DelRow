"""
Programa para extraer y compactar cadenas de dialogos depurados con switch
Creado por Omarsaurio 2021, para el proyecto videojuego DelRow, v0.0.1

Estructura Switch TXT:
switch argument0 {

    // nota del segmento 0
    case ind0: // personaje0 descripcion0
        return "texto de dialogo 0";
    case ind1: // personaje1 descripcion1
        return "texto de dialogo 1";
    case ind2: // personaje2 descripcion2
        return "texto de dialogo 2";

    // nota del segmento 1
    case ind3: // personaje3 descripcion3
        return "texto de dialogo 3" +
            "continuacion dialogo 3...";
    case ind4: // personaje4 descripcion4
        return "texto de dialogo 4";
    case ind5: // personaje5 descripcion5
        return "texto de dialogo 5";

    default: return "";
}

Estructura texto TXT 1 (dialogos):
texto de dialogo 0

texto de dialogo 1

texto de dialogo 2

texto de dialogo 3

texto de dialogo 4

texto de dialogo 5

Estructura texto TXT 2 (informacion):
$ nota del segmento 0
ind0
ind1
ind2
$ nota del segmento 1
ind3
ind4
ind5

Estructura CSV (para Excel):
indice;dialogo
-1;nota del segmento 0
ind0;texto de dialogo 0
ind1;texto de dialogo 1
ind2;texto de dialogo 2
-1;nota del segmento 1
ind3;texto de dialogo 3
ind4;texto de dialogo 4
ind5;texto de dialogo 5
"""

from googletrans import Translator

gotra = Translator()
indice = []
dialogo = []
copia = []

def main():
    print("***Bienvenido a SwitchLanguaje***")
    print("(-> menu)")
    while True:
        print("")
        sel = input("-> ")
        if sel == "salir":
            print("***Finalizado***")
            break
        elif sel == "menu":
            print("***Menu***")
            print("- imp swi: importar archivo switch TXT")
            print("- imp txt: importar archivo texto TXT")
            print("- imp csv: importar archivo CSV")
            print("- exp swi: exportar archivo switch TXT")
            print("- exp txt: exportar archivo texto TXT")
            print("- exp csv: exportar archivo CSV")
            print("- info: informacion obtenida")
            print("- trans: traduce automaticamente via Google")
            print("- origi: devuelve el texto al idioma original")
            print("- ciclo: convierte bloque de txt a swi")
            print("- salir: finaliza el programa")
        elif sel == "imp swi":
            limpiar()
            importSwitch()
        elif sel == "imp txt":
            limpiar()
            importTXT()
        elif sel == "imp csv":
            limpiar()
            importCSV()
        elif sel == "exp swi":
            exportSwitch()
        elif sel == "exp txt":
            exportTXT()
        elif sel == "exp csv":
            exportCSV()
        elif sel == "info":
            informacion()
        elif sel == "origi":
            original()
        elif sel == "trans":
            translate()
        elif sel == "ciclo":
            convertidor()

def translate():
    global dialogo, copia, gotra
    idioma = input("   código de idioma (2 letras): ")
    if idioma != "":
        if len(copia) != 0:
            dialogo = copia.copy()
        else:
            copia = dialogo.copy()
        dialogo = gotra.translate(dialogo, src='es', dest=idioma).text

def informacion():
    global indice
    tot = 0
    for i in range(len(indice)):
        if indice[i] != "-1":
            tot += 1
    print("   dialogos: {}".format(tot))

def importSwitch(name="", saltos=False):
    global indice, dialogo
    if name == "":
        txt = abrirTXT(pedirArchivo())
    else:
        txt = abrirTXT(name)
    if len(txt) == 0:
        print("   no se encontraron datos...")
    else:
        # quitar la cabecera
        while True:
            aux = txt.pop(0)
            if "switch argument0 {" in aux:
                break
        # quitar el final
        while True:
            aux = txt.pop(-1)
            if "default: return \"\";" in aux:
                break
        # preparar datos
        for t in range(len(txt) - 1, -1, -1):
            txt[t] = txt[t].replace("\t", "").replace("\n", "")
            if not("//" in txt[t] or "\"" in txt[t] or "case" in txt[t]):
                txt.pop(t)
            else:
                while txt[t][0] == " ":
                    txt[t] = txt[t][1:]
        # extraer informacion
        for t in txt:
            if "\"" in t:
                if saltos:
                    dialogo[-1] += sinComillas(t)
                else:
                    dialogo[-1] += sinComillas(t).replace("#", " ")
            elif "case " in t:
                # nuevo caso con indice
                indice.append(t[5:-1])
                dialogo.append("")
            elif "// " in t:
                # nota del segmento con descripcion
                indice.append("-1")
                dialogo.append(t[3:])
        print("   datos obtenidos...")

def importTXT():
    print("   archivo de dialogos")
    txt1 = abrirTXT(pedirArchivo())
    print("   archivo de informacion (def config.txt)")
    txt2 = abrirTXT(pedirArchivo())
    if len(txt2) == 0:
        txt2 = abrirTXT("config.txt")
    if len(txt1) == 0 or len(txt2) == 0:
        print("   no se encontraron datos...")
    else:
        procesaImportTXT(txt1, txt2)
        print("   datos obtenidos...")

def procesaImportTXT(txt1, txt2):
    global indice, dialogo
    # preparar datos
    for t in range(len(txt1) - 1, -1, -1):
        txt1[t] = txt1[t].replace("\n", "")
        if txt1[t] == "":
            txt1.pop(t)
    for t in range(len(txt2) - 1, -1, -1):
        txt2[t] = txt2[t].replace("\n", "")
        if txt2[t] == "":
            txt2.pop(t)
    # extraer informacion
    n = 0
    for t in range(len(txt2)):
        if txt2[t][0] == "$":
            indice.append("-1")
            dialogo.append(txt2[t][2:])
        else:
            if n >= len(txt1):
                print("...error lin " + str(n))
                break
            indice.append(txt2[t])
            dialogo.append(txt1[n])
            n += 1

def importCSV():
    global indice, dialogo
    txt = abrirTXT(pedirArchivo("csv"))
    if len(txt) < 2:
        print("   no se encontraron datos...")
    else:
        # preparar datos
        txt.pop(0)
        for t in range(len(txt) - 1, -1, -1):
            txt[t] = txt[t].replace("\n", "")
            if txt[t] == "":
                txt.pop(t)
        # extraer informacion
        for t in txt:
            aux = t.split(";", 1)
            indice.append(aux[0])
            dialogo.append(aux[1])
        print("   datos obtenidos...")

def exportSwitch(name=""):
    global indice, dialogo
    txt = "// arg0: ind de dialogo\n" \
          "// ret: str del dialogo\n\n" \
          "switch argument0 {\n"
    for i in range(len(indice)):
        if indice[i] == "-1":
            txt += "\n\t// {}\n".format(dialogo[i])
        else:
            txt += "\tcase {}:\n\t\treturn \"{}\";\n".format(indice[i], dialogo[i])
    txt += "\n" \
           "\tdefault: return \"\";\n" \
           "}\n"
    if name == "":
        guardarTXT(pedirArchivo(), txt)
        print("   archivo guardado...")
    else:
        guardarTXT(name, txt)

def exportTXT():
    global indice, dialogo
    txt = ""
    for i in range(len(indice)):
        if indice[i] != "-1":
            txt += "{}\n\n".format(dialogo[i])
    if txt != "":
        txt = txt[:-1]
    print("   archivo de dialogos")
    guardarTXT(pedirArchivo(), txt)
    print("   archivo de dialogos guardado...")
    txt = ""
    for i in range(len(indice)):
        if indice[i] == "-1":
            txt += "$ {}\n".format(dialogo[i])
        else:
            txt += "{}\n".format(indice[i])
    print("   archivo de informacion")
    guardarTXT(pedirArchivo(), txt)
    print("   archivo de informacion guardado...")

def exportCSV():
    global indice, dialogo
    txt = "indice;dialogo\n"
    for i in range(len(indice)):
        txt += "{};{}\n".format(indice[i], dialogo[i])
    guardarTXT(pedirArchivo("csv"), txt)
    print("   archivo guardado...")

def pedirArchivo(extension="txt"):
    fff = input("   nombre de archivo ({}): ".format(extension))
    if fff == "":
        fff = "tmp.{}".format(extension)
    elif fff[0] == ".":
        fff = "tmp.{}".format(extension)
    elif not ".{}".format(extension) in fff:
        fff += ".{}".format(extension)
    return fff

def guardarTXT(nombre="tmp.txt", datos=""):
    try:
        fff = open(nombre, "w")
        fff.write(datos)
        fff.close()
    except:
        fff = open(nombre, "w", encoding='utf8')
        fff.write(datos)
        fff.close()

def abrirTXT(nombre=""):
    try:
        try:
            fff = open(nombre, "r")
            txt = fff.readlines()
            fff.close()
        except:
            fff = open(nombre, "r", encoding='utf8')
            txt = fff.readlines()
            fff.close()
        return txt
    except:
        return []

def sinComillas(txt="\"\""):
    res = txt
    while res[0] != "\"":
        res = res[1:]
    res = res[1:]
    while res[-1] != "\"":
        res = res[:-1]
    res = res[:-1]
    return res

def original():
    global dialogo, copia
    if len(copia) != 0:
        dialogo = copia.copy()
        copia = []
        print("   texto original!")

def limpiar():
    global indice, dialogo, copia
    indice = []
    dialogo = []
    copia = []

def ponesaltos():
    global dialogo, copia
    for c in range(len(copia)):
        trm = copia[c]
        dialogo[c] = dialogo[c].replace("...", "|||")
        f = 0
        while f < 20:
            f += 1
            if ".##" in trm:
                for i in [".    ", ".   ", ".  ", ". ", "."]:
                    viej = dialogo[c]
                    dialogo[c] = dialogo[c].replace(i, ".##", 1)
                    if viej != dialogo[c]:
                        break
                trm = trm.replace(".##", "", 1)
            elif ":##" in trm:
                for i in [":    ", ":   ", ":  ", ": ", ":"]:
                    viej = dialogo[c]
                    dialogo[c] = dialogo[c].replace(i, ":##", 1)
                    if viej != dialogo[c]:
                        break
                trm = trm.replace(":##", "", 1)
            elif ".#" in trm:
                for i in [".    ", ".   ", ".  ", ". ", "."]:
                    viej = dialogo[c]
                    dialogo[c] = dialogo[c].replace(i, ".#", 1)
                    if viej != dialogo[c]:
                        break
                trm = trm.replace(".#", "", 1)
            elif ":#" in trm:
                for i in [":    ", ":   ", ":  ", ": ", ":"]:
                    viej = dialogo[c]
                    dialogo[c] = dialogo[c].replace(i, ":#", 1)
                    if viej != dialogo[c]:
                        break
                trm = trm.replace(":#", "", 1)
            else:
                break
        dialogo[c] = dialogo[c].replace("|||", "...")

def convertidor():
    global indice, dialogo, copia
    print("   Requiere:")
    print("   original.txt switch GMS")
    print("   config.txt configuracion de indices")
    print("   ori_*.txt * es idioma indice, varios archivos")
    input("   press Enter...")
    # poner . para bloquear idiomas en idioma
    idioma = ["en", "es", "pt", "de", "ru", "fr", "it", "ar", "fa", "tr", "he",
              ".hi", ".zh", ".ja", ".ko", "zu", ".yo", "sw"]
    limpiar()
    print("...convirtiendo todo...")
    importSwitch("original.txt", True)
    subcopia = dialogo.copy()
    print("...ciclo...")
    for idi in idioma:
        if "." in idi:
            continue
        limpiar()
        txt1 = abrirTXT("ori_" + idi + ".txt")
        if len(txt1) == 0:
            print("...error open " + idi)
            continue
        for t in range(len(txt1)):
            txt1[t] = txt1[t].replace("\"", "")
        txt2 = abrirTXT("config.txt")
        procesaImportTXT(txt1, txt2)
        copia = subcopia.copy()
        ponesaltos()
        exportSwitch("idi_" + idi + ".txt")
        print("..." + idi)
    print("...conversion total...")
    limpiar()

main()
