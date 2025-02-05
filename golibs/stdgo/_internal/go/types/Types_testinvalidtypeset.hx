package stdgo._internal.go.types;
function testInvalidTypeSet(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        if (!@:check2 stdgo._internal.go.types.Types__invalidtypeset._invalidTypeSet.isEmpty()) {
            @:check2r _t.error(stdgo.Go.toInterface(("invalidTypeSet is not empty" : stdgo.GoString)));
        };
    }
