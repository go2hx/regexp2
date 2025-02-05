package stdgo._internal.go.types;
function _representableConst(_x:stdgo._internal.go.constant.Constant_value.Value, _check:stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>, _typ:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>, _rounded:stdgo.Ref<stdgo._internal.go.constant.Constant_value.Value>):Bool {
        if (_x.kind() == ((0 : stdgo._internal.go.constant.Constant_kind.Kind))) {
            return true;
        };
        var _conf:stdgo.Ref<stdgo._internal.go.types.Types_config.Config> = (null : stdgo.Ref<stdgo._internal.go.types.Types_config.Config>);
        if ((_check != null && ((_check : Dynamic).__nil__ == null || !(_check : Dynamic).__nil__))) {
            _conf = (@:checkr _check ?? throw "null pointer dereference")._conf;
        };
        var _sizeof = (function(t:stdgo._internal.go.types.Types_type_.Type_):stdgo.GoInt64 {
            var _s = (@:check2r _conf._sizeof(t) : stdgo.GoInt64);
            return _s;
        } : stdgo._internal.go.types.Types_type_.Type_ -> stdgo.GoInt64);
        if (stdgo._internal.go.types.Types__isinteger._isInteger(stdgo.Go.asInterface(_typ))) {
            var _x = (stdgo._internal.go.constant.Constant_toint.toInt(_x) : stdgo._internal.go.constant.Constant_value.Value);
            if (_x.kind() != ((3 : stdgo._internal.go.constant.Constant_kind.Kind))) {
                return false;
            };
            if ((_rounded != null && ((_rounded : Dynamic).__nil__ == null || !(_rounded : Dynamic).__nil__))) {
                {
                    var __tmp__ = _x;
                    var x = (_rounded : stdgo._internal.go.constant.Constant_value.Value);
                    x.exactString = __tmp__.exactString;
                    x.kind = __tmp__.kind;
                    x.string = __tmp__.string;
                    x._implementsValue = __tmp__._implementsValue;
                };
            };
            {
                var __tmp__ = stdgo._internal.go.constant.Constant_int64val.int64Val(_x), _x:stdgo.GoInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    {
                        final __value__ = (@:checkr _typ ?? throw "null pointer dereference")._kind;
                        if (__value__ == ((2 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                            var _s = ((_sizeof(stdgo.Go.asInterface(_typ)) : stdgo.GoUInt) * (8u32 : stdgo.GoUInt) : stdgo.GoUInt);
                            return ((((-1i64 : stdgo.GoInt64) << ((_s - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoInt64) <= _x : Bool) && (_x <= (((1i64 : stdgo.GoInt64) << ((_s - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoInt64) - (1i64 : stdgo.GoInt64) : stdgo.GoInt64) : Bool) : Bool);
                        } else if (__value__ == ((3 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                            {};
                            return (((-128i64 : stdgo.GoInt64) <= _x : Bool) && (_x <= (127i64 : stdgo.GoInt64) : Bool) : Bool);
                        } else if (__value__ == ((4 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                            {};
                            return (((-32768i64 : stdgo.GoInt64) <= _x : Bool) && (_x <= (32767i64 : stdgo.GoInt64) : Bool) : Bool);
                        } else if (__value__ == ((5 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                            {};
                            return (((-2147483648i64 : stdgo.GoInt64) <= _x : Bool) && (_x <= (2147483647i64 : stdgo.GoInt64) : Bool) : Bool);
                        } else if (__value__ == ((6 : stdgo._internal.go.types.Types_basickind.BasicKind)) || __value__ == ((20 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                            return true;
                        } else if (__value__ == ((7 : stdgo._internal.go.types.Types_basickind.BasicKind)) || __value__ == ((12 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                            {
                                var _s = ((_sizeof(stdgo.Go.asInterface(_typ)) : stdgo.GoUInt) * (8u32 : stdgo.GoUInt) : stdgo.GoUInt);
                                if ((_s < (64u32 : stdgo.GoUInt) : Bool)) {
                                    return (((0i64 : stdgo.GoInt64) <= _x : Bool) && (_x <= (((1i64 : stdgo.GoInt64) << _s : stdgo.GoInt64) - (1i64 : stdgo.GoInt64) : stdgo.GoInt64) : Bool) : Bool);
                                };
                            };
                            return ((0i64 : stdgo.GoInt64) <= _x : Bool);
                        } else if (__value__ == ((8 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                            {};
                            return (((0i64 : stdgo.GoInt64) <= _x : Bool) && (_x <= (255i64 : stdgo.GoInt64) : Bool) : Bool);
                        } else if (__value__ == ((9 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                            {};
                            return (((0i64 : stdgo.GoInt64) <= _x : Bool) && (_x <= (65535i64 : stdgo.GoInt64) : Bool) : Bool);
                        } else if (__value__ == ((10 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                            {};
                            return (((0i64 : stdgo.GoInt64) <= _x : Bool) && (_x <= (4294967295i64 : stdgo.GoInt64) : Bool) : Bool);
                        } else if (__value__ == ((11 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                            return ((0i64 : stdgo.GoInt64) <= _x : Bool);
                        } else {
                            stdgo._internal.go.types.Types__unreachable._unreachable();
                        };
                    };
                };
            };
            {
                var _n = (stdgo._internal.go.constant.Constant_bitlen.bitLen(_x) : stdgo.GoInt);
                {
                    final __value__ = (@:checkr _typ ?? throw "null pointer dereference")._kind;
                    if (__value__ == ((7 : stdgo._internal.go.types.Types_basickind.BasicKind)) || __value__ == ((12 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                        var _s = ((_sizeof(stdgo.Go.asInterface(_typ)) : stdgo.GoUInt) * (8u32 : stdgo.GoUInt) : stdgo.GoUInt);
                        return ((stdgo._internal.go.constant.Constant_sign.sign(_x) >= (0 : stdgo.GoInt) : Bool) && (_n <= (_s : stdgo.GoInt) : Bool) : Bool);
                    } else if (__value__ == ((11 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                        return ((stdgo._internal.go.constant.Constant_sign.sign(_x) >= (0 : stdgo.GoInt) : Bool) && (_n <= (64 : stdgo.GoInt) : Bool) : Bool);
                    } else if (__value__ == ((20 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                        return true;
                    };
                };
            };
        } else if (stdgo._internal.go.types.Types__isfloat._isFloat(stdgo.Go.asInterface(_typ))) {
            var _x = (stdgo._internal.go.constant.Constant_tofloat.toFloat(_x) : stdgo._internal.go.constant.Constant_value.Value);
            if (_x.kind() != ((4 : stdgo._internal.go.constant.Constant_kind.Kind))) {
                return false;
            };
            {
                final __value__ = (@:checkr _typ ?? throw "null pointer dereference")._kind;
                if (__value__ == ((13 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                    if ((_rounded == null || (_rounded : Dynamic).__nil__)) {
                        return stdgo._internal.go.types.Types__fitsfloat32._fitsFloat32(_x);
                    };
                    var _r = (stdgo._internal.go.types.Types__roundfloat32._roundFloat32(_x) : stdgo._internal.go.constant.Constant_value.Value);
                    if (_r != null) {
                        {
                            var __tmp__ = _r;
                            var x = (_rounded : stdgo._internal.go.constant.Constant_value.Value);
                            x.exactString = __tmp__.exactString;
                            x.kind = __tmp__.kind;
                            x.string = __tmp__.string;
                            x._implementsValue = __tmp__._implementsValue;
                        };
                        return true;
                    };
                } else if (__value__ == ((14 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                    if ((_rounded == null || (_rounded : Dynamic).__nil__)) {
                        return stdgo._internal.go.types.Types__fitsfloat64._fitsFloat64(_x);
                    };
                    var _r = (stdgo._internal.go.types.Types__roundfloat64._roundFloat64(_x) : stdgo._internal.go.constant.Constant_value.Value);
                    if (_r != null) {
                        {
                            var __tmp__ = _r;
                            var x = (_rounded : stdgo._internal.go.constant.Constant_value.Value);
                            x.exactString = __tmp__.exactString;
                            x.kind = __tmp__.kind;
                            x.string = __tmp__.string;
                            x._implementsValue = __tmp__._implementsValue;
                        };
                        return true;
                    };
                } else if (__value__ == ((22 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                    return true;
                } else {
                    stdgo._internal.go.types.Types__unreachable._unreachable();
                };
            };
        } else if (stdgo._internal.go.types.Types__iscomplex._isComplex(stdgo.Go.asInterface(_typ))) {
            var _x = (stdgo._internal.go.constant.Constant_tocomplex.toComplex(_x) : stdgo._internal.go.constant.Constant_value.Value);
            if (_x.kind() != ((5 : stdgo._internal.go.constant.Constant_kind.Kind))) {
                return false;
            };
            {
                final __value__ = (@:checkr _typ ?? throw "null pointer dereference")._kind;
                if (__value__ == ((15 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                    if ((_rounded == null || (_rounded : Dynamic).__nil__)) {
                        return (stdgo._internal.go.types.Types__fitsfloat32._fitsFloat32(stdgo._internal.go.constant.Constant_real.real(_x)) && stdgo._internal.go.types.Types__fitsfloat32._fitsFloat32(stdgo._internal.go.constant.Constant_imag.imag(_x)) : Bool);
                    };
                    var _re = (stdgo._internal.go.types.Types__roundfloat32._roundFloat32(stdgo._internal.go.constant.Constant_real.real(_x)) : stdgo._internal.go.constant.Constant_value.Value);
                    var _im = (stdgo._internal.go.types.Types__roundfloat32._roundFloat32(stdgo._internal.go.constant.Constant_imag.imag(_x)) : stdgo._internal.go.constant.Constant_value.Value);
                    if (((_re != null) && (_im != null) : Bool)) {
                        {
                            var __tmp__ = stdgo._internal.go.constant.Constant_binaryop.binaryOp(_re, (12 : stdgo._internal.go.token.Token_token.Token), stdgo._internal.go.constant.Constant_makeimag.makeImag(_im));
                            var x = (_rounded : stdgo._internal.go.constant.Constant_value.Value);
                            x.exactString = __tmp__.exactString;
                            x.kind = __tmp__.kind;
                            x.string = __tmp__.string;
                            x._implementsValue = __tmp__._implementsValue;
                        };
                        return true;
                    };
                } else if (__value__ == ((16 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                    if ((_rounded == null || (_rounded : Dynamic).__nil__)) {
                        return (stdgo._internal.go.types.Types__fitsfloat64._fitsFloat64(stdgo._internal.go.constant.Constant_real.real(_x)) && stdgo._internal.go.types.Types__fitsfloat64._fitsFloat64(stdgo._internal.go.constant.Constant_imag.imag(_x)) : Bool);
                    };
                    var _re = (stdgo._internal.go.types.Types__roundfloat64._roundFloat64(stdgo._internal.go.constant.Constant_real.real(_x)) : stdgo._internal.go.constant.Constant_value.Value);
                    var _im = (stdgo._internal.go.types.Types__roundfloat64._roundFloat64(stdgo._internal.go.constant.Constant_imag.imag(_x)) : stdgo._internal.go.constant.Constant_value.Value);
                    if (((_re != null) && (_im != null) : Bool)) {
                        {
                            var __tmp__ = stdgo._internal.go.constant.Constant_binaryop.binaryOp(_re, (12 : stdgo._internal.go.token.Token_token.Token), stdgo._internal.go.constant.Constant_makeimag.makeImag(_im));
                            var x = (_rounded : stdgo._internal.go.constant.Constant_value.Value);
                            x.exactString = __tmp__.exactString;
                            x.kind = __tmp__.kind;
                            x.string = __tmp__.string;
                            x._implementsValue = __tmp__._implementsValue;
                        };
                        return true;
                    };
                } else if (__value__ == ((23 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                    return true;
                } else {
                    stdgo._internal.go.types.Types__unreachable._unreachable();
                };
            };
        } else if (stdgo._internal.go.types.Types__isstring._isString(stdgo.Go.asInterface(_typ))) {
            return _x.kind() == ((2 : stdgo._internal.go.constant.Constant_kind.Kind));
        } else if (stdgo._internal.go.types.Types__isboolean._isBoolean(stdgo.Go.asInterface(_typ))) {
            return _x.kind() == ((1 : stdgo._internal.go.constant.Constant_kind.Kind));
        };
        return false;
    }
