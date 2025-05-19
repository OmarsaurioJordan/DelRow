// arg0: ind de dialogo
// ret: str del dialogo

switch o_app.idioma {
    case "es":
        return s_spanish(argument0);
    case "pt":
        return s_portuguese(argument0);
    case "de":
        return s_german(argument0);
    case "ru":
        return s_russian(argument0);
    case "fr":
        return s_french(argument0);
    case "it":
        return s_italian(argument0);
    case "ar":
        return s_arabian(argument0);
    case "fa":
        return s_persian(argument0);
    case "tr":
        return s_turkish(argument0);
    case "he":
        return s_hebrew(argument0);
    case "hi":
        return s_hindi(argument0);
    case "zh":
        return s_chinese(argument0);
    case "ja":
        return s_japanese(argument0);
    case "ko":
        return s_korean(argument0);
    case "zu":
        return s_zulu(argument0);
    case "yo":
        return s_yoruba(argument0);
    case "sw":
        return s_swahili(argument0);
    default:
        return s_english(argument0);
}

