package stdgo._internal.go.ast;
function _walkExprList(_v:stdgo._internal.go.ast.Ast_visitor.Visitor, _list:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>):Void {
        for (__0 => _x in _list) {
            stdgo._internal.go.ast.Ast_walk.walk(_v, _x);
        };
    }
