package stdgo._internal.go.doc;
function _copyConstType(_typ:stdgo._internal.go.ast.Ast_expr.Expr, _pos:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.ast.Ast_expr.Expr {
        {
            final __type__ = _typ;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>))) {
                var _typ:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value;
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ name : (@:checkr _typ ?? throw "null pointer dereference").name?.__copy__(), namePos : _pos } : stdgo._internal.go.ast.Ast_ident.Ident)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>))) {
                var _typ:stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__().value;
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _typ ?? throw "null pointer dereference").x) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                    }, _id = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        return stdgo.Go.asInterface((stdgo.Go.setRef(({ sel : stdgo._internal.go.ast.Ast_newident.newIdent((@:checkr (@:checkr _typ ?? throw "null pointer dereference").sel ?? throw "null pointer dereference").name?.__copy__()), x : stdgo.Go.asInterface((stdgo.Go.setRef(({ name : (@:checkr _id ?? throw "null pointer dereference").name?.__copy__(), namePos : _pos } : stdgo._internal.go.ast.Ast_ident.Ident)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) } : stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>));
                    };
                };
            };
        };
        return (null : stdgo._internal.go.ast.Ast_expr.Expr);
    }
