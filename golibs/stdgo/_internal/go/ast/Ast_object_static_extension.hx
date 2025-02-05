package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.Object_asInterface) class Object_static_extension {
    @:keep
    @:tdfield
    static public function pos( _obj:stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object> = _obj;
        var _name = ((@:checkr _obj ?? throw "null pointer dereference").name?.__copy__() : stdgo.GoString);
        {
            final __type__ = (@:checkr _obj ?? throw "null pointer dereference").decl;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>) : __type__.__underlying__().value;
                for (__0 => _n in (@:checkr _d ?? throw "null pointer dereference").names) {
                    if ((@:checkr _n ?? throw "null pointer dereference").name == (_name)) {
                        return @:check2r _n.pos();
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__.__underlying__().value;
                if ((((@:checkr _d ?? throw "null pointer dereference").name != null && (((@:checkr _d ?? throw "null pointer dereference").name : Dynamic).__nil__ == null || !((@:checkr _d ?? throw "null pointer dereference").name : Dynamic).__nil__)) && ((@:checkr (@:checkr _d ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name == _name) : Bool)) {
                    return @:check2r (@:checkr _d ?? throw "null pointer dereference").name.pos();
                };
                return @:check2r (@:checkr _d ?? throw "null pointer dereference").path.pos();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__().value;
                for (__0 => _n in (@:checkr _d ?? throw "null pointer dereference").names) {
                    if ((@:checkr _n ?? throw "null pointer dereference").name == (_name)) {
                        return @:check2r _n.pos();
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__().value;
                if ((@:checkr (@:checkr _d ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name == (_name)) {
                    return @:check2r (@:checkr _d ?? throw "null pointer dereference").name.pos();
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__().value;
                if ((@:checkr (@:checkr _d ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name == (_name)) {
                    return @:check2r (@:checkr _d ?? throw "null pointer dereference").name.pos();
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__.__underlying__().value;
                if ((@:checkr (@:checkr _d ?? throw "null pointer dereference").label ?? throw "null pointer dereference").name == (_name)) {
                    return @:check2r (@:checkr _d ?? throw "null pointer dereference").label.pos();
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__.__underlying__().value;
                for (__0 => _x in (@:checkr _d ?? throw "null pointer dereference").lhs) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                        }, _ident = __tmp__._0, _isIdent = __tmp__._1;
                        if ((_isIdent && ((@:checkr _ident ?? throw "null pointer dereference").name == _name) : Bool)) {
                            return @:check2r _ident.pos();
                        };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>) : __type__.__underlying__().value;
            };
        };
        return (0 : stdgo._internal.go.token.Token_pos.Pos);
    }
}
