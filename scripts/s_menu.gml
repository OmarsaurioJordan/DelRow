// arg0: menu al cual se quiere ir, segun ind boton pulsado

o_app.menu = argument0;

// destruir todos los objetos de la GUI
with o_boton {
    instance_destroy();
}
with o_texto {
    instance_destroy();
}

// crear cabecera general de la app
var aux;
for (var i = 0; i < 5; i++) {
    aux = instance_create(100 + i * 125, 50, o_boton);
    aux.tipo = m_bot_perfil + i;
    if aux.tipo == argument0 {
        aux.resaltado = true;
        aux.activo = false;
    }
}

// crear objetos en GUI dependiendo del menu seleccionado
switch argument0 {
    case m_bot_perfil:
        if o_app.usuario_pasword == "" {
            aux = instance_create(350, 450, o_boton);
            aux.tipo = m_bot_login;
            aux = instance_create(350, 275, o_texto);
            aux.tipo = m_txt_login_identifi;
            aux = instance_create(350, 325, o_texto);
            aux.tipo = m_txt_login_pasword;
            aux = instance_create(350, 375, o_texto);
            aux.tipo = m_txt_login_newpas;
            
            aux = instance_create(350, 725, o_texto);
            aux.tipo = m_txt_regi_correo;
            aux = instance_create(350, 800, o_boton);
            aux.tipo = m_bot_registro;
            
            aux = instance_create(450, 1075, o_boton);
            aux.tipo = m_bot_idioma;
            aux = instance_create(450, 1175, o_boton);
            aux.tipo = m_bot_web;
        }
        else {
            aux = instance_create(350, 175, o_texto);
            aux.tipo = m_txt_nombre;
            aux.activo = false;
            
            aux = instance_create(75, 225, o_boton);
            aux.tipo = m_bot_zona_i;
            aux.activo = false;
            aux = instance_create(625, 225, o_boton);
            aux.tipo = m_bot_zona_d;
            aux.activo = false;
            
            s_botoncitolista(0, m_bot_emocion_i, m_bot_emocion_d);
            s_botoncitolista(1, m_bot_genero_i, m_bot_genero_d);
            s_botoncitolista(2, m_bot_piel_i, m_bot_piel_d);
            s_botoncitolista(3, m_bot_pelo_i, m_bot_pelo_d);
            s_botoncitolista(4, m_bot_tinte_i, m_bot_tinte_d);
            s_botoncitolista(5, m_bot_barba_i, m_bot_barba_d);
            s_botoncitolista(6, m_bot_camisa_i, m_bot_camisa_d);
            s_botoncitolista(7, m_bot_pantalon_i, m_bot_pantalon_d);
            s_botoncitolista(8, m_bot_rol_i, m_bot_rol_d);
            s_botoncitolista(9, m_bot_zodiaco_i, m_bot_zodiaco_d);
            
            aux = instance_create(350, 775, o_texto);
            aux.tipo = m_txt_texto;
            aux.activo = false;
            aux.talla = 5;
            
            aux = instance_create(75, 1025, o_boton);
            aux.tipo = m_bot_comport_i;
            aux.activo = false;
            aux = instance_create(625, 1025, o_boton);
            aux.tipo = m_bot_comport_d;
            aux.activo = false;
            
            aux = instance_create(475, 1150, o_boton);
            aux.tipo = m_bot_logout;
            aux = instance_create(600, 1150, o_boton);
            aux.tipo = m_bot_editar;
        }
        break;
    case m_bot_busqueda:
        if o_app.busqueda_nombre == "" {
            aux = instance_create(350, 275, o_texto);
            aux.tipo = m_txt_find;
            
            aux = instance_create(350, 350, o_boton);
            aux.tipo = m_bot_search;
            aux = instance_create(600, 350, o_boton);
            aux.tipo = m_bot_self;
            
            aux = instance_create(75, 625, o_boton);
            aux.tipo = m_bot_zonabus_i;
            aux = instance_create(625, 625, o_boton);
            aux.tipo = m_bot_zonabus_d;
            
            aux = instance_create(75, 675, o_boton);
            aux.tipo = m_bot_contexto;
            aux = instance_create(75, 725, o_boton);
            aux.tipo = m_bot_reciente;
            aux = instance_create(600, 700, o_boton);
            aux.tipo = m_bot_azar;
        }
        else {
            aux = instance_create(350, 175, o_texto);
            aux.tipo = m_txt_nombre;
            aux.activo = false;
            
            aux = instance_create(350, 775, o_texto);
            aux.tipo = m_txt_texto;
            aux.activo = false;
            aux.talla = 5;
            
            aux = instance_create(475, 1150, o_boton);
            aux.tipo = m_bot_rebusqueda;
            aux = instance_create(600, 1150, o_boton);
            aux.tipo = m_bot_foto;
        }
        break;
    case m_bot_zona:
        aux = instance_create(75, 175, o_boton);
        aux.tipo = m_bot_zonaver_i;
        aux = instance_create(625, 175, o_boton);
        aux.tipo = m_bot_zonaver_d;
        
        aux = instance_create(75, 625, o_boton);
        aux.tipo = m_bot_dato_i;
        aux = instance_create(625, 625, o_boton);
        aux.tipo = m_bot_dato_d;
        
        aux = instance_create(600, 1150, o_boton);
        aux.tipo = m_bot_foto;
        aux = instance_create(500, 1150, o_boton);
        aux.tipo = m_bot_export;
        break;
    case m_bot_ayuda:
        aux = instance_create(75, 175, o_boton);
        aux.tipo = m_bot_tema_i;
        aux = instance_create(625, 175, o_boton);
        aux.tipo = m_bot_tema_d;
        break;
    case m_bot_guerra:
        aux = instance_create(75, 275, o_boton);
        aux.tipo = m_bot_zonawar_i;
        aux = instance_create(625, 275, o_boton);
        aux.tipo = m_bot_zonawar_d;
        
        aux = instance_create(100, 1150, o_boton);
        aux.tipo = m_bot_go_test;
        aux = instance_create(200, 1150, o_boton);
        aux.tipo = m_bot_go_pro;
        aux = instance_create(300, 1150, o_boton);
        aux.tipo = m_bot_go_real;
        aux = instance_create(400, 1150, o_boton);
        aux.tipo = m_bot_go_oficial;
        
        aux = instance_create(600, 1150, o_boton);
        aux.tipo = m_bot_foto;
        aux = instance_create(500, 1150, o_boton);
        aux.tipo = m_bot_continental;
        break;
}

