// arg0: ind de idioma actual
// ret: ind de nuevo idioma

switch argument0 {
    case "en":
        return "pt";
    case "pt":
        return "de";
    case "de":
        return "ru";
    case "ru":
        return "fr";
    case "fr":
        return "it";
    case "it":
        return "ar";
    case "ar":
        return "fa";
    case "fa":
        return "tr";
    case "tr":
        return "he";
    case "he":
        return "hi";
    case "hi":
        return "zh";
    case "zh":
        return "ja";
    case "ja":
        return "ko";
    case "ko":
        return "zu";
    case "zu":
        return "yo";
    case "yo":
        return "sw";
    case "sw":
        return "es";
    default:
        return "en";
}

