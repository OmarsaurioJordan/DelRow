gml_pragma("forceinline");
// arg0: zona
// arg1: rol
// arg2: comport
// arg3: numero unidades

with o_info {
    info_gen[argument0, m_info_poblacion] += argument3;
    info_gen[argument0, m_info_activos] += argument3;
    info_rolcom[argument0, argument1 * m_comport_total + argument2] += argument3;
}

