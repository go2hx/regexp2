package stdgo._internal.go.ast;
function _collapse(_prev:stdgo._internal.go.ast.Ast_spec.Spec, _next:stdgo._internal.go.ast.Ast_spec.Spec):Bool {
        if (((stdgo._internal.go.ast.Ast__importpath._importPath(_next) != stdgo._internal.go.ast.Ast__importpath._importPath(_prev)) || (stdgo._internal.go.ast.Ast__importname._importName(_next) != stdgo._internal.go.ast.Ast__importname._importName(_prev)) : Bool)) {
            return false;
        };
        return ((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_prev) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) ?? throw "null pointer dereference").comment == null || ((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_prev) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) ?? throw "null pointer dereference").comment : Dynamic).__nil__);
    }
