package stdgo._internal.go.types;
function _newTypeList(_list:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>):stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList> {
        if ((_list.length) == ((0 : stdgo.GoInt))) {
            return null;
        };
        return (stdgo.Go.setRef((new stdgo._internal.go.types.Types_typelist.TypeList(_list) : stdgo._internal.go.types.Types_typelist.TypeList)) : stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList>);
    }
