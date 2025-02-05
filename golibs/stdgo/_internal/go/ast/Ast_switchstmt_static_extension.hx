package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.SwitchStmt_asInterface) class SwitchStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt> = _s;
        return @:check2r (@:checkr _s ?? throw "null pointer dereference").body.end();
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt> = _s;
        return (@:checkr _s ?? throw "null pointer dereference").switch_;
    }
}
