package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.Map__asInterface) class Map__static_extension {
    @:keep
    @:tdfield
    static public function string( _t:stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_> = _t;
        return stdgo._internal.go.types.Types_typestring.typeString(stdgo.Go.asInterface(_t), null)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function underlying( _t:stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_> = _t;
        return stdgo.Go.asInterface(_t);
    }
    @:keep
    @:tdfield
    static public function elem( _m:stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _m:stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_> = _m;
        return (@:checkr _m ?? throw "null pointer dereference")._elem;
    }
    @:keep
    @:tdfield
    static public function key( _m:stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _m:stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_> = _m;
        return (@:checkr _m ?? throw "null pointer dereference")._key;
    }
}
