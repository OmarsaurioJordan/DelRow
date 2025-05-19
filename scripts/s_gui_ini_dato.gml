// arg0: key del ini, siempre section es gui
// arg1: valor por defecto, puede ser real o str
// ret: valor del ini, segun tipo de arg1

ini_open("configuracion.ini");
var def = argument1;
if is_real(def) {
    def = string(def);
}
var res = ini_read_string("gui", argument0, def);
ini_close();
if is_real(argument1) {
    res = real(res);
}
return res;

