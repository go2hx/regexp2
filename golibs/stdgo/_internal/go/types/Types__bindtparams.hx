package stdgo._internal.go.types;
function _bindTParams(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>):stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList> {
        if ((_list.length) == ((0 : stdgo.GoInt))) {
            return null;
        };
        for (_i => _typ in _list) {
            if (((@:checkr _typ ?? throw "null pointer dereference")._index >= (0 : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(("type parameter bound more than once" : stdgo.GoString));
            };
            (@:checkr _typ ?? throw "null pointer dereference")._index = _i;
        };
        return (stdgo.Go.setRef(({ _tparams : _list } : stdgo._internal.go.types.Types_typeparamlist.TypeParamList)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>);
    }
