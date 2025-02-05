package stdgo._internal.go.constant;
function _makeFloatFromLiteral(_lit:stdgo.GoString):stdgo._internal.go.constant.Constant_value.Value {
        {
            var __tmp__ = @:check2r stdgo._internal.go.constant.Constant__newfloat._newFloat().setString(_lit?.__copy__()), _f:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                if (stdgo._internal.go.constant.Constant__smallfloat._smallFloat(_f)) {
                    if (@:check2r _f.sign() == ((0 : stdgo.GoInt))) {
                        _lit = ("0" : stdgo.GoString);
                    };
                    {
                        var __tmp__ = @:check2r stdgo._internal.go.constant.Constant__newrat._newRat().setString(_lit?.__copy__()), _r:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_ratval.T_ratVal(_r) : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal));
                        };
                    };
                };
                return stdgo._internal.go.constant.Constant__makefloat._makeFloat(_f);
            };
        };
        return (null : stdgo._internal.go.constant.Constant_value.Value);
    }
