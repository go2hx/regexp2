package stdgo._internal.go.ast;
function walk(_v:stdgo._internal.go.ast.Ast_visitor.Visitor, _node:stdgo._internal.go.ast.Ast_node.Node):Void {
        {
            _v = _v.visit(_node);
            if (_v == null) {
                return;
            };
        };
        {
            final __type__ = _node;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>) : __type__.__underlying__().value;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>) : __type__.__underlying__().value;
                for (__0 => _c in (@:checkr _n ?? throw "null pointer dereference").list) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface(_c));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>) : __type__.__underlying__().value;
                if (((@:checkr _n ?? throw "null pointer dereference").doc != null && (((@:checkr _n ?? throw "null pointer dereference").doc : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference").doc : Dynamic).__nil__))) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").doc));
                };
                stdgo._internal.go.ast.Ast__walkidentlist._walkIdentList(_v, (@:checkr _n ?? throw "null pointer dereference").names);
                if ((@:checkr _n ?? throw "null pointer dereference").type != null) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").type);
                };
                if (((@:checkr _n ?? throw "null pointer dereference").tag != null && (((@:checkr _n ?? throw "null pointer dereference").tag : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference").tag : Dynamic).__nil__))) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").tag));
                };
                if (((@:checkr _n ?? throw "null pointer dereference").comment != null && (((@:checkr _n ?? throw "null pointer dereference").comment : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference").comment : Dynamic).__nil__))) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").comment));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>) : __type__.__underlying__().value;
                for (__0 => _f in (@:checkr _n ?? throw "null pointer dereference").list) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface(_f));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>))) {
                var _n:stdgo._internal.go.ast.Ast_node.Node = __type__ == null ? (null : stdgo._internal.go.ast.Ast_node.Node) : cast __type__;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>) : __type__.__underlying__().value;
                if ((@:checkr _n ?? throw "null pointer dereference").elt != null) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").elt);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").type));
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").body));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__.__underlying__().value;
                if ((@:checkr _n ?? throw "null pointer dereference").type != null) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").type);
                };
                stdgo._internal.go.ast.Ast__walkexprlist._walkExprList(_v, (@:checkr _n ?? throw "null pointer dereference").elts);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").x);
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").sel));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").x);
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").index);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").x);
                for (__0 => _index in (@:checkr _n ?? throw "null pointer dereference").indices) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, _index);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").x);
                if ((@:checkr _n ?? throw "null pointer dereference").low != null) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").low);
                };
                if ((@:checkr _n ?? throw "null pointer dereference").high != null) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").high);
                };
                if ((@:checkr _n ?? throw "null pointer dereference").max != null) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").max);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").x);
                if ((@:checkr _n ?? throw "null pointer dereference").type != null) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").type);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").fun);
                stdgo._internal.go.ast.Ast__walkexprlist._walkExprList(_v, (@:checkr _n ?? throw "null pointer dereference").args);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").x);
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").y);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").key);
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : __type__.__underlying__().value;
                if ((@:checkr _n ?? throw "null pointer dereference").len != null) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").len);
                };
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").elt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").fields));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__.__underlying__().value;
                if (((@:checkr _n ?? throw "null pointer dereference").typeParams != null && (((@:checkr _n ?? throw "null pointer dereference").typeParams : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference").typeParams : Dynamic).__nil__))) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").typeParams));
                };
                if (((@:checkr _n ?? throw "null pointer dereference").params != null && (((@:checkr _n ?? throw "null pointer dereference").params : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference").params : Dynamic).__nil__))) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").params));
                };
                if (((@:checkr _n ?? throw "null pointer dereference").results != null && (((@:checkr _n ?? throw "null pointer dereference").results : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference").results : Dynamic).__nil__))) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").results));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").methods));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").key);
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>) : __type__.__underlying__().value;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").decl);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>) : __type__.__underlying__().value;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").label));
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").stmt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").chan);
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast__walkexprlist._walkExprList(_v, (@:checkr _n ?? throw "null pointer dereference").lhs);
                stdgo._internal.go.ast.Ast__walkexprlist._walkExprList(_v, (@:checkr _n ?? throw "null pointer dereference").rhs);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").call));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").call));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast__walkexprlist._walkExprList(_v, (@:checkr _n ?? throw "null pointer dereference").results);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>) : __type__.__underlying__().value;
                if (((@:checkr _n ?? throw "null pointer dereference").label != null && (((@:checkr _n ?? throw "null pointer dereference").label : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference").label : Dynamic).__nil__))) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").label));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast__walkstmtlist._walkStmtList(_v, (@:checkr _n ?? throw "null pointer dereference").list);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>) : __type__.__underlying__().value;
                if ((@:checkr _n ?? throw "null pointer dereference").init != null) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").init);
                };
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").cond);
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").body));
                if ((@:checkr _n ?? throw "null pointer dereference").else_ != null) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").else_);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast__walkexprlist._walkExprList(_v, (@:checkr _n ?? throw "null pointer dereference").list);
                stdgo._internal.go.ast.Ast__walkstmtlist._walkStmtList(_v, (@:checkr _n ?? throw "null pointer dereference").body);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>) : __type__.__underlying__().value;
                if ((@:checkr _n ?? throw "null pointer dereference").init != null) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").init);
                };
                if ((@:checkr _n ?? throw "null pointer dereference").tag != null) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").tag);
                };
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").body));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>) : __type__.__underlying__().value;
                if ((@:checkr _n ?? throw "null pointer dereference").init != null) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").init);
                };
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").assign);
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").body));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>) : __type__.__underlying__().value;
                if ((@:checkr _n ?? throw "null pointer dereference").comm != null) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").comm);
                };
                stdgo._internal.go.ast.Ast__walkstmtlist._walkStmtList(_v, (@:checkr _n ?? throw "null pointer dereference").body);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>) : __type__.__underlying__().value;
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").body));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>) : __type__.__underlying__().value;
                if ((@:checkr _n ?? throw "null pointer dereference").init != null) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").init);
                };
                if ((@:checkr _n ?? throw "null pointer dereference").cond != null) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").cond);
                };
                if ((@:checkr _n ?? throw "null pointer dereference").post != null) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").post);
                };
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").body));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>) : __type__.__underlying__().value;
                if ((@:checkr _n ?? throw "null pointer dereference").key != null) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").key);
                };
                if ((@:checkr _n ?? throw "null pointer dereference").value != null) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").value);
                };
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").x);
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").body));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__.__underlying__().value;
                if (((@:checkr _n ?? throw "null pointer dereference").doc != null && (((@:checkr _n ?? throw "null pointer dereference").doc : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference").doc : Dynamic).__nil__))) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").doc));
                };
                if (((@:checkr _n ?? throw "null pointer dereference").name != null && (((@:checkr _n ?? throw "null pointer dereference").name : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference").name : Dynamic).__nil__))) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").name));
                };
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").path));
                if (((@:checkr _n ?? throw "null pointer dereference").comment != null && (((@:checkr _n ?? throw "null pointer dereference").comment : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference").comment : Dynamic).__nil__))) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").comment));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__().value;
                if (((@:checkr _n ?? throw "null pointer dereference").doc != null && (((@:checkr _n ?? throw "null pointer dereference").doc : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference").doc : Dynamic).__nil__))) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").doc));
                };
                stdgo._internal.go.ast.Ast__walkidentlist._walkIdentList(_v, (@:checkr _n ?? throw "null pointer dereference").names);
                if ((@:checkr _n ?? throw "null pointer dereference").type != null) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").type);
                };
                stdgo._internal.go.ast.Ast__walkexprlist._walkExprList(_v, (@:checkr _n ?? throw "null pointer dereference").values);
                if (((@:checkr _n ?? throw "null pointer dereference").comment != null && (((@:checkr _n ?? throw "null pointer dereference").comment : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference").comment : Dynamic).__nil__))) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").comment));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__().value;
                if (((@:checkr _n ?? throw "null pointer dereference").doc != null && (((@:checkr _n ?? throw "null pointer dereference").doc : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference").doc : Dynamic).__nil__))) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").doc));
                };
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").name));
                if (((@:checkr _n ?? throw "null pointer dereference").typeParams != null && (((@:checkr _n ?? throw "null pointer dereference").typeParams : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference").typeParams : Dynamic).__nil__))) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").typeParams));
                };
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw "null pointer dereference").type);
                if (((@:checkr _n ?? throw "null pointer dereference").comment != null && (((@:checkr _n ?? throw "null pointer dereference").comment : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference").comment : Dynamic).__nil__))) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").comment));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>) : __type__.__underlying__().value;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__().value;
                if (((@:checkr _n ?? throw "null pointer dereference").doc != null && (((@:checkr _n ?? throw "null pointer dereference").doc : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference").doc : Dynamic).__nil__))) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").doc));
                };
                for (__0 => _s in (@:checkr _n ?? throw "null pointer dereference").specs) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, _s);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__().value;
                if (((@:checkr _n ?? throw "null pointer dereference").doc != null && (((@:checkr _n ?? throw "null pointer dereference").doc : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference").doc : Dynamic).__nil__))) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").doc));
                };
                if (((@:checkr _n ?? throw "null pointer dereference").recv != null && (((@:checkr _n ?? throw "null pointer dereference").recv : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference").recv : Dynamic).__nil__))) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").recv));
                };
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").name));
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").type));
                if (((@:checkr _n ?? throw "null pointer dereference").body != null && (((@:checkr _n ?? throw "null pointer dereference").body : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference").body : Dynamic).__nil__))) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").body));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>) : __type__.__underlying__().value;
                if (((@:checkr _n ?? throw "null pointer dereference").doc != null && (((@:checkr _n ?? throw "null pointer dereference").doc : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference").doc : Dynamic).__nil__))) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").doc));
                };
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").name));
                stdgo._internal.go.ast.Ast__walkdecllist._walkDeclList(_v, (@:checkr _n ?? throw "null pointer dereference").decls);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>) : __type__.__underlying__().value;
                for (__0 => _f in (@:checkr _n ?? throw "null pointer dereference").files) {
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface(_f));
                };
            } else {
                var _n:stdgo._internal.go.ast.Ast_node.Node = __type__ == null ? (null : stdgo._internal.go.ast.Ast_node.Node) : cast __type__;
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("ast.Walk: unexpected node type %T" : stdgo.GoString), stdgo.Go.toInterface(_n)));
            };
        };
        _v.visit((null : stdgo._internal.go.ast.Ast_node.Node));
    }
