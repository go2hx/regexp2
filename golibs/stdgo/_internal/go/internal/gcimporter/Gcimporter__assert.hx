package stdgo._internal.go.internal.gcimporter;
function _assert(_b:Bool):Void {
        if (!_b) {
            throw stdgo.Go.toInterface(("assertion failed" : stdgo.GoString));
        };
    }
