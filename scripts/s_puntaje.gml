gml_pragma("forceinline");
// arg0: id centro que pregunta
// ret: numero de puntaje tecnico

with argument0 {
    return estad_asedio * 0.1 + estad_cazados + resist_act * 0.5 + s_units_disp(id) * 4;;
}

