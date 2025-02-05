package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.SelectStmt_asInterface) class SelectStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt> = _s;
        return @:check2r (@:checkr _s ?? throw "null pointer dereference").body.end();
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt> = _s;
        return (@:checkr _s ?? throw "null pointer dereference").select;
    }
}
