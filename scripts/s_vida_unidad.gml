gml_pragma("forceinline");
// arg0: id instancia que pregunta
// ret: vida total

var res = m_sim_vidaunit;
with argument0 {
    if rol < 0 {
        switch rol {
            case m_rol_robot: res = m_sim_vidabot; break;
            case m_rol_perro: res = m_sim_vidaperro; break;
            case m_rol_infante: res = m_sim_vidainfante; break;
        }
        break;
    }
    if rol == m_rol_defensa {
        res += m_sim_vidaescudo;
    }
    if !esactiv {
        res -= m_sim_vidainact;
    }
    if enlace != noone {
        if instance_exists(enlace) {
            if enlace.rol == m_rol_erotico {
                res += m_sim_vidaerotico
            }
        }
        else {
            enlace = noone;
        }
    }
}
return res;

