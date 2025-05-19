// arg0: key del ini, siempre section es gui
// arg1: valor a guardar, puede ser real o str

ini_open("configuracion.ini");
var val = argument1;
if is_real(val) {
    val = string(val);
}
ini_write_string("gui", argument0, val);
ini_close();

