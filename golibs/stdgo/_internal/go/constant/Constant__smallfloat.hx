package stdgo._internal.go.constant;
function _smallFloat(_x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):Bool {
        if (@:check2r _x.isInf()) {
            return false;
        };
        var _e = (@:check2r _x.mantExp(null) : stdgo.GoInt);
        return (((-4096 : stdgo.GoInt) < _e : Bool) && (_e < (4096 : stdgo.GoInt) : Bool) : Bool);
    }
