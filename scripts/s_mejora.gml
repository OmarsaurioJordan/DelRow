gml_pragma("forceinline");
// reconstruye edificios destruidos

var esco = ds_priority_create();
var yo, edif, tot, vid;
with o_centro {
    
    // obtener numero de edificios
    yo = id;
    edif = 0;
    tot = 0;
    with o_edificio {
        if zona == yo.zona {
            edif++;
            tot++;
        }
    }
    
    // obtener numero de escombros e id
    ds_priority_clear(esco);
    with o_escombro {
        if zona == yo.zona {
            ds_priority_add(esco, id, random(1));
            tot++;
        }
    }
    
    // evaluar si revivir uno
    if edif < tot {
        // hallar la vida porcentual del centro
        if resist_tot == 0 {
            vid = 0;
        }
        else {
            vid = resist_act / resist_tot;
        }
        // revivir uno
        if (edif + 1) / tot < vid {
            var xua = ds_priority_find_min(esco);
            var aux = instance_create(xua.x, xua.y, o_edificio);
            aux.zona = xua.zona;
            aux.conti = xua.conti;
            aux.rol = xua.rol;
        }
    }
}
ds_priority_destroy(esco);

