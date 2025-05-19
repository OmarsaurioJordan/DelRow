gml_pragma("forceinline");
// arg0: id de carpa que llama a hacer su step

with argument0 {
    
    // golpear enemigos
    if reloj_hit > 0 {
        reloj_hit--;
    }
    else {
        reloj_hit = lerp(m_sim_hitreload + m_sim_hitrelocarpa, m_sim_hitreload,
            (aporte - 1) / (m_sim_carpaaport - 1)) + irandom(5);
        // buscar enemigo y confirmarlo
        var ene = s_blanco_detorre(id);
        if ene != noone {
            s_flechazo(id, ene);
        }
    }
}

