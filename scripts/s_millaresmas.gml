// arg0: numero a procesar
// arg1: str del numero con abreviacion y decimales

var res = argument0;
if res < 1000 {
    res = string(res);
}
else if res < 1000000 {
    res = string(res / 1000) + "k";
}
else if res < 1000000000 {
    res = string(res / 1000000) + "M";
}
else if res < 1000000000000 {
    res = string(res / 1000000000) + "G";
}
else {
    res = string(res / 1000000000000) + "T";
}
return res;

