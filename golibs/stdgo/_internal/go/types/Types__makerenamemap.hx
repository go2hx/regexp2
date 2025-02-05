package stdgo._internal.go.types;
function _makeRenameMap(_from:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, _to:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>):stdgo._internal.go.types.Types_t_substmap.T_substMap {
        stdgo._internal.go.types.Types__assert._assert((_from.length) == ((_to.length)));
        var _proj = (({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, stdgo._internal.go.types.Types_type_.Type_>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, stdgo._internal.go.types.Types_type_.Type_>) : stdgo._internal.go.types.Types_t_substmap.T_substMap);
        for (_i => _tpar in _from) {
            _proj[_tpar] = stdgo.Go.asInterface(_to[(_i : stdgo.GoInt)]);
        };
        return _proj;
    }
