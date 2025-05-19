// arg0: str de supuesto correo
// ret: true si parece ser un correo

var res = false;
if string_length(argument0) >= 3 {
    if string_count("@", argument0) == 1 {
        if string_char_at(argument0, 1) != "@" {
            if string_char_at(argument0, string_length(argument0)) != "@" {
                res = true;
            }
        }
    }
}
return res;

