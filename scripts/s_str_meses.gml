// arg0: str fecha en formato yyyy-mm-dd
// ret: str con mm cambiado de numerico a str

var mm = string_copy(argument0, 6, 2);
return string_replace(argument0, "-" + mm, "-" + s_msj(106 + real(mm)));

