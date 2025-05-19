gml_pragma("forceinline");
// arg0: id del centro que pregunta
// ret: numero de unidades disponibles

with argument0 {
    if resist_act != 0 {
        return unit_vivas + (unit_total - unit_evoke);
    }
    else {
        return unit_vivas;
    }
}

