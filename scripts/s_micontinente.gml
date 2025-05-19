gml_pragma("forceinline");
// arg0: ind de zona inferior
// res: ind de zona continental

switch argument0 {
    case m_map_canada:
    case m_map_usa:
    case m_map_mexico:
        return m_conti_norteamerica; break;
    case m_map_colombia:
    case m_map_brazil:
    case m_map_argentina:
        return m_conti_sudamerica; break;
    case m_map_castilla:
    case m_map_inglaterra:
    case m_map_alemania:
    case m_map_rusia:
        return m_conti_europa; break;
    case m_map_arabia:
    case m_map_india:
    case m_map_china:
        return m_conti_oriente; break;
    case m_map_egipto:
    case m_map_congo:
    case m_map_sudafrica:
        return m_conti_africa; break;
    case m_map_australia:
        return m_conti_oceania; break;
    default:
        return -1; break;
}

