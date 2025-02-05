package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.EmptyStmt_asInterface) class EmptyStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt> = _s;
        if ((@:checkr _s ?? throw "null pointer dereference").implicit) {
            return (@:checkr _s ?? throw "null pointer dereference").semicolon;
        };
        return ((@:checkr _s ?? throw "null pointer dereference").semicolon + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt> = _s;
        return (@:checkr _s ?? throw "null pointer dereference").semicolon;
    }
}
