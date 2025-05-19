gml_pragma("forceinline");
// arg0: ind de zona o continente
// arg1: true si es zona
// ret: ind para mini nombre en idioma

if argument1 {
    return 900 + argument0;
}
else {
    switch argument0 {
        case m_conti_norteamerica: return 917; break;
        case m_conti_sudamerica: return 918; break;
        case m_conti_europa: return 919; break;
        case m_conti_oriente: return 920; break;
        case m_conti_africa: return 921; break;
        case m_conti_oceania: return 916; break;
    }
}

