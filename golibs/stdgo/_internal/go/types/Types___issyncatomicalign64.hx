package stdgo._internal.go.types;
function __IsSyncAtomicAlign64(t:stdgo._internal.go.types.Types_type_.Type_):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(t) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
        }, _named = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return false;
        };
        var _obj = @:check2r _named.obj();
        return ((@:check2r _obj.name() == (("align64" : stdgo.GoString)) && (@:check2r _obj.pkg() != null && ((@:check2r _obj.pkg() : Dynamic).__nil__ == null || !(@:check2r _obj.pkg() : Dynamic).__nil__)) : Bool) && (((@:check2r @:check2r _obj.pkg().path() == ("sync/atomic" : stdgo.GoString)) || (@:check2r @:check2r _obj.pkg().path() == ("runtime/internal/atomic" : stdgo.GoString)) : Bool)) : Bool);
    }
