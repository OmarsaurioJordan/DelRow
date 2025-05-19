gml_pragma("forceinline");
// arg0: id instancia que llama
// arg1: true si es aliada
// ret: id carpa encontrada o noone

var res = noone;
if instance_exists(o_carpa) {
    with argument0 {
        var aux = instance_nearest(x, y, o_carpa);
        if argument1 {
            if !s_es_enemigo(id, aux) {
                if point_distance(x, y, aux.x, aux.y) < m_sim_vision {
                    res = aux;
                }
            }
        }
        else {
            if s_es_enemigo(id, aux) {
                if point_distance(x, y, aux.x, aux.y) < m_sim_vision {
                    res = aux;
                }
            }
        }
    }
}
return res;

