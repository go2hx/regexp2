package stdgo._internal.go.types;
function testTermlistAll(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        if (!stdgo._internal.go.types.Types__alltermlist._allTermlist._isAll()) {
            @:check2r _t.errorf(("allTermlist is not the set of all types" : stdgo.GoString));
        };
    }
