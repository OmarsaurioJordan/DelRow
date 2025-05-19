gml_pragma("forceinline");
// arg0: id instancia que pregunta
// ret: ataque

var res = m_sim_hitbasic;
with argument0 {
    switch rol {
        case m_rol_milicia:
            res += m_sim_hitguerrero;
            break;
        case m_rol_deporte:
            if fertil == 1 {
                fertil = 0;
                res += m_sim_hitdeport;
            }
            break;
        case m_rol_robot:
        case m_rol_infante:
            res = 0;
            break;
        case m_rol_perro:
            res -= m_sim_hitperro;
            break;
    }
    if rol >= 0 {
        if arma {
            res += m_sim_hitarma;
        }
        if enlace != noone {
            if instance_exists(enlace) {
                if enlace.rol == m_rol_erotico {
                    res += m_sim_hiterotico
                }
            }
            else {
                enlace = noone;
            }
        }
        if suerte != 0 {
            res += irandom_range(min(0, suerte),
                max(0, suerte)) * m_sim_hitdado;
        }
    }
}
if res > 1 {
    res += irandom_range(-1, 1);
}
return res;

