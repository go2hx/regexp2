package stdgo._internal.go.build.constraint;
function _or(_x:stdgo._internal.go.build.constraint.Constraint_expr.Expr, _y:stdgo._internal.go.build.constraint.Constraint_expr.Expr):stdgo._internal.go.build.constraint.Constraint_expr.Expr {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr(_x, _y) : stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr)) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>));
    }
