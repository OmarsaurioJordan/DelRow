gml_pragma("forceinline");
// arg0: ind de zona continental
// res: ind de vector ordenado de continentes

switch argument0 {
    case m_conti_norteamerica:
        return 0; break;
    case m_conti_sudamerica:
        return 1; break;
    case m_conti_europa:
        return 2; break;
    case m_conti_oriente:
        return 3; break;
    case m_conti_africa:
        return 4; break;
    case m_conti_oceania:
        return 5; break;
    default:
        return -1; break;
}

