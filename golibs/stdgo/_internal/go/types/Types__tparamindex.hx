package stdgo._internal.go.types;
function _tparamIndex(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, _tpar:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):stdgo.GoInt {
        for (_i => _p in _list) {
            if (_p == (_tpar)) {
                return _i;
            };
        };
        return (-1 : stdgo.GoInt);
    }
