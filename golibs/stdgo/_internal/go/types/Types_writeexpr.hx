package stdgo._internal.go.types;
function writeExpr(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _x:stdgo._internal.go.ast.Ast_expr.Expr):Void {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value;
                @:check2r _buf.writeString((@:checkr _x ?? throw "null pointer dereference").name?.__copy__());
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>) : __type__.__underlying__().value;
                @:check2r _buf.writeString(("..." : stdgo.GoString));
                if ((@:checkr _x ?? throw "null pointer dereference").elt != null) {
                    stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").elt);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__.__underlying__().value;
                @:check2r _buf.writeString((@:checkr _x ?? throw "null pointer dereference").value?.__copy__());
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>) : __type__.__underlying__().value;
                @:check2r _buf.writeByte((40 : stdgo.GoUInt8));
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, stdgo.Go.asInterface((@:checkr _x ?? throw "null pointer dereference").type));
                @:check2r _buf.writeString((" literal)" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__.__underlying__().value;
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").type);
                @:check2r _buf.writeByte((123 : stdgo.GoUInt8));
                if ((((@:checkr _x ?? throw "null pointer dereference").elts.length) > (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _buf.writeString(("…" : stdgo.GoString));
                };
                @:check2r _buf.writeByte((125 : stdgo.GoUInt8));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__().value;
                @:check2r _buf.writeByte((40 : stdgo.GoUInt8));
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").x);
                @:check2r _buf.writeByte((41 : stdgo.GoUInt8));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__().value;
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").x);
                @:check2r _buf.writeByte((46 : stdgo.GoUInt8));
                @:check2r _buf.writeString((@:checkr (@:checkr _x ?? throw "null pointer dereference").sel ?? throw "null pointer dereference").name?.__copy__());
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>))) {
                var _x:stdgo._internal.go.ast.Ast_expr.Expr = __type__ == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : cast __type__;
                var _ix = stdgo._internal.go.internal.typeparams.Typeparams_unpackindexexpr.unpackIndexExpr(_x);
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _ix ?? throw "null pointer dereference").indexListExpr.x);
                @:check2r _buf.writeByte((91 : stdgo.GoUInt8));
                stdgo._internal.go.types.Types__writeexprlist._writeExprList(_buf, (@:checkr _ix ?? throw "null pointer dereference").indexListExpr.indices);
                @:check2r _buf.writeByte((93 : stdgo.GoUInt8));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>) : __type__.__underlying__().value;
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").x);
                @:check2r _buf.writeByte((91 : stdgo.GoUInt8));
                if ((@:checkr _x ?? throw "null pointer dereference").low != null) {
                    stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").low);
                };
                @:check2r _buf.writeByte((58 : stdgo.GoUInt8));
                if ((@:checkr _x ?? throw "null pointer dereference").high != null) {
                    stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").high);
                };
                if ((@:checkr _x ?? throw "null pointer dereference").slice3) {
                    @:check2r _buf.writeByte((58 : stdgo.GoUInt8));
                    if ((@:checkr _x ?? throw "null pointer dereference").max != null) {
                        stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").max);
                    };
                };
                @:check2r _buf.writeByte((93 : stdgo.GoUInt8));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>) : __type__.__underlying__().value;
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").x);
                @:check2r _buf.writeString((".(" : stdgo.GoString));
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").type);
                @:check2r _buf.writeByte((41 : stdgo.GoUInt8));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) : __type__.__underlying__().value;
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").fun);
                @:check2r _buf.writeByte((40 : stdgo.GoUInt8));
                stdgo._internal.go.types.Types__writeexprlist._writeExprList(_buf, (@:checkr _x ?? throw "null pointer dereference").args);
                if ((@:checkr _x ?? throw "null pointer dereference").ellipsis.isValid()) {
                    @:check2r _buf.writeString(("..." : stdgo.GoString));
                };
                @:check2r _buf.writeByte((41 : stdgo.GoUInt8));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__().value;
                @:check2r _buf.writeByte((42 : stdgo.GoUInt8));
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__.__underlying__().value;
                @:check2r _buf.writeString(((@:checkr _x ?? throw "null pointer dereference").op.string() : stdgo.GoString)?.__copy__());
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__().value;
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").x);
                @:check2r _buf.writeByte((32 : stdgo.GoUInt8));
                @:check2r _buf.writeString(((@:checkr _x ?? throw "null pointer dereference").op.string() : stdgo.GoString)?.__copy__());
                @:check2r _buf.writeByte((32 : stdgo.GoUInt8));
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").y);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : __type__.__underlying__().value;
                @:check2r _buf.writeByte((91 : stdgo.GoUInt8));
                if ((@:checkr _x ?? throw "null pointer dereference").len != null) {
                    stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").len);
                };
                @:check2r _buf.writeByte((93 : stdgo.GoUInt8));
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").elt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__().value;
                @:check2r _buf.writeString(("struct{" : stdgo.GoString));
                stdgo._internal.go.types.Types__writefieldlist._writeFieldList(_buf, (@:checkr (@:checkr _x ?? throw "null pointer dereference").fields ?? throw "null pointer dereference").list, ("; " : stdgo.GoString), false);
                @:check2r _buf.writeByte((125 : stdgo.GoUInt8));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__.__underlying__().value;
                @:check2r _buf.writeString(("func" : stdgo.GoString));
                stdgo._internal.go.types.Types__writesigexpr._writeSigExpr(_buf, _x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__().value;
                @:check2r _buf.writeString(("interface{" : stdgo.GoString));
                stdgo._internal.go.types.Types__writefieldlist._writeFieldList(_buf, (@:checkr (@:checkr _x ?? throw "null pointer dereference").methods ?? throw "null pointer dereference").list, ("; " : stdgo.GoString), true);
                @:check2r _buf.writeByte((125 : stdgo.GoUInt8));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : __type__.__underlying__().value;
                @:check2r _buf.writeString(("map[" : stdgo.GoString));
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").key);
                @:check2r _buf.writeByte((93 : stdgo.GoUInt8));
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : __type__.__underlying__().value;
                var _s:stdgo.GoString = ("" : stdgo.GoString);
                {
                    final __value__ = (@:checkr _x ?? throw "null pointer dereference").dir;
                    if (__value__ == ((1 : stdgo._internal.go.ast.Ast_chandir.ChanDir))) {
                        _s = ("chan<- " : stdgo.GoString);
                    } else if (__value__ == ((2 : stdgo._internal.go.ast.Ast_chandir.ChanDir))) {
                        _s = ("<-chan " : stdgo.GoString);
                    } else {
                        _s = ("chan " : stdgo.GoString);
                    };
                };
                @:check2r _buf.writeString(_s?.__copy__());
                stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _x ?? throw "null pointer dereference").value);
            } else {
                var _x:stdgo._internal.go.ast.Ast_expr.Expr = __type__ == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : cast __type__;
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), ("(ast: %T)" : stdgo.GoString), stdgo.Go.toInterface(_x));
            };
        };
    }
