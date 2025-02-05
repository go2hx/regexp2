package stdgo._internal.go.types;
function _hasName(_t:stdgo._internal.go.types.Types_type_.Type_):Bool {
        {
            final __type__ = _t;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>))) {
                return true;
            };
        };
        return false;
    }
