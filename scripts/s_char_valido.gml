// arg0: caracter a testear
// arg1: mascara de validez
// ret: devuelve el caracter si es valido, sino vacio

var res = "";
switch argument1 {
    case m_msk_nombre:
        if string_count(argument0, m_char_letra + m_char_digit) != 0 {
            res = argument0;
        }
        break;
    case m_msk_correo:
        if string_count(argument0, m_char_letra + m_char_digit + m_char_mail) != 0 {
            res = argument0;
        }
        break;
    default:
        if string_count(argument0, m_char_todo + ";") != 0 {
            res = argument0;
        }
        break;
}
// bloquear caracteres prohibidos
if res != "" and string_count(res, m_char_prohibido) != 0 {
    res = "";
}
return res;

