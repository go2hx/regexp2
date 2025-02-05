package stdgo._internal.go.token;
@:keep @:allow(stdgo._internal.go.token.Token.Position_asInterface) class Position_static_extension {
    @:keep
    @:tdfield
    static public function string( _pos:stdgo._internal.go.token.Token_position.Position):stdgo.GoString {
        @:recv var _pos:stdgo._internal.go.token.Token_position.Position = _pos?.__copy__();
        var _s = (_pos.filename?.__copy__() : stdgo.GoString);
        if (@:check2 _pos.isValid()) {
            if (_s != ((stdgo.Go.str() : stdgo.GoString))) {
                _s = (_s + ((":" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            _s = (_s + (stdgo._internal.strconv.Strconv_itoa.itoa(_pos.line))?.__copy__() : stdgo.GoString);
            if (_pos.column != ((0 : stdgo.GoInt))) {
                _s = (_s + (stdgo._internal.fmt.Fmt_sprintf.sprintf(((":%d" : stdgo.GoString) : stdgo.GoString), stdgo.Go.toInterface(_pos.column)))?.__copy__() : stdgo.GoString);
            };
        };
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            _s = ("-" : stdgo.GoString);
        };
        return _s?.__copy__();
    }
    @:keep
    @:tdfield
    static public function isValid( _pos:stdgo.Ref<stdgo._internal.go.token.Token_position.Position>):Bool {
        @:recv var _pos:stdgo.Ref<stdgo._internal.go.token.Token_position.Position> = _pos;
        return ((@:checkr _pos ?? throw "null pointer dereference").line > (0 : stdgo.GoInt) : Bool);
    }
}
