package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.InterfaceType_asInterface) class InterfaceType_static_extension {
    @:keep
    @:tdfield
    static public function _exprNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType> = _;
    }
    @:keep
    @:tdfield
    static public function end( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType> = _x;
        return @:check2r (@:checkr _x ?? throw "null pointer dereference").methods.end();
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType> = _x;
        return (@:checkr _x ?? throw "null pointer dereference").interface_;
    }
}
