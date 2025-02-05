package stdgo._internal.go.constant;
function _makeFloat(_x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo._internal.go.constant.Constant_value.Value {
        if (@:check2r _x.sign() == ((0 : stdgo.GoInt))) {
            return stdgo.Go.asInterface(stdgo._internal.go.constant.Constant__floatval0._floatVal0);
        };
        if (@:check2r _x.isInf()) {
            return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal() : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal));
        };
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_floatval.T_floatVal(_x) : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal));
    }
