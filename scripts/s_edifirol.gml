// pone el rol a cada edificio, puede destruir algunos edificios
// arg0: true si poner rol a edificios
// arg1: true eliminar edificios si no unidades
// arg2: true si dejar edificio en ruinas al eliminar
// arg3: id de centro que se procesa o o_centro para todos

var prior = ds_priority_create();
var priorb = ds_priority_create();
var ledif = ds_list_create();
var lrols = ds_list_create();
var lpeso = ds_list_create();
var yo, vid, nedif, nrols, aux, acu, matprob, m, esco;
with argument3 {
    
    // obtener los edificios ordenados al azar
    yo = id;
    with o_edificio {
        if zona == yo.zona {
            ds_priority_add(prior, id, random(1));
        }
    }
    ds_list_clear(ledif);
    while !ds_priority_empty(prior) {
        ds_list_add(ledif, ds_priority_delete_min(prior));
    }
    nedif = ds_list_size(ledif);
    
    if argument0 { // inicio roles
        
        // obtener los roles segun prioridad
        for (var i = 0; i < m_rol_total; i++) {
            if rol_porcent[i] != 0 {
                ds_priority_add(prior, i, rol_porcent[i]);
                ds_priority_add(priorb, rol_porcent[i], rol_porcent[i]);
            }
        }
        ds_list_clear(lrols);
        ds_list_clear(lpeso);
        while !ds_priority_empty(prior) {
            ds_list_add(lrols, ds_priority_delete_max(prior));
            ds_list_add(lpeso, ds_priority_delete_max(priorb));
        }
        nrols = ds_list_size(lrols);
        
        // asignar rol a cada edificio segun prioridad
        for (var n = 0; n < nedif; n++) {
            acu = 0;
            matprob = noone;
            m = 0;
            for (var i = 0; i < nrols; i++) {
                acu += ds_list_find_value(lpeso, i);
                aux = lerp(0, nedif, acu);
                if floor(aux) >= n {
                    matprob[m, 0] = ds_list_find_value(lrols, i);
                    matprob[m, 1] = min(aux - n, 1);
                    m++;
                    if matprob[m - 1, 1] == 1 {
                        break;
                    }
                }
            }
            if m != 0 {
                aux = random(1);
                for (var r = 0; r < m; r++) {
                    if aux < matprob[r, 1] {
                        aux = ds_list_find_value(ledif, n);
                        aux.rol = matprob[r, 0];
                        break;
                    }
                }
            }
        }
        
    } // fin roles
    
    // eliminar edificios si hay poca vida
    if argument1 and nedif != 0 {
        
        // hallar la vida porcentual del centro
        if resist_tot == 0 {
            vid = 0;
        }
        else {
            vid = resist_act / resist_tot;
        }
        
        // obtener edificios totales originales en el centro
        with o_escombro {
            if zona == yo.zona {
                nedif++;
            }
        }
        
        // eliminar edificios
        while ds_list_size(ledif) / nedif > vid {
            aux = ds_list_find_value(ledif, 0);
            ds_list_delete(ledif, 0);
            with aux {
                if argument2 {
                    esco = instance_create(x, y, o_escombro);
                    esco.zona = zona;
                    esco.conti = conti;
                    esco.rol = rol;
                }
                instance_destroy();
            }
        }
    }
}
ds_priority_destroy(prior);
ds_priority_destroy(priorb);
ds_list_destroy(ledif);
ds_list_destroy(lrols);
ds_list_destroy(lpeso);

