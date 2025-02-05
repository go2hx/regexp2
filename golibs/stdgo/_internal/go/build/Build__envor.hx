package stdgo._internal.go.build;
function _envOr(_name:stdgo.GoString, _def:stdgo.GoString):stdgo.GoString {
        var _s = (stdgo._internal.os.Os_getenv.getenv(_name?.__copy__())?.__copy__() : stdgo.GoString);
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            return _def?.__copy__();
        };
        return _s?.__copy__();
    }
