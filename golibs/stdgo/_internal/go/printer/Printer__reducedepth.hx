package stdgo._internal.go.printer;
function _reduceDepth(_depth:stdgo.GoInt):stdgo.GoInt {
        _depth--;
        if ((_depth < (1 : stdgo.GoInt) : Bool)) {
            _depth = (1 : stdgo.GoInt);
        };
        return _depth;
    }
