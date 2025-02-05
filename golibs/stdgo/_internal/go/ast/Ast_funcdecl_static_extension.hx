package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.FuncDecl_asInterface) class FuncDecl_static_extension {
    @:keep
    @:tdfield
    static public function _declNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = _;
    }
    @:keep
    @:tdfield
    static public function end( _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = _d;
        if (((@:checkr _d ?? throw "null pointer dereference").body != null && (((@:checkr _d ?? throw "null pointer dereference").body : Dynamic).__nil__ == null || !((@:checkr _d ?? throw "null pointer dereference").body : Dynamic).__nil__))) {
            return @:check2r (@:checkr _d ?? throw "null pointer dereference").body.end();
        };
        return @:check2r (@:checkr _d ?? throw "null pointer dereference").type.end();
    }
    @:keep
    @:tdfield
    static public function pos( _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = _d;
        return @:check2r (@:checkr _d ?? throw "null pointer dereference").type.pos();
    }
}
