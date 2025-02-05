package stdgo._internal.go.doc;
function _removeStar(_s:stdgo.GoString):stdgo.GoString {
        if ((((_s.length) > (0 : stdgo.GoInt) : Bool) && (_s[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
            return (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
