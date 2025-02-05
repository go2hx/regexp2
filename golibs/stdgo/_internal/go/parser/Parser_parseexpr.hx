package stdgo._internal.go.parser;
function parseExpr(_x:stdgo.GoString):{ var _0 : stdgo._internal.go.ast.Ast_expr.Expr; var _1 : stdgo.Error; } {
        return stdgo._internal.go.parser.Parser_parseexprfrom.parseExprFrom(stdgo._internal.go.token.Token_newfileset.newFileSet(), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((_x : stdgo.Slice<stdgo.GoUInt8>)), (0u32 : stdgo._internal.go.parser.Parser_mode.Mode));
    }
