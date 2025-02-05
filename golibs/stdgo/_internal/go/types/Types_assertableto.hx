package stdgo._internal.go.types;
function assertableTo(v:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>, t:stdgo._internal.go.types.Types_type_.Type_):Bool {
        if (stdgo.Go.toInterface(t.underlying()) == (stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)])))) {
            return false;
        };
        return @:check2r (null : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>)._newAssertableTo(stdgo._internal.go.types.Types__nopos._nopos, stdgo.Go.asInterface(v), t, (null : stdgo.Pointer<stdgo.GoString>));
    }
