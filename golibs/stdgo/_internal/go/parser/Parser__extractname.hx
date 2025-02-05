package stdgo._internal.go.parser;
function _extractName(_x:stdgo._internal.go.ast.Ast_expr.Expr, _force:Bool):{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>; var _1 : stdgo._internal.go.ast.Ast_expr.Expr; } {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value;
                return { _0 : _x, _1 : (null : stdgo._internal.go.ast.Ast_expr.Expr) };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__().value;
                {
                    final __value__ = (@:checkr _x ?? throw "null pointer dereference").op;
                    if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference").x) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                            }, _name = __tmp__._0, __0 = __tmp__._1;
                            if (((_name != null && ((_name : Dynamic).__nil__ == null || !(_name : Dynamic).__nil__)) && ((_force || stdgo._internal.go.parser.Parser__istypeelem._isTypeElem((@:checkr _x ?? throw "null pointer dereference").y) : Bool)) : Bool)) {
                                return { _0 : _name, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ star : (@:checkr _x ?? throw "null pointer dereference").opPos, x : (@:checkr _x ?? throw "null pointer dereference").y } : stdgo._internal.go.ast.Ast_starexpr.StarExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>)) };
                            };
                        };
                    } else if (__value__ == ((18 : stdgo._internal.go.token.Token_token.Token))) {
                        {
                            var __tmp__ = stdgo._internal.go.parser.Parser__extractname._extractName((@:checkr _x ?? throw "null pointer dereference").x, (_force || stdgo._internal.go.parser.Parser__istypeelem._isTypeElem((@:checkr _x ?? throw "null pointer dereference").y) : Bool)), _name:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __tmp__._0, _lhs:stdgo._internal.go.ast.Ast_expr.Expr = __tmp__._1;
                            if (((_name != null && ((_name : Dynamic).__nil__ == null || !(_name : Dynamic).__nil__)) && (_lhs != null) : Bool)) {
                                var _op = ((_x : stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr)?.__copy__() : stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr);
                                _op.x = _lhs;
                                return { _0 : _name, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(_op) : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>)) };
                            };
                        };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) : __type__.__underlying__().value;
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference").fun) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                    }, _name = __tmp__._0, __0 = __tmp__._1;
                    if ((_name != null && ((_name : Dynamic).__nil__ == null || !(_name : Dynamic).__nil__))) {
                        if (((((@:checkr _x ?? throw "null pointer dereference").args.length) == ((1 : stdgo.GoInt)) && (@:checkr _x ?? throw "null pointer dereference").ellipsis == ((0 : stdgo._internal.go.token.Token_pos.Pos)) : Bool) && ((_force || stdgo._internal.go.parser.Parser__istypeelem._isTypeElem((@:checkr _x ?? throw "null pointer dereference").args[(0 : stdgo.GoInt)]) : Bool)) : Bool)) {
                            return { _0 : _name, _1 : (@:checkr _x ?? throw "null pointer dereference").args[(0 : stdgo.GoInt)] };
                        };
                    };
                };
            };
        };
        return { _0 : null, _1 : _x };
    }
