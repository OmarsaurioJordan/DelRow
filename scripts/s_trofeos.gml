// calcula las posiciones de los resultados de guerra

var podio = ds_priority_create();
var trof, gana, meda, ante, new;
with o_app {
    
    // calcular para zonas
    for (var r = 0; r < m_res_total; r++) {
        for (var i = 0; i < m_map_total; i++) {
            ds_priority_add(podio, i, info_result[i, r]);
        }
        trof = noone;
        meda = 1;
        ante = -1;
        while !ds_priority_empty(podio) {
            gana = ds_priority_find_max(podio);
            new = ds_priority_find_priority(podio, gana);
            ds_priority_delete_max(podio);
            if new != ante {
                meda++;
            }
            info_trofeo[gana, r] = meda;
            ante = new;
        }
    }
    
    // calcular para continentes
    for (var r = 0; r < m_res_total; r++) {
        for (var i = m_map_total; i < m_map_total + m_conti_total; i++) {
            ds_priority_add(podio, i, info_result[i, r]);
        }
        trof = noone;
        meda = 1;
        ante = -1;
        while !ds_priority_empty(podio) {
            gana = ds_priority_find_max(podio);
            new = ds_priority_find_priority(podio, gana);
            ds_priority_delete_max(podio);
            if new != ante {
                meda++;
            }
            info_trofeo[gana, r] = meda;
            ante = new;
        }
    }
}
ds_priority_destroy(podio);

