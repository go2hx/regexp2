package stdgo._internal.go.types;
function _split(_s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        var _r = stdgo._internal.strings.Strings_split.split(_s?.__copy__(), (" " : stdgo.GoString));
        if ((_r.length) != (_n)) {
            throw stdgo.Go.toInterface((("invalid test case: " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString));
        };
        return _r;
    }
