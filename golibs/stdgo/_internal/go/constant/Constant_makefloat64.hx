package stdgo._internal.go.constant;
function makeFloat64(_x:stdgo.GoFloat64):stdgo._internal.go.constant.Constant_value.Value {
        if ((stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt)) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal() : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal));
        };
        if (stdgo._internal.go.constant.Constant__smallfloat64._smallFloat64(_x)) {
            return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_ratval.T_ratVal(@:check2r stdgo._internal.go.constant.Constant__newrat._newRat().setFloat64((_x + (0 : stdgo.GoFloat64) : stdgo.GoFloat64))) : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal));
        };
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_floatval.T_floatVal(@:check2r stdgo._internal.go.constant.Constant__newfloat._newFloat().setFloat64((_x + (0 : stdgo.GoFloat64) : stdgo.GoFloat64))) : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal));
    }
