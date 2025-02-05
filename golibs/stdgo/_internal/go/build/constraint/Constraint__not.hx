package stdgo._internal.go.build.constraint;
function _not(_x:stdgo._internal.go.build.constraint.Constraint_expr.Expr):stdgo._internal.go.build.constraint.Constraint_expr.Expr {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr(_x) : stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr)) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>));
    }
