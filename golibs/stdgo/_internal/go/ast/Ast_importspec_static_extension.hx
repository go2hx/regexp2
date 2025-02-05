package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.ImportSpec_asInterface) class ImportSpec_static_extension {
    @:keep
    @:tdfield
    static public function _specNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec> = _s;
        if ((@:checkr _s ?? throw "null pointer dereference").endPos != ((0 : stdgo._internal.go.token.Token_pos.Pos))) {
            return (@:checkr _s ?? throw "null pointer dereference").endPos;
        };
        return @:check2r (@:checkr _s ?? throw "null pointer dereference").path.end();
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec> = _s;
        if (((@:checkr _s ?? throw "null pointer dereference").name != null && (((@:checkr _s ?? throw "null pointer dereference").name : Dynamic).__nil__ == null || !((@:checkr _s ?? throw "null pointer dereference").name : Dynamic).__nil__))) {
            return @:check2r (@:checkr _s ?? throw "null pointer dereference").name.pos();
        };
        return @:check2r (@:checkr _s ?? throw "null pointer dereference").path.pos();
    }
}
