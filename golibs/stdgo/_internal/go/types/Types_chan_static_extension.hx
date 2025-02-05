package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.Chan_asInterface) class Chan_static_extension {
    @:keep
    @:tdfield
    static public function string( _c:stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan> = _c;
        return stdgo._internal.go.types.Types_typestring.typeString(stdgo.Go.asInterface(_c), null)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function underlying( _c:stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _c:stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan> = _c;
        return stdgo.Go.asInterface(_c);
    }
    @:keep
    @:tdfield
    static public function elem( _c:stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _c:stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan> = _c;
        return (@:checkr _c ?? throw "null pointer dereference")._elem;
    }
    @:keep
    @:tdfield
    static public function dir( _c:stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>):stdgo._internal.go.types.Types_chandir.ChanDir {
        @:recv var _c:stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan> = _c;
        return (@:checkr _c ?? throw "null pointer dereference")._dir;
    }
}
