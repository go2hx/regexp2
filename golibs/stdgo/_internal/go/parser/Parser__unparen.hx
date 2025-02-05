package stdgo._internal.go.parser;
function _unparen(_x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>), _1 : false };
            }, _p = __tmp__._0, _isParen = __tmp__._1;
            if (_isParen) {
                _x = stdgo._internal.go.parser.Parser__unparen._unparen((@:checkr _p ?? throw "null pointer dereference").x);
            };
        };
        return _x;
    }
