package stdgo._internal.go.ast;
function _importPath(_s:stdgo._internal.go.ast.Ast_spec.Spec):stdgo.GoString {
        var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote((@:checkr (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) ?? throw "null pointer dereference").path ?? throw "null pointer dereference").value?.__copy__()), _t:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            return _t?.__copy__();
        };
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
