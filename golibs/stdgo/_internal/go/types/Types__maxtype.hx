package stdgo._internal.go.types;
function _maxType(_x:stdgo._internal.go.types.Types_type_.Type_, _y:stdgo._internal.go.types.Types_type_.Type_):stdgo._internal.go.types.Types_type_.Type_ {
        if (stdgo.Go.toInterface(_x) == (stdgo.Go.toInterface(_y))) {
            return _x;
        };
        if ((((stdgo._internal.go.types.Types__isuntyped._isUntyped(_x) && stdgo._internal.go.types.Types__isuntyped._isUntyped(_y) : Bool) && stdgo._internal.go.types.Types__isnumeric._isNumeric(_x) : Bool) && stdgo._internal.go.types.Types__isnumeric._isNumeric(_y) : Bool)) {
            if (((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>)) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) ?? throw "null pointer dereference")._kind > (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>)) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) ?? throw "null pointer dereference")._kind : Bool)) {
                return _x;
            };
            return _y;
        };
        return (null : stdgo._internal.go.types.Types_type_.Type_);
    }
