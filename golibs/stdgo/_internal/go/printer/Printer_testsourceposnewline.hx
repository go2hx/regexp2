package stdgo._internal.go.printer;
function testSourcePosNewline(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _fname = (("foo\nbar/bar.go" : stdgo.GoString) : stdgo.GoString);
        var _src = (("package bar" : stdgo.GoString) : stdgo.GoString);
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(_fset, _fname?.__copy__(), stdgo.Go.toInterface(_src), (100u32 : stdgo._internal.go.parser.Parser_mode.Mode)), _f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _cfg = (stdgo.Go.setRef(({ mode : (8u32 : stdgo._internal.go.printer.Printer_mode.Mode), tabwidth : (8 : stdgo.GoInt) } : stdgo._internal.go.printer.Printer_config.Config)) : stdgo.Ref<stdgo._internal.go.printer.Printer_config.Config>);
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        {
            var _err = (@:check2r _cfg.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_f))) : stdgo.Error);
            if (_err == null) {
                @:check2r _t.errorf(("Fprint did not error for source file path containing newline" : stdgo.GoString));
            };
        };
        if (@:check2 _buf.len() != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("unexpected Fprint output:\n%s" : stdgo.GoString), stdgo.Go.toInterface(@:check2 _buf.bytes()));
        };
    }
