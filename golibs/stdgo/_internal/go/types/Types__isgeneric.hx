package stdgo._internal.go.types;
function _isGeneric(_t:stdgo._internal.go.types.Types_type_.Type_):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
        }, _named = __tmp__._0, __0 = __tmp__._1;
        return ((((_named != null && ((_named : Dynamic).__nil__ == null || !(_named : Dynamic).__nil__)) && ((@:checkr _named ?? throw "null pointer dereference")._obj != null && (((@:checkr _named ?? throw "null pointer dereference")._obj : Dynamic).__nil__ == null || !((@:checkr _named ?? throw "null pointer dereference")._obj : Dynamic).__nil__)) : Bool) && ((@:checkr _named ?? throw "null pointer dereference")._inst == null || ((@:checkr _named ?? throw "null pointer dereference")._inst : Dynamic).__nil__) : Bool) && (@:check2r @:check2r _named.typeParams().len() > (0 : stdgo.GoInt) : Bool) : Bool);
    }
