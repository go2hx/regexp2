package stdgo._internal.go.printer;
function _isDirective(_c:stdgo.GoString):Bool {
        if (((stdgo._internal.strings.Strings_hasprefix.hasPrefix(_c?.__copy__(), ("line " : stdgo.GoString)) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_c?.__copy__(), ("extern " : stdgo.GoString)) : Bool) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_c?.__copy__(), ("export " : stdgo.GoString)) : Bool)) {
            return true;
        };
        var _colon = (stdgo._internal.strings.Strings_index.index(_c?.__copy__(), (":" : stdgo.GoString)) : stdgo.GoInt);
        if (((_colon <= (0 : stdgo.GoInt) : Bool) || ((_colon + (1 : stdgo.GoInt) : stdgo.GoInt) >= (_c.length) : Bool) : Bool)) {
            return false;
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i <= (_colon + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                if (_i == (_colon)) {
                    {
                        _i++;
                        continue;
                    };
                };
var _b = (_c[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if (!(((((97 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (122 : stdgo.GoUInt8) : Bool) : Bool) || (((48 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool))) {
                    return false;
                };
                _i++;
            };
        };
        return true;
    }
