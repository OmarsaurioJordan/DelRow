// arg0: ind de tipo de o_texto
// arg1: true si borrar el contenido
// ret: str con el texto escrito

var res = "";
with o_texto {
    if tipo == argument0 {
        res = texto;
        if argument1 {
            enfoco = false;
            texto = "";
        }
        break;
    }
}
return res;

