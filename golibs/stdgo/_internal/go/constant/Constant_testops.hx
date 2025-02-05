package stdgo._internal.go.constant;
function testOps(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__1 => _test in stdgo._internal.go.constant.Constant__optests._opTests) {
            var _a = stdgo._internal.strings.Strings_split.split(_test?.__copy__(), (" " : stdgo.GoString));
            var _i = (0 : stdgo.GoInt);
            var __0:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value), __1:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
var _x0 = __1, _x = __0;
            {
                final __value__ = (_a.length);
                if (__value__ == ((4 : stdgo.GoInt))) {} else if (__value__ == ((5 : stdgo.GoInt))) {
                    {
                        final __tmp__0 = stdgo._internal.go.constant.Constant__val._val(_a[(0 : stdgo.GoInt)]?.__copy__());
                        final __tmp__1 = stdgo._internal.go.constant.Constant__val._val(_a[(0 : stdgo.GoInt)]?.__copy__());
                        _x = __tmp__0;
                        _x0 = __tmp__1;
                    };
                    _i = (1 : stdgo.GoInt);
                } else {
                    @:check2r _t.errorf(("invalid test case: %s" : stdgo.GoString), stdgo.Go.toInterface(_test));
                    continue;
                };
            };
            var __tmp__ = (stdgo._internal.go.constant.Constant__optab._optab != null && stdgo._internal.go.constant.Constant__optab._optab.exists(_a[(_i : stdgo.GoInt)]?.__copy__()) ? { _0 : stdgo._internal.go.constant.Constant__optab._optab[_a[(_i : stdgo.GoInt)]?.__copy__()], _1 : true } : { _0 : ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token), _1 : false }), _op:stdgo._internal.go.token.Token_token.Token = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                throw stdgo.Go.toInterface((("missing optab entry for " : stdgo.GoString) + _a[(_i : stdgo.GoInt)]?.__copy__() : stdgo.GoString));
            };
            var __0 = (stdgo._internal.go.constant.Constant__val._val(_a[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__()) : stdgo._internal.go.constant.Constant_value.Value), __1 = (stdgo._internal.go.constant.Constant__val._val(_a[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__()) : stdgo._internal.go.constant.Constant_value.Value);
var _y0 = __1, _y = __0;
            var _got = (stdgo._internal.go.constant.Constant__doop._doOp(_x, _op, _y) : stdgo._internal.go.constant.Constant_value.Value);
            var _want = (stdgo._internal.go.constant.Constant__val._val(_a[(_i + (3 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__()) : stdgo._internal.go.constant.Constant_value.Value);
            if (!stdgo._internal.go.constant.Constant__eql._eql(_got, _want)) {
                @:check2r _t.errorf(("%s: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                continue;
            };
            if (((_x0 != null) && !stdgo._internal.go.constant.Constant__eql._eql(_x, _x0) : Bool)) {
                @:check2r _t.errorf(("%s: x changed to %s" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_x));
                continue;
            };
            if (!stdgo._internal.go.constant.Constant__eql._eql(_y, _y0)) {
                @:check2r _t.errorf(("%s: y changed to %s" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_y));
                continue;
            };
        };
    }
