package stdgo._internal.go.ast;
function _filterExprList(_list:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>, _filter:stdgo._internal.go.ast.Ast_filter.Filter, _export:Bool):stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> {
        var _j = (0 : stdgo.GoInt);
        for (__0 => _exp in _list) {
            {
                final __type__ = _exp;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__.__underlying__().value;
                    stdgo._internal.go.ast.Ast__filtercompositelit._filterCompositeLit(_x, _filter, _export);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>) : __type__.__underlying__().value;
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference").key) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                        }, _x = __tmp__._0, _ok = __tmp__._1;
                        if ((_ok && !_filter((@:checkr _x ?? throw "null pointer dereference").name?.__copy__()) : Bool)) {
                            continue;
                        };
                    };
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference").value) : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>), _1 : false };
                        }, _x = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            stdgo._internal.go.ast.Ast__filtercompositelit._filterCompositeLit(_x, _filter, _export);
                        };
                    };
                };
            };
            _list[(_j : stdgo.GoInt)] = _exp;
            _j++;
        };
        return (_list.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
    }
