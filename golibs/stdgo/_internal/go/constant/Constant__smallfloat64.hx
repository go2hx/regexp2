package stdgo._internal.go.constant;
function _smallFloat64(_x:stdgo.GoFloat64):Bool {
        if (stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt))) {
            return false;
        };
        var __tmp__ = stdgo._internal.math.Math_frexp.frexp(_x), __1:stdgo.GoFloat64 = __tmp__._0, _e:stdgo.GoInt = __tmp__._1;
        return (((-4096 : stdgo.GoInt) < _e : Bool) && (_e < (4096 : stdgo.GoInt) : Bool) : Bool);
    }
