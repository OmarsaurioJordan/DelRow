gml_pragma("forceinline");
// arg0: id de unidad que pregunta
// arg1: id de unidad objetivo incognita
// ret: true si es un enemigo

if o_info.continental {
    return argument0.conti != argument1.conti;
}
else {
    return argument0.zona != argument1.zona;
}

