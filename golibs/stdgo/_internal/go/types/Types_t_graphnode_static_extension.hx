package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_graphNode_asInterface) class T_graphNode_static_extension {
    @:keep
    @:tdfield
    static public function _cost( _n:stdgo.Ref<stdgo._internal.go.types.Types_t_graphnode.T_graphNode>):stdgo.GoInt {
        @:recv var _n:stdgo.Ref<stdgo._internal.go.types.Types_t_graphnode.T_graphNode> = _n;
        return (((@:checkr _n ?? throw "null pointer dereference")._pred.length) * ((@:checkr _n ?? throw "null pointer dereference")._succ.length) : stdgo.GoInt);
    }
}
