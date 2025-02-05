package stdgo._internal.go.doc;
function _recvParam(_p:stdgo._internal.go.ast.Ast_expr.Expr):stdgo.GoString {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_p) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
            }, _id = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return (@:checkr _id ?? throw "null pointer dereference").name?.__copy__();
            };
        };
        return ("BADPARAM" : stdgo.GoString);
    }
