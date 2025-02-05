package stdgo._internal.go.doc;
function _customizeRecv(_f:stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>, _recvTypeName:stdgo.GoString, _embeddedIsPtr:Bool, _level:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func> {
        if (((((_f == null || (_f : Dynamic).__nil__) || ((@:checkr _f ?? throw "null pointer dereference").decl == null || ((@:checkr _f ?? throw "null pointer dereference").decl : Dynamic).__nil__) : Bool) || ((@:checkr (@:checkr _f ?? throw "null pointer dereference").decl ?? throw "null pointer dereference").recv == null || ((@:checkr (@:checkr _f ?? throw "null pointer dereference").decl ?? throw "null pointer dereference").recv : Dynamic).__nil__) : Bool) || ((@:checkr (@:checkr (@:checkr _f ?? throw "null pointer dereference").decl ?? throw "null pointer dereference").recv ?? throw "null pointer dereference").list.length != (1 : stdgo.GoInt)) : Bool)) {
            return _f;
        };
        var _newField = (((@:checkr (@:checkr (@:checkr _f ?? throw "null pointer dereference").decl ?? throw "null pointer dereference").recv ?? throw "null pointer dereference").list[(0 : stdgo.GoInt)] : stdgo._internal.go.ast.Ast_field.Field)?.__copy__() : stdgo._internal.go.ast.Ast_field.Field);
        var _origPos = (_newField.type.pos() : stdgo._internal.go.token.Token_pos.Pos);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_newField.type) : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>), _1 : false };
        }, __0 = __tmp__._0, _origRecvIsPtr = __tmp__._1;
        var _newIdent = (stdgo.Go.setRef(({ namePos : _origPos, name : _recvTypeName?.__copy__() } : stdgo._internal.go.ast.Ast_ident.Ident)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        var _typ:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface(_newIdent);
        if ((!_embeddedIsPtr && _origRecvIsPtr : Bool)) {
            (@:checkr _newIdent ?? throw "null pointer dereference").namePos++;
            _typ = stdgo.Go.asInterface((stdgo.Go.setRef(({ star : _origPos, x : stdgo.Go.asInterface(_newIdent) } : stdgo._internal.go.ast.Ast_starexpr.StarExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>));
        };
        _newField.type = _typ;
        var _newFieldList = (((@:checkr (@:checkr _f ?? throw "null pointer dereference").decl ?? throw "null pointer dereference").recv : stdgo._internal.go.ast.Ast_fieldlist.FieldList)?.__copy__() : stdgo._internal.go.ast.Ast_fieldlist.FieldList);
        _newFieldList.list = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>(1, 1, ...[(stdgo.Go.setRef(_newField) : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
        var _newFuncDecl = (((@:checkr _f ?? throw "null pointer dereference").decl : stdgo._internal.go.ast.Ast_funcdecl.FuncDecl)?.__copy__() : stdgo._internal.go.ast.Ast_funcdecl.FuncDecl);
        _newFuncDecl.recv = (stdgo.Go.setRef(_newFieldList) : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
        var _newF = ((_f : stdgo._internal.go.doc.Doc_func.Func)?.__copy__() : stdgo._internal.go.doc.Doc_func.Func);
        _newF.decl = (stdgo.Go.setRef(_newFuncDecl) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>);
        _newF.recv = stdgo._internal.go.doc.Doc__recvstring._recvString(_typ)?.__copy__();
        _newF.level = _level;
        return (stdgo.Go.setRef(_newF) : stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>);
    }
