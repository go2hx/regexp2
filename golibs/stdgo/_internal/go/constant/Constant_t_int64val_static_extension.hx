package stdgo._internal.go.constant;
@:keep @:allow(stdgo._internal.go.constant.Constant.T_int64Val_asInterface) class T_int64Val_static_extension {
    @:keep
    @:tdfield
    static public function _implementsValue( _:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val):Void {
        @:recv var _:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = _;
    }
    @:keep
    @:tdfield
    static public function exactString( _x:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val):stdgo.GoString {
        @:recv var _x:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = _x;
        return (_x.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _x:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val):stdgo.GoString {
        @:recv var _x:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = _x;
        return stdgo._internal.strconv.Strconv_formatint.formatInt((_x : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function kind( _:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val):stdgo._internal.go.constant.Constant_kind.Kind {
        @:recv var _:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = _;
        return (3 : stdgo._internal.go.constant.Constant_kind.Kind);
    }
}
