gml_pragma("forceinline");
// arg0: id instancia que llama a hacer su step

with argument0 {
    
    // variables locales al paso
    var movio = false;
    
    // ejecutar relojes de cambio de vida
    if reloj_fin > 0 {
        reloj_fin--;
        if reloj_fin == 0 {
            o_mundo.inst_vivas--;
            instance_destroy();
            exit;
        }
    }
    
    // ejercer poderes especiales
    if reloj_poder > 0 {
        reloj_poder--;
    }
    else {
        reloj_poder = irandom_range(m_sim_relojpowmin, m_sim_relojpowmax);
        // cambios aleatorios diversos
        s_aura_maldicion(id);
    }
    
    // movimientos
    if enemigo != noone {
        if instance_exists(enemigo) {
            movio = movio or s_move_unidad(id, enemigo, m_sim_cerca);
        }
        else {
            enemigo = noone;
        }
    }
    else {
        enemigo = s_blanco_enemigo(id);
    }
    
    // limitar al mundo y verificar si tierra o agua
    if movio {
        s_limit_unidad(id);
    }
}

