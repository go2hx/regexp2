package stdgo._internal.go.build;
function _safeCgoName(_s:stdgo.GoString):Bool {
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            return false;
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                {
                    var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (((_c < (128 : stdgo.GoUInt8) : Bool) && (stdgo._internal.strings.Strings_indexbyte.indexByte(("+-.,/0123456789=ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz:$@%! ~^" : stdgo.GoString), _c) < (0 : stdgo.GoInt) : Bool) : Bool)) {
                        return false;
                    };
                };
                _i++;
            };
        };
        return true;
    }
