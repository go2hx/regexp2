package stdgo._internal.go.printer;
function _lineAt(_text:stdgo.Slice<stdgo.GoUInt8>, _offs:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        var _i = (_offs : stdgo.GoInt);
        while (((_i < (_text.length) : Bool) && (_text[(_i : stdgo.GoInt)] != (10 : stdgo.GoUInt8)) : Bool)) {
            _i++;
        };
        return (_text.__slice__(_offs, _i) : stdgo.Slice<stdgo.GoUInt8>);
    }
