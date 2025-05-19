// arg0: ind de idioma actual, para poner fuente

switch argument0 {
    case "fa":
    case "ar":
    case "he":
        draw_set_font(d_raras); break;
    case "ru":
        draw_set_font(d_ruso); break;
    case "de":
    case "fr":
    case "zu":
    case "it":
        draw_set_font(d_letricas); break;
    default:
        draw_set_font(d_letras); break;
}

