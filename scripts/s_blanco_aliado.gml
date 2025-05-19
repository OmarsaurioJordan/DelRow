gml_pragma("forceinline");
// arg0: id instancia que llama
// arg1: ind rol a filtrar
// arg2: true forzar a buscar
// ret: id aliado encontrado o noone

var res = noone;
if instance_exists(o_unidad) {
    with argument0 {
        if argument2 or random(1) < m_sim_buscally {
            var aux = instance_nearest(x + random_range(-visionmed, visionmed),
                y + random_range(-visionmed, visionmed), o_unidad);
            if !s_es_enemigo(id, aux) and aux != id and aux.rol != argument1 {
                res = aux;
            }
        }
    }
}
return res;

