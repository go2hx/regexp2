package stdgo._internal.go.scanner;
function _stripCR(_b:stdgo.Slice<stdgo.GoUInt8>, _comment:Bool):stdgo.Slice<stdgo.GoUInt8> {
        var _c = (new stdgo.Slice<stdgo.GoUInt8>((_b.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _i = (0 : stdgo.GoInt);
        for (_j => _ch in _b) {
            if (((_ch != (13 : stdgo.GoUInt8)) || ((((_comment && (_i > ((("/*" : stdgo.GoString) : stdgo.GoString).length) : Bool) : Bool) && _c[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((42 : stdgo.GoUInt8)) : Bool) && ((_j + (1 : stdgo.GoInt) : stdgo.GoInt) < (_b.length) : Bool) : Bool) && _b[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] == ((47 : stdgo.GoUInt8)) : Bool) : Bool)) {
                _c[(_i : stdgo.GoInt)] = _ch;
                _i++;
            };
        };
        return (_c.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
    }
