package stdgo._internal.go.constant;
function unaryOp(_op:stdgo._internal.go.token.Token_token.Token, _y:stdgo._internal.go.constant.Constant_value.Value, _prec:stdgo.GoUInt):stdgo._internal.go.constant.Constant_value.Value {
        var _y_5210029:stdgo._internal.go.constant.Constant_t_boolval.T_boolVal = (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal);
        var _z_5209507:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _y_5209315:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal = ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal);
        var _y_5209079:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val);
        var _y_5209638:stdgo._internal.go.constant.Constant_t_intval.T_intVal = ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal);
        var _im_5209419:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _re_5209382:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _y_5209259:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal = ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal);
        var _y_5209205:stdgo._internal.go.constant.Constant_t_intval.T_intVal = ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal);
        var _y_5209592:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val);
        var _z_5209087:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val);
        var _y_5209377:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal = ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal);
        var _y_5209563:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal);
        var _y_5209050:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal);
        var _y_5210001:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal);
        var _y_5209665 = @:invalid_type null;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 5208858i32;
                } else if (__value__ == (5208858i32)) {
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5208871i32;
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5208992i32;
                        } else if (__value__ == ((19 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5209489i32;
                        } else if (__value__ == ((43 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5209943i32;
                        } else {
                            _gotoNext = 5210052i32;
                        };
                    };
                } else if (__value__ == (5208871i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 5208889i32;
                } else if (__value__ == (5208889i32)) {
                    {
                        final __type__ = _y;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal))) {
                            _gotoNext = 5208909i32;
                        } else {
                            _gotoNext = 5210052i32;
                        };
                    };
                    _gotoNext = 5210052i32;
                } else if (__value__ == (5208909i32)) {
                    return _y;
                    _gotoNext = 5210052i32;
                } else if (__value__ == (5208992i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 5209010i32;
                } else if (__value__ == (5209010i32)) {
                    {
                        final __type__ = _y;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal))) {
                            var _y:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__().value;
                            _y_5209050 = _y;
                            _gotoNext = 5209035i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val))) {
                            var _y:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__().value;
                            _y_5209079 = _y;
                            _gotoNext = 5209066i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal))) {
                            var _y:stdgo._internal.go.constant.Constant_t_intval.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__().value;
                            _y_5209205 = _y;
                            _gotoNext = 5209194i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal))) {
                            var _y:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__().value;
                            _y_5209259 = _y;
                            _gotoNext = 5209248i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal))) {
                            var _y:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__.__underlying__().value;
                            _y_5209315 = _y;
                            _gotoNext = 5209302i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal))) {
                            var _y:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__.__underlying__().value;
                            _y_5209377 = _y;
                            _gotoNext = 5209362i32;
                        } else {
                            var _y:stdgo._internal.go.constant.Constant_value.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant_value.Value) : cast __type__;
                            _gotoNext = 5210052i32;
                        };
                    };
                    _gotoNext = 5210052i32;
                } else if (__value__ == (5209035i32)) {
                    return stdgo.Go.asInterface(_y_5209050);
                    var __blank__ = _y_5209050;
                    _gotoNext = 5210052i32;
                } else if (__value__ == (5209066i32)) {
                    {
                        _z_5209087 = -_y_5209079;
                        if (_z_5209087 != (_y_5209079)) {
                            _gotoNext = 5209103i32;
                        } else {
                            _gotoNext = 5209141i32;
                        };
                    };
                } else if (__value__ == (5209103i32)) {
                    return stdgo.Go.asInterface(_z_5209087);
                    _gotoNext = 5209141i32;
                } else if (__value__ == (5209141i32)) {
                    return stdgo._internal.go.constant.Constant__makeint._makeInt(@:check2r stdgo._internal.go.constant.Constant__newint._newInt().neg(stdgo._internal.math.big.Big_newint.newInt((_y_5209079 : stdgo.GoInt64))));
                    var __blank__ = _y_5209079;
                    _gotoNext = 5210052i32;
                } else if (__value__ == (5209194i32)) {
                    return stdgo._internal.go.constant.Constant__makeint._makeInt(@:check2r stdgo._internal.go.constant.Constant__newint._newInt().neg(_y_5209205._val));
                    var __blank__ = _y_5209205;
                    _gotoNext = 5210052i32;
                } else if (__value__ == (5209248i32)) {
                    return stdgo._internal.go.constant.Constant__makerat._makeRat(@:check2r stdgo._internal.go.constant.Constant__newrat._newRat().neg(_y_5209259._val));
                    var __blank__ = _y_5209259;
                    _gotoNext = 5210052i32;
                } else if (__value__ == (5209302i32)) {
                    return stdgo._internal.go.constant.Constant__makefloat._makeFloat(@:check2r stdgo._internal.go.constant.Constant__newfloat._newFloat().neg(_y_5209315._val));
                    var __blank__ = _y_5209315;
                    _gotoNext = 5210052i32;
                } else if (__value__ == (5209362i32)) {
                    _re_5209382 = stdgo._internal.go.constant.Constant_unaryop.unaryOp((13 : stdgo._internal.go.token.Token_token.Token), _y_5209377._re, (0u32 : stdgo.GoUInt));
                    _im_5209419 = stdgo._internal.go.constant.Constant_unaryop.unaryOp((13 : stdgo._internal.go.token.Token_token.Token), _y_5209377._im, (0u32 : stdgo.GoUInt));
                    return stdgo._internal.go.constant.Constant__makecomplex._makeComplex(_re_5209382, _im_5209419);
                    var __blank__ = _y_5209377;
                    _gotoNext = 5210052i32;
                } else if (__value__ == (5209489i32)) {
                    _z_5209507 = stdgo._internal.go.constant.Constant__newint._newInt();
                    var __blank__ = 0i32;
                    _gotoNext = 5209523i32;
                } else if (__value__ == (5209523i32)) {
                    {
                        final __type__ = _y;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal))) {
                            var _y:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__().value;
                            _y_5209563 = _y;
                            _gotoNext = 5209548i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val))) {
                            var _y:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__().value;
                            _y_5209592 = _y;
                            _gotoNext = 5209579i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal))) {
                            var _y:stdgo._internal.go.constant.Constant_t_intval.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__().value;
                            _y_5209638 = _y;
                            _gotoNext = 5209627i32;
                        } else {
                            var _y:stdgo._internal.go.constant.Constant_value.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant_value.Value) : cast __type__;
                            _y_5209665 = _y;
                            _gotoNext = 5209658i32;
                        };
                    };
                } else if (__value__ == (5209548i32)) {
                    return stdgo.Go.asInterface(_y_5209563);
                    var __blank__ = _y_5209563;
                    _gotoNext = 5209832i32;
                } else if (__value__ == (5209579i32)) {
                    @:check2r _z_5209507.not(stdgo._internal.math.big.Big_newint.newInt((_y_5209592 : stdgo.GoInt64)));
                    var __blank__ = _y_5209592;
                    _gotoNext = 5209832i32;
                } else if (__value__ == (5209627i32)) {
                    @:check2r _z_5209507.not(_y_5209638._val);
                    var __blank__ = _y_5209638;
                    _gotoNext = 5209832i32;
                } else if (__value__ == (5209658i32)) {
                    _gotoNext = 5210052i32;
                } else if (__value__ == (5209832i32)) {
                    if ((_prec > (0u32 : stdgo.GoUInt) : Bool)) {
                        _gotoNext = 5209844i32;
                    } else {
                        _gotoNext = 5209923i32;
                    };
                } else if (__value__ == (5209844i32)) {
                    @:check2r _z_5209507.andNot(_z_5209507, @:check2r stdgo._internal.go.constant.Constant__newint._newInt().lsh(stdgo._internal.math.big.Big_newint.newInt((-1i64 : stdgo.GoInt64)), _prec));
                    _gotoNext = 5209923i32;
                } else if (__value__ == (5209923i32)) {
                    return stdgo._internal.go.constant.Constant__makeint._makeInt(_z_5209507);
                    _gotoNext = 5210052i32;
                } else if (__value__ == (5209943i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 5209961i32;
                } else if (__value__ == (5209961i32)) {
                    {
                        final __type__ = _y;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal))) {
                            var _y:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__().value;
                            _y_5210001 = _y;
                            _gotoNext = 5209986i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal))) {
                            var _y:stdgo._internal.go.constant.Constant_t_boolval.T_boolVal = __type__ == null ? (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal) : __type__.__underlying__() == null ? (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal) : __type__ == null ? (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal) : __type__.__underlying__().value;
                            _y_5210029 = _y;
                            _gotoNext = 5210017i32;
                        } else {
                            var _y:stdgo._internal.go.constant.Constant_value.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant_value.Value) : cast __type__;
                            _gotoNext = 5210052i32;
                        };
                    };
                    _gotoNext = 5210052i32;
                } else if (__value__ == (5209986i32)) {
                    return stdgo.Go.asInterface(_y_5210001);
                    var __blank__ = _y_5210001;
                    _gotoNext = 5210052i32;
                } else if (__value__ == (5210017i32)) {
                    return stdgo.Go.asInterface(!_y_5210029);
                    var __blank__ = _y_5210029;
                    _gotoNext = 5210052i32;
                } else if (__value__ == (5210052i32)) {
                    _gotoNext = 5210052i32;
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid unary operation %s%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_op)), stdgo.Go.toInterface(_y)));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
