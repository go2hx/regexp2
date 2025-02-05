package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.TypeParamList_asInterface) class TypeParamList_static_extension {
    @:keep
    @:tdfield
    static public function _list( _l:stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>):stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>> {
        @:recv var _l:stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList> = _l;
        if ((_l == null || (_l : Dynamic).__nil__)) {
            return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        };
        return (@:checkr _l ?? throw "null pointer dereference")._tparams;
    }
    @:keep
    @:tdfield
    static public function at( _l:stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> {
        @:recv var _l:stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList> = _l;
        return (@:checkr _l ?? throw "null pointer dereference")._tparams[(_i : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function len( _l:stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>):stdgo.GoInt {
        @:recv var _l:stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList> = _l;
        return (@:check2r _l._list().length);
    }
}
