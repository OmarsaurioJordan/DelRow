gml_pragma("forceinline");
// arg0: str nombre de archivo de log .txt
// arg1: str a guardar

var f = file_text_open_append(argument0);
file_text_write_string(f, argument1);
file_text_writeln(f);
file_text_close(f);

