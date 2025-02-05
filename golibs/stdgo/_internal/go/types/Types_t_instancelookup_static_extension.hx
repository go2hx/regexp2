package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_instanceLookup_asInterface) class T_instanceLookup_static_extension {
    @:keep
    @:tdfield
    static public function _add( _l:stdgo.Ref<stdgo._internal.go.types.Types_t_instancelookup.T_instanceLookup>, _inst:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.go.types.Types_t_instancelookup.T_instanceLookup> = _l;
        for (_i => _t in (@:checkr _l ?? throw "null pointer dereference")._buf) {
            if ((_t == null || (_t : Dynamic).__nil__)) {
                (@:checkr _l ?? throw "null pointer dereference")._buf[(_i : stdgo.GoInt)] = _inst;
                return;
            };
        };
        if ((@:checkr _l ?? throw "null pointer dereference")._m == null) {
            (@:checkr _l ?? throw "null pointer dereference")._m = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>>);
        };
        var _insts = ((@:checkr _l ?? throw "null pointer dereference")._m[@:check2r _inst.origin()] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>));
        (@:checkr _l ?? throw "null pointer dereference")._m[@:check2r _inst.origin()] = (_insts.__append__(_inst));
    }
    @:keep
    @:tdfield
    static public function _lookup( _l:stdgo.Ref<stdgo._internal.go.types.Types_t_instancelookup.T_instanceLookup>, _inst:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo.Ref<stdgo._internal.go.types.Types_named.Named> {
        @:recv var _l:stdgo.Ref<stdgo._internal.go.types.Types_t_instancelookup.T_instanceLookup> = _l;
        for (__0 => _t in (@:checkr _l ?? throw "null pointer dereference")._buf) {
            if (((_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__)) && stdgo._internal.go.types.Types_identical.identical(stdgo.Go.asInterface(_inst), stdgo.Go.asInterface(_t)) : Bool)) {
                return _t;
            };
        };
        for (__9 => _t in ((@:checkr _l ?? throw "null pointer dereference")._m[@:check2r _inst.origin()] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>))) {
            if (stdgo._internal.go.types.Types_identical.identical(stdgo.Go.asInterface(_inst), stdgo.Go.asInterface(_t))) {
                return _t;
            };
        };
        return null;
    }
}
