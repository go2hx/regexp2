package stdgo._internal.go.types;
function _consolidateMultiples(_list:stdgo.Slice<stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType>):stdgo.Slice<stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType> {
        if (((_list.length) <= (1 : stdgo.GoInt) : Bool)) {
            return _list;
        };
        var _n = (0 : stdgo.GoInt);
        var _prev = (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.types.Types_type_.Type_, stdgo.GoInt>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }), false, { get : () -> null }));
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, stdgo.GoInt>) : stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, stdgo.GoInt>);
        for (__0 => _e in _list) {
            {
                var __tmp__ = stdgo._internal.go.types.Types__lookuptype._lookupType(_prev, _e._typ), _i:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
                if (_found) {
                    _list[(_i : stdgo.GoInt)]._multiples = true;
                } else {
                    _prev[_e._typ] = _n;
                    _list[(_n : stdgo.GoInt)] = _e?.__copy__();
                    _n++;
                };
            };
        };
        return (_list.__slice__(0, _n) : stdgo.Slice<stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType>);
    }
