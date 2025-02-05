package stdgo._internal.go.parser;
function _isTypeSwitchAssert(_x:stdgo._internal.go.ast.Ast_expr.Expr):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>), _1 : false };
        }, _a = __tmp__._0, _ok = __tmp__._1;
        return (_ok && ((@:checkr _a ?? throw "null pointer dereference").type == null) : Bool);
    }
