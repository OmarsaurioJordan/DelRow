// actualiza la rejilla de navegacion
// arg0: true si recalcular los obstaculos naturales
// arg1: true si recalcular los obstaculos artificiales
// arg2: true si calcular trafico por unidades
// arg3: true si forzar limpieza de obstaculos (normalmente false)

with o_mundo {
    var aux;
    
    // forzar limpieza
    if argument3 {
        ds_grid_clear(obstaculo_nat, 0);
        ds_grid_clear(obstaculo_art, 0);
    }
    
    // recalcular los obstaculos naturales
    if argument0 {
        ds_grid_clear(obstaculo_nat, 0);
        for (var i = 0; i < ds_list_size(li_natural); i++) {
            aux = ds_list_find_value(li_natural, i);
            s_grid_setdisk(obstaculo_nat,
                tile_get_x(aux) + 9, tile_get_y(aux) + 27,
                m_sim_pesoarbol, 8);
        }
    }
    
    // recalcular los obstaculos artificiales
    if argument1 {
        ds_grid_clear(obstaculo_art, 0);
        with o_edificio {
            s_grid_setdisk(obstaculo_art, x, y, 1, m_sim_vision);
        }
        with o_edificio {
            s_grid_setdisk(obstaculo_art, x, y, m_sim_pesoedif, 12);
        }
        with o_centro {
            s_grid_setdisk(obstaculo_art, x, y, m_sim_pesoedif, 16);
        }
    }
    
    // juntar las rejillas
    ds_grid_copy(gr_trafico, gr_suelo);
    ds_grid_add_grid_region(gr_trafico, obstaculo_nat, 0, 0, gridx, gridy, 0, 0);
    ds_grid_add_grid_region(gr_trafico, obstaculo_art, 0, 0, gridx, gridy, 0, 0);
    
    // calcular el trafico por unidades
    if argument2 {
        with o_unidad {
            s_grid_add(gr_trafico, x, y, 1);
        }
    }
}

