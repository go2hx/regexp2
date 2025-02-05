package stdgo._internal.go.scanner;
@:keep @:allow(stdgo._internal.go.scanner.Scanner.Error_asInterface) class Error_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.go.scanner.Scanner_error.Error):stdgo.GoString {
        @:recv var _e:stdgo._internal.go.scanner.Scanner_error.Error = _e?.__copy__();
        if (((_e.pos.filename != (stdgo.Go.str() : stdgo.GoString)) || @:check2 _e.pos.isValid() : Bool)) {
            return (((_e.pos.string() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _e.msg?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return _e.msg?.__copy__();
    }
}
