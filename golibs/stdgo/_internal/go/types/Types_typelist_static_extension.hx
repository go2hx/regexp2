package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.TypeList_asInterface) class TypeList_static_extension {
    @:keep
    @:tdfield
    static public function _list( _l:stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList>):stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_> {
        @:recv var _l:stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList> = _l;
        if ((_l == null || (_l : Dynamic).__nil__)) {
            return (null : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        };
        return (@:checkr _l ?? throw "null pointer dereference")._types;
    }
    @:keep
    @:tdfield
    static public function at( _l:stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList>, _i:stdgo.GoInt):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _l:stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList> = _l;
        return (@:checkr _l ?? throw "null pointer dereference")._types[(_i : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function len( _l:stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList>):stdgo.GoInt {
        @:recv var _l:stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList> = _l;
        return (@:check2r _l._list().length);
    }
}
