package stdgo._internal.go.constant;
function _testNumbers(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _kind:stdgo._internal.go.token.Token_token.Token, _tests:stdgo.Slice<stdgo.GoString>):Void {
        for (__1 => _test in _tests) {
            var _a = stdgo._internal.strings.Strings_split.split(_test?.__copy__(), (" = " : stdgo.GoString));
            if ((_a.length) != ((2 : stdgo.GoInt))) {
                @:check2r _t.errorf(("invalid test case: %s" : stdgo.GoString), stdgo.Go.toInterface(_test));
                continue;
            };
            var _x = (stdgo._internal.go.constant.Constant_makefromliteral.makeFromLiteral(_a[(0 : stdgo.GoInt)]?.__copy__(), _kind, (0u32 : stdgo.GoUInt)) : stdgo._internal.go.constant.Constant_value.Value);
            var _y:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
            if (_a[(1 : stdgo.GoInt)] == (("?" : stdgo.GoString))) {
                _y = stdgo._internal.go.constant.Constant_makeunknown.makeUnknown();
            } else {
                {
                    var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_a[(1 : stdgo.GoInt)]?.__copy__(), ("/" : stdgo.GoString)), _ns:stdgo.GoString = __tmp__._0, _ds:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
                    if ((_ok && (_kind == (6 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                        var _n = (stdgo._internal.go.constant.Constant_makefromliteral.makeFromLiteral(_ns?.__copy__(), (5 : stdgo._internal.go.token.Token_token.Token), (0u32 : stdgo.GoUInt)) : stdgo._internal.go.constant.Constant_value.Value);
                        var _d = (stdgo._internal.go.constant.Constant_makefromliteral.makeFromLiteral(_ds?.__copy__(), (5 : stdgo._internal.go.token.Token_token.Token), (0u32 : stdgo.GoUInt)) : stdgo._internal.go.constant.Constant_value.Value);
                        _y = stdgo._internal.go.constant.Constant_binaryop.binaryOp(_n, (15 : stdgo._internal.go.token.Token_token.Token), _d);
                    } else {
                        _y = stdgo._internal.go.constant.Constant_makefromliteral.makeFromLiteral(_a[(1 : stdgo.GoInt)]?.__copy__(), _kind, (0u32 : stdgo.GoUInt));
                    };
                };
                if (_y.kind() == ((0 : stdgo._internal.go.constant.Constant_kind.Kind))) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid test case: %s %d" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(stdgo.Go.asInterface(_y.kind()))));
                };
            };
            var _xk = (_x.kind() : stdgo._internal.go.constant.Constant_kind.Kind);
            var _yk = (_y.kind() : stdgo._internal.go.constant.Constant_kind.Kind);
            if (_xk != (_yk)) {
                @:check2r _t.errorf(("%s: got kind %d != %d" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(stdgo.Go.asInterface(_xk)), stdgo.Go.toInterface(stdgo.Go.asInterface(_yk)));
                continue;
            };
            if (_yk == ((0 : stdgo._internal.go.constant.Constant_kind.Kind))) {
                continue;
            };
            if (!stdgo._internal.go.constant.Constant_compare.compare(_x, (39 : stdgo._internal.go.token.Token_token.Token), _y)) {
                @:check2r _t.errorf(("%s: %s != %s" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
            };
        };
    }
