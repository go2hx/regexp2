package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_objset_asInterface) class T_objset_static_extension {
    @:keep
    @:tdfield
    static public function _insert( _s:stdgo.Ref<stdgo._internal.go.types.Types_t_objset.T_objset>, _obj:stdgo._internal.go.types.Types_object.Object):stdgo._internal.go.types.Types_object.Object {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_t_objset.T_objset> = _s;
        var _id = (_obj.id()?.__copy__() : stdgo.GoString);
        {
            var _alt = (((_s : stdgo._internal.go.types.Types_t_objset.T_objset))[_id] ?? (null : stdgo._internal.go.types.Types_object.Object) : stdgo._internal.go.types.Types_object.Object);
            if (_alt != null) {
                return _alt;
            };
        };
        if ((_s : stdgo._internal.go.types.Types_t_objset.T_objset) == null) {
            (_s : stdgo._internal.go.types.Types_t_objset.T_objset).__setData__((({
                final x = new stdgo.GoMap.GoStringMap<stdgo._internal.go.types.Types_object.Object>();
                x.__defaultValue__ = () -> (null : stdgo._internal.go.types.Types_object.Object);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo._internal.go.types.Types_object.Object>) : stdgo.GoMap<stdgo.GoString, stdgo._internal.go.types.Types_object.Object>));
        };
        ((_s : stdgo._internal.go.types.Types_t_objset.T_objset))[_id] = _obj;
        return (null : stdgo._internal.go.types.Types_object.Object);
    }
}
