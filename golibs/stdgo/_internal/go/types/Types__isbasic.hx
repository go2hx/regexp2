package stdgo._internal.go.types;
function _isBasic(_t:stdgo._internal.go.types.Types_type_.Type_, _info:stdgo._internal.go.types.Types_basicinfo.BasicInfo):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.go.types.Types__under._under(_t)) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>)) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>), _1 : false };
        }, _u = __tmp__._0, __0 = __tmp__._1;
        return ((_u != null && ((_u : Dynamic).__nil__ == null || !(_u : Dynamic).__nil__)) && (((@:checkr _u ?? throw "null pointer dereference")._info & _info : stdgo._internal.go.types.Types_basicinfo.BasicInfo) != (0 : stdgo._internal.go.types.Types_basicinfo.BasicInfo)) : Bool);
    }
