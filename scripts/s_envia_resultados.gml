// cuando es secreto y oficial envia http

var txt = "";
if o_info.continental {
    var yo, caz, ase, conq, mifin, dispo, total, vid, pntj;
    var maxas = 0;
    with o_centro {
        maxas = max(maxas, estad_asedio + 1);
    }
    maxas *= 4;
    for (var i = 0; i < m_conti_total; i++) {
        caz = 0; ase = 0; conq = 0; mifin = 0; dispo = 0; total = 0; vid = 0; pntj = 0;
        with o_centro {
            if i == s_contivec(conti) {
                caz += estad_cazados;
                ase += estad_asedio;
                conq += estad_asedio / maxas;
                yo = zona;
                with o_centro {
                    if estad_killer == yo {
                        conq++;
                    }
                }
                if estad_mifin == -1 {
                    if unit_total != 0 {
                        mifin += (m_sim_limite_s + resist_act) * room_speed;
                    }
                }
                else {
                    mifin += estad_mifin;
                }
                dispo += s_units_disp(id);
                total += unit_total;
                vid += resist_act;
                pntj += s_puntaje(id);
            }
        }
        txt += "|" + string(100 + s_micontivec(yo));
        txt += ";" + string(caz);
        txt += ";" + string(ase);
        txt += ";" + string(conq);
        txt += ";" + string(mifin);
        txt += ";" + string(dispo);
        txt += ";" + string(total);
        txt += ";" + string(vid);
        txt += ";" + string(pntj);
    }
}
else {
    var yo, cen, conq;
    var maxas = 0;
    with o_centro {
        maxas = max(maxas, estad_asedio + 1);
    }
    for (var i = 0; i < m_map_total; i++) {
        txt += "|" + string(i);
        cen = s_micentro(i);
        with cen {
            txt += ";" + string(estad_cazados);
            txt += ";" + string(estad_asedio);
            conq = estad_asedio / maxas;
            yo = zona;
            with o_centro {
                if estad_killer == yo {
                    conq++;
                }
            }
            txt += ";" + string(conq);
            if estad_mifin == -1 {
                if unit_total == 0 {
                    txt += ";0";
                }
                else {
                    txt += ";" + string((m_sim_limite_s + resist_act) * room_speed);
                }
            }
            else {
                txt += ";" + string(estad_mifin);
            }
            txt += ";" + string(s_units_disp(id));
            txt += ";" + string(unit_total);
            txt += ";" + string(resist_act);
            txt += ";" + string(s_puntaje(id));
        }
    }
}
http_get(m_servidor + m_clave_web + "|simula" + txt);

