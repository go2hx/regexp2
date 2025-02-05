package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.File_asInterface) class File_static_extension {
    @:keep
    @:tdfield
    static public function end( _f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = _f;
        {
            var _n = ((@:checkr _f ?? throw "null pointer dereference").decls.length : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                return (@:checkr _f ?? throw "null pointer dereference").decls[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
            };
        };
        return @:check2r (@:checkr _f ?? throw "null pointer dereference").name.end();
    }
    @:keep
    @:tdfield
    static public function pos( _f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = _f;
        return (@:checkr _f ?? throw "null pointer dereference").package_;
    }
}
