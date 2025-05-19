gml_pragma("forceinline");
// arg0: id de carpa que llama a hacer su step

with argument0 {
    
    if rol == m_rol_defensa {
        // golpear enemigos
        if reloj_hit > 0 {
            reloj_hit--;
        }
        else {
            reloj_hit = m_sim_hitreload + (m_sim_hitrelocarpa * 2) + irandom(5);
            // buscar enemigo y confirmarlo
            var ene = s_blanco_detorre(id);
            if ene != noone {
                s_flechazo(id, ene);
            }
        }
    }
}

