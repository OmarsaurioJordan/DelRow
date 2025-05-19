gml_pragma("forceinline");
// arg0: id instancia que llama
// arg1: true forzar a buscar
// ret: id aliado encontrado o noone

var res = noone;
if instance_exists(o_robot) {
    with argument0 {
        if argument1 or random(1) < m_sim_buscally {
            var aux = instance_nearest(x + random_range(-visionmed, visionmed),
                y + random_range(-visionmed, visionmed), o_robot);
            if !s_es_enemigo(id, aux) and
                    point_distance(x, y, aux.x, aux.y) < m_sim_vision {
                res = aux;
            }
        }
    }
}
return res;

