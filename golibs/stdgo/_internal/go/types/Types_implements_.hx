package stdgo._internal.go.types;
function implements_(v:stdgo._internal.go.types.Types_type_.Type_, t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>):Bool {
        if (@:check2r t.empty()) {
            return true;
        };
        if (stdgo.Go.toInterface(v.underlying()) == (stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)])))) {
            return false;
        };
        return @:check2r (null : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>)._implements((0 : stdgo._internal.go.token.Token_pos.Pos), v, stdgo.Go.asInterface(t), false, (null : stdgo.Pointer<stdgo.GoString>));
    }
