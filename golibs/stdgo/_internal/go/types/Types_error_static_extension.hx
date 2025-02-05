package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.Error_asInterface) class Error_static_extension {
    @:keep
    @:tdfield
    static public function error( _err:stdgo._internal.go.types.Types_error.Error):stdgo.GoString {
        @:recv var _err:stdgo._internal.go.types.Types_error.Error = _err?.__copy__();
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2r _err.fset.position(_err.pos))), stdgo.Go.toInterface(_err.msg))?.__copy__();
    }
}
