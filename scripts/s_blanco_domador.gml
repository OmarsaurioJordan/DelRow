gml_pragma("forceinline");
// arg0: id instancia que llama, perro
// arg1: true forzar a buscar
// arg2: rol a buscar
// ret: id aliado encontrado o noone

var res = noone;
if argument1 or random(1) < m_sim_buscally {
    var list = ds_priority_create();
    var xx = argument0.x;
    var yy = argument0.y;
    var f = 0;
    var d;
    with o_unidad {
        if rol == argument2 and !s_es_enemigo(argument0, id) {
            d = point_distance(x, y, xx, yy);
            if d < m_sim_olfato {
                ds_priority_add(list, id, d);
                f++;
                if f == 10 { // freno para no buscar mucho
                    break;
                }
            }
        }
    }
    if f != 0 {
        res = ds_priority_find_min(list);
    }
    ds_priority_destroy(list);
}
return res;

