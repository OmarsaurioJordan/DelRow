// crea los tiles del fondo y las matrices basicas

with o_mundo {
    
    var fix = false;
    if file_exists("mapa.ini") {
        fix = true;
    }
    
    // estructura para biomas
    bioma = ds_grid_create(gridx + 1, gridy + 1);
    if fix {
        ini_open("mapa.ini");
        ds_grid_read(bioma, ini_read_string("mapa", "bioma", ""));
        ini_close();
        var escx = room_width / 490;
        var escy = room_height / 235;
        var xx, yy;
        for (var w = 0; w < ds_grid_width(bioma); w++) {
            for (var h = 0; h < ds_grid_height(bioma); h++) {
                xx = min(w * m_sim_celda, room_width);
                yy = min(h * m_sim_celda, room_height);
                switch ds_grid_get(bioma, w, h) {
                    case c_white: // nieve
                        tile_add(dd_suelo, 384, 0, 64, 64, xx - 32, yy - 32, 10000);
                        break;
                    case c_aqua: // tundra
                        tile_add(dd_suelo, 320, 0, 64, 64, xx - 32, yy - 32, 10000);
                        break;
                    case c_red: // selva
                        tile_add(dd_suelo, 256, 0, 64, 64, xx - 32, yy - 32, 10000);
                        break;
                    case c_fuchsia: // bosque
                        tile_add(dd_suelo, 192, 0, 64, 64, xx - 32, yy - 32, 10000);
                        break;
                    case c_lime: // llanura
                        tile_add(dd_suelo, 128, 0, 64, 64, xx - 32, yy - 32, 10000);
                        break;
                    case c_yellow: // desierto
                        tile_add(dd_suelo, 64, 0, 64, 64, xx - 32, yy - 32, 10000);
                        break;
                }
            }
        }
    }
    else {
        var mapa = surface_create(490, 235);
        surface_set_target(mapa);
        draw_sprite(d_mapa, 0, 0, 0);
        var escx = room_width / 490;
        var escy = room_height / 235;
        var pix, xx, yy;
        for (var w = 0; w < ds_grid_width(bioma); w++) {
            for (var h = 0; h < ds_grid_height(bioma); h++) {
                xx = min(w * m_sim_celda, room_width);
                yy = min(h * m_sim_celda, room_height);
                pix = surface_getpixel(mapa, xx / escx, yy / escy);
                switch pix {
                    case c_white: // nieve
                        tile_add(dd_suelo, 384, 0, 64, 64, xx - 32, yy - 32, 10000);
                        ds_grid_set(bioma, w, h, c_white);
                        break;
                    case c_aqua: // tundra
                        tile_add(dd_suelo, 320, 0, 64, 64, xx - 32, yy - 32, 10000);
                        ds_grid_set(bioma, w, h, c_aqua);
                        break;
                    case c_red: // selva
                        tile_add(dd_suelo, 256, 0, 64, 64, xx - 32, yy - 32, 10000);
                        ds_grid_set(bioma, w, h, c_red);
                        break;
                    case c_fuchsia: // bosque
                        tile_add(dd_suelo, 192, 0, 64, 64, xx - 32, yy - 32, 10000);
                        ds_grid_set(bioma, w, h, c_fuchsia);
                        break;
                    case c_lime: // llanura
                        tile_add(dd_suelo, 128, 0, 64, 64, xx - 32, yy - 32, 10000);
                        ds_grid_set(bioma, w, h, c_lime);
                        break;
                    case c_yellow: // desierto
                        tile_add(dd_suelo, 64, 0, 64, 64, xx - 32, yy - 32, 10000);
                        ds_grid_set(bioma, w, h, c_yellow);
                        break;
                }
            }
        }
        surface_reset_target();
        surface_free(mapa);
        // guardar
        ini_open("mapa.ini");
        ini_write_string("mapa", "bioma", ds_grid_write(bioma));
        ini_close();
    }
    
    // estructura para suelo y agua
    gr_suelo = ds_grid_create(gridx + 1, gridy + 1);
    if fix {
        ini_open("mapa.ini");
        ds_grid_read(gr_suelo, ini_read_string("mapa", "gr_suelo", ""));
        ini_close();
    }
    else {
        ds_grid_clear(gr_suelo, 1);
        for (var w = 0; w < ds_grid_width(bioma); w++) {
            for (var h = 0; h < ds_grid_height(bioma); h++) {
                if ds_grid_get(bioma, w, h) == c_black {
                    ds_grid_set(gr_suelo, w, h, m_sim_pesoagua);
                }
            }
        }
        ini_open("mapa.ini");
        ini_write_string("mapa", "gr_suelo", ds_grid_write(gr_suelo));
        ini_close();
    }
    
    // estructura para obstaculos
    obstaculo_nat = ds_grid_create(gridx + 1, gridy + 1);
    ds_grid_clear(obstaculo_nat, 0);
    obstaculo_art = ds_grid_create(gridx + 1, gridy + 1);
    ds_grid_clear(obstaculo_art, 0);
    
    // poner los centros y sus edificios asociados, usa obstaculo_art
    s_crea_edificios(!fix);
    
    // arboles al azar segun bioma
    li_natural = ds_list_create();
    if fix {
        var xx, yy, img;
        ini_open("mapa.ini");
        var n = 0;
        while ini_key_exists("arbol", string(n) + "i") {
            xx = real(ini_read_string("arbol", string(n) + "x", "0"));
            yy = real(ini_read_string("arbol", string(n) + "y", "0"));
            img = real(ini_read_string("arbol", string(n) + "i", "0"));
            ds_list_add(li_natural, tile_add(dd_mininatural,
                img * 18, 0, 18, 30, xx - 9, yy - 27, -yy));
            n++;
        }
        ini_close();
    }
    else {
        ini_open("mapa.ini");
        var n = 0;
        var xx, yy, porc, img;
        repeat (room_width * room_height) / power(m_sim_celda, 2) {
            xx = random(room_width);
            yy = random(room_height);
            switch s_grid_get(bioma, xx, yy) {
                case c_white: // nieve
                    img = 6; porc = 0.05; break;
                case c_aqua: // tundra
                    img = 5; porc = 0.1; break;
                case c_red: // selva
                    img = 4; porc = 0.6; break;
                case c_fuchsia: // bosque
                    img = 3; porc = 0.3; break;
                case c_lime: // llanura
                    img = 2; porc = 0.1; break;
                case c_yellow: // desierto
                    img = 1; porc = 0.05; break;
                default: // agua
                    img = 0; porc = 0; break;
            }
            if random(1) < porc and s_grid_get(obstaculo_art, xx, yy) == 0 {
                s_grid_setdisk(obstaculo_art, xx, yy, m_sim_pesoarbol, 8);
                ds_list_add(li_natural, tile_add(dd_mininatural,
                    img * 18, 0, 18, 30, xx - 9, yy - 27, -yy));
                ini_write_string("arbol", string(n) + "x", string(xx));
                ini_write_string("arbol", string(n) + "y", string(yy));
                ini_write_string("arbol", string(n) + "i", string(img));
                n++;
            }
        }
        ds_grid_clear(obstaculo_art, 0);
        ini_close();
    }
    
    // estructura para congestion por unidades
    gr_trafico = ds_grid_create(gridx + 1, gridy + 1);
    ds_grid_clear(gr_trafico, 0);
    
    // calcular las grillas de path-finding, navegacion
    ini_open("mapa.ini");
    if fix {
        with o_centro {
            ds_grid_read(rumbo, ini_read_string("rumbo", "r" + string(zona), ""));
        }
    }
    else {
        s_terreno_nav(true, true, false, false);
        with o_centro {
            s_navegacion(id);
            ini_write_string("rumbo", "r" + string(zona), ds_grid_write(rumbo));
        }
    }
    ini_close();
    
    // crear los centroides
    var aux;
    if o_info.continental {
        var n;
        with o_centro {
            switch zona {
                case m_map_usa:
                case m_map_brazil:
                case m_map_alemania:
                case m_map_china:
                case m_map_congo:
                case m_map_australia:
                    n = 1 + m_sim_groupconti; break;
                default:
                    n = 1; break;
            }
            repeat n {
                aux = instance_create(random(room_width), random(room_height), o_grupo);
                aux.zona = zona;
                aux.conti = conti;
            }
        }
    }
    else {
        with o_centro {
            repeat m_sim_groupszona {
                aux = instance_create(random(room_width), random(room_height), o_grupo);
                aux.zona = zona;
                aux.conti = conti;
            }
        }
    }
}

