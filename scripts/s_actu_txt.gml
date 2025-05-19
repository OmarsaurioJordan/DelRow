// actualiza los campos de texto segun variables internas

with o_app {
    if menu == m_bot_perfil {
        s_set_texto(m_txt_nombre, usuario_nombre);
        s_set_texto(m_txt_texto, usuario_texto);
    }
    else {
        s_set_texto(m_txt_nombre, busqueda_nombre);
        s_set_texto(m_txt_texto, busqueda_texto);
    }
}

