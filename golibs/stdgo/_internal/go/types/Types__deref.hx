package stdgo._internal.go.types;
function _deref(_typ:stdgo._internal.go.types.Types_type_.Type_):{ var _0 : stdgo._internal.go.types.Types_type_.Type_; var _1 : Bool; } {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>)) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : false };
            }, _p = __tmp__._0, __0 = __tmp__._1;
            if ((_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__))) {
                if ((@:checkr _p ?? throw "null pointer dereference")._base == null) {
                    if (false) {
                        throw stdgo.Go.toInterface(("pointer with nil base type (possibly due to an invalid cyclic declaration)" : stdgo.GoString));
                    };
                    return { _0 : stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]), _1 : true };
                };
                return { _0 : (@:checkr _p ?? throw "null pointer dereference")._base, _1 : true };
            };
        };
        return { _0 : _typ, _1 : false };
    }
