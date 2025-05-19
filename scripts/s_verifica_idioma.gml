// arg0: ind de idioma actual
// ret: true si esta en los aceptados

switch argument0 {
    case "en":
    case "es":
    case "pt":
    case "de":
    case "fr":
    case "it":
    case "tr":
    case "zu":
    case "sw":
    case "ru":
    case "fa":
    case "ar":
    case "he":
        return true;
    default:
        return false;
}

