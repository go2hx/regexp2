package stdgo._internal.go.constant;
function testBitLen(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__1 => _test in stdgo._internal.go.constant.Constant__bitlentests._bitLenTests) {
            {
                var _got = (stdgo._internal.go.constant.Constant_bitlen.bitLen(stdgo._internal.go.constant.Constant_makeint64.makeInt64(_test._val)) : stdgo.GoInt);
                if (_got != (_test._want)) {
                    @:check2r _t.errorf(("%v: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._val), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
