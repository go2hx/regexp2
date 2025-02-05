package stdgo._internal.go.internal.gcimporter;
function _canReuse(_def:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, _rhs:stdgo._internal.go.types.Types_type_.Type_):Bool {
        if ((_def == null || (_def : Dynamic).__nil__)) {
            return true;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rhs) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : false };
        }, _iface = __tmp__._0, __0 = __tmp__._1;
        if ((_iface == null || (_iface : Dynamic).__nil__)) {
            return true;
        };
        return ((@:check2r _iface.numEmbeddeds() == (0 : stdgo.GoInt)) && (@:check2r _iface.numExplicitMethods() == (0 : stdgo.GoInt)) : Bool);
    }
