package stdgo._internal.go.constant;
function shift(_x:stdgo._internal.go.constant.Constant_value.Value, _op:stdgo._internal.go.token.Token_token.Token, _s:stdgo.GoUInt):stdgo._internal.go.constant.Constant_value.Value {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__().value;
                return stdgo.Go.asInterface(_x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val))) {
                var _x:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__().value;
                if (_s == ((0u32 : stdgo.GoUInt))) {
                    return stdgo.Go.asInterface(_x);
                };
                {
                    final __value__ = _op;
                    if (__value__ == ((20 : stdgo._internal.go.token.Token_token.Token))) {
                        var _z = stdgo._internal.go.constant.Constant__i64toi._i64toi(_x)._val;
                        return stdgo._internal.go.constant.Constant__makeint._makeInt(@:check2r _z.lsh(_z, _s));
                    } else if (__value__ == ((21 : stdgo._internal.go.token.Token_token.Token))) {
                        return stdgo.Go.asInterface((_x >> _s : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val));
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_intval.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__().value;
                if (_s == ((0u32 : stdgo.GoUInt))) {
                    return stdgo.Go.asInterface(_x);
                };
                var _z = stdgo._internal.go.constant.Constant__newint._newInt();
                {
                    final __value__ = _op;
                    if (__value__ == ((20 : stdgo._internal.go.token.Token_token.Token))) {
                        return stdgo._internal.go.constant.Constant__makeint._makeInt(@:check2r _z.lsh(_x._val, _s));
                    } else if (__value__ == ((21 : stdgo._internal.go.token.Token_token.Token))) {
                        return stdgo._internal.go.constant.Constant__makeint._makeInt(@:check2r _z.rsh(_x._val, _s));
                    };
                };
            };
        };
        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid shift %v %s %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(stdgo.Go.asInterface(_op)), stdgo.Go.toInterface(_s)));
    }
