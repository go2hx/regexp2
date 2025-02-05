package stdgo._internal.go.doc.comment;
function _inc(_s:stdgo.GoString):stdgo.GoString {
        var _b = (_s : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = ((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                if ((_b[(_i : stdgo.GoInt)] < (57 : stdgo.GoUInt8) : Bool)) {
                    _b[(_i : stdgo.GoInt)]++;
                    return (_b : stdgo.GoString).__copy__();
                };
_b[(_i : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
                _i--;
            };
        };
        return (("1" : stdgo.GoString) + (_b : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
