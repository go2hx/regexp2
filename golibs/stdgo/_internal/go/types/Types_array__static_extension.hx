package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.Array__asInterface) class Array__static_extension {
    @:keep
    @:tdfield
    static public function string( _a:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>):stdgo.GoString {
        @:recv var _a:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> = _a;
        return stdgo._internal.go.types.Types_typestring.typeString(stdgo.Go.asInterface(_a), null)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function underlying( _a:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _a:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> = _a;
        return stdgo.Go.asInterface(_a);
    }
    @:keep
    @:tdfield
    static public function elem( _a:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _a:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> = _a;
        return (@:checkr _a ?? throw "null pointer dereference")._elem;
    }
    @:keep
    @:tdfield
    static public function len( _a:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>):stdgo.GoInt64 {
        @:recv var _a:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> = _a;
        return (@:checkr _a ?? throw "null pointer dereference")._len;
    }
}
