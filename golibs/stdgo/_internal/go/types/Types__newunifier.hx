package stdgo._internal.go.types;
function _newUnifier(_tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, _targs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>, _enableInterfaceInference:Bool):stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier> {
        stdgo._internal.go.types.Types__assert._assert(((_tparams.length) >= (_targs.length) : Bool));
        var _handles = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>>);
        for (_i => _x in _tparams) {
            var _t:stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
            if ((_i < (_targs.length) : Bool)) {
                _t = _targs[(_i : stdgo.GoInt)];
            };
            _handles[_x] = (stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>);
        };
        return (stdgo.Go.setRef((new stdgo._internal.go.types.Types_t_unifier.T_unifier(_handles, (0 : stdgo.GoInt), _enableInterfaceInference) : stdgo._internal.go.types.Types_t_unifier.T_unifier)) : stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>);
    }
