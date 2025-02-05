package stdgo._internal.go.types;
function exprString(_x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo.GoString {
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        stdgo._internal.go.types.Types_writeexpr.writeExpr((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _x);
        return (@:check2 _buf.string() : stdgo.GoString)?.__copy__();
    }
