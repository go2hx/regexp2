package stdgo._internal.go.types;
function newTuple(_x:haxe.Rest<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>):stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> {
        var _x = new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>(_x.length, 0, ..._x);
        if (((_x.length) > (0 : stdgo.GoInt) : Bool)) {
            return (stdgo.Go.setRef(({ _vars : _x } : stdgo._internal.go.types.Types_tuple.Tuple)) : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>);
        };
        return null;
    }
