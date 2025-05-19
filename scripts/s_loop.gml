gml_pragma("forceinline");
// ciclo principal de toda la simulacion

var rep = o_mundo.velsim;
if rep < 1 {
    if random(1) < rep {
        rep = 1;
    }
    else {
        rep = 0;
    }
}
var lim = m_sim_limite_s;
if automatico {
    lim = 300;
}
repeat rep {
    if o_mundo.reloj_simula < lim * room_speed {
        with o_centro {
            s_ia_centro(id);
        }
        with o_unidad {
            s_ia_unidad(id);
        }
        with o_robot {
            s_ia_robot(id);
        }
        with o_perro {
            s_ia_perro(id);
        }
        with o_infante {
            s_ia_infante(id);
        }
        with o_fantasma {
            s_ia_fantasma(id);
        }
        with o_carpa {
            s_ia_carpa(id);
        }
        with o_edificio {
            s_ia_edificio(id);
        }
        with o_muerto {
            s_ia_muerto(id);
        }
        with o_carpafin {
            s_ia_carpafin(id);
        }
        o_mundo.reloj_simula++;
    }
    else {
        // $D envio de log de resultados automaticos
        if automatico {
            s_recopila_fin();
            s_log("end.txt", "...");
            game_end();
            exit;
        }
        else if o_info.oficial and secreto {
            s_envia_resultados();
            s_log("tmp.txt", "restart");
            room_goto(w_app);
            exit;
        }
        break;
    }
}
s_ahorrografico();

