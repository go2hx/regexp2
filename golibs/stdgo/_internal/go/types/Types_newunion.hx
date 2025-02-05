package stdgo._internal.go.types;
function newUnion(_terms:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>):stdgo.Ref<stdgo._internal.go.types.Types_union.Union> {
        if ((_terms.length) == ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("empty union" : stdgo.GoString));
        };
        return (stdgo.Go.setRef((new stdgo._internal.go.types.Types_union.Union(_terms) : stdgo._internal.go.types.Types_union.Union)) : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>);
    }
