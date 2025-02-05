package stdgo._internal.go.token;
function _makeTestSource(_size:stdgo.GoInt, _lines:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
        var _src = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (__4 => _offs in _lines) {
            if ((_offs > (0 : stdgo.GoInt) : Bool)) {
                _src[(_offs - (1 : stdgo.GoInt) : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
            };
        };
        return _src;
    }
