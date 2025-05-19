gml_pragma("forceinline");
// arg0: id a limpiar

with o_unidad {
    if enemigo == argument0 {
        enemigo = noone;
    }
    if enlace == argument0 {
        enlace = noone;
    }
    if meta == argument0 {
        meta = noone;
    }
    if rol == m_rol_gobierno {
        for (var g = 0; g < m_sim_seguidores; g++) {
            if seguidor[g] == argument0 {
                seguidor[g] = noone;
                break;
            }
        }
    }
}

