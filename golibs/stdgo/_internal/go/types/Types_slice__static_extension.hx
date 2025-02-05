package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.Slice__asInterface) class Slice__static_extension {
    @:keep
    @:tdfield
    static public function string( _s:stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_> = _s;
        return stdgo._internal.go.types.Types_typestring.typeString(stdgo.Go.asInterface(_s), null)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function underlying( _s:stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_> = _s;
        return stdgo.Go.asInterface(_s);
    }
    @:keep
    @:tdfield
    static public function elem( _s:stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_> = _s;
        return (@:checkr _s ?? throw "null pointer dereference")._elem;
    }
}
