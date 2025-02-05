package stdgo._internal.go.build;
function _equal(_x:stdgo.Slice<stdgo.GoString>, _y:stdgo.Slice<stdgo.GoString>):Bool {
        if ((_x.length) != ((_y.length))) {
            return false;
        };
        for (_i => _xi in _x) {
            if (_xi != (_y[(_i : stdgo.GoInt)])) {
                return false;
            };
        };
        return true;
    }
