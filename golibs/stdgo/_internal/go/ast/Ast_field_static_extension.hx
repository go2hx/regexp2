package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.Field_asInterface) class Field_static_extension {
    @:keep
    @:tdfield
    static public function end( _f:stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field> = _f;
        if (((@:checkr _f ?? throw "null pointer dereference").tag != null && (((@:checkr _f ?? throw "null pointer dereference").tag : Dynamic).__nil__ == null || !((@:checkr _f ?? throw "null pointer dereference").tag : Dynamic).__nil__))) {
            return @:check2r (@:checkr _f ?? throw "null pointer dereference").tag.end();
        };
        if ((@:checkr _f ?? throw "null pointer dereference").type != null) {
            return (@:checkr _f ?? throw "null pointer dereference").type.end();
        };
        if ((((@:checkr _f ?? throw "null pointer dereference").names.length) > (0 : stdgo.GoInt) : Bool)) {
            return @:check2r (@:checkr _f ?? throw "null pointer dereference").names[(((@:checkr _f ?? throw "null pointer dereference").names.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
        };
        return (0 : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _f:stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field> = _f;
        if ((((@:checkr _f ?? throw "null pointer dereference").names.length) > (0 : stdgo.GoInt) : Bool)) {
            return @:check2r (@:checkr _f ?? throw "null pointer dereference").names[(0 : stdgo.GoInt)].pos();
        };
        if ((@:checkr _f ?? throw "null pointer dereference").type != null) {
            return (@:checkr _f ?? throw "null pointer dereference").type.pos();
        };
        return (0 : stdgo._internal.go.token.Token_pos.Pos);
    }
}
