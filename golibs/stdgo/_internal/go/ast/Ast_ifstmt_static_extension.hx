package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.IfStmt_asInterface) class IfStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt> = _s;
        if ((@:checkr _s ?? throw "null pointer dereference").else_ != null) {
            return (@:checkr _s ?? throw "null pointer dereference").else_.end();
        };
        return @:check2r (@:checkr _s ?? throw "null pointer dereference").body.end();
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt> = _s;
        return (@:checkr _s ?? throw "null pointer dereference").if_;
    }
}
