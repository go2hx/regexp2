package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.BlockStmt_asInterface) class BlockStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = _s;
        if ((@:checkr _s ?? throw "null pointer dereference").rbrace.isValid()) {
            return ((@:checkr _s ?? throw "null pointer dereference").rbrace + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
        };
        {
            var _n = ((@:checkr _s ?? throw "null pointer dereference").list.length : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                return (@:checkr _s ?? throw "null pointer dereference").list[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
            };
        };
        return ((@:checkr _s ?? throw "null pointer dereference").lbrace + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = _s;
        return (@:checkr _s ?? throw "null pointer dereference").lbrace;
    }
}
