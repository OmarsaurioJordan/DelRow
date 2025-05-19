// arg0: str del password
// ret: str md5 usando m_clave_md5

var ccc = argument0;
while string_length(ccc) < 10 {
    ccc += "0";
}
var mmm = m_clave_md5;
for (var c = 1; c <= 10; c++) {
    switch c {
        case 1: mmm = string_insert(string_char_at(ccc, c), mmm, 72); break;
        case 2: mmm = string_insert(string_char_at(ccc, c), mmm, 12); break;
        case 3: mmm = string_insert(string_char_at(ccc, c), mmm, 33); break;
        case 4: mmm = string_insert(string_char_at(ccc, c), mmm, 40); break;
        case 5: mmm = string_insert(string_char_at(ccc, c), mmm, 69); break;
        case 6: mmm = string_insert(string_char_at(ccc, c), mmm, 9); break;
        case 7: mmm = string_insert(string_char_at(ccc, c), mmm, 100); break;
        case 8: mmm = string_insert(string_char_at(ccc, c), mmm, 64); break;
        case 9: mmm = string_insert(string_char_at(ccc, c), mmm, 28); break;
        case 10: mmm = string_insert(string_char_at(ccc, c), mmm, 1); break;
    }
}
return md5_string_utf8(argument0 + mmm + m_clave_md5);

