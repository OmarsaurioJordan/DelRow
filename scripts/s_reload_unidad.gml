gml_pragma("forceinline");
// arg0: id instancia que pregunta
// ret: tiempo de espera entre ataques

var res = m_sim_hitreload + irandom(5);
with argument0 {
    if comida != 0 {
        res -= m_sim_hitrelobonus;
    }
    if movim == -1 {
        res += m_sim_hitreloagua;
    }
}
return res;

