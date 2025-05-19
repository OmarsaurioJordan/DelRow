// arg0: numero de segundos
// ret: str formato minutos y segundos

var ss = argument0;
var mm = ss / 60;
ss = floor(frac(mm) * 60);
mm = floor(mm);
if mm < 10 {
    if ss < 10 {
        return "0" + string(mm) + ":0" + string(ss);
    }
    else {
        return "0" + string(mm) + ":" + string(ss);
    }
}
else {
    if ss < 10 {
        return string(mm) + ":0" + string(ss);
    }
    else {
        return string(mm) + ":" + string(ss);
    }
}

