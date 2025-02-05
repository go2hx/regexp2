package stdgo._internal.go.ast;
function _importComment(_s:stdgo._internal.go.ast.Ast_spec.Spec):stdgo.GoString {
        var _c = (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) ?? throw "null pointer dereference").comment;
        if ((_c == null || (_c : Dynamic).__nil__)) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        return @:check2r _c.text()?.__copy__();
    }
