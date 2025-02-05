package stdgo._internal.go.format;
function _hasUnsortedImports(_file:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):Bool {
        for (__0 => _d in (@:checkr _file ?? throw "null pointer dereference").decls) {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_d) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>), _1 : false };
            }, _d = __tmp__._0, _ok = __tmp__._1;
            if ((!_ok || ((@:checkr _d ?? throw "null pointer dereference").tok != (75 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                return false;
            };
            if ((@:checkr _d ?? throw "null pointer dereference").lparen.isValid()) {
                return true;
            };
        };
        return false;
    }
