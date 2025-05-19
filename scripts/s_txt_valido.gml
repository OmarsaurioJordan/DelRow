// arg0: str a testear
// arg1: mascara de validez
// ret: devuelve lo que sea valido, sino vacio

var res = "";
if argument0 != "" {
    for (var i = 1; i <= string_length(argument0); i++) {
        res += s_char_valido(string_char_at(argument0, i), argument1);
    }
}
return res;

