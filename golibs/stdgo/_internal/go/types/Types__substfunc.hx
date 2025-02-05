package stdgo._internal.go.types;
function _substFunc(_f:stdgo.Ref<stdgo._internal.go.types.Types_func.Func>, _typ:stdgo._internal.go.types.Types_type_.Type_):stdgo.Ref<stdgo._internal.go.types.Types_func.Func> {
        var _copy = ((_f : stdgo._internal.go.types.Types_func.Func)?.__copy__() : stdgo._internal.go.types.Types_func.Func);
        _copy._object._typ = _typ;
        _copy._origin = @:check2r _f.origin();
        return (stdgo.Go.setRef(_copy) : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>);
    }
