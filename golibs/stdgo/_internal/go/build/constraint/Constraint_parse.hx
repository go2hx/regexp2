package stdgo._internal.go.build.constraint;
function parse(_line:stdgo.GoString):{ var _0 : stdgo._internal.go.build.constraint.Constraint_expr.Expr; var _1 : stdgo.Error; } {
        {
            var __tmp__ = stdgo._internal.go.build.constraint.Constraint__splitgobuild._splitGoBuild(_line?.__copy__()), _text:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return stdgo._internal.go.build.constraint.Constraint__parseexpr._parseExpr(_text?.__copy__());
            };
        };
        {
            var __tmp__ = stdgo._internal.go.build.constraint.Constraint__splitplusbuild._splitPlusBuild(_line?.__copy__()), _text:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return { _0 : stdgo._internal.go.build.constraint.Constraint__parseplusbuildexpr._parsePlusBuildExpr(_text?.__copy__()), _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : (null : stdgo._internal.go.build.constraint.Constraint_expr.Expr), _1 : stdgo._internal.go.build.constraint.Constraint__errnotconstraint._errNotConstraint };
    }
