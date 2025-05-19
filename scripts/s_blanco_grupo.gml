gml_pragma("forceinline");
// arg0: id instancia que quiere encontrar centroide grupo para que sea meta

// obtener centroides aliados segun cercania a su propio centro
var mend = ds_priority_create();
var mc, xx;
with o_grupo {
    if !s_es_enemigo(argument0, id) {
        mc = s_micentro(zona);
        xx = abs(x - mc.x);
        if xx > widthmed {
            ds_priority_add(mend, id, point_distance(0, y, room_width - xx, mc.y));
        }
        else {
            ds_priority_add(mend, id, point_distance(x, y, mc.x, mc.y));
        }
    }
}

// eliminar centroides mas cercanos a su propio centro
if s_micentro(argument0.zona).resist_act != 0 {
    if o_info.continental {
        switch s_micontinente(argument0.zona) {
            case m_conti_europa:
                repeat 4 { ds_priority_delete_min(mend); } break;
            case m_conti_oceania:
                repeat 1 { ds_priority_delete_min(mend); } break;
            default:
                repeat 3 { ds_priority_delete_min(mend); } break;
        }
    }
    else {
        ds_priority_delete_min(mend);
    }
}

// obtener centroides de resultado previo segun cercania a unidad
var maxd = ds_priority_create();
var xx = argument0.x;
var yy = argument0.y;
while !ds_priority_empty(mend) {
    mc = ds_priority_delete_min(mend);
    ds_priority_add(maxd, mc, point_distance(xx, yy, mc.x, mc.y));
}

// asignar el centroide mas cercano
argument0.meta = ds_priority_delete_min(maxd);

// limpiar memoria
ds_priority_destroy(maxd);
ds_priority_destroy(mend);

