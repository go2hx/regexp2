package stdgo._internal.go.types;
function testTermString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (_want => _x in stdgo._internal.go.types.Types__testterms._testTerms) {
            {
                var _got = ((@:check2r _x.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_got != (_want)) {
                    @:check2r _t.errorf(("%v.String() == %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        };
    }
