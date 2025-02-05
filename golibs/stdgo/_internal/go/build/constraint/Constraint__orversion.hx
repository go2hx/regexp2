package stdgo._internal.go.build.constraint;
function _orVersion(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        if ((_x < _y : Bool)) {
            return _x;
        };
        return _y;
    }
