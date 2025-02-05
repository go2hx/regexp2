package stdgo._internal.go.types;
function _writeExprList(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _list:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>):Void {
        for (_i => _x in _list) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                @:check2r _buf.writeString((", " : stdgo.GoString));
            };
            stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, _x);
        };
    }
