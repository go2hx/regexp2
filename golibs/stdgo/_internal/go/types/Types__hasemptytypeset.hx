package stdgo._internal.go.types;
function _hasEmptyTypeset(_t:stdgo._internal.go.types.Types_type_.Type_):Bool {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
            }, _tpar = __tmp__._0, __0 = __tmp__._1;
            if (((_tpar != null && ((_tpar : Dynamic).__nil__ == null || !(_tpar : Dynamic).__nil__)) && ((@:checkr _tpar ?? throw "null pointer dereference")._bound != null) : Bool)) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.go.types.Types__safeunderlying._safeUnderlying((@:checkr _tpar ?? throw "null pointer dereference")._bound)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : false };
                }, _iface = __tmp__._0, __17 = __tmp__._1;
                return (((_iface != null && ((_iface : Dynamic).__nil__ == null || !(_iface : Dynamic).__nil__)) && ((@:checkr _iface ?? throw "null pointer dereference")._tset != null && (((@:checkr _iface ?? throw "null pointer dereference")._tset : Dynamic).__nil__ == null || !((@:checkr _iface ?? throw "null pointer dereference")._tset : Dynamic).__nil__)) : Bool) && @:check2r (@:checkr _iface ?? throw "null pointer dereference")._tset.isEmpty() : Bool);
            };
        };
        return false;
    }
