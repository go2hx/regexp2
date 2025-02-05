package stdgo._internal.go.doc.comment;
function _leadingSpace(_s:stdgo.GoString):stdgo.GoString {
        var _i = (0 : stdgo.GoInt);
        while (((_i < (_s.length) : Bool) && (((_s[(_i : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) || (_s[(_i : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            _i++;
        };
        return (_s.__slice__(0, _i) : stdgo.GoString)?.__copy__();
    }
