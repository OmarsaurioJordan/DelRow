gml_pragma("forceinline");
// arg0: pos x donde destruir arbol
// arg1: pos y donde destruir arbol

if !secreto {
    var aux, tx, ty;
    for (var i = ds_list_size(li_natural) - 1; i >= 0; i--) {
        aux = ds_list_find_value(li_natural, i);
        tx = tile_get_x(aux) + 9;
        ty = tile_get_y(aux) + 27;
        if point_distance(argument0, argument1, tx, ty) < 16 {
            tile_delete(aux);
            ds_list_delete(li_natural, i);
        }
    }
}

