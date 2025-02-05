package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.ValueSpec_asInterface) class ValueSpec_static_extension {
    @:keep
    @:tdfield
    static public function _specNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = _s;
        {
            var _n = ((@:checkr _s ?? throw "null pointer dereference").values.length : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                return (@:checkr _s ?? throw "null pointer dereference").values[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
            };
        };
        if ((@:checkr _s ?? throw "null pointer dereference").type != null) {
            return (@:checkr _s ?? throw "null pointer dereference").type.end();
        };
        return @:check2r (@:checkr _s ?? throw "null pointer dereference").names[(((@:checkr _s ?? throw "null pointer dereference").names.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = _s;
        return @:check2r (@:checkr _s ?? throw "null pointer dereference").names[(0 : stdgo.GoInt)].pos();
    }
}
