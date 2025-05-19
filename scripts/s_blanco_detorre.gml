gml_pragma("forceinline");
// arg0: id instancia que llama
// ret: id enemigo encontrado o noone

var res = noone;
if instance_exists(o_movil) {
    with argument0 {
        var aux = instance_nearest(x + random_range(-visionmed, visionmed),
            y + random_range(-visionmed, visionmed), o_movil);
        if s_es_enemigo(id, aux) and point_distance(x, y, aux.x, aux.y) < m_sim_vision {
            res = aux;
        }
    }
}
return res;

