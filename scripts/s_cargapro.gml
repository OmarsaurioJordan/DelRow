// pide txt con datos personalizados, los carga en info
// ret: true si valido, para ir a simular

var res = false;
var f = get_open_filename("TXT|*.txt", "");
if f != "" { with o_info {
    var aux, tot;
    var fff = file_text_open_read(f);
    file_text_readln(fff);
    file_text_readln(fff);
    file_text_readln(fff);
    file_text_readln(fff);
    // leer informacion general
    for (var i = 0; i < m_map_total; i++) {
        aux = s_split(file_text_read_string(fff), ",", false);
        file_text_readln(fff);
        info_gen[i, m_info_poblacion] = real(aux[0]); // inutil
        info_gen[i, m_info_activos] = real(aux[1]);
        info_gen[i, m_info_feminas] = real(aux[2]); // no importa en simulacion
    }
    file_text_readln(fff);
    // limpiar roles
    for (var i = 0; i < m_map_total; i++) {
        for (var k = 0; k < m_rol_total * m_comport_total; k++) {
            info_rolcom[i, k] = 0;
        }
    }
    // leer roles especificos
    for (var i = 0; i < m_map_total; i++) {
        tot = 0;
        aux = s_split(file_text_read_string(fff), ",", false);
        file_text_readln(fff);
        for (var r = 0; r < m_rol_total; r++) {
            tot += real(aux[r]);
            repeat real(aux[r]) {
                info_rolcom[i, irandom(m_comport_total - 1)]++;
            }
        }
        info_gen[i, m_info_poblacion] = tot;
        info_gen[i, m_info_activos] = min(info_gen[i, m_info_activos], tot);
    }
    file_text_close(fff);
    res = true;
} }
return res;

