gml_pragma("forceinline");
// arg0: id instancia que pregunta
// ret: velocidad

var res = 0;
with argument0 {
    switch movim {
        case -1: res = m_sim_velagua; break;
        case 0: res = m_sim_velsuelo; break;
        default: res = m_sim_velaire; break;
    }
    if rol == m_rol_deporte {
        res += m_sim_veldeport;
    }
    else if rol == m_rol_gobierno {
        res -= m_sim_velgobi;
    }
    if enemigo != noone {
        res += m_sim_velfuria;
    }
}
return res;

