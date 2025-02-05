package stdgo._internal.go.doc;
function _specNames(_specs:stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>):stdgo.Slice<stdgo.GoString> {
        var _names = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_specs.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__0 => _s in _specs) {
            for (__1 => _ident in (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) ?? throw "null pointer dereference").names) {
                _names = (_names.__append__((@:checkr _ident ?? throw "null pointer dereference").name?.__copy__()));
            };
        };
        return _names;
    }
