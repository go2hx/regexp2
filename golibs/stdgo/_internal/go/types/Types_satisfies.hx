package stdgo._internal.go.types;
function satisfies(v:stdgo._internal.go.types.Types_type_.Type_, t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>):Bool {
        return @:check2r (null : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>)._implements((0 : stdgo._internal.go.token.Token_pos.Pos), v, stdgo.Go.asInterface(t), true, (null : stdgo.Pointer<stdgo.GoString>));
    }
