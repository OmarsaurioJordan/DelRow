gml_pragma("forceinline");
// arg0: id instancia que llama a hacer su step

with argument0 {
    
    // variables locales al paso
    var movio = false;
    var verifienemi = 0; // 0:noverifi, 1:verififalse, 2:verifitrue
    
    // colisiones y rebote
    if random(1) < m_sim_probcoli {
        var otro = instance_place(x, y, o_objeto);
        if otro != noone {
            var d = point_direction(otro.x, otro.y, x, y);
            var v = s_vel_unidad(id);
            x += lengthdir_x(v, d);
            y += lengthdir_y(v, d);
            movio = true;
            if object_get_parent(otro.object_index) == o_movil {
                v = s_vel_unidad(otro);
                otro.x += lengthdir_x(v, -d);
                otro.y += lengthdir_y(v, -d);
                s_limit_unidad(otro);
            }
        }
    }
    
    // ejecutar relojes de cambio de vida
    if reloj_fin > 0 {
        reloj_fin--;
        if reloj_fin == 0 {
            o_mundo.inst_total--;
            var aux = s_crea_unidad(x, y, m_rol_vivir,
                savecomport, 0.5, zona, false, -1);
            if o_mundo.enmira == id {
                o_mundo.enmira = aux;
            }
            s_recopila_auto(zona, 0, 0, 1);
            s_matar_unidad(id, -1, false);
            exit;
        }
    }
    
    // comportamiento hogar, defensa
    if meta != noone {
        if meta.resist_act == 0 {
            meta = noone;
        }
        else {
            movio = movio or s_camino_unidad(id, meta, visioncuar);
        }
    }
    else {
        s_mimeta(id, false);
    }
    
    // limitar al mundo y verificar si tierra o agua
    if movio {
        s_limit_unidad(id);
        if s_grid_get(gr_suelo, x, y) == 1 {
            movim = 0;
        }
        else {
            movim = -1;
        }
    }
}

