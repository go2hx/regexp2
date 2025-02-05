package stdgo._internal.go.printer;
function _allStars(_text:stdgo.GoString):Bool {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_text.length) : Bool)) {
                if (_text[(_i : stdgo.GoInt)] == ((10 : stdgo.GoUInt8))) {
                    var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    while (((_j < (_text.length) : Bool) && (((_text[(_j : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) || (_text[(_j : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _j++;
                    };
                    if (((_j < (_text.length) : Bool) && (_text[(_j : stdgo.GoInt)] != (42 : stdgo.GoUInt8)) : Bool)) {
                        return false;
                    };
                };
                _i++;
            };
        };
        return true;
    }
