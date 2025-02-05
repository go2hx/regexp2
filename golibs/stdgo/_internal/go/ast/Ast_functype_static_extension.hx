package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.FuncType_asInterface) class FuncType_static_extension {
    @:keep
    @:tdfield
    static public function _exprNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType> = _;
    }
    @:keep
    @:tdfield
    static public function end( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType> = _x;
        if (((@:checkr _x ?? throw "null pointer dereference").results != null && (((@:checkr _x ?? throw "null pointer dereference").results : Dynamic).__nil__ == null || !((@:checkr _x ?? throw "null pointer dereference").results : Dynamic).__nil__))) {
            return @:check2r (@:checkr _x ?? throw "null pointer dereference").results.end();
        };
        return @:check2r (@:checkr _x ?? throw "null pointer dereference").params.end();
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType> = _x;
        if (((@:checkr _x ?? throw "null pointer dereference").func.isValid() || ((@:checkr _x ?? throw "null pointer dereference").params == null || ((@:checkr _x ?? throw "null pointer dereference").params : Dynamic).__nil__) : Bool)) {
            return (@:checkr _x ?? throw "null pointer dereference").func;
        };
        return @:check2r (@:checkr _x ?? throw "null pointer dereference").params.pos();
    }
}
