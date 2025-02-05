package stdgo._internal.go.doc;
function _recvString(_recv:stdgo._internal.go.ast.Ast_expr.Expr):stdgo.GoString {
        {
            final __type__ = _recv;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value;
                return (@:checkr _t ?? throw "null pointer dereference").name?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__().value;
                return (("*" : stdgo.GoString) + stdgo._internal.go.doc.Doc__recvstring._recvString((@:checkr _t ?? throw "null pointer dereference").x)?.__copy__() : stdgo.GoString)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__.__underlying__().value;
                return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s[%s]" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.go.doc.Doc__recvstring._recvString((@:checkr _t ?? throw "null pointer dereference").x)), stdgo.Go.toInterface(stdgo._internal.go.doc.Doc__recvparam._recvParam((@:checkr _t ?? throw "null pointer dereference").index)))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__.__underlying__().value;
                if ((((@:checkr _t ?? throw "null pointer dereference").indices.length) > (0 : stdgo.GoInt) : Bool)) {
                    var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
                    @:check2 _b.writeString(stdgo._internal.go.doc.Doc__recvstring._recvString((@:checkr _t ?? throw "null pointer dereference").x)?.__copy__());
                    @:check2 _b.writeByte((91 : stdgo.GoUInt8));
                    @:check2 _b.writeString(stdgo._internal.go.doc.Doc__recvparam._recvParam((@:checkr _t ?? throw "null pointer dereference").indices[(0 : stdgo.GoInt)])?.__copy__());
                    for (__0 => _e in ((@:checkr _t ?? throw "null pointer dereference").indices.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>)) {
                        @:check2 _b.writeString((", " : stdgo.GoString));
                        @:check2 _b.writeString(stdgo._internal.go.doc.Doc__recvparam._recvParam(_e)?.__copy__());
                    };
                    @:check2 _b.writeByte((93 : stdgo.GoUInt8));
                    return (@:check2 _b.string() : stdgo.GoString)?.__copy__();
                };
            };
        };
        return ("BADRECV" : stdgo.GoString);
    }
