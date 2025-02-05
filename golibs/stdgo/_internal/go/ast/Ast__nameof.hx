package stdgo._internal.go.ast;
function _nameOf(_f:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>):stdgo.GoString {
        {
            var _r = (@:checkr _f ?? throw "null pointer dereference").recv;
            if (((_r != null && ((_r : Dynamic).__nil__ == null || !(_r : Dynamic).__nil__)) && ((@:checkr _r ?? throw "null pointer dereference").list.length == (1 : stdgo.GoInt)) : Bool)) {
                var _t = ((@:checkr (@:checkr _r ?? throw "null pointer dereference").list[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").type : stdgo._internal.go.ast.Ast_expr.Expr);
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>), _1 : false };
                    }, _p = __tmp__._0, __0 = __tmp__._1;
                    if ((_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__))) {
                        _t = (@:checkr _p ?? throw "null pointer dereference").x;
                    };
                };
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                    }, _p = __tmp__._0, __1 = __tmp__._1;
                    if ((_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__))) {
                        return (((@:checkr _p ?? throw "null pointer dereference").name + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr (@:checkr _f ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__() : stdgo.GoString)?.__copy__();
                    };
                };
            };
        };
        return (@:checkr (@:checkr _f ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__();
    }
