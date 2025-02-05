package stdgo._internal.go.types;
function _lookupType(_m:stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, stdgo.GoInt>, _typ:stdgo._internal.go.types.Types_type_.Type_):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        {
            var __tmp__ = (_m != null && _m.exists(_typ) ? { _0 : _m[_typ], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _i:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
            if (_found) {
                return { _0 : _i, _1 : true };
            };
        };
        for (_t => _i in _m) {
            if (stdgo._internal.go.types.Types_identical.identical(_t, _typ)) {
                return { _0 : _i, _1 : true };
            };
        };
        return { _0 : (0 : stdgo.GoInt), _1 : false };
    }
