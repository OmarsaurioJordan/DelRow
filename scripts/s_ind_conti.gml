gml_pragma("forceinline");
// arg0: ind de entrada
// arg1: true entra m_conti_, false entra ind numerico
// ret: ind de salida

if argument1 {
    switch argument0 {
        case m_conti_norteamerica: return 0; break;
        case m_conti_sudamerica: return 1; break;
        case m_conti_europa: return 2; break;
        case m_conti_oriente: return 3; break;
        case m_conti_africa: return 4; break;
        case m_conti_oceania: return 5; break;
    }
}
else {
    switch argument0 {
        case 0: return m_conti_norteamerica; break;
        case 1: return m_conti_sudamerica; break;
        case 2: return m_conti_europa; break;
        case 3: return m_conti_oriente; break;
        case 4: return m_conti_africa; break;
        case 5: return m_conti_oceania; break;
    }
}

