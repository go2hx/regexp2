package stdgo._internal.go.types;
function _containsNil(_list:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>):Bool {
        for (__0 => _t in _list) {
            if (_t == null) {
                return true;
            };
        };
        return false;
    }
