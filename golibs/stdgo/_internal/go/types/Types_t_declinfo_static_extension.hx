package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_declInfo_asInterface) class T_declInfo_static_extension {
    @:keep
    @:tdfield
    static public function _addDep( _d:stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>, _obj:stdgo._internal.go.types.Types_object.Object):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo> = _d;
        var _m = (@:checkr _d ?? throw "null pointer dereference")._deps;
        if (_m == null) {
            _m = (({
                final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.types.Types_object.Object, Bool>();
                x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_object.Object", [], stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_object.Object", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }), false, { get : () -> null }));
                x.__defaultValue__ = () -> false;
                {};
                cast x;
            } : stdgo.GoMap<stdgo._internal.go.types.Types_object.Object, Bool>) : stdgo.GoMap<stdgo._internal.go.types.Types_object.Object, Bool>);
            (@:checkr _d ?? throw "null pointer dereference")._deps = _m;
        };
        _m[_obj] = true;
    }
    @:keep
    @:tdfield
    static public function _hasInitializer( _d:stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo> = _d;
        return (((@:checkr _d ?? throw "null pointer dereference")._init != null) || (((@:checkr _d ?? throw "null pointer dereference")._fdecl != null && (((@:checkr _d ?? throw "null pointer dereference")._fdecl : Dynamic).__nil__ == null || !((@:checkr _d ?? throw "null pointer dereference")._fdecl : Dynamic).__nil__)) && ((@:checkr (@:checkr _d ?? throw "null pointer dereference")._fdecl ?? throw "null pointer dereference").body != null && (((@:checkr (@:checkr _d ?? throw "null pointer dereference")._fdecl ?? throw "null pointer dereference").body : Dynamic).__nil__ == null || !((@:checkr (@:checkr _d ?? throw "null pointer dereference")._fdecl ?? throw "null pointer dereference").body : Dynamic).__nil__)) : Bool) : Bool);
    }
}
