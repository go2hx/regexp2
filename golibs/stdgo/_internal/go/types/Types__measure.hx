package stdgo._internal.go.types;
function _measure(_x:stdgo.GoInt, _unit:stdgo.GoString):stdgo.GoString {
        if (_x != ((1 : stdgo.GoInt))) {
            _unit = (_unit + (("s" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_unit))?.__copy__();
    }
