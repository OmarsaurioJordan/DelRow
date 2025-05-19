// ret: true si esta en modo edicion

var res = false;
with o_texto {
    if tipo == m_txt_texto {
        res = activo;
        break;
    }
}
return res;

