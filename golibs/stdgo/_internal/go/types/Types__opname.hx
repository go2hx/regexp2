package stdgo._internal.go.types;
function _opName(_e:stdgo._internal.go.ast.Ast_expr.Expr):stdgo.GoString {
        {
            final __type__ = _e;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>))) {
                var _e:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__().value;
                if ((((@:checkr _e ?? throw "null pointer dereference").op : stdgo.GoInt) < (stdgo._internal.go.types.Types__op2str2._op2str2.length) : Bool)) {
                    return stdgo._internal.go.types.Types__op2str2._op2str2[((@:checkr _e ?? throw "null pointer dereference").op : stdgo.GoInt)]?.__copy__();
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>))) {
                var _e:stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__.__underlying__().value;
                if ((((@:checkr _e ?? throw "null pointer dereference").op : stdgo.GoInt) < (stdgo._internal.go.types.Types__op2str1._op2str1.length) : Bool)) {
                    return stdgo._internal.go.types.Types__op2str1._op2str1[((@:checkr _e ?? throw "null pointer dereference").op : stdgo.GoInt)]?.__copy__();
                };
            };
        };
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
