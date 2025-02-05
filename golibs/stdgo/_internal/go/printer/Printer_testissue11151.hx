package stdgo._internal.go.printer;
function testIssue11151(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(_fset, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(("package p\t/*\r/1\r*\r/2*\r\r\r\r/3*\r\r+\r\r/4*/\n" : stdgo.GoString)), (4u32 : stdgo._internal.go.parser.Parser_mode.Mode)), _f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        stdgo._internal.go.printer.Printer_fprint.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
        var _got = ((@:check2 _buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        {};
        if (_got != (("package p\t/*/1*\r/2*\r/3*+/4*/\n" : stdgo.GoString))) {
            @:check2r _t.errorf(("\ngot : %q\nwant: %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("package p\t/*/1*\r/2*\r/3*+/4*/\n" : stdgo.GoString)));
        };
        {
            var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(_fset, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_got), (0u32 : stdgo._internal.go.parser.Parser_mode.Mode));
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            @:check2r _t.errorf(("%v\norig: %q\ngot : %q" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(("package p\t/*\r/1\r*\r/2*\r\r\r\r/3*\r\r+\r\r/4*/\n" : stdgo.GoString)), stdgo.Go.toInterface(_got));
        };
    }
