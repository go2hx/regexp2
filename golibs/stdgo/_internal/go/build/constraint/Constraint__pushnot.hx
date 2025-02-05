package stdgo._internal.go.build.constraint;
function _pushNot(_x:stdgo._internal.go.build.constraint.Constraint_expr.Expr, _not:Bool):stdgo._internal.go.build.constraint.Constraint_expr.Expr {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>) : __type__.__underlying__().value;
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference").x) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr>)) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr>), _1 : false };
                    }, __0 = __tmp__._0, _ok = __tmp__._1;
                    if ((_ok && !_not : Bool)) {
                        return stdgo.Go.asInterface(_x);
                    };
                };
                return stdgo._internal.go.build.constraint.Constraint__pushnot._pushNot((@:checkr _x ?? throw "null pointer dereference").x, !_not);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr>) : __type__.__underlying__().value;
                if (_not) {
                    return stdgo.Go.asInterface((stdgo.Go.setRef(({ x : stdgo.Go.asInterface(_x) } : stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr)) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>));
                };
                return stdgo.Go.asInterface(_x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>) : __type__.__underlying__().value;
                var _x1 = (stdgo._internal.go.build.constraint.Constraint__pushnot._pushNot((@:checkr _x ?? throw "null pointer dereference").x, _not) : stdgo._internal.go.build.constraint.Constraint_expr.Expr);
                var _y1 = (stdgo._internal.go.build.constraint.Constraint__pushnot._pushNot((@:checkr _x ?? throw "null pointer dereference").y, _not) : stdgo._internal.go.build.constraint.Constraint_expr.Expr);
                if (_not) {
                    return stdgo._internal.go.build.constraint.Constraint__or._or(_x1, _y1);
                };
                if (((stdgo.Go.toInterface(_x1) == stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference").x)) && (stdgo.Go.toInterface(_y1) == stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference").y)) : Bool)) {
                    return stdgo.Go.asInterface(_x);
                };
                return stdgo._internal.go.build.constraint.Constraint__and._and(_x1, _y1);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>) : __type__.__underlying__().value;
                var _x1 = (stdgo._internal.go.build.constraint.Constraint__pushnot._pushNot((@:checkr _x ?? throw "null pointer dereference").x, _not) : stdgo._internal.go.build.constraint.Constraint_expr.Expr);
                var _y1 = (stdgo._internal.go.build.constraint.Constraint__pushnot._pushNot((@:checkr _x ?? throw "null pointer dereference").y, _not) : stdgo._internal.go.build.constraint.Constraint_expr.Expr);
                if (_not) {
                    return stdgo._internal.go.build.constraint.Constraint__and._and(_x1, _y1);
                };
                if (((stdgo.Go.toInterface(_x1) == stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference").x)) && (stdgo.Go.toInterface(_y1) == stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference").y)) : Bool)) {
                    return stdgo.Go.asInterface(_x);
                };
                return stdgo._internal.go.build.constraint.Constraint__or._or(_x1, _y1);
            } else {
                var _x:stdgo._internal.go.build.constraint.Constraint_expr.Expr = __type__ == null ? (null : stdgo._internal.go.build.constraint.Constraint_expr.Expr) : cast __type__;
                return _x;
            };
        };
    }
