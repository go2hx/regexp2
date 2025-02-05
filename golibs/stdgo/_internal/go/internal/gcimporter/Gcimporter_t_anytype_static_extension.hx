package stdgo._internal.go.internal.gcimporter;
@:keep @:allow(stdgo._internal.go.internal.gcimporter.Gcimporter.T_anyType_asInterface) class T_anyType_static_extension {
    @:keep
    @:tdfield
    static public function string( _t:stdgo._internal.go.internal.gcimporter.Gcimporter_t_anytype.T_anyType):stdgo.GoString {
        @:recv var _t:stdgo._internal.go.internal.gcimporter.Gcimporter_t_anytype.T_anyType = _t?.__copy__();
        return ("any" : stdgo.GoString);
    }
    @:keep
    @:tdfield
    static public function underlying( _t:stdgo._internal.go.internal.gcimporter.Gcimporter_t_anytype.T_anyType):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _t:stdgo._internal.go.internal.gcimporter.Gcimporter_t_anytype.T_anyType = _t?.__copy__();
        return stdgo.Go.asInterface(_t);
    }
}