// decir que unos botones tienen caja de colision menor
with o_boton {
    switch tipo {
        case m_bot_emocion_i:
        case m_bot_pelo_i:
        case m_bot_tinte_i:
        case m_bot_barba_i:
        case m_bot_piel_i:
        case m_bot_camisa_i:
        case m_bot_pantalon_i:
        case m_bot_genero_i:
        case m_bot_rol_i:
        case m_bot_zodiaco_i:
        case m_bot_zona_i:
        case m_bot_comport_i:
        case m_bot_zonabus_i:
        case m_bot_tema_i:
        case m_bot_zonaver_i:
        case m_bot_dato_i:
        case m_bot_zonawar_i:
        case m_bot_emocion_d:
        case m_bot_pelo_d:
        case m_bot_tinte_d:
        case m_bot_barba_d:
        case m_bot_piel_d:
        case m_bot_camisa_d:
        case m_bot_pantalon_d:
        case m_bot_genero_d:
        case m_bot_rol_d:
        case m_bot_zodiaco_d:
        case m_bot_zona_d:
        case m_bot_comport_d:
        case m_bot_zonabus_d:
        case m_bot_tema_d:
        case m_bot_zonaver_d:
        case m_bot_dato_d:
        case m_bot_zonawar_d:
            colicaja *= 0.5;
            break;
        case m_bot_contexto:
        case m_bot_reciente:
            colicaja *= 0.5;
            break;
    }
}

