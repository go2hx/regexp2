package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.ReturnStmt_asInterface) class ReturnStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt> = _s;
        {
            var _n = ((@:checkr _s ?? throw "null pointer dereference").results.length : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                return (@:checkr _s ?? throw "null pointer dereference").results[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
            };
        };
        return ((@:checkr _s ?? throw "null pointer dereference").return_ + (6 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt> = _s;
        return (@:checkr _s ?? throw "null pointer dereference").return_;
    }
}
