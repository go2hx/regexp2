package stdgo._internal.go.constant;
function testString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__1 => _test in stdgo._internal.go.constant.Constant__stringtests._stringTests) {
            var _x = (stdgo._internal.go.constant.Constant__val._val(_test._input?.__copy__()) : stdgo._internal.go.constant.Constant_value.Value);
            {
                var _got = ((_x.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_got != (_test._short)) {
                    @:check2r _t.errorf(("%s: got %q; want %q as short string" : stdgo.GoString), stdgo.Go.toInterface(_test._input), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._short));
                };
            };
            {
                var _got = (_x.exactString()?.__copy__() : stdgo.GoString);
                if (_got != (_test._exact)) {
                    @:check2r _t.errorf(("%s: got %q; want %q as exact string" : stdgo.GoString), stdgo.Go.toInterface(_test._input), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._exact));
                };
            };
        };
    }
