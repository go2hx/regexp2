package stdgo._internal.go.constant;
function testFractions(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__1 => _test in stdgo._internal.go.constant.Constant__fractests._fracTests) {
            var _x = (stdgo._internal.go.constant.Constant__val._val(_test?.__copy__()) : stdgo._internal.go.constant.Constant_value.Value);
            var _q = (stdgo._internal.go.constant.Constant_binaryop.binaryOp(stdgo._internal.go.constant.Constant_num.num(_x), (15 : stdgo._internal.go.token.Token_token.Token), stdgo._internal.go.constant.Constant_denom.denom(_x)) : stdgo._internal.go.constant.Constant_value.Value);
            var _got = ((_q.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var _want = ((_x.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (_want)) {
                @:check2r _t.errorf(("%s: got quotient %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
