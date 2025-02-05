package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.T_commentListReader_asInterface) class T_commentListReader_static_extension {
    @:keep
    @:tdfield
    static public function _next( _r:stdgo.Ref<stdgo._internal.go.ast.Ast_t_commentlistreader.T_commentListReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.ast.Ast_t_commentlistreader.T_commentListReader> = _r;
        if (!@:check2r _r._eol()) {
            (@:checkr _r ?? throw "null pointer dereference")._comment = (@:checkr _r ?? throw "null pointer dereference")._list[((@:checkr _r ?? throw "null pointer dereference")._index : stdgo.GoInt)];
            (@:checkr _r ?? throw "null pointer dereference")._pos = @:check2r (@:checkr _r ?? throw "null pointer dereference")._fset.position(@:check2r (@:checkr _r ?? throw "null pointer dereference")._comment.pos())?.__copy__();
            (@:checkr _r ?? throw "null pointer dereference")._end = @:check2r (@:checkr _r ?? throw "null pointer dereference")._fset.position(@:check2r (@:checkr _r ?? throw "null pointer dereference")._comment.end())?.__copy__();
            (@:checkr _r ?? throw "null pointer dereference")._index++;
        };
    }
    @:keep
    @:tdfield
    static public function _eol( _r:stdgo.Ref<stdgo._internal.go.ast.Ast_t_commentlistreader.T_commentListReader>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.ast.Ast_t_commentlistreader.T_commentListReader> = _r;
        return ((@:checkr _r ?? throw "null pointer dereference")._index >= ((@:checkr _r ?? throw "null pointer dereference")._list.length) : Bool);
    }
}
