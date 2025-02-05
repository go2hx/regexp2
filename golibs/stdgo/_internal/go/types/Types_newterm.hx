package stdgo._internal.go.types;
function newTerm(_tilde:Bool, _typ:stdgo._internal.go.types.Types_type_.Type_):stdgo.Ref<stdgo._internal.go.types.Types_term.Term> {
        return (stdgo.Go.setRef((new stdgo._internal.go.types.Types_term.Term(_tilde, _typ) : stdgo._internal.go.types.Types_term.Term)) : stdgo.Ref<stdgo._internal.go.types.Types_term.Term>);
    }
