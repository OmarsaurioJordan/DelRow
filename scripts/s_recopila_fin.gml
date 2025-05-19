// $D script de apoyo para testeo, quitarlo

if automatico {
    with o_info {
        est_auto += "A";
        for (var i = 0; i < 3; i++) {
            est_auto += ":" + string(est_valu[0, i]);
        }
        var tot = 0;
        with o_unidad {
            if zona == m_prueba_a {
                tot++;
            }
        }
        est_auto += ":" + string(tot);
        est_auto += " B";
        for (var i = 0; i < 3; i++) {
            est_auto += ":" + string(est_valu[1, i]);
        }
        var tot = 0;
        with o_unidad {
            if zona == m_prueba_b {
                tot++;
            }
        }
        est_auto += ":" + string(tot);
        s_log("automatico.txt", est_auto);
    }
}

