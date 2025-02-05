package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_error__asInterface) class T_error__static_extension {
    @:keep
    @:tdfield
    static public function _errorf( _err:stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_>, _at:stdgo._internal.go.token.Token_pos.Pos, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _err:stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_> = _err;
        (@:checkr _err ?? throw "null pointer dereference")._desc = ((@:checkr _err ?? throw "null pointer dereference")._desc.__append__((new stdgo._internal.go.types.Types_t_errordesc.T_errorDesc(stdgo.Go.asInterface((_at : stdgo._internal.go.types.Types_t_atpos.T_atPos)), _format?.__copy__(), _args) : stdgo._internal.go.types.Types_t_errordesc.T_errorDesc)));
    }
    @:keep
    @:tdfield
    static public function string( _err:stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_>):stdgo.GoString {
        @:recv var _err:stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_> = _err;
        if (@:check2r _err._empty()) {
            return ("no error" : stdgo.GoString);
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2r _err._pos())), stdgo.Go.toInterface(@:check2r _err._msg(null, null)))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _msg( _err:stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_>, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _qf:stdgo._internal.go.types.Types_qualifier.Qualifier):stdgo.GoString {
        @:recv var _err:stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_> = _err;
        if (@:check2r _err._empty()) {
            return ("no error" : stdgo.GoString);
        };
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        for (_i => _ in (@:checkr _err ?? throw "null pointer dereference")._desc) {
            var _p = (stdgo.Go.setRef((@:checkr _err ?? throw "null pointer dereference")._desc[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.types.Types_t_errordesc.T_errorDesc>);
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                stdgo._internal.fmt.Fmt_fprint.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), stdgo.Go.toInterface(("\n\t" : stdgo.GoString)));
                if ((@:checkr _p ?? throw "null pointer dereference")._posn.pos().isValid()) {
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), ("%s: " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2r _fset.position((@:checkr _p ?? throw "null pointer dereference")._posn.pos()))));
                };
            };
            @:check2 _buf.writeString(stdgo._internal.go.types.Types__sprintf._sprintf(_fset, _qf, false, (@:checkr _p ?? throw "null pointer dereference")._format?.__copy__(), ...((@:checkr _p ?? throw "null pointer dereference")._args : Array<stdgo.AnyInterface>))?.__copy__());
        };
        return (@:check2 _buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _pos( _err:stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _err:stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_> = _err;
        if (@:check2r _err._empty()) {
            return stdgo._internal.go.types.Types__nopos._nopos;
        };
        return (@:checkr _err ?? throw "null pointer dereference")._desc[(0 : stdgo.GoInt)]._posn.pos();
    }
    @:keep
    @:tdfield
    static public function _empty( _err:stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_>):Bool {
        @:recv var _err:stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_> = _err;
        return (@:checkr _err ?? throw "null pointer dereference")._desc == null;
    }
}
