package stdgo._internal.go.types;
function _varTypes(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>):stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_> {
        var _res = (null : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        for (__0 => _x in _list) {
            _res = (_res.__append__((@:checkr _x ?? throw "null pointer dereference")._object._typ));
        };
        return _res;
    }
