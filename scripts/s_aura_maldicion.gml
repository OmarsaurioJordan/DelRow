gml_pragma("forceinline");
// arg0: id unidad que maldice, fantasma

var xx = argument0.x;
var yy = argument0.y;
var list = ds_list_create();
with o_unidad {
    if rol != m_rol_magia and s_es_enemigo(argument0, id) and
            !s_amante_unidad(id) {
        if point_distance(x, y, xx, yy) < m_sim_vision {
            ds_list_add(list, id);
        }
    }
}
ds_list_shuffle(list);
var m = min(m_sim_aura, ds_list_size(list));
for (var i = 0; i < m; i++) {
    xx = ds_list_find_value(list, 0);
    xx.suerte = max(xx.suerte - 1, -1)
}
ds_list_destroy(list);
s_recopila_auto(argument0.zona, 0, 0, m);

