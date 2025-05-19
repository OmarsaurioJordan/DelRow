// arg0: true va a la derecha, false a la izquierda
// evita que genero femenino tenga barba
// evita que genero masculino tenga ciertos pelos

with o_app {
    if usuario_genero == 0 {
        usuario_barba = 0;
        var p;
        do {
            p = true;
            switch usuario_pelo {
                // pelos prohibidos para mujer
                case 46: case 45:
                    p = false; break;
            }
            if !p {
                if argument0 {
                    usuario_pelo++;
                    if usuario_pelo > sprite_get_number(d_pelo) - 1 {
                        usuario_pelo = 0;
                    }
                }
                else {
                    usuario_pelo--;
                    if usuario_pelo < 0 {
                        usuario_pelo = sprite_get_number(d_pelo) - 1
                    }
                }
            }
        }
        until p;
    }
    else {
        var p;
        do {
            p = true;
            switch usuario_pelo {
                // pelos prohibidos para hombre
                case 12: case 30: case 35: case 44: case 62: case 72:
                case 22: case 28: case 36:
                    p = false; break;
            }
            if !p {
                if argument0 {
                    usuario_pelo++;
                    if usuario_pelo > sprite_get_number(d_pelo) - 1 {
                        usuario_pelo = 0;
                    }
                }
                else {
                    usuario_pelo--;
                    if usuario_pelo < 0 {
                        usuario_pelo = sprite_get_number(d_pelo) - 1
                    }
                }
            }
        }
        until p;
    }
}

