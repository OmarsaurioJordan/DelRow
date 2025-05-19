gml_pragma("forceinline");
// arg0: id de unidad que se explota

var xx = argument0.x;
var yy = argument0.y;
if !secreto {
    tile_add(dd_explosion, 0, 0, 16, 16, xx - 8, yy - 8, 9500);
}

var list = ds_list_create();
var aux, xua;
with o_movil {
    if rol != m_rol_robot and point_distance(x, y, xx, yy) < visionmed and id != argument0 {
        if rol != m_rol_defensa or random(1) > (vida / s_vida_unidad(id)) * 0.72 {
            ds_list_add(list, id);
        }
    }
}
ds_list_shuffle(list);
var na = 0;
var ne = 0;
for (var i = 0; i < min(ds_list_size(list), m_sim_explotados); i++) {
    xua = ds_list_find_value(list, i);
    if s_es_enemigo(argument0, xua) {
        ne++;
        aux = s_matar_unidad(xua, argument0.zona, true);
        aux.reloj_explo = m_dec_relojexp;
    }
    else {
        na++;
        aux = s_matar_unidad(xua, -1, true);
        aux.reloj_explo = m_dec_relojexp;
    }
}
s_recopila_auto(argument0.zona, 0, ne, na + 1);
ds_list_destroy(list);

if !secreto {
    var tx, ty;
    for (var i = ds_list_size(li_natural) - 1; i >= 0; i--) {
        aux = ds_list_find_value(li_natural, i);
        tx = tile_get_x(aux) + 9;
        ty = tile_get_y(aux) + 27;
        if point_distance(xx, yy, tx, ty) < visionmed {
            tile_add(dd_mininatmal, tile_get_left(aux), 0, 18, 30, tx - 9, ty - 27, -ty);
            tile_delete(aux);
            ds_list_delete(li_natural, i);
        }
    }
}

s_matar_unidad(argument0, -1, true);

