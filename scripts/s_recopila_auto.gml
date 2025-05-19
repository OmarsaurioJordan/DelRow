gml_pragma("forceinline");
// $D script de apoyo para testeo, quitarlo
// arg0: ind de zona que actuo
// arg1: int muertes a sumar
// arg2: int poder usado a sumar
// arg3: int cosa extra etc

if automatico {
    with o_info {
        if argument0 == m_prueba_a {
            est_valu[0, 0] += argument1;
            est_valu[0, 1] += argument2;
            est_valu[0, 2] += argument3;
        }
        else if argument0 == m_prueba_b {
            est_valu[1, 0] += argument1;
            est_valu[1, 1] += argument2;
            est_valu[1, 2] += argument3;
        }
    }
}

