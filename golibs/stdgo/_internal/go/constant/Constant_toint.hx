package stdgo._internal.go.constant;
function toInt(_x:stdgo._internal.go.constant.Constant_value.Value):stdgo._internal.go.constant.Constant_value.Value {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal))) {
                var _x:stdgo._internal.go.constant.Constant_value.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant_value.Value) : cast __type__;
                return _x;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__().value;
                if (@:check2r _x._val.isInt()) {
                    return stdgo._internal.go.constant.Constant__makeint._makeInt(@:check2r _x._val.num());
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__.__underlying__().value;
                if (stdgo._internal.go.constant.Constant__smallfloat._smallFloat(_x._val)) {
                    var _i = stdgo._internal.go.constant.Constant__newint._newInt();
                    {
                        var __tmp__ = @:check2r _x._val.int_(_i), __1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _acc:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
                        if (_acc == ((0 : stdgo._internal.math.big.Big_accuracy.Accuracy))) {
                            return stdgo._internal.go.constant.Constant__makeint._makeInt(_i);
                        };
                    };
                    {};
                    var _t:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
                    @:check2 _t.setPrec((508u32 : stdgo.GoUInt));
                    @:check2 _t.setMode((2 : stdgo._internal.math.big.Big_roundingmode.RoundingMode));
                    @:check2 _t.set(_x._val);
                    {
                        var __tmp__ = @:check2 _t.int_(_i), __2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _acc:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
                        if (_acc == ((0 : stdgo._internal.math.big.Big_accuracy.Accuracy))) {
                            return stdgo._internal.go.constant.Constant__makeint._makeInt(_i);
                        };
                    };
                    @:check2 _t.setMode((3 : stdgo._internal.math.big.Big_roundingmode.RoundingMode));
                    @:check2 _t.set(_x._val);
                    {
                        var __tmp__ = @:check2 _t.int_(_i), __3:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _acc:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
                        if (_acc == ((0 : stdgo._internal.math.big.Big_accuracy.Accuracy))) {
                            return stdgo._internal.go.constant.Constant__makeint._makeInt(_i);
                        };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__.__underlying__().value;
                {
                    var _re = (stdgo._internal.go.constant.Constant_tofloat.toFloat(stdgo.Go.asInterface(_x)) : stdgo._internal.go.constant.Constant_value.Value);
                    if (_re.kind() == ((4 : stdgo._internal.go.constant.Constant_kind.Kind))) {
                        return stdgo._internal.go.constant.Constant_toint.toInt(_re);
                    };
                };
            };
        };
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal() : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal));
    }
