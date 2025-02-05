package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.CaseClause_asInterface) class CaseClause_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause> = _s;
        {
            var _n = ((@:checkr _s ?? throw "null pointer dereference").body.length : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                return (@:checkr _s ?? throw "null pointer dereference").body[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
            };
        };
        return ((@:checkr _s ?? throw "null pointer dereference").colon + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause> = _s;
        return (@:checkr _s ?? throw "null pointer dereference").case_;
    }
}
