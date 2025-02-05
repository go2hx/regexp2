package stdgo._internal.go.parser;
function _assert(_cond:Bool, _msg:stdgo.GoString):Void {
        if (!_cond) {
            throw stdgo.Go.toInterface((("go/parser internal error: " : stdgo.GoString) + _msg?.__copy__() : stdgo.GoString));
        };
    }
