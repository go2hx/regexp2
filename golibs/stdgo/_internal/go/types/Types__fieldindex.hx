package stdgo._internal.go.types;
function _fieldIndex(_fields:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString):stdgo.GoInt {
        if (_name != (("_" : stdgo.GoString))) {
            for (_i => _f in _fields) {
                if (@:check2r _f._sameId(_pkg, _name?.__copy__())) {
                    return _i;
                };
            };
        };
        return (-1 : stdgo.GoInt);
    }
