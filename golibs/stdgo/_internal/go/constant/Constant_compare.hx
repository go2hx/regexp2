package stdgo._internal.go.constant;
function compare(_x_:stdgo._internal.go.constant.Constant_value.Value, _op:stdgo._internal.go.token.Token_token.Token, _y_:stdgo._internal.go.constant.Constant_value.Value):Bool {
        var __tmp__ = stdgo._internal.go.constant.Constant__match._match(_x_, _y_), _x:stdgo._internal.go.constant.Constant_value.Value = __tmp__._0, _y:stdgo._internal.go.constant.Constant_value.Value = __tmp__._1;
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__().value;
                return false;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_boolval.T_boolVal = __type__ == null ? (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal) : __type__.__underlying__() == null ? (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal) : __type__ == null ? (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal) : __type__.__underlying__().value;
                var _y = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal)) : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal);
                {
                    final __value__ = _op;
                    if (__value__ == ((39 : stdgo._internal.go.token.Token_token.Token))) {
                        return _x == (_y);
                    } else if (__value__ == ((44 : stdgo._internal.go.token.Token_token.Token))) {
                        return _x != (_y);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val))) {
                var _x:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__().value;
                var _y = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val)) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val);
                {
                    final __value__ = _op;
                    if (__value__ == ((39 : stdgo._internal.go.token.Token_token.Token))) {
                        return _x == (_y);
                    } else if (__value__ == ((44 : stdgo._internal.go.token.Token_token.Token))) {
                        return _x != (_y);
                    } else if (__value__ == ((40 : stdgo._internal.go.token.Token_token.Token))) {
                        return (_x < _y : Bool);
                    } else if (__value__ == ((45 : stdgo._internal.go.token.Token_token.Token))) {
                        return (_x <= _y : Bool);
                    } else if (__value__ == ((41 : stdgo._internal.go.token.Token_token.Token))) {
                        return (_x > _y : Bool);
                    } else if (__value__ == ((46 : stdgo._internal.go.token.Token_token.Token))) {
                        return (_x >= _y : Bool);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_intval.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__().value;
                return stdgo._internal.go.constant.Constant__cmpzero._cmpZero(@:check2r _x._val.cmp((stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo._internal.go.constant.Constant_t_intval.T_intVal)) : stdgo._internal.go.constant.Constant_t_intval.T_intVal)._val), _op);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__().value;
                return stdgo._internal.go.constant.Constant__cmpzero._cmpZero(@:check2r _x._val.cmp((stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal)) : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal)._val), _op);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__.__underlying__().value;
                return stdgo._internal.go.constant.Constant__cmpzero._cmpZero(@:check2r _x._val.cmp((stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal)) : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal)._val), _op);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__.__underlying__().value;
                var _y = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal)) : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal)?.__copy__() : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal);
                var _re = (stdgo._internal.go.constant.Constant_compare.compare(_x._re, (39 : stdgo._internal.go.token.Token_token.Token), _y._re) : Bool);
                var _im = (stdgo._internal.go.constant.Constant_compare.compare(_x._im, (39 : stdgo._internal.go.token.Token_token.Token), _y._im) : Bool);
                {
                    final __value__ = _op;
                    if (__value__ == ((39 : stdgo._internal.go.token.Token_token.Token))) {
                        return (_re && _im : Bool);
                    } else if (__value__ == ((44 : stdgo._internal.go.token.Token_token.Token))) {
                        return (!_re || !_im : Bool);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>))) {
                var _x:stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>) : __type__.__underlying__().value;
                var _xs = (@:check2r _x._string()?.__copy__() : stdgo.GoString);
                var _ys = (@:check2r (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>)) : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>)._string()?.__copy__() : stdgo.GoString);
                {
                    final __value__ = _op;
                    if (__value__ == ((39 : stdgo._internal.go.token.Token_token.Token))) {
                        return _xs == (_ys);
                    } else if (__value__ == ((44 : stdgo._internal.go.token.Token_token.Token))) {
                        return _xs != (_ys);
                    } else if (__value__ == ((40 : stdgo._internal.go.token.Token_token.Token))) {
                        return (_xs < _ys : Bool);
                    } else if (__value__ == ((45 : stdgo._internal.go.token.Token_token.Token))) {
                        return (_xs <= _ys : Bool);
                    } else if (__value__ == ((41 : stdgo._internal.go.token.Token_token.Token))) {
                        return (_xs > _ys : Bool);
                    } else if (__value__ == ((46 : stdgo._internal.go.token.Token_token.Token))) {
                        return (_xs >= _ys : Bool);
                    };
                };
            };
        };
        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid comparison %v %s %v" : stdgo.GoString), stdgo.Go.toInterface(_x_), stdgo.Go.toInterface(stdgo.Go.asInterface(_op)), stdgo.Go.toInterface(_y_)));
    }
