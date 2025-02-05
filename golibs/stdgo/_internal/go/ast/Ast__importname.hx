package stdgo._internal.go.ast;
function _importName(_s:stdgo._internal.go.ast.Ast_spec.Spec):stdgo.GoString {
        var _n = (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) ?? throw "null pointer dereference").name;
        if ((_n == null || (_n : Dynamic).__nil__)) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        return (@:checkr _n ?? throw "null pointer dereference").name?.__copy__();
    }
