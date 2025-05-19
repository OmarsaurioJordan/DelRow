// arg0: numero a procesar
// ret: str del numero con abreviacion

var res = argument0;
if res < 1000 {
    res = string(res);
}
else if res < 1000000 {
    res = string(floor(res / 1000)) + "k";
}
else if res < 1000000000 {
    res = string(floor(res / 1000000)) + "M";
}
else if res < 1000000000000 {
    res = string(floor(res / 1000000000)) + "G";
}
else {
    res = string(floor(res / 1000000000000)) + "T";
}
return res;

