package stdgo._internal.go.constant;
function _makeRat(_x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo._internal.go.constant.Constant_value.Value {
        var _a = @:check2r _x.num();
        var _b = @:check2r _x.denom();
        if ((stdgo._internal.go.constant.Constant__smallint._smallInt(_a) && stdgo._internal.go.constant.Constant__smallint._smallInt(_b) : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_ratval.T_ratVal(_x) : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal));
        };
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_floatval.T_floatVal(@:check2r stdgo._internal.go.constant.Constant__newfloat._newFloat().setRat(_x)) : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal));
    }
