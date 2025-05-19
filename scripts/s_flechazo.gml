gml_pragma("forceinline");
// arg0: id unidad quien ataca
// arg1: id unidad atacada
// ret: true si murio

var res = false;
with argument0 {
    var hit = m_sim_hitorre;
    if argument1.fertil == -1 {
        hit *= 2;
    }
    // la capa del enemigo hace de escudo
    if argument1.capa != 0 {
        if argument1.capa >= hit {
            argument1.capa -= hit;
            hit = 0;
        }
        else {
            hit -= argument1.capa;
            argument1.capa = 0;
        }
    }
    // restar valor a la vida y procesar muerte
    argument1.vida = max(0, argument1.vida - hit);
    if argument1.vida == 0 {
        res = true;
        if argument0.object_index == o_carpa {
            s_recopila_auto(zona, 0, 1, 0);
        }
        s_matar_unidad(argument1, zona, true);
    }
}
return res;

