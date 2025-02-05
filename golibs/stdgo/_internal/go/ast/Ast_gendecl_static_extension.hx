package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.GenDecl_asInterface) class GenDecl_static_extension {
    @:keep
    @:tdfield
    static public function _declNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = _;
    }
    @:keep
    @:tdfield
    static public function end( _d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = _d;
        if ((@:checkr _d ?? throw "null pointer dereference").rparen.isValid()) {
            return ((@:checkr _d ?? throw "null pointer dereference").rparen + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
        };
        return (@:checkr _d ?? throw "null pointer dereference").specs[(0 : stdgo.GoInt)].end();
    }
    @:keep
    @:tdfield
    static public function pos( _d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = _d;
        return (@:checkr _d ?? throw "null pointer dereference").tokPos;
    }
}
