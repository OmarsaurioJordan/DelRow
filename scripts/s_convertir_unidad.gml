gml_pragma("forceinline");
// arg0: id de unidad que convierte
// arg1: id de unidad a ser convertida

if argument1.object_index == o_unidad {
    with argument1 {
        // modificar estadisticas de centro 
        with s_micentro(zona) {
            unit_vivas--;
        }
        // convertir
        s_elimina_varrol(id);
        if rol != m_rol_mafia {
            rol = m_rol_vivir;
        }
        zona = argument0.zona;
        conti = argument0.conti;
        fertil = -1; // no nacido de su nueva zona
        grupo = noone;
        enemigo = noone;
        enlace = noone;
        meta = noone;
        esactiv = false;
        vida = s_vida_unidad(id);
        // modificar estadisticas de centro nuevo
        with s_micentro(zona) {
            unit_vivas++;
        }
        s_recopila_auto(argument0.zona, 0, 0, 1);
    }
    s_limpia_id_unidad(argument1);
}
