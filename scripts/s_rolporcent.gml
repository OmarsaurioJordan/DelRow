gml_pragma("forceinline");
// arg0: id de centro que reajusta sus porcentajes de roles

with argument0 {
    var tot = unit_total - unit_evoke;
    if tot == 0 {
        for (var i = 0; i < m_rol_total; i++) {
            rol_porcent[i] = 0;
        }
    }
    else {
        for (var i = 0; i < m_rol_total; i++) {
            rol_porcent[i] = 0;
            for (var k = 0; k < m_comport_total; k++) {
                rol_porcent[i] += unit_info[i, k];
            }
            rol_porcent[i] /= tot;
        }
    }
}

