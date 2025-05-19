gml_pragma("forceinline");
// arg0: id instancia que llama
// ret: id enemigo encontrado o noone

var res = noone;
if instance_exists(o_movil) {
    with argument0 {
        var az = random(1);
        if az < m_sim_buscaenemy or (enemigo == noone and az < m_sim_buscaenemz) {
            var aux = instance_nearest(x + random_range(-visionmed, visionmed),
                y + random_range(-visionmed, visionmed), o_movil);
            if s_es_enemigo(id, aux) {
                res = aux;
            }
        }
    }
}
return res;

