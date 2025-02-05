package stdgo._internal.go.ast;
function testPrint(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        for (__0 => _test in stdgo._internal.go.ast.Ast__tests._tests) {
            @:check2 _buf.reset();
            {
                var _err = (stdgo._internal.go.ast.Ast_fprint.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), null, _test._x, null) : stdgo.Error);
                if (_err != null) {
                    @:check2r _t.errorf(("Fprint failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
            {
                var __0 = (stdgo._internal.go.ast.Ast__trim._trim((@:check2 _buf.string() : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString), __1 = (stdgo._internal.go.ast.Ast__trim._trim(_test._s?.__copy__())?.__copy__() : stdgo.GoString);
var _ts = __1, _s = __0;
                if (_s != (_ts)) {
                    @:check2r _t.errorf(("got:\n%s\nexpected:\n%s\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_ts));
                };
            };
        };
    }
