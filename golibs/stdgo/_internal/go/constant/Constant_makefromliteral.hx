package stdgo._internal.go.constant;
function makeFromLiteral(_lit:stdgo.GoString, _tok:stdgo._internal.go.token.Token_token.Token, _zero:stdgo.GoUInt):stdgo._internal.go.constant.Constant_value.Value {
        if (_zero != ((0u32 : stdgo.GoUInt))) {
            throw stdgo.Go.toInterface(("MakeFromLiteral called with non-zero last argument" : stdgo.GoString));
        };
        {
            final __value__ = _tok;
            if (__value__ == ((5 : stdgo._internal.go.token.Token_token.Token))) {
                {
                    var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_lit?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _x:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        return stdgo.Go.asInterface((_x : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val));
                    };
                };
                {
                    var __tmp__ = @:check2r stdgo._internal.go.constant.Constant__newint._newInt().setString(_lit?.__copy__(), (0 : stdgo.GoInt)), _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_intval.T_intVal(_x) : stdgo._internal.go.constant.Constant_t_intval.T_intVal));
                    };
                };
            } else if (__value__ == ((6 : stdgo._internal.go.token.Token_token.Token))) {
                {
                    var _x = (stdgo._internal.go.constant.Constant__makefloatfromliteral._makeFloatFromLiteral(_lit?.__copy__()) : stdgo._internal.go.constant.Constant_value.Value);
                    if (_x != null) {
                        return _x;
                    };
                };
            } else if (__value__ == ((7 : stdgo._internal.go.token.Token_token.Token))) {
                {
                    var _n = (_lit.length : stdgo.GoInt);
                    if (((_n > (0 : stdgo.GoInt) : Bool) && (_lit[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] == (105 : stdgo.GoUInt8)) : Bool)) {
                        {
                            var _im = (stdgo._internal.go.constant.Constant__makefloatfromliteral._makeFloatFromLiteral((_lit.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.go.constant.Constant_value.Value);
                            if (_im != null) {
                                return stdgo._internal.go.constant.Constant__makecomplex._makeComplex(stdgo.Go.asInterface((0i64 : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val)), _im);
                            };
                        };
                    };
                };
            } else if (__value__ == ((8 : stdgo._internal.go.token.Token_token.Token))) {
                {
                    var _n = (_lit.length : stdgo.GoInt);
                    if ((_n >= (2 : stdgo.GoInt) : Bool)) {
                        {
                            var __tmp__ = stdgo._internal.strconv.Strconv_unquotechar.unquoteChar((_lit.__slice__((1 : stdgo.GoInt), (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (39 : stdgo.GoUInt8)), _code:stdgo.GoInt32 = __tmp__._0, __1:Bool = __tmp__._1, __2:stdgo.GoString = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                            if (_err == null) {
                                return stdgo._internal.go.constant.Constant_makeint64.makeInt64((_code : stdgo.GoInt64));
                            };
                        };
                    };
                };
            } else if (__value__ == ((9 : stdgo._internal.go.token.Token_token.Token))) {
                {
                    var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_lit?.__copy__()), _s:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        return stdgo._internal.go.constant.Constant_makestring.makeString(_s?.__copy__());
                    };
                };
            } else {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v is not a valid token" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tok))));
            };
        };
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal() : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal));
    }
